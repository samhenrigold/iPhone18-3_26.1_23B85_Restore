char *sub_1B89D1AA0(uint64_t a1, char *a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B8A24554();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = &v6[-v7];
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1B8A24554();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1B89B3DCC(result, 1);

  return sub_1B89DD8C8(v7, v6, 1, v4);
}

void sub_1B89D1B8C(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v13 = a1;
    v4 = sub_1B8A24554();
    a1 = v13;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v14 = a1;
  v7 = a1 + 32;
  v18 = v4;
  v16 = a1 & 0xC000000000000001;
  v17 = v3;
  v15 = a1 + 32;
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x1B8CC44E0](v5, v14);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v7 + 8 * v5);
    }

    v9 = v8;
    v10 = 0;
    v11 = *(a2 + 16);
    while (v11 != v10)
    {
      sub_1B8A23904();
      sub_1B89D2040();
      ++v10;
      if (sub_1B8A23ED4())
      {

        return;
      }
    }

    v12 = __OFADD__(v5++, 1);
    v4 = v18;
    v6 = v16;
    v3 = v17;
    v7 = v15;
    if (v12)
    {
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1B89D1D3C(unint64_t *a1, uint64_t a2)
{
  v5 = a1;
  v6 = *a1;
  sub_1B89D1B8C(*a1, a2);
  v9 = v7;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1B8A24554();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v5;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_8:
    v11 = &v5[v10];
    v12 = v11[4];
    v11[4] = v2;

    *v25 = v6;
LABEL_9:
    v13 = __OFADD__(v9++, 1);
    if (v13)
    {
      goto LABEL_49;
    }

    v13 = __OFADD__(v10++, 1);
    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_11:
  if (v6 >> 62)
  {
    if (v10 == sub_1B8A24554())
    {
      return v9;
    }
  }

  else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v9;
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v6 + 8 * v10 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = MEMORY[0x1B8CC44E0](v10, v6);
LABEL_17:
  v15 = v14;
  v16 = 0;
  v17 = *(a2 + 16);
  while (v17 != v16)
  {
    sub_1B8A23904();
    sub_1B89D2040();
    ++v16;
    if (sub_1B8A23ED4())
    {

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        goto LABEL_48;
      }

      goto LABEL_11;
    }
  }

  if (v9 == v10)
  {
    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CC44E0](v9, v6);
    v18 = MEMORY[0x1B8CC44E0](v10, v6);
    goto LABEL_30;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 >= v19)
  {
    goto LABEL_52;
  }

  if (v10 >= v19)
  {
    goto LABEL_53;
  }

  v20 = *(v6 + 32 + 8 * v10);
  v2 = *(v6 + 32 + 8 * v9);
  v18 = v20;
LABEL_30:
  v21 = v18;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1B89D0994(v6);
    v22 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v22) = 0;
  }

  v5 = (v6 & 0xFFFFFFFFFFFFFF8);
  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v21;

  if ((v6 & 0x8000000000000000) != 0 || v22)
  {
    v6 = sub_1B89D0994(v6);
    v5 = (v6 & 0xFFFFFFFFFFFFFF8);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    __break(1u);
    return v9;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (v10 < v5[2])
  {
    goto LABEL_8;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return sub_1B8A24554();
}

unint64_t sub_1B89D2040()
{
  result = qword_1EBA91640;
  if (!qword_1EBA91640)
  {
    sub_1B8A23904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91640);
  }

  return result;
}

uint64_t StickerStore.__allocating_init(persistence:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StickerStore.init(persistence:)(a1);
  return v2;
}

uint64_t sub_1B89D20D8(uint64_t a1)
{
  v30 = sub_1B8A23904();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v47 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E7CC0];
  sub_1B8A0396C(0, 0, 0);
  v4 = v44;
  sub_1B89B090C(a1, v34);
  v5 = v41;
  v6 = __swift_project_boxed_opaque_existential_0(v40, v41);
  v7 = sub_1B89AA114(v34, v33);
  v45[2] = v37;
  v45[3] = v38;
  v46 = v39;
  v45[0] = v35;
  v45[1] = v36;
  v31[2] = v37;
  v31[3] = v38;
  v32 = v39;
  v31[0] = v35;
  v31[1] = v36;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v6, v5);
  sub_1B89A8FB4(v45, v42);
  sub_1B89B09B0(v33, v31, v9, v5, v42);
  result = sub_1B89B0BC8(v34);
  v29[2] = v2 + 32;
  while (1)
  {
    v12 = v43;
    v13 = v43 >> 62;
    if (v43 >> 62)
    {
      if (!sub_1B8A24554())
      {
LABEL_28:
        result = sub_1B89B0C1C();
        v21 = v43;
        v22 = v43 >> 62;
        if (v43 >> 62)
        {
          v28 = sub_1B8A24554();
          v20 = v47;
          if (!v28)
          {
LABEL_61:
            sub_1B89B44F4(0);
LABEL_62:
            sub_1B89B4780(v42);
            return v4;
          }

          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_75;
          }

          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v20 = v47;
          if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1B8CC44E0](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v23 = *(v21 + 32);
        }

        v15 = v23;
        if (v22)
        {
          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_70;
          }

          result = sub_1B8A24554();
          if (result < 1)
          {
            goto LABEL_71;
          }

          result = sub_1B8A24554();
        }

        else
        {
          result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_70;
          }
        }

        v24 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_67;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v22)
          {
            if (v24 > *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_46:
              v21 = sub_1B8A24674();
              v43 = v21;
            }

            sub_1B89DD6CC(0, 1, 0);
            v43 = v21;
            sub_1B89B44F4(v15);
            if (!v15)
            {
              goto LABEL_62;
            }

            goto LABEL_48;
          }
        }

        else if (!v22)
        {
          goto LABEL_46;
        }

        sub_1B8A24554();
        goto LABEL_46;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_72;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_73;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    v14 = MEMORY[0x1B8CC44E0](0, v12);
LABEL_7:
    v15 = v14;
    if (v13)
    {
      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_68;
      }

      result = sub_1B8A24554();
      if (result < 1)
      {
        goto LABEL_69;
      }

      result = sub_1B8A24554();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_68;
      }
    }

    v16 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_64;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v13)
      {
LABEL_19:
        sub_1B8A24554();
      }

LABEL_20:
      v12 = sub_1B8A24674();
      v17 = v12 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    v17 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_21:

    if (v12 >> 62)
    {
      result = sub_1B8A24554();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_74;
      }

      memmove((v17 + 32), (v17 + 40), 8 * (result - 1));
      result = sub_1B8A24554();
      v19 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v18 = *(v17 + 16);
      result = memmove((v17 + 32), (v17 + 40), 8 * v18 - 8);
      v19 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_65;
      }
    }

    *(v17 + 16) = v19;
    v43 = v12;
    v20 = v47;
LABEL_48:
    v25 = v30;
    (*(v2 + 16))(v20, v15 + OBJC_IVAR___STKSticker_identifier, v30);

    v44 = v4;
    v27 = *(v4 + 16);
    v26 = *(v4 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1B8A0396C((v26 > 1), v27 + 1, 1);
      v25 = v30;
      v4 = v44;
    }

    *(v4 + 16) = v27 + 1;
    result = (*(v2 + 32))(v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v20, v25);
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1B89D26F0()
{
  result = sub_1B8A23EF4();
  qword_1ED82E500 = result;
  return result;
}

uint64_t sub_1B89D274C()
{
  result = sub_1B8A23EF4();
  qword_1EBA91588 = result;
  return result;
}

uint64_t sub_1B89D27A8()
{
  v0 = sub_1B8A23784();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89B8558(v3);
  v4 = sub_1B8A236A4();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EBA91BC0 = v4;
  *algn_1EBA91BC8 = v6;
  return result;
}

uint64_t static StickerStore.sharedDirectoryLocation.getter()
{
  if (qword_1EBA916A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBA91BC0;

  return v0;
}

uint64_t sub_1B89D2920()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    _s8NotifierCMa();
    swift_allocObject();

    v1 = sub_1B8A085FC(v3);

    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t static StickerStore.createAPIStore()()
{
  v0 = type metadata accessor for StickerStore.PersistenceType(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1B8A23784();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 2, 3, v3);
  type metadata accessor for StickerStore();
  v5 = swift_allocObject();
  StickerStore.init(persistence:)(v2);
  v4(v2, 2, 3, v3);
  sub_1B89D2AFC(v2, 1, v8);
  sub_1B89DD868(v2, type metadata accessor for StickerStore.PersistenceType);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v5 + 16));
  sub_1B89D2F5C(v8, v5 + 16);
  swift_endAccess();
  return v5;
}

uint64_t sub_1B89D2AFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B8A23784();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerStore.PersistenceType(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89DEA2C(a1, v15, type metadata accessor for StickerStore.PersistenceType);
  v16 = (*(v7 + 48))(v15, 3, v6);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      (*(v7 + 56))(v12, 1, 2, v6);
      v20 = type metadata accessor for CoreDataDataMapper(0);
      swift_allocObject();
      v21 = a2 & 1;
      v22 = v12;
    }

    else
    {
      (*(v7 + 56))(v12, 2, 2, v6);
      v20 = type metadata accessor for CoreDataDataMapper(0);
      swift_allocObject();
      v22 = v12;
      v21 = 0;
    }

    result = sub_1B89EFC8C(v22, v21);
    v24 = &off_1F373ED58;
    a3[3] = v20;
  }

  else
  {
    if (!v16)
    {
      (*(v7 + 32))(v9, v15, v6);
      (*(v7 + 16))(v12, v9, v6);
      (*(v7 + 56))(v12, 0, 2, v6);
      v17 = type metadata accessor for CoreDataDataMapper(0);
      swift_allocObject();
      v18 = sub_1B89EFC8C(v12, 0);
      a3[3] = v17;
      a3[4] = &off_1F373ED58;
      *a3 = v18;
      return (*(v7 + 8))(v9, v6);
    }

    v23 = type metadata accessor for XPCDataMapper();
    result = swift_allocObject();
    *(result + 40) = &type metadata for XPCProxyProvider;
    *(result + 48) = &off_1F373EA20;
    v24 = &protocol witness table for XPCDataMapper;
    a3[3] = v23;
  }

  a3[4] = v24;
  *a3 = result;
  return result;
}

uint64_t StickerStore.init(persistence:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v1 + 64) = v3;
  sub_1B89D2AFC(a1, 0, v6);
  sub_1B89DD868(a1, type metadata accessor for StickerStore.PersistenceType);
  sub_1B89D2F5C(v6, v1 + 16);
  return v1;
}

uint64_t type metadata accessor for StickerStore.PersistenceType(uint64_t a1)
{
  result = qword_1ED82E528;
  if (!qword_1ED82E528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B89D2F5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t StickerStore.__allocating_init(dataMappper:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v2 + 64) = v3;
  sub_1B89D2F5C(a1, v2 + 16);
  return v2;
}

uint64_t StickerStore.init(dataMappper:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v1 + 64) = v3;
  sub_1B89D2F5C(a1, v1 + 16);
  return v1;
}

uint64_t sub_1B89D3090(char *a1)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B8A26260;
  v7 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v7, 1);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  LOBYTE(v13) = v10;
  *(&v13 + 1) = 0;
  *&v14 = 0;
  v15 = 0uLL;
  *(&v14 + 1) = v6;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = 8;
  v17 = 0;
  v8 = sub_1B89A9EC8(&v13);
  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  sub_1B89A9028(v11);
  return v8;
}

