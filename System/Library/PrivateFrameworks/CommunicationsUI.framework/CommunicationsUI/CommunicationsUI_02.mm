uint64_t sub_1C2CA2CF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C2DD2198(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2DE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1C2E765F4();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D9F0, &unk_1C2E7A870);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2EE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2DD1FA0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2FD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2DD2400(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA3118(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA325C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C2DD27F8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA3350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts, &protocol conformance descriptor for CallTranscripts);
  sub_1C2E71A64();

  *a2 = *(v3 + 80);
  return result;
}

id sub_1C2CA3448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1C2CA34C4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C2E764E4();
LABEL_9:
  result = sub_1C2E765F4();
  *v2 = result;
  return result;
}

uint64_t sub_1C2CA3564(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2E764E4();
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
      result = sub_1C2E764E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2C94F38(&qword_1EC05DA28, &qword_1EC05DA20, &qword_1C2E7A8D8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA20, &qword_1C2E7A8D8);
            v9 = sub_1C2DEA81C(v13, i, a3);
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
        sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
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

void sub_1C2CA3718()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C2E766F4();
  __break(1u);
}

uint64_t type metadata accessor for CallTranslationViewController(uint64_t a1)
{
  result = qword_1EC05D900;
  if (!qword_1EC05D900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2CA383C(uint64_t a1)
{
  sub_1C2CA3944(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C2CA3944(uint64_t a1)
{
  if (!qword_1EC05D910)
  {
    sub_1C2C6E1B4(255, &qword_1EC05D8C0, 0x1E69DC7F8);
    type metadata accessor for CallTranscripts(255);
    v1 = sub_1C2E76014();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05D910);
    }
  }
}

id sub_1C2CA39BC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2CA3A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00, &qword_1C2E89C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CA3A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00, &qword_1C2E89C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CA3AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2CA112C(a1, v4, v5, v6);
}

uint64_t (*sub_1C2CA3BB0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1C2CA3AF4;
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1C2CA3C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CUIMaterial.Platter.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA3DBC()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

void *static CUIMaterial.allCases.getter()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4B94(0, 4, 0);
  v0 = v10;
  v2 = *(v10 + 16);
  v1 = *(v10 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1C2CA4B94((v1 > 1), v2 + 1, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1C2CA4B94((v1 > 1), v2 + 2, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1C2CA4B94((v1 > 1), v2 + 3, 1);
  }

  v7 = v10;
  *(v10 + 16) = v6;
  *(v10 + v5 + 32) = 2;
  v8 = *(v10 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    sub_1C2CA4B94((v8 > 1), v2 + 4, 1);
    v7 = v10;
  }

  *(v7 + 16) = v2 + 4;
  *(v7 + v6 + 32) = 3;
  sub_1C2CA2C04(v7);
  return &unk_1F42972F0;
}

uint64_t CUIMaterial.swiftUIMaterial.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        sub_1C2CA4C08();
      }

      else
      {
        sub_1C2CA4BB4();
      }
    }

    else if (*v0)
    {
      sub_1C2CA4C5C();
    }

    else
    {
      sub_1C2CA4CB0();
    }

    return sub_1C2E756C4();
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {

      return sub_1C2E75644();
    }

    else
    {

      return sub_1C2E75604();
    }
  }

  else if (v1 == 6)
  {

    return sub_1C2E75634();
  }

  else if (v1 == 7)
  {

    return sub_1C2E75614();
  }

  else
  {

    return MEMORY[0x1EEDE4C50]();
  }
}

uint64_t CUIMaterial.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  return MEMORY[0x1C6927290](v2);
}

uint64_t CUIMaterial.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA4198()
{
  v1 = *v0;
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  return MEMORY[0x1C6927290](v2);
}

uint64_t sub_1C2CA41E0()
{
  v1 = *v0;
  sub_1C2E76854();
  v2 = v1 - 4;
  if ((v1 - 4) >= 5)
  {
    MEMORY[0x1C6927290](5);
    v2 = v1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2CA4240()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0, &unk_1C2E7AF50);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8, &qword_1C2E8B610);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7A110;
  sub_1C2E75654();
  if (qword_1EC05BA20 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC075780;
  v6[3] = unk_1EC075790;
  v6[4] = xmmword_1EC0757A0;
  v6[0] = xmmword_1EC075760;
  v6[1] = *algn_1EC075770;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA44FC()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0, &unk_1C2E7AF50);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  v6[0] = xmmword_1C2E7A930;
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8, &qword_1C2E8B610);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = v6[0];
  if (qword_1EC05BA48 != -1)
  {
    swift_once();
  }

  v6[3] = xmmword_1EC075870;
  v6[4] = unk_1EC075880;
  v6[5] = xmmword_1EC075890;
  v6[1] = xmmword_1EC075850;
  v6[2] = unk_1EC075860;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA47A0()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0, &unk_1C2E7AF50);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8, &qword_1C2E8B610);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7A110;
  sub_1C2E75654();
  if (qword_1EC05BA30 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC0757D0;
  v6[3] = unk_1EC0757E0;
  v6[4] = xmmword_1EC0757F0;
  v6[0] = xmmword_1EC0757B0;
  v6[1] = unk_1EC0757C0;
  sub_1C2E75664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

double sub_1C2CA4A54()
{
  xmmword_1EC075800 = xmmword_1C2E7A940;
  *algn_1EC075810 = xmmword_1C2E7A950;
  xmmword_1EC075820 = xmmword_1C2E7A960;
  unk_1EC075830 = xmmword_1C2E7A970;
  result = 0.0;
  xmmword_1EC075840 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4A94()
{
  xmmword_1EC075760 = xmmword_1C2E7A990;
  *algn_1EC075770 = xmmword_1C2E7A9A0;
  xmmword_1EC075780 = xmmword_1C2E7A9B0;
  unk_1EC075790 = xmmword_1C2E7A9C0;
  result = 0.0;
  xmmword_1EC0757A0 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4AD4()
{
  xmmword_1EC075850 = xmmword_1C2E7A9D0;
  unk_1EC075860 = xmmword_1C2E7A9E0;
  xmmword_1EC075870 = xmmword_1C2E7A9F0;
  unk_1EC075880 = xmmword_1C2E7AA00;
  result = 0.0;
  xmmword_1EC075890 = xmmword_1C2E7A980;
  return result;
}

double sub_1C2CA4B14()
{
  xmmword_1EC0757B0 = xmmword_1C2E7AA10;
  unk_1EC0757C0 = xmmword_1C2E7AA20;
  xmmword_1EC0757D0 = xmmword_1C2E7AA30;
  unk_1EC0757E0 = xmmword_1C2E7AA40;
  result = 0.0;
  xmmword_1EC0757F0 = xmmword_1C2E7A980;
  return result;
}

char *sub_1C2CA4B54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA4F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4B74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4B94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA5134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C2CA4BB4()
{
  result = qword_1EC05BE20;
  if (!qword_1EC05BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE20);
  }

  return result;
}

unint64_t sub_1C2CA4C08()
{
  result = qword_1EC05BFD0;
  if (!qword_1EC05BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFD0);
  }

  return result;
}

unint64_t sub_1C2CA4C5C()
{
  result = qword_1EC05BD48;
  if (!qword_1EC05BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD48);
  }

  return result;
}

unint64_t sub_1C2CA4CB0()
{
  result = qword_1EC05BE40;
  if (!qword_1EC05BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE40);
  }

  return result;
}

void *sub_1C2CA4D04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA56BC(a1, a2, a3, *v3, &qword_1EC05DB80, &unk_1C2E7B000, &qword_1EC05DA20, &qword_1C2E7A8D8);
  *v3 = result;
  return result;
}

void *sub_1C2CA4D44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA524C(a1, a2, a3, *v3, &qword_1EC05DB00, &qword_1C2E7AF70, &qword_1EC05DB08, &qword_1C2E7AF78);
  *v3 = result;
  return result;
}

void *sub_1C2CA4D84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA5380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2CA4DA4(void *a1, int64_t a2, char a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DAF0, &qword_1C2E7AF60, MEMORY[0x1EEE85500]);
  *v3 = result;
  return result;
}

char *sub_1C2CA4DDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA54B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4DFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA55B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2CA4E1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA56BC(a1, a2, a3, *v3, &qword_1EC05DB48, &unk_1C2E8B460, &qword_1EC05DB50, &unk_1C2E7AFC0);
  *v3 = result;
  return result;
}

void *sub_1C2CA4E5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA57F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2CA4E7C(void *a1, int64_t a2, char a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DAF8, &qword_1C2E7AF68, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
  *v3 = result;
  return result;
}

char *sub_1C2CA4EC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA5A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4EE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2CA5B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2CA4F00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB90, &qword_1C2E7B018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5024(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB68, &unk_1C2E7AFE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5134(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB88, &qword_1C2E7B010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1C2CA524C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C2CA5380(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB20, &qword_1C2E7AF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB28, &qword_1C2E7AF98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA54B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB70, &unk_1C2E7AFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C2CA55B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D530, &qword_1C2E79998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C2CA56BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C2CA57F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB38, &qword_1C2E7AFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40, &unk_1C2E7AFB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5924(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB58, &qword_1C2E7AFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5A44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CA0, &qword_1C2E88290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2CA5B50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB30, &qword_1C2E7AFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL _s16CommunicationsUI11CUIMaterialO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 == 5)
    {
      return v3 == 5;
    }
  }

  else
  {
    switch(v2)
    {
      case 6u:
        return v3 == 6;
      case 7u:
        return v3 == 7;
      case 8u:
        return v3 == 8;
    }
  }

  if ((v3 - 4) < 5)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1C2CA5CF0()
{
  result = qword_1EC05DAC0;
  if (!qword_1EC05DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DAC8, &qword_1C2E7AA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAC0);
  }

  return result;
}

unint64_t sub_1C2CA5D58()
{
  result = qword_1EC05DAD0;
  if (!qword_1EC05DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAD0);
  }

  return result;
}

unint64_t sub_1C2CA5DB0()
{
  result = qword_1EC05DAD8;
  if (!qword_1EC05DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05DAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIMaterial(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUIMaterial(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C2CA5F5C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C2CA5F70(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIMaterial.Platter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIMaterial.Platter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2CA6124()
{
  result = qword_1EC05BE10;
  if (!qword_1EC05BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE10);
  }

  return result;
}

unint64_t sub_1C2CA617C()
{
  result = qword_1EC05BFC0;
  if (!qword_1EC05BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFC0);
  }

  return result;
}

unint64_t sub_1C2CA61D4()
{
  result = qword_1EC05BD38;
  if (!qword_1EC05BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD38);
  }

  return result;
}

unint64_t sub_1C2CA622C()
{
  result = qword_1EC05BE28;
  if (!qword_1EC05BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE28);
  }

  return result;
}

unint64_t sub_1C2CA6284()
{
  result = qword_1EC05BE30;
  if (!qword_1EC05BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE30);
  }

  return result;
}

unint64_t sub_1C2CA62DC()
{
  result = qword_1EC05BD40;
  if (!qword_1EC05BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD40);
  }

  return result;
}

unint64_t sub_1C2CA6334()
{
  result = qword_1EC05BFC8;
  if (!qword_1EC05BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BFC8);
  }

  return result;
}

unint64_t sub_1C2CA638C()
{
  result = qword_1EC05BE18;
  if (!qword_1EC05BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE18);
  }

  return result;
}

uint64_t sub_1C2CA63E0()
{
  v0 = sub_1C2E74EC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0, &unk_1C2E7AF50);
  sub_1C2E756B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE8, &qword_1C2E8B610);
  sub_1C2E75694();
  *(swift_allocObject() + 16) = xmmword_1C2E7AA50;
  sub_1C2E75684();
  if (qword_1EC05BA38 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EC075820;
  v6[3] = unk_1EC075830;
  v6[4] = xmmword_1EC075840;
  v6[0] = xmmword_1EC075800;
  v6[1] = *algn_1EC075810;
  sub_1C2E75664();
  sub_1C2E75674();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v4;
}

uint64_t sub_1C2CA66D0(void *a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  v4 = sub_1C2E71934();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted) = 0;
  v6 = (v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted) = 0;
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables) = MEMORY[0x1E69E7CC0];
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service);
  if (qword_1EC05CF18 != -1)
  {
    swift_once();
  }

  if (!qword_1EC05DB98)
  {
    goto LABEL_7;
  }

  v7 = qword_1EC05DB98;
  v8 = sub_1C2E75C24();
  v9 = [v7 objectForKey_];

  if (!v9)
  {

    memset(v13, 0, sizeof(v13));
    sub_1C2C73644(v13, &unk_1EC0645B0, &qword_1C2E7B0F8);
LABEL_7:
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale) = 0;
    goto LABEL_8;
  }

  sub_1C2E76444();
  swift_unknownObjectRelease();
  sub_1C2C73644(v13, &unk_1EC0645B0, &qword_1C2E7B0F8);
  v10 = sub_1C2E75C24();
  v11 = [v7 BOOLForKey_];

  *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale) = v11;
