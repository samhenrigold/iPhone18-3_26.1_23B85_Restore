uint64_t sub_24EA0DAD4(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
    v9 = v37;
    v10 = v37 >> 62;
    if (v37 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_24F92C738();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_24F92C738();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_24F92C8F8();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_24E6B42EC(&qword_27F225100, &qword_27F2250F8, &qword_24F974D48);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250F8, &qword_24F974D48);
        v22 = sub_24E951AFC(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_24E69A5C4(0, &qword_27F2250F0, 0x277CFB830);
      swift_arrayInitWithCopy();
    }

    v4 = v8;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_24F92C738();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24EA0DE00(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
    v9 = v37;
    v10 = v37 >> 62;
    if (v37 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_24F92C738();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_24F92C738();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_24F92C8F8();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_24E6B42EC(&qword_27F2250E8, &qword_27F2250E0, &qword_24F974D40);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250E0, &qword_24F974D40);
        v22 = sub_24E951AFC(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_24E69A5C4(0, &unk_27F237E80, 0x277CFB838);
      swift_arrayInitWithCopy();
    }

    v4 = v8;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_24F92C738();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t CompoundCollectionElementsObserver.__allocating_init(children:)(uint64_t a1)
{
  swift_allocObject();
  sub_24EA115C4(a1);
  v3 = v2;

  return v3;
}

uint64_t CompoundCollectionElementsObserver.init(children:)(uint64_t a1)
{
  sub_24EA115C4(a1);
  v2 = v1;

  return v2;
}

uint64_t CompoundCollectionElementsObserver.addChild(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_24E6182A0(0, v5[2] + 1, 1, v5);
    *(v2 + 16) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_24E6182A0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *(v2 + 16) = v5;
  swift_endAccess();
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10 || !a1)
  {
    return swift_unknownObjectRetain();
  }

  v11 = v10;
  swift_beginAccess();
  v12 = *(v2 + 24);
  swift_unknownObjectRetain_n();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_24E61827C(0, v12[2] + 1, 1, v12);
    *(v2 + 24) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_24E61827C((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = v11;
  *(v2 + 24) = v12;
  return swift_endAccess();
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.addChildren(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();

  sub_24EA0AD20(v2, sub_24E6182A0, &qword_27F213C38, &qword_24F93B860);
  swift_endAccess();
  v3 = 0;
  v4 = *(a1._rawValue + 2);
  v5 = a1._rawValue + 32;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = &v5[16 * v3];
  while (1)
  {
    if (v4 == v3)
    {
      swift_beginAccess();
      sub_24EA0AD20(v6, sub_24E61827C, &qword_27F213C28, &unk_24F93B850);
      swift_endAccess();
      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v10 = *v7;
    v7 += 16;
    v9 = v10;
    swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    ++v3;
    if (v11)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = v11;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E61827C(0, v6[2] + 1, 1, v6);
      }

      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v6 = sub_24E61827C((v14 > 1), v15 + 1, 1, v6);
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v9;
      v16[5] = v13;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t CompoundCollectionElementsObserver.removeChild(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    for (i = (v4 + 32); *i != a1; i += 2)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_24EA0E8F8(v6, sub_24ECDE264);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (a1)
      {
        result = swift_beginAccess();
        v8 = *(v1 + 24);
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = 0;
          for (j = (v8 + 32); *j != a1; j += 2)
          {
            if (v9 == ++v10)
            {
              return result;
            }
          }

          swift_beginAccess();
          swift_unknownObjectRetain();
          sub_24EA0E8F8(v10, sub_24ECDE250);
          swift_endAccess();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EA0E6F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE200(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24EA0E780(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24EA0E828@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE31C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24EA0E8F8(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_24EA0E98C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE344(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for VirtualCall(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_24EA119E4(v11, a2, type metadata accessor for VirtualCall);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24EA0EAEC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = v9 + 40 * a1;
    a3(v13 + 32, a4);
    result = memmove((v13 + 32), (v13 + 72), 40 * (v12 - a1));
    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.removeAllChildren()()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 24) = v1;
}

void CompoundCollectionElementsObserver.removingChildren(where:)(uint64_t (*a1)(uint64_t, void))
{
  swift_beginAccess();
  v26 = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
LABEL_3:
    v7 = v5;
    while (v7 < *(v3 + 16))
    {
      v27 = *(v3 + 32 + 16 * v7);
      v5 = v7 + 1;
      v8 = swift_unknownObjectRetain();
      if ((a1(v8, *(&v27 + 1)) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F4584D8(0, *(v6 + 16) + 1, 1);
        }

        v9 = v27;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_24F4584D8((v10 > 1), v11 + 1, 1);
          v12 = v11 + 1;
          v9 = v27;
        }

        *(v6 + 16) = v12;
        *(v6 + 16 * v11 + 32) = v9;
        if (v4 - 1 != v7)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      ++v7;
      if (v4 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_15:

    *(v1 + 16) = v6;

    v13 = *(v1 + 16);
    v14 = *(v13 + 16);

    v15 = 0;
    v16 = MEMORY[0x277D84F90];
LABEL_16:
    v17 = 16 * v15 + 32;
    while (1)
    {
      if (v14 == v15)
      {

        swift_beginAccess();
        *(v26 + 24) = v16;

        return;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      ++v15;
      v18 = v17 + 16;
      v19 = *(v13 + v17);
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v19 == 0;
      }

      else
      {
        v21 = 1;
      }

      v17 = v18;
      if (!v21)
      {
        v22 = v20;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_24E61827C(0, v16[2] + 1, 1, v16);
        }

        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          v16 = sub_24E61827C((v23 > 1), v24 + 1, 1, v16);
        }

        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        v25[4] = v19;
        v25[5] = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24EA0EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 8);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 16);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 24);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 40);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = *(v3 + 16);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = ( + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 56);
      swift_unknownObjectRetain();
      v12(a1, a2, a3, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_24EA0F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 64);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 72);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 80);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 88);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 96);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 104);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *sub_24EA0FA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v8 = sub_24EA0D600(sub_24EA116F8, v10, v7);

  return v8;
}

uint64_t CompoundCollectionElementsObserver.deinit()
{

  return v0;
}

uint64_t CompoundCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EA0FBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v8 = sub_24EA0D600(sub_24EA11A4C, v10, v7);

  return v8;
}

uint64_t sub_24EA0FC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225198, &qword_27F216118, &qword_24F941E50);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216118, &qword_24F941E50);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA0FDD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250B8, &qword_27F2250B0, &unk_24F974D20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250B0, &unk_24F974D20);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F235820, 0x277D0C038);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA0FF78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225190, &qword_27F225188, &qword_24F974D98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225188, &qword_24F974D98);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Shelf(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10108(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225098, &qword_27F225090, &qword_24F974D10);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225090, &qword_24F974D10);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OverlayActiveCall(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10298(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225170, &qword_27F225168, &qword_24F974D80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225168, &qword_24F974D80);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225088, &qword_27F22DFE0, &qword_24F974D08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0, &qword_24F974D08);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA105D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2251A8, &qword_27F2251A0, &unk_24F974DA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251A0, &unk_24F974DA0);
            v9 = sub_24E951C74(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &unk_27F23E280, 0x277CF7D48);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10774(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225180, &qword_27F225178, &unk_24F974D88);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225178, &unk_24F974D88);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SearchResult(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10904(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225158, &qword_27F225150, &unk_24F974D70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225150, &unk_24F974D70);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F225148, 0x277CEC488);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225140, &qword_27F225138, &qword_24F974D68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225138, &qword_24F974D68);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F225130, 0x277CEC410);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10C44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2251B0, &qword_27F219650, qword_24F974DB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Artwork(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225128, &qword_27F225120, &qword_24F974D58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120, &qword_24F974D58);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GuidedSearchToken(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA10F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225100, &qword_27F2250F8, &qword_24F974D48);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250F8, &qword_24F974D48);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F2250F0, 0x277CFB830);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA11104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250A8, &qword_27F2250A0, &qword_24F974D18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250A0, &qword_24F974D18);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GameCenterGameplayHistoryRecord();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA11294(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225118, &qword_27F225110, &qword_24F974D50);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225110, &qword_24F974D50);
            v9 = sub_24E951AFC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA11434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250C0, &qword_27F224980, &qword_24F974D30);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
            v9 = sub_24E951A7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_24EA115C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(a1 + 16);
  v3 = 0;
  v4 =  + 32;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v4 + 16 * v3);
  while (1)
  {
    if (v2 == v3)
    {
      *(v1 + 24) = v5;
      return;
    }

    if (v3 >= v2)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v9 = *v6;
    v6 += 2;
    v8 = v9;
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    ++v3;
    if (v10)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = v10;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E61827C(0, v5[2] + 1, 1, v5);
      }

      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = sub_24E61827C((v13 > 1), v14 + 1, 1, v5);
      }

      v5[2] = v14 + 1;
      v15 = &v5[2 * v14];
      v15[4] = v8;
      v15[5] = v12;
      v3 = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_24EA11960@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_24EA119E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_24EA11A64(uint64_t a1)
{
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CDFA90];
  v8 = *(v3 + 104);
  v8(v6, v7, v2, v4);
  v9 = sub_24F923F68();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = *(v1 + 16);
  v12 = 64;
  if (v9)
  {
    v12 = 112;
  }

  v26 = *(v11 + v12);
  v13 = v26;
  v14 = v11;
  (v8)(v6, v7, v2);
  v27 = v13;
  LOBYTE(v13) = sub_24F923F68();
  v10(v6, v2);
  v15 = 48;
  if (v13)
  {
    v15 = 96;
  }

  v16 = *(v14 + v15);
  (v8)(v6, v7, v2);

  v17 = sub_24F923F68();
  v10(v6, v2);
  v18 = 56;
  if (v17)
  {
    v18 = 104;
  }

  v19 = *(v14 + v18);
  if (v26)
  {

    v20 = v27;
LABEL_9:
    v20 = v20;
    v21 = sub_24F926BF8();
    goto LABEL_10;
  }

  v20 = v27;
  if (v19)
  {
    v23 = *(*(v19 + OBJC_IVAR____TtC12GameStoreKit5Video_preview) + 48);
    if (v23)
    {

      v24 = v23;
      goto LABEL_9;
    }
  }

  if (!v16)
  {

    return 0;
  }

  v21 = *(v16 + 48);

  v25 = v21;
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v21;
}