uint64_t sub_1B89D3270(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  *(v8 + 32) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD8, &unk_1B8A27040);
  v17 = sub_1B89CCD90(&qword_1EBA914A0, &qword_1EBA91BD8, &unk_1B8A27040, MEMORY[0x1E69E6328]);
  v15[0] = v8;
  v14 = v6;
  v13 = v7;
  sub_1B89D3700(v15, &v14, &v13, v18);
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (!v4)
  {
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v15[2] = v9;
    v16 = v10;
    sub_1B8A24074();
    v3 = v13;
    if (!v13)
    {
      sub_1B89C353C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v3;
}

id sub_1B89D3410()
{
  sub_1B89B090C(v0, v15);
  v1 = v22;
  v2 = __swift_project_boxed_opaque_existential_0(v21, v22);
  v3 = sub_1B89AA114(v15, v14);
  v25[2] = v18;
  v25[3] = v19;
  v26 = v20;
  v25[0] = v16;
  v25[1] = v17;
  v12[2] = v18;
  v12[3] = v19;
  v13 = v20;
  v12[0] = v16;
  v12[1] = v17;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v2, v1);
  sub_1B89A8FB4(v25, v23);
  sub_1B89B09B0(v14, v12, v5, v1, v23);
  sub_1B89B0BC8(v15);
  v7 = v24;
  v8 = v24 >> 62;
  if (v24 >> 62)
  {
    if (sub_1B8A24554())
    {
      result = sub_1B8A24554();
      if (!result)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (sub_1B8A24554())
      {
        goto LABEL_3;
      }

      __break(1u);
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8CC44E0](0, v7);
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 32);
      if (!v8)
      {
LABEL_6:
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
        if (v10)
        {
          sub_1B89D09F8(0, 1);
LABEL_33:
          sub_1B89B4780(v23);
          return v9;
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_18:
      v10 = sub_1B8A24554();
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  result = sub_1B89B0C1C();
  v7 = v24;
  v8 = v24 >> 62;
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_26:
    v9 = 0;
LABEL_32:
    sub_1B89B44F4(v9);
    goto LABEL_33;
  }

LABEL_22:
  if (!sub_1B8A24554())
  {
    goto LABEL_26;
  }

  result = sub_1B8A24554();
  if (result)
  {
    result = sub_1B8A24554();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_13:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v9 = *(v7 + 32);
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_28:
    v9 = MEMORY[0x1B8CC44E0](0, v7);
    if (v8)
    {
LABEL_29:
      result = sub_1B8A24554();
LABEL_30:
      if (result)
      {
        sub_1B89D09F8(0, 1);
        goto LABEL_32;
      }

      goto LABEL_35;
    }

LABEL_16:
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B89D3700@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void **a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a4;
  v5 = v4;
  v9 = sub_1B8A23984();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *a3;
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v15);
  (*(v17 + 16))(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B89DD820(&qword_1EBA91630, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1B8A244B4();
  LOBYTE(v46[0]) = v13;
  v18 = v44;
  v19 = sub_1B89D3090(v46);
  if (!v18)
  {
    LODWORD(v44) = v13;
    v20 = v14;
    v21 = v19;
    v22 = sub_1B8A23954();
    if ((v23 & 1) == 0 && (v22 & 0x8000000000000000) == 0 && v22 < v21)
    {
      v26 = sub_1B8A23944();
      if ((v27 & 1) == 0 && (v26 & 0x8000000000000000) == 0 && v26 < v21)
      {
        swift_beginAccess();
        sub_1B89AA114(v5 + 16, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
        v39 = *(v28 - 8);
        v40 = v28;
        v38 = *(v39 + 72);
        v29 = *(v39 + 80);
        v41 = v12;
        v30 = swift_allocObject();
        KeyPath = swift_getKeyPath();
        v42 = v20;
        sub_1B89A9148(v20);
        MEMORY[0x1B8CC3470](KeyPath, 1);
        sub_1B89AADD4(0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B8A26260;
        v33 = swift_getKeyPath();
        MEMORY[0x1B8CC3470](v33, 1);
        swift_setDeallocating();
        (*(v39 + 8))(v30 + ((v29 + 32) & ~v29), v40);
        swift_deallocClassInstance();
        v47 = 1;
        v45 = 0;
        v34 = v43;
        v43[3] = &type metadata for StickerSequence;
        v34[4] = sub_1B89DD7CC();
        v35 = swift_allocObject();
        *v34 = v35;
        *(v35 + 152) = sub_1B8A23964();
        *(v35 + 160) = sub_1B89DD820(&qword_1EBA91638, MEMORY[0x1E6969B30], MEMORY[0x1E6969B40]);
        __swift_allocate_boxed_opaque_existential_1((v35 + 128));
        v36 = v41;
        sub_1B8A23974();
        sub_1B89AA114(v46, v35 + 16);
        *(v35 + 56) = v44;
        v37 = v42;
        *(v35 + 64) = 0;
        *(v35 + 72) = v37;
        *(v35 + 88) = 0;
        *(v35 + 96) = 0;
        *(v35 + 80) = v32;
        *(v35 + 104) = 1;
        *(v35 + 112) = 8;
        *(v35 + 120) = 0;
        __swift_destroy_boxed_opaque_existential_0(v46);
        return (*(v10 + 8))(v36, v9);
      }
    }

    sub_1B89C353C();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  return (*(v10 + 8))(v12, v9);
}

id sub_1B89D3BB0(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  v9 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v9, 1);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v33[0] = 1;
  sub_1B89A9148(v2);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B8A26570;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B89AEE6C();
  *(v10 + 32) = 0x696669746E656469;
  *(v10 + 40) = 0xEA00000000007265;
  v11 = sub_1B8A238B4();
  *(v10 + 96) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  *(v10 + 104) = sub_1B89CD424();
  *(v10 + 72) = v11;
  v12 = sub_1B8A24204();
  LOBYTE(v34) = 2;
  *(&v34 + 1) = v12;
  *&v35 = v2;
  v36 = 0;
  v37 = 0;
  *(&v35 + 1) = v8;
  LOBYTE(v38) = 1;
  *(&v38 + 1) = 8;
  v39 = 0;
  v30 = 0u;
  v31 = v38;
  v32 = 0;
  v28 = v34;
  v29 = v35;
  sub_1B89A8FB4(&v34, v19);
  v13 = v16;
  v14 = v40;
  sub_1B89AFE74(&v28, v33);
  v17[2] = v30;
  v17[3] = v31;
  v18 = v32;
  v17[0] = v28;
  v17[1] = v29;
  sub_1B89A9028(v17);
  if (!v14)
  {
    v13 = sub_1B89D3410();
    sub_1B89B0BC8(v33);
  }

  v19[0] = 2;
  v20 = v12;
  v21 = v2;
  v23 = 0;
  v24 = 0;
  v22 = v8;
  v25 = 1;
  v26 = 8;
  v27 = 0;
  sub_1B89A9028(v19);
  return v13;
}

uint64_t sub_1B89D3F20@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a1;
  v25 = a3;
  v26 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  v9 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v9, 1);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  LOBYTE(v46[0]) = 1;
  LOBYTE(v41) = 0;
  v10 = v26;
  sub_1B89A9148(v26);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8A26570;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B89AEE6C();
  *(v11 + 32) = 0x696669746E656469;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  MEMORY[0x1EEE9AC00](v12);
  (*(v14 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8A23904();
  v15 = sub_1B8A24144();
  *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  *(v11 + 104) = sub_1B89CCD90(&qword_1EBA91AC0, &qword_1EBA91AB8, &unk_1B8A265F0, MEMORY[0x1E6969E28]);
  *(v11 + 72) = v15;
  v16 = sub_1B8A24204();
  LOBYTE(v50) = 2;
  *(&v50 + 1) = *v49;
  DWORD1(v50) = *&v49[3];
  *(&v50 + 1) = v16;
  *&v51 = v10;
  v52 = 0;
  v53 = 0;
  *(&v51 + 1) = v8;
  LOBYTE(v54) = 1;
  *(&v54 + 1) = *v48;
  DWORD1(v54) = *&v48[3];
  *(&v54 + 1) = 8;
  v55 = 0;
  v43 = 0u;
  v44 = v54;
  v45 = 0;
  v41 = v50;
  v42 = v51;
  sub_1B89A8FB4(&v50, &v30);
  v17 = v56;
  sub_1B89AFE74(&v41, v46);
  v28[2] = v43;
  v28[3] = v44;
  v29 = v45;
  v28[0] = v41;
  v28[1] = v42;
  sub_1B89A9028(v28);
  if (!v17)
  {
    v18 = v25;
    v25[3] = &type metadata for StickerSequence;
    v18[4] = sub_1B89DD7CC();
    v19 = swift_allocObject();
    *v18 = v19;
    v20 = v46[7];
    *(v19 + 112) = v46[6];
    *(v19 + 128) = v20;
    *(v19 + 144) = v46[8];
    *(v19 + 160) = v47;
    v21 = v46[3];
    *(v19 + 48) = v46[2];
    *(v19 + 64) = v21;
    v22 = v46[5];
    *(v19 + 80) = v46[4];
    *(v19 + 96) = v22;
    v23 = v46[1];
    *(v19 + 16) = v46[0];
    *(v19 + 32) = v23;
  }

  v30 = 2;
  *v31 = *v49;
  *&v31[3] = *&v49[3];
  v32 = v16;
  v33 = v10;
  v35 = 0;
  v36 = 0;
  v34 = v8;
  v37 = 1;
  *v38 = *v48;
  *&v38[3] = *&v48[3];
  v39 = 8;
  v40 = 0;
  return sub_1B89A9028(&v30);
}

uint64_t *sub_1B89D43E8(uint64_t a1, uint64_t a2, id *a3)
{
  v42 = a2;
  v43 = a1;
  v38 = sub_1B8A23904();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Sticker.URIType(0);
  v5 = MEMORY[0x1EEE9AC00](v39);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = (&v35 - v7);
  v70 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v13 = v42;
  v14 = swift_allocObject();
  v14[1] = xmmword_1B8A26260;
  v15 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v15, 1);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  v62[0] = 1;
  LOBYTE(v57) = 0;
  v16 = v70;
  sub_1B89A9148(v70);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B8A26570;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1B89AEE6C();
  *(v17 + 32) = 0x6C616E7265747865;
  *(v17 + 40) = 0xEB00000000495255;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  v20 = v16;
  v21 = v43;
  *(v17 + 64) = v19;
  *(v17 + 72) = v21;
  *(v17 + 80) = v13;

  v22 = sub_1B8A24204();
  LOBYTE(v65) = 2;
  *(&v65 + 1) = v22;
  *&v66 = v20;
  v67 = 0uLL;
  *(&v66 + 1) = v14;
  LOBYTE(v68) = 1;
  v23 = v45;
  *(&v68 + 1) = 8;
  v69 = 0;
  v59 = 0uLL;
  v60 = v68;
  v61 = 0;
  v57 = v65;
  v58 = v66;
  sub_1B89A8FB4(&v65, &v52);
  v24 = v44;
  sub_1B89AFE74(&v57, v62);
  if (!v24)
  {
    v25 = v41;
    v54 = v59;
    v55 = v60;
    v56 = v61;
    v52 = v57;
    v53 = v58;
    sub_1B89A9028(&v52);
    v26 = sub_1B89D3410();
    if (v26)
    {
      v23 = v26;
    }

    else
    {
      type metadata accessor for Sticker(0);
      sub_1B8A007C0(v25);
      v23 = v40;
      sub_1B89DEA2C(v25, v40, type metadata accessor for Sticker.URIType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if ((EnumCaseMultiPayload - 2) >= 3)
        {
          sub_1B89C353C();
          swift_allocError();
          *v34 = 3;
        }

        else
        {
          v29 = v23;
          v23 = type metadata accessor for Sticker.URIType;
          sub_1B89DD868(v29, type metadata accessor for Sticker.URIType);
          sub_1B89C353C();
          swift_allocError();
          *v30 = 2;
        }

        swift_willThrow();
        sub_1B89DD868(v25, type metadata accessor for Sticker.URIType);
        sub_1B89B0BC8(v62);
        goto LABEL_3;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = *v23;
        v51 = *(v23 + 8);
        v46[0] = 0;
        v23 = sub_1B89D3270(v33, &v51, v46);
        sub_1B89AADD4(0);
      }

      else
      {
        v32 = v36;
        v31 = v37;
        (*(v36 + 32))(v37, v23, v38);
        v46[0] = 0;
        v23 = sub_1B89D3BB0(v31, v46);
        sub_1B89AADD4(0);
        (*(v32 + 8))(v31, v38);
      }

      sub_1B89DD868(v25, type metadata accessor for Sticker.URIType);
    }

    sub_1B89B0BC8(v62);
    LOBYTE(v46[0]) = 2;
    *(v46 + 1) = *v64;
    HIDWORD(v46[0]) = *&v64[3];
    v46[1] = v22;
    v46[2] = v70;
    v46[4] = 0;
    v46[5] = 0;
    v46[3] = v14;
    v47 = 1;
    *v48 = *v63;
    *&v48[3] = *&v63[3];
    v49 = 8;
    v50 = 0;
    sub_1B89A9028(v46);
    return v23;
  }

  v54 = v59;
  v55 = v60;
  v56 = v61;
  v52 = v57;
  v53 = v58;
  sub_1B89A9028(&v52);
LABEL_3:
  LOBYTE(v57) = 2;
  *(&v57 + 1) = *v64;
  DWORD1(v57) = *&v64[3];
  *(&v57 + 1) = v22;
  *&v58 = v70;
  v59 = 0uLL;
  *(&v58 + 1) = v14;
  LOBYTE(v60) = 1;
  *(&v60 + 1) = *v63;
  DWORD1(v60) = *&v63[3];
  *(&v60 + 1) = 8;
  v61 = 0;
  sub_1B89A9028(&v57);
  return v23;
}

uint64_t sub_1B89D4ABC(uint64_t a1, uint64_t a2, void **a3)
{
  v56 = a1;
  v21 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v9 = swift_allocObject();
  v9[1] = xmmword_1B8A26260;
  v10 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v10, 1);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  v38 = 1;
  sub_1B89A9148(v21);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8A26570;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1B89AEE6C();
  *(v11 + 32) = 0x6C616E7265747865;
  *(v11 + 40) = 0xEB00000000495255;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  v14 = v56;
  *(v11 + 64) = v13;
  *(v11 + 72) = v14;
  *(v11 + 80) = a2;

  v15 = sub_1B8A24204();
  LOBYTE(v51) = 2;
  *(&v51 + 1) = v15;
  *&v52 = v21;
  v53 = 0uLL;
  *(&v52 + 1) = v9;
  LOBYTE(v54) = 1;
  *(&v54 + 1) = 8;
  v55 = 0;
  v35 = 0uLL;
  v36 = v54;
  v37 = 0;
  v33 = v51;
  v34 = v52;
  sub_1B89A8FB4(&v51, &v28);
  v16 = v20;
  sub_1B89AFE74(&v33, &v38);
  if (!v22)
  {
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    sub_1B89A9028(&v28);
    sub_1B89B035C(&v38);
    v16 = v17;
    sub_1B89B0BC8(&v38);
    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      if (sub_1B8A24554())
      {
        goto LABEL_7;
      }
    }

    else if (*(v16 + 16))
    {
LABEL_7:
      LOBYTE(v23[0]) = 2;
      *(v23 + 1) = *v50;
      HIDWORD(v23[0]) = *&v50[3];
      v23[1] = v15;
      v23[2] = v21;
      v23[4] = 0;
      v23[5] = 0;
      v23[3] = v9;
      v24 = 1;
      *v25 = *v49;
      *&v25[3] = *&v49[3];
      v26 = 8;
      v27 = 0;
      sub_1B89A9028(v23);
      return v16;
    }

    v23[0] = 0;
    v19 = sub_1B89D43E8(v56, a2, v23);
    sub_1B89AADD4(0);
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1B8A26280;
      *(v16 + 32) = v19;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_7;
  }

  v30 = v35;
  v31 = v36;
  v32 = v37;
  v28 = v33;
  v29 = v34;
  sub_1B89A9028(&v28);
  v38 = 2;
  *v39 = *v50;
  *&v39[3] = *&v50[3];
  v40 = v15;
  v41 = v21;
  v43 = 0;
  v44 = 0;
  v42 = v9;
  v45 = 1;
  *v46 = *v49;
  *&v46[3] = *&v49[3];
  v47 = 8;
  v48 = 0;
  sub_1B89A9028(&v38);
  return v16;
}

uint64_t sub_1B89D4F18@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8A26260;
  v10 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v10, 1);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  v18[0] = 0;
  sub_1B89A9148(v3);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8A26570;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B89AEE6C();
  *(v11 + 32) = 0x6C616E7265747865;
  *(v11 + 40) = 0xEB00000000495255;
  *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  *(v11 + 104) = sub_1B89CCD90(&qword_1EBA91AC8, &unk_1EBA91F40, &unk_1B8A27050, MEMORY[0x1E6969E28]);
  *(v11 + 72) = a1;

  v12 = sub_1B8A24204();
  LOBYTE(v32) = 2;
  *(&v32 + 1) = v12;
  *&v33 = v3;
  v34 = 0;
  v35 = 0;
  *(&v33 + 1) = v9;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = 8;
  v37 = 0;
  v29 = 0u;
  v30 = v36;
  v31 = 0;
  v27 = v32;
  v28 = v33;
  sub_1B89A8FB4(&v32, v18);
  sub_1B89AFE74(&v27, a3);
  v16[2] = v29;
  v16[3] = v30;
  v17 = v31;
  v16[0] = v27;
  v16[1] = v28;
  sub_1B89A9028(v16);
  v18[0] = 2;
  v19 = v12;
  v20 = v3;
  v22 = 0;
  v23 = 0;
  v21 = v9;
  v24 = 1;
  v25 = 8;
  v26 = 0;
  return sub_1B89A9028(v18);
}