LABEL_8:
  sub_1C2CA6C24(*(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale));
  sub_1C2CA6D80();
  sub_1C2CA77A4(MEMORY[0x1E6995F70], sub_1C2CAB584);
  sub_1C2CA77A4(MEMORY[0x1E6995F78], sub_1C2CAB050);
  sub_1C2CA7D5C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1C2CA69D0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2CA6AD4(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1C2CF74E0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CA6C24(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A84();

  v2 = v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  sub_1C2E72584();
  swift_endAccess();
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA6D80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0, &unk_1C2E81390);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC30, &qword_1C2E7B1C8);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC38, &qword_1C2E7B1D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v50 = v1;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  v18 = v17;
  sub_1C2E71A64();

  v19 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  v47 = v19;
  sub_1C2C6E3A4(v1 + v19, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_1C2E72554();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40, &qword_1C2E7B1D8);
  v40[0] = *(*(v20 - 8) + 48);
  v21 = (v40[0])(v10, 1, v20);
  v42 = v13;
  if (v21 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_1C2C73644(v10, &qword_1EC05DC38, &qword_1C2E7B1D0);
    v22 = sub_1C2E71934();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  else
  {
    v23 = *(v20 + 48);
    v24 = sub_1C2E71934();
    v25 = v18;
    v26 = *(v24 - 8);
    (*(v26 + 32))(v16, v10, v24);
    (*(v26 + 56))(v16, 0, 1, v24);
    (*(v26 + 8))(&v10[v23], v24);
    v18 = v25;
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_1C2CA8788(v16, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale, &unk_1C2E7B218, sub_1C2CAB48C);
  swift_getKeyPath();
  v49 = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v47, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v27 = v41;
  sub_1C2E72554();
  if ((v40[0])(v27, 1, v20) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_1C2C73644(v27, &qword_1EC05DC38, &qword_1C2E7B1D0);
    v28 = sub_1C2E71934();
    v29 = v42;
    (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  }

  else
  {
    v30 = *(v20 + 48);
    v31 = sub_1C2E71934();
    v32 = *(v31 - 8);
    v33 = v27 + v30;
    v29 = v42;
    (*(v32 + 32))(v42, v33, v31);
    (*(v32 + 56))(v29, 0, 1, v31);
    (*(v32 + 8))(v27, v31);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_1C2CA8788(v29, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, &unk_1C2E7B1E8, sub_1C2CAB420);
  swift_getKeyPath();
  v51[0] = v1;
  v40[1] = v18;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v47, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v49 = sub_1C2E72594();
  v34 = [objc_opt_self() mainRunLoop];
  v48 = v34;
  v35 = sub_1C2E763E4();
  v36 = v43;
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC48, &qword_1C2E7B1E0);
  sub_1C2CAB004();
  sub_1C2C94F38(&qword_1EC05BAE8, &qword_1EC05DC48, &qword_1C2E7B1E0, MEMORY[0x1E695BED8]);
  sub_1C2CAB444(&qword_1EC05D110, sub_1C2CAB004, MEMORY[0x1E696A010]);
  v37 = v44;
  sub_1C2E72ED4();
  sub_1C2C73644(v36, &qword_1EC0625C0, &unk_1C2E81390);

  __swift_destroy_boxed_opaque_existential_1(v51);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05DC50, &qword_1EC05DC30, &qword_1C2E7B1C8, MEMORY[0x1E695BE98]);
  v38 = v46;
  sub_1C2E72F14();

  (*(v45 + 8))(v37, v38);
  swift_getKeyPath();
  v51[0] = v1;
  sub_1C2E71A64();

  v51[0] = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28, &qword_1C2E7B1C0);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28, &qword_1C2E7B1C0, MEMORY[0x1E69E6348]);
  sub_1C2E72DA4();
  swift_endAccess();

  v51[0] = v1;
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA77A4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v26 = a2;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0, &unk_1C2E81390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00, &unk_1C2E7B180);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC08, &qword_1C2E813A0);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  swift_getKeyPath();
  v23[0] = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v28[0] = v2;
  v23[1] = sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v16 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v4 + v16, v28);
  v18 = v29;
  v17 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v27 = a1(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10, &qword_1C2E7B190);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10, &qword_1C2E7B190, MEMORY[0x1E695BED8]);
  sub_1C2E72F04();

  __swift_destroy_boxed_opaque_existential_1(v28);
  v19 = [objc_opt_self() mainRunLoop];
  v28[0] = v19;
  v20 = sub_1C2E763E4();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_1C2CAB004();
  sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00, &unk_1C2E7B180, MEMORY[0x1E695BD38]);
  sub_1C2CAB444(&qword_1EC05D110, sub_1C2CAB004, MEMORY[0x1E696A010]);
  sub_1C2E72ED4();
  sub_1C2C73644(v7, &qword_1EC0625C0, &unk_1C2E81390);

  (*(v9 + 8))(v11, v8);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05DC20, &qword_1EC05DC08, &qword_1C2E813A0, MEMORY[0x1E695BE98]);
  v21 = v24;
  sub_1C2E72F14();

  (*(v25 + 8))(v15, v21);
  swift_getKeyPath();
  v28[0] = v4;
  sub_1C2E71A64();

  v28[0] = v4;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28, &qword_1C2E7B1C0);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28, &qword_1C2E7B1C0, MEMORY[0x1E69E6348]);
  sub_1C2E72DA4();
  swift_endAccess();

  v28[0] = v4;
  swift_getKeyPath();
  sub_1C2E71A74();
}

uint64_t sub_1C2CA7D5C()
{
  v1 = v0;
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C2E75C14();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v7;
  swift_getKeyPath();
  v37[0] = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v8 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v0 + v8, v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = sub_1C2E724C4() & 1;
  if (v9 == *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted))
  {
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v9;
    v36 = v1;
    sub_1C2E71A54();
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_getKeyPath();
  v37[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v8, v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v11 = sub_1C2E72514() & 1;
  v12 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted;
  if (v11 == *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted))
  {
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted) = v11;
  }

  else
  {
    v13 = swift_getKeyPath();
    v31 = v8;
    MEMORY[0x1EEE9AC00](v13);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v11;
    v36 = v1;
    sub_1C2E71A54();

    v8 = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_getKeyPath();
  v37[0] = v1;
  sub_1C2E71A64();

  if (*(v1 + v12) == 1)
  {
    swift_getKeyPath();
    v37[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v8, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_1C2E724C4();
    __swift_destroy_boxed_opaque_existential_1(v37);
    v14 = v34;
    sub_1C2E75BB4();
    (*(v4 + 16))(v32, v14, v35);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v25 = sub_1C2E75C84();
    v27 = v26;
    (*(v4 + 8))(v14, v35);
    v28 = v25;
    v29 = v27;
  }

  else
  {
    sub_1C2CA6C24(*(v1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel_defaultShowingRemoteLocale));
    swift_getKeyPath();
    v37[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v8, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v16 = sub_1C2E724C4();
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (v16)
    {
      v17 = v34;
      sub_1C2E75BB4();
      v18 = v35;
      (*(v4 + 16))(v32, v17, v35);
      type metadata accessor for StringDummy();
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      v21 = sub_1C2E75C84();
      v23 = v22;
      (*(v4 + 8))(v17, v18);
      v29 = v23;
      v28 = v21;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }
  }

  return sub_1C2CAA1F8(v28, v29);
}

uint64_t sub_1C2CA84E0@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v6, a3, &qword_1EC05DBF8, &qword_1C2E84200);
}

uint64_t sub_1C2CA85B8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v7 = *a3;
  swift_beginAccess();
  return sub_1C2C736A4(v6 + v7, a4, &qword_1EC05DBF8, &qword_1C2E84200);
}

uint64_t sub_1C2CA8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1C2C736A4(a1, &v15 - v12, &qword_1EC05DBF8, &qword_1C2E84200);
  return sub_1C2CA8788(v13, a5, a6, a7);
}

uint64_t sub_1C2CA8788(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v4 + v10, v9, &qword_1EC05DBF8, &qword_1C2E84200);
  LOBYTE(a2) = sub_1C2CAB090(v9, a1);
  sub_1C2C73644(v9, &qword_1EC05DBF8, &qword_1C2E84200);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2CAB3B0(a1, v4 + v10);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05DBF8, &qword_1C2E84200);
}

uint64_t sub_1C2CA8970(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1C2CAB3B0(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1C2CA89D8()
{
  v1 = v0;
  v2 = sub_1C2E75C14();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  swift_getKeyPath();
  v37 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v17, v9, &qword_1EC05DBF8, &qword_1C2E84200);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C2C73644(v9, &qword_1EC05DBF8, &qword_1C2E84200);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_1C2E718F4();
    v19 = sub_1C2E72284();
    v21 = v20;
    v33 = *(v11 + 8);
    v33(v13, v10);
    if (v21)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v23 = 0xE000000000000000;
    if (v21)
    {
      v23 = v21;
    }

    v31 = v23;
    v32 = v22;
    sub_1C2E75BB4();
    v24 = v35;
    v25 = v36;
    (*(v35 + 16))(v34, v6, v36);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    sub_1C2E75C84();
    (*(v24 + 8))(v6, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C2E7A930;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C2CAB500();
    v29 = v31;
    *(v28 + 32) = v32;
    *(v28 + 40) = v29;
    v30 = sub_1C2E75C74();

    v33(v16, v10);
    return v30;
  }
}

uint64_t sub_1C2CA8E60()
{
  v1 = v0;
  v2 = sub_1C2E75C14();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = sub_1C2E71934();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v48 - v18;
  swift_getKeyPath();
  v60 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v19 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v19, v11, &qword_1EC05DBF8, &qword_1C2E84200);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    v21 = v11;
LABEL_5:
    sub_1C2C73644(v21, &qword_1EC05DBF8, &qword_1C2E84200);
    return 0;
  }

  v51 = v13;
  v50 = *(v13 + 32);
  v50(v58, v11, v12);
  swift_getKeyPath();
  v59 = v1;
  sub_1C2E71A64();

  v22 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v22, v8, &qword_1EC05DBF8, &qword_1C2E84200);
  if (v20(v8, 1, v12) == 1)
  {
    (*(v51 + 8))(v58, v12);
    v21 = v8;
    goto LABEL_5;
  }

  v50(v57, v8, v12);
  v24 = v52;
  sub_1C2E718F4();
  v25 = sub_1C2E72284();
  v27 = v26;
  v28 = *(v51 + 8);
  v28(v24, v12);
  if (v27)
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v50 = v30;
  v51 = v29;
  sub_1C2E718F4();
  v31 = sub_1C2E72284();
  v33 = v32;
  v28(v24, v12);
  if (v33)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v48 = v35;
  v49 = v34;
  v36 = v54;
  sub_1C2E75BB4();
  v38 = v55;
  v37 = v56;
  (*(v55 + 16))(v53, v36, v56);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  sub_1C2E75C84();
  (*(v38 + 8))(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C2E7A110;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1C2CAB500();
  v44 = v50;
  *(v41 + 32) = v51;
  *(v41 + 40) = v44;
  *(v41 + 96) = v42;
  *(v41 + 104) = v43;
  v45 = v48;
  v46 = v49;
  *(v41 + 64) = v43;
  *(v41 + 72) = v46;
  *(v41 + 80) = v45;
  v47 = sub_1C2E75C74();

  v28(v57, v12);
  v28(v58, v12);
  return v47;
}

uint64_t sub_1C2CA9488()
{
  v1 = sub_1C2E75C14();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  swift_getKeyPath();
  v41 = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v17 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale;
  swift_beginAccess();
  sub_1C2C736A4(v0 + v17, v9, &qword_1EC05DBF8, &qword_1C2E84200);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C2C73644(v9, &qword_1EC05DBF8, &qword_1C2E84200);
    sub_1C2E75BB4();
    v19 = v39;
    v18 = v40;
    (*(v39 + 16))(v3, v6, v40);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v22 = sub_1C2E75C84();
    (*(v19 + 8))(v6, v18);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    sub_1C2E718F4();
    v23 = sub_1C2E72284();
    v25 = v24;
    v38 = *(v11 + 8);
    v38(v13, v10);
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    if (v25)
    {
      v27 = v25;
    }

    v36 = v27;
    v37 = v26;
    sub_1C2E75BB4();
    v28 = v39;
    v29 = v40;
    (*(v39 + 16))(v3, v6, v40);
    type metadata accessor for StringDummy();
    v30 = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    sub_1C2E75C84();
    (*(v28 + 8))(v6, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C2E7A930;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C2CAB500();
    v33 = v36;
    *(v32 + 32) = v37;
    *(v32 + 40) = v33;
    v22 = sub_1C2E75C74();

    v38(v16, v10);
  }

  return v22;
}

uint64_t sub_1C2CA99E0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  return sub_1C2C6E3A4(v5 + v3, a1);
}

uint64_t sub_1C2CA9AA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC38, &qword_1C2E7B1D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C2C736A4(a1, v8, &qword_1EC05DC38, &qword_1C2E7B1D0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40, &qword_1C2E7B1D8);
    if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
    {
      sub_1C2C73644(v8, &qword_1EC05DC38, &qword_1C2E7B1D0);
      v16 = sub_1C2E71934();
      (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    }

    else
    {
      v17 = *(v15 + 48);
      v18 = sub_1C2E71934();
      v19 = *(v18 - 8);
      (*(v19 + 32))(v14, &v8[v17], v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      (*(v19 + 8))(v8, v18);
    }

    sub_1C2CA8788(v14, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, &unk_1C2E7B1E8, sub_1C2CAB420);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C736A4(a1, v5, &qword_1EC05DC38, &qword_1C2E7B1D0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40, &qword_1C2E7B1D8);
    if ((*(*(v21 - 8) + 48))(v5, 1, v21) == 1)
    {
      sub_1C2C73644(v5, &qword_1EC05DC38, &qword_1C2E7B1D0);
      v22 = sub_1C2E71934();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    }

    else
    {
      v23 = *(v21 + 48);
      v24 = sub_1C2E71934();
      v25 = *(v24 - 8);
      (*(v25 + 32))(v11, v5, v24);
      (*(v25 + 56))(v11, 0, 1, v24);
      (*(v25 + 8))(&v5[v23], v24);
    }

    sub_1C2CA8788(v11, &OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale, &unk_1C2E7B218, sub_1C2CAB48C);
  }

  return result;
}

uint64_t sub_1C2CA9F78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2CA7D5C();
  }

  return result;
}

uint64_t sub_1C2CAA044()
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);

  return v1;
}

uint64_t sub_1C2CAA100@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  a2[1] = v4;
}

uint64_t sub_1C2CAA1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CAA1F8(v1, v2);
}

uint64_t sub_1C2CAA1F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  v6 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C2E767A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
    sub_1C2E71A54();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C2CAA374()
{
  v1 = v0;
  swift_getKeyPath();
  v6[0] = v0;
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(v0 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = sub_1C2E72514();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v3 & 1) == 0)
  {
    swift_getKeyPath();
    v6[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v2, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1C2E724D4();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  swift_getKeyPath();
  v6[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1C2E724C4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v4)
  {
    swift_getKeyPath();
    v6[0] = v1;
    sub_1C2E71A64();

    sub_1C2C6E3A4(v1 + v2, v6);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1C2E725A4();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  swift_getKeyPath();
  v6[0] = v1;
  sub_1C2E71A64();

  sub_1C2C6E3A4(v1 + v2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1C2E725B4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return sub_1C2CA6C24(1);
}

uint64_t sub_1C2CAA628(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  return *(v2 + *a2);
}

uint64_t sub_1C2CAA6DC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1C2CAA7DC(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_1C2CAA848()
{
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CAA908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CAB444(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel, &unk_1C2E7B0A8);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2CAA9D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C2CAAA40()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C2E75C24();
  v2 = [v0 initWithSuiteName_];

  qword_1EC05DB98 = v2;
}

uint64_t sub_1C2CAAAB0()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__localLocale, &qword_1EC05DBF8, &qword_1C2E84200);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__remoteLocale, &qword_1EC05DBF8, &qword_1C2E84200);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service));

  v1 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallTranslationFooterViewModel(uint64_t a1)
{
  result = qword_1EC05DBE8;
  if (!qword_1EC05DBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2CAAC1C(uint64_t a1)
{
  sub_1C2CAAD14(319);
  if (v1 <= 0x3F)
  {
    sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C2CAAD14(uint64_t a1)
{
  if (!qword_1EC05CA28)
  {
    sub_1C2E71934();
    v1 = sub_1C2E76424();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CA28);
    }
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1C2CAAFB8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_1C2CAB004()
{
  result = qword_1EC05D100;
  if (!qword_1EC05D100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05D100);
  }

  return result;
}

uint64_t sub_1C2CAB090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71934();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC58, &qword_1C2E7B210);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1C2C736A4(a1, &v21 - v12, &qword_1EC05DBF8, &qword_1C2E84200);
  sub_1C2C736A4(a2, &v13[v15], &qword_1EC05DBF8, &qword_1C2E84200);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C2C736A4(v13, v10, &qword_1EC05DBF8, &qword_1C2E84200);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C2CAB444(&qword_1EC05DC60, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v13, &qword_1EC05DBF8, &qword_1C2E84200);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v13, &qword_1EC05DC58, &qword_1C2E7B210);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v13, &qword_1EC05DBF8, &qword_1C2E84200);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2CAB3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8, &qword_1C2E84200);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CAB444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1C2CAB500()
{
  result = qword_1EC05CAC0;
  if (!qword_1EC05CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CAC0);
  }

  return result;
}