uint64_t sub_24EA11CF4@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_24F9234D8();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F923F78();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v50[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0, &qword_24F974E28);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v50[-v16];
  v18 = qword_27F2251C0;
  swift_beginAccess();
  v57 = v18;
  sub_24E60169C(v1 + v18, v17, &qword_27F2251E0, &qword_24F974E28);
  v60 = v5;
  v19 = *(v5 + 48);
  v63 = v4;
  if (v19(v17, 1, v4) != 1)
  {
    return sub_24EA12DC0(v17, v65, v20);
  }

  sub_24EA12D58(v17);
  v52 = *(v1 + 16);
  v21 = *MEMORY[0x277CDFA90];
  v22 = v56;
  v23 = *(v56 + 104);
  v23(v12, v21, v8);
  v51 = sub_24E747CE4(*(v1 + qword_27F39B4B8));
  v24 = *(v22 + 8);
  v24(v12, v8);
  v55 = v24;
  v54 = v21;
  v23(v12, v21, v8);
  v53 = v23;
  v25 = sub_24EA12978(v12);
  v24(v12, v8);
  v23(v64, v21, v8);
  v56 = v1;
  v26 = *(v1 + 24);
  v27 = v52;
  v66 = sub_24F92C7A8();
  v67 = v28;
  MEMORY[0x253050C20](0x79616C7265766F2ELL, 0xE800000000000000);
  sub_24F92C7F8();
  v29 = v63;
  v30 = v63[10];

  sub_24F7278B8(v27, v25, v26, &v7[v30]);
  v31 = *(v27 + 41);
  v7[40] = *(v27 + 40);
  v7[41] = v31;
  v32 = *(v27 + 32);
  sub_24EA12E24(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, &v7[v29[6]], type metadata accessor for BreakoutDetails.Badge);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &v7[v29[7]], &qword_27F215340, &qword_24F943530);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &v7[v29[8]], &qword_27F215340, &qword_24F943530);
  v53(v12, v54, v8);
  v33 = v64;
  LOBYTE(v30) = sub_24F923F68();
  v34 = v12;
  v35 = v55;
  v55(v34, v8);
  v35(v33, v8);
  v36 = 95;
  if (v30)
  {
    v36 = 120;
  }

  v37 = *(v27 + v36);
  if (v37 != 2)
  {
    v39 = v56;
    v40 = v65;
    if ((v37 & 1) == 0)
    {
LABEL_11:
      v38 = MEMORY[0x277CDF3D0];
      goto LABEL_12;
    }

LABEL_9:
    v38 = MEMORY[0x277CDF3C0];
    goto LABEL_12;
  }

  if (v51 != 2)
  {
    v39 = v56;
    v40 = v65;
    if ((v51 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v38 = MEMORY[0x277CDF3C0];
  v39 = v56;
  v40 = v65;
LABEL_12:
  v43 = v61;
  v42 = v62;
  v44 = v59;
  (*(v61 + 104))(v59, *v38, v62);
  v45 = v63;
  v46.n128_f64[0] = (*(v43 + 32))(&v7[v63[9]], v44, v42);
  sub_24EA12DC0(v7, v40, v46);
  v47 = v40;
  v48 = v58;
  sub_24EA12E24(v47, v58, type metadata accessor for LargeBreakoutOverlayViewModel);
  (*(v60 + 56))(v48, 0, 1, v45);
  v49 = v57;
  swift_beginAccess();
  sub_24EA12E8C(v48, v39 + v49);
  return swift_endAccess();
}

uint64_t sub_24EA12338@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_24F9234D8();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F923F78();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0, &qword_24F974E28);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = qword_27F2251B8;
  swift_beginAccess();
  v54 = v18;
  sub_24E60169C(v1 + v18, v17, &qword_27F2251E0, &qword_24F974E28);
  v57 = v5;
  v19 = *(v5 + 48);
  v60 = v4;
  if (v19(v17, 1, v4) != 1)
  {
    return sub_24EA12DC0(v17, v62, v20);
  }

  sub_24EA12D58(v17);
  v21 = *(v1 + 16);
  v22 = *MEMORY[0x277CDFA88];
  v23 = v53;
  v24 = *(v53 + 104);
  v24(v12, v22, v8);
  v49 = sub_24E747CE4(*(v1 + qword_27F39B4B8));
  v25 = *(v23 + 8);
  v25(v12, v8);
  v51 = v24;
  v52 = v25;
  v24(v12, v22, v8);
  v50 = sub_24EA12978(v12);
  v25(v12, v8);
  v24(v61, v22, v8);
  v53 = v1;
  v26 = *(v1 + 24);
  v27 = v21;
  v63 = sub_24F92C7A8();
  v64 = v28;
  MEMORY[0x253050C20](0x79616C7265766F2ELL, 0xE800000000000000);
  sub_24F92C7F8();
  v29 = v60;
  v30 = v60[10];

  sub_24F7278B8(v27, v50, v26, &v7[v30]);
  v31 = *(v27 + 41);
  v7[40] = *(v27 + 40);
  v7[41] = v31;
  v32 = *(v27 + 32);
  sub_24EA12E24(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, &v7[v29[6]], type metadata accessor for BreakoutDetails.Badge);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &v7[v29[7]], &qword_27F215340, &qword_24F943530);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &v7[v29[8]], &qword_27F215340, &qword_24F943530);
  v51(v12, *MEMORY[0x277CDFA90], v8);
  v33 = v61;
  LOBYTE(v30) = sub_24F923F68();
  v34 = v52;
  v52(v12, v8);
  v34(v33, v8);
  v35 = 95;
  if (v30)
  {
    v35 = 120;
  }

  v36 = *(v27 + v35);
  if (v36 != 2)
  {
    v38 = v53;
    v39 = v62;
    if ((v36 & 1) == 0)
    {
LABEL_11:
      v37 = MEMORY[0x277CDF3D0];
      goto LABEL_12;
    }

LABEL_9:
    v37 = MEMORY[0x277CDF3C0];
    goto LABEL_12;
  }

  if (v49 != 2)
  {
    v38 = v53;
    v39 = v62;
    if ((v49 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v37 = MEMORY[0x277CDF3C0];
  v38 = v53;
  v39 = v62;
LABEL_12:
  v42 = v58;
  v41 = v59;
  v43 = v56;
  (*(v58 + 104))(v56, *v37, v59);
  v44 = v60;
  v45.n128_f64[0] = (*(v42 + 32))(&v7[v60[9]], v43, v41);
  sub_24EA12DC0(v7, v39, v45);
  v46 = v39;
  v47 = v55;
  sub_24EA12E24(v46, v55, type metadata accessor for LargeBreakoutOverlayViewModel);
  (*(v57 + 56))(v47, 0, 1, v44);
  v48 = v54;
  swift_beginAccess();
  sub_24EA12E8C(v47, v38 + v48);
  return swift_endAccess();
}

BOOL sub_24EA12978(uint64_t a1)
{
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CDFA90];
  v8 = *(v3 + 104);
  v8(v6, v7, v2, v4);
  v9 = sub_24F923F68();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = *(v1 + 16);
  v12 = 48;
  if (v9)
  {
    v12 = 96;
  }

  v13 = *(v11 + v12);
  (v8)(v6, v7, v2);

  v14 = sub_24F923F68();
  v10(v6, v2);
  if (v13)
  {

    return 0;
  }

  else
  {
    v16 = 56;
    if (v14)
    {
      v16 = 104;
    }

    return *(v11 + v16) == 0;
  }
}

uint64_t sub_24EA12B18()
{

  sub_24EA12D58(v0 + qword_27F2251B8);
  v1 = v0 + qword_27F2251C0;

  return sub_24EA12D58(v1);
}

uint64_t sub_24EA12B60()
{

  sub_24EA12D58(v0 + qword_27F2251B8);
  sub_24EA12D58(v0 + qword_27F2251C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LargeBreakoutViewModel(uint64_t a1)
{
  result = qword_27F2251C8;
  if (!qword_27F2251C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA12C4C(uint64_t a1, __n128 a2)
{
  sub_24EA12D00(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24EA12D00(uint64_t a1, __n128 a2)
{
  if (!qword_27F2251D8)
  {
    type metadata accessor for LargeBreakoutOverlayViewModel(255);
    v2 = sub_24F92C4A8();
    if (!v3)
    {
      atomic_store(v2, &qword_27F2251D8);
    }
  }
}

uint64_t sub_24EA12D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0, &qword_24F974E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA12DC0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA12E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA12E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0, &qword_24F974E28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SearchRequestDescriptor.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSRequest.addingOptions(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v87 = sub_24F92AC88();
  v3 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v83 - v7;
  MEMORY[0x28223BE20](v9);
  v111 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v90 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v112 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v83 - v16;
  MEMORY[0x28223BE20](v17);
  v95 = &v83 - v18;
  MEMORY[0x28223BE20](v19);
  v97 = &v83 - v20;
  MEMORY[0x28223BE20](v21);
  v98 = &v83 - v22;
  MEMORY[0x28223BE20](v23);
  v100 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v102 = &v83 - v26;
  MEMORY[0x28223BE20](v27);
  v109 = &v83 - v28;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v88 = *(a1 + 32);
  v31 = *(a1 + 48);
  v84 = *(a1 + 40);
  v89 = v31;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v91 = *(a1 + 65);
  v92 = *(a1 + 66);
  v34 = *(a1 + 80);
  v94 = *(a1 + 72);
  v85 = v34;
  v35 = *(a1 + 96);
  v96 = *(a1 + 88);
  v99 = v35;
  v36 = *(a1 + 112);
  v107 = *(a1 + 104);
  v108 = v36;
  v37 = *(a1 + 120);
  v105 = *(a1 + 128);
  v106 = v37;
  v104 = *(a1 + 136);
  v103 = *(a1 + 144);
  v38 = *(a1 + 160);
  v86 = *(a1 + 152);
  v101 = v38;
  v39 = *(a1 + 168);
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v30;
  *(&v114 + 1) = v29;

  sub_24F92AC78();
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930, &unk_24F9674B0);
  *&v114 = v32;
  v40 = v8;
  sub_24F92AC78();
  v41 = v5;
  v42 = v87;
  v43 = *(v3 + 8);
  v43(v41);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  if (v33 <= 1)
  {
    if (v33)
    {
      v48 = 0xE500000000000000;
      v49 = 0x79726F7473;
    }

    else
    {
      v48 = 0xE900000000000072;
      v49 = 0x65706F6C65766564;
    }

    goto LABEL_10;
  }

  if (v33 == 2)
  {
    v48 = 0xE600000000000000;
    v49 = 0x656461637261;
LABEL_10:
    v44 = v42;
    v51 = v111;
    v50 = v112;
    v45 = v91;
    v46 = v90;
    v47 = v40;
    goto LABEL_11;
  }

  v44 = v42;
  v45 = v91;
  v46 = v90;
  v47 = v40;
  if (v33 != 3)
  {
    v114 = 0u;
    v115 = 0u;
    v51 = v111;
    v50 = v112;
    v52 = v43;
    goto LABEL_12;
  }

  v48 = 0xE500000000000000;
  v49 = 0x6863746177;
  v51 = v111;
  v50 = v112;
LABEL_11:
  v52 = v43;
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v49;
  *(&v114 + 1) = v48;
LABEL_12:
  sub_24F92AC78();
  v52(v47, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  if (v39)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  }

  else
  {
    v53 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v39;
  *(&v115 + 1) = v53;

  sub_24F92AC78();
  v52(v51, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  v113 = v88;
  v54 = SearchOrigin.rawValue.getter();
  *(&v115 + 1) = MEMORY[0x277D837D0];
  *&v114 = v54;
  *(&v114 + 1) = v55;
  sub_24F92AC78();
  v52(v46, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  if (v89)
  {
    v56 = MEMORY[0x277D837D0];
    v57 = v97;
    v58 = v84;
  }

  else
  {
    v58 = 0;
    v56 = 0;
    *&v115 = 0;
    v57 = v97;
  }

  *&v114 = v58;
  *(&v114 + 1) = v89;
  *(&v115 + 1) = v56;

  v59 = v93;
  sub_24F92AC78();
  v52(v50, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  v60 = MEMORY[0x277D839B0];
  *(&v115 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v114) = v45;
  v61 = v95;
  sub_24F92AC78();
  v52(v59, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  *(&v115 + 1) = v60;
  LOBYTE(v114) = v92;
  sub_24F92AC78();
  v52(v61, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  v62 = v94;
  if (v94)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v63 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  v64 = v102;
  v65 = v100;
  v66 = v98;
  *&v114 = v62;
  *(&v115 + 1) = v63;

  sub_24F92AC78();
  v52(v57, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  if (v96)
  {
    v67 = MEMORY[0x277D837D0];
    v68 = v85;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    *&v115 = 0;
  }

  *&v114 = v68;
  *(&v114 + 1) = v96;
  *(&v115 + 1) = v67;

  sub_24F92AC78();
  v52(v66, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  v69 = v99;
  if (v99)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v70 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v69;
  *(&v115 + 1) = v70;

  sub_24F92AC78();
  v52(v65, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  if (v101)
  {
    v71 = MEMORY[0x277D837D0];
    v72 = v86;
  }

  else
  {
    v72 = 0;
    v71 = 0;
    *&v115 = 0;
  }

  *&v114 = v72;
  *(&v114 + 1) = v101;
  *(&v115 + 1) = v71;

  v73 = v109;
  sub_24F92AC78();
  v52(v64, v44);
  sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
  v74 = v108;
  if (v108 == 1)
  {
    v75 = 0;
    v76 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
    v77 = v106;
    v78 = v107;
    v80 = v104;
    v79 = v105;
    v81 = v103;
  }

  else
  {
    v75 = swift_allocObject();
    v77 = v106;
    v78 = v107;
    *(v75 + 16) = v107;
    *(v75 + 24) = v74;
    v80 = v104;
    v79 = v105;
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    *(v75 + 48) = v80;
    v81 = v103;
    *(v75 + 56) = v103;
    v76 = &type metadata for ReferrerData;
  }

  *&v114 = v75;
  *(&v115 + 1) = v76;
  sub_24EA145F0(v78, v74, v77, v79, v80, v81);
  sub_24F92AC78();
  v52(v73, v44);
  return sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
}

unint64_t SearchRequestDescriptor.jsRepresentation(in:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v35 = *(v2 + 65);
  v36 = *(v2 + 66);
  v33 = *(v2 + 72);
  v34 = *(v2 + 40);
  v32 = *(v2 + 88);
  v38 = *(v2 + 80);
  v39 = *(v2 + 96);
  v37 = *(v2 + 104);
  v9 = *(v2 + 160);
  v40 = *(v2 + 152);
  v10 = *(v2 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 32) = 1836213620;
  *(inited + 16) = xmmword_24F974E30;
  v12 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA49720;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930, &unk_24F9674B0);
  v13 = sub_24EA146A0();
  *(inited + 104) = v7;
  v14 = v6;
  *(inited + 136) = v13;
  strcpy((inited + 144), "searchEntity");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225210, &unk_24F974E60);
  v15 = sub_24EA14858();
  *(inited + 160) = v8;
  *(inited + 192) = v15;
  strcpy((inited + 200), "targetingData");
  *(inited + 214) = -4864;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225228, &qword_24FA1B180);
  v16 = sub_24EA14930();
  *(inited + 216) = v10;
  *(inited + 248) = v16;
  *(inited + 256) = 0x6E696769726FLL;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 296) = &type metadata for SearchOrigin;
  v17 = sub_24EA149E0();
  *(inited + 272) = v5;
  *(inited + 304) = v17;
  *(inited + 312) = 0x656372756F73;
  *(inited + 320) = 0xE600000000000000;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 352) = v18;
  v19 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
  *(inited + 328) = v34;
  *(inited + 336) = v14;
  *(inited + 360) = v19;
  *(inited + 368) = 0xD000000000000014;
  v20 = MEMORY[0x277D839B0];
  v21 = MEMORY[0x277D22598];
  *(inited + 376) = 0x800000024FA48490;
  *(inited + 408) = v20;
  *(inited + 416) = v21;
  *(inited + 384) = v35;
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000024FA4DC60;
  *(inited + 464) = v20;
  *(inited + 472) = v21;
  *(inited + 440) = v36;
  strcpy((inited + 480), "excludedTerms");
  *(inited + 494) = -4864;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240, &qword_24F974E70);
  *(inited + 520) = v22;
  v23 = sub_24EA14A34();
  *(inited + 528) = v23;
  *(inited + 496) = v33;
  *(inited + 536) = 0x74616E696769726FLL;
  *(inited + 544) = 0xEF6D726554676E69;
  *(inited + 576) = v18;
  *(inited + 584) = v19;
  *(inited + 552) = v38;
  *(inited + 560) = v32;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x800000024FA4DC80;
  *(inited + 632) = v22;
  *(inited + 640) = v23;
  *(inited + 608) = v39;
  *(inited + 648) = 0xD00000000000001CLL;
  *(inited + 656) = 0x800000024FA4DCA0;
  *(inited + 688) = v18;
  *(inited + 696) = v19;
  *(inited + 664) = v40;
  *(inited + 672) = v9;
  strcpy((inited + 704), "referrerData");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;

  if (*(&v37 + 1) == 1)
  {
    v24 = a1;
    v25 = a1;

    v26 = 0;
  }

  else
  {

    v43 = sub_24EDC3010();
    v24 = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v26 = sub_24F92CDE8();
    sub_24E601704(&v43, &qword_27F251730, &unk_24F964AF0);
  }

  v28 = [objc_opt_self() valueWithObject:v26 inContext:v24];
  swift_unknownObjectRelease();

  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  *(inited + 752) = sub_24E6360E0();
  *(inited + 720) = v28;
  v29 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v30 = sub_24E80FFAC(v29);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v30;
  return result;
}

uint64_t _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[6];
  v68 = a1[5];
  v70 = a1[7];
  v64 = *(a1 + 64);
  v62 = *(a1 + 65);
  v60 = *(a1 + 66);
  v58 = a1[9];
  v48 = a1[10];
  v50 = a1[12];
  v44 = a1[13];
  v46 = a1[14];
  v56 = a1[15];
  v52 = a1[11];
  v53 = a1[16];
  v54 = a1[17];
  v55 = *(a1 + 144);
  v38 = a1[19];
  v42 = a1[20];
  v40 = a1[21];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v69 = *(a2 + 56);
  v63 = *(a2 + 64);
  v61 = *(a2 + 65);
  v59 = *(a2 + 66);
  v57 = *(a2 + 72);
  v47 = *(a2 + 80);
  v51 = *(a2 + 88);
  v49 = *(a2 + 96);
  v43 = *(a2 + 104);
  v45 = *(a2 + 112);
  v11 = *(a2 + 120);
  v65 = *(a2 + 128);
  v66 = *(a2 + 136);
  v67 = *(a2 + 144);
  v37 = *(a2 + 152);
  v41 = *(a2 + 160);
  v39 = *(a2 + 168);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24F92CE08() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v74[0]) = v4;
  LOBYTE(v71[0]) = v8;
  v12 = SearchOrigin.rawValue.getter();
  v14 = v13;
  if (v12 == SearchOrigin.rawValue.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = v11;
    if ((v68 != v10 || v5 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v11;
    if (v9)
    {
      return 0;
    }
  }

  sub_24EBAC8B0(v70, v69);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (v64 == 4)
  {
    v19 = v67;
    v21 = v65;
    v20 = v66;
    if (v63 != 4)
    {
      return 0;
    }

    result = 0;
    if (v62 != v61)
    {
      return result;
    }
  }

  else
  {
    v19 = v67;
    v21 = v65;
    v20 = v66;
    if (v63 == 4)
    {
      return 0;
    }

    v23 = sub_24F0CEE64(v64, v63);
    result = 0;
    if (v23 & 1) == 0 || ((v62 ^ v61))
    {
      return result;
    }
  }

  if (((v60 ^ v59) & 1) == 0)
  {
    if (v58)
    {
      if (!v57 || (sub_24EA14BB8(v58, v57) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v57)
    {
      return 0;
    }

    if (v52)
    {
      v24 = v55;
      v26 = v53;
      v25 = v54;
      v27 = v56;
      if (!v51)
      {
        return 0;
      }

      if (v48 != v47 || v52 != v51)
      {
        v27 = v56;
        v26 = v53;
        v25 = v54;
        v24 = v55;
        if ((sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v24 = v55;
      v26 = v53;
      v25 = v54;
      v27 = v56;
      if (v51)
      {
        return 0;
      }
    }

    if (v50)
    {
      if (!v49)
      {
        return 0;
      }

      v27 = v56;
      v26 = v53;
      v25 = v54;
      v24 = v55;
      if ((sub_24EA14BB8(v50, v49) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v49)
    {
      return 0;
    }

    if (v46 == 1)
    {
      v28 = v44;
      sub_24EA145F0(v44, 1, v27, v26, v25, v24);
      if (v45 == 1)
      {
        sub_24EA145F0(v43, 1, v17, v21, v20, v19);
        sub_24EA14B54(v44, 1, v27, v26, v25, v24);
LABEL_54:
        if (v42)
        {
          if (!v41 || (v38 != v37 || v42 != v41) && (sub_24F92CE08() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v41)
        {
          return 0;
        }

        if (v40)
        {
          if (v39)
          {

            v36 = sub_24EBACE54(v40, v39);

            if (v36)
            {
              return 1;
            }
          }
        }

        else if (!v39)
        {
          return 1;
        }

        return 0;
      }

      v29 = v43;
      sub_24EA145F0(v43, v45, v17, v21, v20, v19);
    }

    else
    {
      v28 = v44;
      v74[0] = v44;
      v74[1] = v46;
      v74[2] = v27;
      v74[3] = v26;
      v75 = v25;
      v76 = v24;
      if (v45 != 1)
      {
        v71[0] = v43;
        v71[1] = v45;
        v71[2] = v17;
        v71[3] = v21;
        v72 = v20;
        v73 = v19;
        v30 = v27;
        v31 = v20;
        v32 = v26;
        sub_24EA145F0(v44, v46, v30, v26, v25, v24);
        sub_24EA145F0(v43, v45, v17, v21, v31, v19);
        sub_24EA145F0(v44, v46, v56, v26, v25, v24);
        v33 = _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(v74, v71);
        v34 = v72;
        LOBYTE(v31) = v73;

        sub_24E7B6564(v34, v31);
        v35 = v75;
        LOBYTE(v31) = v76;

        sub_24E7B6564(v35, v31);
        sub_24EA14B54(v44, v46, v56, v32, v25, v24);
        if ((v33 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      sub_24EA145F0(v44, v46, v27, v26, v25, v24);
      v29 = v43;
      sub_24EA145F0(v43, 1, v17, v21, v20, v19);
      sub_24EA145F0(v44, v46, v27, v26, v25, v24);

      sub_24E7B6564(v25, v24);
    }

    sub_24EA14B54(v28, v46, v27, v26, v25, v24);
    sub_24EA14B54(v29, v45, v17, v21, v20, v19);
    return 0;
  }

  return result;
}

double sub_24EA145F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    return sub_24E90BCC4(a5, a6);
  }

  return result;
}

uint64_t sub_24EA14654()
{

  sub_24E7B6564(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_24EA146A0()
{
  result = qword_27F2251E8;
  if (!qword_27F2251E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221930, &unk_24F9674B0);
    sub_24EA14724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2251E8);
  }

  return result;
}

unint64_t sub_24EA14724()
{
  result = qword_27F2251F0;
  if (!qword_27F2251F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2251F8, &qword_24F974E48);
    sub_24EA147A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2251F0);
  }

  return result;
}

unint64_t sub_24EA147A8()
{
  result = qword_27F225200;
  if (!qword_27F225200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225208, &unk_24F974E50);
    sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225200);
  }

  return result;
}

unint64_t sub_24EA14858()
{
  result = qword_27F225218;
  if (!qword_27F225218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225210, &unk_24F974E60);
    sub_24EA148DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225218);
  }

  return result;
}

unint64_t sub_24EA148DC()
{
  result = qword_27F225220;
  if (!qword_27F225220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225220);
  }

  return result;
}

unint64_t sub_24EA14930()
{
  result = qword_27F225230;
  if (!qword_27F225230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225228, &qword_24FA1B180);
    sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225230);
  }

  return result;
}

unint64_t sub_24EA149E0()
{
  result = qword_27F225238;
  if (!qword_27F225238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225238);
  }

  return result;
}

unint64_t sub_24EA14A34()
{
  result = qword_27F225248;
  if (!qword_27F225248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225240, &qword_24F974E70);
    sub_24EA14AE4(&qword_27F213798, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D22590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225248);
  }

  return result;
}

uint64_t sub_24EA14AE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24EA14B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    sub_24E7B6564(a5, a6);
  }
}

uint64_t sub_24EA14BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24F92CE08() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24EA14C48(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for WidgetTodayCardTemplate(0);
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_24F92C738();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x253052270](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_20:
          v18 = MEMORY[0x253052270](v13 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v18 = *(a2 + 8 * v13);

LABEL_25:
      v19 = static WidgetTodayCardTemplate.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_24EA14E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8, &qword_24F975890);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for CallProviderConversationHandles(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v68 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16) && v22 && a1 != a2)
  {
    v80 = v18;
    v82 = v11;
    v72 = v10;
    v70 = v7;
    v23 = 0;
    v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v25 = a1 + v24;
    v83 = a2 + v24;
    v26 = (v5 + 48);
    v69 = (v5 + 32);
    v71 = (v5 + 8);
    v27 = *(v19 + 72);
    v89 = v22;
    v74 = v25;
    v81 = v26;
    v73 = v27;
    while (1)
    {
      sub_24EA1EF3C(v25 + v27 * v23, v21, type metadata accessor for CallProviderConversationHandles);
      if (v23 == v89)
      {
        break;
      }

      v88 = v23;
      sub_24EA1EF3C(v83 + v27 * v23, v16, type metadata accessor for CallProviderConversationHandles);
      v28 = *v21 == *v16 && v21[1] == v16[1];
      if (!v28 && (sub_24F92CE08() & 1) == 0 || (v21[2] != v16[2] || v21[3] != v16[3]) && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_75;
      }

      v29 = type metadata accessor for CallProvider(0);
      v30 = v29[6];
      v31 = *(v82 + 48);
      sub_24E60169C(v21 + v30, v13, &qword_27F213FB0, &qword_24F93E6B0);
      sub_24E60169C(v16 + v30, &v13[v31], &qword_27F213FB0, &qword_24F93E6B0);
      v32 = *v81;
      if ((*v81)(v13, 1, v4) == 1)
      {
        if (v32(&v13[v31], 1, v4) != 1)
        {
          goto LABEL_78;
        }

        sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
      }

      else
      {
        v94 = v29;
        v33 = v72;
        sub_24E60169C(v13, v72, &qword_27F213FB0, &qword_24F93E6B0);
        if (v32(&v13[v31], 1, v4) == 1)
        {
          (*v71)(v33, v4);
LABEL_78:
          sub_24E601704(v13, &qword_27F21E3E8, &qword_24F975890);
LABEL_75:
          sub_24EA1EFA4(v16, type metadata accessor for CallProviderConversationHandles);
          sub_24EA1EFA4(v21, type metadata accessor for CallProviderConversationHandles);
          return;
        }

        v34 = v70;
        (*v69)(v70, &v13[v31], v4);
        sub_24EA1F004(&qword_27F21E3F8, MEMORY[0x277D21C48], MEMORY[0x277D21C58]);
        LODWORD(v93) = sub_24F92AFF8();
        v35 = *v71;
        (*v71)(v34, v4);
        v35(v33, v4);
        sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
        v29 = v94;
        if ((v93 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      if (*(v21 + v29[7]) != *(v16 + v29[7]))
      {
        goto LABEL_75;
      }

      if (*(v21 + v29[8]) != *(v16 + v29[8]))
      {
        goto LABEL_75;
      }

      v36 = *(v80 + 20);
      v37 = *(v21 + v36);
      v38 = *(v16 + v36);
      v39 = *(v37 + 16);
      if (v39 != *(v38 + 16))
      {
        goto LABEL_75;
      }

      if (v39 && v37 != v38)
      {
        v40 = 0;
        v86 = v38 + 32;
        v87 = v37 + 32;
        v78 = v13;
        v79 = v4;
        v84 = v21;
        v85 = v16;
        v76 = v38;
        v77 = v37;
        v75 = v39;
        while (v40 < *(v37 + 16))
        {
          if (v40 >= *(v38 + 16))
          {
            goto LABEL_82;
          }

          v41 = (v87 + 16 * v40);
          v42 = *v41;
          v43 = (v86 + 16 * v40);
          v44 = *v43;
          v45 = *(*v41 + 2);
          if (v45 != *(*v43 + 16))
          {
            goto LABEL_75;
          }

          v46 = v41[1];
          v92 = v43[1];
          v90 = v40;
          v91 = v46;
          if (v45)
          {

            if (v42 != v44)
            {
              v47 = 0;
              v48 = 0;
              v93 = v45;
              v94 = v42;
              while (v48 < *(v42 + 2))
              {
                if (v48 >= *(v44 + 16))
                {
                  goto LABEL_80;
                }

                ++v48;
                v50 = &v42[v47];
                v51 = *&v42[v47 + 10];
                v52 = *(v50 + 6);
                v53 = *(v50 + 32);
                v54 = v44;
                v55 = *(v44 + v47 * 4 + 32);
                v57 = *(v44 + v47 * 4 + 40);
                v56 = *(v44 + v47 * 4 + 48);
                if (v53 == 1)
                {
                  v58 = 0x6D754E656E6F6870;
                }

                else
                {
                  v58 = 0x6464416C69616D65;
                }

                if (v53 == 1)
                {
                  v59 = 0xEB00000000726562;
                }

                else
                {
                  v59 = 0xEC00000073736572;
                }

                if (v53)
                {
                  v60 = v58;
                }

                else
                {
                  v60 = 0x636972656E6567;
                }

                if (v53)
                {
                  v61 = v59;
                }

                else
                {
                  v61 = 0xE700000000000000;
                }

                if (v55 == 1)
                {
                  v62 = 0x6D754E656E6F6870;
                }

                else
                {
                  v62 = 0x6464416C69616D65;
                }

                if (v55 == 1)
                {
                  v63 = 0xEB00000000726562;
                }

                else
                {
                  v63 = 0xEC00000073736572;
                }

                if (v55)
                {
                  v64 = v62;
                }

                else
                {
                  v64 = 0x636972656E6567;
                }

                if (v55)
                {
                  v65 = v63;
                }

                else
                {
                  v65 = 0xE700000000000000;
                }

                if (v60 == v64 && v61 == v65)
                {
                }

                else
                {
                  v66 = sub_24F92CE08();

                  if ((v66 & 1) == 0)
                  {

LABEL_74:

                    v21 = v84;
                    v16 = v85;
                    goto LABEL_75;
                  }
                }

                v44 = v54;
                if (v51 == v57 && v52 == v56)
                {

                  v42 = v94;
                }

                else
                {
                  v49 = sub_24F92CE08();

                  v42 = v94;
                  if ((v49 & 1) == 0)
                  {

                    goto LABEL_74;
                  }
                }

                v47 += 6;
                if (v93 == v48)
                {
                  goto LABEL_69;
                }
              }

              __break(1u);
LABEL_80:
              __break(1u);
              break;
            }
          }

          else
          {
          }

LABEL_69:
          v67 = sub_24EDD3E74(v91, v92);

          v13 = v78;
          v4 = v79;
          v21 = v84;
          v16 = v85;
          v38 = v76;
          v37 = v77;
          if ((v67 & 1) == 0)
          {
            goto LABEL_75;
          }

          v40 = v90 + 1;
          if (v90 + 1 == v75)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
        break;
      }

LABEL_6:
      v23 = v88 + 1;
      sub_24EA1EFA4(v16, type metadata accessor for CallProviderConversationHandles);
      sub_24EA1EFA4(v21, type metadata accessor for CallProviderConversationHandles);
      v25 = v74;
      v27 = v73;
      if (v23 == v89)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_24EA15730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v29 = a2 + 32;
  v30 = a1 + 32;
  v4 = 0xEC00000073736572;
  v28 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      return;
    }

    v5 = (v30 + 16 * v3);
    v6 = (v29 + 16 * v3);
    v34 = *v5;
    v35 = *v6;
    v7 = *(*v5 + 16);
    if (v7 != *(*v6 + 16))
    {
      break;
    }

    v8 = v5[1];
    v31 = v3;
    v32 = v6[1];
    if (v7)
    {

      if (v34 != v35)
      {
        v9 = 0;
        v33 = v8;
        do
        {
          v12 = *(v34 + v9 + 40);
          v11 = *(v34 + v9 + 48);
          v13 = *(v34 + v9 + 32);
          v14 = *(v35 + v9 + 32);
          v16 = *(v35 + v9 + 40);
          v15 = *(v35 + v9 + 48);
          if (v13 == 1)
          {
            v17 = 0x6D754E656E6F6870;
          }

          else
          {
            v17 = 0x6464416C69616D65;
          }

          if (v13 == 1)
          {
            v18 = 0xEB00000000726562;
          }

          else
          {
            v18 = v4;
          }

          if (*(v34 + v9 + 32))
          {
            v19 = v17;
          }

          else
          {
            v19 = 0x636972656E6567;
          }

          if (*(v34 + v9 + 32))
          {
            v20 = v18;
          }

          else
          {
            v20 = 0xE700000000000000;
          }

          if (v14 == 1)
          {
            v21 = 0x6D754E656E6F6870;
          }

          else
          {
            v21 = 0x6464416C69616D65;
          }

          v22 = v4;
          if (v14 == 1)
          {
            v23 = 0xEB00000000726562;
          }

          else
          {
            v23 = v4;
          }

          if (*(v35 + v9 + 32))
          {
            v24 = v21;
          }

          else
          {
            v24 = 0x636972656E6567;
          }

          if (*(v35 + v9 + 32))
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xE700000000000000;
          }

          if (v19 == v24 && v20 == v25)
          {
          }

          else
          {
            v26 = sub_24F92CE08();

            if ((v26 & 1) == 0)
            {

              goto LABEL_50;
            }
          }

          v8 = v33;
          if (v12 == v16 && v11 == v15)
          {

            v4 = v22;
          }

          else
          {
            v10 = sub_24F92CE08();

            v4 = v22;
            if ((v10 & 1) == 0)
            {

LABEL_50:

              return;
            }
          }

          v9 += 24;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
    }

    v27 = sub_24EDD3E74(v8, v32);

    if (v27)
    {
      v3 = v31 + 1;
      v2 = v28;
      if (v31 + 1 != v28)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_24EA15AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x6D754E656E6F6870;
      }

      else
      {
        v12 = 0x6464416C69616D65;
      }

      if (v8 == 1)
      {
        v13 = 0xEB00000000726562;
      }

      else
      {
        v13 = 0xEC00000073736572;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x636972656E6567;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x6D754E656E6F6870;
      }

      else
      {
        v16 = 0x6464416C69616D65;
      }

      if (v9 == 1)
      {
        v17 = 0xEB00000000726562;
      }

      else
      {
        v17 = 0xEC00000073736572;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x636972656E6567;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v20 = sub_24F92CE08();

        if ((v20 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_24F92CE08();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA15CE8(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v34 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x253052270](v12 - 4, a1);
          v15 = result;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_83;
          }

          v15 = *(a1 + 8 * v12);

          if (v34)
          {
LABEL_22:
            v16 = MEMORY[0x253052270](v12 - 4, a2);
            goto LABEL_27;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v16 = *(a2 + 8 * v12);

LABEL_27:
        v17 = *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24);
        if (!v17 && (sub_24F92CE08() & 1) == 0 || *(v15 + 32) != *(v16 + 32))
        {
LABEL_47:

          return 0;
        }

        v18 = *(v15 + 48);
        v19 = *(v16 + 48);
        if (v18)
        {
          if (!v19 || (*(v15 + 40) != *(v16 + 40) || v18 != v19) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v19)
        {
          goto LABEL_47;
        }

        if ((*(v15 + 56) != *(v16 + 56) || *(v15 + 64) != *(v16 + 64)) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_47;
        }

        v20 = *(v15 + 72);
        v21 = *(v16 + 72);

        result = v20 == v21;
        if (v20 == v21)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v22 = a1 + 32;
    v23 = a2 + 32;
    v24 = *(v33 + 16);
    v25 = *(v9 + 16);
    while (1)
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      if (!v25)
      {
        break;
      }

      v26 = *v22;
      v27 = *v23;
      v28 = *(*v22 + 16) == *(*v23 + 16) && *(*v22 + 24) == *(*v23 + 24);
      if (!v28 && (sub_24F92CE08() & 1) == 0 || *(v26 + 32) != *(v27 + 32))
      {
        return 0;
      }

      v29 = *(v26 + 48);
      v30 = *(v27 + 48);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        v31 = *(v26 + 40) == *(v27 + 40) && v29 == v30;
        if (!v31 && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      v32 = *(v26 + 56) == *(v27 + 56) && *(v26 + 64) == *(v27 + 64);
      if (!v32 && (sub_24F92CE08() & 1) == 0 || *(v26 + 72) != *(v27 + 72))
      {
        return 0;
      }

      --v25;
      --v24;
      v22 += 8;
      v23 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_24EA16044(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_24F92C738())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      v6 = v7;
    }

    v8 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v8 = v9;
    }

    if (v6 != v8)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v29 = a2 & 0xC000000000000001;
          v10 = 4;
          while (1)
          {
            v11 = v10 - 4;
            v12 = v10 - 3;
            if (__OFADD__(v10 - 4, 1))
            {
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x253052270](v10 - 4, a1);
              if (v29)
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              v13 = *(a1 + 8 * v10);

              if (v29)
              {
LABEL_23:
                v14 = MEMORY[0x253052270](v10 - 4, a2);
                goto LABEL_28;
              }
            }

            if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v14 = *(a2 + 8 * v10);

LABEL_28:
            v15 = *(v13 + 16) == *(v14 + 16) && *(v13 + 24) == *(v14 + 24);
            if (!v15 && (sub_24F92CE08() & 1) == 0 || *(v13 + 32) != *(v14 + 32) || *(v13 + 40) != *(v14 + 40) || (sub_24F0C97AC(*(v13 + 64), *(v14 + 64)) & 1) == 0 || (*(v13 + 72) != *(v14 + 72) || *(v13 + 80) != *(v14 + 80)) && (sub_24F92CE08() & 1) == 0)
            {
              goto LABEL_65;
            }

            v16 = sub_24EA16B7C(*(v13 + 104), *(v14 + 104));

            if (v16)
            {
              ++v10;
              if (v12 != v5)
              {
                continue;
              }
            }

            return;
          }
        }

        v17 = a1 + 32;
        v18 = a2 + 32;
        v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          if (!v19)
          {
            goto LABEL_71;
          }

          if (!v20)
          {
            break;
          }

          v21 = *v17;
          v22 = *v18;
          v23 = *(*v17 + 16) == *(*v18 + 16) && *(*v17 + 24) == *(*v18 + 24);
          if (!v23 && (sub_24F92CE08() & 1) == 0)
          {
            return;
          }

          if (*(v21 + 32) != *(v22 + 32) || *(v21 + 40) != *(v22 + 40))
          {
            return;
          }

          v25 = *(v22 + 64);
          v26 = *(v21 + 64);

          if ((sub_24F0C97AC(v26, v25) & 1) == 0 || (*(v21 + 72) == *(v22 + 72) ? (v27 = *(v21 + 80) == *(v22 + 80)) : (v27 = 0), !v27 && (sub_24F92CE08() & 1) == 0))
          {
LABEL_65:

            return;
          }

          v28 = sub_24EA16B7C(*(v21 + 104), *(v22 + 104));

          if (v28)
          {
            --v20;
            --v19;
            v17 += 8;
            v18 += 8;
            if (--v5)
            {
              continue;
            }
          }

          return;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_24EA16378(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_134:
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_24F92C738())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_141;
      }

      if (((a2 | a1) & 0xC000000000000001) != 0)
      {
        v49 = a2 & 0xC000000000000001;
        for (i = 4; ; ++i)
        {
          v11 = i - 4;
          v12 = i - 3;
          if (__OFADD__(i - 4, 1))
          {
            __break(1u);
            goto LABEL_134;
          }

          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x253052270](i - 4, a1);
            if (v49)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_139;
            }

            v13 = *(a1 + 8 * i);

            if (v49)
            {
LABEL_23:
              v14 = MEMORY[0x253052270](i - 4, a2);
              goto LABEL_28;
            }
          }

          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          v14 = *(a2 + 8 * i);

LABEL_28:
          v15 = *(v13 + 16);
          v16 = *(v14 + 16);
          v17 = 0x6E6F69736976;
          if (v15 == 5)
          {
            v17 = 6513005;
          }

          v18 = 0xE600000000000000;
          if (v15 == 5)
          {
            v18 = 0xE300000000000000;
          }

          v19 = 0x6863746177;
          if (v15 != 3)
          {
            v19 = 30324;
          }

          v20 = 0xE200000000000000;
          if (v15 == 3)
          {
            v20 = 0xE500000000000000;
          }

          if (*(v13 + 16) <= 4u)
          {
            v17 = v19;
            v18 = v20;
          }

          v21 = 0x736567617373656DLL;
          if (v15 == 1)
          {
            v21 = 6578544;
          }

          v22 = 0xE800000000000000;
          if (v15 == 1)
          {
            v22 = 0xE300000000000000;
          }

          if (!*(v13 + 16))
          {
            v21 = 0x656E6F6870;
            v22 = 0xE500000000000000;
          }

          if (*(v13 + 16) <= 2u)
          {
            v23 = v21;
          }

          else
          {
            v23 = v17;
          }

          if (*(v13 + 16) <= 2u)
          {
            v24 = v22;
          }

          else
          {
            v24 = v18;
          }

          if (*(v14 + 16) <= 2u)
          {
            if (*(v14 + 16))
            {
              if (v16 == 1)
              {
                v25 = 0xE300000000000000;
                if (v23 != 6578544)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v25 = 0xE800000000000000;
                if (v23 != 0x736567617373656DLL)
                {
                  goto LABEL_71;
                }
              }
            }

            else
            {
              v25 = 0xE500000000000000;
              if (v23 != 0x656E6F6870)
              {
                goto LABEL_71;
              }
            }
          }

          else if (*(v14 + 16) > 4u)
          {
            if (v16 == 5)
            {
              v25 = 0xE300000000000000;
              if (v23 != 6513005)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v25 = 0xE600000000000000;
              if (v23 != 0x6E6F69736976)
              {
                goto LABEL_71;
              }
            }
          }

          else if (v16 == 3)
          {
            v25 = 0xE500000000000000;
            if (v23 != 0x6863746177)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v25 = 0xE200000000000000;
            if (v23 != 30324)
            {
              goto LABEL_71;
            }
          }

          if (v24 == v25)
          {

            goto LABEL_72;
          }

LABEL_71:
          v26 = sub_24F92CE08();

          if ((v26 & 1) == 0)
          {
            goto LABEL_131;
          }

LABEL_72:
          v27 = *(v13 + 48);
          v28 = *(v13 + 56);

          v29 = *(v14 + 48);
          v4 = *(v14 + 56);

          if (v28)
          {
            if (!v4)
            {
              return;
            }
          }

          else
          {
            if (v27 == v29)
            {
              v30 = v4;
            }

            else
            {
              v30 = 1;
            }

            if (v30)
            {
              return;
            }
          }

          if (v12 == v5)
          {
            return;
          }
        }
      }

      v31 = a1 + 32;
      v32 = a2 + 32;
      v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      do
      {
        if (!v33)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          return;
        }

        if (!v34)
        {
          goto LABEL_138;
        }

        v35 = *v31;
        v36 = *(*v31 + 16);
        if (v36 <= 2)
        {
          if (*(*v31 + 16))
          {
            if (v36 == 1)
            {
              v38 = 6578544;
            }

            else
            {
              v38 = 0x736567617373656DLL;
            }

            if (v36 == 1)
            {
              v37 = 0xE300000000000000;
            }

            else
            {
              v37 = 0xE800000000000000;
            }
          }

          else
          {
            v37 = 0xE500000000000000;
            v38 = 0x656E6F6870;
          }
        }

        else if (*(*v31 + 16) > 4u)
        {
          if (v36 == 5)
          {
            v37 = 0xE300000000000000;
            v38 = 6513005;
          }

          else
          {
            v37 = 0xE600000000000000;
            v38 = 0x6E6F69736976;
          }
        }

        else if (v36 == 3)
        {
          v37 = 0xE500000000000000;
          v38 = 0x6863746177;
        }

        else
        {
          v37 = 0xE200000000000000;
          v38 = 30324;
        }

        v39 = *v32;
        v40 = *(*v32 + 16);
        if (v40 <= 2)
        {
          if (*(*v32 + 16))
          {
            if (v40 == 1)
            {
              v41 = 0xE300000000000000;
              if (v38 != 6578544)
              {
                goto LABEL_124;
              }
            }

            else
            {
              v41 = 0xE800000000000000;
              if (v38 != 0x736567617373656DLL)
              {
                goto LABEL_124;
              }
            }
          }

          else
          {
            v41 = 0xE500000000000000;
            if (v38 != 0x656E6F6870)
            {
              goto LABEL_124;
            }
          }
        }

        else if (*(*v32 + 16) > 4u)
        {
          if (v40 == 5)
          {
            v42 = 6513005;
          }

          else
          {
            v42 = 0x6E6F69736976;
          }

          if (v40 == 5)
          {
            v41 = 0xE300000000000000;
          }

          else
          {
            v41 = 0xE600000000000000;
          }

          if (v38 != v42)
          {
            goto LABEL_124;
          }
        }

        else if (v40 == 3)
        {
          v41 = 0xE500000000000000;
          if (v38 != 0x6863746177)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v41 = 0xE200000000000000;
          if (v38 != 30324)
          {
            goto LABEL_124;
          }
        }

        if (v37 == v41)
        {

          goto LABEL_125;
        }

LABEL_124:
        v43 = sub_24F92CE08();

        if ((v43 & 1) == 0)
        {
LABEL_131:

          return;
        }

LABEL_125:
        v44 = *(v35 + 48);
        v45 = *(v35 + 56);

        v46 = *(v39 + 48);
        v47 = *(v39 + 56);

        if (v45)
        {
          if (!v47)
          {
            return;
          }
        }

        else
        {
          if (v44 == v46)
          {
            v48 = v47;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            return;
          }
        }

        --v34;
        --v33;
        v31 += 8;
        v32 += 8;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t sub_24EA169B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8 = v4[1];
      v7 = v4[2];
      v9 = v4[3];
      v25 = v4[5];
      v10 = *(v3 - 1);
      v11 = *v3;
      v12 = v3[1];
      v13 = v3[2];
      v14 = v3[3];
      v23 = v3[4];
      v24 = v3[5];
      v22 = v4[4];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 2) != *(v3 - 2) || v5 != v10)
        {
          v21 = v4[3];
          v15 = v3[3];
          v16 = sub_24F92CE08();
          v14 = v15;
          v9 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v8 != v12)
      {
        v17 = v9;
        v18 = v14;
        v19 = sub_24F92CE08();
        v14 = v18;
        v9 = v17;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v9)
      {
        if (!v14 || (v7 != v13 || v9 != v14) && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v25)
      {
        if (!v24 || (v22 != v23 || v25 != v24) && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v24)
      {
        return 0;
      }

      v4 += 8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA16B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v19 = *(v3 - 9);
      v20 = *(v4 - 9);
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = 1667851624;
      if (*(v4 - 17) == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v9 = 7496556;
        v10 = 0xE300000000000000;
      }

      v11 = 1734701162;
      if (*(v4 - 17))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v11 = 6778480;
        v12 = 0xE300000000000000;
      }

      if (*(v4 - 17) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*(v4 - 17) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v3 - 17) > 1u)
      {
        if (*(v3 - 17) == 2)
        {
          v15 = 0xE400000000000000;
          if (v13 != 1667851624)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v15 = 0xE300000000000000;
          if (v13 != 7496556)
          {
            goto LABEL_29;
          }
        }
      }

      else if (*(v3 - 17))
      {
        v15 = 0xE400000000000000;
        if (v13 != 1734701162)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v13 != 6778480)
        {
          goto LABEL_29;
        }
      }

      if (v14 != v15)
      {
LABEL_29:
        v16 = sub_24F92CE08();

        if ((v16 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_30;
      }

LABEL_30:
      result = 0;
      if (v5)
      {
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        if (v20 == v19)
        {
          v18 = v7;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          return result;
        }
      }

      if ((v6 ^ v8))
      {
        return result;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24EA16D54(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_24F92C738();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a1 & 0xC000000000000001;
      v12 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v15 = i - 4;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (v11)
        {
          result = MEMORY[0x253052270](i - 4, a1);
          v16 = result;
          v68 = i - 3;
          if (v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v16 = *(a1 + 8 * i);

          v68 = i - 3;
          if (v12)
          {
LABEL_26:
            v17 = MEMORY[0x253052270](i - 4, a2);
            goto LABEL_31;
          }
        }

        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_211;
        }

        v17 = *(a2 + 8 * i);

LABEL_31:
        v18 = *(v16 + 16);
        v19 = *(v17 + 16);
        v70 = v17;
        if (v18)
        {
          if (!v19)
          {
            goto LABEL_196;
          }

          v20 = *(v18 + 16) == *(v19 + 16) && *(v18 + 24) == *(v19 + 24);
          if (!v20 && (sub_24F92CE08() & 1) == 0 || *(v18 + 32) != *(v19 + 32) || *(v18 + 40) != *(v19 + 40))
          {
            goto LABEL_196;
          }

          v21 = *(v18 + 64);
          if (v21 <= 3)
          {
            if (*(v18 + 64) > 1u)
            {
              if (v21 == 2)
              {
                v23 = 0xD000000000000016;
                v22 = 0x800000024FA43300;
              }

              else
              {
                v22 = 0xE500000000000000;
                v23 = 0x646E756F72;
              }
            }

            else
            {
              if (*(v18 + 64))
              {
                v23 = 0x526465646E756F72;
              }

              else
              {
                v23 = 0x6669636570736E75;
              }

              if (*(v18 + 64))
              {
                v22 = 0xEB00000000746365;
              }

              else
              {
                v22 = 0xEB00000000646569;
              }
            }
          }

          else if (*(v18 + 64) <= 5u)
          {
            if (v21 == 4)
            {
              v23 = 0xD000000000000010;
              v22 = 0x800000024FA43320;
            }

            else
            {
              v22 = 0xE400000000000000;
              v23 = 1819044208;
            }
          }

          else if (v21 == 6)
          {
            v22 = 0xE300000000000000;
            v23 = 7364969;
          }

          else if (v21 == 7)
          {
            v22 = 0xE600000000000000;
            v23 = 0x746365527674;
          }

          else
          {
            v22 = 0xE900000000000064;
            v23 = 0x656E726F64616E75;
          }

          v24 = *(v19 + 64);
          v66 = v16;
          if (v24 <= 3)
          {
            if (*(v19 + 64) > 1u)
            {
              if (v24 == 2)
              {
                v26 = 0xD000000000000016;
                v25 = 0x800000024FA43300;
              }

              else
              {
                v25 = 0xE500000000000000;
                v26 = 0x646E756F72;
              }
            }

            else
            {
              v26 = 0x6669636570736E75;
              v25 = 0xEB00000000646569;
              if (*(v19 + 64))
              {
                v26 = 0x526465646E756F72;
                v25 = 0xEB00000000746365;
              }
            }
          }

          else if (*(v19 + 64) <= 5u)
          {
            if (v24 == 4)
            {
              v26 = 0xD000000000000010;
              v25 = 0x800000024FA43320;
            }

            else
            {
              v25 = 0xE400000000000000;
              v26 = 1819044208;
            }
          }

          else if (v24 == 6)
          {
            v25 = 0xE300000000000000;
            v26 = 7364969;
          }

          else if (v24 == 7)
          {
            v25 = 0xE600000000000000;
            v26 = 0x746365527674;
          }

          else
          {
            v25 = 0xE900000000000064;
            v26 = 0x656E726F64616E75;
          }

          v27 = v12;
          if (v23 == v26 && v22 == v25)
          {
          }

          else
          {
            v28 = sub_24F92CE08();

            if ((v28 & 1) == 0)
            {
              goto LABEL_195;
            }
          }

          if ((*(v18 + 72) != *(v19 + 72) || *(v18 + 80) != *(v19 + 80)) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          v29 = sub_24EA16B7C(*(v18 + 104), *(v19 + 104));

          v12 = v27;
          v11 = a1 & 0xC000000000000001;
          v16 = v66;
          if ((v29 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else if (v19)
        {
          goto LABEL_196;
        }

        v30 = *(v16 + 24);
        v31 = *(v70 + 24);
        if (v30)
        {
          if (!v31)
          {
            goto LABEL_196;
          }

          if ((sub_24F91F418() & 1) == 0)
          {
            goto LABEL_195;
          }

          v32 = *(v30 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
          v33 = *(v31 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
          v34 = *(v32 + 16) == *(v33 + 16) && *(v32 + 24) == *(v33 + 24);
          if (!v34 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          if (*(v32 + 32) != *(v33 + 32) || *(v32 + 40) != *(v33 + 40) || (sub_24F0C97AC(*(v32 + 64), *(v33 + 64)) & 1) == 0)
          {
            goto LABEL_195;
          }

          v35 = *(v32 + 72) == *(v33 + 72) && *(v32 + 80) == *(v33 + 80);
          if (!v35 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_195;
          }

          v14 = sub_24EA16B7C(*(v32 + 104), *(v33 + 104));

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_197;
          }
        }

        result = 1;
        if (v68 == v5)
        {
          return result;
        }
      }
    }

    v36 = a1 + 32;
    v37 = a2 + 32;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v38)
      {
        goto LABEL_207;
      }

      if (!v39)
      {
        break;
      }

      v41 = *v36;
      v42 = *v37;
      v43 = *(*v36 + 16);
      v44 = *(*v37 + 16);
      if (v43)
      {
        if (!v44)
        {
          return 0;
        }

        v45 = *(v43 + 16) == *(v44 + 16) && *(v43 + 24) == *(v44 + 24);
        if (!v45 && (sub_24F92CE08() & 1) == 0)
        {
          return 0;
        }

        if (*(v43 + 32) != *(v44 + 32) || *(v43 + 40) != *(v44 + 40))
        {
          return 0;
        }

        v47 = *(v43 + 64);
        v67 = v38;
        if (v47 <= 3)
        {
          v50 = 0xD000000000000016;
          if (v47 != 2)
          {
            v50 = 0x646E756F72;
          }

          v51 = 0x800000024FA43300;
          if (v47 != 2)
          {
            v51 = 0xE500000000000000;
          }

          v52 = 0x6669636570736E75;
          if (*(v43 + 64))
          {
            v52 = 0x526465646E756F72;
          }

          v53 = 0xEB00000000646569;
          if (*(v43 + 64))
          {
            v53 = 0xEB00000000746365;
          }

          if (*(v43 + 64) <= 1u)
          {
            v49 = v52;
          }

          else
          {
            v49 = v50;
          }

          if (*(v43 + 64) <= 1u)
          {
            v48 = v53;
          }

          else
          {
            v48 = v51;
          }
        }

        else if (*(v43 + 64) <= 5u)
        {
          if (v47 == 4)
          {
            v49 = 0xD000000000000010;
            v48 = 0x800000024FA43320;
          }

          else
          {
            v48 = 0xE400000000000000;
            v49 = 1819044208;
          }
        }

        else if (v47 == 6)
        {
          v48 = 0xE300000000000000;
          v49 = 7364969;
        }

        else if (v47 == 7)
        {
          v48 = 0xE600000000000000;
          v49 = 0x746365527674;
        }

        else
        {
          v48 = 0xE900000000000064;
          v49 = 0x656E726F64616E75;
        }

        v54 = *(v44 + 64);
        if (v54 <= 3)
        {
          if (*(v44 + 64) > 1u)
          {
            if (v54 == 2)
            {
              v56 = 0xD000000000000016;
              v55 = 0x800000024FA43300;
            }

            else
            {
              v55 = 0xE500000000000000;
              v56 = 0x646E756F72;
            }
          }

          else
          {
            if (*(v44 + 64))
            {
              v56 = 0x526465646E756F72;
            }

            else
            {
              v56 = 0x6669636570736E75;
            }

            if (*(v44 + 64))
            {
              v55 = 0xEB00000000746365;
            }

            else
            {
              v55 = 0xEB00000000646569;
            }
          }
        }

        else if (*(v44 + 64) <= 5u)
        {
          if (v54 == 4)
          {
            v56 = 0xD000000000000010;
            v55 = 0x800000024FA43320;
          }

          else
          {
            v55 = 0xE400000000000000;
            v56 = 1819044208;
          }
        }

        else if (v54 == 6)
        {
          v55 = 0xE300000000000000;
          v56 = 7364969;
        }

        else if (v54 == 7)
        {
          v55 = 0xE600000000000000;
          v56 = 0x746365527674;
        }

        else
        {
          v55 = 0xE900000000000064;
          v56 = 0x656E726F64616E75;
        }

        v69 = v37;
        v71 = v36;
        if (v49 == v56 && v48 == v55)
        {

          v57 = v42;
        }

        else
        {
          v58 = sub_24F92CE08();

          v57 = v42;

          if ((v58 & 1) == 0)
          {
            goto LABEL_195;
          }
        }

        if ((*(v43 + 72) != *(v44 + 72) || *(v43 + 80) != *(v44 + 80)) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_195;
        }

        v59 = sub_24EA16B7C(*(v43 + 104), *(v44 + 104));

        v42 = v57;
        v37 = v69;
        v36 = v71;
        v38 = v67;
        if ((v59 & 1) == 0)
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v44)
        {
          return 0;
        }
      }

      v60 = *(v41 + 24);
      v61 = *(v42 + 24);
      if (v60)
      {
        if (!v61)
        {
          goto LABEL_196;
        }

        if ((sub_24F91F418() & 1) == 0 || ((v62 = *(v60 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), v63 = *(v61 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v62 + 16) == *(v63 + 16)) ? (v64 = *(v62 + 24) == *(v63 + 24)) : (v64 = 0), !v64 && (sub_24F92CE08() & 1) == 0 || *(v62 + 32) != *(v63 + 32) || *(v62 + 40) != *(v63 + 40) || (sub_24F0C97AC(*(v62 + 64), *(v63 + 64)) & 1) == 0 || (*(v62 + 72) == *(v63 + 72) ? (v65 = *(v62 + 80) == *(v63 + 80)) : (v65 = 0), !v65 && (sub_24F92CE08() & 1) == 0)))
        {
LABEL_195:

LABEL_196:

LABEL_197:

          return 0;
        }

        v40 = sub_24EA16B7C(*(v62 + 104), *(v63 + 104));

        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_197;
        }
      }

      --v39;
      --v38;
      v36 += 8;
      v37 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_208:
    __break(1u);
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
  return result;
}

void sub_24EA1782C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 24 * v3);
      v7 = v6[1];
      v8 = v6[2];
      v9 = (v5 + 24 * v3);
      v10 = v9[1];
      v11 = v9[2];
      if (v7)
      {
        if (!v10)
        {
          return;
        }

        if (*v6 != *v9 || v7 != v10)
        {
          v13 = v2;
          v14 = v3;
          v15 = v4;
          v16 = v5;
          v17 = sub_24F92CE08();
          v5 = v16;
          v4 = v15;
          v3 = v14;
          v2 = v13;
          if ((v17 & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v10)
      {
        return;
      }

      v18 = *(v8 + 16);
      if (v18 != *(v11 + 16))
      {
        return;
      }

      if (v18)
      {
        v19 = v8 == v11;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v55 = v5;
        v56 = v4;
        v57 = v3;
        v58 = v2;
        v66 = v11 + 32;
        v67 = v8 + 32;

        v20 = 0;
        v65 = v11;
        v64 = v8;
        v59 = v18;
        while (1)
        {
          if (v20 >= *(v8 + 16))
          {
            goto LABEL_89;
          }

          sub_24E772674(v67 + 136 * v20, v77);
          if (v20 >= *(v11 + 16))
          {
            goto LABEL_90;
          }

          v68 = v20;
          sub_24E772674(v66 + 136 * v20, v70);
          if ((v77[0] != v70[0] || v77[1] != v70[1]) && (sub_24F92CE08() & 1) == 0 || (v77[4] != v70[4] || v77[5] != v70[5]) && (sub_24F92CE08() & 1) == 0 || (v77[2] != v70[2] || v77[3] != v70[3]) && (sub_24F92CE08() & 1) == 0)
          {
LABEL_85:
            sub_24E7726D0(v70);
            sub_24E7726D0(v77);
LABEL_86:

            return;
          }

          if (v78)
          {
            if (v78 == 1)
            {
              v21 = 0x6553656C676E6973;
              v22 = 0xEF6E6F697463656CLL;
              v23 = v71;
              if (!v71)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v21 = 0xD000000000000011;
              v22 = 0x800000024FA3FA90;
              v23 = v71;
              if (!v71)
              {
LABEL_41:
                v24 = 0xE600000000000000;
                if (v21 != 0x656C67676F74)
                {
                  goto LABEL_48;
                }

                goto LABEL_46;
              }
            }
          }

          else
          {
            v22 = 0xE600000000000000;
            v21 = 0x656C67676F74;
            v23 = v71;
            if (!v71)
            {
              goto LABEL_41;
            }
          }

          if (v23 == 1)
          {
            v24 = 0xEF6E6F697463656CLL;
            if (v21 != 0x6553656C676E6973)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v24 = 0x800000024FA3FA90;
            if (v21 != 0xD000000000000011)
            {
              goto LABEL_48;
            }
          }

LABEL_46:
          if (v22 == v24)
          {

            goto LABEL_49;
          }

LABEL_48:
          v25 = sub_24F92CE08();

          if ((v25 & 1) == 0)
          {
            goto LABEL_85;
          }

LABEL_49:
          if ((sub_24EDD4178(v80, v73) & 1) == 0)
          {
            goto LABEL_85;
          }

          v26 = *(v79 + 16);
          if (v26 != *(v72 + 16))
          {
            goto LABEL_85;
          }

          if (v26 && v79 != v72)
          {
            v27 = (v72 + 48);
            v28 = (v79 + 48);
            do
            {
              v29 = *(v28 - 1);
              v30 = *v28;
              v32 = v28[1];
              v31 = v28[2];
              v33 = v28[3];
              v69 = v28[4];
              v34 = v28[5];
              v35 = *(v27 - 1);
              v36 = *v27;
              v38 = v27[1];
              v37 = v27[2];
              v39 = v27[3];
              v40 = v27[4];
              v41 = v27[5];
              if (v29)
              {
                if (!v35)
                {
                  goto LABEL_85;
                }

                if (*(v28 - 2) != *(v27 - 2) || v29 != v35)
                {
                  v62 = v28[5];
                  v63 = v27[4];
                  v42 = v27[5];
                  v60 = v27[2];
                  v61 = v28[2];
                  v43 = sub_24F92CE08();
                  v37 = v60;
                  v31 = v61;
                  v41 = v42;
                  v34 = v62;
                  v40 = v63;
                  if ((v43 & 1) == 0)
                  {
                    goto LABEL_85;
                  }
                }
              }

              else if (v35)
              {
                goto LABEL_85;
              }

              if (v30 != v36 || v32 != v38)
              {
                v44 = v34;
                v45 = v41;
                v46 = v33;
                v47 = v31;
                v48 = v37;
                v49 = sub_24F92CE08();
                v37 = v48;
                v31 = v47;
                v33 = v46;
                v41 = v45;
                v34 = v44;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }

              if (v33)
              {
                if (!v39)
                {
                  goto LABEL_85;
                }

                if (v31 != v37 || v33 != v39)
                {
                  v50 = v34;
                  v51 = v41;
                  v52 = sub_24F92CE08();
                  v41 = v51;
                  v34 = v50;
                  if ((v52 & 1) == 0)
                  {
                    goto LABEL_85;
                  }
                }
              }

              else if (v39)
              {
                goto LABEL_85;
              }

              if (v34)
              {
                if (!v41 || (v69 != v40 || v34 != v41) && (sub_24F92CE08() & 1) == 0)
                {
                  goto LABEL_85;
                }
              }

              else if (v41)
              {
                goto LABEL_85;
              }

              v28 += 8;
              v27 += 8;
            }

            while (--v26);
          }

          if (v81 != v74 || v82 != v75)
          {
            goto LABEL_85;
          }

          v53 = v83;
          v54 = v76;
          sub_24E7726D0(v70);
          sub_24E7726D0(v77);
          if (v53 != v54)
          {
            goto LABEL_86;
          }

          v20 = v68 + 1;
          v11 = v65;
          v8 = v64;
          if (v68 + 1 == v59)
          {

            v3 = v57;
            v2 = v58;
            v5 = v55;
            v4 = v56;
            break;
          }
        }
      }

      if (++v3 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }
}

uint64_t sub_24EA17DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_24E772674(v3, v8);
        sub_24E772674(v4, v7);
        v5 = _s12GameStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(v8, v7);
        sub_24E7726D0(v7);
        sub_24E7726D0(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24EA17F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_24E60169C(v3, v10, &qword_27F235830, &qword_24F93B8C0);
    sub_24E60169C(i, &v12, &qword_27F235830, &qword_24F93B8C0);
    if (v11)
    {
      break;
    }

    if (*(&v13 + 1))
    {
      goto LABEL_14;
    }

    sub_24E601704(v10, &qword_27F235830, &qword_24F93B8C0);
LABEL_5:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_24E60169C(v10, v9, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v13 + 1))
  {
    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x253052150](v9, v7);
    sub_24E6585F8(v7);
    sub_24E6585F8(v9);
    sub_24E601704(v10, &qword_27F235830, &qword_24F93B8C0);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_24E6585F8(v9);
LABEL_14:
  sub_24E601704(v10, &qword_27F21B438, &unk_24F95FB00);
  return 0;
}

uint64_t sub_24EA180E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_24EA1F004(v32, v33, v34);
    v26 = sub_24F92AFF8();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA18360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_24EA1EF3C(v18, v15, a4);
        sub_24EA1EF3C(v19, v11, a4);
        v21 = a5(v15, v11);
        sub_24EA1EFA4(v11, a4);
        sub_24EA1EFA4(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24EA18510(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_24E69A5C4(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x253052270](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x253052270](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_24F92C408();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_24F92C408();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_24F92C738();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_24F92C738();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_24EA187CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 32);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    v14 = _s12GameStoreKit0A23ActivityDraftPlayerInfoV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_24E627A14(v27, v16);
    sub_24E627A14(v31, v16);
    sub_24E627A70(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_24E627A70(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_24EA18914(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18A08(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18AF0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18BEC(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18D60(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18E84(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA18F7C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19098(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA191C0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19318(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1947C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA195A8(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA196D0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19828(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1995C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19A60(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19B94(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19CA4(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19E1C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA19F6C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A07C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A1D0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A32C(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A470(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A5A0(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A6CC(uint64_t a1, unsigned __int8 a2)
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1A818(uint64_t a1)
{
  sub_24F92B218();
}

unint64_t sub_24EA1A93C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EA1EEF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24EA1A96C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000061696465;
  v4 = 0x4D746375646F7270;
  v5 = 0x800000024FA432A0;
  v6 = 1701736302;
  if (v2 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v4 = 0x6365537961646F74;
    v3 = 0xEC0000006E6F6974;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000024FA43220;
  v8 = 0x800000024FA43250;
  v9 = 0xD000000000000018;
  if (v2 == 1)
  {
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = 0x800000024FA43270;
  }

  if (*v1)
  {
    v7 = v8;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t Shelf.ContentsMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v92 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  MEMORY[0x28223BE20](v4);
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v84 - v8;
  MEMORY[0x28223BE20](v9);
  v87 = &v84 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v85 = &v84 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v84 - v33;
  v93 = a1;
  sub_24F928398();
  sub_24EA1BFC8();
  sub_24F928208();
  v35 = v11;
  v94 = *(v12 + 8);
  v94(v34, v11);
  if (v98 <= 2u)
  {
    v44 = v29;
    v45 = v20;
    v47 = v90;
    v46 = v91;
    if (v98)
    {
      if (v98 == 1)
      {
        v48 = v44;
        v49 = v93;
        (*(v12 + 16))(v44, v93, v11);
        sub_24F928398();
        v50 = sub_24F928258();
        v52 = v51;
        (*(v97 + 8))(v95, v96);
        v53 = v94;
        v94(v49, v11);
        v53(v26, v11);
        result = (v53)(v48, v11);
        if (v52)
        {
          v58 = 1;
        }

        else
        {
          v58 = v50;
        }

        v59 = 0x40000000;
      }

      else
      {
        v73 = v93;
        (*(v12 + 16))(v23, v93, v11);
        v74 = v45;
        sub_24F928398();
        v75 = sub_24F928258();
        v77 = v76;
        (*(v97 + 8))(v95, v96);
        v78 = v11;
        v79 = v94;
        v94(v73, v78);
        v79(v74, v35);
        result = (v79)(v23, v35);
        if (v77)
        {
          v58 = 1;
        }

        else
        {
          v58 = v75;
        }

        v59 = 1610612736;
      }
    }

    else
    {
      v67 = v93;
      (*(v12 + 16))(v90, v93, v11);
      v68 = v46;
      sub_24F928398();
      v69 = sub_24F928258();
      v71 = v70;
      (*(v97 + 8))(v95, v96);
      v72 = v94;
      v94(v67, v11);
      v72(v68, v11);
      result = (v72)(v47, v11);
      if (v71)
      {
        v58 = 1;
      }

      else
      {
        v58 = v69;
      }

      v59 = 0x80000000;
    }
  }

  else if (v98 > 4u)
  {
    v60 = v93;
    if (v98 == 5)
    {
      v61 = v85;
      (*(v12 + 16))(v85, v93, v11);
      v63 = v96;
      v62 = v97;
      v64 = v87;
      v65 = v95;
      (*(v97 + 16))(v87, v95, v96);
      v66 = v104;
      ProductReviewsMetadata.init(deserializing:using:)(v61, v64, &v98);
      if (v66)
      {
        (*(v62 + 8))(v65, v63);
        return (v94)(v60, v35);
      }

      (*(v62 + 8))(v65, v63);
      result = (v94)(v60, v35);
      v58 = v98;
      v54 = v99;
      v59 = 0x20000000;
      *&v55 = v100;
    }

    else
    {
      (*(v97 + 8))(v95, v96);
      result = (v94)(v60, v11);
      v58 = 0;
      v54 = 0;
      v55 = 0uLL;
      v59 = 3221225472;
      v56 = 0uLL;
      v57 = 0uLL;
    }
  }

  else
  {
    v36 = v93;
    if (v98 == 3)
    {
      v37 = v86;
      (*(v12 + 16))(v86, v93, v11);
      v39 = v96;
      v38 = v97;
      v40 = v88;
      v41 = v95;
      (*(v97 + 16))(v88, v95, v96);
      v42 = v104;
      ProductMediaMetadata.init(deserializing:using:)(v37, v40, &v98);
      if (v42)
      {
        (*(v38 + 8))(v41, v39);
        return (v94)(v36, v11);
      }

      (*(v38 + 8))(v41, v39);
      result = (v94)(v36, v11);
      v58 = v98;
      v54 = v99;
      v55 = v100;
      v56 = v101;
      v57 = v103;
      v59 = v102 & 0xFFFFFFFF00000101;
    }

    else
    {
      (*(v12 + 16))(v34, v93, v11);
      v81 = v96;
      v80 = v97;
      v82 = v95;
      (*(v97 + 16))(v89, v95, v96);
      sub_24EA1C01C();
      sub_24F929548();
      (*(v80 + 8))(v82, v81);
      result = (v94)(v36, v11);
      v58 = v98;
      if (v98 == 1)
      {
        v58 = 0;
        v54 = 0;
        v55 = 0uLL;
        v59 = 3221225472;
        v56 = 0uLL;
        v57 = 0uLL;
      }

      else
      {
        v54 = v99;
        v59 = 2684354560;
      }
    }
  }

  v83 = v92;
  *v92 = v58;
  v83[1] = v54;
  *(v83 + 1) = v55;
  *(v83 + 2) = v56;
  v83[6] = v59;
  *(v83 + 7) = v57;
  return result;
}

uint64_t ProductReviewsMetadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_24F928398();
  v12 = sub_24F928278();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v24 = v12 & 1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v13(v8, v5);
  if (v16)
  {
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v23, v17);
    result = (v13)(a1, v5);
    *a3 = v24;
    *(a3 + 8) = v14;
    *(a3 + 16) = v16;
  }

  else
  {
    v19 = sub_24F92AC38();
    sub_24EA1F004(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v20 = 0xD000000000000012;
    v20[1] = 0x800000024FA41E50;
    v20[2] = &type metadata for ProductReviewsMetadata;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    v21 = sub_24F9285B8();
    (*(*(v21 - 8) + 8))(v23, v21);
    return (v13)(a1, v5);
  }

  return result;
}

void ProductMediaMetadata.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a2;
  v75 = a3;
  v83 = sub_24F9285B8();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v66 - v7;
  v9 = sub_24F928388();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v66 - v12;
  MEMORY[0x28223BE20](v13);
  v76 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v72 = &v66 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v20);
  v77 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  type metadata accessor for MediaPlatform();
  v82 = a1;
  sub_24F928398();
  v28 = *(v4 + 16);
  v28(v8, v84, v83);
  v29 = v79;
  v30 = MediaPlatform.__allocating_init(deserializing:using:)(v27, v8);
  if (v29)
  {
    (*(v4 + 8))(v84, v83);
    (*(v80 + 8))(v82, v81);
    return;
  }

  v68 = 0;
  v70 = v19;
  v71 = v4;
  v79 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225260, &qword_24F974FF0);
  sub_24F928398();
  v28(v78, v84, v83);
  sub_24EA1C42C();
  v69 = v24;
  sub_24F929548();
  if (v86)
  {
    v31 = v86;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = 0x800000024FA4DCE0;
  v33 = v77;
  sub_24F928398();
  v78 = sub_24F928348();
  v35 = v34;
  v36 = v81;
  v37 = *(v80 + 8);
  v37(v33, v81);
  if (v35)
  {
    v77 = v35;
    v80 = v31;
    v32 = 0x800000024FA4DD00;
    v38 = 0xD000000000000017;
    v39 = v70;
    sub_24F928398();
    v40 = sub_24F928348();
    v42 = v41;
    v37(v39, v36);
    v70 = v42;
    if (v42)
    {
      v67 = v40;
      v43 = v69;
      sub_24F928398();
      sub_24EA1C4E0();
      sub_24F928208();
      v37(v43, v36);
      LODWORD(v69) = v85;
      v44 = v72;
      sub_24F928398();
      v45 = sub_24F928278();
      v37(v44, v36);
      LODWORD(v72) = v45 & 1;
      type metadata accessor for Action(0);
      v46 = v76;
      sub_24F928398();
      v47 = v46;
      v48 = v84;
      v49 = v68;
      v50 = static Action.makeInstance(byDeserializing:using:)(v47, v84);
      if (v49)
      {

        v68 = 0;
      }

      else
      {
        v68 = v50;
      }

      v54 = v73;
      v37(v76, v36);
      sub_24F928398();
      v55 = static Action.makeInstance(byDeserializing:using:)(v54, v48);
      v56 = v74;
      v37(v54, v36);
      v57 = v56;
      v58 = v37;
      v59 = v82;
      sub_24F928398();
      v60 = sub_24F9282C8();
      (*(v71 + 8))(v84, v83);
      v58(v59, v36);
      v58(v57, v36);
      v61 = *&v60;
      v62 = v80;
      v63 = v75;
      *v75 = v79;
      v63[1] = v62;
      if ((v60 & 0x100000000) != 0)
      {
        v61 = 1.0;
      }

      v64 = v77;
      v63[2] = v78;
      v63[3] = v64;
      v65 = v70;
      v63[4] = v67;
      v63[5] = v65;
      *(v63 + 48) = v69;
      *(v63 + 49) = v72;
      *(v63 + 13) = v61;
      v63[7] = v68;
      v63[8] = v55;
      return;
    }

    v51 = v36;
    v35 = v77;
  }

  else
  {
    v51 = v36;
    v38 = 0xD000000000000013;
  }

  v52 = sub_24F92AC38();
  sub_24EA1F004(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v53 = v38;
  v53[1] = v32;
  v53[2] = &type metadata for ProductMediaMetadata;
  (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
  swift_willThrow();
  (*(v71 + 8))(v84, v83);
  v37(v82, v51);

  if (v35)
  {
  }
}

uint64_t sub_24EA1BE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928258();
  v12 = v11;
  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = *(v7 + 8);
  v14(a1, v6);
  result = (v14)(v9, v6);
  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  *a3 = v16;
  return result;
}

unint64_t sub_24EA1BFC8()
{
  result = qword_27F225250;
  if (!qword_27F225250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225250);
  }

  return result;
}

unint64_t sub_24EA1C01C()
{
  result = qword_27F225258;
  if (!qword_27F225258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225258);
  }

  return result;
}

uint64_t static ProductMediaMetadata.== infix(_:_:)(float *a1, float *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = *(a1 + 49);
  v5 = a1[13];
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 49);
  v9 = a2[13];
  if ((sub_24F0CD880(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v7 + 56);
  if (*(v3 + 56))
  {
    if (!*(v7 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 48) != *(v7 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  sub_24EA16378(v2, v6);
  return v12 & ~(v4 ^ v8) & (v5 == v9);
}

uint64_t static ProductReviewsMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t Shelf.ContentsMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v12 = *(v1 + 64);
  v5 = *(v11 + 1) | ((*(v11 + 5) | (BYTE7(v11[0]) << 16)) << 32);
  v6 = v4 >> 29;
  if (v4 >> 29 <= 2)
  {
    if (!v6)
    {
      MEMORY[0x253052A00](1);
      return ProductMediaMetadata.hash(into:)(a1);
    }

    if (v6 != 1)
    {
      v7 = LOBYTE(v11[0]) | (v5 << 8);
      v8 = 3;
LABEL_16:
      MEMORY[0x253052A00](v8);
      return MEMORY[0x253052A00](v7);
    }

    MEMORY[0x253052A00](2);
    sub_24F92D088();

    return sub_24F92B218();
  }

  else
  {
    if (v4 >> 29 <= 4)
    {
      v7 = LOBYTE(v11[0]) | (v5 << 8);
      if (v6 == 3)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      goto LABEL_16;
    }

    if (v6 == 5)
    {
      MEMORY[0x253052A00](6);
      sub_24F92D088();
      if (LOBYTE(v11[0]) | (v5 << 8))
      {
        v10 = *&v11[0];
        sub_24F92C418();
        sub_24EA1E790(v11);
      }

      sub_24F92B218();
    }

    else
    {
      return MEMORY[0x253052A00](0);
    }
  }
}

unint64_t sub_24EA1C42C()
{
  result = qword_27F225268;
  if (!qword_27F225268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225260, &qword_24F974FF0);
    sub_24EA1F004(&qword_27F225270, type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225268);
  }

  return result;
}

unint64_t sub_24EA1C4E0()
{
  result = qword_27F225278;
  if (!qword_27F225278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225278);
  }

  return result;
}

uint64_t ProductMediaMetadata.platformDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductMediaMetadata.allPlatformsDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProductMediaMetadata.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24F92B218();

  if ((*(v4 + 56) & 1) == 0)
  {
    if ((*(v4 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x253052A30](v5);
  }

  sub_24EA1D90C(a1, v3);
  sub_24F92D088();
  return sub_24F92D098();
}

uint64_t sub_24EA1C754(uint64_t (*a1)(void *))
{
  sub_24F92D068();
  a1(v3);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24F92D068();
  a3(v5);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24F92D068();
  a4(v6);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C874(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 49);
  v4 = *(a1 + 52);
  v5 = *(a2 + 8);
  v6 = *(a2 + 49);
  v7 = *(a2 + 52);
  if ((_s12GameStoreKit13MediaPlatformC2eeoiySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_24EA16378(v2, v5);
  return v8 & ~(v3 ^ v6) & (v4 == v7);
}

uint64_t ProductReviewsMetadata.reviewSummaryTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProductReviewsMetadata.hash(into:)(uint64_t a1)
{
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t ProductReviewsMetadata.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1C9F8()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1CA5C(uint64_t a1)
{
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t sub_24EA1CAB0()
{
  sub_24F92D068();
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EA1CB10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t TodaySectionDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = JSONObject.appStoreColor.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  *a3 = v10;
  sub_24F928398();
  sub_24EA1E7C0();
  sub_24F928208();
  v12 = sub_24F9285B8();
  (*(*(v12 - 8) + 8))(a2, v12);
  v11(a1, v6);
  result = (v11)(v9, v6);
  *(a3 + 8) = v15;
  return result;
}

id TodaySectionDisplayOptions.debugSectionTypeIndicatorColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

GameStoreKit::TodaySectionDisplayOptions::GroupDisplayStyle_optional __swiftcall TodaySectionDisplayOptions.GroupDisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodaySectionDisplayOptions.GroupDisplayStyle.rawValue.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768040;
  }
}

uint64_t sub_24EA1CE70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1869768040;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684632167;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768040;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EA1CF58()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1CFEC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA1D06C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA1D108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768040;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TodaySectionDisplayOptions.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_24F92D088();
    v3 = v2;
    sub_24F92C418();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
}

uint64_t TodaySectionDisplayOptions.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    v2 = v1;
    sub_24F92C418();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA1D308()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_24F92D068();
  TodaySectionDisplayOptions.hash(into:)(v3);
  return sub_24F92D0B8();
}

uint64_t sub_24EA1D360()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_24F92D068();
  TodaySectionDisplayOptions.hash(into:)(v3);
  return sub_24F92D0B8();
}

void sub_24EA1D3B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v29 - v7;
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  if (a2 >> 62)
  {
    v28 = sub_24F92C738();
    MEMORY[0x253052A00](v28);
    v15 = sub_24F92C738();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x253052A00](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), v12);
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v4;
    v18 = a2 & 0xC000000000000001;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v36 = (v17 + 48);
    v37 = (v9 + 48);
    v29 = (v17 + 8);
    v30 = (v17 + 32);
    v38 = v8;
    v39 = a2;
    v33 = v3;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x253052270](v16, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v16 + 32);
      }

      sub_24F92B218();
      if (*(v20 + 40))
      {
        sub_24F92D088();
        sub_24F92B218();
        if (!*(v20 + 56))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24F92D088();
        if (!*(v20 + 56))
        {
LABEL_14:
          sub_24F92D088();
          goto LABEL_15;
        }
      }

      sub_24F92D088();
      sub_24F92B218();
LABEL_15:
      a2 = v39;
      sub_24F92D088();
      sub_24E60169C(v20 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v14, &qword_27F228530, &unk_24F93C6E0);
      v21 = v38;
      if ((*v37)(v14, 1, v38) == 1)
      {
        sub_24F92D088();
      }

      else
      {
        v22 = v18;
        v23 = v15;
        v24 = a2;
        v25 = v34;
        (*v32)(v34, v14, v21);
        sub_24F92D088();
        sub_24EA1F004(&qword_27F2252E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_24F92AEF8();
        v26 = v25;
        a2 = v24;
        v15 = v23;
        v18 = v22;
        v3 = v33;
        (*v31)(v26, v21);
      }

      v27 = v40;
      sub_24E60169C(v20 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, v40, &unk_27F22EC30, &qword_24F939880);
      if ((*v36)(v27, 1, v3) == 1)
      {
        sub_24F92D088();
      }

      else
      {
        v19 = v35;
        (*v30)(v35, v27, v3);
        sub_24F92D088();
        sub_24EA1F004(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_24F92AEF8();

        (*v29)(v19, v3);
      }

      if (v15 == ++v16)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_24EA1D90C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v10 = sub_24F92C738();
    MEMORY[0x253052A00](v10);
    v3 = sub_24F92C738();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x253052A00](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
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
      v5 = MEMORY[0x253052270](i, a2);
      sub_24F92B218();

      if ((*(v5 + 56) & 1) == 0)
      {
        if ((*(v5 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = *(v5 + 48);
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x253052A30](v6);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7;

      sub_24F92B218();

      if ((*(v8 + 56) & 1) == 0)
      {
        if ((*(v8 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = *(v8 + 48);
        }

        else
        {
          v9 = 0;
        }

        MEMORY[0x253052A30](v9);
      }

      ++v7;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_24EA1DBB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253052A00](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {

      sub_24F92B218();

      sub_24F92B218();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24EA1DCB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253052A00](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      if (*(v5 - 8))
      {
        sub_24F92D088();

        sub_24F92B218();
      }

      else
      {
        sub_24F92D088();
      }

      sub_24F92B218();
      if (v6)
      {
        sub_24F92D088();
        sub_24F92B218();
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_24F92D088();
        if (!v7)
        {
LABEL_12:
          sub_24F92D088();
          goto LABEL_4;
        }
      }

      sub_24F92D088();
      sub_24F92B218();
LABEL_4:

      v5 += 64;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24EA1DE28(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253052A00](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      sub_24E772674(v6, v7);
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();

      sub_24EDC9948(a1, v7[8]);
      sub_24EA1DCB8(a1, v7[7]);
      sub_24F92D088();
      sub_24F92D088();
      sub_24F92D088();
      result = sub_24E7726D0(v7);
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24EA1DF78(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253052A00](v4);
  if (v4)
  {
    v6 = 0;
    v11 = a2 + 32;
    do
    {
      v7 = v11 + 24 * v6;
      v8 = *(v7 + 16);
      if (*(v7 + 8))
      {
        sub_24F92D088();

        sub_24F92B218();
      }

      else
      {
        sub_24F92D088();
      }

      MEMORY[0x253052A00](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 32;
        do
        {
          sub_24E772674(v10, v12);
          sub_24F92B218();
          sub_24F92B218();
          sub_24F92B218();
          sub_24F92B218();

          sub_24EDC9948(a1, v12[8]);
          sub_24EA1DCB8(a1, v12[7]);
          sub_24F92D088();
          sub_24F92D088();
          sub_24F92D088();
          sub_24E7726D0(v12);
          v10 += 136;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t _s12GameStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
      v6 = v4;
      v7 = v2;
      v8 = sub_24F92C408();

      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  if (v4)
  {
    goto LABEL_24;
  }

LABEL_4:
  v9 = 0xE400000000000000;
  v10 = 1684632167;
  if (v3 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1869768040;
  }

  if (v3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1684632167;
  if (v5 != 1)
  {
    v14 = 0x647261646E617473;
    v13 = 0xE800000000000000;
  }

  if (v5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1869768040;
  }

  if (v5)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  return v17 & 1;
}

uint64_t _s12GameStoreKit5ShelfC16ContentsMetadataO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v44 = a1[2];
  v45 = v3;
  v4 = a1[1];
  *v43 = *a1;
  *&v43[16] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v6;
  v7 = *(a2 + 16);
  *v47 = *a2;
  *&v47[16] = v7;
  v8 = a1[3];
  v51[2] = v44;
  v51[3] = v8;
  v51[0] = *v43;
  v51[1] = v2;
  v54 = v5;
  v55 = v48;
  v56 = *(a2 + 48);
  v46 = *(a1 + 8);
  v50 = *(a2 + 64);
  v9 = *(a2 + 64);
  v52 = *(a1 + 8);
  v57 = v9;
  v53 = *v47;
  v10 = *&v43[1] | ((*&v43[5] | (v43[7] << 16)) << 32);
  v11 = WORD1(v45) >> 13;
  v12 = *&v43[8];
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        if ((v49 & 0xE0000000) != 0x40000000)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if ((v49 & 0xE0000000) != 0x20000000)
      {

        goto LABEL_30;
      }

      if ((v43[0] ^ v47[0]))
      {
        sub_24EA1F04C(v47, v40);
        v13 = v43;
LABEL_31:
        sub_24EA1F04C(v13, v40);
LABEL_32:
        sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
LABEL_33:
        v14 = 0;
        return v14 & 1;
      }

      if (*&v43[8] == *&v47[8])
      {
        sub_24EA1F04C(v47, v40);
        sub_24EA1F04C(v43, v40);
        goto LABEL_37;
      }

      v32 = sub_24F92CE08();
      sub_24EA1F04C(v47, v40);
      sub_24EA1F04C(v43, v40);
      sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_47:
      v14 = 1;
      return v14 & 1;
    }

    if ((WORD1(v49) & 0xE000) != 0)
    {
      v25 = a1[2];
      v41 = a1[3];
      v26 = *(a1 + 8);
      v27 = *a1;
      v40[1] = a1[1];
      v40[2] = v25;
      v40[0] = v27;
      v42 = v26;
      *&v41 = v41 & 0xFFFFFFFF1FFFFFFFLL;
      sub_24E60169C(v40, &v33, &qword_27F225300, &qword_24F9758A0);
      goto LABEL_30;
    }

    v15 = BYTE1(v45);
    v16 = *(&v45 + 1);
    v17 = *(&v49 + 1);
    v18 = BYTE1(v49);
    v19 = *v47;
    v20 = v43[0] | (v10 << 8);
    v21 = *(v20 + 0x10);
    v22 = *(*v47 + 16);
    sub_24EA1F04C(v47, v40);
    sub_24EA1F04C(v43, v40);
    sub_24EA1F04C(v47, v40);
    sub_24EA1F04C(v43, v40);
    if (sub_24F0CD880(v21, v22))
    {
      if (*(v20 + 56))
      {
        if ((*(v19 + 56) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else if ((*(v19 + 56) & 1) != 0 || *(v20 + 48) != *(v19 + 48))
      {
        goto LABEL_43;
      }

      sub_24EA16378(v12, *(&v19 + 1));
      v31 = v30;
      sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
      if (v31 & 1) == 0 || ((v15 ^ v18))
      {
        sub_24EA1E790(v47);
        sub_24EA1E790(v43);
        goto LABEL_33;
      }

      sub_24EA1E790(v43);
      sub_24EA1E790(v47);
      if (v16 != v17)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }

LABEL_43:
    sub_24EA1E790(v47);
    sub_24EA1E790(v43);
    goto LABEL_32;
  }

  if (WORD1(v45) >> 13 <= 4u)
  {
    if (v11 == 3)
    {
      if ((v49 & 0xE0000000) != 0x60000000)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if ((v49 & 0xE0000000) == 0x80000000)
    {
LABEL_22:
      v23 = v43[0] | (v10 << 8);
      sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
      v14 = v23 == *v47;
      return v14 & 1;
    }

LABEL_30:
    v13 = v47;
    goto LABEL_31;
  }

  if (v11 != 5)
  {
    if ((v49 & 0xE0000000) != 0xC0000000)
    {
      goto LABEL_30;
    }

    if (v49 != 3221225472)
    {
      goto LABEL_30;
    }

    v24 = vorrq_s8(*&v47[16], v48);
    if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *(&v49 + 1) | v50 | *&v47[8] | *v47)
    {
      goto LABEL_30;
    }

LABEL_37:
    sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
    v14 = 1;
    return v14 & 1;
  }

  if ((v49 & 0xE0000000) != 0xA0000000)
  {
    v28 = *v43;
    goto LABEL_30;
  }

  v33 = v43[0];
  v34 = *&v43[1];
  v36 = (*&v43[1] | ((*&v43[5] | (v43[7] << 16)) << 32)) >> 48;
  v35 = *&v43[5];
  v37 = v43[8];
  v38 = *v47;
  v39 = v47[8];
  sub_24EA1F04C(v47, v40);
  sub_24EA1F04C(v43, v40);
  sub_24EA1F04C(v47, v40);
  sub_24EA1F04C(v43, v40);
  v14 = _s12GameStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(&v33, &v38);
  sub_24E601704(v51, &qword_27F2252F8, &qword_24F975898);
  sub_24EA1E790(v47);
  sub_24EA1E790(v43);
  return v14 & 1;
}

unint64_t sub_24EA1E7C0()
{
  result = qword_27F225280;
  if (!qword_27F225280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225280);
  }

  return result;
}

unint64_t sub_24EA1E818()
{
  result = qword_27F225288;
  if (!qword_27F225288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225288);
  }

  return result;
}