char *sub_1B89D524C(_BYTE *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v105 - v5;
  v7 = sub_1B8A23934();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8A23904();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[OBJC_IVAR___STKSticker_type] & 1) == 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v49 = 5;
    swift_willThrow();
    return v6;
  }

  v128 = v8;
  v129 = v7;
  v110 = v6;
  v131 = v2;
  v132 = v1;
  v14 = OBJC_IVAR___STKSticker_representations;
  v137 = v11;
  swift_beginAccess();
  v141 = v10;
  v15 = *&a1[v14];
  v16 = &a1[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v17 = v16[1];
  v120 = *v16;
  v18 = &a1[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v19 = *v18;
  v136 = v13;
  v138 = v18[1];
  v20 = v138;
  v139 = v19;

  v119 = v17;

  sub_1B89C3C44(v19, v20);
  v21 = sub_1B8A238A4();
  v144 = 0xD00000000000001BLL;
  v145 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v21);

  v116 = v145;
  v117 = v144;
  v22 = &a1[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v23 = v22[1];
  v118 = *v22;
  v133 = v23;
  v24 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v134 = *&a1[v24];
  v25 = &a1[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v26 = v25[1];
  v123 = *v25;
  v135 = v26;
  v27 = &a1[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v28 = v27[1];
  v125 = *v27;
  v130 = a1;
  v29 = &a1[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v30 = v29[1];
  v127 = *v29;
  v122 = type metadata accessor for Sticker(0);
  v31 = objc_allocWithZone(v122);
  v32 = &v31[OBJC_IVAR___STKSticker_accessibilityName];
  *v32 = 0;
  v32[1] = 0;
  v115 = v32;
  v33 = &v31[OBJC_IVAR___STKSticker_searchText];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v31[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v31[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v31[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v36 = 0;
  v36[1] = 0;
  v111 = &v31[OBJC_IVAR___STKSticker_metadata];
  *&v31[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v37 = &v31[OBJC_IVAR___STKSticker_externalURI];
  *v37 = 0;
  v37[1] = 0;
  v113 = v37;
  v114 = &v31[OBJC_IVAR___STKSticker_attributionInfo];
  *&v31[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  v38 = v137;
  v39 = v141;
  v108 = *(v137 + 56);
  v109 = v137 + 56;
  v108(&v31[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v141);
  v31[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v40 = v134;
  v41 = v136;
  sub_1B89C3C44(v139, v138);
  v126 = v30;

  v112 = v40;

  v124 = v28;

  sub_1B8A238F4();
  v31[OBJC_IVAR___STKSticker_type] = 0;
  v106 = *(v38 + 16);
  v107 = v38 + 16;
  v106(&v31[OBJC_IVAR___STKSticker_identifier], v41, v39);
  v121 = v31;
  *&v31[OBJC_IVAR___STKSticker_representations] = v15;
  if (v15 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v43 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v143 = MEMORY[0x1E69E7CC0];

      sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_33:
        v6 = MEMORY[0x1B8CC44E0](0, v28);
        v101 = MEMORY[0x1B8CC44E0](1, v28);
        goto LABEL_28;
      }

      v43 = v143;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v44 = 0;
        v30 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
        do
        {
          v45 = MEMORY[0x1B8CC44E0](v44, v15);
          v46 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v28 = *(v45 + v46);
          swift_unknownObjectRelease();
          v143 = v43;
          v48 = v43[2];
          v47 = v43[3];
          if (v48 >= v47 >> 1)
          {
            sub_1B8A0394C((v47 > 1), v48 + 1, 1);
            v43 = v143;
          }

          ++v44;
          v43[2] = v48 + 1;
          v43[v48 + 4] = v28;
        }

        while (i != v44);
      }

      else
      {
        v30 = 32;
        do
        {
          v50 = *(v15 + v30);
          v51 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v28 = *(v50 + v51);
          v143 = v43;
          v53 = v43[2];
          v52 = v43[3];
          if (v53 >= v52 >> 1)
          {
            sub_1B8A0394C((v52 > 1), v53 + 1, 1);
            v43 = v143;
          }

          v43[2] = v53 + 1;
          v43[v53 + 4] = v28;
          v30 += 8;
          --i;
        }

        while (i);
      }
    }

    v54 = v43[2];
    v55 = 0;
    if (!v54)
    {
      break;
    }

    v56 = v43 + 4;
    while (1)
    {
      v57 = *v56++;
      v58 = __OFADD__(v55, v57);
      v55 += v57;
      if (v58)
      {
        break;
      }

      if (!--v54)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

LABEL_22:
  v59 = v141;

  v60 = v120;
  v61 = v121;
  *&v121[OBJC_IVAR___STKSticker_byteCount] = v55;
  v62 = &v61[OBJC_IVAR___STKSticker_name];
  v63 = v119;
  *v62 = v60;
  v62[1] = v63;
  *&v61[OBJC_IVAR___STKSticker_effect] = 0;
  v64 = v111;
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = v138;
  v68 = v139;
  *v64 = v139;
  v64[1] = v67;
  sub_1B89C3C44(v68, v67);
  sub_1B89B4A04(v65, v66);
  v69 = v113;
  swift_beginAccess();
  v70 = v116;
  *v69 = v117;
  v69[1] = v70;

  v71 = v115;
  swift_beginAccess();
  v72 = v133;
  *v71 = v118;
  v71[1] = v72;

  v73 = v114;
  swift_beginAccess();
  v74 = *v73;
  *v73 = v134;
  v75 = v112;
  v134 = v75;

  v76 = [objc_opt_self() currentEnvironment];
  v77 = [v76 timeProvider];

  [v77 timestamp];
  v79 = v78;
  swift_unknownObjectRelease();
  *&v61[OBJC_IVAR___STKSticker_creationDate] = v79;
  *&v61[OBJC_IVAR___STKSticker_lastUsedDate] = v79;
  *&v61[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v142 = __PAIR128__(v122, v61);
  v80 = objc_msgSendSuper2(&v142, sel_init);
  sub_1B89FE9A8();

  (*(v137 + 8))(v136, v59);
  sub_1B89B4A04(v68, v67);
  v81 = &v80[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v82 = v135;
  *v81 = v123;
  v81[1] = v82;
  v83 = v80;

  v84 = &v83[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  *v84 = 0;
  v84[1] = 0;

  v85 = &v83[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v86 = v124;
  *v85 = v125;
  v85[1] = v86;

  v87 = &v83[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v88 = v126;
  *v87 = v127;
  v87[1] = v88;

  v89 = v140;
  sub_1B8A23924();
  v90 = sub_1B8A23914();
  v92 = v91;

  sub_1B89B4A04(v68, v67);
  (*(v128 + 8))(v89, v129);
  *v84 = v90;
  v84[1] = v92;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8A26FE0;
  v94 = v130;
  *(inited + 32) = v130;
  v6 = (inited + 32);
  *(inited + 40) = v83;
  v30 = v83;
  v95 = v94;
  v96 = v131;
  v97 = sub_1B89D6150(inited);
  if (v96)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    return v6;
  }

  v28 = v97;
  v15 = v141;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  v99 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v99)
  {
    if (v99 != 1)
    {
      v100 = *(v28 + 40);
      v6 = *(v28 + 32);
      v101 = v100;
LABEL_28:
      v102 = v101;

      v103 = v110;
      v106(v110, &v102[OBJC_IVAR___STKSticker_identifier], v15);
      v108(v103, 0, 1, v15);
      v104 = OBJC_IVAR___STKSticker__companionRecentUUID;
      swift_beginAccess();
      sub_1B89DD9E4(v103, &v6[v104]);
      swift_endAccess();
      sub_1B89D2920();
      sub_1B8A07D10();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B89D5E3C(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v25 - v9);
  v31 = v8;
  v11 = &v25 + *(v8 + 48) - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v12 = *(v26 + 48);
  v13 = sub_1B8A17FE0(v11, a1);
  *v10 = v14;
  *&v11[v12] = v13;
  swift_beginAccess();
  sub_1B89AA114(v2 + 16, v30);
  v15 = type metadata accessor for StickerStore();
  v28 = v15;
  v29 = &off_1F373ECA0;
  v27[0] = v2;
  type metadata accessor for StickerStore.AddStickerMethod();
  inited = swift_initStackObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  inited[7] = *v19;
  inited[10] = v15;
  inited[11] = &off_1F373ECA0;
  sub_1B89D2F5C(v30, (inited + 2));

  __swift_destroy_boxed_opaque_existential_0(v27);
  v21 = v25;
  v25 = sub_1B89DC134(a1);
  if (!v21)
  {
    sub_1B89D2920();
    sub_1B8A07D10();
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(inited + 2);
  __swift_destroy_boxed_opaque_existential_0(inited + 7);
  sub_1B89AF268(v10, v7, &qword_1EBA91BD0, qword_1B8A26FF0);
  v22 = (v7 + *(v31 + 48));
  sub_1B8A1A7A0(v22, *(v22 + *(v26 + 48)), *v7);

  sub_1B89A8A78(v10, &qword_1EBA91BD0, qword_1B8A26FF0);
  v23 = sub_1B8A23B14();
  (*(*(v23 - 8) + 8))(v22, v23);
  return v25;
}

double *sub_1B89D6150(unint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v46 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v41 - v8);
  v10 = &v41 + *(v7 + 48) - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v11 = *(v45 + 48);
  v12 = sub_1B8A18688(v10, a1);
  *v9 = v13;
  *&v10[v11] = v12;
  swift_beginAccess();
  sub_1B89AA114((v1 + 2), v52);
  v14 = type metadata accessor for StickerStore();
  v50 = v14;
  v51 = &off_1F373ECA0;
  v49[0] = v1;
  type metadata accessor for StickerStore.AddStickerMethod();
  inited = swift_initStackObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  inited[7] = *v18;
  inited[10] = v14;
  inited[11] = &off_1F373ECA0;
  v48 = inited;
  sub_1B89D2F5C(v52, (inited + 2));

  __swift_destroy_boxed_opaque_existential_0(v49);
  v20 = a1;
  v44 = inited + 7;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v40)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v23 = v20;
    v41 = v1;
    v53 = MEMORY[0x1E69E7CC0];
    v1 = &v53;
    result = sub_1B8A246D4();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v42 = v4;
    v43 = v9;
    v25 = 0;
    v26 = v23;
    v4 = v23 & 0xC000000000000001;
    v20 = &v54;
    v47 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v4)
      {
        v27 = MEMORY[0x1B8CC44E0](v25, v26);
      }

      else
      {
        if (v25 >= *(v47 + 16))
        {
          goto LABEL_18;
        }

        v27 = *(v26 + 8 * v25 + 32);
      }

      v28 = v27;
      sub_1B89DC134(v27);
      if (v2)
      {
        v34 = v48;
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0(v34 + 2);
        __swift_destroy_boxed_opaque_existential_0(v44);

        v35 = v43;
        v36 = v46;
        sub_1B89AF268(v43, v46, &qword_1EBA91BD0, qword_1B8A26FF0);
        v37 = *v36;
        v22 = (v36 + *(v42 + 48));
        sub_1B8A1AB54(v22, *(v22 + *(v45 + 48)), v37);

        sub_1B89A8A78(v35, &qword_1EBA91BD0, qword_1B8A26FF0);
        v38 = sub_1B8A23B14();
        (*(*(v38 - 8) + 8))(v22, v38);
        return v22;
      }

      v1 = &v53;
      sub_1B8A246B4();
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
      ++v25;
      v26 = v23;
      if (v9 == i)
      {
        v22 = v53;
        v9 = v43;
        v4 = v42;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v39 = v20;
    v40 = sub_1B8A24554();
    v20 = v39;
  }

LABEL_14:
  sub_1B89D2920();
  sub_1B8A07D10();

  v29 = v48;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v29 + 2);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v30 = v46;
  sub_1B89AF268(v9, v46, &qword_1EBA91BD0, qword_1B8A26FF0);
  v31 = *v30;
  v32 = (v30 + *(v4 + 48));
  sub_1B8A1AB54(v32, *(v32 + *(v45 + 48)), v31);

  sub_1B89A8A78(v9, &qword_1EBA91BD0, qword_1B8A26FF0);
  v33 = sub_1B8A23B14();
  (*(*(v33 - 8) + 8))(v32, v33);
  return v22;
}

void sub_1B89D6690(uint64_t a1)
{
  v109 = sub_1B8A23904();
  v80 = *(v109 - 8);
  v3 = MEMORY[0x1EEE9AC00](v109);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v89 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v76 - v11);
  v13 = &v76 + *(v10 + 48) - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v14 = *(v81 + 48);
  v15 = sub_1B8A18F94(v13, a1);
  *v12 = v16;
  *&v13[v14] = v15;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, &v93);
  v17 = v95;
  v18 = v96;
  __swift_project_boxed_opaque_existential_0(&v93, v95);
  v19 = *(v18 + 32);
  v86 = a1;
  v20 = v88;
  v19(a1, v17, v18);
  if (v20)
  {
    v82 = v20;
    __swift_destroy_boxed_opaque_existential_0(&v93);
    sub_1B89AF268(v12, v9, &qword_1EBA91BD0, qword_1B8A26FF0);
    v21 = (v9 + *(v6 + 48));
    sub_1B8A1A2B4(v21, *(v21 + *(v81 + 48)), *v9);

    v22 = v12;
    goto LABEL_86;
  }

  v83 = v1;
  v77 = v12;
  v78 = v9;
  v76 = v6;
  __swift_destroy_boxed_opaque_existential_0(&v93);
  v23 = v86;
  v24 = *(v86 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v82 = 0;
    v101[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A038E8(0, v24, 0);
    v26 = *(v80 + 16);
    v25 = v101[0];
    v27 = v23 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v86 = 0x80000001B8A2A9A0;
    v87 = v26;
    v28 = *(v80 + 72);
    v88 = (v80 + 16);
    v84 = (v80 + 8);
    v85 = v28;
    v29 = v109;
    v30 = v89;
    do
    {
      v87(v30, v27, v29);
      v31 = sub_1B8A238A4();
      v93 = 0xD00000000000001BLL;
      v94 = v86;
      MEMORY[0x1B8CC3E20](v31);
      v29 = v109;

      v32 = v93;
      v33 = v94;
      (*v84)(v30, v29);
      v101[0] = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B8A038E8((v34 > 1), v35 + 1, 1);
        v29 = v109;
        v25 = v101[0];
      }

      *(v25 + 16) = v35 + 1;
      v36 = v25 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v27 += v85;
      --v24;
      v30 = v89;
    }

    while (v24);
    v37 = v82;
  }

  else
  {
    v37 = 0;
  }

  v100 = 0;
  v38 = v83;
  sub_1B89D4F18(v25, &v100, v101);
  v39 = v78;
  v40 = v81;
  v82 = v37;
  if (v37)
  {
    sub_1B89AADD4(0);

LABEL_12:
    v41 = v77;
    sub_1B89AF268(v77, v39, &qword_1EBA91BD0, qword_1B8A26FF0);
    v42 = *v39;
    v43 = *(v76 + 48);
    goto LABEL_85;
  }

  sub_1B89AADD4(0);

  v44 = v108;
  v45 = __swift_project_boxed_opaque_existential_0(v107, v108);
  v46 = sub_1B89AA114(v101, v92);
  v98[2] = v104;
  v98[3] = v105;
  v99 = v106;
  v98[0] = v102;
  v98[1] = v103;
  v90[2] = v104;
  v90[3] = v105;
  v91 = v106;
  v90[0] = v102;
  v90[1] = v103;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48, v45, v44);
  sub_1B89A8FB4(v98, &v93);
  sub_1B89B09B0(v92, v90, v48, v44, &v93);
  v87 = (v80 + 32);
  v88 = (v80 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  v50 = v38;
  while (1)
  {
    v52 = v97;
    v53 = v97 >> 62;
    if (v97 >> 62)
    {
      break;
    }

    if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_21:
    if ((v52 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1B8CC44E0](0, v52);
    }

    else
    {
      if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        return;
      }

      v54 = *(v52 + 32);
    }

    v55 = v54;
    if (v53)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_92;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_93;
      }

      v56 = sub_1B8A24554();
    }

    else
    {
      v56 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
        goto LABEL_92;
      }
    }

    v57 = v56 - 1;
    if (__OFSUB__(v56, 1))
    {
      goto LABEL_88;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v53)
      {
LABEL_36:
        sub_1B8A24554();
      }

LABEL_37:
      v52 = sub_1B8A24674();
      v58 = v52 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_38;
    }

    if (v53)
    {
      goto LABEL_36;
    }

    v58 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v57 > *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

LABEL_38:

    if (v52 >> 62)
    {
      v68 = sub_1B8A24554();
      if (__OFSUB__(v68, 1))
      {
        goto LABEL_98;
      }

      memmove((v58 + 32), (v58 + 40), 8 * (v68 - 1));
      v69 = sub_1B8A24554();
      v60 = v69 - 1;
      if (__OFSUB__(v69, 1))
      {
        goto LABEL_89;
      }
    }

    else
    {
      v59 = *(v58 + 16);
      memmove((v58 + 32), (v58 + 40), 8 * v59 - 8);
      v60 = v59 - 1;
      if (__OFSUB__(v59, 1))
      {
        goto LABEL_89;
      }
    }

    *(v58 + 16) = v60;
    v97 = v52;
    v50 = v83;
LABEL_17:
    if (v55[OBJC_IVAR___STKSticker_type])
    {
    }

    else
    {
      (*v88)(v79, &v55[OBJC_IVAR___STKSticker_identifier], v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_1B89DCF18(0, v89[2] + 1, 1, v89, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
      }

      v62 = v89[2];
      v61 = v89[3];
      if (v62 >= v61 >> 1)
      {
        v89 = sub_1B89DCF18((v61 > 1), v62 + 1, 1, v89, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
      }

      v63 = v89;
      v89[2] = v62 + 1;
      (*(v80 + 32))(v63 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v62, v79, v109);
    }
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_96;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_97;
    }

    goto LABEL_21;
  }

LABEL_50:
  sub_1B89B0C1C();
  v51 = v97;
  v64 = v97 >> 62;
  if (!(v97 >> 62))
  {
    if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

    goto LABEL_52;
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_99;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_100;
    }

LABEL_52:
    if ((v51 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x1B8CC44E0](0, v51);
    }

    else
    {
      if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v65 = *(v51 + 32);
    }

    v55 = v65;
    if (v64)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_94;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_95;
      }

      v66 = sub_1B8A24554();
    }

    else
    {
      v66 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_94;
      }
    }

    v67 = v66 - 1;
    if (__OFSUB__(v66, 1))
    {
      goto LABEL_91;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v64)
      {
        if (v67 > *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_15;
        }

LABEL_16:
        sub_1B89DD6CC(0, 1, 0);
        v97 = v51;
        sub_1B89B44F4(v55);
        if (!v55)
        {
          goto LABEL_79;
        }

        goto LABEL_17;
      }
    }

    else if (!v64)
    {
LABEL_15:
      v51 = sub_1B8A24674();
      v97 = v51;
      goto LABEL_16;
    }

    sub_1B8A24554();
    goto LABEL_15;
  }

LABEL_78:
  sub_1B89B44F4(0);
LABEL_79:
  sub_1B89B4780(&v93);
  v70 = v89;
  if (v89[2])
  {
    sub_1B89AA114(v50 + 16, &v93);
    v71 = v95;
    v72 = v96;
    __swift_project_boxed_opaque_existential_0(&v93, v95);
    v73 = v82;
    (*(v72 + 32))(v70, v71, v72);
    v40 = v81;
    v82 = v73;
    if (v73)
    {
      sub_1B89B0BC8(v101);

      __swift_destroy_boxed_opaque_existential_0(&v93);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(&v93);
    v74 = v76;
    v41 = v77;
  }

  else
  {

    v74 = v76;
    v41 = v77;
    v40 = v81;
  }

  sub_1B89D2920();
  sub_1B8A07D10();

  sub_1B89B0BC8(v101);
  sub_1B89AF268(v41, v39, &qword_1EBA91BD0, qword_1B8A26FF0);
  v42 = *v39;
  v43 = *(v74 + 48);
LABEL_85:
  v21 = (v39 + v43);
  sub_1B8A1A2B4((v39 + v43), *(v39 + v43 + *(v40 + 48)), v42);

  v22 = v41;
LABEL_86:
  sub_1B89A8A78(v22, &qword_1EBA91BD0, qword_1B8A26FF0);
  v75 = sub_1B8A23B14();
  (*(*(v75 - 8) + 8))(v21, v75);
}

uint64_t sub_1B89D71FC()
{
  swift_beginAccess();
  sub_1B89AA114(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1B89D7290(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22[-v10];
  v12 = &v22[*(v9 + 48) - v10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v14 = *(v13 + 48);
  v15 = sub_1B8A18F94(v12, a1);
  *v11 = v16;
  *&v12[v14] = v15;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v23);
  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v18 + 32))(a1, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (!v2)
  {
    sub_1B89D2920();
    sub_1B8A07D10();
  }

  sub_1B89AF268(v11, v8, &qword_1EBA91BD0, qword_1B8A26FF0);
  v19 = (v8 + *(v5 + 48));
  sub_1B8A1A2B4(v19, *(v19 + *(v13 + 48)), *v8);

  sub_1B89A8A78(v11, &qword_1EBA91BD0, qword_1B8A26FF0);
  v20 = sub_1B8A23B14();
  return (*(*(v20 - 8) + 8))(v19, v20);
}

uint64_t sub_1B89D74B4(char *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v64 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v61 - v8);
  v10 = &v61 + *(v7 + 48) - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v11 = *(v69 + 48);
  v12 = sub_1B8A194B4(v10, a1);
  *v9 = v13;
  *&v10[v11] = v12;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, &v65);
  v14 = v67;
  v15 = v68;
  __swift_project_boxed_opaque_existential_0(&v65, v67);
  (*(v15 + 40))(a1, v14, v15);
  if (v2)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_0(&v65);
    goto LABEL_24;
  }

  __swift_destroy_boxed_opaque_existential_0(&v65);
  if (a1[OBJC_IVAR___STKSticker_type] != 1)
  {
    goto LABEL_23;
  }

  v62 = v1;
  v16 = sub_1B8A238A4();
  v65 = 0xD00000000000001BLL;
  v66 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v16);

  v17 = v65;
  v65 = 0;
  v18 = sub_1B89D4ABC(v17, v66, &v65);
  sub_1B89AADD4(0);

  v61 = 0;
  if (v18 >> 62)
  {
LABEL_21:
    v19 = sub_1B8A24554();
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_22:

    goto LABEL_23;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_6:
  v20 = 0;
  v63 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1B8CC44E0](v20, v18);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_16;
    }