uint64_t static SupplementaryControlViewConfiguration.default(arrangement:)(uint64_t a1, uint64_t a2)
{
  sub_1C2C6E3A4(a1, v11);
  sub_1C2C6E3A4(a2, v12 + 8);
  v10[0] = v12[0];
  v10[1] = v12[1];
  v10[2] = v12[2];
  v9[0] = v11[0];
  v9[1] = v11[1];
  type metadata accessor for SupplementaryControlViewConfiguration();
  v3 = swift_allocObject();
  sub_1C2C716EC(v9, v7);
  sub_1C2C716EC((v10 + 8), v8 + 8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v5[0] = v7[0];
  v5[1] = v7[1];
  sub_1C2C716EC(v5, v3 + 16);
  sub_1C2C716EC((v6 + 8), v3 + 56);
  *(v3 + 96) = xmmword_1C2E7B250;
  *(v3 + 112) = vdupq_n_s64(0x4049000000000000uLL);
  *(v3 + 128) = 0x4049000000000000;
  return v3;
}

uint64_t IconButton.init(config:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IconButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v69 = a2;
  v5 = *(a1 + 16);
  type metadata accessor for IconButton.IconView(255, v5, a3, a4);
  swift_getWitnessTable();
  *&v103 = sub_1C2E751F4();
  *(&v103 + 1) = type metadata accessor for IconButton.ButtonStyle(255, v5, v6, v7);
  *&v104 = swift_getWitnessTable();
  *(&v104 + 1) = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  type metadata accessor for IconButton.LabelView(255, v5, v8, v9);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v10 = sub_1C2E73F54();
  WitnessTable = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v65 = MEMORY[0x1E697F968];
  v11 = swift_getWitnessTable();
  v56[1] = type metadata accessor for IconButton.Container(255, v5, v10, v11);
  v12 = sub_1C2E73654();
  v59 = sub_1C2E73654();
  v58 = sub_1C2E73F54();
  v61 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v70 = v56 - v13;
  v63 = sub_1C2E73654();
  v62 = sub_1C2E73F54();
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = v56 - v14;
  v15 = sub_1C2E73654();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v60 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = v56 - v18;
  v19 = *v4;
  v20 = v4[1];
  v21 = v4[2];
  v22 = *v4 + *(**v4 + 128);
  v25 = type metadata accessor for IconButtonStyle(0, v5, v23, v24);
  v26 = *(v22 + *(v25 + 44));
  v27 = *(v22 + *(v25 + 60));
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v19;
  v28[4] = v20;
  v28[5] = v21;
  LOBYTE(v103) = v26;
  *(&v103 + 1) = v27;
  *&v104 = sub_1C2CACB18;
  *(&v104 + 1) = v28;

  sub_1C2C6EE50(v20, v21);
  sub_1C2E75744();
  v55 = swift_getWitnessTable();
  sub_1C2E74D24();

  v89 = v98;
  v90 = v99;
  v91 = v100;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v88 = v97;
  v83 = v92;
  v84 = v93;
  v29 = sub_1C2CB8AC0();
  v31 = v30;
  v81 = v55;
  v82 = MEMORY[0x1E697EBF8];

  v32 = swift_getWitnessTable();
  View.optionalAXID(_:)(v29, v31, v12, v32, v70);

  v109 = v89;
  v110 = v90;
  v111 = v91;
  v105 = v85;
  v106 = v86;
  v107 = v87;
  v108 = v88;
  v103 = v83;
  v104 = v84;
  (*(*(v12 - 8) + 8))(&v103, v12);
  v33 = sub_1C2CB8B34();
  v35 = v34;
  v36 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v79 = v32;
  v80 = v36;

  v77 = swift_getWitnessTable();
  v78 = v32;
  v37 = v58;
  v38 = swift_getWitnessTable();
  v39 = v57;
  v40 = v33;
  v41 = v70;
  View.optionalAXLabel(_:)(v40, v35, v37, v38, v57);

  (*(v61 + 8))(v41, v37);
  v42 = sub_1C2CB8C1C();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  *&v92 = v44;
  *(&v92 + 1) = v45;

  sub_1C2CB8C1C();
  v75 = v38;
  v76 = v36;
  v73 = swift_getWitnessTable();
  v74 = v38;
  v46 = v62;
  v47 = swift_getWitnessTable();
  sub_1C2C74960();
  v48 = v60;
  sub_1C2E74B44();

  (*(v68 + 8))(v39, v46);
  v71 = v47;
  v72 = v36;
  v49 = v67;
  swift_getWitnessTable();
  v50 = v66;
  v51 = *(v66 + 16);
  v52 = v64;
  v51(v64, v48, v49);
  v53 = *(v50 + 8);
  v53(v48, v49);
  v51(v69, v52, v49);
  return (v53)(v52, v49);
}

uint64_t sub_1C2CABF50@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v89 = a2;
  v98 = a5;
  v7 = type metadata accessor for IconButton.LabelView(255, a4, a3, a4);
  type metadata accessor for IconButton.IconView(255, a4, v8, v9);
  swift_getWitnessTable();
  v10 = sub_1C2E751F4();
  v13 = type metadata accessor for IconButton.ButtonStyle(255, a4, v11, v12);
  v114 = v10;
  v115 = v13;
  WitnessTable = swift_getWitnessTable();
  v116 = WitnessTable;
  v117 = swift_getWitnessTable();
  v15 = v117;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v16 = sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  v87 = v16;
  v17 = sub_1C2E73654();
  sub_1C2E74384();
  v92 = v17;
  v18 = sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v19 = sub_1C2E75844();
  v84 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v83 - v20;
  v21 = v7;
  swift_getTupleTypeMetadata2();
  v22 = sub_1C2E75844();
  v86 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v83 - v23;
  v88 = v18;
  v91 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v83 - v28;
  v96 = v29;
  v97 = v19;
  v95 = sub_1C2E73F54();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v83 - v30;
  type metadata accessor for IconButtonStyle(0, a4, v31, v32);
  swift_retain_n();
  LODWORD(v7) = sub_1C2E744C4();
  if (v7 == sub_1C2E744C4())
  {
  }

  else
  {
    v35 = sub_1C2E744C4();
    v36 = sub_1C2E744C4();

    if (v35 != v36)
    {
      v114 = a1;
      v86 = swift_getWitnessTable();
      (*(*(v21 - 8) + 16))(&v113, &v114, v21);

      v114 = a1;
      v115 = v89;
      v116 = v90;
      v60 = type metadata accessor for IconButton(0, a4, v58, v59);
      sub_1C2CACB24(v60, v26);
      v114 = v10;
      v115 = v13;
      v116 = WitnessTable;
      v117 = v15;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v62 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
      v112[5] = OpaqueTypeConformance2;
      v112[6] = v62;
      v63 = swift_getWitnessTable();
      v64 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
      v112[3] = v63;
      v112[4] = v64;
      v65 = swift_getWitnessTable();
      v66 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
      v112[1] = v65;
      v112[2] = v66;
      v67 = v88;
      v68 = swift_getWitnessTable();
      v69 = v91;
      v70 = *(v91 + 16);
      v71 = v99;
      v70(v99, v26, v67);
      v72 = *(v69 + 8);
      v72(v26, v67);
      v112[0] = v113;
      v114 = v112;
      v70(v26, v71, v67);
      v115 = v26;

      v110 = v21;
      v111 = v67;
      v108 = v86;
      v109 = v68;
      v73 = v83;
      sub_1C2C6EC40(&v114, 2uLL, &v110);
      v72(v26, v67);

      v74 = v96;
      v75 = swift_getWitnessTable();
      v76 = v97;
      v77 = swift_getWitnessTable();
      v57 = v93;
      sub_1C2C78970(v73, v74, v76, v75, v77);
      (*(v84 + 8))(v73, v76);
      v72(v99, v67);

      goto LABEL_6;
    }
  }

  v114 = a1;
  v115 = v89;
  v116 = v90;
  v37 = type metadata accessor for IconButton(0, a4, v33, v34);
  sub_1C2CACB24(v37, v26);
  v114 = v10;
  v115 = v13;
  v116 = WitnessTable;
  v117 = v15;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v104 = v38;
  v105 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
  v102 = v40;
  v103 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v100 = v42;
  v101 = v43;
  v44 = v88;
  v45 = swift_getWitnessTable();
  v46 = v91;
  v47 = *(v91 + 16);
  v48 = v99;
  v47(v99, v26, v44);
  v92 = *(v46 + 8);
  v92(v26, v44);
  v114 = a1;
  v49 = swift_getWitnessTable();
  (*(*(v21 - 8) + 16))(&v113, &v114, v21);

  v47(v26, v48, v44);
  v112[0] = v113;
  v114 = v26;
  v115 = v112;

  v110 = v44;
  v111 = v21;
  v108 = v45;
  v109 = v49;
  v50 = v85;
  sub_1C2C6EC40(&v114, 2uLL, &v110);

  v51 = v26;
  v52 = v92;
  v92(v51, v44);
  v53 = v96;
  v54 = swift_getWitnessTable();
  v55 = v97;
  v56 = swift_getWitnessTable();
  v57 = v93;
  sub_1C2C76E34(v50, v53, v55, v54, v56);
  (*(v86 + 8))(v50, v53);

  v52(v99, v44);
LABEL_6:
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v106 = v78;
  v107 = v79;
  v80 = v95;
  swift_getWitnessTable();
  v81 = v94;
  (*(v94 + 16))(v98, v57, v80);
  return (*(v81 + 8))(v57, v80);
}

uint64_t sub_1C2CACB24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v4 = sub_1C2E73D84();
  v100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v99 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = v77 - v7;
  v94 = sub_1C2E730D4();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v12 = type metadata accessor for IconButton.IconView(255, v9, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v87 = v12;
  v82 = WitnessTable;
  v14 = sub_1C2E751F4();
  v89 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = v77 - v15;
  v81 = v9;
  v18 = type metadata accessor for IconButton.ButtonStyle(255, v9, v16, v17);
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v111 = v14;
  v112 = v18;
  v77[1] = v18;
  v84 = v19;
  v113 = v19;
  v114 = v20;
  v79 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = v77 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v83 = OpaqueTypeMetadata2;
  v23 = sub_1C2E73654();
  v88 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v85 = v77 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  v25 = sub_1C2E73654();
  v90 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v103 = v77 - v26;
  sub_1C2E74384();
  v91 = v25;
  v27 = sub_1C2E73654();
  v97 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v104 = v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v95 = v77 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v96 = v77 - v32;
  v34 = *v2;
  v33 = v2[1];
  v35 = v2[2];
  v101 = v4;
  if (v33)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = v35;
    v37 = sub_1C2CB2CC0;
  }

  else
  {
    v38 = (v34 + *(*v34 + 152));
    v39 = *v38;
    v40 = v38[1];
    v36 = swift_allocObject();
    *(v36 + 16) = v39;
    *(v36 + 24) = v40;

    v37 = sub_1C2CB1B14;
  }

  v41 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v36;
  MEMORY[0x1EEE9AC00](v42);
  v77[-4] = v81;
  v77[-3] = v34;
  v77[-2] = v33;
  v77[-1] = v35;
  sub_1C2C6EE50(v33, v35);
  v43 = v86;
  sub_1C2E751C4();
  v111 = v34;

  v44 = swift_checkMetadataState();
  v45 = v78;
  v46 = v84;
  v47 = v79;
  sub_1C2E74984();

  (*(v89 + 8))(v43, v14);
  IconButtonConfig.enabled.getter();
  v111 = v14;
  v112 = v44;
  v113 = v46;
  v114 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v85;
  v50 = v83;
  sub_1C2E74DB4();
  (*(v80 + 8))(v45, v50);
  v51 = v93;
  v52 = v92;
  v53 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x1E697DBB8], v94);
  v54 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v109 = OpaqueTypeConformance2;
  v110 = v54;
  v55 = swift_getWitnessTable();
  sub_1C2E74994();
  (*(v51 + 8))(v52, v53);
  v56 = (*(v88 + 8))(v49, v23);
  v57 = IconButtonConfig.accessibilityIsToggle.getter(v56);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v59 = v98;
    sub_1C2E73D64();
    v60 = v101;
  }

  else
  {
    v111 = MEMORY[0x1E69E7CC0];
    sub_1C2C6E9FC(&qword_1EC05B5D8, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD20, &qword_1C2E7B7A0);
    sub_1C2C94F38(&unk_1EC05B270, &qword_1EC05DD20, &qword_1C2E7B7A0, MEMORY[0x1E69E6328]);
    v59 = v98;
    v60 = v101;
    sub_1C2E76464();
  }

  v61 = v100;
  v62 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
  v107 = v55;
  v108 = v62;
  v63 = v91;
  v64 = swift_getWitnessTable();
  v65 = v103;
  sub_1C2E74C84();
  v66 = *(v61 + 8);
  v66(v59, v60);
  v67 = (*(v90 + 8))(v65, v63);
  if (IconButtonConfig.accessibilityIsToggle.getter(v67))
  {
    v68 = v99;
    sub_1C2E73D74();
  }

  else
  {
    v111 = v58;
    sub_1C2C6E9FC(&qword_1EC05B5D8, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD20, &qword_1C2E7B7A0);
    sub_1C2C94F38(&unk_1EC05B270, &qword_1EC05DD20, &qword_1C2E7B7A0, MEMORY[0x1E69E6328]);
    v68 = v99;
    sub_1C2E76464();
  }

  v69 = v95;
  v70 = v104;
  sub_1C2E73644();
  v66(v68, v60);
  v71 = v97;
  v72 = *(v97 + 8);
  v72(v70, v27);
  v73 = sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v105 = v64;
  v106 = v73;
  swift_getWitnessTable();
  v74 = *(v71 + 16);
  v75 = v96;
  v74(v96, v69, v27);
  v72(v69, v27);
  v74(v102, v75, v27);
  return (v72)(v75, v27);
}

uint64_t sub_1C2CAD700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>, uint64_t a4@<X2>)
{
  v7 = type metadata accessor for IconButtonStyle(0, a2, a4, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v13 = type metadata accessor for IconButton.IconView(0, a2, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v21 = *(a1 + *(*a1 + 136));
  (*(v8 + 16))(v10, a1 + *(*a1 + 128), v7, v18);
  sub_1C2CAD944(v21, v10, v22, v23, v16);
  swift_getWitnessTable();
  v24 = *(v14 + 16);
  v24(v20, v16, v13);
  v25 = *(v14 + 8);

  v25(v16, v13);
  v24(a3, v20, v13);
  return (v25)(v20, v13);
}

uint64_t sub_1C2CAD944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = *a1;
  *a5 = a1;
  v8 = *(v7 + 80);
  v9 = *(type metadata accessor for IconButton.IconView(0, v8, a3, a4) + 28);
  v12 = type metadata accessor for IconButtonStyle(0, v8, v10, v11);
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v9], a2, v12);
}