LABEL_10:
    if (v21[OBJC_IVAR___STKSticker_type] != 1)
    {
      goto LABEL_17;
    }

    ++v20;
    v23 = v22 == v19;
    v4 = v63;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v18 + 8 * v20 + 32);
  v22 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v24 = v21;

  v25 = &a1[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v27 = *v25;
  v26 = *(v25 + 1);
  v28 = &v24[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  *v28 = v27;
  *(v28 + 1) = v26;

  v29 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v30 = *&a1[v29];
  v31 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  *&v24[v31] = v30;
  v32 = &a1[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  v35 = &v24[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  *v35 = v34;
  v35[1] = v33;
  sub_1B89C3C44(v34, v33);
  sub_1B89B4A04(v36, v37);
  v38 = &a1[OBJC_IVAR___STKSticker_externalURI];
  swift_beginAccess();
  v40 = *v38;
  v39 = *(v38 + 1);
  v41 = &v24[OBJC_IVAR___STKSticker_externalURI];
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 1) = v39;

  v42 = &a1[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = &v24[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 1) = v43;

  v46 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v47 = *&a1[v46];
  v48 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v49 = *&v24[v48];
  *&v24[v48] = v47;
  v50 = v47;

  swift_beginAccess();
  v51 = v24;

  sub_1B89F9794(v52);
  sub_1B89AA114(v62 + 16, &v65);
  v53 = v67;
  v54 = v68;
  __swift_project_boxed_opaque_existential_0(&v65, v67);
  v55 = v61;
  (*(v54 + 40))(v24, v53, v54);
  v4 = v63;
  if (v55)
  {

    goto LABEL_2;
  }

  __swift_destroy_boxed_opaque_existential_0(&v65);
LABEL_23:
  sub_1B89D2920();
  sub_1B8A07C2C();

LABEL_24:
  v56 = v64;
  sub_1B89AF268(v9, v64, &qword_1EBA91BD0, qword_1B8A26FF0);
  v57 = *v56;
  v58 = (v56 + *(v4 + 48));
  sub_1B8A1AB68(v58, *(v58 + *(v69 + 48)), v57);

  sub_1B89A8A78(v9, &qword_1EBA91BD0, qword_1B8A26FF0);
  v59 = sub_1B8A23B14();
  return (*(*(v59 - 8) + 8))(v58, v59);
}

uint64_t sub_1B89D7B00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22[-v10];
  v12 = &v22[*(v9 + 48) - v10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v14 = *(v13 + 48);
  v15 = sub_1B8A194B4(v12, a1);
  *v11 = v16;
  *&v12[v14] = v15;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v23);
  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v18 + 40))(a1, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (!v2)
  {
    sub_1B89D2920();
    sub_1B8A07C2C();
  }

  sub_1B89AF268(v11, v8, &qword_1EBA91BD0, qword_1B8A26FF0);
  v19 = (v8 + *(v5 + 48));
  sub_1B8A1AB68(v19, *(v19 + *(v13 + 48)), *v8);

  sub_1B89A8A78(v11, &qword_1EBA91BD0, qword_1B8A26FF0);
  v20 = sub_1B8A23B14();
  return (*(*(v20 - 8) + 8))(v19, v20);
}

uint64_t sub_1B89D7D24(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v54 - v12);
  v62 = *a3;
  v14 = &v54 + *(v11 + 48) - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v16 = *(v15 + 48);
  v17 = sub_1B8A19874(v14, a1, a2);
  v64 = v13;
  *v13 = v18;
  *&v14[v16] = v17;
  v60 = a2;
  v61 = a1;
  if (a1 != a2)
  {
    v54 = v10;
    v55 = v15;
    v56 = v7;
    v19 = v63;
    swift_beginAccess();
    sub_1B89AA114(v19 + 16, v80);
    v58 = v82;
    v59 = v81;
    v57 = __swift_project_boxed_opaque_existential_0(v80, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1B8CC3470](KeyPath, 1);
    sub_1B89AADD4(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B8A26260;
    v26 = swift_getKeyPath();
    MEMORY[0x1B8CC3470](v26, 1);
    swift_setDeallocating();
    (*(v21 + 8))(v23 + v22, v20);
    swift_deallocClassInstance();
    LOBYTE(v70) = 0;
    v27 = v62;
    LOBYTE(v75) = v62;
    *(&v75 + 1) = 0;
    *&v76 = 0;
    v77 = 0uLL;
    *(&v76 + 1) = v25;
    LOBYTE(v78) = 1;
    *(&v78 + 1) = 8;
    v79 = 0;
    v28 = v65;
    v29 = (*(v58 + 8))(&v75, v59);
    v65 = v28;
    if (v28)
    {
      v72 = v77;
      v73 = v78;
      v74 = v79;
      v70 = v75;
      v71 = v76;
      sub_1B89A9028(&v70);
      __swift_destroy_boxed_opaque_existential_0(v80);
      goto LABEL_21;
    }

    v30 = v29;
    v31 = v63;
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v70 = v75;
    v71 = v76;
    sub_1B89A9028(&v70);
    __swift_destroy_boxed_opaque_existential_0(v80);
    v32 = v60;
    if ((v61 & 0x8000000000000000) != 0 || v30 <= v61 || (v60 & 0x8000000000000000) != 0 || v30 < v60)
    {
      sub_1B89C353C();
      v33 = swift_allocError();
      *v34 = 1;
      v65 = v33;
      swift_willThrow();
      goto LABEL_21;
    }

    if (v61 < v60)
    {
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_23:
        swift_once();
LABEL_16:
        v37 = type metadata accessor for StickerSignposter(0);
        v38 = __swift_project_value_buffer(v37, qword_1ED8303D8);
        v39 = v54;
        sub_1B89AF268(v64, v54, &qword_1EBA91BD0, qword_1B8A26FF0);
        v40 = v39 + *(v56 + 48);
        sub_1B8A19B24("Index position determined", 25, 2, v40, *(v40 + *(v55 + 48)));

        v41 = sub_1B8A23B14();
        v42 = *(v41 - 8);
        v43 = *(v42 + 8);
        v60 = v42 + 8;
        v43(v40, v41);
        v69[0] = v27;
        v66[0] = 0;
        v44 = v65;
        v45 = sub_1B89D3270(v61, v69, v66);
        v65 = v44;
        if (v44)
        {
          sub_1B89AADD4(0);
        }

        else
        {
          v46 = v45;
          sub_1B89AADD4(0);
          sub_1B89AF268(v64, v39, &qword_1EBA91BD0, qword_1B8A26FF0);
          v58 = v38;
          v59 = v43;
          v47 = v39 + *(v56 + 48);
          sub_1B8A19B24("Existing sticker fetched", 24, 2, v47, *(v47 + *(v55 + 48)));

          v43(v47, v41);
          v48 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          *&v46[v48] = v3;
          sub_1B89AF268(v64, v39, &qword_1EBA91BD0, qword_1B8A26FF0);
          v49 = v39 + *(v56 + 48);
          sub_1B8A19B24("Sticker assigned", 16, 2, v49, *(v49 + *(v55 + 48)));

          v59(v49, v41);
          sub_1B89AA114(v31 + 16, v66);
          v50 = v67;
          v51 = v68;
          __swift_project_boxed_opaque_existential_0(v66, v67);
          v52 = v65;
          (*(v51 + 40))(v46, v50, v51);
          v65 = v52;
          if (v52)
          {

            __swift_destroy_boxed_opaque_existential_0(v66);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v66);
            sub_1B89D2920();
            sub_1B8A07C2C();
          }
        }

        goto LABEL_21;
      }

      if (v30 >= (v60 + 1))
      {
        v32 = v60 + 1;
      }

      else
      {
        v32 = v30;
      }
    }

    LOBYTE(v66[0]) = v27;
    v35 = v65;
    sub_1B89D83E4(v32, v30, v66);
    v65 = v35;
    if (v35)
    {
      goto LABEL_21;
    }

    v3 = v36;
    if (qword_1ED82E690 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:
  sub_1B89DDA78(v64);
  return sub_1B89A8A78(v64, &qword_1EBA91BD0, qword_1B8A26FF0);
}

void sub_1B89D83E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (!a1)
  {
    if (a2 >= 1)
    {
      LOBYTE(v22[0]) = *a3;
      v23[0] = 0;
      v9 = sub_1B89D3270(0, v22, v23);
      sub_1B89AADD4(0);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return;
  }

  if (a1 != a2)
  {
    v3 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B8A26570;
    if (!__OFSUB__(a1, 1))
    {
      v12 = v11;
      *(v11 + 32) = a1 - 1;
      *(v11 + 40) = a1;
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD8, &unk_1B8A27040);
      v22[4] = sub_1B89CCD90(&qword_1EBA914A0, &qword_1EBA91BD8, &unk_1B8A27040, MEMORY[0x1E69E6328]);
      v22[0] = v12;
      v21 = v6;
      v20 = 0;
      sub_1B89D3700(v22, &v21, &v20, v23);
      sub_1B89AADD4(0);
      __swift_destroy_boxed_opaque_existential_0(v22);
      if (v4)
      {
        return;
      }

      v13 = __swift_project_boxed_opaque_existential_0(v23, v23[3]);
      MEMORY[0x1EEE9AC00](v13);
      (*(v15 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for Sticker(0);
      v3 = sub_1B8A24144();
      __swift_destroy_boxed_opaque_existential_0(v23);
      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v16 = *(v3 + 32);
LABEL_16:
        v17 = v16;
        swift_beginAccess();

        if (v5)
        {
          v18 = MEMORY[0x1B8CC44E0](1, v3);
LABEL_20:
          v19 = v18;

          swift_beginAccess();

          return;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v18 = *(v3 + 40);
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      v16 = MEMORY[0x1B8CC44E0](0, v3);
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = __OFSUB__(a1, 1);
  v8 = a1 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v22[0]) = *a3;
  v23[0] = 0;
  v9 = sub_1B89D3270(v8, v22, v23);
  sub_1B89AADD4(0);
  if (!v4)
  {
LABEL_5:
    swift_beginAccess();
  }
}

uint64_t sub_1B89D8798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8A26260;
  v6 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v6, 1);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  v12[0] = 1;
  LOBYTE(v13[0]) = 2;
  v13[1] = 0;
  *&v14 = 0;
  v15 = 0uLL;
  *(&v14 + 1) = v5;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = 8;
  v17 = 0;
  v10[2] = 0uLL;
  v10[3] = v16;
  v11 = 0;
  v10[0] = v13[0];
  v10[1] = v14;
  sub_1B89AFE74(v10, v12);
  sub_1B89B035C(v12);
  v8 = v7;
  sub_1B89A9028(v13);
  sub_1B89B0BC8(v12);
  return v8;
}

void sub_1B89D8968(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14)
{
  v205 = a8;
  v216 = a6;
  LODWORD(v206) = a5;
  v207 = a4;
  v219 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v210 = &v192 - v18;
  v211 = sub_1B8A23784();
  v209 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v213 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v208 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v212 = &v192 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v192 - v25;
  v27 = sub_1B8A23904();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v214 = &v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v192 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v192 - v34;
  v218 = a7;
  v36 = a1;

  sub_1B8A23894();
  v203 = v28[6];
  v204 = v28 + 6;
  v37 = v203(v26, 1, v27);
  v215 = v27;
  if (v37 == 1)
  {
    sub_1B89A8A78(v26, &unk_1EBA92220, &unk_1B8A281A0);
LABEL_3:
    v38 = v218;
    v39 = v216;
    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    v201 = a14;
    v40 = sub_1B8A23BC4();
    v41 = __swift_project_value_buffer(v40, qword_1ED8303C0);

    v200 = v41;
    v42 = sub_1B8A23BA4();
    v43 = sub_1B8A24224();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v225[0] = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_1B89A907C(v36, a2, v225);
      *(v44 + 12) = 2080;
      v46 = v39;
      if (v218)
      {
        v47 = v39;
      }

      else
      {
        v47 = 0;
      }

      if (v218)
      {
        v48 = v218;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v49 = v28;
      v50 = sub_1B89A907C(v47, v48, v225);

      *(v44 + 14) = v50;
      v28 = v49;
      _os_log_impl(&dword_1B89A7000, v42, v43, "Donating recent with non-store identifier %s externalURI %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CC5170](v45, -1, -1);
      v51 = v44;
      v38 = v218;
      MEMORY[0x1B8CC5170](v51, -1, -1);
    }

    else
    {
      v46 = v39;
    }

    v54 = v210;
    v55 = v211;
    v56 = v213;
    if (!v38)
    {
      v218 = 0;
      goto LABEL_54;
    }

    v57 = v46;
    sub_1B8A23764();
    v58 = v209;
    if ((*(v209 + 48))(v54, 1, v55) == 1)
    {
      sub_1B89A8A78(v54, &qword_1EBA91F80, &unk_1B8A26440);
      goto LABEL_33;
    }

    (*(v58 + 32))(v56, v54, v55);
    if ((sub_1B8A23684() & 1) == 0 || !v201 || (v75 = &v201[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier], swift_beginAccess(), (v76 = *(v75 + 1)) == 0))
    {
      (*(v58 + 8))(v56, v55);
      goto LABEL_33;
    }

    v225[0] = *v75;
    v225[1] = v76;
    v224[0] = 58;
    v224[1] = 0xE100000000000000;
    sub_1B89DDFCC();
    v210 = v201;
    v77 = sub_1B8A24474();
    if (v77[2] != 3)
    {
      (*(v58 + 8))(v213, v55);

      v38 = v218;
      goto LABEL_33;
    }

    v202 = v28;
    v79 = v77[4];
    v78 = v77[5];
    v28 = v77[6];
    v80 = v77[7];
    v81 = v77[9];
    v199 = v77[8];

    if (v79 == 0xD000000000000032 && 0x80000001B8A2AA30 == v78)
    {
    }

    else
    {
      v182 = sub_1B8A24954();

      if ((v182 & 1) == 0)
      {
        (*(v209 + 8))(v213, v211);

        v28 = v202;
        v38 = v218;
        v57 = v216;
        goto LABEL_33;
      }
    }

    v57 = v216;
    i = v209;
    v183 = v210;
    if ((v28 != 0x3030303030303030 || v80 != 0xEA00000000003030) && (sub_1B8A24954() & 1) == 0)
    {
      goto LABEL_123;
    }

    (*(i + 8))(v213, v211);

    v38 = v218;
    v28 = v202;
LABEL_33:
    while (1)
    {
      v225[0] = 0;
      v82 = v217;
      v83 = sub_1B89D43E8(v57, v38, v225);
      v84 = v82;
      if (v82)
      {
        break;
      }

      v94 = v83;
      sub_1B89AADD4(v225[0]);
      v217 = 0;
      if (v94)
      {
        swift_bridgeObjectRetain_n();
        v95 = sub_1B8A23BA4();
        v96 = sub_1B8A24224();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v202 = v28;
          v99 = v98;
          v225[0] = v98;
          *v97 = 136315138;
          v100 = sub_1B89A907C(v57, v38, v225);
          LODWORD(v216) = v96;
          v101 = v57;
          v102 = v100;

          *(v97 + 4) = v102;
          v57 = v101;
          _os_log_impl(&dword_1B89A7000, v95, v216, "Donating existing sticker with externalURI %s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v99);
          v103 = v99;
          v28 = v202;
          MEMORY[0x1B8CC5170](v103, -1, -1);
          MEMORY[0x1B8CC5170](v97, -1, -1);
        }

        else
        {
        }

        v181 = v217;
        sub_1B89DA0E4(v94);
        v84 = v181;
        if (!v181)
        {

          goto LABEL_15;
        }

        goto LABEL_35;
      }

      v216 = v57;
      v218 = v38;
LABEL_54:
      v211 = a13;
      v209 = a12;
      v200 = a11;
      v199 = a10;
      v202 = v28;
      v104 = v28[7];
      v105 = v212;
      v106 = v215;
      v104(v212, 1, 1, v215);
      v107 = v205;
      if (!a9)
      {
        v107 = 0;
      }

      v205 = v107;
      v108 = 0xE000000000000000;
      if (a9)
      {
        v108 = a9;
      }

      v197 = a9;
      v198 = v108;
      v109 = v207;
      if (v206)
      {
        v109 = -1;
      }

      v207 = v109;
      v193 = type metadata accessor for Sticker(0);
      v110 = objc_allocWithZone(v193);
      v111 = &v110[OBJC_IVAR___STKSticker_accessibilityName];
      *v111 = 0;
      *(v111 + 1) = 0;
      v112 = &v110[OBJC_IVAR___STKSticker_searchText];
      *v112 = 0;
      *(v112 + 1) = 0;
      v194 = v112;
      v113 = &v110[OBJC_IVAR___STKSticker_sanitizedPrompt];
      *v113 = 0;
      *(v113 + 1) = 0;
      v195 = v113;
      v114 = &v110[OBJC_IVAR___STKSticker_rewrittenPrompt];
      *v114 = 0;
      *(v114 + 1) = 0;
      v196 = v114;
      v115 = &v110[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
      *v115 = 0;
      *(v115 + 1) = 0;
      v206 = v115;
      v80 = &v110[OBJC_IVAR___STKSticker_metadata];
      *&v110[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
      v116 = &v110[OBJC_IVAR___STKSticker_externalURI];
      *v116 = 0;
      *(v116 + 1) = 0;
      v210 = OBJC_IVAR___STKSticker_attributionInfo;
      *&v110[OBJC_IVAR___STKSticker_attributionInfo] = 0;
      v104(&v110[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v106);
      v213 = v110;
      v192 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
      v110[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
      v117 = v208;
      sub_1B89AF268(v105, v208, &unk_1EBA92220, &unk_1B8A281A0);
      v118 = v203;
      if (v203(v117, 1, v106) == 1)
      {

        v119 = v214;
        sub_1B8A238F4();
        v120 = v118(v117, 1, v106);
        v121 = v202;
        v122 = v219;
        if (v120 != 1)
        {
          v123 = v202;
          sub_1B89A8A78(v117, &unk_1EBA92220, &unk_1B8A281A0);
          v121 = v123;
        }
      }

      else
      {
        v124 = v202;
        v119 = v214;
        (v202[4])(v214, v117, v106);

        v121 = v124;
        v122 = v219;
      }

      v59 = v213;
      v213[OBJC_IVAR___STKSticker_type] = 0;
      (v121[2])(v59 + OBJC_IVAR___STKSticker_identifier, v119, v106);
      *(v59 + OBJC_IVAR___STKSticker_representations) = v122;
      swift_beginAccess();
      v33 = v200;
      *v111 = v199;
      *(v111 + 1) = v33;

      v125 = (v59 + OBJC_IVAR___STKSticker_name);
      v126 = v198;
      *v125 = v205;
      v125[1] = v126;
      *(v59 + OBJC_IVAR___STKSticker_effect) = v207;
      swift_beginAccess();
      v127 = *v80;
      v128 = v80[1];
      i = v209;
      v130 = v211;
      *v80 = v209;
      v80[1] = v130;

      sub_1B89C3C44(i, v130);
      sub_1B89B4A04(v127, v128);
      v131 = v218;
      if (!v218)
      {
        i = 0x80000001B8A2A9A0;
        v132 = sub_1B8A238A4();
        v222 = 0xD00000000000001BLL;
        v223 = 0x80000001B8A2A9A0;
        MEMORY[0x1B8CC3E20](v132);

        v131 = v223;
        v216 = v222;
      }

      swift_beginAccess();
      *v116 = v216;
      *(v116 + 1) = v131;

      v133 = v210;
      swift_beginAccess();
      v134 = *&v133[v59];
      v135 = v201;
      *&v133[v59] = v201;
      v136 = v135;

      v28 = (v122 >> 62);
      if (v122 >> 62)
      {
        v35 = sub_1B8A24554();
      }

      else
      {
        v35 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v137 = MEMORY[0x1E69E7CC0];
      if (v35)
      {
        v218 = (v122 >> 62);
        v221 = MEMORY[0x1E69E7CC0];
        sub_1B8A0394C(0, v35 & ~(v35 >> 63), 0);
        if (v35 < 0)
        {
          __break(1u);
          goto LABEL_130;
        }

        v137 = v221;
        if ((v122 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v35; ++i)
          {
            v138 = MEMORY[0x1B8CC44E0](i, v219);
            v139 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v140 = *(v138 + v139);
            swift_unknownObjectRelease();
            v221 = v137;
            v142 = v137[2];
            v141 = v137[3];
            v80 = (v142 + 1);
            if (v142 >= v141 >> 1)
            {
              sub_1B8A0394C((v141 > 1), v142 + 1, 1);
              v137 = v221;
            }

            v137[2] = v80;
            v137[v142 + 4] = v140;
          }
        }

        else
        {
          v80 = (v122 + 32);
          do
          {
            v143 = *v80;
            v144 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v145 = *(v143 + v144);
            v221 = v137;
            v147 = v137[2];
            v146 = v137[3];
            i = v147 + 1;
            if (v147 >= v146 >> 1)
            {
              sub_1B8A0394C((v146 > 1), v147 + 1, 1);
              v137 = v221;
            }

            v137[2] = i;
            v137[v147 + 4] = v145;
            ++v80;
            --v35;
          }

          while (v35);
        }

        v59 = v213;
        v28 = v218;
      }

      v148 = v137[2];
      if (v148)
      {
        v81 = 0;
        v149 = v137 + 4;
        while (1)
        {
          v150 = *v149++;
          v151 = __OFADD__(v81, v150);
          v81 += v150;
          if (v151)
          {
            break;
          }

          if (!--v148)
          {
            goto LABEL_87;
          }
        }

        __break(1u);
LABEL_123:

        v184 = sub_1B8A236D4();
        v57 = sub_1B8A051FC(v28, v80, v199, v81, v184, v185);
        v38 = v186;

        v167 = sub_1B8A23BA4();
        v187 = sub_1B8A24224();
        if (!os_log_type_enabled(v167, v187))
        {
          goto LABEL_127;
        }

        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v225[0] = v189;
        *v188 = 136315138;
        v190 = v38;
        v191 = sub_1B89A907C(v57, v38, v225);

        *(v188 + 4) = v191;
        v38 = v190;
        _os_log_impl(&dword_1B89A7000, v167, v187, "Converted externalURI to %s", v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v189);
        MEMORY[0x1B8CC5170](v189, -1, -1);
        MEMORY[0x1B8CC5170](v188, -1, -1);

        (*(v209 + 8))(v213, v211);
        v28 = v202;
      }

      else
      {
        v81 = 0;
LABEL_87:

        *(v59 + OBJC_IVAR___STKSticker_byteCount) = v81;
        v152 = objc_opt_self();
        v153 = [v152 currentEnvironment];
        v154 = [v153 timeProvider];

        [v154 timestamp];
        v156 = v155;
        swift_unknownObjectRelease();
        *&v213[OBJC_IVAR___STKSticker_creationDate] = v156;
        v157 = [v152 currentEnvironment];
        v158 = [v157 timeProvider];

        v159 = v213;
        [v158 timestamp];
        v161 = v160;
        swift_unknownObjectRelease();
        *&v159[OBJC_IVAR___STKSticker_lastUsedDate] = v161;
        *&v159[OBJC_IVAR___STKSticker_libraryIndex] = 0;
        v162 = v194;
        swift_beginAccess();
        *v162 = 0;
        *(v162 + 1) = 0;

        v163 = v195;
        swift_beginAccess();
        *v163 = 0;
        *(v163 + 1) = 0;

        v164 = v196;
        swift_beginAccess();
        *v164 = 0;
        *(v164 + 1) = 0;

        v165 = v206;
        swift_beginAccess();
        *v165 = 0;
        *(v165 + 1) = 0;

        if (v28)
        {
          v166 = v219;
          v167 = sub_1B8A24554();
          if (!v167)
          {
LABEL_104:
            v175 = 2;
            v176 = v202;
LABEL_108:
            (v176[1])(v214, v215);
            v177 = v193;
            v159[v192] = v175;
            v220.receiver = v159;
            v220.super_class = v177;
            v178 = objc_msgSendSuper2(&v220, sel_init);
            sub_1B89A8A78(v212, &unk_1EBA92220, &unk_1B8A281A0);
            v179 = v217;
            v180 = sub_1B89D5E3C(v178);

            if (!v179)
            {
            }

            return;
          }
        }

        else
        {
          v166 = v219;
          v167 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v167)
          {
            goto LABEL_104;
          }
        }

        v168 = 0;
        v57 = v166 & 0xC000000000000001;
        v38 = (v166 & 0xFFFFFFFFFFFFFF8);
        i = 0x80000001B8A2A290;
        while (1)
        {
          if (v57)
          {
            v170 = MEMORY[0x1B8CC44E0](v168, v219);
          }

          else
          {
            if (v168 >= v38[2])
            {
              goto LABEL_126;
            }

            v170 = *(v219 + 8 * v168 + 32);
          }

          v171 = v170;
          v172 = (v168 + 1);
          if (__OFADD__(v168, 1))
          {
            break;
          }

          v173 = &v170[OBJC_IVAR___STKStickerRepresentation_role];
          swift_beginAccess();
          v174 = *v173 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v173 + 1);
          if (v174 || (sub_1B8A24954() & 1) != 0)
          {
            v169 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            LOBYTE(v169) = v171[v169];

            if (v169)
            {
              v175 = 1;
              goto LABEL_107;
            }
          }

          else
          {
          }

          ++v168;
          if (v172 == v167)
          {
            v175 = 0;
LABEL_107:
            v176 = v202;
            v159 = v213;
            goto LABEL_108;
          }
        }

        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:

        (*(i + 8))(v213, v211);
        v28 = v202;
      }
    }

    sub_1B89AADD4(v225[0]);
LABEL_35:
    v217 = 0;
    v225[0] = v84;
    v85 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (!swift_dynamicCast() || v222 != 2)
    {

      return;
    }

    v86 = sub_1B8A23BA4();
    v87 = sub_1B8A24224();

    v88 = os_log_type_enabled(v86, v87);
    v218 = v38;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v224[0] = v90;
      *v89 = 136315138;
      if (v38)
      {
        v91 = v57;
      }

      else
      {
        v91 = 0x3E726F7272653CLL;
      }

      v202 = v28;
      if (v38)
      {
        v92 = v38;
      }

      else
      {
        v92 = 0xE700000000000000;
      }

      v93 = sub_1B89A907C(v91, v92, v224);
      v28 = v202;

      *(v89 + 4) = v93;
      _os_log_impl(&dword_1B89A7000, v86, v87, "No existing sticker with externalURI %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x1B8CC5170](v90, -1, -1);
      MEMORY[0x1B8CC5170](v89, -1, -1);
    }

    v216 = v57;
    goto LABEL_54;
  }

  (v28[4])(v35, v26, v27);
  v225[0] = 1;
  v52 = v217;
  v53 = sub_1B89D3BB0(v35, v225);
  if (v52)
  {
    (v28[1])(v35, v27);
LABEL_15:
  }

  else
  {
    v59 = v53;
    v217 = 0;
    if (!v53)
    {
      (v28[1])(v35, v215);
      goto LABEL_3;
    }

    if (qword_1ED82E688 != -1)
    {
LABEL_130:
      swift_once();
    }

    v60 = sub_1B8A23BC4();
    __swift_project_value_buffer(v60, qword_1ED8303C0);
    v61 = v215;
    (v28[2])(v33, v35, v215);
    v62 = sub_1B8A23BA4();
    v63 = v28;
    v64 = sub_1B8A24224();
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v216 = v65;
      v218 = swift_slowAlloc();
      v225[0] = v218;
      *v65 = 136315138;
      sub_1B89DD820(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v66 = v63;
      v202 = v63;
      v67 = sub_1B8A24934();
      v219 = v59;
      v69 = v68;
      v70 = v66[1];
      v70(v33, v61);
      v71 = sub_1B89A907C(v67, v69, v225);
      v59 = v219;

      v72 = v216;
      *(v216 + 1) = v71;
      v73 = v72;
      _os_log_impl(&dword_1B89A7000, v62, v64, "Donating recent with identifier %s", v72, 0xCu);
      v74 = v218;
      __swift_destroy_boxed_opaque_existential_0(v218);
      MEMORY[0x1B8CC5170](v74, -1, -1);
      MEMORY[0x1B8CC5170](v73, -1, -1);
    }

    else
    {

      v70 = v28[1];
      v70(v33, v61);
    }

    sub_1B89DA0E4(v59);
    v70(v35, v215);
  }
}

void sub_1B89DA0E4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v142 - v7;
  v166 = sub_1B8A23904();
  v169 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v165 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v142 - v13;
  v14 = (a1 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  v15 = a1;
  if (v14[1])
  {
    v16 = *v14;
    v17 = v14[1];
  }

  else
  {
    v18 = sub_1B8A238A4();
    v175 = 0xD00000000000001BLL;
    v176 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v18);

    v16 = v175;
    v17 = v176;
  }

  v175 = 1;

  v19 = sub_1B89D4ABC(v16, v17, &v175);
  if (v3)
  {

    return;
  }

  v20 = v19;

  v21 = *(v15 + OBJC_IVAR___STKSticker_type);
  v22 = v20 >> 62;
  v164 = v4;
  v170 = 0;
  if (v21)
  {
    v162 = v8;
    v163 = v15;
    if (v22)
    {
LABEL_40:
      v23 = sub_1B8A24554();
      if (v23)
      {
LABEL_10:
        v24 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1B8CC44E0](v24, v20);
          }

          else
          {
            if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v25 = *(v20 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (*(v25 + OBJC_IVAR___STKSticker_type) != 1)
          {
            break;
          }

          ++v24;
          if (v27 == v23)
          {
            goto LABEL_41;
          }
        }

LABEL_31:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B8A26FE0;
        v31 = v163;
        *(inited + 32) = v163;
        *(inited + 40) = v26;
        v32 = v31;
        v33 = v26;
        v34 = v170;
        sub_1B89DB854(inited);
        if (v34)
        {

          swift_setDeallocating();
          swift_arrayDestroy();
          return;
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v8 = v162;
        goto LABEL_101;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_10;
      }
    }

LABEL_41:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1B8A26280;
    v41 = v163;
    *(v40 + 32) = v163;
    v42 = v41;
    v43 = v170;
    sub_1B89DB854(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v43)
    {
      return;
    }

    v170 = 0;
    v44 = v169;
    v159 = *(v169 + 56);
    v45 = v166;
    v159(v168, 1, 1, v166);
    v46 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v163 = *&v42[v46];
    v47 = &v42[OBJC_IVAR___STKSticker_name];
    swift_beginAccess();
    v48 = *(v47 + 1);
    v153 = *v47;
    v156 = v48;
    v49 = OBJC_IVAR___STKSticker_effect;
    swift_beginAccess();
    v151 = *&v42[v49];
    v50 = &v42[OBJC_IVAR___STKSticker_metadata];
    swift_beginAccess();
    v51 = v50[1];
    v158 = *v50;
    v52 = v14[1];
    v154 = *v14;
    v160 = v51;
    v161 = v52;
    v53 = &v42[OBJC_IVAR___STKSticker_accessibilityName];
    swift_beginAccess();
    v54 = *(v53 + 1);
    v149 = *v53;
    v155 = v54;
    v55 = OBJC_IVAR___STKSticker_attributionInfo;
    swift_beginAccess();
    v157 = *&v42[v55];
    v144 = type metadata accessor for Sticker(0);
    v56 = objc_allocWithZone(v144);
    v57 = v56 + OBJC_IVAR___STKSticker_accessibilityName;
    *v57 = 0;
    *(v57 + 1) = 0;
    v58 = v56 + OBJC_IVAR___STKSticker_searchText;
    *v58 = 0;
    *(v58 + 1) = 0;
    v145 = v58;
    v59 = v56 + OBJC_IVAR___STKSticker_sanitizedPrompt;
    *v59 = 0;
    *(v59 + 1) = 0;
    v146 = v59;
    v60 = v56 + OBJC_IVAR___STKSticker_rewrittenPrompt;
    *v60 = 0;
    *(v60 + 1) = 0;
    v147 = v60;
    v61 = v56 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier;
    *v61 = 0;
    *(v61 + 1) = 0;
    v148 = v61;
    v62 = (v56 + OBJC_IVAR___STKSticker_metadata);
    *(v56 + OBJC_IVAR___STKSticker_metadata) = xmmword_1B8A26F80;
    v63 = v56 + OBJC_IVAR___STKSticker_externalURI;
    *v63 = 0;
    *(v63 + 1) = 0;
    v150 = v63;
    v152 = OBJC_IVAR___STKSticker_attributionInfo;
    *(v56 + OBJC_IVAR___STKSticker_attributionInfo) = 0;
    v159(v56 + OBJC_IVAR___STKSticker__companionRecentUUID, 1, 1, v45);
    v64 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
    v159 = v56;
    *(v56 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = 2;
    v65 = v165;
    sub_1B89AF268(v168, v165, &unk_1EBA92220, &unk_1B8A281A0);
    v66 = *(v44 + 48);
    v67 = v66(v65, 1, v45);
    v143 = v64;
    if (v67 == 1)
    {

      v68 = v158;
      sub_1B89C3C44(v158, v160);
      v69 = v157;

      v70 = v167;
      sub_1B8A238F4();
      v71 = v66(v65, 1, v45);
      v72 = v70;
      v127 = v71 == 1;
      v73 = v169;
      v74 = v68;
      v75 = v65;
      v8 = v160;
      if (!v127)
      {
        sub_1B89A8A78(v75, &unk_1EBA92220, &unk_1B8A281A0);
      }
    }

    else
    {
      v73 = v169;
      v72 = v167;
      (*(v169 + 32))(v167, v65, v45);

      v74 = v158;
      v8 = v160;
      sub_1B89C3C44(v158, v160);
      v76 = v157;
    }

    v77 = v159;
    *(v159 + OBJC_IVAR___STKSticker_type) = 0;
    (*(v73 + 16))(v77 + OBJC_IVAR___STKSticker_identifier, v72, v45);
    v78 = v163;
    *(v77 + OBJC_IVAR___STKSticker_representations) = v163;
    swift_beginAccess();
    v79 = v155;
    *v57 = v149;
    *(v57 + 1) = v79;

    v80 = (v77 + OBJC_IVAR___STKSticker_name);
    v81 = v156;
    *v80 = v153;
    v80[1] = v81;
    *(v77 + OBJC_IVAR___STKSticker_effect) = v151;
    swift_beginAccess();
    v82 = *v62;
    v83 = v62[1];
    *v62 = v74;
    v62[1] = v8;
    sub_1B89C3C44(v74, v8);
    sub_1B89B4A04(v82, v83);
    v84 = v154;
    if (!v161)
    {
      v85 = sub_1B8A238A4();
      v173 = 0xD00000000000001BLL;
      v174 = 0x80000001B8A2A9A0;
      MEMORY[0x1B8CC3E20](v85);

      v84 = v173;
      v161 = v174;
    }

    v86 = v150;
    swift_beginAccess();
    v87 = v161;
    *v86 = v84;
    v86[1] = v87;

    v88 = v152;
    swift_beginAccess();
    v89 = *(v77 + v88);
    v90 = v157;
    *(v77 + v88) = v157;
    v91 = v90;

    if (v78 >> 62)
    {
      v92 = sub_1B8A24554();
    }

    else
    {
      v92 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = MEMORY[0x1E69E7CC0];
    v161 = v91;
    v165 = v78 >> 62;
    if (v92)
    {
      v172[0] = MEMORY[0x1E69E7CC0];
      sub_1B8A0394C(0, v92 & ~(v92 >> 63), 0);
      if (v92 < 0)
      {
        __break(1u);
        return;
      }

      v20 = v172[0];
      if ((v78 & 0xC000000000000001) != 0)
      {
        v93 = v78;
        for (i = 0; i != v92; ++i)
        {
          v95 = MEMORY[0x1B8CC44E0](i, v93);
          v96 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v8 = *(v95 + v96);
          swift_unknownObjectRelease();
          v172[0] = v20;
          v98 = *(v20 + 16);
          v97 = *(v20 + 24);
          if (v98 >= v97 >> 1)
          {
            sub_1B8A0394C((v97 > 1), v98 + 1, 1);
            v20 = v172[0];
          }

          *(v20 + 16) = v98 + 1;
          *(v20 + 8 * v98 + 32) = v8;
        }
      }

      else
      {
        v93 = v78;
        v131 = (v78 + 32);
        do
        {
          v132 = *v131;
          v133 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v8 = *(v132 + v133);
          v172[0] = v20;
          v135 = *(v20 + 16);
          v134 = *(v20 + 24);
          if (v135 >= v134 >> 1)
          {
            sub_1B8A0394C((v134 > 1), v135 + 1, 1);
            v20 = v172[0];
          }

          *(v20 + 16) = v135 + 1;
          *(v20 + 8 * v135 + 32) = v8;
          ++v131;
          --v92;
        }

        while (v92);
      }
    }

    else
    {
      v93 = v78;
    }

    v99 = *(v20 + 16);
    if (!v99)
    {
      v100 = 0;
      v15 = v93;
      v102 = v159;
LABEL_65:

      *(v102 + OBJC_IVAR___STKSticker_byteCount) = v100;
      v105 = objc_opt_self();
      v106 = [v105 currentEnvironment];
      v107 = [v106 timeProvider];

      [v107 timestamp];
      v109 = v108;
      swift_unknownObjectRelease();
      *(v102 + OBJC_IVAR___STKSticker_creationDate) = v109;
      v110 = [v105 currentEnvironment];
      v111 = [v110 timeProvider];

      [v111 timestamp];
      v113 = v112;
      swift_unknownObjectRelease();
      *(v102 + OBJC_IVAR___STKSticker_lastUsedDate) = v113;
      *(v102 + OBJC_IVAR___STKSticker_libraryIndex) = 0;
      v114 = v145;
      swift_beginAccess();
      *v114 = 0;
      *(v114 + 1) = 0;

      v115 = v146;
      swift_beginAccess();
      *v115 = 0;
      *(v115 + 1) = 0;

      v116 = v147;
      swift_beginAccess();
      *v116 = 0;
      *(v116 + 1) = 0;

      v117 = v148;
      swift_beginAccess();
      *v117 = 0;
      *(v117 + 1) = 0;

      if (v165)
      {
        v20 = sub_1B8A24554();
      }

      else
      {
        v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v118 = v158;
      v119 = v160;
      v120 = v170;
      if (v20)
      {
        v121 = 0;
        v8 = (v15 & 0xC000000000000001);
        v15 &= 0xFFFFFFFFFFFFFF8uLL;
        while (1)
        {
          if (v8)
          {
            v123 = MEMORY[0x1B8CC44E0](v121, v163);
          }

          else
          {
            if (v121 >= *(v15 + 16))
            {
              goto LABEL_97;
            }

            v123 = *(v163 + v121 + 4);
          }

          v124 = v123;
          v125 = v121 + 1;
          if (__OFADD__(v121, 1))
          {
            goto LABEL_96;
          }

          v126 = &v123[OBJC_IVAR___STKStickerRepresentation_role];
          swift_beginAccess();
          v127 = *v126 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v126 + 1);
          if (v127 || (sub_1B8A24954() & 1) != 0)
          {
            v122 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            LOBYTE(v122) = v124[v122];

            if (v122)
            {
              (*(v169 + 8))(v167, v166);

              v128 = 1;
              v120 = v170;
              goto LABEL_86;
            }
          }

          else
          {
          }

          ++v121;
          v127 = v125 == v20;
          v120 = v170;
          if (v127)
          {

            (*(v169 + 8))(v167, v166);
            v128 = 0;
LABEL_86:
            v118 = v158;
            v119 = v160;
            goto LABEL_87;
          }
        }
      }

      (*(v169 + 8))(v167, v166);

      v128 = 2;
LABEL_87:
      v129 = v159;
      *(v159 + v143) = v128;
      v171.receiver = v129;
      v171.super_class = v144;
      v33 = objc_msgSendSuper2(&v171, sel_init);

      sub_1B89B4A04(v118, v119);
      sub_1B89A8A78(v168, &unk_1EBA92220, &unk_1B8A281A0);
      v130 = sub_1B89D5E3C(v33);
      v8 = v162;
      if (v120)
      {

        return;
      }

      goto LABEL_101;
    }

    v100 = 0;
    v101 = (v20 + 32);
    v15 = v93;
    v102 = v159;
    while (1)
    {
      v103 = *v101++;
      v104 = __OFADD__(v100, v103);
      v100 += v103;
      if (v104)
      {
        break;
      }

      if (!--v99)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  else if (!v22)
  {
    v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_99;
    }

LABEL_21:
    v14 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1B8CC44E0](v14, v20);
        v26 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v29 = *(v20 + 8 * v14 + 32);
        v26 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (v29[OBJC_IVAR___STKSticker_type])
      {
        break;
      }

      v14 = (v14 + 1);
      if (v26 == v28)
      {
        goto LABEL_99;
      }
    }

    v35 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1B8A26FE0;
    *(v36 + 32) = v15;
    *(v36 + 40) = v35;
    v37 = v15;
    v38 = v35;
    v39 = v170;
    sub_1B89DB854(v36);
    if (v39)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_100;
  }

  v28 = sub_1B8A24554();
  if (v28)
  {
    goto LABEL_21;
  }

LABEL_99:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
  v136 = swift_initStackObject();
  *(v136 + 16) = xmmword_1B8A26280;
  *(v136 + 32) = v15;
  v137 = v15;
  v138 = v170;
  sub_1B89DB854(v136);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!v138)
  {
LABEL_100:
    v33 = v15;
LABEL_101:
    v139 = v33;
    v140 = sub_1B8A24184();
    (*(*(v140 - 8) + 56))(v8, 1, 1, v140);
    v141 = swift_allocObject();
    v141[2] = 0;
    v141[3] = 0;
    v141[4] = v139;
    v141[5] = v164;

    sub_1B89DB560(0, 0, v8, &unk_1B8A271B8, v141);

    sub_1B89A8A78(v8, &qword_1EBA92200, &qword_1B8A28000);
  }
}

uint64_t sub_1B89DB268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B89DB288, 0, 0);
}

uint64_t sub_1B89DB288()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = OBJC_IVAR___STKSticker_identifier;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1B89DB384;

    return ImageGlyphRecency.recordEngagement(for:)(v1 + v2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B89DB384()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B89DB4FC;
  }

  else
  {
    v2 = sub_1B89DB498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B89DB498()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89DB4FC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89DB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B89AF268(a3, v22 - v9, &qword_1EBA92200, &qword_1B8A28000);
  v11 = sub_1B8A24184();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B89A8A78(v10, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B8A24154();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B8A23F64() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1B89DB7CC(uint64_t a1)
{
  v5 = 1;
  v2 = sub_1B89D3BB0(a1, &v5);
  if (!v1)
  {
    if (v2)
    {
      v3 = v2;
      sub_1B89DA0E4(v2);
    }

    else
    {
      sub_1B89C353C();
      swift_allocError();
      *v4 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B89DB854(unint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v45 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v42 - v9);
  v46 = v8;
  v11 = &v42 + *(v8 + 48) - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v12 = *(v44 + 48);
  sub_1B8A19CDC(v11, a1);
  v47 = v10;
  *v10 = v13;
  *&v11[v12] = v14;
  swift_beginAccess();
  sub_1B89AA114((v3 + 16), v51);
  v15 = type metadata accessor for StickerStore();
  v49 = v15;
  v50 = &off_1F373ECA0;
  v48[0] = v3;
  type metadata accessor for StickerStore.TouchStickerMethod();
  inited = swift_initStackObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  inited[7] = *v19;
  v43 = inited + 7;
  inited[10] = v15;
  inited[11] = &off_1F373ECA0;
  v52 = inited;
  sub_1B89D2F5C(v51, (inited + 2));
  v42 = v3;

  __swift_destroy_boxed_opaque_existential_0(v48);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8A24554())
  {
    v22 = 0;
    v23 = a1 & 0xC000000000000001;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v25 = a1;
        v26 = MEMORY[0x1B8CC44E0](v22, a1);
      }

      else
      {
        if (v22 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v25 = a1;
        v26 = *(a1 + 8 * v22 + 32);
      }

      v27 = v26;
      a1 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      sub_1B89DC838(v26);
      if (v2)
      {

        goto LABEL_18;
      }

      ++v22;
      v28 = a1 == i;
      a1 = v25;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  sub_1B89D2920();
  sub_1B8A07D10();

LABEL_18:
  v29 = v52;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v29 + 2);
  __swift_destroy_boxed_opaque_existential_0(v43);
  v30 = v47;
  v31 = v45;
  sub_1B89AF268(v47, v45, &qword_1EBA91BD0, qword_1B8A26FF0);
  v32 = *v31;
  v33 = (v31 + *(v46 + 48));
  sub_1B8A1A2A0(v33, *(v33 + *(v44 + 48)), v34, v35, v36, v37, v38, v39, v32, v42);

  sub_1B89A8A78(v30, &qword_1EBA91BD0, qword_1B8A26FF0);
  v40 = sub_1B8A23B14();
  return (*(*(v40 - 8) + 8))(v33, v40);
}

uint64_t sub_1B89DBC38(uint64_t a1)
{
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v4 + 48))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void *StickerStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t StickerStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1B89DBE2C(uint64_t a1)
{
  v5 = 1;
  v2 = sub_1B89D3BB0(a1, &v5);
  if (!v1)
  {
    if (v2)
    {
      v3 = v2;
      sub_1B89DA0E4(v2);
    }

    else
    {
      sub_1B89C353C();
      swift_allocError();
      *v4 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B89DBF88()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  (*(v3 + 56))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1B89DC08C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  (*(v5 + 48))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void *sub_1B89DC134(uint64_t a1)
{
  v32 = *(a1 + OBJC_IVAR___STKSticker_type);
  v19 = v1[6];
  v20 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v6 = &unk_1B8A27010;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  v9 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v9, 1);
  swift_setDeallocating();
  v10 = v2;
  v11 = v32;
  (*(v3 + 8))(v5 + v4, v10);
  swift_deallocClassInstance();
  LOBYTE(v22) = 0;
  LOBYTE(v27) = v32;
  *(&v27 + 1) = 0;
  *&v28 = 0;
  v29 = 0uLL;
  *(&v28 + 1) = v8;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = 8;
  v31 = 0;
  v12 = (*(v19 + 8))(&v27, v20);
  if (v21)
  {
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    sub_1B89A9028(&v22);
  }

  else
  {
    v13 = v12;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    sub_1B89A9028(&v22);
    sub_1B89DC400(a1, v13);
    v14 = v1[5];
    v15 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v14);
    v6 = (*(v15 + 24))(a1, v14, v15);
    v17 = 50;
    if (v11)
    {
      v17 = 1000;
    }

    if (v13 >= v17)
    {
      v33 = v11;
      sub_1B89DC418(&v33);
    }
  }

  return v6;
}

uint64_t sub_1B89DC418(unsigned __int8 *a1)
{
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  *(swift_allocObject() + 16) = xmmword_1B8A26260;
  v7 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v7, 1);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v30[0] = 1;
  LOBYTE(v31[0]) = 0;
  if (v13)
  {
    v8 = 1000;
  }

  else
  {
    v8 = 50;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8A26260;
  v10 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v10, 1);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  LOBYTE(v31[0]) = v13;
  v31[1] = 0;
  *&v32 = 0;
  *(&v32 + 1) = v9;
  v33 = v8;
  v34 = 0;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 8;
  v36 = 0;
  v27 = v8;
  v28 = v35;
  v29 = 0;
  v25 = v31[0];
  v26 = v32;
  sub_1B89A8FB4(v31, v23);
  sub_1B89AFE74(&v25, v30);
  v23[2] = v27;
  v23[3] = v28;
  v24 = v29;
  v23[0] = v25;
  v23[1] = v26;
  sub_1B89A9028(v23);
  v11 = sub_1B89D20D8(v30);
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  sub_1B89D6690(v11);
  sub_1B89B0BC8(v30);

  v14[0] = v13;
  v15 = 0;
  v16 = 0;
  v17 = v9;
  v18 = v8;
  v19 = 0;
  v20 = 1;
  v21 = 8;
  v22 = 0;
  return sub_1B89A9028(v14);
}

void sub_1B89DC838(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = OBJC_IVAR___STKSticker_type;
  if (*(a1 + OBJC_IVAR___STKSticker_type))
  {
    v6 = v2;
  }

  else
  {
    v25 = OBJC_IVAR___STKSticker_type;
    v28 = v1[5];
    v27 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1B8CC3470](KeyPath, 1);
    sub_1B89AADD4(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B8A26260;
    v22 = swift_getKeyPath();
    MEMORY[0x1B8CC3470](v22, 1);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    LOBYTE(v29) = 0;
    LOBYTE(v34) = 0;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    v36 = 0uLL;
    *(&v35 + 1) = v21;
    LOBYTE(v37) = 1;
    *(&v37 + 1) = 8;
    v38 = 0;
    v23 = (*(v27 + 8))(&v34, v28);
    if (v2)
    {
      v31 = v36;
      v32 = v37;
      v33 = v38;
      v29 = v34;
      v30 = v35;
      sub_1B89A9028(&v29);
      return;
    }

    v24 = v23;
    v31 = v36;
    v32 = v37;
    v33 = v38;
    v29 = v34;
    v30 = v35;
    sub_1B89A9028(&v29);
    v4 = a1;
    sub_1B89DC400(a1, v24);
    v6 = 0;
    v5 = v25;
  }

  v7 = [objc_opt_self() currentEnvironment];
  v8 = [v7 timeProvider];

  [v8 timestamp];
  v10 = v9;
  swift_unknownObjectRelease();
  v11 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  *(v4 + v11) = v10;
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v12);
  (*(v13 + 40))(v4, v12, v13);
  if (!v6 && *(v4 + v5) == 1)
  {
    v14 = v3[5];
    v15 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v14);
    (*(v15 + 48))(v4, v14, v15);
  }
}

void sub_1B89DCBAC(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  if (a2 < 1)
  {
    v9 = 1024.0;
  }

  else
  {
    v11[0] = *(a1 + OBJC_IVAR___STKSticker_type);
    v12[0] = 0;
    v6 = sub_1B89D3270(0, v11, v12);
    sub_1B89AADD4(0);
    if (v3)
    {
      return;
    }

    v7 = OBJC_IVAR___STKSticker_libraryIndex;
    swift_beginAccess();
    v8 = *&v6[v7];

    v9 = v8 + 1024.0;
  }

  v10 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  *(a1 + v10) = v9;
}

uint64_t sub_1B89DCCAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1B89DCCEC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1B8A24554())
  {
    if (sub_1B8A24554())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1B8CC44E0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1B8A24554();
LABEL_13:
      if (v3)
      {
        sub_1B89D09F8(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

char *sub_1B89DCDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BE8, &unk_1B8A281B0);
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

void *sub_1B89DCF18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B89DD0F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B89DD1F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BF8, &unk_1B8A271A0);
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

char *sub_1B89DD314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
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

char *sub_1B89DD420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BF0, &unk_1B8A27190);
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

void *sub_1B89DD514(void *result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if ((a4 & 1) != 0 || a3)
  {
    v13 = a2 - result;
    if (__OFSUB__(a2, result))
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
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = 0;
    v14 = (MEMORY[0x1E69E7CC0] + 32);
    v26 = a3;
    while (v13 >= 1)
    {
      v15 = a2;
      if ((a4 & 1) == 0)
      {
        v15 = a2;
        if (v13 > a3)
        {
          v15 = v6 + a3;
          if (__OFADD__(v6, a3))
          {
            goto LABEL_35;
          }

          if (v15 < v6)
          {
            goto LABEL_36;
          }

          if (v15 > a2)
          {
            goto LABEL_33;
          }
        }
      }

      if (!v8)
      {
        v16 = v7[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BE8, &unk_1B8A281B0);
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 17;
        }

        v22 = v21 >> 4;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 4);
        v23 = (v19 + 4);
        v24 = v7[3] >> 1;
        if (v7[2])
        {
          v25 = v7 + 4;
          if (v19 != v7 || v23 >= v25 + 16 * v24)
          {
            memmove(v19 + 4, v25, 16 * v24);
          }

          v7[2] = 0;
        }

        v14 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v19;
        a3 = v26;
      }

      v11 = __OFSUB__(v8--, 1);
      if (v11)
      {
        goto LABEL_34;
      }

      *v14 = v6;
      v14[1] = v15;
      v14 += 2;
      v6 = v15;
      v13 = a2 - v15;
      if (__OFSUB__(a2, v15))
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v7[3];
  if (v9 < 2)
  {
    return v7;
  }

  v10 = v9 >> 1;
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (!v11)
  {
    v7[2] = v12;
    return v7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B89DD6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Sticker(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B8A24554();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B8A24554();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B89DD7CC()
{
  result = qword_1EBA91570;
  if (!qword_1EBA91570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91570);
  }

  return result;
}

uint64_t sub_1B89DD820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B89DD868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B89DD8C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Sticker(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1B8A24554();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1B8A24554();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1B89DD9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89DDA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v50 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v50 - v18);
  sub_1B89AF268(a1, &v50 - v18, &qword_1EBA91BD0, qword_1B8A26FF0);
  v20 = *v19;
  v21 = v19 + *(v11 + 56);
  v22 = *&v21[*(v2 + 48)];
  v23 = sub_1B8A23B14();
  v24 = *(v23 - 8);
  v25 = v24[2];
  v53 = v21;
  v25(v9, v21, v23);
  *&v9[*(v2 + 48)] = v22;
  *v17 = v20;
  sub_1B89A9E58(v9, v17 + *(v11 + 56));
  v54 = v17;
  sub_1B89AF268(v17, v14, &qword_1EBA91BD0, qword_1B8A26FF0);
  v26 = *v14;
  v27 = *(v11 + 56);
  v28 = v51;
  v29 = *(v14 + v27 + *(v2 + 48));
  v30 = v24[4];
  v30(v5);
  v31 = *(v2 + 48);
  (v30)(v28, v5, v23);
  *(v28 + v31) = v29;
  v32 = qword_1ED82E690;
  v52 = v22;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v33, qword_1ED8303D8);
  sub_1B89AF268(v28, v5, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8("move stickers", 13, 2, v5, *&v5[*(v2 + 48)]);

  v34 = v24[1];
  v34(v5, v23);
  v35 = [objc_opt_self() currentEnvironment];
  v36 = [v35 timeProvider];

  [v36 timestamp];
  v38 = v37;
  swift_unknownObjectRelease();
  v39 = [objc_opt_self() stringForTimeInterval_];
  v40 = sub_1B8A23F24();
  v42 = v41;

  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v43 = sub_1B8A23BC4();
  __swift_project_value_buffer(v43, qword_1ED8303C0);

  v44 = sub_1B8A23BA4();
  v45 = sub_1B8A24214();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v46 = 136315138;
    v48 = sub_1B89A907C(v40, v42, &v55);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_1B89A7000, v44, v45, "END moveSticker(at:to:) (%s)", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1B8CC5170](v47, -1, -1);
    MEMORY[0x1B8CC5170](v46, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v28, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89A8A78(v54, &qword_1EBA91BD0, qword_1B8A26FF0);
  return (v34)(v53, v23);
}

unint64_t sub_1B89DDFCC()
{
  result = qword_1EBA91BE0;
  if (!qword_1EBA91BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91BE0);
  }

  return result;
}

uint64_t sub_1B89DE600(uint64_t a1)
{
  v1 = sub_1B8A23784();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B89DE67C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, id *))
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = a2;
  v44 = a3 >> 1;
  if (v5)
  {
    if (v5 <= 0)
    {
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v10 = v9 - 32;
    if (v9 < 32)
    {
      v10 = v9 - 17;
    }

    v8[2] = v5;
    v8[3] = 2 * (v10 >> 4);
    if (v5 < 0)
    {
LABEL_40:
      __break(1u);
    }

    else
    {
      v11 = 0;
      v12 = v8[3];
      v41 = v12 >> 1;
      v13 = v8 + 4;
      if (v7 <= v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = v7;
      }

      v15 = v14 - v7;
      v16 = (v12 >> 1) | 0x8000000000000000;
      v17 = a1 + 8 * v7;
      while (v5 != v11)
      {
        if (v15 == v11)
        {
          goto LABEL_42;
        }

        v48 = *(v17 + 8 * v11);
        v18 = v48;
        a4(&v46, &v48);

        if (v16 == v11)
        {
          goto LABEL_43;
        }

        ++v11;
        v19 = v47;
        *v13 = v46;
        v13[1] = v19;
        v13 += 2;
        if (v5 == v11)
        {
          v7 = a2;
          v20 = v41 - v11;
          v21 = a2 + v11;
          v4 = v44;
          if (a2 + v11 != v44)
          {
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v22 = *(MEMORY[0x1E69E7CC0] + 24);

  v13 = v8 + 4;
  v20 = v22 >> 1;
  v21 = v7;
  if (v7 != v4)
  {
LABEL_18:
    v23 = v21;
    while (v21 >= v7 && v23 < v4)
    {
      v48 = *(a1 + 8 * v23);
      v24 = v48;
      a4(&v46, &v48);

      v25 = v46;
      v26 = v47;
      if (!v20)
      {
        v27 = v8[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
        v30 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v30);
        v32 = v31 - 32;
        if (v31 < 32)
        {
          v32 = v31 - 17;
        }

        v33 = v32 >> 4;
        v30[2] = v29;
        v30[3] = 2 * (v32 >> 4);
        v34 = (v30 + 4);
        v35 = v8[3] >> 1;
        if (v8[2])
        {
          v36 = v8 + 4;
          if (v30 != v8 || v34 >= v36 + 16 * v35)
          {
            memmove(v30 + 4, v36, 16 * v35);
          }

          v8[2] = 0;
        }

        v13 = (v34 + 16 * v35);
        v20 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v8 = v30;
        v7 = a2;
      }

      v37 = __OFSUB__(v20--, 1);
      if (v37)
      {
        goto LABEL_45;
      }

      ++v23;
      *v13 = v25;
      v13[1] = v26;
      v13 += 2;
      v4 = v44;
      if (v44 == v23)
      {
        goto LABEL_36;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_36:
  v38 = v8[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v37 = __OFSUB__(v39, v20);
    v40 = v39 - v20;
    if (v37)
    {
LABEL_48:
      __break(1u);
      return;
    }

    v8[2] = v40;
  }
}

uint64_t sub_1B89DE964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B89BBE18;

  return sub_1B89DB268(a1, v4, v5, v7, v6);
}

uint64_t sub_1B89DEA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B89DEAB0()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91C08);
  __swift_project_value_buffer(v0, qword_1EBA91C08);
  return sub_1B8A23BB4();
}

const char *sub_1B89DEB30(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  if (a3)
  {
    v4 = sub_1B8A23F64();
    v5 = sqlite3_exec(a3, (v4 + 32), 0, 0, 0);

    return sub_1B89DEC68(v5, a3);
  }

  else
  {
    if (qword_1EBA916B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91C08);
    v8 = sub_1B8A23BA4();
    v9 = sub_1B8A24234();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B89A7000, v8, v9, "Database is not available", v10, 2u);
      MEMORY[0x1B8CC5170](v10, -1, -1);
    }

    return 0;
  }
}

const char *sub_1B89DEC68(int a1, sqlite3 *db)
{
  v3 = dword_1F373EE00 == a1 || unk_1F373EE04 == a1 || dword_1F373EE08 == a1;
  v4 = v3;
  if (v3)
  {
    return v4;
  }

  v6 = sqlite3_extended_errcode(db);
  result = sqlite3_errstr(a1);
  if (result)
  {
    v8 = sub_1B8A23EE4();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if (qword_1EBA916B0 != -1)
      {
        swift_once();
      }

      v12 = sub_1B8A23BC4();
      __swift_project_value_buffer(v12, qword_1EBA91C08);

      v13 = sub_1B8A23BA4();
      v14 = sub_1B8A24234();

      if (!os_log_type_enabled(v13, v14))
      {

        goto LABEL_23;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 67109634;
      *(v15 + 4) = a1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v6;
      *(v15 + 14) = 2080;
      v17 = sub_1B89A907C(v11, v10, &v22);

      *(v15 + 16) = v17;
      _os_log_impl(&dword_1B89A7000, v13, v14, "error: %d extended: %d description: %s", v15, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CC5170](v16, -1, -1);
      v18 = v15;
    }

    else
    {
      if (qword_1EBA916B0 != -1)
      {
        swift_once();
      }

      v19 = sub_1B8A23BC4();
      __swift_project_value_buffer(v19, qword_1EBA91C08);
      v13 = sub_1B8A23BA4();
      v20 = sub_1B8A24234();
      if (!os_log_type_enabled(v13, v20))
      {
        goto LABEL_23;
      }

      v21 = swift_slowAlloc();
      *v21 = 67109376;
      *(v21 + 4) = a1;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v6;
      _os_log_impl(&dword_1B89A7000, v13, v20, "error: %d extended: %d", v21, 0xEu);
      v18 = v21;
    }

    MEMORY[0x1B8CC5170](v18, -1, -1);
LABEL_23:

    return v4;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B89DEF00()
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B8A23784();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  ppDb[0] = 0;
  sub_1B89B8558(&v21 - v5);
  sub_1B8A23744();
  v7 = sub_1B8A23F64();

  v8 = sqlite3_open_v2((v7 + 32), ppDb, 1, 0);

  if (sub_1B89DEC68(v8, ppDb[0]))
  {
    (*(v1 + 8))(v6, v0);
  }

  else
  {
    ppDb[0] = 0;
    if (qword_1EBA916B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8A23BC4();
    __swift_project_value_buffer(v9, qword_1EBA91C08);
    (*(v1 + 16))(v4, v6, v0);
    v10 = sub_1B8A23BA4();
    v11 = sub_1B8A24244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v12 = 136315138;
      sub_1B89DF25C();
      v13 = sub_1B8A24934();
      v15 = v14;
      v16 = *(v1 + 8);
      v16(v4, v0);
      v17 = sub_1B89A907C(v13, v15, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1B89A7000, v10, v11, "Failed to open path: %s", v12, 0xCu);
      v18 = v22;
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CC5170](v18, -1, -1);
      MEMORY[0x1B8CC5170](v12, -1, -1);

      v16(v6, v0);
    }

    else
    {

      v19 = *(v1 + 8);
      v19(v4, v0);
      v19(v6, v0);
    }
  }

  return ppDb[0];
}

unint64_t sub_1B89DF25C()
{
  result = qword_1EBA91468;
  if (!qword_1EBA91468)
  {
    sub_1B8A23784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91468);
  }

  return result;
}

uint64_t Settings.shouldInitializeCloudKitSchema.getter()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (sub_1B89DF2F8())
    {
      return 1;
    }

    else
    {
      return sub_1B89DF3B0() & 1;
    }
  }

  return result;
}

uint64_t sub_1B89DF2F8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = sub_1B89DF5A4(0xD00000000000001DLL, 0x80000001B8A2AC30);
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = sub_1B89DFD70(v1, v3);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B89DF3B0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1B8A23E74();
  if (*(v2 + 16) && (sub_1B8A0DE98(0xD00000000000001BLL, 0x80000001B8A2AC10), (v3 & 1) != 0))
  {

    v4 = sub_1B8A23F54();
    v6 = v5;

    LOBYTE(v4) = sub_1B89DFD70(v4, v6);

    return v4 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Settings(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Settings(_WORD *result, int a2, int a3)
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

uint64_t sub_1B89DF5A4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v94 - v6;
  v97 = v2;
  v8 = [v2 arguments];
  v9 = sub_1B8A240F4();

  v12 = *(v9 + 16);
  if (!v12)
  {
LABEL_18:

    return 0;
  }

  v13 = 0;
  v14 = 56;
  while (1)
  {
    if (v13 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (*(v9 + v14 - 24) == a1 && *(v9 + v14 - 16) == a2)
    {
      break;
    }

    if (sub_1B8A24954())
    {
      break;
    }

    v100 = a1;
    v101 = a2;

    MEMORY[0x1B8CC3E20](61, 0xE100000000000000);
    v16 = sub_1B8A24004();

    if (v16)
    {
      break;
    }

    ++v13;
    v14 += 16;
    if (v12 == v13)
    {
      goto LABEL_18;
    }
  }

  v17 = [v97 arguments];
  v18 = sub_1B8A240F4();

  if (v13 >= *(v18 + 16))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    v89 = result;
    v90 = v11;

    sub_1B8A03EA4(v89, v90, 10);
    v92 = v91;

    result = v89;
    if (v92)
    {
      goto LABEL_87;
    }

    return result;
  }

  v20 = *(v18 + v14 - 24);
  v19 = *(v18 + v14 - 16);

  v96 = v20;
  v100 = v20;
  v101 = v19;
  v98 = 4013373;
  v99 = 0xE300000000000000;
  v21 = sub_1B8A23934();
  v95 = *(*(v21 - 8) + 56);
  v95(v7, 1, 1, v21);
  sub_1B89DDFCC();
  sub_1B8A24484();
  v23 = v22;
  sub_1B89E02E4(v7);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  v100 = v96;
  v101 = v19;
  v98 = 15677;
  v99 = 0xE200000000000000;
  v95(v7, 1, 1, v21);
  sub_1B8A24484();
  v25 = v24;
  v27 = v26;
  sub_1B89E02E4(v7);
  if ((v27 & 1) == 0)
  {
    v36 = v25;
LABEL_22:
    v37 = sub_1B89E034C(v36, v96, v19);
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x1B8CC3DF0](v37, v39, v41, v43);

    return v44;
  }

  v100 = v96;
  v101 = v19;
  v98 = 61;
  v99 = 0xE100000000000000;
  v95(v7, 1, 1, v21);
  sub_1B8A24484();
  v29 = v28;
  v31 = v30;
  sub_1B89E02E4(v7);
  if ((v31 & 1) == 0)
  {
    v36 = v29;
    goto LABEL_22;
  }

  v32 = v97;
  v33 = [v97 arguments];
  v34 = sub_1B8A240F4();

  v35 = *(v34 + 16);

  if (v35 - 1 == v13)
  {
    return 0;
  }

  v45 = [v32 arguments];
  v46 = sub_1B8A240F4();

  if (v13 + 1 >= *(v46 + 16))
  {
    goto LABEL_92;
  }

  v47 = *(v46 + v14 - 8);
  v48 = *(v46 + v14);

  v11 = v48;
  result = v47;
  v49 = HIBYTE(v48) & 0xF;
  v50 = v47 & 0xFFFFFFFFFFFFLL;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v48) & 0xF;
  }

  else
  {
    v51 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    goto LABEL_87;
  }

  if ((v48 & 0x1000000000000000) != 0)
  {
    goto LABEL_93;
  }

  if ((v48 & 0x2000000000000000) != 0)
  {
    v100 = v47;
    v101 = v48 & 0xFFFFFFFFFFFFFFLL;
    if (v47 == 43)
    {
      if (!v49)
      {
LABEL_99:
        __break(1u);
        return result;
      }

      if (--v49)
      {
        v74 = 0;
        v75 = &v100 + 1;
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            break;
          }

          v77 = (v74 * 10) >> 64;
          v78 = 10 * v74;
          if (v77 != v78 >> 63)
          {
            break;
          }

          v61 = __OFADD__(v78, v76);
          v74 = v78 + v76;
          if (v61)
          {
            break;
          }

          ++v75;
          if (!--v49)
          {
            goto LABEL_86;
          }
        }
      }
    }

    else if (v47 == 45)
    {
      if (!v49)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (--v49)
      {
        v62 = 0;
        v63 = &v100 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          v65 = (v62 * 10) >> 64;
          v66 = 10 * v62;
          if (v65 != v66 >> 63)
          {
            break;
          }

          v61 = __OFSUB__(v66, v64);
          v62 = v66 - v64;
          if (v61)
          {
            break;
          }

          ++v63;
          if (!--v49)
          {
            goto LABEL_86;
          }
        }
      }
    }

    else if (v49)
    {
      v83 = 0;
      v84 = &v100;
      while (1)
      {
        v85 = *v84 - 48;
        if (v85 > 9)
        {
          break;
        }

        v86 = (v83 * 10) >> 64;
        v87 = 10 * v83;
        if (v86 != v87 >> 63)
        {
          break;
        }

        v61 = __OFADD__(v87, v85);
        v83 = v87 + v85;
        if (v61)
        {
          break;
        }

        v84 = (v84 + 1);
        if (!--v49)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_85:
    LOBYTE(v49) = 1;
    goto LABEL_86;
  }

  if ((v47 & 0x1000000000000000) != 0)
  {
    v49 = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v49 = sub_1B8A246A4();
    result = v47;
    v50 = v93;
  }

  v52 = *v49;
  if (v52 == 43)
  {
    v67 = v50 == 1;
    v54 = v50 < 1;
    v68 = v50 - 1;
    if (v54)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v67)
    {
      goto LABEL_85;
    }

    if (!v49)
    {
      goto LABEL_86;
    }

    v69 = 0;
    v70 = (v49 + 1);
    while (1)
    {
      v71 = *v70 - 48;
      if (v71 > 9)
      {
        goto LABEL_85;
      }

      v72 = (v69 * 10) >> 64;
      v73 = 10 * v69;
      if (v72 != v73 >> 63)
      {
        goto LABEL_85;
      }

      v61 = __OFADD__(v73, v71);
      v69 = v73 + v71;
      if (v61)
      {
        goto LABEL_85;
      }

      ++v70;
      if (!--v68)
      {
LABEL_77:
        LOBYTE(v49) = 0;
        goto LABEL_86;
      }
    }
  }

  if (v52 != 45)
  {
    if (!v50)
    {
      goto LABEL_85;
    }

    if (!v49)
    {
      goto LABEL_86;
    }

    v79 = 0;
    while (1)
    {
      v80 = *v49 - 48;
      if (v80 > 9)
      {
        goto LABEL_85;
      }

      v81 = (v79 * 10) >> 64;
      v82 = 10 * v79;
      if (v81 != v82 >> 63)
      {
        goto LABEL_85;
      }

      v61 = __OFADD__(v82, v80);
      v79 = v82 + v80;
      if (v61)
      {
        goto LABEL_85;
      }

      ++v49;
      if (!--v50)
      {
        goto LABEL_77;
      }
    }
  }

  v53 = v50 == 1;
  v54 = v50 < 1;
  v55 = v50 - 1;
  if (v54)
  {
    __break(1u);
    goto LABEL_97;
  }

  if (v53)
  {
    goto LABEL_85;
  }

  if (v49)
  {
    v56 = 0;
    v57 = (v49 + 1);
    while (1)
    {
      v58 = *v57 - 48;
      if (v58 > 9)
      {
        goto LABEL_85;
      }

      v59 = (v56 * 10) >> 64;
      v60 = 10 * v56;
      if (v59 != v60 >> 63)
      {
        goto LABEL_85;
      }

      v61 = __OFSUB__(v60, v58);
      v56 = v60 - v58;
      if (v61)
      {
        goto LABEL_85;
      }

      ++v57;
      if (!--v55)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_86:
  LOBYTE(v98) = v49;
  if (v49)
  {
LABEL_87:
    v88 = result;
    if (sub_1B8A24004())
    {

      return 0;
    }

    return v88;
  }

  return result;
}

unsigned __int8 *sub_1B89DFD70(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v41 = a1;
  v42 = a2;
  v39 = 49;
  v40 = 0xE100000000000000;
  v7 = sub_1B8A23934();
  v8 = *(*(v7 - 8) + 56);
  v9 = 1;
  v8(v6, 1, 1, v7);
  sub_1B89DDFCC();
  v10 = sub_1B8A24494();
  sub_1B89E02E4(v6);
  if (!v10)
  {
    return v9;
  }

  v41 = a1;
  v42 = a2;
  v39 = 7562617;
  v40 = 0xE300000000000000;
  v9 = 1;
  v8(v6, 1, 1, v7);
  v11 = sub_1B8A24494();
  sub_1B89E02E4(v6);
  if (!v11)
  {
    return v9;
  }

  v41 = a1;
  v42 = a2;
  v39 = 1702195828;
  v40 = 0xE400000000000000;
  v9 = 1;
  v8(v6, 1, 1, v7);
  v12 = sub_1B8A24494();
  sub_1B89E02E4(v6);
  if (!v12)
  {
    return v9;
  }

  v41 = a1;
  v42 = a2;
  v39 = 28271;
  v40 = 0xE200000000000000;
  v9 = 1;
  v8(v6, 1, 1, v7);
  v13 = sub_1B8A24494();
  result = sub_1B89E02E4(v6);
  if (!v13)
  {
    return v9;
  }

  v15 = HIBYTE(a2) & 0xF;
  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v19 = sub_1B8A03EA4(a1, a2, 10);
    v38 = v37;

    if (v38)
    {
      return 0;
    }

    return (v19 > 0);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B8A246A4();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v26 = result + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_66;
              }

              v28 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_66;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_66;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_74;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              goto LABEL_66;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_66;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_66;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_67:
      LOBYTE(v39) = v15;
      if (v15)
      {
        return 0;
      }

      return (v19 > 0);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_66;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_66;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_66;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v15) = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v41 = a1;
  v42 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v34 = &v41;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          v34 = (v34 + 1);
          if (!--v15)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v23 = &v41 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v29 = &v41 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v15)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1B89E02E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B89E034C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B8A24044();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89E0398(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B8A23884();
    return a2;
  }

  return result;
}

uint64_t sub_1B89E042C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    v22 = sub_1B8A24554();
    if (v9)
    {
      if (v22 < v9)
      {
        result = sub_1B8A24554();
        v9 = result;
        if (result < 0)
        {
          goto LABEL_28;
        }
      }
    }

    result = sub_1B8A24554();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    result = sub_1B8A24554();
    if (result >= v9)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = a4;
  v6 = a3;
  v8 = a2;
  v9 = a1;
  v7 = a5;
  v10 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  if (result < v9)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0 && v9)
  {
    sub_1B89AB538(0, &qword_1EBA91E50, 0x1E699BAF8);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_1B8A24654();
      v13 = v14;
    }

    while (v9 != v14);
  }

  else
  {
  }

  if (v10)
  {
    v16 = sub_1B8A24734();
    v17 = v19;
    v15 = v20;
    v18 = v21;
  }

  else
  {
    v15 = 0;
    v16 = v8 & 0xFFFFFFFFFFFFFF8;
    v17 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v9) | 1;
  }

  *v7 = v16;
  v7[1] = v17;
  v7[2] = v15;
  v7[3] = v18;
  v7[4] = v6;
  v7[5] = v5;
  return result;
}

uint64_t ImageGlyphRecency.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v0 + 112) = v1;
  return v0;
}