uint64_t sub_1C2CAD9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v55 = a4;
  v56 = a2;
  v57 = a3;
  v58 = a7;
  v11 = a1;
  v12 = sub_1C2E75214();
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v52 - v16;
  v17 = a5;
  v18 = sub_1C2E752E4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - v23;
  v25 = sub_1C2E73F54();
  v60 = *(v25 - 8);
  v61 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v52 - v26;
  v27 = v11;
  v28 = sub_1C2E744C4();
  v29 = sub_1C2E744C4();
  if (v28 == v29 || (v30 = sub_1C2E744C4(), v29 = sub_1C2E744C4(), v30 == v29))
  {
    v54 = v12;
    MEMORY[0x1EEE9AC00](v29);
    v31 = v56;
    *(&v52 - 8) = v55;
    *(&v52 - 7) = v17;
    *(&v52 - 6) = a6;
    *(&v52 - 40) = v27;
    *(&v52 - 4) = a8;
    v32 = v57;
    *(&v52 - 3) = v31;
    *(&v52 - 2) = v32;
    sub_1C2E73DC4();
    sub_1C2E752D4();
    v33 = v54;
    WitnessTable = swift_getWitnessTable();
    v35 = *(v19 + 16);
    v35(v24, v21, v18);
    v36 = *(v19 + 8);
    v36(v21, v18);
    v35(v21, v24, v18);
    v37 = swift_getWitnessTable();
    v38 = v59;
    sub_1C2C76E34(v21, v18, v33, WitnessTable, v37);
    v36(v21, v18);
    v36(v24, v18);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v29);
    v39 = v56;
    *(&v52 - 8) = v55;
    *(&v52 - 7) = v17;
    *(&v52 - 6) = a6;
    *(&v52 - 40) = v27;
    *(&v52 - 4) = a8;
    v40 = v57;
    *(&v52 - 3) = v39;
    *(&v52 - 2) = v40;
    sub_1C2E73C24();
    sub_1C2E75204();
    v41 = swift_getWitnessTable();
    v42 = v53;
    v43 = v54;
    v44 = *(v53 + 16);
    v44(v54, v14, v12);
    v45 = *(v42 + 8);
    v45(v14, v12);
    v44(v14, v43, v12);
    v46 = swift_getWitnessTable();
    v38 = v59;
    sub_1C2C78970(v14, v18, v12, v46, v41);
    v45(v14, v12);
    v45(v43, v12);
  }

  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v62 = v47;
  v63 = v48;
  v49 = v61;
  swift_getWitnessTable();
  v50 = v60;
  (*(v60 + 16))(v58, v38, v49);
  return (*(v50 + 8))(v38, v49);
}

uint64_t sub_1C2CADF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v7, a2);
  v14 = *(v5 + 8);
  v14(v7, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

uint64_t sub_1C2CAE0F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC78, &qword_1C2E7B608);
  sub_1C2CB152C();
  return sub_1C2E74074();
}

uint64_t sub_1C2CAE170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v92 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA0, &unk_1C2E7B630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v77 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC98, &qword_1C2E7B628);
  MEMORY[0x1EEE9AC00](v81);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC90, &qword_1C2E7B620);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCC8, &qword_1C2E7B658);
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v77 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC88, &qword_1C2E7B618);
  MEMORY[0x1EEE9AC00](v79);
  v87 = &v77 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC80, &qword_1C2E7B610);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v77 - v16;
  v19 = type metadata accessor for IconButton.IconView(0, a2, v17, v18);
  sub_1C2CAEB7C(v19, v8);
  v20 = (a1 + *(v19 + 28));
  v21 = v20[5];
  v145 = v20[4];
  v146 = v21;
  v147 = v20[6];
  v22 = v20[1];
  v141 = *v20;
  v142 = v22;
  v23 = v20[3];
  v143 = v20[2];
  v144 = v23;
  v129 = v141;
  v130 = v22;
  v134 = v21;
  v135 = v147;
  v131 = v143;
  v132 = v23;
  v133 = v145;
  v24 = v19;
  v27 = type metadata accessor for IconButtonStyle.SystemSymbol(0, *(v19 + 16), v25, v26);
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v97 = v27;
  v93 = v29;
  v88 = v28 + 16;
  (v29)(v140, &v141);
  v139[5] = v134;
  v139[4] = v133;
  v139[6] = v135;
  v139[0] = v129;
  v139[1] = v130;
  v139[3] = v132;
  v139[2] = v131;
  v30 = v134;
  sub_1C2C6EE50(v134, *(&v134 + 1));
  v98 = a2;
  v33 = type metadata accessor for IconButtonStyle.SystemSymbol(0, a2, v31, v32);
  v34 = *(v33 - 8);
  v95 = *(v34 + 8);
  v96 = v33;
  v94 = v34 + 8;
  v95(v139);
  if (v30)
  {
    v35 = v91;
    StateHolder.state.getter(v91);
    v36 = (v30)(v35);
    sub_1C2C71668(v30, *(&v30 + 1));
    (*(v92 + 8))(v35, v98);
  }

  else
  {
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2CB1930(v8, v10);
  v38 = v81;
  v39 = &v10[*(v81 + 36)];
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = (a1 + *(v24 + 28));
  v41 = v40[5];
  v145 = v40[4];
  v146 = v41;
  v147 = v40[6];
  v42 = v40[1];
  v141 = *v40;
  v142 = v42;
  v43 = v40[3];
  v143 = v40[2];
  v144 = v43;
  v121 = v141;
  v122 = v42;
  v126 = v41;
  v127 = v147;
  v123 = v143;
  v124 = v43;
  v125 = v145;
  v93(v140, &v141, v97);
  v128[5] = v126;
  v128[6] = v127;
  v128[0] = v121;
  v128[1] = v122;
  v128[3] = v124;
  v128[4] = v125;
  v128[2] = v123;
  v44 = v127;
  sub_1C2C6EE50(v127, *(&v127 + 1));
  (v95)(v128, v96);
  if (v44)
  {
    v45 = v91;
    StateHolder.state.getter(v91);
    (v44)(v45);
    sub_1C2C71668(v44, *(&v44 + 1));
    (*(v92 + 8))(v45, v98);
  }

  v46 = sub_1C2CB17A0();
  v47 = v78;
  sub_1C2E74934();
  sub_1C2C73644(v10, &qword_1EC05DC98, &qword_1C2E7B628);
  sub_1C2E74594();
  *&v141 = v38;
  *(&v141 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v48 = v80;
  v49 = v83;
  sub_1C2E74934();
  (*(v82 + 8))(v47, v49);
  type metadata accessor for IconButtonStyle(0, v98, v50, v51);
  sub_1C2E75744();
  sub_1C2E73274();
  v52 = v87;
  (*(v84 + 32))(v87, v48, v85);
  v53 = (v52 + *(v79 + 36));
  v54 = v137;
  *v53 = v136;
  v53[1] = v54;
  v53[2] = v138;
  v55 = (a1 + *(v24 + 28));
  v56 = v55[5];
  v145 = v55[4];
  v146 = v56;
  v147 = v55[6];
  v57 = v55[1];
  v141 = *v55;
  v142 = v57;
  v58 = v55[3];
  v143 = v55[2];
  v144 = v58;
  v114 = v141;
  v115 = v57;
  v119 = v56;
  v120 = v147;
  v116 = v143;
  v117 = v58;
  v118 = v145;
  v77 = v24;
  v59 = v93;
  v93(v140, &v141, v97);
  v113[4] = v118;
  v113[5] = v119;
  v113[6] = v120;
  v113[0] = v114;
  v113[1] = v115;
  v113[2] = v116;
  v113[3] = v117;
  v60 = v115;

  (v95)(v113, v96);
  v61 = v91;
  StateHolder.state.getter(v91);
  v62 = v60(v61);

  v92 = *(v92 + 8);
  (v92)(v61, v98);
  v63 = v89;
  sub_1C2C71D5C(v52, v89, &qword_1EC05DC88, &qword_1C2E7B618);
  *(v63 + *(v86 + 36)) = v62;
  v64 = (a1 + *(v24 + 28));
  v65 = v64[5];
  v145 = v64[4];
  v146 = v65;
  v147 = v64[6];
  v66 = v64[1];
  v141 = *v64;
  v142 = v66;
  v67 = v64[3];
  v143 = v64[2];
  v144 = v67;
  v106 = v141;
  v107 = v66;
  v111 = v65;
  v112 = v147;
  v108 = v143;
  v109 = v67;
  v110 = v145;
  v59(v140, &v141, v97);
  v116 = v108;
  v117 = v109;
  v118 = v110;
  v119 = v111;
  v120 = v112;
  v114 = v106;
  v115 = v107;
  v68 = v108;

  (v95)(&v114, v96);
  StateHolder.state.getter(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC78, &qword_1C2E7B608);
  v69 = v98;
  v68(v61);

  v70 = v92;
  (v92)(v61, v69);
  v71 = (a1 + *(v77 + 28));
  v72 = v71[5];
  v145 = v71[4];
  v146 = v72;
  v147 = v71[6];
  v73 = v71[1];
  v141 = *v71;
  v142 = v73;
  v74 = v71[3];
  v143 = v71[2];
  v144 = v74;
  v99 = v141;
  v100 = v73;
  v104 = v72;
  v105 = v147;
  v101 = v143;
  v102 = v74;
  v103 = v145;
  v93(v140, &v141, v97);
  v145 = v103;
  v146 = v104;
  v147 = v105;
  v141 = v99;
  v142 = v100;
  v143 = v101;
  v144 = v102;
  v75 = v102;

  (v95)(&v141, v96);
  StateHolder.state.getter(v61);
  type metadata accessor for OptionalBackground(0);
  v75(v61);

  v70(v61, v69);
  return sub_1C2C71D5C(v89, v90, &qword_1EC05DC80, &qword_1C2E7B610);
}

uint64_t sub_1C2CAEB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCD0, &qword_1C2E7B690);
  MEMORY[0x1EEE9AC00](v57);
  v59 = (&v48 - v4);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8, &qword_1C2E89520);
  MEMORY[0x1EEE9AC00](v58);
  v52 = (&v48 - v5);
  v6 = *(a1 + 16);
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E750B4();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v54 = a1;
  v14 = v2;
  v15 = (v2 + *(a1 + 28));
  v16 = v15[5];
  v84 = v15[4];
  v85 = v16;
  v86 = v15[6];
  v17 = v15[1];
  v80 = *v15;
  v81 = v17;
  v18 = v15[3];
  v82 = v15[2];
  v83 = v18;
  v71 = v80;
  v72 = v17;
  v76 = v16;
  v77 = v86;
  v73 = v82;
  v74 = v18;
  v75 = v84;
  v63 = v6;
  v21 = type metadata accessor for IconButtonStyle.SystemSymbol(0, v6, v19, v20);
  v22 = *(v21 - 8);
  v53 = *(v22 + 16);
  v53(v79, &v80, v21);
  v78[4] = v75;
  v78[5] = v76;
  v78[6] = v77;
  v78[0] = v71;
  v78[1] = v72;
  v78[2] = v73;
  v78[3] = v74;
  v23 = v75;
  sub_1C2C6EE50(v75, *(&v75 + 1));
  v24 = *(v22 + 8);
  v24(v78, v21);
  if (v23)
  {
    v25 = *v2;
    v49 = v24;
    v50 = v25;
    v48 = v21;
    v26 = v55;
    StateHolder.state.getter(v55);
    v27 = v51;
    (v23)(v26);
    sub_1C2C71668(v23, *(&v23 + 1));
    v56 = *(v56 + 8);
    (v56)(v26, v63);
    (*(v61 + 32))(v13, v27, v62);
    v28 = (v14 + *(v54 + 28));
    v29 = v28[5];
    v84 = v28[4];
    v85 = v29;
    v86 = v28[6];
    v30 = v28[1];
    v80 = *v28;
    v81 = v30;
    v31 = v28[3];
    v82 = v28[2];
    v83 = v31;
    v64 = v80;
    v65 = v30;
    v69 = v29;
    v70 = v86;
    v66 = v82;
    v67 = v31;
    v68 = v84;
    v32 = v48;
    v53(v79, &v80, v48);
    v84 = v68;
    v85 = v69;
    v86 = v70;
    v80 = v64;
    v81 = v65;
    v82 = v66;
    v83 = v67;
    v33 = v64;

    v49(&v80, v32);
    StateHolder.state.getter(v26);
    v33(v26);

    (v56)(v26, v63);
    v34 = sub_1C2E75044();
    KeyPath = swift_getKeyPath();
    v36 = v52;
    v37 = (v52 + *(v58 + 36));
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0, &unk_1C2E7B640);
    v39 = v61;
    v40 = v62;
    (*(v61 + 16))(v37 + *(v38 + 28), v13, v62);
    *v37 = KeyPath;
    *v36 = v34;
    sub_1C2C736A4(v36, v59, &qword_1EC05DCA8, &qword_1C2E89520);
    swift_storeEnumTagMultiPayload();
    sub_1C2C76D5C();
    sub_1C2E73F44();
    sub_1C2C73644(v36, &qword_1EC05DCA8, &qword_1C2E89520);
    return (*(v39 + 8))(v13, v40);
  }

  else
  {
    v42 = (v2 + *(v54 + 28));
    v43 = v42[5];
    v84 = v42[4];
    v85 = v43;
    v86 = v42[6];
    v44 = v42[1];
    v80 = *v42;
    v81 = v44;
    v45 = v42[3];
    v82 = v42[2];
    v83 = v45;
    v64 = v80;
    v65 = v44;
    v69 = v43;
    v70 = v86;
    v66 = v82;
    v67 = v45;
    v68 = v84;
    v53(v79, &v80, v21);
    v84 = v68;
    v85 = v69;
    v86 = v70;
    v80 = v64;
    v81 = v65;
    v82 = v66;
    v83 = v67;
    v46 = v64;

    v24(&v80, v21);
    v47 = v55;
    StateHolder.state.getter(v55);
    v46(v47);

    (*(v56 + 8))(v47, v63);
    *v59 = sub_1C2E75044();
    swift_storeEnumTagMultiPayload();
    sub_1C2C76D5C();
    return sub_1C2E73F44();
  }
}

uint64_t sub_1C2CAF208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C2CB8C20();
  if (v7)
  {
    sub_1C2C74960();

    v8 = sub_1C2E748A4();
    v32 = v9;
    v33 = v8;
    v11 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    v15 = a1 + *(*a1 + 128);
    v18 = type metadata accessor for IconButtonStyle(0, a2, v16, v17);
    v19 = *(v15 + v18[10]);
    v20 = swift_getKeyPath();
    v21 = v11 & 1;
    v22 = *(v15 + v18[9]);
    v23 = swift_getKeyPath();
    v24 = (v15 + v18[14]);
    v31 = *v24;
    v25 = *(v24 + 16);

    v26 = v31;
    v27 = v13;
    v28 = v32;
    v29 = v33;
    v30 = 1;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
    KeyPath = 0;
    v20 = 0;
    v19 = 0;
    v23 = 0;
    v22 = 0;
    v25 = 0;
    v30 = 0;
    v21 = 0;
    v26 = 0uLL;
  }

  *a3 = v29;
  *(a3 + 8) = v28;
  *(a3 + 16) = v21;
  *(a3 + 24) = v27;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v30;
  *(a3 + 48) = v20;
  *(a3 + 56) = v19;
  *(a3 + 64) = v23;
  *(a3 + 72) = v22;
  *(a3 + 80) = v26;
  *(a3 + 96) = v25;
  return result;
}

uint64_t sub_1C2CAF3A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v4 = sub_1C2E73C54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E741B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E741C4();
  sub_1C2E73C44();
  sub_1C2C6E9FC(&qword_1EC05CB20, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
  sub_1C2C6E9FC(&qword_1EC05B600, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1C2E74954();
  v12 = v4;
  v13 = v28;
  (*(v5 + 8))(v7, v12);
  (*(v9 + 8))(v11, v8);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCD8, &qword_1C2E7B6C8) + 36)) = 256;
  v14 = 0.5;
  if (IconButtonConfig.enabled.getter())
  {
    if (sub_1C2E741D4())
    {
      v14 = 0.75;
    }

    else
    {
      v14 = 1.0;
    }
  }

  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCE0, &qword_1C2E7B6D0) + 36)) = v14;
  KeyPath = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCE8, &qword_1C2E7B708) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70, &qword_1C2E7BDE0) + 28);
  v18 = *MEMORY[0x1E697DBB8];
  v19 = sub_1C2E730D4();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v20 = sub_1C2E75744();
  v22 = v21;
  sub_1C2CAF79C(v13, v29, &v36);
  *(v35 + 9) = *(v40 + 9);
  v34 = v39;
  v35[0] = v40[0];
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v43 = v38;
  v44 = v39;
  v41 = v36;
  v42 = v37;
  v45 = v40[0];
  v46 = v35[1];
  *&v47 = v20;
  *(&v47 + 1) = v22;
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCF0, &qword_1C2E7B710) + 36));
  v24 = v46;
  v23[4] = v45;
  v23[5] = v24;
  v23[6] = v47;
  v25 = v42;
  *v23 = v41;
  v23[1] = v25;
  v26 = v44;
  v23[2] = v43;
  v23[3] = v26;
  v48[0] = v31;
  v48[1] = v32;
  v48[4] = v35[0];
  v48[5] = v35[1];
  v48[2] = v33;
  v48[3] = v34;
  v49 = v20;
  v50 = v22;
  sub_1C2C736A4(&v41, &v30, &qword_1EC05DCF8, &qword_1C2E7B718);
  return sub_1C2C73644(v48, &qword_1EC05DCF8, &qword_1C2E7B718);
}

uint64_t sub_1C2CAF79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E74EF4();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  v7 = a1 + *(*a1 + 128);
  v10 = *(v7 + *(type metadata accessor for IconButtonStyle(0, a2, v8, v9) + 52)) * 0.5;
  v11 = v10 * 0.5;
  v12 = v10 * -0.866025404;
  result = IconButtonConfig.hasBadge.getter();
  *(a3 + 10) = *v15;
  v14 = 0.0;
  if (result)
  {
    v14 = 0.85;
  }

  *a3 = v6;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v15[16];
  *(a3 + 42) = *&v15[32];
  *(a3 + 56) = *(&v18 + 1);
  *(a3 + 64) = v11;
  *(a3 + 72) = v12;
  *(a3 + 80) = v14;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_1C2CAF8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v56 = a3;
  swift_getWitnessTable();
  v4 = sub_1C2E74094();
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(a2 + 16);
  v49 = *(a2 + 24);
  v50 = &v46 - v8;
  v60 = sub_1C2E741F4();
  v9 = sub_1C2E73654();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v46 - v13;
  v14 = sub_1C2E76424();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C2E73F54();
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v46 - v24;
  (*(v15 + 16))(v17, v55, v14, v23);
  if ((*(v18 + 48))(v17, 1, v7) == 1)
  {
    (*(v15 + 8))(v17, v14);
    WitnessTable = swift_getWitnessTable();
    v26 = v53;
    v27 = *(v53 + 16);
    v28 = v50;
    v27(v50, v54, v4);
    v29 = v52;
    v27(v52, v28, v4);
    v30 = swift_getWitnessTable();
    v67 = WitnessTable;
    v68 = v30;
    v31 = swift_getWitnessTable();
    v32 = v57;
    sub_1C2C78970(v29, v9, v4, v31, WitnessTable);
    v33 = *(v26 + 8);
    v33(v29, v4);
    v33(v28, v4);
  }

  else
  {
    v47 = v18;
    v34 = *(v18 + 32);
    v46 = v21;
    v34(v21, v17, v7);
    v35 = swift_getWitnessTable();
    v55 = v35;
    sub_1C2E74A94();
    v36 = swift_getWitnessTable();
    v61 = v35;
    v62 = v36;
    v54 = swift_getWitnessTable();
    v37 = v51;
    v38 = *(v51 + 16);
    v39 = v48;
    v38(v48, v11, v9);
    v40 = *(v37 + 8);
    v40(v11, v9);
    v38(v11, v39, v9);
    v32 = v57;
    sub_1C2C76E34(v11, v9, v4, v54, v55);
    v40(v11, v9);
    v40(v39, v9);
    (*(v47 + 8))(v46, v7);
  }

  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v65 = v41;
  v66 = v42;
  v63 = swift_getWitnessTable();
  v64 = v41;
  v43 = v59;
  swift_getWitnessTable();
  v44 = v58;
  (*(v58 + 16))(v56, v32, v43);
  return (*(v44 + 8))(v32, v43);
}

uint64_t sub_1C2CAFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v53 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA8, &qword_1C2E7B908);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v42 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDC8, &qword_1C2E7B928);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDD0, &qword_1C2E7B930);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v42 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0, &qword_1C2E7B900);
  MEMORY[0x1EEE9AC00](v54);
  v46 = &v42 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDD8, &qword_1C2E7B938);
  v8 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_1C2E75364();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OptionalBackground(0);
  sub_1C2C736A4(a2 + *(v18 + 20), v13, &qword_1EC05DD28, &qword_1C2E7B7A8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = v48;
    v20 = v49;
    v21 = v50;
    sub_1C2C73644(v13, &qword_1EC05DD28, &qword_1C2E7B7A8);
    sub_1C2C736A4(a2, &v55, &qword_1EC05DDC0, &qword_1C2E7B920);
    if (v57)
    {
      sub_1C2C716EC(&v55, v58);
      v22 = __swift_project_boxed_opaque_existential_1(v58, v59);
      v23 = MEMORY[0x1EEE9AC00](v22);
      (*(v25 + 16))(&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
      v26 = sub_1C2E73284();
      v27 = sub_1C2E74454();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
      v29 = v44;
      (*(*(v28 - 8) + 16))(v44, v20, v28);
      v30 = v29 + *(v21 + 36);
      *v30 = v26;
      *(v30 + 8) = v27;
      sub_1C2C736A4(v29, v19, &qword_1EC05DDA8, &qword_1C2E7B908);
      swift_storeEnumTagMultiPayload();
      v31 = sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
      v32 = sub_1C2CB2AB4();
      *&v55 = v28;
      *(&v55 + 1) = MEMORY[0x1E69817E8];
      v56 = v31;
      v57 = v32;
      swift_getOpaqueTypeConformance2();
      sub_1C2CB2B08();
      v33 = v46;
      sub_1C2E73F44();
      sub_1C2C82810(v33, v51);
      swift_storeEnumTagMultiPayload();
      sub_1C2CB29A4();
      sub_1C2E73F44();
      sub_1C2C82880(v33);
      sub_1C2C73644(v29, &qword_1EC05DDA8, &qword_1C2E7B908);
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      sub_1C2C73644(&v55, &qword_1EC05DDC0, &qword_1C2E7B920);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
      (*(*(v41 - 8) + 16))(v51, v20, v41);
      swift_storeEnumTagMultiPayload();
      sub_1C2CB29A4();
      sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
      return sub_1C2E73F44();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
    v36 = sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    v37 = sub_1C2CB2AB4();
    v43 = v10;
    sub_1C2E749D4();
    v38 = v10;
    v39 = v47;
    (*(v8 + 16))(v48, v38, v47);
    swift_storeEnumTagMultiPayload();
    v58[0] = v35;
    v58[1] = MEMORY[0x1E69817E8];
    v58[2] = v36;
    v59 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1C2CB2B08();
    v40 = v46;
    sub_1C2E73F44();
    sub_1C2C82810(v40, v51);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB29A4();
    sub_1C2E73F44();
    sub_1C2C82880(v40);
    (*(v8 + 8))(v43, v39);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1C2CB07E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA8, &qword_1C2E7B908);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDB8, &qword_1C2E7B918);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1C2C736A4(a2, &v23, &qword_1EC05DDC0, &qword_1C2E7B920);
  if (v24)
  {
    sub_1C2C716EC(&v23, v25);
    v12 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v22[1] = a3;
    v13 = MEMORY[0x1EEE9AC00](v12);
    (*(v15 + 16))(v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v16 = sub_1C2E73284();
    v17 = sub_1C2E74454();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
    (*(*(v18 - 8) + 16))(v8, a1, v18);
    v19 = &v8[*(v6 + 36)];
    *v19 = v16;
    v19[8] = v17;
    sub_1C2C736A4(v8, v11, &qword_1EC05DDA8, &qword_1C2E7B908);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    sub_1C2E73F44();
    sub_1C2C73644(v8, &qword_1EC05DDA8, &qword_1C2E7B908);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1C2C73644(&v23, &qword_1EC05DDC0, &qword_1C2E7B920);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
    (*(*(v21 - 8) + 16))(v11, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    return sub_1C2E73F44();
  }
}

uint64_t sub_1C2CB0B90()
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD90, &qword_1C2E7B8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD98, &qword_1C2E7B8F8);
  sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
  sub_1C2CB28EC();
  sub_1C2CB2BEC();
  return sub_1C2E74E04();
}

uint64_t sub_1C2CB0CC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD00, &qword_1C2E7B720);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD08, &qword_1C2E7B728);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  if (*(v1 + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD10, &qword_1C2E7B730);
    (*(*(v9 - 8) + 16))(v5, a1, v9);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10, &qword_1C2E7B730, MEMORY[0x1E697FDF8]);
    return sub_1C2E73F44();
  }

  else
  {
    sub_1C2E75744();
    sub_1C2E73274();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD10, &qword_1C2E7B730);
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD18, &qword_1C2E7B738) + 36)];
    v13 = v14[1];
    *v12 = v14[0];
    *(v12 + 1) = v13;
    *(v12 + 2) = v14[2];
    *&v8[*(v6 + 36)] = 1;
    sub_1C2C736A4(v8, v5, &qword_1EC05DD08, &qword_1C2E7B728);
    swift_storeEnumTagMultiPayload();
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10, &qword_1C2E7B730, MEMORY[0x1E697FDF8]);
    sub_1C2E73F44();
    return sub_1C2C73644(v8, &qword_1EC05DD08, &qword_1C2E7B728);
  }
}

uint64_t sub_1C2CB0FF0(uint64_t a1)
{
  v2 = sub_1C2E750B4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E738A4();
}

uint64_t sub_1C2CB10FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2CB1170(uint64_t *a1, int a2)
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

uint64_t sub_1C2CB11B8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WidhRestrictionModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WidhRestrictionModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C2CB126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2CB12A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2CB12F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2CB1338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for StateHolder(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for IconButtonStyle(319, v4, v6, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2CB152C()
{
  result = qword_1EC05B6A8;
  if (!qword_1EC05B6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC78, &qword_1C2E7B608);
    sub_1C2CB15E8();
    sub_1C2C6E9FC(qword_1EC05C220, type metadata accessor for OptionalBackground, &unk_1C2E7B848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6A8);
  }

  return result;
}

unint64_t sub_1C2CB15E8()
{
  result = qword_1EC05B740;
  if (!qword_1EC05B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC80, &qword_1C2E7B610);
    sub_1C2CB16A0();
    sub_1C2C94F38(qword_1EC05BF38, &qword_1EC05DCC0, &qword_1C2E7B650, &unk_1C2E7B898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B740);
  }

  return result;
}

unint64_t sub_1C2CB16A0()
{
  result = qword_1EC05B8C0;
  if (!qword_1EC05B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC88, &qword_1C2E7B618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC90, &qword_1C2E7B620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC98, &qword_1C2E7B628);
    sub_1C2CB17A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8C0);
  }

  return result;
}

unint64_t sub_1C2CB17A0()
{
  result = qword_1EC05B978;
  if (!qword_1EC05B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC98, &qword_1C2E7B628);
    sub_1C2CB1858();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B978);
  }

  return result;
}

unint64_t sub_1C2CB1858()
{
  result = qword_1EC05B5A8;
  if (!qword_1EC05B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCA0, &unk_1C2E7B630);
    sub_1C2C76D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5A8);
  }

  return result;
}

uint64_t type metadata accessor for OptionalBackground(uint64_t a1)
{
  result = qword_1EC05C210;
  if (!qword_1EC05C210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2CB1930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA0, &unk_1C2E7B630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2CB19D0()
{
  result = qword_1EC05B7B0;
  if (!qword_1EC05B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD08, &qword_1C2E7B728);
    sub_1C2CB1A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7B0);
  }

  return result;
}

unint64_t sub_1C2CB1A5C()
{
  result = qword_1EC05B940;
  if (!qword_1EC05B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD18, &qword_1C2E7B738);
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10, &qword_1C2E7B730, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B940);
  }

  return result;
}

void sub_1C2CB1B58(uint64_t a1)
{
  sub_1C2CB1BDC(319);
  if (v1 <= 0x3F)
  {
    sub_1C2CB1C40(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2CB1BDC(uint64_t a1)
{
  if (!qword_1EC05BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD30, &qword_1C2E7B7C8);
    v1 = sub_1C2E76424();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05BAC0);
    }
  }
}

void sub_1C2CB1C40(uint64_t a1)
{
  if (!qword_1EC05B328)
  {
    sub_1C2E75364();
    v1 = sub_1C2E76424();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05B328);
    }
  }
}

uint64_t sub_1C2CB1CA0(uint64_t a1)
{
  result = sub_1C2E76424();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2CB1D10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1C2CB1E90(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_1C2CB20D4()
{
  result = qword_1EC05B650;
  if (!qword_1EC05B650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCF0, &qword_1C2E7B710);
    sub_1C2CB218C();
    sub_1C2C94F38(&qword_1EC05B608, &qword_1EC05DCF8, &qword_1C2E7B718, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B650);
  }

  return result;
}

unint64_t sub_1C2CB218C()
{
  result = qword_1EC05B6A0;
  if (!qword_1EC05B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCE8, &qword_1C2E7B708);
    sub_1C2CB2244();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6A0);
  }

  return result;
}

unint64_t sub_1C2CB2244()
{
  result = qword_1EC05B738;
  if (!qword_1EC05B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCE0, &qword_1C2E7B6D0);
    sub_1C2CB22D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B738);
  }

  return result;
}

unint64_t sub_1C2CB22D0()
{
  result = qword_1EC05B8B8;
  if (!qword_1EC05B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCD8, &qword_1C2E7B6C8);
    sub_1C2E741B4();
    sub_1C2E73C54();
    sub_1C2C6E9FC(&qword_1EC05CB20, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C2C6E9FC(&qword_1EC05B600, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05BA78, &qword_1EC05DD40, &qword_1C2E7B800, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8B8);
  }

  return result;
}

unint64_t sub_1C2CB2438()
{
  result = qword_1EC05B5A0;
  if (!qword_1EC05B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD48, &qword_1C2E7B808);
    sub_1C2CB19D0();
    sub_1C2C94F38(&qword_1EC05B4C0, &qword_1EC05DD10, &qword_1C2E7B730, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5A0);
  }

  return result;
}

unint64_t sub_1C2CB24F0()
{
  result = qword_1EC05B658;
  if (!qword_1EC05B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD50, &qword_1C2E7B810);
    sub_1C2CB2574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B658);
  }

  return result;
}

unint64_t sub_1C2CB2574()
{
  result = qword_1EC05B660;
  if (!qword_1EC05B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD58, &qword_1C2E7B818);
    sub_1C2CB2600();
    sub_1C2CB2828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B660);
  }

  return result;
}

unint64_t sub_1C2CB2600()
{
  result = qword_1EC05B6B0;
  if (!qword_1EC05B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD60, &qword_1C2E7B820);
    sub_1C2CB26B8();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80, &qword_1C2E7B840, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6B0);
  }

  return result;
}