uint64_t ImageGlyphRecency.recordEngagement(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B8A23904();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E0738, v1, 0);
}

uint64_t sub_1B89E0738()
{
  v29 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1B8A23BC4();
  __swift_project_value_buffer(v5, qword_1EBA91530);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1B8A23BA4();
  v8 = sub_1B8A24224();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315138;
    sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = v8;
    v14 = v6;
    v15 = sub_1B8A24934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1B89A907C(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1B89A7000, v7, v26, "Local client initiated record engagement for sticker: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B8CC5170](v27, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[6];
  v21 = v0[4];
  v22 = v0[5];
  v6(v20, v0[2], v0[7]);
  (*(v22 + 104))(v20, *MEMORY[0x1E69D4778], v21);
  v23 = swift_task_alloc();
  v0[10] = v23;
  *v23 = v0;
  v23[1] = sub_1B89E09FC;
  v24 = v0[6];

  return sub_1B89E84BC(v24);
}

uint64_t sub_1B89E09FC(double a1)
{
  v4 = *v2;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[3];
    (*(v4[5] + 8))(v4[6], v4[4]);

    return MEMORY[0x1EEE6DFA0](sub_1B89E0B90, v5, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);

    v6 = v4[1];
    v7.n128_f64[0] = a1;

    return v6(v7);
  }
}

uint64_t sub_1B89E0B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E0C00()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91530);
  __swift_project_value_buffer(v0, qword_1EBA91530);
  return sub_1B8A23BB4();
}

uint64_t sub_1B89E0C84()
{
  v0 = type metadata accessor for StickerStore.PersistenceType(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B8A23784();
  (*(*(v3 - 8) + 56))(v2, 1, 3, v3);
  type metadata accessor for StickerStore();
  swift_allocObject();
  result = StickerStore.init(persistence:)(v2);
  qword_1EBA91C28 = result;
  return result;
}

uint64_t sub_1B89E0D60(uint64_t a1)
{
  v2 = sub_1B89EB6E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0D9C(uint64_t a1)
{
  v2 = sub_1B89EB6E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0DD8()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x696A6F6D65;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x72656B63697473;
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

uint64_t sub_1B89E0E54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B89EC73C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B89E0E7C(uint64_t a1)
{
  v2 = sub_1B89EB690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0EB8(uint64_t a1)
{
  v2 = sub_1B89EB690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0EF4(uint64_t a1)
{
  v2 = sub_1B89EB738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0F30(uint64_t a1)
{
  v2 = sub_1B89EB738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0F6C()
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B89E0FB0(uint64_t a1)
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B89E0FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8A24954();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B89E1070(uint64_t a1)
{
  v2 = sub_1B89EB78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E10AC(uint64_t a1)
{
  v2 = sub_1B89EB78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E10F4(uint64_t a1)
{
  v2 = sub_1B89EB7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E1130(uint64_t a1)
{
  v2 = sub_1B89EB7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecencyRecordWrapper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C30, &qword_1B8A27200);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v24 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C38, &qword_1B8A27208);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v24 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C40, &qword_1B8A27210);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C48, &qword_1B8A27218);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C50, &qword_1B8A27220);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *v1;
  v34 = v1[1];
  v35 = v14;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89EB690();
  sub_1B8A24A64();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v40 = 1;
      sub_1B89EB78C();
      v16 = v37;
      sub_1B8A24874();
      v38 = v35;
      type metadata accessor for Sticker(0);
      sub_1B89ECA60(&qword_1EBA911E0, type metadata accessor for Sticker, &protocol conformance descriptor for Sticker);
      v17 = v29;
      sub_1B8A248F4();
      (*(v27 + 8))(v7, v17);
      return (*(v36 + 8))(v13, v16);
    }

    v41 = 2;
    sub_1B89EB738();
    v19 = v26;
    v20 = v37;
    sub_1B8A24874();
    v21 = v30;
    sub_1B8A248B4();
    v22 = v28;
    goto LABEL_7;
  }

  if (v15 == 2)
  {
    v42 = 3;
    sub_1B89EB6E4();
    v19 = v31;
    v20 = v37;
    sub_1B8A24874();
    v21 = v33;
    sub_1B8A248B4();
    v22 = v32;
LABEL_7:
    (*(v22 + 8))(v19, v21);
    return (*(v36 + 8))(v13, v20);
  }

  v39 = 0;
  sub_1B89EB7E0();
  v23 = v37;
  sub_1B8A24874();
  (*(v25 + 8))(v10, v8);
  return (*(v36 + 8))(v13, v23);
}

uint64_t RecencyRecordWrapper.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return MEMORY[0x1B8CC48A0](0);
    }

    v3 = 3;
  }

  else
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x1B8CC48A0](1);
      return sub_1B8A24414();
    }

    v3 = 2;
  }

  MEMORY[0x1B8CC48A0](v3);

  return sub_1B8A23F94();
}