unint64_t sub_1C2CB26B8()
{
  result = qword_1EC05B778;
  if (!qword_1EC05B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD68, &qword_1C2E7B828);
    sub_1C2CB2770();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B778);
  }

  return result;
}

unint64_t sub_1C2CB2770()
{
  result = qword_1EC05B8E0;
  if (!qword_1EC05B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD70, &unk_1C2E7B830);
    sub_1C2C94F38(&qword_1EC05B458, &qword_1EC05DD78, &qword_1C2E8FB20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8E0);
  }

  return result;
}

unint64_t sub_1C2CB2828()
{
  result = qword_1EC05BE88;
  if (!qword_1EC05BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BE88);
  }

  return result;
}

unint64_t sub_1C2CB28EC()
{
  result = qword_1EC05B520;
  if (!qword_1EC05B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD90, &qword_1C2E7B8F0);
    sub_1C2CB29A4();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B520);
  }

  return result;
}

unint64_t sub_1C2CB29A4()
{
  result = qword_1EC05B550;
  if (!qword_1EC05B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DDA0, &qword_1C2E7B900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    sub_1C2CB2AB4();
    swift_getOpaqueTypeConformance2();
    sub_1C2CB2B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B550);
  }

  return result;
}

unint64_t sub_1C2CB2AB4()
{
  result = qword_1EC05B398;
  if (!qword_1EC05B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B398);
  }

  return result;
}

unint64_t sub_1C2CB2B08()
{
  result = qword_1EC05B928;
  if (!qword_1EC05B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DDA8, &qword_1C2E7B908);
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EC05B478, &qword_1EC05DDB0, &qword_1C2E7B910, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B928);
  }

  return result;
}

unint64_t sub_1C2CB2BEC()
{
  result = qword_1EC05B5C0;
  if (!qword_1EC05B5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD98, &qword_1C2E7B8F8);
    sub_1C2CB2B08();
    sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5C0);
  }

  return result;
}

uint64_t sub_1C2CB2CC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_1C2CB2D08(unint64_t a1)
{
  v3 = [v1 subviews];
  sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
  v4 = sub_1C2E75D74();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6927010](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
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

  *&v23[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = a1;

  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v26 = MEMORY[0x1E69E7CC0];

      result = sub_1C2CA4D04(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        break;
      }

      v12 = 0;
      v13 = v26;
      v14 = a1;
      v21 = a1 & 0xFFFFFFFFFFFFFF8;
      v22 = a1 & 0xC000000000000001;
      v15 = a1;
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v22)
        {
          v17 = MEMORY[0x1C6927010](v12, v14);
        }

        else
        {
          if (v12 >= *(v21 + 16))
          {
            goto LABEL_28;
          }

          v17 = *(v14 + 8 * v12 + 32);
        }

        v18 = v17;
        v24 = v17;
        sub_1C2CB2FC0(&v24, v23, &v25);

        v19 = v25;
        v26 = v13;
        a1 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (a1 >= v20 >> 1)
        {
          sub_1C2CA4D04((v20 > 1), a1 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = a1 + 1;
        *(v13 + 8 * a1 + 32) = v19;
        ++v12;
        v14 = v15;
        if (v16 == v10)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v10 = sub_1C2E764E4();
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *&v23[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v13;
  }

  return result;
}

void sub_1C2CB2FC0(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  [*a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setHidden_];
  [a2 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7B940;
  v7 = [v5 topAnchor];
  v8 = [a2 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v5 centerXAnchor];
  v11 = [a2 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v5 leadingAnchor];
  v14 = [a2 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v5 trailingAnchor];
  v17 = [a2 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = [v5 bottomAnchor];
  v20 = [a2 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 64) = v21;
  *a3 = v6;
}

void sub_1C2CB3250(int64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views;
  v6 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views];
  if (v6 >> 62)
  {
    v7 = sub_1C2E764E4();
    if (a1 < 0)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 < 0)
    {
      return;
    }
  }

  if (v7 <= a1)
  {
    return;
  }

  v8 = *&v2[v5];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x1C6927010](a1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v9 = *(v8 + 8 * a1 + 32);
  }

  v10 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView;
  v11 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView];
  if (v11)
  {
    v12 = v2;
    sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
    v33 = v9;
    v13 = v11;
    v14 = sub_1C2E76234();

    if (v14)
    {

LABEL_23:

      return;
    }

    v2 = v12;
    v16 = *&v12[v10];
  }

  else
  {
    v15 = v9;
    v16 = 0;
  }

  *&v2[v10] = v9;
  v17 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints];
  if (*(v17 + 16) <= a1)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v18 = *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints];
  *&v2[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = *(v17 + 8 * a1 + 32);
  v19 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
  swift_bridgeObjectRetain_n();
  v20 = sub_1C2E75D64();

  [v19 activateConstraints_];

  [v2 layoutIfNeeded];
  [v9 setAlpha_];
  [v9 setHidden_];
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  if (a2)
  {
    v23 = objc_opt_self();
    v38 = sub_1C2CB3EF8;
    v39 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2CB2CC4;
    v37 = &block_descriptor_0;
    v24 = _Block_copy(&aBlock);
    v25 = v16;
    v26 = v9;
    v27 = v25;

    v38 = sub_1C2CB3F48;
    v39 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2CB3840;
    v37 = &block_descriptor_6;
    v28 = _Block_copy(&aBlock);

    [v23 animateWithDuration:0 delay:v24 options:v28 animations:0.15 completion:0.0];

    _Block_release(v28);
    _Block_release(v24);
    return;
  }

  v32 = v19;

  v29 = v16;
  v30 = v9;
  v33 = v29;
  [v33 setAlpha_];
  [v30 setAlpha_];
  if (v16)
  {
    [v33 setHidden_];
    [v33 setAlpha_];
  }

  if (!v18)
  {

    goto LABEL_23;
  }

  v31 = sub_1C2E75D64();
  [v32 deactivateConstraints_];
}

void sub_1C2CB3768(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    [a2 setHidden_];
    [a2 setAlpha_];
  }

  if (a3)
  {
    v5 = objc_opt_self();
    sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
    v6 = sub_1C2E75D64();
    [v5 deactivateConstraints_];
  }
}

double sub_1C2CB3840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1C2CB3894(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView];
  if (v2)
  {
    *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
    v4 = OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints;
    if (*&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints])
    {
      v5 = objc_opt_self();
      sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);

      v6 = sub_1C2E75D64();

      [v5 deactivateConstraints_];

      *&v1[v4] = 0;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    if (a1)
    {
      v9 = objc_opt_self();
      v20 = sub_1C2CB3F68;
      v21 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1C2CB2CC4;
      v19 = &block_descriptor_15;
      v10 = _Block_copy(&aBlock);
      v11 = v2;
      v12 = v1;

      v20 = sub_1C2CB3FB4;
      v21 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1C2CB3840;
      v19 = &block_descriptor_18;
      v13 = _Block_copy(&aBlock);

      [v9 animateWithDuration:0 delay:v10 options:v13 animations:0.15 completion:0.0];

      _Block_release(v13);
      _Block_release(v10);
    }

    else
    {
      v15 = v2;
      v14 = v1;
      [v15 setAlpha_];
      [v14 layoutIfNeeded];
      [v15 setHidden_];
      [v15 setAlpha_];
    }
  }
}

id SwitchingContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SwitchingContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v9;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for SwitchingContainerView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id SwitchingContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchingContainerView.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints] = v3;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SwitchingContainerView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SwitchingContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchingContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C2CB3EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    [v1 setAlpha_];
  }

  return [v2 setAlpha_];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C2CB3F68()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 layoutIfNeeded];
}

id sub_1C2CB3FB4()
{
  v1 = *(v0 + 16);
  [v1 setHidden_];

  return [v1 setAlpha_];
}

uint64_t sub_1C2CB410C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CB4188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C2E74534();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1C2E745C4();
  sub_1C2CB410C(v2);
  return v4;
}

uint64_t IconButtonStyle.symbol.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = v4[5];
  v17 = v4[4];
  v5 = v17;
  v18 = v6;
  v19 = v4[6];
  v7 = v19;
  v8 = v4[1];
  v14[0] = *v4;
  v14[1] = v8;
  v9 = v4[3];
  v15 = v4[2];
  v10 = v15;
  v16 = v9;
  *a2 = v14[0];
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v9;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  v11 = type metadata accessor for IconButtonStyle.SystemSymbol(0, *(a1 + 16), a3, a4);
  return (*(*(v11 - 8) + 16))(&v13, v14, v11);
}

uint64_t IconButtonStyle.init(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12, uint64_t a13)
{
  v22 = *a12;
  v23 = *(a12 + 8);
  v24 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v24;
  v25 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v25;
  v26 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v26;
  v27 = *(a2 + 16);
  *(a9 + 112) = *a2;
  *(a9 + 128) = v27;
  v28 = a1[6];
  *(a9 + 144) = *(a2 + 32);
  *(a9 + 96) = v28;
  v29 = type metadata accessor for IconButtonStyle(0, a13, a3, a4);
  result = sub_1C2CB4434(a3, a9 + v29[8]);
  *(a9 + v29[9]) = a4;
  *(a9 + v29[10]) = a5;
  *(a9 + v29[11]) = a6;
  v31 = a9 + v29[12];
  *v31 = a7;
  *(v31 + 8) = a8 & 1;
  *(a9 + v29[13]) = a10;
  v32 = a9 + v29[14];
  *v32 = a10;
  *(v32 + 8) = v22;
  *(v32 + 16) = v23;
  *(a9 + v29[15]) = a11;
  return result;
}

uint64_t sub_1C2CB4434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IconButtonStyle.SystemSymbol.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.color.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.background.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IconButtonStyle.SystemSymbol.glass.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 IconButtonStyle.SystemSymbol.init(name:color:background:glass:scale:font:weight:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a11;
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a10;
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = sub_1C2C82BDC;
  a9[9] = v17;
  a9[10] = sub_1C2CB5590;
  a9[11] = v18;
  a9[12] = sub_1C2C82BE0;
  a9[13] = v19;
}

uint64_t sub_1C2CB47A0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(unsigned __int8 *a1)@<X8>, uint64_t (*a10)(unsigned __int8 *a1))
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C2CB5628;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *a9 = sub_1C2CB5658;
  a9[1] = v20;
  a9[2] = sub_1C2CB5684;
  a9[3] = v21;
  a9[4] = sub_1C2CB56B0;
  a9[5] = v22;
  a9[6] = sub_1C2CB56B0;
  a9[7] = v23;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB56DC;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v19;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v20;
  a9[4] = sub_1C2CB688C;
  a9[5] = v21;
  a9[6] = sub_1C2CB688C;
  a9[7] = v22;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

uint64_t sub_1C2CB4BD4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>, double a9@<D0>)
{
  v38 = a2;
  v39 = a7;
  v37 = a6;
  v34 = a5;
  v35 = a3;
  v32 = a4;
  v36 = sub_1C2E750B4();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  sub_1C2C736A4(v32, v40, &qword_1EC05DDC0, &qword_1C2E7B920);
  v20 = swift_allocObject();
  v21 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v41;
  sub_1C2C736A4(v34, v18, &qword_1EC05DD28, &qword_1C2E7B7A8);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1C2CB4434(v18, v23 + v22);
  v24 = v36;
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v25, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  *a8 = sub_1C2CB5628;
  a8[1] = v19;
  v28 = v33;
  a8[2] = sub_1C2C9757C;
  a8[3] = v28;
  a8[4] = sub_1C2CB56E4;
  a8[5] = v20;
  a8[6] = sub_1C2CB5714;
  a8[7] = v23;
  a8[8] = sub_1C2CB5718;
  a8[9] = v26;
  v29 = v39;
  a8[10] = sub_1C2CB6890;
  a8[11] = v29;
  a8[12] = sub_1C2CB571C;
  a8[13] = v27;
}

uint64_t sub_1C2CB4F8C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v33 = a8;
  v35 = a7;
  v34 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v33 - v22;
  v24 = a1[5];
  v39[4] = a1[4];
  v39[5] = v24;
  v39[6] = a1[6];
  v25 = a1[1];
  v39[0] = *a1;
  v39[1] = v25;
  v26 = a1[3];
  v39[2] = a1[2];
  v39[3] = v26;
  v27 = *a12;
  v28 = *(a12 + 8);
  sub_1C2C736A4(a2, v36, &qword_1EC05DDC0, &qword_1C2E7B920);
  sub_1C2C736A4(a3, v23, &qword_1EC05DD28, &qword_1C2E7B7A8);
  v37 = v27;
  v38 = v28;
  IconButtonStyle.init(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)(a1, v36, v23, a4, a5, v34, v35, v33 & 1, a9, a10, a11, &v37, a13);
  v31 = type metadata accessor for IconButtonStyle.SystemSymbol(0, a13, v29, v30);
  (*(*(v31 - 8) + 16))(v36, v39, v31);
}

uint64_t static IconButtonStyle.SystemSymbol.catalystCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a11;
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a10;
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = sub_1C2CB6894;
  a9[9] = v17;
  a9[10] = sub_1C2CB68A8;
  a9[11] = v18;
  a9[12] = sub_1C2CB6870;
  a9[13] = v19;
}

uint64_t sub_1C2CB52A4()
{
  result = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  qword_1EC05C568 = result;
  return result;
}

uint64_t sub_1C2CB52C4()
{
  v0 = sub_1C2E74EC4();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_1C2E74FB4();
  qword_1EC05C550 = result;
  return result;
}

uint64_t sub_1C2CB53E0()
{
  v0 = sub_1C2E755F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E756D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E75364();
  __swift_allocate_value_buffer(v8, qword_1EC05C580);
  __swift_project_value_buffer(v8, qword_1EC05C580);
  sub_1C2E755E4();
  sub_1C2E75624();
  (*(v1 + 8))(v3, v0);
  sub_1C2E75344();
  (*(v5 + 8))(v7, v4);
  sub_1C2E75324();
  return sub_1C2E75334();
}

uint64_t sub_1C2CB55CC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t sub_1C2CB5628()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C2CB5724@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816E0];
  v3 = sub_1C2E750B4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C2CB5798@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1C2E730D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C2E755F4();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v22 = sub_1C2E756D4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C2E75364();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E755C4();
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  sub_1C2E755D4();
  (*(v2 + 8))(v4, v1);
  v17 = *(v5 + 8);
  v18 = v7;
  v19 = v23;
  v17(v18, v23);
  sub_1C2E75624();
  v17(v10, v19);
  sub_1C2E75344();
  (*(v11 + 8))(v13, v22);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E75354();

  (*(v14 + 8))(v16, v21);
  sub_1C2E75324();
  return sub_1C2E75334();
}

uint64_t static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(unsigned __int8 *a1)@<X8>, uint64_t (*a10)(unsigned __int8 *a1))
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C2CB6874;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v20;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v21;
  a9[4] = sub_1C2CB688C;
  a9[5] = v22;
  a9[6] = sub_1C2CB688C;
  a9[7] = v23;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  *a9 = sub_1C2CB68B0;
  a9[1] = v19;
  a9[2] = sub_1C2CB68B4;
  a9[3] = v20;
  a9[4] = sub_1C2CB688C;
  a9[5] = v21;
  a9[6] = sub_1C2CB688C;
  a9[7] = v22;
  a9[8] = sub_1C2CB6894;
  a9[9] = 0;
  a9[10] = sub_1C2CB6890;
  a9[11] = a10;
  a9[12] = sub_1C2CB6870;
  a9[13] = 0;
}