uint64_t RecencyRecordWrapper.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1B8A24A14();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v2 = 3;
    goto LABEL_7;
  }

  if (v1)
  {
    v2 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v2);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t RecencyRecordWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C80, &qword_1B8A27228);
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C88, &qword_1B8A27230);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C90, &qword_1B8A27238);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C98, &qword_1B8A27240);
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA0, &qword_1B8A27248);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_1B89EB690();
  v18 = v67;
  sub_1B8A24A54();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v54 = v10;
  v55 = 0;
  v19 = v9;
  v21 = v64;
  v20 = v65;
  v22 = v66;
  v67 = v14;
  v56 = v16;
  v23 = sub_1B8A24864();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
  {
    v27 = sub_1B8A24694();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA8, &qword_1B8A27250);
    *v29 = &type metadata for RecencyRecordWrapper;
    v30 = v56;
    sub_1B8A247B4();
    sub_1B8A24684();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v67 + 8))(v30, v13);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  if (*(v23 + 32) > 1u)
  {
    if (v25 == 2)
    {
      v72 = 2;
      sub_1B89EB738();
      v36 = v55;
      v37 = v56;
      sub_1B8A247A4();
      if (v36)
      {
LABEL_17:
        (*(v67 + 8))(v37, v13);
        goto LABEL_9;
      }

      v46 = v61;
      v47 = sub_1B8A24814();
      v55 = 0;
      v43 = v47;
      v44 = v52;
      (*(v60 + 8))(v21, v46);
      (*(v67 + 8))(v37, v13);
      swift_unknownObjectRelease();
      v45 = 1;
    }

    else
    {
      v73 = 3;
      sub_1B89EB6E4();
      v41 = v55;
      v42 = v56;
      sub_1B8A247A4();
      if (v41)
      {
        (*(v67 + 8))(v42, v13);
        goto LABEL_9;
      }

      v50 = sub_1B8A24814();
      v51 = v67;
      v55 = 0;
      v43 = v50;
      v44 = v53;
      (*(v62 + 8))(v20, v22);
      (*(v51 + 8))(v42, v13);
      swift_unknownObjectRelease();
      v45 = 2;
    }

    v34 = v63;
    goto LABEL_27;
  }

  if (*(v23 + 32))
  {
    v71 = 1;
    sub_1B89EB78C();
    v38 = v19;
    v39 = v55;
    v37 = v56;
    sub_1B8A247A4();
    v34 = v63;
    v40 = v67;
    if (!v39)
    {
      type metadata accessor for Sticker(0);
      sub_1B89ECA60(&qword_1EBA914E0, type metadata accessor for Sticker, &protocol conformance descriptor for Sticker);
      v48 = v38;
      v49 = v58;
      sub_1B8A24854();
      (*(v59 + 8))(v48, v49);
      (*(v40 + 8))(v37, v13);
      swift_unknownObjectRelease();
      v55 = 0;
      v44 = 0;
      v45 = 0;
      v43 = v69;
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v70 = 0;
  sub_1B89EB7E0();
  v33 = v55;
  v32 = v56;
  sub_1B8A247A4();
  v34 = v63;
  v35 = v67;
  v55 = v33;
  if (v33)
  {
    (*(v67 + 8))(v32, v13);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  (*(v57 + 8))(v12, v54);
  (*(v35 + 8))(v32, v13);
  swift_unknownObjectRelease();
  v43 = 0;
  v44 = 0;
  v45 = 3;
LABEL_27:
  *v34 = v43;
  *(v34 + 8) = v44;
  *(v34 + 16) = v45;
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_1B89E2054()
{
  v1 = *(v0 + 16);
  sub_1B8A24A14();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v2 = 3;
    goto LABEL_7;
  }

  if (v1)
  {
    v2 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v2);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t sub_1B89E2104(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return MEMORY[0x1B8CC48A0](0);
    }

    v3 = 3;
  }

  else
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x1B8CC48A0](1);
      return sub_1B8A24414();
    }

    v3 = 2;
  }

  MEMORY[0x1B8CC48A0](v3);

  return sub_1B8A23F94();
}

uint64_t sub_1B89E21B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B8A24A14();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v3 = 3;
    goto LABEL_7;
  }

  if (v2)
  {
    v3 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v3);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t sub_1B89E22A4(uint64_t a1)
{
  v2 = sub_1B89EB888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E22E0(uint64_t a1)
{
  v2 = sub_1B89EB888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E231C()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x696A6F6D65;
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

uint64_t sub_1B89E2398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B89EC8A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B89E23C0(uint64_t a1)
{
  v2 = sub_1B89EB834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E23FC(uint64_t a1)
{
  v2 = sub_1B89EB834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E2438(uint64_t a1)
{
  v2 = sub_1B89EB930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E2474(uint64_t a1)
{
  v2 = sub_1B89EB930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E24B0(uint64_t a1)
{
  v2 = sub_1B89EB8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E24EC(uint64_t a1)
{
  v2 = sub_1B89EB8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E2528(uint64_t a1)
{
  v2 = sub_1B89EB984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E2564(uint64_t a1)
{
  v2 = sub_1B89EB984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGlyphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CB0, &qword_1B8A27258);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CB8, &qword_1B8A27260);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CC0, &qword_1B8A27268);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CC8, &qword_1B8A27270);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CD0, &qword_1B8A27278);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89EB834();
  sub_1B8A24A64();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1B89EB8DC();
      v18 = v27;
      sub_1B8A24874();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1B89EB888();
      v18 = v30;
      sub_1B8A24874();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1B89EB930();
    v18 = v24;
    sub_1B8A24874();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1B89EB984();
  sub_1B8A24874();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t ImageGlyphType.hashValue.getter()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t ImageGlyphType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D00, &qword_1B8A27280);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D08, &qword_1B8A27288);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D10, &qword_1B8A27290);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D18, &qword_1B8A27298);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D20, &qword_1B8A272A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1B89EB834();
  v17 = v48;
  sub_1B8A24A54();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1B8A24864();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1B8A24694();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA8, &qword_1B8A27250);
      *v27 = &type metadata for ImageGlyphType;
      sub_1B8A247B4();
      sub_1B8A24684();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1B89EB930();
          v32 = v37;
          sub_1B8A247A4();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1B89EB984();
          v28 = v37;
          sub_1B8A247A4();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_0(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1B89EB8DC();
        v31 = v37;
        sub_1B8A247A4();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1B89EB888();
        v33 = v37;
        sub_1B8A247A4();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t ImageGlyphRecency.init()()
{
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v0 + 112) = v1;
  return v0;
}

uint64_t ImageGlyphRecency.lastUsedDateTime(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8A239A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3234, v3, 0);
}

uint64_t sub_1B89E3234()
{
  v16 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);

  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B89A907C(v5, v4, &v15);
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request last used time for emoji: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CC5170](v7, -1, -1);
    MEMORY[0x1B8CC5170](v6, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[4];
  *v8 = v0[3];
  v8[1] = v10;
  (*(v9 + 104))();

  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1B89E3434;
  v12 = v0[8];
  v13 = v0[2];

  return sub_1B89E7E98(v13, v12);
}

uint64_t sub_1B89E3434()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  v5[10] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[5];

    return MEMORY[0x1EEE6DFA0](sub_1B89E35DC, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1B89E35DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageGlyphRecency.lastUsedDateTime(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1B8A23904();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3760, v2, 0);
}

uint64_t sub_1B89E3760()
{
  v30 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1B8A23BC4();
  __swift_project_value_buffer(v5, qword_1EBA91530);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1B8A23BA4();
  v8 = sub_1B8A24224();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136315138;
    sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v27 = v8;
    v14 = v6;
    v15 = sub_1B8A24934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1B89A907C(v18, v17, &v29);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1B89A7000, v7, v27, "Local client initiated request last used time for emoji: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B8CC5170](v28, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[7];
  v21 = v0[5];
  v22 = v0[6];
  v6(v20, v0[3], v0[8]);
  (*(v22 + 104))(v20, *MEMORY[0x1E69D4778], v21);
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_1B89E3A28;
  v24 = v0[7];
  v25 = v0[2];

  return sub_1B89E7E98(v25, v24);
}

uint64_t sub_1B89E3A28()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  v5[12] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[4];

    return MEMORY[0x1EEE6DFA0](sub_1B89E3BE0, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1B89E3BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageGlyphRecency.recordEngagement(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3D14, v2, 0);
}

uint64_t sub_1B89E3D14()
{
  v15 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);

  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B89A907C(v5, v4, &v14);
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated record engagement for emoji: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CC5170](v7, -1, -1);
    MEMORY[0x1B8CC5170](v6, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];
  *v8 = v0[2];
  v8[1] = v10;
  (*(v9 + 104))();

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1B89E3F10;
  v12 = v0[7];

  return sub_1B89E84BC(v12);
}

uint64_t sub_1B89E3F10(double a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = v1;

  v6 = v4[6];
  if (v1)
  {
    v7 = v4[4];
    (*(v6 + 8))(v4[7], v4[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B89ECC60, v7, 0);
  }

  else
  {
    (*(v6 + 8))();

    v8 = v5[1];
    v9.n128_f64[0] = a1;

    return v8(v9);
  }
}

uint64_t ImageGlyphRecency.recordEngagement(forCharacter:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E419C, v2, 0);
}

uint64_t sub_1B89E419C()
{
  v15 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);

  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B89A907C(v5, v4, &v14);
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated record engagement for character: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CC5170](v7, -1, -1);
    MEMORY[0x1B8CC5170](v6, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];
  *v8 = v0[2];
  v8[1] = v10;
  (*(v9 + 104))();

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1B89E4398;
  v12 = v0[7];

  return sub_1B89E84BC(v12);
}

uint64_t sub_1B89E4398(double a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = v1;

  v6 = v4[6];
  if (v1)
  {
    v7 = v4[4];
    (*(v6 + 8))(v4[7], v4[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B89E4560, v7, 0);
  }

  else
  {
    (*(v6 + 8))();

    v8 = v5[1];
    v9.n128_f64[0] = a1;

    return v8(v9);
  }
}

uint64_t sub_1B89E4560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageGlyphRecency.recentRecords(limit:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B89E4678;

  return ImageGlyphRecency.recentRecords(for:limit:)(a1, &unk_1F373EE40, a2);
}

uint64_t sub_1B89E4678()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B89E47AC, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t ImageGlyphRecency.recentRecords(for:limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[93] = a1;
  v5 = sub_1B8A239A4();
  v4[102] = v5;
  v4[103] = *(v5 - 8);
  v4[104] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E4890, v3, 0);
}

uint64_t sub_1B89E4890()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 800);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent records with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D28, &qword_1B8A272F0);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 696, sub_1B89E4A0C, v0 + 656);
}

uint64_t sub_1B89E4A0C()
{
  *(v1 + 840) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 696, sub_1B89E4E84, v1 + 704);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1B89E4A50, *(v1 + 808), 0);
  }
}

uint64_t sub_1B89E4A50()
{
  v40 = v0;
  v1 = v0[87];
  v2 = *(v1 + 16);

  v36 = v2;
  if (v2)
  {
    v7 = 0;
    v33 = v0[103];
    v8 = v0[105];
    v9 = MEMORY[0x1E69E7CC0];
    v34 = (v33 + 8);
    while (1)
    {
      v35 = v9;
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_32;
      }

      v10 = v0[104];
      v11 = v0[99];
      v12 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v13 = *(v33 + 72);
      v14 = *(v33 + 16);
      v14(v10, v1 + v12 + v13 * v7, v0[102]);
      sub_1B89E52CC(v10, v11, &v37);
      if (v8)
      {
        break;
      }

      ++v7;
      v15 = *v34;
      (*v34)(v0[104], v0[102]);
      v16 = v39;
      if (v39 == 255)
      {
        sub_1B89EBA74(v37, v38, 255);
        if (v7 == v36)
        {
LABEL_19:
          v9 = v35;
          goto LABEL_20;
        }

        v17 = v1 + v12 + v13 * v7;
        while (v7 < *(v1 + 16))
        {
          v18 = v0[104];
          v19 = v0[99];
          v14(v18, v17, v0[102]);
          sub_1B89E52CC(v18, v19, &v37);
          v15(v0[104], v0[102]);
          v16 = v39;
          ++v7;
          if (v39 != 255)
          {
            goto LABEL_12;
          }

          sub_1B89EBA74(v37, v38, 255);
          v17 += v13;
          if (v36 == v7)
          {
            goto LABEL_19;
          }
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_12:
      v20 = v37;
      v21 = v38;
      v9 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1B89DD1F8(0, *(v35 + 16) + 1, 1, v35);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1B89DD1F8((v22 > 1), v23 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v8 = 0;
      *(v9 + 16) = v23 + 1;
      v24 = v9 + 24 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      *(v24 + 48) = v16;
      if (v7 == v36)
      {
        goto LABEL_20;
      }
    }

    v30 = v0[104];
    v31 = v0[102];

    (*v34)(v30, v31);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v25 = v0[100];
    v26 = v0[93];

    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D30, &qword_1B8A272F8);
    v26[4] = sub_1B89CCD90(&qword_1EBA91D38, &qword_1EBA91D30, &qword_1B8A272F8, MEMORY[0x1E69E6968]);
    isUniquelyReferenced_nonNull_native = swift_allocObject();
    *v26 = isUniquelyReferenced_nonNull_native;
    if ((v25 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      v27 = *(v9 + 16);
      if (v27 >= v25)
      {
        v27 = v25;
      }

      v28 = 2 * v27;
      if (v25)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = 1;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v9;
      *(isUniquelyReferenced_nonNull_native + 24) = v9 + 32;
      *(isUniquelyReferenced_nonNull_native + 32) = 0;
      *(isUniquelyReferenced_nonNull_native + 40) = v29;
      v5 = sub_1B89E4DF8;
      isUniquelyReferenced_nonNull_native = (v0 + 2);
      v4 = v0 + 87;
      v6 = v0 + 94;
    }

    return MEMORY[0x1EEE6DEB0](isUniquelyReferenced_nonNull_native, v4, v5, v6);
  }
}