uint64_t static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:scale:font:weight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)()@<X6>, uint64_t (**a8)()@<X8>, double a9@<D0>)
{
  v38 = a2;
  v39 = a7;
  v37 = a6;
  v34 = a5;
  v35 = a3;
  v32 = a4;
  v36 = sub_1C2E750B4();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  sub_1C2C736A4(v32, v40, &qword_1EC05DDC0, &qword_1C2E7B920);
  v20 = swift_allocObject();
  v21 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v41;
  sub_1C2C736A4(v34, v18, &qword_1EC05DD28, &qword_1C2E7B7A8);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1C2CB4434(v18, v23 + v22);
  v24 = v36;
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v25, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  *a8 = sub_1C2CB6874;
  a8[1] = v19;
  v28 = v33;
  a8[2] = sub_1C2CB68AC;
  a8[3] = v28;
  a8[4] = sub_1C2CB6878;
  a8[5] = v20;
  a8[6] = sub_1C2CB6898;
  a8[7] = v23;
  a8[8] = sub_1C2CB689C;
  a8[9] = v26;
  v29 = v39;
  a8[10] = sub_1C2CB6890;
  a8[11] = v29;
  a8[12] = sub_1C2CB687C;
  a8[13] = v27;
}

uint64_t objectdestroy_46Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C2E75364();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_1C2E750B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2CB6404@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E750B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void sub_1C2CB6480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IconButtonStyle.SystemSymbol(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_1C2CB1BDC(319);
    if (v5 <= 0x3F)
    {
      sub_1C2CB1C40(319);
      if (v6 <= 0x3F)
      {
        sub_1C2CB6590();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2CB6590()
{
  if (!qword_1EC05CA20)
  {
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CA20);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoiceMailTab.Option(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VoiceMailTab.Option(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C2CB66F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1C2CB6758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C2CB67A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t IconButtonConfig.accessibilityIdentifier.getter(uint64_t a1)
{
  v1 = sub_1C2CB8AC0();

  return v1;
}

uint64_t IconButtonConfig.accessibilityLabel.getter(uint64_t a1)
{
  v1 = sub_1C2CB8B34();

  return v1;
}

uint64_t IconButtonConfig.axValue.getter(uint64_t a1)
{
  v1 = sub_1C2CB8C1C();

  return v1;
}

uint64_t IconButtonConfig.enabled.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t IconButtonConfig.accessibilityIsToggle.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  StateHolder.state.getter(&v3 - v1);
  return swift_dynamicCast();
}

uint64_t IconButtonConfig.title.getter()
{
  v0 = sub_1C2CB8C20();

  return v0;
}

uint64_t IconButtonConfig.hasBadge.getter()
{
  v1 = *(v0 + *(*v0 + 144));
  swift_getKeyPath();
  sub_1C2CB8C94();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IconButtonConfig.state.setter(uint64_t a1)
{
  v3 = *v1;
  v4.n128_f64[0] = sub_1C2CB8CF8(a1);
  v5 = *(*(*(v3 + 80) - 8) + 8);

  return v5(a1, v4);
}

void (*IconButtonConfig.state.modify(void *a1))(uint64_t a1, char a2)
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

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateHolder.state.getter(v9);
  return sub_1C2CB6D5C;
}

void sub_1C2CB6D5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    v7 = sub_1C2E348C0(v3);
    v8 = *(v6 + 8);
    v8(v3, v5, v7);
    (v8)(v4, v5);
  }

  else
  {
    v9 = sub_1C2E348C0(*(*a1 + 32));
    (*(v6 + 8))(v4, v5, v9);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1C2CB6E68@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.enabled.getter();
  *a1 = result & 1;
  return result;
}

double IconButtonConfig.enabled.setter(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v10 = a1;
  v4 = sub_1C2E75BA4();
  if (v4)
  {
    *(v2 + 16) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v2;
    v9 = a1 & 1;
    sub_1C2CB70AC(v7, sub_1C2CB8D30, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double (*IconButtonConfig.enabled.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB72C8;
}

double sub_1C2CB72C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1C2CB82EC(v1, &unk_1C2E7BB50);
}

uint64_t IconButtonConfig.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10 = *(v2 + 24);
  v9[8] = a1;
  v9[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88, &qword_1C2E7BBC8);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_1C2CB70AC(v8, sub_1C2CB8E00, v9, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1C2CB7490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

double (*IconButtonConfig.title.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7640;
}

double sub_1C2CB7640(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1C2CB82EC(v1, &unk_1C2E7BBD0);
}

double IconButtonConfig.hasBadge.setter(char a1)
{
  swift_getKeyPath();
  sub_1C2CB8C94();
  sub_1C2E71A54();

  return result;
}

double (*IconButtonConfig.hasBadge.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = IconButtonConfig.hasBadge.getter() & 1;
  return sub_1C2CB7790;
}

uint64_t IconButtonConfig.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10 = *(v2 + 40);
  v9[8] = a1;
  v9[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88, &qword_1C2E7BBC8);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_1C2CB70AC(v8, sub_1C2CB8E74, v9, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1C2CB794C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C2CB7954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

double (*IconButtonConfig.accessibilityLabel.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7B04;
}

double sub_1C2CB7B04(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1C2CB82EC(v1, &unk_1C2E7BC08);
}

uint64_t IconButtonConfig.accessibilityValue.getter()
{
  v0 = sub_1C2CB8BA8();

  return v0;
}

uint64_t IconButtonConfig.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10 = *(v2 + 56);
  v9[8] = a1;
  v9[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88, &qword_1C2E7BBC8);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_1C2CB70AC(v8, sub_1C2CB8E94, v9, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1C2CB7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

double (*IconButtonConfig.accessibilityValue.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB7EB4;
}

double sub_1C2CB7EB4(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1C2CB82EC(v1, &unk_1C2E7BC40);
}

uint64_t keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t IconButtonConfig.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10 = *(v2 + 72);
  v9[8] = a1;
  v9[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF88, &qword_1C2E7BBC8);
  sub_1C2CB8D84();
  v5 = sub_1C2E75BA4();
  if (v5)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_1C2CB70AC(v8, sub_1C2CB8EB4, v9, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1C2CB8108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

double (*IconButtonConfig.accessibilityIdentifier.modify(uint64_t **a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CB82B8;
}

double sub_1C2CB82B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1C2CB82EC(v1, &unk_1C2E7BC78);
}

double sub_1C2CB82EC(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A74();

  return result;
}

uint64_t IconButtonConfig.style.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 128);
  v6 = type metadata accessor for IconButtonStyle(0, *(*v3 + 80), a1, a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t IconButtonConfig.didTap.getter()
{
  v1 = *(v0 + *(*v0 + 152));

  return v1;
}

uint64_t IconButtonConfig.__allocating_init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  swift_allocObject();
  v19 = sub_1C2CB8ED4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  v20 = *(v15 + 80);
  (*(*(v20 - 8) + 8))(a11, v20);
  v23 = type metadata accessor for IconButtonStyle(0, v20, v21, v22);
  (*(*(v23 - 8) + 8))(a1, v23);
  return v19;
}

uint64_t IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  v17 = sub_1C2CB8ED4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 = *(v16 + 80);
  (*(*(v18 - 8) + 8))(a11, v18);
  v21 = type metadata accessor for IconButtonStyle(0, v18, v19, v20);
  (*(*(v21 - 8) + 8))(a1, v21);
  return v17;
}

char *IconButtonConfig.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 128);
  v5 = type metadata accessor for IconButtonStyle(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  v6 = *(*v0 + 160);
  v7 = sub_1C2E71AA4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t IconButtonConfig.__deallocating_deinit()
{
  IconButtonConfig.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v30 = a7;
  v31 = a8;
  v33 = a12;
  v34 = a13;
  v32 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90, &qword_1C2E7BCB0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v29 - v20;
  sub_1C2CB916C(a1, &v29 - v20);
  v22 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2CB916C(v21, v22 + *(*v22 + 128));
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF80, &qword_1C2E7BBC0);
  v23 = swift_allocObject();
  sub_1C2E71A94();
  *(v23 + 16) = a4;
  *(v22 + *(*v22 + 144)) = v23;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  v24 = v31;
  *(v22 + 56) = v30;
  *(v22 + 64) = v24;
  *(v22 + 72) = a9;
  *(v22 + 80) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF98, &qword_1C2E7BCB8);
  v25 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2CB91DC(a1);
  sub_1C2CB91DC(v21);
  *(v22 + *(*v22 + 136)) = v25;
  *(v22 + 16) = v32;
  v26 = (v22 + *(*v22 + 152));
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  return v22;
}

uint64_t sub_1C2CB8AC0()
{
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1C2CB8B34()
{
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1C2CB8BA8()
{
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_1C2CB8C20()
{
  KeyPath = swift_getKeyPath();
  sub_1C2CB700C(KeyPath);

  swift_beginAccess();
  return *(v0 + 24);
}

unint64_t sub_1C2CB8C94()
{
  result = qword_1EC05C6F0[0];
  if (!qword_1EC05C6F0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DF80, &qword_1C2E7BBC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC05C6F0);
  }

  return result;
}

uint64_t sub_1C2CB8D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

unint64_t sub_1C2CB8D84()
{
  result = qword_1EC05B2C8;
  if (!qword_1EC05B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DF88, &qword_1C2E7BBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2C8);
  }

  return result;
}

uint64_t sub_1C2CB8E20()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C2CB8ED4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v42 = a7;
  v43 = a8;
  v46 = a13;
  v47 = a14;
  v45 = a12;
  v44 = a11;
  v41 = a10;
  v39 = a6;
  v40 = a9;
  v21 = *(*v15 + 80);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v38 - v23;
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 24) = 0u;
  sub_1C2E71A94();
  v25 = *(*v15 + 128);
  v28 = type metadata accessor for IconButtonStyle(0, v21, v26, v27);
  (*(*(v28 - 8) + 16))(v15 + v25, a1, v28);

  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF80, &qword_1C2E7BBC0);
  v29 = swift_allocObject();
  sub_1C2E71A94();
  *(v29 + 16) = a4;
  *(v15 + *(*v15 + 144)) = v29;

  v30 = v39;
  *(v15 + 40) = a5;
  *(v15 + 48) = v30;

  v31 = v43;
  *(v15 + 56) = v42;
  *(v15 + 64) = v31;

  v32 = v41;
  *(v15 + 72) = v40;
  *(v15 + 80) = v32;
  type metadata accessor for StateHolder(0, v21, v33, v34);
  (*(v22 + 16))(v24, v44, v21);
  *(v15 + *(*v15 + 136)) = StateHolder.__allocating_init(state:)(v24);
  *(v15 + 16) = v45;
  v35 = (v15 + *(*v15 + 152));
  v36 = v47;
  *v35 = v46;
  v35[1] = v36;
  return v15;
}

uint64_t sub_1C2CB916C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90, &qword_1C2E7BCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CB91DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DF90, &qword_1C2E7BCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CB9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IconButtonStyle(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C2CB9410(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2CB942C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t IconMenu.init(config:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IconMenu.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v4 = a1[2];
  v31 = a1;
  type metadata accessor for IconButton.IconView(255, v4, a2, a3);
  swift_getWitnessTable();
  v34 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle(255, v4, v5, v6);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x1E6980A18];
  v51 = OpaqueTypeConformance2;
  v52 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  v8 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  sub_1C2E73654();
  v54 = WitnessTable;
  v55 = v10;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView(255, v4, v11, v12);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v13 = sub_1C2E73F54();
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v29[2] = MEMORY[0x1E697F968];
  v14 = swift_getWitnessTable();
  type metadata accessor for IconButton.Container(255, v4, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  v15 = sub_1C2E73F54();
  v45 = swift_getWitnessTable();
  v46 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, v30);
  v43 = swift_getWitnessTable();
  v44 = MEMORY[0x1E697EBF8];
  v29[1] = v8;
  v16 = swift_getWitnessTable();
  v17 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v41 = v16;
  v42 = v17;
  v39 = swift_getWitnessTable();
  v40 = v16;
  v18 = swift_getWitnessTable();
  *&v53 = v15;
  *(&v53 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v19 = sub_1C2E73F54();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v29 - v24;
  v26 = *(v32 + 2);
  v53 = *v32;
  v54 = v26;
  sub_1C2CB9BF0(v31, v22);
  *&v53 = v15;
  *(&v53 + 1) = v18;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v17;
  v35 = swift_getWitnessTable();
  v36 = v18;
  swift_getWitnessTable();
  sub_1C2C6EE48(v22);
  v27 = *(v20 + 8);
  v27(v22, v19);
  sub_1C2C6EE48(v25);
  return (v27)(v25, v19);
}

uint64_t sub_1C2CB9BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2CB9BF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v89 = sub_1C2E74264();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1[2];
  v7 = type metadata accessor for IconButton.IconView(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v124 = v7;
  v125 = WitnessTable;
  v99 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = a1[3];
  v124 = v7;
  v125 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = a1;
  v12 = a1[4];
  v124 = OpaqueTypeMetadata2;
  v125 = v10;
  v126 = OpaqueTypeConformance2;
  v127 = v12;
  v13 = sub_1C2E74704();
  v14 = sub_1C2E734E4();
  v15 = swift_getWitnessTable();
  v16 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v124 = v13;
  v125 = v14;
  v126 = v15;
  v127 = v16;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  v17 = sub_1C2E73654();
  v20 = type metadata accessor for IconButton.ButtonStyle(255, v4, v18, v19);
  v124 = v13;
  v125 = v14;
  v126 = v15;
  v127 = v16;
  v21 = swift_getOpaqueTypeConformance2();
  v95 = MEMORY[0x1E6980A18];
  v22 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  v122 = v21;
  v123 = v22;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v124 = v17;
  v125 = v20;
  v126 = v23;
  v127 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v25 = sub_1C2E73654();
  v124 = v17;
  v125 = v20;
  v126 = v23;
  v127 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v120 = v26;
  v121 = v27;
  v28 = swift_getWitnessTable();
  v124 = v25;
  v125 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView(255, v4, v29, v30);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v31 = sub_1C2E73F54();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v118 = v32;
  v119 = v33;
  v34 = swift_getWitnessTable();
  type metadata accessor for IconButton.Container(255, v4, v31, v34);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  v35 = sub_1C2E73F54();
  v93 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v84 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v91 = &v83 - v38;
  v39 = swift_getWitnessTable();
  v40 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, v95);
  v116 = v39;
  v117 = v40;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v42 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v112 = v41;
  v113 = v42;
  v95 = v42;
  v110 = swift_getWitnessTable();
  v111 = v41;
  v43 = swift_getWitnessTable();
  v124 = v35;
  v125 = v43;
  v94 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v86 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v83 - v45;
  v85 = v47;
  v48 = sub_1C2E73654();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v83 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v83 - v53);
  v99 = sub_1C2E73F54();
  v92 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v83 - v55;
  v56 = *v96;
  v57 = v96[1];
  v58 = v96[2];
  v59 = sub_1C2CB8B34();
  if (v60)
  {
    v63 = v60;
    v124 = v56;
    v125 = v57;
    v126 = v58;
    v84 = v59;

    v96 = v54;
    v64 = v91;
    sub_1C2CBA8BC(v97, v65, v66, v91);
    v67 = v87;
    sub_1C2E74244();
    v68 = v94;
    sub_1C2E74C04();
    (*(v88 + 8))(v67, v89);
    (*(v93 + 8))(v64, v35);
    v124 = v84;
    v125 = v63;
    v102 = v35;
    v103 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    sub_1C2C74960();
    v70 = v85;
    sub_1C2E74B34();
    (*(v86 + 8))(v46, v70);

    v100 = v69;
    v71 = v95;
    v101 = v95;
    v72 = swift_getWitnessTable();
    v73 = v96;
    sub_1C2C6EE48(v51);
    v74 = *(v49 + 8);
    v74(v51, v48);
    sub_1C2C6EE48(v73);
    v75 = v90;
    sub_1C2C76E34(v51, v48, v35, v72, v68);
    v74(v51, v48);
    v74(v73, v48);
  }

  else
  {
    v124 = v56;
    v125 = v57;
    v126 = v58;
    v76 = v84;
    sub_1C2CBA8BC(v97, v61, v62, v84);
    v77 = v91;
    v68 = v94;
    sub_1C2C6EE48(v76);
    v78 = *(v93 + 8);
    v78(v76, v35);
    sub_1C2C6EE48(v77);
    v124 = v35;
    v125 = v68;
    v79 = swift_getOpaqueTypeConformance2();
    v71 = v95;
    v108 = v79;
    v109 = v95;
    v80 = swift_getWitnessTable();
    v75 = v90;
    sub_1C2C78970(v76, v48, v35, v80, v68);
    v78(v76, v35);
    v78(v77, v35);
  }

  v124 = v35;
  v125 = v68;
  v106 = swift_getOpaqueTypeConformance2();
  v107 = v71;
  v104 = swift_getWitnessTable();
  v105 = v68;
  v81 = v99;
  swift_getWitnessTable();
  sub_1C2C6EE48(v75);
  return (*(v92 + 8))(v75, v81);
}

uint64_t sub_1C2CBA8BC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a4;
  v4 = a1[2];
  v40 = a1;
  v36 = v4;
  type metadata accessor for IconButton.IconView(255, v4, a2, a3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle(255, v4, v5, v6);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x1E6980A18];
  v55 = OpaqueTypeConformance2;
  v56 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  v38 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v10 = sub_1C2E73654();
  v58 = WitnessTable;
  v59 = v9;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  *&v57 = v10;
  *(&v57 + 1) = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView(255, v4, v11, v12);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v13 = sub_1C2E73F54();
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v37 = MEMORY[0x1E697F968];
  v14 = swift_getWitnessTable();
  type metadata accessor for IconButton.Container(255, v4, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  v15 = sub_1C2E73654();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  sub_1C2E74384();
  v35 = sub_1C2E73654();
  v19 = sub_1C2E73F54();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  v25 = *(v41 + 16);
  v41 = *v41;
  v57 = v41;
  v58 = v25;
  sub_1C2CBB044(v40, v18);
  v26 = sub_1C2CB8AC0();
  v28 = v27;

  v29 = swift_getWitnessTable();
  v30 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, v39);
  v49 = v29;
  v50 = v30;
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x1E697EBF8];
  v31 = swift_getWitnessTable();
  View.optionalAXID(_:)(v26, v28, v15, v31, v21);

  (*(v16 + 8))(v18, v15);
  v32 = sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v45 = v31;
  v46 = v32;
  v43 = swift_getWitnessTable();
  v44 = v31;
  swift_getWitnessTable();
  sub_1C2C6EE48(v21);
  v33 = *(v36 + 8);
  v33(v21, v19);
  sub_1C2C6EE48(v24);
  return (v33)(v24, v19);
}

uint64_t sub_1C2CBB044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_1C2E730D4();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v8 = type metadata accessor for IconButton.IconView(255, v5, v6, v7);
  WitnessTable = swift_getWitnessTable();
  v87 = v8;
  v88 = WitnessTable;
  v67 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = a1[3];
  v11 = v71;
  v87 = v8;
  v88 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = a1[4];
  v87 = OpaqueTypeMetadata2;
  v88 = v11;
  v89 = OpaqueTypeConformance2;
  v90 = v70;
  v13 = sub_1C2E74704();
  v14 = sub_1C2E734E4();
  v15 = swift_getWitnessTable();
  v16 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v87 = v13;
  v88 = v14;
  v89 = v15;
  v90 = v16;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  v17 = sub_1C2E73654();
  v20 = type metadata accessor for IconButton.ButtonStyle(255, v5, v18, v19);
  v87 = v13;
  v88 = v14;
  v89 = v15;
  v90 = v16;
  v21 = swift_getOpaqueTypeConformance2();
  v69 = MEMORY[0x1E6980A18];
  v22 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  v85 = v21;
  v86 = v22;
  v68 = MEMORY[0x1E697E858];
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v87 = v17;
  v88 = v20;
  v89 = v23;
  v90 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v25 = sub_1C2E73654();
  v87 = v17;
  v88 = v20;
  v89 = v23;
  v90 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v83 = v26;
  v84 = v27;
  v28 = swift_getWitnessTable();
  v87 = v25;
  v88 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView(255, v5, v29, v30);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v31 = sub_1C2E73F54();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v81 = v32;
  v82 = v33;
  v34 = swift_getWitnessTable();
  v35 = v5;
  type metadata accessor for IconButton.Container(255, v5, v31, v34);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  v64 = sub_1C2E73654();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v37 = &v62 - v36;
  v62 = sub_1C2E73654();
  v67 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v65 = &v62 - v40;
  v41 = *(v72 + 16);
  v72 = *v72;
  type metadata accessor for IconButtonStyle(0, v35, v42, v43);
  v44 = swift_allocObject();
  v45 = v71;
  *(v44 + 16) = v35;
  *(v44 + 24) = v45;
  *(v44 + 32) = v70;
  *(v44 + 40) = v72;
  *(v44 + 56) = v41;
  CGPointMake();
  LOBYTE(v87) = v46;
  v88 = v47;
  v89 = v48;
  v90 = v49;
  v51 = v73;
  v50 = v74;
  v52 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x1E697DBA8], v75);

  v53 = swift_getWitnessTable();
  sub_1C2E74994();
  (*(v50 + 8))(v51, v52);

  sub_1C2E75744();
  v54 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, v69);
  v79 = v53;
  v80 = v54;
  v60 = v64;
  v61 = swift_getWitnessTable();
  v55 = v63;
  sub_1C2E74D24();
  (*(v66 + 8))(v37, v60);
  v77 = v61;
  v78 = MEMORY[0x1E697EBF8];
  v56 = v62;
  swift_getWitnessTable();
  v57 = v65;
  sub_1C2C6EE48(v55);
  v58 = *(v67 + 8);
  v58(v55, v56);
  sub_1C2C6EE48(v57);
  return (v58)(v57, v56);
}

uint64_t sub_1C2CBB92C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a3;
  v76 = a2;
  v69 = a1;
  v81 = a7;
  v70 = type metadata accessor for IconButton.LabelView(255, a4, a3, a4);
  type metadata accessor for IconButton.IconView(255, a4, v10, v11);
  swift_getWitnessTable();
  v80 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v78 = a5;
  v79 = a6;
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle(255, a4, v12, v13);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v16 = sub_1C2E73654();
  v96 = WitnessTable;
  v97 = v15;
  v17 = a4;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v18 = v69;
  v94 = v16;
  v95 = swift_getWitnessTable();
  v71 = v95;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = v70;
  swift_getTupleTypeMetadata2();
  v21 = sub_1C2E75844();
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v65 - v22;
  swift_getTupleTypeMetadata2();
  v23 = sub_1C2E75844();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v65 - v24;
  v25 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v75 = v32;
  v80 = v21;
  v74 = sub_1C2E73F54();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v65 - v33;
  type metadata accessor for IconButtonStyle(0, v17, v34, v35);
  swift_retain_n();
  LODWORD(v15) = sub_1C2E744C4();
  if (v15 == sub_1C2E744C4())
  {
  }

  else
  {
    v36 = sub_1C2E744C4();
    v37 = sub_1C2E744C4();

    if (v36 != v37)
    {
      CGPointMake();
      v94 = v49;
      v50 = v17;
      v51 = v20;
      v52 = swift_getWitnessTable();
      sub_1C2C6EE48(&v94);

      v94 = v18;
      v95 = v76;
      v96 = v77;
      v53 = type metadata accessor for IconMenu(0, v50, v78, v79);
      sub_1C2CBC400(v53, v28);
      v94 = v16;
      v95 = v71;
      v54 = swift_getOpaqueTypeConformance2();
      sub_1C2C6EE48(v28);
      v55 = *(v25 + 8);
      v55(v28, OpaqueTypeMetadata2);
      v88 = v89;
      v94 = &v88;
      (*(v25 + 16))(v28, v31, OpaqueTypeMetadata2);
      v95 = v28;

      v86 = v51;
      v87 = OpaqueTypeMetadata2;
      v84 = v52;
      v85 = v54;
      v56 = v65;
      sub_1C2C6EC40(&v94, 2uLL, &v86);
      v55(v28, OpaqueTypeMetadata2);

      v57 = v75;
      v58 = swift_getWitnessTable();
      v59 = v80;
      v60 = swift_getWitnessTable();
      v48 = v72;
      sub_1C2C78970(v56, v57, v59, v58, v60);
      (*(v66 + 8))(v56, v59);
      v55(v31, OpaqueTypeMetadata2);

      goto LABEL_6;
    }
  }

  v94 = v18;
  v95 = v76;
  v96 = v77;
  v38 = type metadata accessor for IconMenu(0, v17, v78, v79);
  sub_1C2CBC400(v38, v28);
  v94 = v16;
  v95 = v71;
  v39 = swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v28);
  v40 = *(v25 + 8);
  v40(v28, OpaqueTypeMetadata2);
  CGPointMake();
  v94 = v41;
  v42 = swift_getWitnessTable();
  sub_1C2C6EE48(&v94);

  (*(v25 + 16))(v28, v31, OpaqueTypeMetadata2);
  v88 = v89;
  v94 = v28;
  v95 = &v88;

  v86 = OpaqueTypeMetadata2;
  v87 = v20;
  v84 = v39;
  v85 = v42;
  v43 = v67;
  sub_1C2C6EC40(&v94, 2uLL, &v86);

  v40(v28, OpaqueTypeMetadata2);
  v44 = v75;
  v45 = swift_getWitnessTable();
  v46 = v80;
  v47 = swift_getWitnessTable();
  v48 = v72;
  sub_1C2C76E34(v43, v44, v46, v45, v47);
  (*(v68 + 8))(v43, v44);

  v40(v31, OpaqueTypeMetadata2);
LABEL_6:
  v61 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v82 = v61;
  v83 = v62;
  v63 = v74;
  swift_getWitnessTable();
  sub_1C2C6EE48(v48);
  return (*(v73 + 8))(v48, v63);
}

uint64_t sub_1C2CBC400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = sub_1C2E74264();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1C2E73834();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E734E4();
  v77 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[2];
  v7 = v53;
  v10 = type metadata accessor for IconButton.IconView(255, v53, v8, v9);
  WitnessTable = swift_getWitnessTable();
  v102 = v10;
  v103 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v69 = a1[3];
  v13 = v69;
  v102 = v10;
  v103 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = a1[4];
  v102 = OpaqueTypeMetadata2;
  v103 = v13;
  v104 = OpaqueTypeConformance2;
  v105 = v68;
  v14 = sub_1C2E74704();
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = swift_getWitnessTable();
  v18 = sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  v102 = v14;
  v103 = v5;
  v19 = v5;
  v55 = v5;
  v104 = v17;
  v105 = v18;
  v57 = v17;
  v56 = v18;
  v66 = swift_getOpaqueTypeMetadata2();
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v52 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  v21 = sub_1C2E73654();
  v71 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v52 - v22;
  v25 = type metadata accessor for IconButton.ButtonStyle(255, v7, v23, v24);
  v58 = v25;
  v102 = v14;
  v103 = v19;
  v104 = v17;
  v105 = v18;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  v100 = v26;
  v101 = v27;
  v72 = MEMORY[0x1E697E858];
  v28 = swift_getWitnessTable();
  v60 = v28;
  v59 = swift_getWitnessTable();
  v102 = v21;
  v103 = v25;
  v104 = v28;
  v105 = v59;
  v62 = MEMORY[0x1E697CDC0];
  v29 = swift_getOpaqueTypeMetadata2();
  v64 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  v65 = sub_1C2E73654();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v52 - v32;
  v34 = *v78;
  v33 = v78[1];
  v35 = v78[2];
  v92 = v53;
  v93 = v69;
  v94 = v68;
  v95 = v34;
  v96 = v33;
  v97 = v35;
  v86 = v53;
  v87 = v69;
  v88 = v68;
  v89 = v34;
  v90 = v33;
  v91 = v35;
  sub_1C2E746F4();
  v36 = v76;
  sub_1C2E734D4();
  v37 = v63;
  v38 = v55;
  sub_1C2E74E84();
  (*(v77 + 8))(v36, v38);
  (*(v75 + 8))(v16, v14);
  v39 = v79;
  sub_1C2E73814();
  v40 = v61;
  v41 = v66;
  sub_1C2E74B14();
  (*(v80 + 8))(v39, v81);
  (*(v70 + 8))(v37, v41);
  CGPointMake();
  v102 = v42;

  v43 = swift_checkMetadataState();
  v44 = v60;
  v45 = v59;
  sub_1C2E74984();

  (*(v71 + 8))(v40, v21);
  IconButtonConfig.enabled.getter();
  v102 = v21;
  v103 = v43;
  v104 = v44;
  v105 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v54;
  sub_1C2E74DB4();
  (*(v64 + 8))(v31, v29);
  v48 = v82;
  sub_1C2E74254();
  v49 = sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  v98 = v46;
  v99 = v49;
  v50 = v65;
  swift_getWitnessTable();
  sub_1C2E74C04();
  (*(v83 + 8))(v48, v85);
  return (*(v67 + 8))(v47, v50);
}

uint64_t sub_1C2CBCE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_1C2C6EE48(v8);
  v14 = *(v6 + 8);
  v14(v8, a5);
  sub_1C2C6EE48(v12);
  return (v14)(v12, a5);
}

uint64_t sub_1C2CBCF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1C2E74264();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IconButtonStyle(0, a2, v7, v8);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v14 = type metadata accessor for IconButton.IconView(0, a2, v12, v13);
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  WitnessTable = swift_getWitnessTable();
  v40 = v14;
  v41 = WitnessTable;
  v32 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  v26 = *(a1 + *(*a1 + 136));
  (*(v33 + 16))(v11, a1 + *(*a1 + 128), v34, v23);
  sub_1C2CAD944(v26, v11, v27, v28, v16);

  v29 = v36;
  sub_1C2E74234();
  sub_1C2E74C04();
  (*(v37 + 8))(v29, v38);
  (*(v35 + 8))(v16, v14);
  v40 = v14;
  v41 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v21);
  v30 = *(v19 + 8);
  v30(v21, OpaqueTypeMetadata2);
  sub_1C2C6EE48(v25);
  return (v30)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_1C2CBD31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t IntelligenceActivityView.bottomViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  return v1;
}

void *sub_1C2CBD420@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  result = sub_1C2E75184();
  *a2 = v4;
  return result;
}

uint64_t sub_1C2CBD478(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  return sub_1C2E75194();
}

uint64_t (*IntelligenceActivityView.bottomViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  return sub_1C2CBE888;
}

uint64_t IntelligenceActivityView.$bottomViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceActivityView.participantLabelViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040, &qword_1C2E901A0);
  sub_1C2E75184();
  return v1;
}