BOOL AnnotationViewModel.canBeExpanded.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 1;
  }

  v2 = *(v0 + 32);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (sub_1E1AF71CC() > 1)
    {
      return 1;
    }

    v4 = sub_1E17F78A0();
    v6 = v11;
    if (sub_1E1AF71CC())
    {
      goto LABEL_8;
    }

LABEL_19:
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
  {
    return 1;
  }

  v4 = sub_1E17F78A0();
  v6 = v5;
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E68FFD80](0, v2);
    v9 = *(v12 + 40);
    v8 = *(v12 + 48);

    v3 = v2 >> 62;
    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(v2 + 32);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);

  if (!v6)
  {
LABEL_22:
    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_23:

    return 1;
  }

LABEL_11:
  if (!v8)
  {
    goto LABEL_23;
  }

  if (v4 == v9 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_24:
  if (v3)
  {
    v13 = sub_1E1AF71CC();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(*(v2 + 32) + 72);
        if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
        {
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return 1;
          }

          goto LABEL_33;
        }
      }

      else
      {
        __break(1u);
      }

      goto LABEL_41;
    }

LABEL_36:
    v16 = *(MEMORY[0x1E68FFD80](0, v2) + 72);

    swift_unknownObjectRelease();
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_42;
    }

LABEL_41:
    v17 = sub_1E1AF71CC();
LABEL_42:

    if (v17)
    {
      return 1;
    }
  }

LABEL_33:
  v15 = *(v0 + 56);
  if (!v15)
  {
    return 0;
  }

  return *(v15 + 24) != 0;
}

double sub_1E17F7BF8@<D0>(uint64_t a1@<X8>)
{
  sub_1E17F7830(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1E17F7C68(uint64_t a1)
{
  result = sub_1E1AF436C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NewPencilPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 1;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_1E1308EC0(a2, v4 + 16);
  return v4;
}

uint64_t NewPencilPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 1;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_1E1308EC0(a2, v2 + 16);
  return v2;
}

double NewPencilPairingCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E17F7DA4(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t NewPencilPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NewPencilPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1E17F7E90(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t EmptyShelfComponentTypeMappingProvider.componentType(for:asPartOf:)()
{
  return 0;
}

{
  return 0;
}

uint64_t CompoundCollectionElementsObserver.__allocating_init(children:)(uint64_t a1)
{
  swift_allocObject();
  sub_1E17F9650(a1);
  v3 = v2;

  return v3;
}

uint64_t CompoundCollectionElementsObserver.init(children:)(uint64_t a1)
{
  sub_1E17F9650(a1);
  v2 = v1;

  return v2;
}

double CompoundCollectionElementsObserver.addChild(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1E172F134(0, v5[2] + 1, 1, v5);
    *(v2 + 16) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1E172F134((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *(v2 + 16) = v5;
  swift_endAccess();
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10 && a1)
  {
    v11 = v10;
    swift_beginAccess();
    v12 = *(v2 + 24);
    swift_unknownObjectRetain_n();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v12;
    if ((v13 & 1) == 0)
    {
      v12 = sub_1E172F110(0, v12[2] + 1, 1, v12);
      *(v2 + 24) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1E172F110((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = a1;
    v16[5] = v11;
    *(v2 + 24) = v12;
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return result;
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.addChildren(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();

  sub_1E1728A6C(v2);
  swift_endAccess();
  v3 = 0;
  v4 = *(a1._rawValue + 2);
  v5 = a1._rawValue + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = &v5[16 * v3];
  while (1)
  {
    if (v4 == v3)
    {
      swift_beginAccess();
      sub_1E1728A90(v6);
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
        v6 = sub_1E172F110(0, v6[2] + 1, 1, v6);
      }

      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v6 = sub_1E172F110((v14 > 1), v15 + 1, 1, v6);
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

double CompoundCollectionElementsObserver.removeChild(_:)(uint64_t a1)
{
  swift_beginAccess();
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
    sub_1E1487924(v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (a1)
      {
        swift_beginAccess();
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
          sub_1E148793C(v10);
          swift_endAccess();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.removeAllChildren()()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v0 + 24) = v1;
}

void CompoundCollectionElementsObserver.removingChildren(where:)(uint64_t (*a1)(void))
{
  swift_beginAccess();
  v26 = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = v5;
    while (v7 < *(v3 + 16))
    {
      v27 = *(v3 + 32 + 16 * v7);
      v5 = v7 + 1;
      v8 = swift_unknownObjectRetain();
      if (((a1)(v8, *(&v27 + 1)) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E135CA84(0, *(v6 + 16) + 1, 1);
        }

        v9 = v27;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_1E135CA84((v10 > 1), v11 + 1, 1);
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
    v6 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *(v1 + 16) = v6;

    v13 = *(v1 + 16);
    v14 = *(v13 + 16);

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
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
          v16 = sub_1E172F110(0, v16[2] + 1, 1, v16);
        }

        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          v16 = sub_1E172F110((v23 > 1), v24 + 1, 1, v16);
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

double sub_1E17F88C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v12 = *(*(v5 + 16) + 16);
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

double sub_1E17F89B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F8B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F8E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(*(v3 + 16) + 16);
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

double sub_1E17F8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v12 = *(*(v5 + 16) + 16);
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

double sub_1E17F8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v12 = *(*(v5 + 16) + 16);
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

double sub_1E17F90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v12 = *(*(v5 + 16) + 16);
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

double sub_1E17F91D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v12 = *(*(v5 + 16) + 16);
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

double sub_1E17F92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

double sub_1E17F93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = *(*(v4 + 16) + 16);
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

uint64_t sub_1E17F948C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;

  sub_1E14882C8(sub_1E17F9784, v11, v7);
  v9 = v8;

  return v9;
}

uint64_t CompoundCollectionElementsObserver.deinit()
{

  return v0;
}

uint64_t CompoundCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E17F95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;

  sub_1E14882C8(sub_1E17F99EC, v11, v7);
  v9 = v8;

  return v9;
}

void sub_1E17F9650(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(a1 + 16);
  v3 = 0;
  v4 =  + 32;
  v5 = MEMORY[0x1E69E7CC0];
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
        v5 = sub_1E172F110(0, v5[2] + 1, 1, v5);
      }

      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1E172F110((v13 > 1), v14 + 1, 1, v5);
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

uint64_t type metadata accessor for VideoPlaybackFailure(uint64_t a1)
{
  result = qword_1EE1DB258;
  if (!qword_1EE1DB258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E17F9A50(uint64_t a1)
{
  sub_1E17F9B20(319);
  if (v1 <= 0x3F)
  {
    sub_1E17F9B98(319, &qword_1EE1E2320, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1E17F9B98(319, &qword_1EE1D23B8, &qword_1EE1D23B0, sub_1E17F9C3C);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E17F9B20(uint64_t a1)
{
  if (!qword_1EE1D2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9B98, &qword_1E1B35FA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1D2690);
    }
  }
}

void sub_1E17F9B98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1E17F9BE8(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E17F9BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E17F9C3C()
{
  result = qword_1EE1D23C0;
  if (!qword_1EE1D23C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D23C0);
  }

  return result;
}

uint64_t VideoViewManager.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9BA0, &unk_1E1B35FD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v6 - v1;
  v3 = sub_1E1AF436C();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for VideoViewManager(0);
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(v6, v2);
  return v4;
}

uint64_t VideoViewManager.__allocating_init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(a1, a2);
  return v4;
}

uint64_t type metadata accessor for VideoViewManager(uint64_t a1)
{
  result = qword_1EE1F19B0;
  if (!qword_1EE1F19B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoViewManager.init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF58EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE2160F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1E1AF590C();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_videoViews) = sub_1E159F658(MEMORY[0x1E69E7CC0]);
  sub_1E134FD1C(a1, v2 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_networkInquiry, &qword_1ECEB85D8, &unk_1E1B2D1F8);
  sub_1E134FD1C(a2, v2 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_metricsPipeline, &qword_1ECEB9BA0, &unk_1E1B35FD0);
  v10 = [objc_opt_self() defaultCenter];

  v11 = sub_1E1AF5DBC();
  [v10 addObserver:v2 selector:sel_videoDecodersUnavailable_ name:v11 object:0];

  sub_1E1308058(a2, &qword_1ECEB9BA0, &unk_1E1B35FD0);
  sub_1E1308058(a1, &qword_1ECEB85D8, &unk_1E1B2D1F8);
  return v2;
}

uint64_t VideoViewManager.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1E1AF5DBC();
  [v1 removeObserver:v0 name:v2 object:0];

  v3 = OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_logger;
  v4 = sub_1E1AF591C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_networkInquiry, &qword_1ECEB85D8, &unk_1E1B2D1F8);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_metricsPipeline, &qword_1ECEB9BA0, &unk_1E1B35FD0);
  return v0;
}

uint64_t VideoViewManager.__deallocating_deinit()
{
  VideoViewManager.deinit();

  return swift_deallocClassInstance();
}

id sub_1E17FA1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v70 = a7;
  v66 = a5;
  v64 = a4;
  v68 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0, &unk_1E1B08080);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v60 - v15;
  v16 = type metadata accessor for VideoConfiguration(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v60 - v20;
  v22 = sub_1E1AEFCCC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  sub_1E134FD1C(a1, &v72, &unk_1ECEB5670, qword_1E1B03EC0);
  if (!*(&v73 + 1))
  {
    v29 = &unk_1ECEB5670;
    v30 = qword_1E1B03EC0;
    v31 = &v72;
    goto LABEL_5;
  }

  v75[0] = v72;
  v75[1] = v73;
  v76 = v74;
  sub_1E134FD1C(a2, v21, &unk_1ECEB4B60, &unk_1E1B02620);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v33 = v28;
    v34 = a6;
    v35 = v33;
    (*(v23 + 32))();
    v36 = OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_videoViews;
    swift_beginAccess();
    v37 = *(v8 + v36);
    v38 = *(v37 + 16);
    v63 = v8;
    v62 = v22;
    if (v38)
    {

      v39 = sub_1E135FCF4(v75);
      if (v40)
      {
        v41 = *(*(v37 + 56) + 16 * v39);

        v42 = swift_dynamicCastUnknownClass();
        if (v42)
        {
          v32 = v42;
          sub_1E17FAE38(v68, v18);
          v43 = v69;
          v44 = v70;
          (*(v69 + 120))(v18, v70, v69);
          v45 = *(v43 + 32);

          v45(v46, v44, v43);
          (*(v23 + 8))(v35, v62);
LABEL_13:
          sub_1E134B88C(v75);
          return v32;
        }

        v8 = v63;
        v22 = v62;
      }

      else
      {

        v8 = v63;
      }
    }

    v60 = v23;
    sub_1E134E724(v75, &v72);
    v47 = *(v23 + 16);
    v61 = v35;
    v47(v25, v35, v22);
    v48 = v8;
    v49 = v18;
    sub_1E17FAE38(v68, v18);
    v50 = v65;
    sub_1E134FD1C(v64, v65, &qword_1ECEB36B0, &unk_1E1B08080);
    v51 = v67;
    sub_1E134FD1C(v66, v67, &qword_1ECEB36B0, &unk_1E1B08080);
    sub_1E134FD1C(v48 + OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_networkInquiry, v71, &qword_1ECEB85D8, &unk_1E1B2D1F8);
    v52 = v69;
    v53 = v70;
    v54 = *(v69 + 16);

    v55 = v25;
    v56 = v63;
    v57 = v54(&v72, v55, v49, v50, v51, v71, v34, v53, v52);
    swift_beginAccess();
    v32 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *(v56 + v36);
    *(v56 + v36) = 0x8000000000000000;
    sub_1E17FAE9C(v32, v75, isUniquelyReferenced_nonNull_native, v71, v53, v52);
    *(v56 + v36) = v71[0];
    swift_endAccess();
    (*(v60 + 8))(v61, v62);
    goto LABEL_13;
  }

  sub_1E134B88C(v75);
  v29 = &unk_1ECEB4B60;
  v30 = &unk_1E1B02620;
  v31 = v21;
LABEL_5:
  sub_1E1308058(v31, v29, v30);
  return 0;
}

void sub_1E17FA7A4(__n128 a1)
{
  v2 = v1;
  v3 = sub_1E1AEF54C();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  *&v40[0] = 0x6B63616279616C50;
  *(&v40[0] + 1) = 0xEA00000000006449;
  sub_1E1AF6F6C();
  if (!*(v4 + 16) || (v5 = sub_1E135FCF4(v41), (v6 & 1) == 0))
  {

    sub_1E134B88C(v41);
LABEL_13:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_14;
  }

  sub_1E137A5C4(*(v4 + 56) + 32 * v5, &v37);
  sub_1E134B88C(v41);

  if (!*(&v38 + 1))
  {
LABEL_14:
    sub_1E1308058(&v37, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = v41[0];
  v7 = v41[1];
  v9 = sub_1E1AEF54C();
  if (!v9)
  {

    goto LABEL_13;
  }

  v10 = v9;
  strcpy(v39, "videoViewError");
  v39[15] = -18;
  sub_1E1AF6F6C();
  if (!*(v10 + 16) || (v11 = sub_1E135FCF4(v41), (v12 & 1) == 0))
  {

    sub_1E134B88C(v41);
    v37 = 0u;
    v38 = 0u;
    goto LABEL_17;
  }

  sub_1E137A5C4(*(v10 + 56) + 32 * v11, &v37);
  sub_1E134B88C(v41);

  if (!*(&v38 + 1))
  {
LABEL_17:

    goto LABEL_14;
  }

  sub_1E1301CF0(&v37, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B070F0;
  sub_1E1AF382C();
  v13 = OBJC_IVAR____TtC11AppStoreKit16VideoViewManager_videoViews;
  swift_beginAccess();
  v14 = *(*(v2 + v13) + 16);
  v42 = MEMORY[0x1E69E6530];
  v41[0] = v14;
  sub_1E1AF38BC();
  sub_1E1308058(v41, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E137A5C4(v40, v41);
  sub_1E1AF38BC();
  sub_1E1308058(v41, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v15 = *(v2 + v13);
  *&v37 = v8;
  *(&v37 + 1) = v7;

  sub_1E1AF6F6C();
  if (*(v15 + 16))
  {
    sub_1E135FCF4(v41);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1E134B88C(v41);

  v42 = MEMORY[0x1E69E6370];
  LOBYTE(v41[0]) = v17 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v41, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF591C();
  sub_1E1AF54AC();

  v18 = *(v2 + v13);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(v2 + v13) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v36 = *(v2 + v13);

  v26 = 0;
  while (v24)
  {
LABEL_29:
    v28 = *(v36 + 56) + ((v26 << 10) | (16 * __clz(__rbit64(v24))));
    v29 = *v28;
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 8);
    v33 = *(v32 + 8);
    v34 = v29;
    v33(v41, ObjectType, v32);

    sub_1E1AF6F6C();
    v35 = MEMORY[0x1E68FFC60](v41, &v37);
    sub_1E134B88C(&v37);
    sub_1E134B88C(v41);
    if ((v35 & 1) == 0)
    {
      (*(v30 + 144))(1, ObjectType, v30);
    }

    v24 &= v24 - 1;
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      __swift_destroy_boxed_opaque_existential_1(v40);
      return;
    }

    v24 = *(v20 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_1E17FAE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E17FAE9C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v13 = sub_1E135FCF4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1E168A730(v16, a3 & 1);
      v22 = sub_1E135FCF4(a2);
      if ((v17 & 1) != (v23 & 1))
      {
LABEL_17:
        sub_1E1AF757C();
        __break(1u);
        return;
      }

      v13 = v22;
      v19 = *a4;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1E1416CD4();
  }

  v19 = *a4;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    sub_1E134E724(a2, v31);
    v19[(v13 >> 6) + 8] |= 1 << v13;
    v24 = v19[6] + 40 * v13;
    v25 = v32;
    v26 = v31[1];
    *v24 = v31[0];
    *(v24 + 16) = v26;
    *(v24 + 32) = v25;
    v27 = (v19[7] + 16 * v13);
    *v27 = a1;
    v27[1] = a6;
    v28 = v19[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      v19[2] = v30;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v20 = v19[7] + 16 * v13;
  v21 = *v20;
  *v20 = a1;
  *(v20 + 8) = a6;
}

void sub_1E17FB034(uint64_t a1)
{
  sub_1E1AF591C();
  if (v1 <= 0x3F)
  {
    sub_1E17FB168(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E17FB168(uint64_t a1)
{
  if (!qword_1EE1E3AB0)
  {
    sub_1E1AF436C();
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1E3AB0);
    }
  }
}

uint64_t SearchLandingDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_1E134FD1C(a2, v13, &unk_1ECEB4B60, &unk_1E1B02620);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1E13E23F8(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_1E134FD1C(a2, v10, &unk_1ECEB4B60, &unk_1E1B02620);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E17FC2DC;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_1EE1E9D48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v22 = qword_1EE2166A0;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_1E159D6F0(v21);
  v23 = (v14 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3228, &qword_1E1B06190);
  swift_allocObject();
  *(v14 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v14 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3238, &qword_1E1B061A0);
  swift_allocObject();
  *(v14 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v14 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v35 = sub_1E1AF5BEC();

  v36 = v19;

  v37 = v59;

  sub_1E1308058(v50, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v14 + v34) = v35;
  v38 = qword_1EE1E9DD8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_1EE1E9DE0, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_1E13E23F8(v54, v14 + qword_1EE216678);
  *v23 = sub_1E17FC094;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_1E1445E6C;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_1E17FC188;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_1E155BA28;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_1EE1E9E90) = v57;
  *(v14 + qword_1EE216690) = v48;
  return v14;
}

uint64_t SearchLandingDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a3;
  v71 = a4;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v64 = a2;
  sub_1E134FD1C(a2, &v61 - v14, &unk_1ECEB4B60, &unk_1E1B02620);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1E13E23F8(v15, v18 + v16);
  v19 = v62;
  *(v18 + v17) = v62;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v63 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_1E134FD1C(a2, v12, &unk_1ECEB4B60, &unk_1E1B02620);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E17FC568;
  *(v21 + 24) = v19;
  v68 = v21;
  *(v6 + qword_1EE1E9D48) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v23 = qword_1EE2166A0;
  v72 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_1E159D6F0(v22);
  v24 = (v6 + qword_1EE1E9E00);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_1EE1E9EA0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_1EE1E9E08);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_1EE1E9DF0);
  *v27 = 0;
  v27[1] = 0;
  v65 = v27;
  v28 = (v6 + qword_1EE1E9E98);
  *v28 = 0;
  v28[1] = 0;
  v66 = v28;
  v29 = (v6 + qword_1EE216698);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v30 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3228, &qword_1E1B06190);
  swift_allocObject();
  *(v6 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v6 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3238, &qword_1E1B061A0);
  swift_allocObject();
  *(v6 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v6 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v36 = sub_1E1AF5BEC();
  v37 = v63;

  v69 = v20;

  sub_1E1308058(v64, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v6 + v35) = v36;
  v38 = qword_1EE1E9DD8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v70;
  v40(v6 + qword_1EE1E9DE0, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_1E13E23F8(v67, v6 + qword_1EE216678);
  v43 = *v24;
  v44 = v24[1];
  *v24 = sub_1E17FC564;
  v24[1] = v37;
  sub_1E1300EA8(v43, v44);
  v45 = *v26;
  v46 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_1E1300EA8(v45, v46);
  if (v42)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    v48 = sub_1E155BD80;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v50 = *v25;
  v49 = v25[1];
  *v25 = v48;
  v25[1] = v47;
  sub_1E1300EA8(v50, v49);
  v51 = v65;
  v52 = *v65;
  v53 = v65[1];
  v54 = v69;
  *v65 = sub_1E17FC590;
  v51[1] = v54;
  sub_1E1300EA8(v52, v53);
  v55 = v66;
  v56 = *v66;
  v57 = v66[1];
  v58 = v68;
  *v66 = sub_1E171A85C;
  v55[1] = v58;
  sub_1E1300EA8(v56, v57);
  v59 = v72;
  *(v6 + qword_1EE1E9E90) = v71;
  *(v6 + qword_1EE216690) = v59;
  return v6;
}

uint64_t sub_1E17FBD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2920, &qword_1E1B360A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a2, v10, &unk_1ECEB4B60, &unk_1E1B02620);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E1308058(v10, &unk_1ECEB4B60, &unk_1E1B02620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2908, &qword_1E1B02FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9BA8, &unk_1E1B36090);
    sub_1E17FC500();
    swift_allocError();
    *v15 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    (*(v12 + 16))(v7, v14, v11);
    sub_1E1AF4C1C();

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v17 = sub_1E1AF4BFC();

    v18 = sub_1E136AB68(v7, v17, "AppStoreKit/SearchLandingDiffablePageContentPresenter.swift", 59, 2);

    sub_1E1308058(v7, &qword_1ECEB2920, &qword_1E1B360A0);
    (*(v12 + 8))(v14, v11);
    return v18;
  }
}

uint64_t sub_1E17FC098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v4 = sub_1E1AF4C0C();

  v5 = sub_1E1367B40(a1, v4, "AppStoreKit/SearchLandingDiffablePageContentPresenter.swift", 59, 2);

  return v5;
}

uint64_t sub_1E17FC190(uint64_t a1, uint64_t a2)
{
  sub_1E134FD1C(a1, &v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (v7)
  {
    sub_1E1301CF0(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E137A5C4(v8, &v6);
    v3 = sub_1E136AE04(&v6, a2, "AppStoreKit/SearchLandingDiffablePageContentPresenter.swift", 59, 2);

    sub_1E1308058(&v6, &qword_1ECEB2910, &qword_1E1B02FC0);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2908, &qword_1E1B02FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9BA8, &unk_1E1B36090);
    sub_1E17FC500();
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t SearchLandingDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E17FC36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1E1300EA8(a10, a11);
  sub_1E1300EA8(a6, a7);
  sub_1E1300EA8(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E17FC3D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E17FBD64(a1, v1 + v4, v6, v7);
}

uint64_t type metadata accessor for SearchLandingDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_1EE1D38C0;
  if (!qword_1EE1D38C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E17FC500()
{
  result = qword_1ECEB9BB0[0];
  if (!qword_1ECEB9BB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9BA8, &unk_1E1B36090);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB9BB0);
  }

  return result;
}

void *DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v15 = *v13;
  *(v14 + qword_1EE1E9D48) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v17 = qword_1EE2166A0;
  *(v14 + v17) = sub_1E159D6F0(v16);
  v50 = (v14 + qword_1EE1E9E00);
  *v50 = 0;
  v50[1] = 0;
  v18 = (v14 + qword_1EE1E9EA0);
  *v18 = 0;
  v18[1] = 0;
  v52 = v18;
  v19 = (v14 + qword_1EE1E9E08);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_1EE1E9DF0);
  *v20 = 0;
  v20[1] = 0;
  v51 = v20;
  v21 = (v14 + qword_1EE1E9E98);
  *v21 = 0;
  v21[1] = 0;
  v53 = v21;
  v22 = (v14 + qword_1EE216698);
  *v22 = 0u;
  v22[1] = 0u;
  *(v22 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v23 = qword_1EE2166C0;
  v25 = v15[11];
  v26 = v15[12];
  v27 = v15[13];
  v28 = v15[14];
  v62 = v15[10];
  v24 = v62;
  v63 = v25;
  v64 = v26;
  v65 = v27;
  v66 = v28;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v62);
  sub_1E1AF5BFC();
  *(v14 + v23) = sub_1E1AF5BDC();
  v29 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v14 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216680;
  v62 = v24;
  v63 = v25;
  v64 = v26;
  v65 = v27;
  v66 = v28;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v62);
  sub_1E1AF5BFC();
  *(v14 + v30) = sub_1E1AF5BDC();
  v31 = qword_1EE2166B0;
  *(v14 + v31) = sub_1E1AF5BDC();
  v32 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v14 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  *(v14 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE1E9DD8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v36 = *(*(v35 - 8) + 56);
  v36(v14 + v34, 1, 1, v35);
  v36(v14 + qword_1EE1E9DE0, 1, 1, v35);
  v14[2] = a1;
  sub_1E13E23F8(a2, v14 + qword_1EE216678);
  v37 = *v50;
  v38 = v50[1];
  *v50 = a4;
  v50[1] = a5;
  sub_1E1300EA8(v37, v38);
  v39 = *v19;
  v40 = v19[1];
  *v19 = a6;
  v19[1] = a7;
  sub_1E1300EA8(v39, v40);
  if (a3)
  {
    v41 = swift_allocObject();
    v41[2] = v24;
    v41[3] = v25;
    v41[4] = v26;
    v41[5] = v27;
    v41[6] = v28;
    v41[7] = a3;
    v42 = sub_1E180325C;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v44 = *v52;
  v43 = v52[1];
  *v52 = v42;
  v52[1] = v41;
  sub_1E1300EA8(v44, v43);
  v45 = *v51;
  v46 = v51[1];
  *v51 = a8;
  v51[1] = a9;
  sub_1E1300EA8(v45, v46);
  v47 = *v53;
  v48 = v53[1];
  *v53 = a10;
  v53[1] = a11;
  sub_1E1300EA8(v47, v48);
  *(v14 + qword_1EE1E9E90) = a12;
  *(v14 + qword_1EE216690) = a13;
  return v14;
}

uint64_t DiffablePageContentPresenter.deinit()
{
  sub_1E17FF8A0();

  sub_1E1308058(v0 + qword_1EE216678, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_unknownObjectRelease();

  sub_1E1300EA8(*(v0 + qword_1EE1E9E00), *(v0 + qword_1EE1E9E00 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1E9EA0), *(v0 + qword_1EE1E9EA0 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1E9E08), *(v0 + qword_1EE1E9E08 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1E9DF0), *(v0 + qword_1EE1E9DF0 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1E9E98), *(v0 + qword_1EE1E9E98 + 8));

  sub_1E1360B10(v0 + qword_1EE216698);

  sub_1E1308058(v0 + qword_1EE1E9DD8, &qword_1ECEB5570, &unk_1E1B16220);
  sub_1E1308058(v0 + qword_1EE1E9DE0, &qword_1ECEB5570, &unk_1E1B16220);
  return v0;
}

uint64_t sub_1E17FCBE8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1E1AF5DFC();

  return sub_1E1AF590C();
}

double sub_1E17FCD30(uint64_t a1)
{
  *(v1 + qword_1EE1E9D48) = a1;
  swift_unknownObjectRelease();
  return result;
}

double sub_1E17FCD48(uint64_t a1)
{
  *(v1 + qword_1EE1E9DF8) = a1;

  return result;
}

double sub_1E17FCD60(uint64_t a1)
{
  v3 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1E17FCDB8()
{
  v1 = *(v0 + qword_1EE1E9DF8);
  v9 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v1 + 32 + 40 * v3;
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);

          sub_1E134B88C(v8);

          __break(1u);
          return;
        }

        sub_1E134E724(v4, v8);
        sub_1E1800A2C(v8, v0, &v7);
        v6 = sub_1E134B88C(v8);
        if (v7)
        {
          break;
        }

        ++v5;
        v4 += 40;
        if (v2 == v5)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x1E68FEF20](v6);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v3 = v5 + 1;
      sub_1E1AF62AC();
    }

    while (v2 - 1 != v5);
  }

LABEL_11:
}

uint64_t sub_1E17FCF30(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EE1E9EA0);
  v4 = *(v2 + qword_1EE1E9EA0);
  v5 = *(v2 + qword_1EE1E9EA0 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1E1300EA8(v4, v5);
}

uint64_t sub_1E17FCF50@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE216698;
  swift_beginAccess();
  return sub_1E136073C(v1 + v3, a1);
}

uint64_t sub_1E17FCFA8(uint64_t a1)
{
  v3 = qword_1EE216698;
  swift_beginAccess();
  sub_1E136197C(a1, v1 + v3);
  swift_endAccess();
  sub_1E1800AEC();
  return sub_1E1360B10(a1);
}

void sub_1E17FD034(char a1)
{
  v2 = *(v1 + qword_1EE1E9D50);
  *(v1 + qword_1EE1E9D50) = a1;
  sub_1E1800B60(v2);
}

void *sub_1E17FD04C()
{
  v0 = sub_1E1803290();
  v1 = v0;
  return v0;
}

void sub_1E17FD078(uint64_t a1)
{
  v3 = qword_1EE2166C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E17FD154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v2 + v4, a2, &qword_1ECEB5570, &unk_1E1B16220);
}

uint64_t sub_1E17FD1C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1E1803C04(a1, v2 + v4);
  return swift_endAccess();
}

void sub_1E17FD220()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v36 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      sub_1E1300E34(v8, *(v0 + qword_1EE1E9E00 + 8));
      if (qword_1EE1EC290 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_1EE1EC298[0];
      v12 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
      sub_1E1300E34(v8, *(v0 + qword_1EE1E9E00 + 8));
    }

    sub_1E17FD6C0();
    if ((*(v1 + qword_1EE2166D0) & 1) != 0 || (v14 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v15 = v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      v34 = v15;
      v35 = v9;
      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v36;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v36);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v24 = swift_allocObject();
      v25 = v2[10];
      v23[2] = v25;
      v26 = v2[11];
      v23[3] = v26;
      v27 = v2[12];
      v23[4] = v27;
      v28 = v2[13];
      v23[5] = v28;
      v29 = v2;
      v30 = v2[14];
      v23[6] = v30;
      v23[7] = v22;
      v23[8] = v29;
      swift_weakInit();
      v31 = swift_allocObject();
      *&v32 = v25;
      *(&v32 + 1) = v26;
      *&v33 = v27;
      *(&v33 + 1) = v28;
      *(v31 + 16) = v32;
      *(v31 + 32) = v33;
      *(v31 + 48) = v30;
      *(v31 + 56) = v24;

      sub_1E1365864(v37);
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v35);

      __swift_destroy_boxed_opaque_existential_1(v37);
    }
  }
}

void sub_1E17FD6C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF504C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
    v20 = (v1 + qword_1EE1E9EA0);
LABEL_25:
    v44 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    sub_1E1300EA8(v19, v44);
    return;
  }

  v51 = v9;
  v52 = v6;
  v13 = *(v1 + qword_1EE1E9EA0 + 8);
  v14 = sub_1E1300E34(v12, v13);
  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  if (!v15)
  {
    v19 = *(v1 + qword_1EE1E9EA0);
    v20 = (v1 + qword_1EE1E9EA0);
    goto LABEL_25;
  }

  v48 = v4;
  v49 = v3;
  v16 = *(v1 + qword_1EE1E9E08);
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);
    sub_1E1300E34(*(v1 + qword_1EE1E9E08), v17);
    v18 = v16(v15);
    sub_1E1300EA8(v16, v17);
  }

  else
  {
    swift_unknownObjectRetain();
    v18 = v15;
  }

  v21 = *(v2 + 96);
  v22 = v21[1];
  v50 = v2;
  v23 = *(v2 + 80);
  v24 = *(v22(v23, v21) + 16);

  if (!v24)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v20 = (v1 + qword_1EE1E9EA0);
    v19 = *(v1 + qword_1EE1E9EA0);
    goto LABEL_25;
  }

  *(v1 + qword_1EE1E9D48) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v1 + qword_1EE1E9DF8) = v22(v23, v21);

  v25 = v21[2];
  v47 = v21 + 2;
  v46 = v25;
  v26 = v25(v23, v21);
  v27 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v27) = v26;

  v28 = v21[3](v23, v21);
  if ((v28 & 1) == 0)
  {
    v29 = *(v1 + qword_1EE1E9E90);
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v31 = *(v30 + 48);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
        return;
      }

      *(v30 + 48) = v33;
      v34 = v33 == 0;
      swift_beginAccess();
      *(v30 + 40) = v34;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + qword_1EE216690))
    {
      *v11 = 1;
      v35 = v51;
      (*(v8 + 104))(v11, *MEMORY[0x1E69AB450], v51);
      sub_1E1AF509C();
      (*(v8 + 8))(v11, v35);
    }

    v53 = v18;
    (*(*(v50 + 88) + 8))(&v54, v23);
    v58 = 0;
    v59 = 0;
    sub_1E17FCFA8(&v54);
  }

  swift_unknownObjectRetain();
  sub_1E17FCDB8();
  v54 = v18;
  v55 = v36;
  v56 = v28 & 1;
  sub_1E1AF5BCC();
  sub_1E1803BB8(v54, v55, v56);
  if (v28)
  {
    goto LABEL_22;
  }

  v37 = v46(v23, v21);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C70, &unk_1E1B36450);
  v58 = sub_1E1302CD4(&qword_1EE1E3528, &qword_1ECEB9C70, &unk_1E1B36450, MEMORY[0x1E69E5D98]);
  v54 = v37;
  LOBYTE(v53) = 0;
  sub_1E17FDD4C(&v54, &v53);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  sub_1E17FED48(v18);
  if (*(v1 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  if (!*(v1 + qword_1EE216690))
  {
LABEL_22:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = v18;
    v38 = v52;
    sub_1E1AF5B8C();
    v39 = v48;
    v40 = v49;
    (*(v48 + 104))(v38, *MEMORY[0x1E69AB440], v49);
    sub_1E1AF508C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v38, v40);
  }

  v41 = (v1 + qword_1EE1E9EA0);
  v42 = *(v1 + qword_1EE1E9EA0);
  v43 = *(v1 + qword_1EE1E9EA0 + 8);
  *v41 = 0;
  v41[1] = 0;
  sub_1E1300EA8(v42, v43);
}

void sub_1E17FDD4C(void *a1, char *a2)
{
  v3 = *a2;
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v4, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v7 == 2 || (v7 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    v6[16] = v3;
    sub_1E17FDE98(a1, sub_1E1803C74, v6);
  }
}

void sub_1E17FDE98(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v62 - v8;
  v73 = sub_1E1AEFCCC();
  v10 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v62 - v14;
  if ((*(v3 + qword_1EE2166D0) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    if ((sub_1E1AF667C() & 1) == 0)
    {
      v63 = v12;
      v71 = a3;
      v15 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
      v86 = v15;
      v16 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(v19 + 16))(&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v83);
      sub_1E1AF60AC();
      v67 = qword_1EE1E9DE8;
      __swift_mutable_project_boxed_opaque_existential_1(v83, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (*(&v81 + 1))
      {
        v69 = (v10 + 32);
        v70 = (v10 + 48);
        v68 = (v10 + 8);
        v65 = (v10 + 16);
        v20 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
        v64 = xmmword_1E1B02CC0;
        v21 = v72;
        v22 = v73;
        while (1)
        {
          v78[0] = v80;
          v78[1] = v81;
          v79 = v82;
          v23 = v20[212];
          swift_beginAccess();
          v24 = *(v4 + v23);
          if (!*(v24 + 16))
          {
            goto LABEL_6;
          }

          v25 = sub_1E135FCF4(v78);
          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = *(*(v24 + 56) + 8 * v25);

          sub_1E134E724(v78, v77);
          v74(v27);
          if ((*v70)(v9, 1, v22) != 1)
          {
            (*v69)(v21, v9, v22);
            v28 = qword_1EE1E9DE8;
            swift_beginAccess();
            v29 = *(v4 + v28);
            if (*(v29 + 16))
            {

              v30 = sub_1E1AF6F2C();
              v31 = -1 << *(v29 + 32);
              v32 = v30 & ~v31;
              if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
              {
                v33 = ~v31;
                while (1)
                {
                  sub_1E134E724(*(v29 + 48) + 40 * v32, v76);
                  v34 = MEMORY[0x1E68FFC60](v76, v77);
                  sub_1E134B88C(v76);
                  if (v34)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                  if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                  {
                    goto LABEL_17;
                  }
                }

                v21 = v72;
                v22 = v73;
                (*v68)(v72, v73);
                sub_1E134B88C(v77);
                sub_1E134B88C(v78);
                goto LABEL_24;
              }

LABEL_17:
            }

            v35 = (v27 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
            if (v86[2] && (sub_1E13018F8(*v35, v35[1]), (v36 & 1) != 0))
            {
              v37 = *v35;
              v38 = v35[1];

              v39 = sub_1E1A0C544(v76, v37, v38);
              if (*v40)
              {
                v41 = v40;
                v66 = v39;
                v42 = v63;
                v21 = v72;
                v43 = v73;
                (*v65)(v63, v72, v73);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v75[0] = *v41;
                *v41 = 0x8000000000000000;
                sub_1E159840C(v42, v77, isUniquelyReferenced_nonNull_native);
                *v41 = v75[0];

                (v66)(v76, 0);
              }

              else
              {
                (v39)(v76, 0);

                v21 = v72;
                v43 = v73;
              }
            }

            else
            {
              v45 = *v35;
              v46 = v35[1];
              v66 = v45;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68, &unk_1E1B36440);
              v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0, &qword_1E1B19AF0) - 8);
              v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
              v49 = swift_allocObject();
              *(v49 + 16) = v64;
              v50 = v49 + v48;
              v51 = v47[14];
              sub_1E134E724(v77, v50);
              v21 = v72;
              v43 = v73;
              (*v65)((v50 + v51), v72, v73);

              v52 = sub_1E159DE84(v49);
              swift_setDeallocating();
              sub_1E1308058(v50, &unk_1ECEB5CC0, &qword_1E1B19AF0);
              swift_deallocClassInstance();
              v53 = v86;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v76[0] = v53;
              sub_1E1598584(v52, v66, v46, v54);

              v86 = v76[0];
            }

            sub_1E134E724(v77, v75);
            swift_beginAccess();
            sub_1E1893DD0(v76, v75);
            sub_1E134B88C(v76);
            swift_endAccess();
            sub_1E1800C40();

            (*v68)(v21, v43);
            sub_1E134B88C(v77);
            sub_1E134B88C(v78);
            v22 = v43;
LABEL_24:
            v20 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
            goto LABEL_7;
          }

          sub_1E134B88C(v77);
          sub_1E134B88C(v78);
          sub_1E1308058(v9, &unk_1ECEB4B60, &unk_1E1B02620);
          v20 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
LABEL_7:
          __swift_mutable_project_boxed_opaque_existential_1(v83, AssociatedTypeWitness);
          sub_1E1AF6DBC();
          if (!*(&v81 + 1))
          {
            v15 = v86;
            goto LABEL_28;
          }
        }

LABEL_6:
        sub_1E134B88C(v78);
        goto LABEL_7;
      }

LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v83);
      if (*(v15 + 16))
      {
        v55 = 1 << *(v15 + 32);
        v56 = -1;
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        v57 = v56 & *(v15 + 64);
        v58 = (v55 + 63) >> 6;

        v59 = 0;
        if (v57)
        {
          goto LABEL_37;
        }

        while (1)
        {
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if (v60 >= v58)
          {

            goto LABEL_40;
          }

          v57 = *(v15 + 64 + 8 * v60);
          ++v59;
          if (v57)
          {
            v59 = v60;
            do
            {
LABEL_37:
              v57 &= v57 - 1;

              sub_1E17FE7A4(v61);
            }

            while (v57);
            continue;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_40:
      }
    }
  }
}

double sub_1E17FE7A4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1E1AF504C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_1EE1E9DF0);
  if (v9)
  {
    v10 = *(v1 + qword_1EE1E9DF0 + 8);
    if (*(v1 + qword_1EE216690))
    {
      *v8 = 0;
      (*(v5 + 104))(v8, *MEMORY[0x1E69AB448], v4, result);
      sub_1E1300E34(v9, v10);
      sub_1E1AF509C();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      sub_1E1300E34(*(v1 + qword_1EE1E9DF0), *(v1 + qword_1EE1E9DF0 + 8));
    }

    v28 = v9(a1);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v14 = v3[10];
    v12[2] = v14;
    v26 = v9;
    v27 = v10;
    v15 = v3[11];
    v12[3] = v15;
    v16 = v3[12];
    v12[4] = v16;
    v17 = a1;
    v18 = v3[13];
    v12[5] = v18;
    v19 = v3[14];
    v12[6] = v19;
    v12[7] = v11;
    v12[8] = v3;
    v20 = v13;
    swift_weakInit();
    v21 = swift_allocObject();
    *&v22 = v14;
    *(&v22 + 1) = v15;
    *&v23 = v16;
    *(&v23 + 1) = v18;
    *(v21 + 16) = v22;
    *(v21 + 32) = v23;
    *(v21 + 48) = v19;
    *(v21 + 56) = v20;
    *(v21 + 64) = v17;
    v24 = sub_1E1361A80();

    v25 = sub_1E1AF68EC();
    v29[3] = v24;
    v29[4] = MEMORY[0x1E69AB720];
    v29[0] = v25;
    sub_1E1AF57FC();
    sub_1E1300EA8(v26, v27);

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

void sub_1E17FEA9C()
{
  v1 = *v0;
  if ((*(v0 + qword_1EE2166D0) & 1) == 0)
  {
    v2 = v0;
    v3 = v1[10];
    v4 = v1[11];
    v5 = v1[12];
    v6 = v1[13];
    v7 = v1[14];
    *&v17 = v3;
    *(&v17 + 1) = v4;
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v8 = type metadata accessor for DiffablePageContentPresenter(0, &v17);
    WitnessTable = swift_getWitnessTable();
    if ((PaginatedPagePresenter.isPreparingNextPage.getter(v8, WitnessTable) & 1) == 0)
    {
      PaginatedPagePresenter.nextPage.getter(WitnessTable, &v17);
      if (v19)
      {
        sub_1E1301CF0(&v17, v22);
        v10 = *(v0 + qword_1EE1E9E98);
        if (v10)
        {
          v11 = *(v0 + qword_1EE1E9E98 + 8);
          sub_1E1300E34(*(v2 + qword_1EE1E9E98), v11);
          v10(v22);
          sub_1E1300EA8(v10, v11);
          sub_1E137A5C4(v22, &v17);
          v21 = 1;
          sub_1E17FCFA8(&v17);
          v12 = swift_allocObject();
          swift_weakInit();
          v13 = swift_allocObject();
          v13[2] = v3;
          v13[3] = v4;
          v13[4] = v5;
          v13[5] = v6;
          v13[6] = v7;
          v13[7] = v12;
          v14 = swift_allocObject();
          swift_weakInit();
          sub_1E137A5C4(v22, v16);
          v15 = swift_allocObject();
          *(v15 + 16) = v3;
          *(v15 + 24) = v4;
          *(v15 + 32) = v5;
          *(v15 + 40) = v6;
          *(v15 + 48) = v7;
          *(v15 + 56) = v14;
          sub_1E1301CF0(v16, (v15 + 64));

          sub_1E1365864(&v17);
          sub_1E1AF57FC();

          __swift_destroy_boxed_opaque_existential_1(&v17);
          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v22);
        }
      }

      else
      {
        sub_1E1308058(&v17, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      }
    }
  }
}

double sub_1E17FED48(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *(v4 + 80);
  v7 = *(v4 + 96);
  ShelfBasedPage.shelves.getter(v6, v7);
  sub_1E19FEB0C(v8, sub_1E1802D7C, 0);
  v10 = v9;

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *&v17 = v6;
    v16[0] = a1;
    swift_unknownObjectRetain();
    sub_1E1AF385C();
    sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v11 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v11))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v12 = sub_1E1AF591C();
    __swift_project_value_buffer(v12, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = *(v4 + 88);
    v16[0] = v6;
    v16[1] = v13;
    v16[2] = v7;
    v17 = *(v4 + 104);
    *&v17 = type metadata accessor for DiffablePageContentPresenter(0, v16);
    v16[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    *&v17 = v6;
    v16[0] = a1;
    swift_unknownObjectRetain();
    sub_1E1AF385C();
    sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E17FF224(v10);
LABEL_13:

  return result;
}

double sub_1E17FF224(unint64_t a1)
{
  v3 = *v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - v6;
  if (a1 >> 62)
  {
    if (sub_1E1AF71CC())
    {
LABEL_3:
      v8 = qword_1EE2166C8;
      swift_beginAccess();
      v9 = *(v1 + v8);
      if (v9)
      {
        v24 = v9;
        sub_1E17FF8A0();
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1E1803A98;
        *(v10 + 24) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940, qword_1E1B21A90);
        v11 = *(v3 + 112);
        v12 = *(v3 + 96);
        v25 = *(v3 + 80);
        v26 = v12;
        v27 = v11;
        v22[1] = type metadata accessor for DiffablePageContentPresenter(0, &v25);
        sub_1E1302CD4(&qword_1EE1E3C50, &qword_1ECEB6940, qword_1E1B21A90, MEMORY[0x1E69AAEC8]);
        sub_1E1AF3CDC();
        sub_1E1AF3CEC();

        __swift_destroy_boxed_opaque_existential_1(&v25);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
        v14 = *(v13 - 8);
        v23._rawValue = a1;
        v22[0] = *(v14 + 56);
        (v22[0])(v7, 0, 1, v13);
        sub_1E17FD13C(v7);
        v15 = v24;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_1E1803ADC;
        *(v16 + 24) = 0;
        sub_1E1AF3CDC();
        sub_1E1AF3CEC();

        __swift_destroy_boxed_opaque_existential_1(&v25);
        (v22[0])(v7, 0, 1, v13);
        sub_1E17FD1B8(v7);
        InlineUnifiedMessagePresenter.startListening(for:)(v23);
      }

      else
      {
        if (qword_1EE1E35C0 != -1)
        {
          swift_once();
        }

        v18 = sub_1E1AF591C();
        __swift_project_value_buffer(v18, qword_1EE1E35C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF388C();
        sub_1E1AF387C();
        v19 = *(v3 + 112);
        v20 = *(v3 + 96);
        v25 = *(v3 + 80);
        v26 = v20;
        v27 = v19;
        *(&v26 + 1) = type metadata accessor for DiffablePageContentPresenter(0, &v25);
        *&v25 = v1;

        sub_1E1AF385C();
        sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF548C();
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v21 = sub_1E1AF591C();
  __swift_project_value_buffer(v21, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return result;
}

uint64_t sub_1E17FF8A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  v14 = qword_1EE1E9DD8;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v14, v6, &qword_1ECEB5570, &unk_1E1B16220);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB5570, &unk_1E1B16220);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (*(v0 + v16))
    {

      sub_1E1AF35AC();
    }

    (*(v8 + 8))(v13, v7);
  }

  v17 = qword_1EE1E9DE0;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v17, v3, &qword_1ECEB5570, &unk_1E1B16220);
  if (v15(v3, 1, v7) == 1)
  {
    return sub_1E1308058(v3, &qword_1ECEB5570, &unk_1E1B16220);
  }

  (*(v8 + 32))(v10, v3, v7);
  v19 = qword_1EE2166C8;
  swift_beginAccess();
  if (*(v0 + v19))
  {

    sub_1E1AF35AC();
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1E17FFC00(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = a1;
  v12[1] = a2;

  sub_1E1AF38BC();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  if (*(v2 + qword_1EE1E9D48))
  {
    v8 = *(v5 + 96);
    v9 = *(v8 + 32);
    v10 = *(v5 + 80);

    swift_unknownObjectRetain();
    v9(sub_1E1803CC4, v7, v10, v8);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1E180011C(0, sub_1E1803CC4, v7);

  return result;
}

double sub_1E17FFE8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = a1;
  v12[1] = a2;

  sub_1E1AF38BC();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 1;
  if (*(v2 + qword_1EE1E9D48))
  {
    v8 = *(v5 + 96);
    v9 = *(v8 + 32);
    v10 = *(v5 + 80);

    swift_unknownObjectRetain();
    v9(sub_1E1803A8C, v7, v10, v8);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1E180011C(0, sub_1E1803A8C, v7);

  return result;
}

void sub_1E180011C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();

  v8 = sub_1E1887F78(v7, a2, a3);

  v9 = qword_1EE2166A0;
  if (a1)
  {
    if (a1 == 1)
    {
      swift_beginAccess();
      sub_1E188596C(*(v3 + v9), v8, &v33);
      v10 = &v35;
      v11 = *(&v34 + 1);
      v12 = (v34 + 64) >> 6;
      v13 = (*(&v36 + 1) + 64) >> 6;
      v14 = v35;
      v15 = *(&v37 + 1);
      v16 = v37;
      while (1)
      {
        if (v38)
        {
          goto LABEL_29;
        }

        if (!v14)
        {
          v18 = v11;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
              goto LABEL_34;
            }

            if (v19 >= v12)
            {
              break;
            }

            v14 = *(*(&v33 + 1) + 8 * v19);
            ++v18;
            if (v14)
            {
              v11 = v19;
              goto LABEL_12;
            }
          }

          if (v12 <= v11 + 1)
          {
            v25 = v11 + 1;
          }

          else
          {
            v25 = (v34 + 64) >> 6;
          }

          *&v37 = v16;
          *(&v37 + 1) = v15;
          *(&v34 + 1) = v25 - 1;
LABEL_28:
          *v10 = 0;
          v38 = 1;
LABEL_29:
          v29 = v35;
          v30 = v36;
          v31 = v37;
          v32 = v38;
          v27 = v33;
          v28 = v34;

          sub_1E1308058(&v27, &qword_1ECEB9C48, &qword_1E1B3B950);
          v9 = qword_1EE2166A0;
          goto LABEL_30;
        }

LABEL_12:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = *(*(v33 + 56) + ((v11 << 9) | (8 * v20)));
        if (!v15)
        {
          break;
        }

LABEL_4:
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        if (*(v21 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) != *(*(*(*(&v35 + 1) + 56) + ((v16 << 9) | (8 * v17))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
        {
          *(&v34 + 1) = v11;
          *&v35 = v14;
          *&v37 = v16;
          *(&v37 + 1) = v15;
          v29 = v35;
          v30 = v36;
          v31 = v37;
          v32 = v38;
          v27 = v33;
          v28 = v34;

          sub_1E1308058(&v27, &qword_1ECEB9C48, &qword_1E1B3B950);
          sub_1E17FCD60(v8);
          goto LABEL_19;
        }
      }

      v22 = v16;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v13)
        {
          if (v13 <= v16 + 1)
          {
            v26 = v16 + 1;
          }

          else
          {
            v26 = (*(&v36 + 1) + 64) >> 6;
          }

          *(&v34 + 1) = v11;
          *&v35 = v14;
          *&v37 = v26 - 1;
          v10 = (&v37 + 8);
          goto LABEL_28;
        }

        v15 = *(v36 + 8 * v23);
        ++v22;
        if (v15)
        {
          v16 = v23;
          goto LABEL_4;
        }
      }

LABEL_34:
      __break(1u);
    }

    else
    {
LABEL_30:
      swift_beginAccess();
      *(v3 + v9) = v8;
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + v9) = v8;

LABEL_19:
    sub_1E17FCDB8();
    *&v27 = v24;
    BYTE8(v27) = 0;
    sub_1E1AF5BCC();
    sub_1E1360914(v27, SBYTE8(v27));
  }
}

double sub_1E1800438(unint64_t a1)
{
  v14[6] = *v1;
  v15 = v1;
  v20[0] = MEMORY[0x1E69E7CC0];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v14[5] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v9 = OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x1E68FEF20](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_17;
    }

LABEL_29:

    return result;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_17:
  if (*(v15 + qword_1EE1E9D48))
  {
    v16 = *(v15 + qword_1EE1E9D48);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C40, &qword_1E1B36420);
    if (swift_dynamicCast())
    {
      if (*(&v18 + 1))
      {
        v12 = sub_1E1308EC0(&v17, v20);
        MEMORY[0x1EEE9AC00](v12);
        v14[2] = v20;
        v14[3] = v15;
        sub_1E1810684(sub_1E1803A70, v14, v6);

        __swift_destroy_boxed_opaque_existential_1(v20);
        return result;
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  sub_1E1308058(&v17, &qword_1ECEB9C38, &qword_1E1B36418);
  return result;
}

uint64_t DiffableDynamicPageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v21 = a10;
  v22 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v21 - v18;
  sub_1E134FD1C(a2, &v21 - v18, &unk_1ECEB4B60, &unk_1E1B02620);
  DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, v19, a3, a4, a5, v23, v24, v25, v22, *(&v22 + 1), v21, *(&v21 + 1), a11);
  sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  return v11;
}

uint64_t DiffablePageContentPresenter.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E18008D4(uint64_t a1)
{
  sub_1E1AF762C();
  DiffablePageContentPresenter.FetchError.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t DiffablePageContentPresenter.IncompleteShelfFetchResult.init(allShelves:fetchedShelves:shelfErrors:shelfBatch:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void *DiffablePageContentPresenter.IncompleteShelfFetchResult.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

double (*sub_1E180096C())(uint64_t a1)
{
  v1 = swift_allocObject();
  v2 = *(v0 + 96);
  *(v1 + 16) = *(v0 + 80);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 112);
  return sub_1E1803A3C;
}

void sub_1E1800A2C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = qword_1EE2166A0;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_1E135FCF4(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

uint64_t sub_1E1800AEC()
{
  v1 = qword_1EE216698;
  swift_beginAccess();
  sub_1E136073C(v0 + v1, v3);
  sub_1E1AF5BCC();
  return sub_1E1360B10(v3);
}

void sub_1E1800B60(char a1)
{
  v2 = *(v1 + qword_1EE1E9D50);
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_1EE1E9E90);
    if (v2)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1E149DEE8();
          }
        }
      }
    }

    else if (v3)
    {
      sub_1E1729254();
    }
  }
}

void sub_1E1800C40()
{
  v1 = qword_1EE1E9DE8;
  swift_beginAccess();
  v2 = *(v0 + qword_1EE1E9D50);
  *(v0 + qword_1EE1E9D50) = *(*(v0 + v1) + 16) != 0;
  sub_1E1800B60(v2);
}

uint64_t DiffablePageContentPresenter.onPaginationStateChanged.getter()
{
  sub_1E180348C();
}

double sub_1E1800CCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a5;
  v13 = sub_1E1AF503C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v38 = v14;
    v39 = v13;
    *(Strong + qword_1EE2166D0) = 0;
    v20 = *(Strong + qword_1EE1E9E08);
    v37[0] = v16;
    v37[1] = a8;
    if (v20)
    {
      v21 = *(Strong + qword_1EE1E9E08 + 8);
      sub_1E1300E34(v20, v21);
      v20(v16);
      sub_1E1300EA8(v20, v21);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v22 = swift_allocObject();
    v23 = *(a3 + 96);
    *(v22 + 16) = *(a3 + 80);
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a3 + 112);
    v24 = swift_unknownObjectRetain();
    sub_1E1803A3C(v24);
    v26 = v25;

    swift_unknownObjectRelease_n();
    *(v19 + qword_1EE1E9D48) = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    *(v19 + qword_1EE1E9DF8) = (*(a6 + 8))(a4, a6);

    v27 = *(a6 + 16);
    v28 = v27(a4, a6);
    v29 = qword_1EE2166A0;
    swift_beginAccess();
    *(v19 + v29) = v28;

    v42 = v26;
    v30 = v41;
    v31 = *(v41 + 8);
    swift_unknownObjectRetain();
    v31(&v43, a4, v30);
    v47 = 0;
    v48 = 0;
    sub_1E17FCFA8(&v43);
    sub_1E17FCDB8();
    v43 = v26;
    v44 = v32;
    v45 = 0;
    sub_1E1AF5BCC();
    sub_1E1803BB8(v43, v44, v45);
    v33 = v27(a4, a6);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C70, &unk_1E1B36450);
    v47 = sub_1E1302CD4(&qword_1EE1E3528, &qword_1ECEB9C70, &unk_1E1B36450, MEMORY[0x1E69E5D98]);
    v43 = v33;
    LOBYTE(v42) = 0;
    sub_1E17FDD4C(&v43, &v42);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    sub_1E17FED48(v26);
    swift_unknownObjectRelease();
    if (*(v19 + qword_1EE1E9E90))
    {

      sub_1E1729254();
    }

    v35 = v38;
    v34 = v39;
    if (*(v19 + qword_1EE216690))
    {
      v43 = v26;
      v36 = v40;
      sub_1E1AF5B8C();
      (*(v35 + 104))(v36, *MEMORY[0x1E69AB440], v34);
      sub_1E1AF508C();
      swift_unknownObjectRelease();
      (*(v35 + 8))(v36, v34);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1E18010F0(void *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE2166D0) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = a1;
    v16 = 0;
    v17 = 0x80;
    v8 = a1;
    sub_1E1AF5BCC();

    sub_1E1803BB8(v15, v16, v17);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + qword_1EE1E9E90);

    if (v10)
    {
      sub_1E1729254();
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + qword_1EE216690);

    if (v12)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x1E69AB430], v3);
      v13 = a1;
      sub_1E1AF508C();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1E180133C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) == 0;
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy))
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6F4C656761506E6FLL;
  }

  if (v5)
  {
    v7 = 0xEA00000000006461;
  }

  else
  {
    v7 = 0x80000001E1B57970;
  }

  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x6F4C656761506E6FLL;
  }

  if (a2)
  {
    v9 = 0x80000001E1B57970;
  }

  else
  {
    v9 = 0xEA00000000006461;
  }

  if (v6 == v8 && v7 == v9)
  {

    return sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, a3, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  v11 = sub_1E1AF74AC();

  if (v11)
  {
    return sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, a3, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  v12 = sub_1E1AEFCCC();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, 1, 1, v12);
}

uint64_t sub_1E18014AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  return sub_1E134FD1C(a1 + v5, a3, &unk_1ECEB4B60, &unk_1E1B02620);
}

void sub_1E1801514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a6;
  v118 = a4;
  v114 = a3;
  v113 = sub_1E1AF591C();
  v7 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF503C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*(Strong + qword_1EE1E9D48))
  {

    return;
  }

  v15 = *(Strong + qword_1EE216690);
  v122 = Strong;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x1E69AB438], v9);
    swift_unknownObjectRetain();
    sub_1E1AF508C();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v16 = MEMORY[0x1E69E7CC0];
  v135 = sub_1E18032EC(MEMORY[0x1E69E7CC0]);
  v134 = sub_1E159E9C4(v16);
  v106 = v13;
  v17 = *(v13 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v108 = qword_1EE1E9DE8;
  v22 = (v19 + 63) >> 6;
  v115 = v121 + 16;
  v110 = (v7 + 8);

  v23 = 0;
  v24 = 0;
  v109 = xmmword_1E1B02CD0;
  v111 = v17;
  while (v21)
  {
    v117 = v24;
LABEL_17:
    v29 = __clz(__rbit64(v21)) | (v23 << 6);
    sub_1E134E724(*(v17 + 48) + 40 * v29, &v131);
    v30 = *(*(v17 + 56) + 8 * v29);
    v116 = v131;
    v31 = v133;
    v120 = v132;
    v32 = *(&v132 + 1);

    if (!v32)
    {
      goto LABEL_31;
    }

    v21 &= v21 - 1;
    v131 = v116;
    v132 = v120;
    v133 = v31;
    if (v30[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched] == 1)
    {
      if (*((*(v121 + 16))(v118) + 16) && (sub_1E135FCF4(&v131), (v33 & 1) != 0))
      {

        v34 = v117;
        v35 = Shelf.mergingWith(_:)(v30);
        if (!v34)
        {
          v42 = v35;
          v117 = 0;
          sub_1E134E724(&v131, &v125);
          *&v123[0] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C60, &qword_1E1B36438);
          sub_1E1AF5CFC();

          goto LABEL_28;
        }

        sub_1E134E724(&v131, &v125);
        *&v123[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C50, &qword_1E1B36428);
        sub_1E1AF5CFC();

        sub_1E134B88C(&v131);
        v24 = 0;
      }

      else
      {

        v25 = v112;
        sub_1E17FCBE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v109;
        sub_1E1AF382C();
        *(&v126 + 1) = MEMORY[0x1E69E69B8];
        *&v125 = swift_allocObject();
        sub_1E134E724(&v131, v125 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v125, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v26 = v113;
        sub_1E1AF54AC();

        v27 = v25;
        v17 = v111;
        (*v110)(v27, v26);
        sub_1E134B88C(&v131);
        v24 = v117;
      }
    }

    else
    {
      v36 = qword_1EE2166A0;
      v37 = v122;
      swift_beginAccess();
      v38 = *(v37 + v36);
      if (*(v38 + 16))
      {

        v39 = sub_1E135FCF4(&v131);
        if (v40)
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          sub_1E134E724(v41 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v123);

          v125 = v123[0];
          v126 = v123[1];
          v127 = v124;
          sub_1E134E724(&v131, v123);
          v130 = Shelf.withId(_:)(&v125);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C60, &qword_1E1B36438);
          sub_1E1AF5CFC();
          sub_1E134B88C(&v125);
          goto LABEL_28;
        }
      }

      sub_1E134E724(&v131, &v125);
      *&v123[0] = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C60, &qword_1E1B36438);
      sub_1E1AF5CFC();
LABEL_28:
      swift_beginAccess();
      sub_1E154E438(&v131, &v125);
      sub_1E1308058(&v125, &unk_1ECEB5670, qword_1E1B03EC0);
      swift_endAccess();
      sub_1E1800C40();

      sub_1E134B88C(&v131);
      v24 = v117;
    }
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v28 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v28);
    ++v23;
    if (v21)
    {
      v117 = v24;
      v23 = v28;
      goto LABEL_17;
    }
  }

  v117 = v24;
LABEL_31:

  v43 = *(v106 + 24);
  v46 = *(v43 + 64);
  v45 = v43 + 64;
  v44 = v46;
  v47 = 1 << *(*(v106 + 24) + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v44;
  v50 = (v47 + 63) >> 6;
  v111 = *(v106 + 24);

  v51 = 0;
  v107 = v50;
  while (v49)
  {
LABEL_41:
    v56 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v57 = v56 | (v51 << 6);
    v58 = (*(v111 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = *(*(v111 + 56) + 8 * v57);
    v62 = v121;
    v63 = *(v121 + 16);

    *&v120 = v61;
    v64 = v61;
    v65 = v63(v118, v62);
    *&v116 = v60;
    *&v125 = v60;
    *(&v125 + 1) = v59;

    sub_1E1AF6F6C();
    if (!*(v65 + 16))
    {
      sub_1E134B88C(&v131);

LABEL_35:
      v52 = v112;
      sub_1E17FCBE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v109;
      sub_1E1AF382C();
      *(&v132 + 1) = MEMORY[0x1E69E6158];
      *&v131 = v116;
      *(&v131 + 1) = v59;
      sub_1E1AF38DC();
      sub_1E1308058(&v131, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v53 = v113;
      sub_1E1AF54AC();

      v54 = v53;
      v50 = v107;
      (*v110)(v52, v54);
      continue;
    }

    sub_1E135FCF4(&v131);
    v67 = v66;
    sub_1E134B88C(&v131);

    if ((v67 & 1) == 0)
    {
      goto LABEL_35;
    }

    v68 = v116;
    *&v125 = v116;
    *(&v125 + 1) = v59;

    sub_1E1AF6F6C();
    *&v125 = v120;
    v69 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C50, &qword_1E1B36428);
    sub_1E1AF5CFC();
    swift_beginAccess();
    *&v131 = v68;
    *(&v131 + 1) = v59;

    sub_1E1AF6F6C();
    sub_1E1A15698(&v125, &v131);
    sub_1E134B88C(&v125);
    if (*(&v132 + 1))
    {
      v125 = v131;
      v126 = v132;
      v127 = v133;
      sub_1E1AF6F4C();
      sub_1E134B88C(&v125);
      swift_dynamicCast();
    }

    else
    {
      v128 = 0;
      v129 = 0;
    }

    swift_endAccess();

    sub_1E1800C40();
  }

  while (1)
  {
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v55 >= v50)
    {
      break;
    }

    v49 = *(v45 + 8 * v55);
    ++v51;
    if (v49)
    {
      v51 = v55;
      goto LABEL_41;
    }
  }

  v70 = v135;
  v71 = v135 + 64;
  v72 = 1 << *(v135 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v135 + 64);
  v75 = qword_1EE2166A0;
  v76 = (v72 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v77 = 0;
  while (v74)
  {
LABEL_57:
    v79 = __clz(__rbit64(v74)) | (v77 << 6);
    sub_1E134E724(*(v70 + 48) + 40 * v79, &v131);
    v80 = *(*(v70 + 56) + 8 * v79);
    v116 = v131;
    v81 = v133;
    v120 = v132;
    v82 = *(&v132 + 1);

    if (!v82)
    {
LABEL_67:

      v99 = v122;
      if (*(v122 + qword_1EE1E9D48))
      {
        v100 = v121;
        v101 = *(v121 + 32);
        swift_unknownObjectRetain();
        v101(sub_1E1803BB0, v99, v118, v100);
        swift_unknownObjectRelease();
      }

      sub_1E17FCDB8();
      *&v131 = v102;
      *(&v131 + 1) = v70;
      *&v132 = v134;
      *(&v132 + 1) = v106;
      v133 = 0;

      sub_1E1AF5BCC();
      v103 = v133;

      *&v131 = v70;
      type metadata accessor for Shelf(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C58, &qword_1E1B36430);
      sub_1E1302CD4(&qword_1EE1D26A0, &qword_1ECEB9C58, &qword_1E1B36430, MEMORY[0x1E69E5DE8]);
      v104 = sub_1E1AF639C();
      sub_1E1800438(v104);

      swift_unknownObjectRelease();
      return;
    }

    v131 = v116;
    v132 = v120;
    v133 = v81;
    v83 = v122;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v123[0] = *(v83 + v75);
    v85 = *&v123[0];
    *(v83 + v75) = 0x8000000000000000;
    v86 = sub_1E135FCF4(&v131);
    v88 = *(v85 + 16);
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v91 = v88 + v89;
    if (v90)
    {
      goto LABEL_74;
    }

    v92 = v87;
    if (*(v85 + 24) >= v91)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = v86;
        sub_1E1415C9C();
        v86 = v98;
      }
    }

    else
    {
      sub_1E16889E4(v91, isUniquelyReferenced_nonNull_native);
      v86 = sub_1E135FCF4(&v131);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_76;
      }
    }

    v94 = *&v123[0];
    if (v92)
    {
      *(*(*&v123[0] + 56) + 8 * v86) = v80;

      sub_1E134B88C(&v131);
    }

    else
    {
      *(*&v123[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v95 = v86;
      sub_1E134E724(&v131, v94[6] + 40 * v86);
      *(v94[7] + 8 * v95) = v80;
      sub_1E134B88C(&v131);
      v96 = v94[2];
      v90 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v90)
      {
        goto LABEL_75;
      }

      v94[2] = v97;
    }

    v74 &= v74 - 1;
    *(v122 + v75) = v94;
    swift_endAccess();
  }

  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v76)
    {
      goto LABEL_67;
    }

    v74 = *(v71 + 8 * v78);
    ++v77;
    if (v74)
    {
      v77 = v78;
      goto LABEL_57;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  sub_1E1AF757C();
  __break(1u);
}

uint64_t sub_1E18025B0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EE2166A0;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

  v7 = sub_1E135FCF4(a1 + v6);
  if (v8)
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1E1802658(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF503C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + qword_1EE216690))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x1E69AB428], v5);
      v11 = a1;
      sub_1E1AF508C();
      (*(v6 + 8))(v8, v5);
    }

    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = (v12 + 63) >> 6;

    for (i = 0; v14; i = v17)
    {
      v17 = i;
LABEL_11:
      sub_1E134E724(*(a3 + 48) + 40 * (__clz(__rbit64(v14)) | (v17 << 6)), v26);
      sub_1E1802914(v26, v10);
      v14 &= v14 - 1;
      sub_1E134B88C(v26);
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        sub_1E17FCDB8();
        v19 = v18;
        v20 = MEMORY[0x1E69E7CC0];
        v21 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
        v22 = sub_1E159E9C4(v20);
        v26[0] = v19;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = 0;
        v27 = a1;
        v23 = a1;
        sub_1E1AF5BCC();
        v24 = v27;

        return;
      }

      v14 = *(a3 + 64 + 8 * v17);
      ++i;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    sub_1E134B88C(v26);
    __break(1u);
  }
}

void sub_1E1802914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1E154E438(a1, v3);
  sub_1E1308058(v3, &unk_1ECEB5670, qword_1E1B03EC0);
  swift_endAccess();
  sub_1E1800C40();
}

double sub_1E18029A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_1EE1E9E08);
    if (v12)
    {
      v13 = *(Strong + qword_1EE1E9E08 + 8);
      sub_1E1300E34(*(Strong + qword_1EE1E9E08), v13);
      v14 = v12(v8);
      sub_1E1300EA8(v12, v13);
    }

    else
    {
      swift_unknownObjectRetain();
      v14 = v8;
    }

    if (*(v11 + qword_1EE1E9D48))
    {
      v28[0] = *(v11 + qword_1EE1E9D48);
      v27 = v14;
      (*(a4 + 16))(&v21, &v27, a3, a4);
      v15 = v21;
      *(v11 + qword_1EE1E9D48) = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v11 + qword_1EE1E9DF8) = (*(a5 + 8))(a3, a5);

      v16 = *(a5 + 16);
      v17 = v16(a3, a5);
      v18 = qword_1EE2166A0;
      swift_beginAccess();
      *(v11 + v18) = v17;

      swift_unknownObjectRetain();
      sub_1E17FCDB8();
      v21 = v15;
      v22 = v19;
      v23 = 0;
      sub_1E1AF5BCC();
      sub_1E1803BB8(v21, v22, v23);
      v20 = v16(a3, a5);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C70, &unk_1E1B36450);
      v25 = sub_1E1302CD4(&qword_1EE1E3528, &qword_1ECEB9C70, &unk_1E1B36450, MEMORY[0x1E69E5D98]);
      v21 = v20;
      LOBYTE(v27) = 0;
      sub_1E17FDD4C(&v21, &v27);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v27 = v15;
      (*(a4 + 8))(&v21, a3, a4);
      v25 = 0;
      v26 = 0;
      sub_1E17FCFA8(&v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1E1802C7C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v8[0] = a1;
    v8[1] = 0;
    v9 = 0x80;
    v5 = a1;
    sub_1E1AF5BCC();

    sub_1E1803BB8(a1, 0, 128);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E137A5C4(a3, v8);
    v10 = a1;
    v11 = 0;
    v7 = a1;
    sub_1E17FCFA8(v8);
  }

  return result;
}

uint64_t sub_1E1802D7C()
{
  if (Shelf.ContentType.rawValue.getter() == 0x4D64656966696E75 && v0 == 0xEE00656761737365)
  {

    return 1;
  }

  else
  {
    v2 = sub_1E1AF74AC();

    return v2 & 1;
  }
}

id sub_1E1802E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1;
  sub_1E134E724(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v12 == a2 && v13 == a3)
  {

    goto LABEL_9;
  }

  v9 = sub_1E1AF74AC();

  if (v9)
  {
LABEL_9:
    v10 = *(v7 + 24);
    v14[0] = 100;
    return Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v10, v14, 1, a4 & 1);
  }

LABEL_7:

  return v7;
}

uint64_t sub_1E1802F08(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_1E1AF3C3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v12);
  (*(v11 + 8))(v12, v11);
  sub_1E14A36D4(v7, v10);
  (*(v5 + 8))(v7, v4);
  v13 = a2[3];
  v14 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v10, v13, v14);
  return sub_1E1AF5BCC();
}

uint64_t sub_1E18030A0()
{
  sub_1E180348C();
}

uint64_t sub_1E1803110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = swift_allocObject();
  a14(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  return v21;
}

uint64_t _s11AppStoreKit28DiffablePageContentPresenterCfD_0()
{
  DiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

double sub_1E180325C()
{
  nullsub_5();

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1E1803290()
{
  v1 = qword_1EE2166C8;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1E18032EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0, &unk_1E1B16240);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v13, &qword_1ECEB60B8, &unk_1E1B19D68);
      result = sub_1E135FCF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E18034B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E18034F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1E1803530(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    sub_1E180377C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1E180377C(uint64_t a1)
{
  if (!qword_1EE1E3A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB31F8, &unk_1E1B16230);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1E3A08);
    }
  }
}

uint64_t sub_1E18037F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E1803840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E1803890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1E1803908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E1803944(uint64_t *a1, int a2)
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

uint64_t sub_1E180398C(uint64_t result, int a2, int a3)
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

double sub_1E1803A3C(uint64_t a1)
{
  sub_1E1803438(a1, v1[2], v1[3], v1[4]);

  swift_unknownObjectRetain();
  return result;
}

uint64_t (*sub_1E1803B1C())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1E15F01D4;
}

void sub_1E1803BB8(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1803C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1803CD0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 7;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v2 > 7)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_1F5C213E8 + 24 * v2 + 32);
  while (v2 != 7)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E135C0A8(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1E135C0A8((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 7;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_1E135C088(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1E135C088((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E1803EB0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 15;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v2 > 0xF)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_1F5C214B0 + 24 * v2 + 32);
  while (v2 != 15)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E135C0E8(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1E135C0E8((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 15;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_1E135C088(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1E135C088((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t Shelf.PresentationHints.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v108 = sub_1E1AF380C();
  v6 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v94 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v94 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v97 = &v94 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v94 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v94 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v94 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v94 - v41;
  if (sub_1E1AF37AC())
  {
    v43 = sub_1E1AF39DC();
    (*(*(v43 - 8) + 8))(a2, v43);
    result = (*(v6 + 8))(a1, v108);
    v45 = 0;
  }

  else
  {
    v95 = a2;
    v96 = a3;
    sub_1E1AF381C();
    v46 = sub_1E1AF370C();
    v94 = v14;
    v47 = *(v6 + 8);
    v48 = v108;
    v47(v42, v108);
    sub_1E1AF381C();
    v49 = sub_1E1AF370C();
    v109 = a1;
    v47(v39, v48);
    v50 = v46 & 1 | 2;
    if ((v49 & 1) == 0)
    {
      v50 = v46 & 1;
    }

    if (v49 == 2)
    {
      v51 = v46 & 1;
    }

    else
    {
      v51 = v50;
    }

    sub_1E1AF381C();
    v52 = sub_1E1AF370C();
    v47(v36, v48);
    v53 = v51 | 4;
    if ((v52 & 1) == 0)
    {
      v53 = v51;
    }

    if (v52 != 2)
    {
      v51 = v53;
    }

    sub_1E1AF381C();
    v54 = sub_1E1AF370C();
    v47(v33, v48);
    v55 = v51 | 8;
    if ((v54 & 1) == 0)
    {
      v55 = v51;
    }

    if (v54 != 2)
    {
      v51 = v55;
    }

    v56 = v97;
    sub_1E1AF381C();
    v57 = sub_1E1AF370C();
    v47(v56, v48);
    v58 = v51 | 0x10;
    if ((v57 & 1) == 0)
    {
      v58 = v51;
    }

    if (v57 != 2)
    {
      v51 = v58;
    }

    v59 = v98;
    sub_1E1AF381C();
    v60 = sub_1E1AF370C();
    v47(v59, v48);
    v61 = v51 | 0x20;
    if ((v60 & 1) == 0)
    {
      v61 = v51;
    }

    if (v60 != 2)
    {
      v51 = v61;
    }

    v62 = v99;
    sub_1E1AF381C();
    v63 = sub_1E1AF370C();
    v47(v62, v48);
    v64 = v51 | 0x40;
    if ((v63 & 1) == 0)
    {
      v64 = v51;
    }

    if (v63 != 2)
    {
      v51 = v64;
    }

    v65 = v100;
    sub_1E1AF381C();
    v66 = sub_1E1AF370C();
    v47(v65, v48);
    v67 = v51 | 0x80;
    if ((v66 & 1) == 0)
    {
      v67 = v51;
    }

    if (v66 != 2)
    {
      v51 = v67;
    }

    v68 = v101;
    sub_1E1AF381C();
    v69 = sub_1E1AF370C();
    v47(v68, v48);
    v70 = v51 | 0x100;
    if ((v69 & 1) == 0)
    {
      v70 = v51;
    }

    if (v69 != 2)
    {
      v51 = v70;
    }

    v71 = v102;
    sub_1E1AF381C();
    v72 = sub_1E1AF370C();
    v47(v71, v48);
    v73 = v51 | 0x200;
    if ((v72 & 1) == 0)
    {
      v73 = v51;
    }

    if (v72 != 2)
    {
      v51 = v73;
    }

    v74 = v103;
    sub_1E1AF381C();
    v75 = sub_1E1AF370C();
    v47(v74, v48);
    v76 = v51 | 0x400;
    if ((v75 & 1) == 0)
    {
      v76 = v51;
    }

    if (v75 != 2)
    {
      v51 = v76;
    }

    v77 = v104;
    sub_1E1AF381C();
    v78 = sub_1E1AF370C();
    v47(v77, v48);
    v79 = v51 | 0x800;
    if ((v78 & 1) == 0)
    {
      v79 = v51;
    }

    if (v78 != 2)
    {
      v51 = v79;
    }

    v80 = v94;
    sub_1E1AF381C();
    v81 = sub_1E1AF370C();
    v47(v80, v48);
    v82 = v51 | 0x1000;
    if ((v81 & 1) == 0)
    {
      v82 = v51;
    }

    if (v81 != 2)
    {
      v51 = v82;
    }

    v83 = v105;
    sub_1E1AF381C();
    v84 = sub_1E1AF370C();
    v47(v83, v48);
    v85 = v51 | 0x2000;
    if ((v84 & 1) == 0)
    {
      v85 = v51;
    }

    if (v84 != 2)
    {
      v51 = v85;
    }

    v86 = v106;
    sub_1E1AF381C();
    v87 = sub_1E1AF370C();
    v47(v86, v48);
    v88 = v51 | 0x4000;
    if ((v87 & 1) == 0)
    {
      v88 = v51;
    }

    if (v87 == 2)
    {
      v45 = v51;
    }

    else
    {
      v45 = v88;
    }

    v89 = v109;
    v90 = v107;
    sub_1E1AF381C();
    v91 = sub_1E1AF370C();
    v47(v90, v48);
    if (v91 == 2 || (v91 & 1) == 0)
    {
      v93 = sub_1E1AF39DC();
      (*(*(v93 - 8) + 8))(v95, v93);
      result = (v47)(v89, v48);
    }

    else
    {
      v92 = sub_1E1AF39DC();
      (*(*(v92 - 8) + 8))(v95, v92);
      result = (v47)(v89, v48);
      v45 |= 0x8000uLL;
    }

    a3 = v96;
  }

  *a3 = v45;
  return result;
}

uint64_t sub_1E1804B88()
{
  sub_1E1803EB0(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E130C384();
  v1 = sub_1E1AF5D6C();

  return v1;
}

unint64_t sub_1E1804C14()
{
  result = qword_1ECEB9C78;
  if (!qword_1ECEB9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9C78);
  }

  return result;
}

unint64_t sub_1E1804C6C()
{
  result = qword_1ECEB9C80;
  if (!qword_1ECEB9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9C80);
  }

  return result;
}

unint64_t sub_1E1804CC0(uint64_t a1)
{
  *(a1 + 8) = sub_1E1804CF0();
  result = sub_1E1804D44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1804CF0()
{
  result = qword_1ECEB9C88;
  if (!qword_1ECEB9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9C88);
  }

  return result;
}

unint64_t sub_1E1804D44()
{
  result = qword_1ECEB9C90;
  if (!qword_1ECEB9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9C90);
  }

  return result;
}

unint64_t sub_1E1804D9C()
{
  result = qword_1EE1E54A8;
  if (!qword_1EE1E54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E54A8);
  }

  return result;
}

unint64_t sub_1E1804DF4()
{
  result = qword_1EE1E54A0;
  if (!qword_1EE1E54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E54A0);
  }

  return result;
}

uint64_t AdvertAppearanceTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return v0;
}

Swift::Bool __swiftcall AdvertAppearanceTracker.isAdvertVisible(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  swift_beginAccess();
  v24 = *(v1 + 16);

  v12 = sub_1E1805E40(v11, countAndFlagsBits, object);
  v14 = v13;

  v22 = &v24;
  if (v14)
  {

LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  v25 = v12;
  sub_1E1805F5C(&v25, v23);
  v15 = v23[0];

  if (!v15)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v16 = *(v15 + 32);
  v17 = *(v16 + 16);
  if (!v17)
  {

    goto LABEL_7;
  }

  sub_1E14DF944(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), v7);

  sub_1E14E014C(v7, v10);
  v18 = *v10;
  sub_1E14E01B0(v10);
  v19 = v18 ^ 1;
  return v19 & 1;
}

void AdvertAppearanceTracker.advertDidLeaveView(for:on:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1E1AEFE6C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = sub_1E18059A4(*(a1 + 16), *(a1 + 24));
  swift_beginAccess();
  v18 = v17[4];
  v19 = v18[2];
  if (v19 && (v32 = a1, v33 = v2, v34 = a2, v20 = (*(v11 + 80) + 32) & ~*(v11 + 80), v21 = *(v11 + 72), *(v18 + v20 + v21 * (v19 - 1)) != 1))
  {
    (*(v36 + 16))(&v16[*(v10 + 20)], v34, v37);
    *v16 = 1;
    sub_1E14DF944(v16, v13);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[4] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1E172E250(0, v18[2] + 1, 1, v18);
      v17[4] = v18;
    }

    v24 = v18[2];
    v23 = v18[3];
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1E172E250((v23 > 1), v24 + 1, 1, v18);
    }

    v18[2] = v24 + 1;
    sub_1E14E014C(v13, v18 + v20 + v24 * v21);
    v17[4] = v18;
    swift_endAccess();
    sub_1E14E01B0(v16);
    AdvertAppearanceJournal.lastAppearanceTime.getter(v7);
    v26 = v36;
    v25 = v37;
    if ((*(v36 + 48))(v7, 1, v37) == 1)
    {
      sub_1E153DF88(v7);
      if (qword_1EE1D27B0 != -1)
      {
        swift_once();
      }

      v27 = sub_1E1AF591C();
      __swift_project_value_buffer(v27, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF54AC();
    }

    else
    {
      v28 = v35;
      (*(v26 + 32))(v35, v7, v25);
      v29 = v33;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 32);
        ObjectType = swift_getObjectType();
        (*(v30 + 16))(v29, v32, v28, v34, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v26 + 8))(v28, v25);
    }
  }

  else
  {
  }
}

double AdvertAppearanceTracker.advertDidEnterView(for:on:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  v12 = sub_1E18059A4(*(a1 + 16), *(a1 + 24));
  swift_beginAccess();
  v13 = v12[4];
  v14 = v13[2];
  if (v14 && *(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v14 - 1)) != 1)
  {
    goto LABEL_9;
  }

  v15 = *(v5 + 20);
  v16 = sub_1E1AEFE6C();
  (*(*(v16 - 8) + 16))(&v11[v15], a2, v16);
  *v11 = 0;
  sub_1E14DF944(v11, v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[4] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1E172E250(0, v13[2] + 1, 1, v13);
    v12[4] = v13;
  }

  v19 = v13[2];
  v18 = v13[3];
  if (v19 >= v18 >> 1)
  {
    v13 = sub_1E172E250((v18 > 1), v19 + 1, 1, v13);
  }

  v13[2] = v19 + 1;
  sub_1E14E014C(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19);
  v12[4] = v13;
  swift_endAccess();
  sub_1E14E01B0(v11);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v2, a1, a2, ObjectType, v20);

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:
  }

  return result;
}

uint64_t AdvertAppearanceTracker.init()()
{
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return v0;
}

double AdvertAppearanceTracker.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*AdvertAppearanceTracker.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17A0764;
}

void *sub_1E18059A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v13[4] = *(v2 + 16);

  v7 = sub_1E1805E40(v6, a1, a2);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v14 = v7;
    sub_1E1805FF4(&v14, v13);
    v10 = v13[0];

    if (v10)
    {
      return v10;
    }
  }

  type metadata accessor for AdvertAppearanceJournal();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  MEMORY[0x1E68FEF20](v11);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  swift_endAccess();
  return v10;
}

void AdvertAppearanceTracker.lastAppearanceTime(for:)(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  swift_beginAccess();

  v7 = sub_1E1805E40(v6, a3, a1);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v12 = v7;
    sub_1E1805FF4(&v12, &v13);
    v10 = v13;

    if (v10)
    {
      AdvertAppearanceJournal.lastAppearanceTime.getter(a2);

      return;
    }
  }

  v11 = sub_1E1AEFE6C();
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

void AdvertAppearanceTracker.lastDisappearanceTime(for:)(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  swift_beginAccess();

  v7 = sub_1E1805E40(v6, a3, a1);
  v9 = v8;

  if (v9)
  {
  }

  else
  {
    v12 = v7;
    sub_1E1805FF4(&v12, &v13);
    v10 = v13;

    if (v10)
    {
      AdvertAppearanceJournal.lastDisappearanceTime.getter(a2);

      return;
    }
  }

  v11 = sub_1E1AEFE6C();
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t AdvertAppearanceTracker.deinit()
{

  sub_1E1337DEC(v0 + 24);
  return v0;
}

uint64_t AdvertAppearanceTracker.__deallocating_deinit()
{

  sub_1E1337DEC(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1805DD4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E68FFD80](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1805E40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v14 = a1;
    v6 = sub_1E1AF71CC();
    a1 = v14;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 & 0xC000000000000001;
  v15 = a1;
  v8 = a1 + 32;
  do
  {
    v9 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = MEMORY[0x1E68FFD80](v9 - 1, v15);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v8 + 8 * v6);
    }

    if (*(v10 + 16) == a2 && *(v10 + 24) == a3)
    {

      return v6;
    }

    v12 = sub_1E1AF74AC();
  }

  while ((v12 & 1) == 0);
  return v6;
}

uint64_t static Action.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF37AC();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static Action.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

char *Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v8[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v32 = a7;
    v33 = a3;
    v21 = a4;
    v22 = a6;
    v23 = v20;
    v24 = a5;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v35 = v23;
    v36 = v26;
    a6 = v22;
    a4 = v21;
    a5 = v24;
    a7 = v32;
    a3 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = &v8[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v42;
  sub_1E134B7C8(a7, &v8[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
  *(v8 + 2) = v34;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *(v8 + 5) = a5;
  v29 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v30 = sub_1E1AF3E1C();
  (*(*(v30 - 8) + 32))(&v8[v29], a6, v30);
  return v8;
}

char *Action.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0, &unk_1E1B0C3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v61 - v6;
  v69 = sub_1E1AF3E1C();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v61 - v9;
  v65 = sub_1E1AF39DC();
  v10 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v61 - v14;
  v15 = sub_1E1AEFEAC();
  v72 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1E1AF380C();
  v18 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v68 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  if (v26)
  {
    v74 = v25;
    v75 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v28 = v10;
    v29 = v3;
    v30 = v12;
    v31 = v28;
    v32 = v15;
    v34 = v33;
    v72[1](v17, v32);
    v74 = v27;
    v75 = v34;
    v35 = v31;
    v12 = v30;
    v3 = v29;
    v10 = v35;
  }

  sub_1E1AF6F6C();
  v36 = *(v18 + 8);
  v71 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72 = v36;
  (v36)(v23, v79);
  v63 = v10;
  v37 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v38 = v77;
  *v37 = v76;
  *(v37 + 1) = v38;
  *(v37 + 4) = v78;
  sub_1E1AF46DC();
  v39 = v68;
  sub_1E1AF381C();
  v70 = *(v10 + 16);
  v40 = v65;
  v70(v12, v73, v65);
  v41 = v64;
  sub_1E1AF464C();
  v42 = v41;
  v43 = v39;
  sub_1E134B7C8(v42, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  sub_1E1AF381C();
  v44 = sub_1E1AF37CC();
  v46 = v45;
  (v72)(v20, v79);
  v3[2] = v44;
  v3[3] = v46;
  type metadata accessor for Artwork(0);
  sub_1E1AF381C();
  v47 = v73;
  v70(v12, v73, v40);
  sub_1E180C394(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v48 = v40;
  v49 = v47;
  sub_1E1AF464C();
  v3[4] = v76;
  sub_1E1AF381C();
  v50 = v3;
  v3[5] = _sSo26ASKActionPresentationStyleV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v20);
  v51 = v43;
  v52 = v49;
  sub_1E1AF381C();
  v70(v12, v49, v48);
  v53 = v66;
  v54 = v69;
  sub_1E1AF464C();
  v55 = v67;
  if ((*(v67 + 48))(v53, 1, v54) == 1)
  {
    sub_1E1308058(v53, &qword_1ECEBB7C0, &unk_1E1B0C3F0);
    v56 = v48;
    v57 = v62;
    sub_1E1AF3DFC();
    (*(v63 + 8))(v52, v56);
    (v72)(v51, v79);
    (*(v55 + 32))(&v50[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v57, v54);
  }

  else
  {
    (*(v63 + 8))(v52, v48);
    (v72)(v51, v79);
    v58 = *(v55 + 32);
    v59 = v61;
    v58(v61, v53, v54);
    v58(&v50[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v59, v54);
  }

  return v50;
}

uint64_t Action.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t sub_1E1806C58@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_1E180C394(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v1;
}

uint64_t sub_1E1806CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t sub_1E1806D44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_1E137F818(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E1806E04()
{
  v1 = 0xE000000000000000;
  sub_1E1AF6FEC();
  v2 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v2);

  MEMORY[0x1E68FECA0](539828256, 0xE400000000000000);
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v1 = *(v0 + 24);
  }

  MEMORY[0x1E68FECA0](v4, v1);

  MEMORY[0x1E68FECA0](0x697274654D202D20, 0xEC000000203A7363);
  sub_1E1AF3E1C();
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0;
}

uint64_t static Action.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v563 = a2;
  v3 = sub_1E1AF39DC();
  v4 = *(v3 - 8);
  v564 = v3;
  v565 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v540 = &v437 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v539 = &v437 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v538 = &v437 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v536 = &v437 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v537 = &v437 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v534 = &v437 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v535 = &v437 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v533 = &v437 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v532 = &v437 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v531 = &v437 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v530 = &v437 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v529 = &v437 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v528 = &v437 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v527 = &v437 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v525 = &v437 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v526 = &v437 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v524 = &v437 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v522 = &v437 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v520 = &v437 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v516 = &v437 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v513 = &v437 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v511 = &v437 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v509 = &v437 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v507 = &v437 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v508 = &v437 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v504 = &v437 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v503 = &v437 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v500 = &v437 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v498 = &v437 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v495 = &v437 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v493 = &v437 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v492 = &v437 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v490 = &v437 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v487 = &v437 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v485 = &v437 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v483 = &v437 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v481 = &v437 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v478 = &v437 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v480 = &v437 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v474 = &v437 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v473 = &v437 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v471 = &v437 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v468 = &v437 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v466 = &v437 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v470 = &v437 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v463 = &v437 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v461 = &v437 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v459 = &v437 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v458 = &v437 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v455 = &v437 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v453 = &v437 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v542 = &v437 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v544 = &v437 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v546 = &v437 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v548 = &v437 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v550 = &v437 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v552 = &v437 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v554 = &v437 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v556 = &v437 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v557 = &v437 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v558 = &v437 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v559 = &v437 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v561 = &v437 - v129;
  v568 = sub_1E1AF380C();
  v567 = *(v568 - 8);
  MEMORY[0x1EEE9AC00](v568);
  v523 = &v437 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v131);
  v521 = &v437 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v518 = &v437 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v515 = &v437 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v517 = &v437 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v512 = &v437 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v514 = &v437 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v510 = &v437 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v506 = &v437 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v505 = &v437 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v502 = &v437 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v501 = &v437 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v499 = &v437 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v497 = &v437 - v156;
  MEMORY[0x1EEE9AC00](v157);
  v494 = &v437 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v496 = &v437 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v491 = &v437 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v489 = &v437 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v486 = &v437 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v484 = &v437 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v482 = &v437 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v479 = &v437 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v477 = &v437 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v475 = &v437 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v476 = &v437 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v472 = &v437 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v469 = &v437 - v182;
  MEMORY[0x1EEE9AC00](v183);
  v467 = &v437 - v184;
  MEMORY[0x1EEE9AC00](v185);
  v465 = &v437 - v186;
  MEMORY[0x1EEE9AC00](v187);
  v464 = &v437 - v188;
  MEMORY[0x1EEE9AC00](v189);
  v462 = &v437 - v190;
  MEMORY[0x1EEE9AC00](v191);
  v460 = &v437 - v192;
  MEMORY[0x1EEE9AC00](v193);
  v457 = &v437 - v194;
  MEMORY[0x1EEE9AC00](v195);
  v456 = &v437 - v196;
  MEMORY[0x1EEE9AC00](v197);
  v454 = &v437 - v198;
  MEMORY[0x1EEE9AC00](v199);
  v452 = &v437 - v200;
  MEMORY[0x1EEE9AC00](v201);
  v450 = &v437 - v202;
  MEMORY[0x1EEE9AC00](v203);
  v449 = &v437 - v204;
  MEMORY[0x1EEE9AC00](v205);
  v451 = &v437 - v206;
  MEMORY[0x1EEE9AC00](v207);
  v448 = &v437 - v208;
  MEMORY[0x1EEE9AC00](v209);
  v447 = &v437 - v210;
  MEMORY[0x1EEE9AC00](v211);
  v445 = &v437 - v212;
  MEMORY[0x1EEE9AC00](v213);
  v444 = &v437 - v214;
  MEMORY[0x1EEE9AC00](v215);
  v443 = &v437 - v216;
  MEMORY[0x1EEE9AC00](v217);
  v446 = &v437 - v218;
  MEMORY[0x1EEE9AC00](v219);
  v442 = &v437 - v220;
  MEMORY[0x1EEE9AC00](v221);
  v441 = &v437 - v222;
  MEMORY[0x1EEE9AC00](v223);
  v440 = &v437 - v224;
  MEMORY[0x1EEE9AC00](v225);
  v439 = &v437 - v226;
  MEMORY[0x1EEE9AC00](v227);
  v438 = &v437 - v228;
  MEMORY[0x1EEE9AC00](v229);
  v437 = &v437 - v230;
  MEMORY[0x1EEE9AC00](v231);
  v541 = &v437 - v232;
  MEMORY[0x1EEE9AC00](v233);
  v543 = &v437 - v234;
  MEMORY[0x1EEE9AC00](v235);
  v545 = &v437 - v236;
  MEMORY[0x1EEE9AC00](v237);
  v547 = &v437 - v238;
  MEMORY[0x1EEE9AC00](v239);
  v549 = &v437 - v240;
  MEMORY[0x1EEE9AC00](v241);
  v551 = &v437 - v242;
  MEMORY[0x1EEE9AC00](v243);
  v553 = &v437 - v244;
  MEMORY[0x1EEE9AC00](v245);
  v555 = &v437 - v246;
  MEMORY[0x1EEE9AC00](v247);
  v249 = &v437 - v248;
  MEMORY[0x1EEE9AC00](v250);
  v252 = &v437 - v251;
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v437 - v254;
  MEMORY[0x1EEE9AC00](v256);
  v258 = &v437 - v257;
  MEMORY[0x1EEE9AC00](v259);
  v261 = &v437 - v260;
  v562 = a1;
  sub_1E1AF381C();
  v262 = sub_1E1AF37CC();
  v264 = v263;
  v265 = *(v567 + 8);
  v519 = v567 + 8;
  v488 = v265;
  v265(v261, v568);
  if (!v264)
  {
    v266 = sub_1E1AF5A7C();
    sub_1E180C394(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v267 = swift_allocError();
    v269 = v268;
    *v268 = 0x6C436E6F69746361;
    v268[1] = 0xEB00000000737361;
    v268[2] = v560;
    v270 = MEMORY[0x1E69AB690];
LABEL_6:
    (*(*(v266 - 8) + 104))(v269, *v270, v266);
    swift_willThrow();
    return v267;
  }

  if (v262 == 0x69746341776F6C46 && v264 == 0xEA00000000006E6FLL || (sub_1E1AF74AC() & 1) != 0)
  {

    (*(v567 + 16))(v258, v562, v568);
    v271 = v561;
    (*(v565 + 16))(v561, v563, v564);
    type metadata accessor for FlowAction(0);
    v267 = swift_allocObject();
    v272 = v566;
    v273 = FlowAction.init(deserializing:using:)(v258, v271);
    if (v272)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0xD000000000000011 && 0x80000001E1B77BC0 == v264 || (v274 = v262, v561 = v264, v275 = sub_1E1AF74AC(), v276 = v561, (v275 & 1) != 0))
  {

    (*(v567 + 16))(v255, v562, v568);
    v277 = v559;
    (*(v565 + 16))(v559, v563, v564);
    type metadata accessor for ExternalUrlAction(0);
    v267 = swift_allocObject();
    v278 = v566;
    v273 = ExternalUrlAction.init(deserializing:using:)(v255, v277);
    if (v278)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0x646E756F706D6F43 && v561 == 0xEE006E6F69746341 || (sub_1E1AF74AC() & 1) != 0)
  {

    (*(v567 + 16))(v252, v562, v568);
    v280 = v558;
    (*(v565 + 16))(v558, v563, v564);
    type metadata accessor for CompoundAction(0);
    v267 = swift_allocObject();
    v281 = v566;
    v273 = CompoundAction.init(deserializing:using:)(v252, v280);
    if (v281)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0x746341726566664FLL && v276 == 0xEB000000006E6F69 || (sub_1E1AF74AC() & 1) != 0)
  {

    (*(v567 + 16))(v249, v562, v568);
    v282 = v557;
    (*(v565 + 16))(v557, v563, v564);
    type metadata accessor for OfferAction(0);
    v267 = swift_allocObject();
    v283 = v566;
    v273 = OfferAction.init(deserializing:using:)(v249, v282);
    if (v283)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0xD000000000000010 && 0x80000001E1B77BE0 == v276 || (v284 = sub_1E1AF74AC(), v285 = v561, (v284 & 1) != 0))
  {

    v286 = v555;
    (*(v567 + 16))(v555, v562, v568);
    v287 = v556;
    (*(v565 + 16))(v556, v563, v564);
    type metadata accessor for OfferStateAction(0);
    v267 = swift_allocObject();
    v288 = v566;
    v273 = OfferStateAction.init(deserializing:using:)(v286, v287);
    if (v288)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0x6974634170747448 && v561 == 0xEA00000000006E6FLL || (sub_1E1AF74AC() & 1) != 0)
  {

    v289 = v553;
    (*(v567 + 16))(v553, v562, v568);
    v290 = v554;
    (*(v565 + 16))(v554, v563, v564);
    type metadata accessor for HttpAction(0);
    v267 = swift_allocObject();
    v291 = v566;
    v273 = HttpAction.init(deserializing:using:)(v289, v290);
    if (v291)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0xD000000000000012 && 0x80000001E1B77C00 == v285 || (sub_1E1AF74AC() & 1) != 0)
  {

    v292 = v551;
    (*(v567 + 16))(v551, v562, v568);
    v293 = v552;
    (*(v565 + 16))(v552, v563, v564);
    type metadata accessor for HttpTemplateAction(0);
    v267 = swift_allocObject();
    v294 = v566;
    v273 = HttpTemplateAction.init(deserializing:using:)(v292, v293);
    if (v294)
    {
      return v267;
    }

    return v273;
  }

  if (v262 == 0x7463417465656853 && v561 == 0xEB000000006E6F69 || (sub_1E1AF74AC() & 1) != 0)
  {

    v295 = v549;
    (*(v567 + 16))(v549, v562, v568);
    v296 = v550;
    (*(v565 + 16))(v550, v563, v564);
    type metadata accessor for SheetAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = SheetAction.init(deserializing:using:)(v295, v296);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000010 && 0x80000001E1B77C20 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v299 = v547;
    (*(v567 + 16))(v547, v562, v568);
    v300 = v548;
    (*(v565 + 16))(v548, v563, v564);
    type metadata accessor for OfferAlertAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = OfferAlertAction.init(deserializing:using:)(v299, v300);
    goto LABEL_45;
  }

  if (v262 == 0x7463417472656C41 && v561 == 0xEB000000006E6F69 || (sub_1E1AF74AC() & 1) != 0)
  {

    v301 = v545;
    (*(v567 + 16))(v545, v562, v568);
    v302 = v546;
    (*(v565 + 16))(v546, v563, v564);
    type metadata accessor for AlertAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = AlertAction.init(deserializing:using:)(v301, v302);
    goto LABEL_45;
  }

  if (v262 == 0x676E616843626154 && v561 == 0xEF6E6F6974634165 || (sub_1E1AF74AC() & 1) != 0)
  {

    v267 = v543;
    (*(v567 + 16))(v543, v562, v568);
    v303 = v544;
    (*(v565 + 16))(v544, v563, v564);
    v297 = v566;
    sub_1E1A5EE24(v267, v303);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000013 && 0x80000001E1B77C40 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v304 = v541;
    (*(v567 + 16))(v541, v562, v568);
    v305 = v542;
    (*(v565 + 16))(v542, v563, v564);
    type metadata accessor for AdInteractionAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = AdInteractionAction.init(deserializing:using:)(v304, v305);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000014 && 0x80000001E1B77C60 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v306 = v437;
    (*(v567 + 16))(v437, v562, v568);
    v307 = v453;
    (*(v565 + 16))(v453, v563, v564);
    type metadata accessor for AdTransparencyAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = AdTransparencyAction.init(deserializing:using:)(v306, v307);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000013 && 0x80000001E1B77C80 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v308 = v438;
    (*(v567 + 16))(v438, v562, v568);
    v309 = v455;
    (*(v565 + 16))(v455, v563, v564);
    type metadata accessor for InAppPurchaseAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = InAppPurchaseAction.init(deserializing:using:)(v308, v309);
    goto LABEL_45;
  }

  if (v262 == 0x6341686372616553 && v561 == 0xEC0000006E6F6974 || (sub_1E1AF74AC() & 1) != 0)
  {

    v310 = v439;
    (*(v567 + 16))(v439, v562, v568);
    v311 = v458;
    (*(v565 + 16))(v458, v563, v564);
    type metadata accessor for SearchAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = SearchAction.init(deserializing:using:)(v310, v311);
    goto LABEL_45;
  }

  v559 = 0xD000000000000019;
  if (v262 == 0xD000000000000019 && 0x80000001E1B77CA0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v312 = v440;
    (*(v567 + 16))(v440, v562, v568);
    v313 = v459;
    (*(v565 + 16))(v459, v563, v564);
    type metadata accessor for SearchSegmentChangeAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = SearchSegmentChangeAction.init(deserializing:using:)(v312, v313);
    goto LABEL_45;
  }

  v558 = 0xD000000000000016;
  if (v262 == 0xD000000000000016 && 0x80000001E1B77CC0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v314 = v441;
    (*(v567 + 16))(v441, v562, v568);
    v315 = v461;
    (*(v565 + 16))(v461, v563, v564);
    type metadata accessor for PageFacetsChangeAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = PageFacetsChangeAction.init(deserializing:using:)(v314, v315);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000010 && 0x80000001E1B77CE0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v316 = v442;
    (*(v567 + 16))(v442, v562, v568);
    v317 = v463;
    (*(v565 + 16))(v463, v563, v564);
    type metadata accessor for ShareSheetAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ShareSheetAction.init(deserializing:using:)(v316, v317);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000012 && 0x80000001E1B77D00 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v318 = *(v567 + 16);
    v319 = v446;
    v320 = v568;
    v318(v446, v562, v568);
    v321 = v564;
    v567 = *(v565 + 16);
    v322 = v470;
    (v567)(v470, v563, v564);
    type metadata accessor for ShowSettingsAction(0);
    v267 = swift_allocObject();
    v323 = v443;
    v318(v443, v319, v320);
    v324 = v466;
    (v567)(v466, v322, v321);
    v325 = v566;
    Action.init(deserializing:using:)(v323, v324);
    if (v325)
    {
      (*(v565 + 8))(v470, v564);
      v326 = &v478;
LABEL_92:
      v488(*(v326 - 32), v568);
      return v267;
    }

LABEL_116:
    (*(v565 + 8))(v470, v564);
    v488(v446, v568);
    return v267;
  }

  if (v262 == 0xD000000000000013 && 0x80000001E1B77D20 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v327 = v444;
    (*(v567 + 16))(v444, v562, v568);
    v328 = v468;
    (*(v565 + 16))(v468, v563, v564);
    type metadata accessor for ReportConcernAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ReportConcernAction.init(deserializing:using:)(v327, v328);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000020 && 0x80000001E1B77D40 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v329 = v445;
    (*(v567 + 16))(v445, v562, v568);
    v330 = v471;
    (*(v565 + 16))(v471, v563, v564);
    type metadata accessor for ReviewSummaryReportConcernAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ReviewSummaryReportConcernAction.init(deserializing:using:)(v329, v330);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000017 && 0x80000001E1B77D70 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v331 = v447;
    (*(v567 + 16))(v447, v562, v568);
    v332 = v473;
    (*(v565 + 16))(v473, v563, v564);
    type metadata accessor for ProductPageScrollAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ProductPageScrollAction.init(deserializing:using:)(v331, v332);
    goto LABEL_45;
  }

  v557 = 0xD00000000000001ALL;
  if (v262 == 0xD00000000000001ALL && 0x80000001E1B77D90 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v333 = v448;
    (*(v567 + 16))(v448, v562, v568);
    v334 = v474;
    (*(v565 + 16))(v474, v563, v564);
    type metadata accessor for ShelfBasedPageScrollAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ShelfBasedPageScrollAction.init(deserializing:using:)(v333, v334);
    goto LABEL_45;
  }

  if (v262 == 0x7463416B6E616C42 && v561 == 0xEB000000006E6F69 || (sub_1E1AF74AC() & 1) != 0)
  {

    v335 = *(v567 + 16);
    v336 = v451;
    v337 = v568;
    v335(v451, v562, v568);
    v338 = v564;
    v567 = *(v565 + 16);
    v339 = v480;
    (v567)(v480, v563, v564);
    type metadata accessor for BlankAction(0);
    v267 = swift_allocObject();
    v340 = v449;
    v335(v449, v336, v337);
    v341 = v478;
    (v567)(v478, v339, v338);
    v342 = v566;
    Action.init(deserializing:using:)(v340, v341);
    if (v342)
    {
      (*(v565 + 8))(v480, v564);
      v326 = &v483;
      goto LABEL_92;
    }

    v470 = v480;
    v343 = &v483;
    goto LABEL_115;
  }

  if (v262 == 0xD000000000000017 && 0x80000001E1B77DB0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v344 = v450;
    (*(v567 + 16))(v450, v562, v568);
    v345 = v481;
    (*(v565 + 16))(v481, v563, v564);
    type metadata accessor for OfferConfirmationAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = OfferConfirmationAction.init(deserializing:using:)(v344, v345);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000011 && 0x80000001E1B77DD0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v346 = v452;
    (*(v567 + 16))(v452, v562, v568);
    v347 = v483;
    (*(v565 + 16))(v483, v563, v564);
    type metadata accessor for WriteReviewAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = WriteReviewAction.init(deserializing:using:)(v346, v347);
    goto LABEL_45;
  }

  if (v262 == 0x6341656461637241 && v561 == 0xEC0000006E6F6974 || (sub_1E1AF74AC() & 1) != 0)
  {

    v348 = v454;
    (*(v567 + 16))(v454, v562, v568);
    v349 = v485;
    (*(v565 + 16))(v485, v563, v564);
    type metadata accessor for ArcadeAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ArcadeAction.init(deserializing:using:)(v348, v349);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000012 && 0x80000001E1B77DF0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v350 = v456;
    (*(v567 + 16))(v456, v562, v568);
    v351 = v487;
    (*(v565 + 16))(v487, v563, v564);
    type metadata accessor for FamilyCircleAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = FamilyCircleAction.init(deserializing:using:)(v350, v351);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000014 && 0x80000001E1B77E10 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v352 = v457;
    (*(v567 + 16))(v457, v562, v568);
    v353 = v490;
    (*(v565 + 16))(v490, v563, v564);
    type metadata accessor for ScrollingAlertAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ScrollingAlertAction.init(deserializing:using:)(v352, v353);
    goto LABEL_45;
  }

  if (v262 == 0x6441686372616553 && v561 == 0xEE006E6F69746341 || (sub_1E1AF74AC() & 1) != 0)
  {

    v354 = v460;
    (*(v567 + 16))(v460, v562, v568);
    v355 = v492;
    (*(v565 + 16))(v492, v563, v564);
    type metadata accessor for SearchAdAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = SearchAdAction.init(deserializing:using:)(v354, v355);
    goto LABEL_45;
  }

  if (v262 == 0x417070416E65704FLL && v561 == 0xED00006E6F697463 || (sub_1E1AF74AC() & 1) != 0)
  {

    v356 = v462;
    (*(v567 + 16))(v462, v562, v568);
    v357 = v493;
    (*(v565 + 16))(v493, v563, v564);
    type metadata accessor for OpenAppAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = OpenAppAction.init(deserializing:using:)(v356, v357);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000011 && 0x80000001E1B77E30 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v358 = v464;
    (*(v567 + 16))(v464, v562, v568);
    v359 = v495;
    (*(v565 + 16))(v495, v563, v564);
    type metadata accessor for OpenGamesUIAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = OpenGamesUIAction.init(deserializing:using:)(v358, v359);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000011 && 0x80000001E1B77E50 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v360 = v465;
    (*(v567 + 16))(v465, v562, v568);
    v361 = v498;
    (*(v565 + 16))(v498, v563, v564);
    type metadata accessor for RateLimitedAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = RateLimitedAction.init(deserializing:using:)(v360, v361);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001DLL && 0x80000001E1B77E70 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v362 = v467;
    (*(v567 + 16))(v467, v562, v568);
    v363 = v500;
    (*(v565 + 16))(v500, v563, v564);
    type metadata accessor for ArcadeLaunchAttributionAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ArcadeLaunchAttributionAction.init(deserializing:using:)(v362, v363);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001DLL && 0x80000001E1B77E90 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v364 = v469;
    (*(v567 + 16))(v469, v562, v568);
    v365 = v503;
    (*(v565 + 16))(v503, v563, v564);
    type metadata accessor for ArcadeSubscriptionStateAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ArcadeSubscriptionStateAction.init(deserializing:using:)(v364, v365);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000028 && 0x80000001E1B77EB0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v366 = v472;
    (*(v567 + 16))(v472, v562, v568);
    v367 = v504;
    (*(v565 + 16))(v504, v563, v564);
    type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v366, v367);
    goto LABEL_45;
  }

  if (v262 == v559 && 0x80000001E1B77EE0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v368 = *(v567 + 16);
    v369 = v476;
    v370 = v568;
    v368(v476, v562, v568);
    v371 = v564;
    v567 = *(v565 + 16);
    v372 = v508;
    (v567)(v508, v563, v564);
    type metadata accessor for GameCenterDashboardAction(0);
    v267 = swift_allocObject();
    v373 = v475;
    v368(v475, v369, v370);
    v374 = v507;
    (v567)(v507, v372, v371);
    v375 = v566;
    Action.init(deserializing:using:)(v373, v374);
    if (v375)
    {
      (*(v565 + 8))(v508, v564);
      v326 = &v508;
      goto LABEL_92;
    }

    v470 = v508;
    v343 = &v508;
    goto LABEL_115;
  }

  if (v262 == 0xD00000000000001DLL && 0x80000001E1B77F00 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v376 = v477;
    (*(v567 + 16))(v477, v562, v568);
    v377 = v509;
    (*(v565 + 16))(v509, v563, v564);
    type metadata accessor for GameCenterPlayerProfileAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = GameCenterPlayerProfileAction.init(deserializing:using:)(v376, v377);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001CLL && 0x80000001E1B77F20 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v378 = v479;
    (*(v567 + 16))(v479, v562, v568);
    v379 = v511;
    (*(v565 + 16))(v511, v563, v564);
    type metadata accessor for GameCenterAchievementsAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = GameCenterAchievementsAction.init(deserializing:using:)(v378, v379);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001DLL && 0x80000001E1B77F40 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v380 = v482;
    (*(v567 + 16))(v482, v562, v568);
    v381 = v513;
    (*(v565 + 16))(v513, v563, v564);
    type metadata accessor for GuidedSearchTokenToggleAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = GuidedSearchTokenToggleAction.init(deserializing:using:)(v380, v381);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000018 && 0x80000001E1B77F60 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v382 = v484;
    (*(v567 + 16))(v484, v562, v568);
    v383 = v516;
    (*(v565 + 16))(v516, v563, v564);
    type metadata accessor for SearchEntityChangeAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = SearchEntityChangeAction.init(deserializing:using:)(v382, v383);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001CLL && 0x80000001E1B77F80 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v384 = v486;
    (*(v567 + 16))(v486, v562, v568);
    v385 = v520;
    (*(v565 + 16))(v520, v563, v564);
    type metadata accessor for GameCenterInvitePlayerAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = GameCenterInvitePlayerAction.init(deserializing:using:)(v384, v385);
    goto LABEL_45;
  }

  if (v262 == 0xD00000000000001ELL && 0x80000001E1B77FA0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v386 = v489;
    (*(v567 + 16))(v489, v562, v568);
    v387 = v522;
    (*(v565 + 16))(v522, v563, v564);
    type metadata accessor for GameCenterDenylistPlayerAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = GameCenterDenylistPlayerAction.init(deserializing:using:)(v386, v387);
    goto LABEL_45;
  }

  if (v262 == 0x6567646142626154 && v561 == 0xEE006E6F69746341 || (sub_1E1AF74AC() & 1) != 0)
  {

    v267 = type metadata accessor for TabBadgeAction(0);
    v388 = v491;
    (*(v567 + 16))(v491, v562, v568);
    v389 = v524;
    (*(v565 + 16))(v524, v563, v564);
    v297 = v566;
    v298 = TabBadgeAction.__allocating_init(deserializing:using:)(v388, v389);
    goto LABEL_45;
  }

  if (v262 == v557 && 0x80000001E1B77FC0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v390 = *(v567 + 16);
    v391 = v496;
    v392 = v568;
    v390(v496, v562, v568);
    v393 = v564;
    v567 = *(v565 + 16);
    v394 = v526;
    (v567)(v526, v563, v564);
    type metadata accessor for InvalidateAllWidgetsAction(0);
    v267 = swift_allocObject();
    v395 = v494;
    v390(v494, v391, v392);
    v396 = v525;
    (v567)(v525, v394, v393);
    v397 = v566;
    Action.init(deserializing:using:)(v395, v396);
    if (v397)
    {
      (*(v565 + 8))(v526, v564);
      v326 = &v528;
      goto LABEL_92;
    }

    v470 = v526;
    v343 = &v528;
    goto LABEL_115;
  }

  if (v262 == 0xD000000000000015 && 0x80000001E1B77FE0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v398 = v497;
    (*(v567 + 16))(v497, v562, v568);
    v399 = v527;
    (*(v565 + 16))(v527, v563, v564);
    type metadata accessor for ArcadePackOfferAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = ArcadePackOfferAction.init(deserializing:using:)(v398, v399);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000015 && 0x80000001E1B78000 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v400 = v499;
    (*(v567 + 16))(v499, v562, v568);
    v401 = v528;
    (*(v565 + 16))(v528, v563, v564);
    type metadata accessor for RestoreAppStoreAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = RestoreAppStoreAction.init(deserializing:using:)(v400, v401);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000014 && 0x80000001E1B78020 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v402 = v501;
    (*(v567 + 16))(v501, v562, v568);
    v403 = v529;
    (*(v565 + 16))(v529, v563, v564);
    type metadata accessor for CancelPreorderAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = CancelPreorderAction.init(deserializing:using:)(v402, v403);
    goto LABEL_45;
  }

  if (v262 == v558 && 0x80000001E1B78040 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v267 = type metadata accessor for EngagementToggleAction(0);
    v404 = v502;
    (*(v567 + 16))(v502, v562, v568);
    v405 = v530;
    (*(v565 + 16))(v530, v563, v564);
    v297 = v566;
    v298 = EngagementToggleAction.__allocating_init(deserializing:using:)(v404, v405);
    goto LABEL_45;
  }

  if (v262 == v559 && 0x80000001E1B78060 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v406 = v505;
    (*(v567 + 16))(v505, v562, v568);
    v407 = v531;
    (*(v565 + 16))(v531, v563, v564);
    type metadata accessor for AppLaunchTrampolineAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = AppLaunchTrampolineAction.init(deserializing:using:)(v406, v407);
    goto LABEL_45;
  }

  if (v262 == v559 && 0x80000001E1B78080 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v408 = v506;
    (*(v567 + 16))(v506, v562, v568);
    v409 = v532;
    (*(v565 + 16))(v532, v563, v564);
    type metadata accessor for CreateCalendarEventAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = CreateCalendarEventAction.init(deserializing:using:)(v408, v409);
    goto LABEL_45;
  }

  if (v262 == 0x7478655479706F43 && v561 == 0xEE006E6F69746341 || (sub_1E1AF74AC() & 1) != 0)
  {

    v410 = v510;
    (*(v567 + 16))(v510, v562, v568);
    v411 = v533;
    (*(v565 + 16))(v533, v563, v564);
    type metadata accessor for CopyTextAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = CopyTextAction.init(deserializing:using:)(v410, v411);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000017 && 0x80000001E1B780A0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v412 = *(v567 + 16);
    v413 = v514;
    v414 = v568;
    v412(v514, v562, v568);
    v415 = v564;
    v567 = *(v565 + 16);
    v416 = v535;
    (v567)(v535, v563, v564);
    type metadata accessor for ClearAppUsageDataAction(0);
    v267 = swift_allocObject();
    v417 = v512;
    v412(v512, v413, v414);
    v418 = v534;
    (v567)(v534, v416, v415);
    v419 = v566;
    Action.init(deserializing:using:)(v417, v418);
    if (v419)
    {
      (*(v565 + 8))(v535, v564);
      v326 = &v546;
      goto LABEL_92;
    }

    v470 = v535;
    v343 = &v546;
    goto LABEL_115;
  }

  if (v262 == 0xD000000000000018 && 0x80000001E1B780C0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v420 = *(v567 + 16);
    v421 = v517;
    v422 = v568;
    v420(v517, v562, v568);
    v423 = v564;
    v567 = *(v565 + 16);
    v424 = v537;
    (v567)(v537, v563, v564);
    type metadata accessor for ClearSearchHistoryAction(0);
    v267 = swift_allocObject();
    v425 = v515;
    v420(v515, v421, v422);
    v426 = v536;
    (v567)(v536, v424, v423);
    v427 = v566;
    Action.init(deserializing:using:)(v425, v426);
    if (v427)
    {
      (*(v565 + 8))(v537, v564);
      v326 = &v549;
      goto LABEL_92;
    }

    v470 = v537;
    v343 = &v549;
LABEL_115:
    v446 = *(v343 - 32);
    goto LABEL_116;
  }

  if (v262 == 0x6B636142776F6C46 && v561 == 0xEE006E6F69746341 || (sub_1E1AF74AC() & 1) != 0)
  {

    v428 = v518;
    (*(v567 + 16))(v518, v562, v568);
    v429 = v538;
    (*(v565 + 16))(v538, v563, v564);
    type metadata accessor for FlowBackAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = FlowBackAction.init(deserializing:using:)(v428, v429);
    goto LABEL_45;
  }

  if (v262 == 0xD000000000000017 && 0x80000001E1B780E0 == v561 || (sub_1E1AF74AC() & 1) != 0)
  {

    v430 = v521;
    (*(v567 + 16))(v521, v562, v568);
    v431 = v539;
    (*(v565 + 16))(v539, v563, v564);
    type metadata accessor for CrossfireReferralAction(0);
    v267 = swift_allocObject();
    v297 = v566;
    v298 = CrossfireReferralAction.init(deserializing:using:)(v430, v431);
    goto LABEL_45;
  }

  if ((v262 != 0x70417463656C6553 || v561 != 0xEF6E6F6974634170) && (sub_1E1AF74AC() & 1) == 0)
  {
    v266 = sub_1E1AF5A7C();
    sub_1E180C394(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v267 = swift_allocError();
    v269 = v434;
    v435 = v560;
    v436 = v561;
    *v434 = v274;
    v434[1] = v436;
    v434[2] = v435;
    v270 = MEMORY[0x1E69AB688];
    goto LABEL_6;
  }

  v432 = v523;
  (*(v567 + 16))(v523, v562, v568);
  v433 = v540;
  (*(v565 + 16))(v540, v563, v564);
  type metadata accessor for SelectAppAction(0);
  v267 = swift_allocObject();
  v297 = v566;
  v298 = SelectAppAction.init(deserializing:using:)(v432, v433);
LABEL_45:
  if (!v297)
  {
    return v298;
  }

  return v267;
}

uint64_t type metadata accessor for Action(uint64_t a1)
{
  result = qword_1EE1E5190;
  if (!qword_1EE1E5190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Action.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Action.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v4 = sub_1E1AF3E1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *Action.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v31 = a2;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = &v15[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v15[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(a1, &v34, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v35 + 1))
  {
    v18 = v35;
    *v17 = v34;
    *(v17 + 1) = v18;
    *(v17 + 4) = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a7;
    v28 = a3;
    v20 = v19;
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v32 = v20;
    v33 = v22;
    a7 = v27;
    a3 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a7, &v15[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
  *(v15 + 2) = v31;
  *(v15 + 3) = a3;
  v23 = v29;
  *(v15 + 4) = a4;
  *(v15 + 5) = v23;
  v24 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v25 = sub_1E1AF3E1C();
  (*(*(v25 - 8) + 32))(&v15[v24], v30, v25);
  return v15;
}

uint64_t Action.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Action.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t sub_1E180B848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E180B87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  result = sub_1E1AF37AC();
  if ((result & 1) == 0)
  {
    result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (!v3)
    {
      *a3 = result;
      return result;
    }

    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0, &unk_1E1B1AB20);
    sub_1E1AF39FC();
    (*(v8 + 8))(v10, v7);
    sub_1E134FD1C(v14, v12, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    if (v13)
    {
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      type metadata accessor for Action(0);
      sub_1E1AF4EBC();

      sub_1E1308058(v14, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_1E1308058(v14, &qword_1ECEB43C8, &unk_1E1B0C6C0);

      result = sub_1E1308058(v12, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t sub_1E180BA80(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_1E137F818(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t Action.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E180BBF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_1E180C394(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v3;
}

uint64_t sub_1E180BC70@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E180BCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t sub_1E180BD18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v5 = sub_1E1AF3E1C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_1E180BE14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E1AF37CC();
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    if (v3 == 0xD000000000000014 && 0x80000001E1B78140 == v4 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 2) != 0)
      {
        return result;
      }

      v8 = *a2 | 2;
      goto LABEL_7;
    }

    if (v6 == 0xD000000000000016 && 0x80000001E1B78160 == v7 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v8 = *a2 | 4;
LABEL_7:
        *a2 = v8;
      }
    }

    else if (v6 == 0xD000000000000021 && 0x80000001E1B78180 == v7 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v8 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_1EE1D27B0 != -1)
      {
        swift_once();
      }

      v9 = sub_1E1AF591C();
      __swift_project_value_buffer(v9, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      v10[3] = MEMORY[0x1E69E6158];
      v10[0] = v6;
      v10[1] = v7;
      sub_1E1AF38BC();
      sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54BC();
    }
  }

  return result;
}

uint64_t _sSo26ASKActionPresentationStyleV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1E1AF5A6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_1E1AF374C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_1E1AF380C();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_1E1308058(v4, &qword_1ECEB1F90, &qword_1E1B00D30);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x1EEE9AC00](v10);
    *(&v13 - 2) = &v14;
    sub_1E1AF5A2C();
    v11 = sub_1E1AF380C();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_1E180C318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Action.makeInstance(byDeserializing:using:)(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E180C394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E180C3E4(uint64_t a1)
{
  sub_1E1AF3E1C();
  if (v1 <= 0x3F)
  {
    sub_1E134EAF4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Locale.normalizedLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFF0C();
  if (!v9)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v8 == 29281 && v9 == 0xE200000000000000)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  sub_1E1AEFF6C();
  v11 = sub_1E1AEFF0C();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  if (!v13)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v11 == 29281 && v13 == 0xE200000000000000)
  {
  }

  else
  {
    v15 = sub_1E1AF74AC();

    if ((v15 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  return sub_1E1AEFF6C();
}

uint64_t Locale.prefersSmallerText.getter(uint64_t a1)
{
  sub_1E1AEFEFC();
  v1 = sub_1E1AF602C();

  if (v1)
  {
    return 1;
  }

  sub_1E1AEFEFC();
  v2 = sub_1E1AF602C();

  if (v2)
  {
    return 1;
  }

  sub_1E1AEFEFC();
  v4 = sub_1E1AF602C();

  return v4 & 1;
}

uint64_t Locale.baseWritingDirection.getter(uint64_t a1)
{
  sub_1E1AEFEFC();
  v1 = sub_1E1AEFF1C();

  v2 = 1;
  if (v1 != 2)
  {
    v2 = -1;
  }

  if (v1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double Locale.paragraphLineHeightMultiple.getter(uint64_t a1)
{
  sub_1E1AEFEFC();
  v1 = sub_1E1AF602C();

  v2 = 1.3;
  if ((v1 & 1) == 0)
  {
    sub_1E1AEFEFC();
    v3 = sub_1E1AF602C();

    if ((v3 & 1) == 0)
    {
      sub_1E1AEFEFC();
      v4 = sub_1E1AF602C();

      if (v4)
      {
        return 1.3;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v2;
}

uint64_t static Locale.digitsAreArabic.getter()
{
  if (qword_1EE1EEB00 != -1)
  {
    swift_once();
  }

  v0 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 6);
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();

    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v4 = [v2 decimal:v3 :0];

    if (v4)
    {
      v5 = sub_1E1AF5DFC();
      v7 = v6;

      if (v5 == 41433 && v7 == 0xA200000000000000)
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_1E1AF74AC();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1E180CB00(uint64_t a1)
{
  sub_1E1AEFEFC();
  v1 = sub_1E1AF602C();

  return v1 & 1;
}

void __swiftcall SuggestedFriend.init(contactID:contactAssociationID:handle:fullName:supportsFriendingViaPush:)(AppStoreKit::SuggestedFriend *__return_ptr retstr, Swift::String contactID, Swift::String_optional contactAssociationID, Swift::String handle, Swift::String fullName, Swift::Bool supportsFriendingViaPush)
{
  retstr->contactID = contactID;
  retstr->contactAssociationID = contactAssociationID;
  retstr->handle = handle;
  retstr->fullName = fullName;
  retstr->supportsFriendingViaPush = supportsFriendingViaPush;
}

void SuggestedFriend.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v55 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  sub_1E1AF381C();
  v49 = sub_1E1AF37CC();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v18, v4);
  if (!v20)
  {
    v32 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v33 = 0x49746361746E6F63;
    v33[1] = 0xE900000000000044;
    v33[2] = &type metadata for SuggestedFriend;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v55, v34);
    v21(a1, v4);
    return;
  }

  v54 = v20;
  v22 = 0x656C646E6168;
  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v53 = v23;
  v21(v15, v4);
  v24 = 0xE600000000000000;
  sub_1E1AF381C();
  v46 = sub_1E1AF37CC();
  v26 = v25;
  v21(v12, v4);
  v52 = v26;
  if (!v26)
  {
    LODWORD(v51) = 0;
LABEL_9:
    v31 = v55;
    goto LABEL_10;
  }

  v24 = 0xE800000000000000;
  sub_1E1AF381C();
  v45 = sub_1E1AF37CC();
  v28 = v27;
  v21(v9, v4);
  if (!v28)
  {
    LODWORD(v51) = 0;
    v22 = 0x656D614E6C6C7566;
    goto LABEL_9;
  }

  v48 = v28;
  v24 = 0x80000001E1B78200;
  v29 = v51;
  sub_1E1AF381C();
  v30 = sub_1E1AF370C();
  v21(v29, v4);
  if (v30 != 2)
  {
    v38 = sub_1E1AF39DC();
    (*(*(v38 - 8) + 8))(v55, v38);
    v21(a1, v4);
    v39 = v50;
    v40 = v54;
    *v50 = v49;
    v39[1] = v40;
    v41 = v53;
    v39[2] = v47;
    v39[3] = v41;
    v42 = v52;
    v39[4] = v46;
    v39[5] = v42;
    v43 = v48;
    v39[6] = v45;
    v39[7] = v43;
    *(v39 + 64) = v30 & 1;
    return;
  }

  LODWORD(v51) = 1;
  v31 = v55;
  v22 = 0xD000000000000018;
LABEL_10:
  v35 = sub_1E1AF5A7C();
  sub_1E1380704();
  swift_allocError();
  *v36 = v22;
  v36[1] = v24;
  v36[2] = &type metadata for SuggestedFriend;
  (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
  swift_willThrow();
  v37 = sub_1E1AF39DC();
  (*(*(v37 - 8) + 8))(v31, v37);
  v21(a1, v4);

  if (v52)
  {
  }

  if (v51)
  {
  }
}

unint64_t SuggestedFriend.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v15 = v1[2];
  v16 = v1[4];
  v6 = v1[7];
  v17 = v1[6];
  v18 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C98, &qword_1E1B36918);
  inited = swift_initStackObject();
  *(inited + 32) = 0x49746361746E6F63;
  *(inited + 16) = xmmword_1E1B04930;
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69AB6F8];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001E1B781E0;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  v10 = sub_1E180D300();
  *(inited + 104) = v15;
  *(inited + 112) = v4;
  *(inited + 136) = v10;
  *(inited + 144) = 0x656C646E6168;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = v16;
  *(inited + 168) = v5;
  *(inited + 200) = 0x656D614E6C6C7566;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v17;
  *(inited + 224) = v6;
  v11 = MEMORY[0x1E69E6370];
  *(inited + 256) = 0xD000000000000018;
  *(inited + 264) = 0x80000001E1B78200;
  v12 = MEMORY[0x1E69AB710];
  *(inited + 296) = v11;
  *(inited + 304) = v12;
  *(inited + 272) = v18;

  v13 = sub_1E15A2598(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E60, &unk_1E1B19BB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB89F0, &unk_1E1B2DBB8);
  result = sub_1E173CFAC();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_1E180D300()
{
  result = qword_1ECEB89A0;
  if (!qword_1ECEB89A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40, &unk_1E1B02B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89A0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E180D3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E180D418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a2)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a2)
  {
    v11 = a2;
  }

  *a9 = v10;
  *(a9 + 8) = v11;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 65) = a10;
  return result;
}

id LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(id result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  }

  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 65) = a8 & 1;
  return result;
}

uint64_t LabelPlaceholderCompatibility.layoutTextView.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E1AF16BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = *(v1 + 65);
  if (v15)
  {
    v16 = *(v1 + 64);
    v22[1] = *v1;
    v22[2] = v8;
    v23 = v9;
    *v24 = *(v1 + 17);
    *&v24[3] = *(v1 + 20);
    v25 = v10;
    v26 = v11;
    v27 = v13;
    v28 = v12;
    v29 = v14;
    v30 = v16;
    v31 = v15;
    sub_1E180D778(v6);
    sub_1E1AF168C();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (*(v1 + 16))
    {
      sub_1E1AF1AEC();
      swift_allocObject();
      sub_1E180D768(v7, v8, 1);
      v18 = v10;
      v19 = sub_1E1AF1ADC();
      v20 = MEMORY[0x1E69ABAA8];
    }

    else
    {
      sub_1E1AF1A4C();
      swift_allocObject();
      sub_1E180D768(v7, v8, 0);
      v21 = v10;
      v19 = sub_1E1AF1A3C();
      v20 = MEMORY[0x1E69ABA98];
    }

    result = swift_getObjectType();
    a1[3] = result;
    a1[4] = v20;
    *a1 = v19;
  }

  return result;
}

double sub_1E180D768(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E180D778@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_1E1AF152C();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v29 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v19 = *v1;
  v20 = *(v1 + 16);
  v29[1] = *(v1 + 32);
  v29[2] = *(v1 + 40);
  v29[3] = *(v1 + 48);
  v29[4] = *(v1 + 56);
  v22 = (v21 + 8);
  v30 = *(v1 + 64);
  v31 = v19;
  if (v20)
  {
    v23 = v19;
    sub_1E1AF151C();
    sub_1E1AF150C();
    v24 = *v22;
    (*v22)(v5, v2);
    sub_1E1AF14CC();
    v24(v8, v2);
    sub_1E1AF14EC();
    v24(v11, v2);
    sub_1E1AF14DC();
    v24(v14, v2);
    sub_1E1AF14FC();
    v24(v17, v2);
    if ((v30 & 1) == 0 || (v25 = sub_1E1AF169C(), sub_1E1AF16AC(), sub_1E1AF16AC(), sub_1E1AF16AC() != v25))
    {
      sub_1E1AF16AC();
    }

    return sub_1E1AF16DC();
  }

  else
  {
    v29[0] = *(v1 + 8);

    sub_1E1AF151C();
    sub_1E1AF150C();
    v26 = *v22;
    (*v22)(v5, v2);
    sub_1E1AF14CC();
    v26(v8, v2);
    sub_1E1AF14EC();
    v26(v11, v2);
    sub_1E1AF14DC();
    v26(v14, v2);
    sub_1E1AF14FC();
    v26(v17, v2);
    if ((v30 & 1) == 0 || (v27 = sub_1E1AF169C(), sub_1E1AF16AC(), sub_1E1AF16AC(), sub_1E1AF16AC() != v27))
    {
      sub_1E1AF16AC();
    }

    return sub_1E1AF16CC();
  }
}

id LabelPlaceholderCompatibility.referableLayoutTextView.getter()
{
  v1 = sub_1E1AF16BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 65);
  if (v13)
  {
    v14 = *(v0 + 64);
    v23[0] = *v0;
    v23[1] = v6;
    v24 = v7;
    *v25 = *(v0 + 17);
    *&v25[3] = *(v0 + 20);
    v26 = v9;
    v27 = v8;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v14;
    v32 = v13;
    sub_1E180D778(v4);
    sub_1E1AF168C();
    (*(v2 + 8))(v4, v1);
    v15 = type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    v16 = objc_allocWithZone(v15);
    sub_1E1300B24(v23, v16 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
    v22.receiver = v16;
    v22.super_class = v15;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1E18105D4(&qword_1ECEB9CA8, &unk_1E1B36BFC);
    return v17;
  }

  else if (*(v0 + 16))
  {
    sub_1E1AF1AEC();
    swift_allocObject();
    sub_1E180D768(v5, v6, 1);
    v19 = v9;
    return sub_1E1AF1ADC();
  }

  else
  {
    sub_1E1AF1A4C();
    swift_allocObject();
    sub_1E180D768(v5, v6, 0);
    v20 = v9;
    return sub_1E1AF1A3C();
  }
}

double LabelPlaceholderCompatibility.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v5, a2, a3);

  return v6;
}

double LabelPlaceholderCompatibility.measurements(fitting:with:)(void *a1, double a2, double a3)
{
  v45 = a1;
  v4 = sub_1E1AF157C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - v8;
  v9 = sub_1E1AF16BC();
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v17 = *(v3 + 24);
  v16 = *(v3 + 32);
  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  v20 = *(v3 + 56);
  v21 = *(v3 + 64);
  v22 = *(v3 + 65);
  if (v22)
  {
    v46 = *v3;
    v47 = v14;
    v48 = v15;
    *v49 = *(v3 + 17);
    *&v49[3] = *(v3 + 20);
    v50 = v17;
    v51 = v16;
    v52 = v19;
    v53 = v18;
    v54 = v20;
    v55 = v21;
    v56 = v22;
    v23 = v10;
    sub_1E180D778(v12);
    sub_1E1AF1A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E1B06D70;
    v25 = v45;
    *(v24 + 32) = v45;
    v26 = v25;
    v27 = sub_1E1AF1A9C();
    sub_1E1AF11CC();
    v29 = v28;

    (*(v23 + 8))(v12, v9);
  }

  else
  {
    v30 = v45;
    if (v15)
    {
      sub_1E180D768(v13, v14, 1);
      v31 = v17;
      sub_1E1AF154C();
    }

    else
    {
      sub_1E180D768(v13, v14, 0);
      v32 = v17;
      sub_1E1AF156C();
    }

    v34 = v42;
    v33 = v43;
    v35 = v44;
    (*(v43 + 32))(v42, v6, v44);
    sub_1E1AF1A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1E1B06D70;
    *(v36 + 32) = v30;
    v37 = v30;
    v38 = sub_1E1AF1A9C();
    sub_1E1AF11CC();
    v29 = v39;

    (*(v33 + 8))(v34, v35);
  }

  return v29;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, id a11, char a12)
{
  v22 = [a11 traitCollection];
  v23 = v22;
  if (a2)
  {
    sub_1E13E472C();
    v26[0] = a1;
    v26[1] = a2;
    v27 = 0;
    v28 = MEMORY[0x1E68FF8C0](a3, v23);
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8 & 1;
    v34 = a12 & 1;

    v24 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v23, a9, a10);

    sub_1E180E4CC(v26);
  }

  else
  {

    return 0.0;
  }

  return v24;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, void *a11, char a12)
{
  if (!a2)
  {
    return 0.0;
  }

  sub_1E13E472C();
  v24[0] = a1;
  v24[1] = a2;
  v25 = 0;
  v26 = MEMORY[0x1E68FF8C0](a3, a11);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8 & 1;
  v32 = a12 & 1;

  v22 = LabelPlaceholderCompatibility.measurements(fitting:with:)(a11, a9, a10);
  sub_1E180E4CC(v24);
  return v22;
}

double static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10, unsigned __int8 a11)
{
  v40 = a7;
  v39 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v37[-v20];
  v22 = sub_1E1AF12AC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v37[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = [a8 traitCollection];
  v28 = v27;
  if (a1)
  {
    v38 = a11;
    sub_1E13E4A9C(a2, v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      v29 = a1;
      sub_1E13E4B0C(v21);
      v30 = objc_opt_self();
      v31 = *MEMORY[0x1E69DDCF8];
      v32 = v29;
      v33 = [v30 preferredFontForTextStyle:v31 compatibleWithTraitCollection:0];
      a4 = 0;
      a5 = 0;
      a3 = 4;
    }

    else
    {
      (*(v23 + 32))(v26, v21, v22);
      sub_1E13E472C();
      v35 = a1;
      v33 = MEMORY[0x1E68FF8C0](v26, v28);
      (*(v23 + 8))(v26, v22);
    }

    v46[0] = a1;
    v46[1] = 0;
    LOBYTE(v47) = 1;
    *(&v47 + 1) = v33;
    *&v48 = a3;
    *(&v48 + 1) = a4;
    *&v49 = a5;
    *(&v49 + 1) = v39;
    LOBYTE(v50) = v40 & 1;
    HIBYTE(v50) = v38 & 1;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v42 = v47;
    v41 = a1;
    sub_1E180EC00(v46, v51);
    v34 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v28, a9, a10);

    sub_1E180E4CC(v46);
    v51[2] = v43;
    v51[3] = v44;
    v52 = v45;
    v51[0] = v41;
    v51[1] = v42;
    sub_1E180E4CC(v51);
  }

  else
  {

    return 0.0;
  }

  return v34;
}

{
  v37 = a7;
  v36 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34[-v20];
  v22 = sub_1E1AF12AC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0.0;
  }

  v35 = a11;
  sub_1E13E4A9C(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = a1;
    sub_1E13E4B0C(v21);
    v27 = objc_opt_self();
    v28 = *MEMORY[0x1E69DDCF8];
    v29 = v26;
    v30 = [v27 preferredFontForTextStyle:v28 compatibleWithTraitCollection:0];
    a4 = 0;
    a5 = 0;
    a3 = 4;
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    sub_1E13E472C();
    v32 = a1;
    v30 = MEMORY[0x1E68FF8C0](v25, a8);
    (*(v23 + 8))(v25, v22);
  }

  v43[0] = a1;
  v43[1] = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v30;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = v36;
  LOBYTE(v47) = v37 & 1;
  HIBYTE(v47) = v35 & 1;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v39 = v44;
  v38 = a1;
  sub_1E180EC00(v43, v48);
  v31 = LabelPlaceholderCompatibility.measurements(fitting:with:)(a8, a9, a10);
  sub_1E180E4CC(v43);

  v48[2] = v40;
  v48[3] = v41;
  v49 = v42;
  v48[0] = v38;
  v48[1] = v39;
  sub_1E180E4CC(v48);
  return v31;
}

double sub_1E180EC38(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v5, a2, a3);

  return v6;
}

uint64_t sub_1E180ECC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1E180ED08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_1E180ED6C(double **a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5 + 24);
  v7 = __swift_project_boxed_opaque_existential_1Tm((v1 + v5), v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  (*(v8 + 16))(&v21 - v10, v9);
  sub_1E1AF115C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v6);
  *v4 = v13;
  v4[1] = v15;
  v4[2] = v17;
  v4[3] = v19;
  return sub_1E180EED4;
}

void sub_1E180EED4(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 32) + *(*a1 + 40));
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v9 - v7;
  (*(v5 + 16))(&v9 - v7, v6);
  sub_1E1AF116C();
  (*(v5 + 8))(v8, v3);
  free(v1);
}

uint64_t (*sub_1E180EFF8(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1Tm((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_1E1AF117C();
  (*(v6 + 8))(v9, v4);
  *(a1 + 16) = v10 & 1;
  return sub_1E180F11C;
}

uint64_t sub_1E180F11C(void *a1)
{
  v1 = (*a1 + a1[1]);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_1E1AF118C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t (*sub_1E180F218(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1Tm((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_1E1AF145C();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_1E180F338;
}

uint64_t (*sub_1E180F350(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1Tm((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_1E1AF143C();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_1E180F470;
}

uint64_t sub_1E180F488(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (a1[1] + a1[2]);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  a3(v4, v6, v7);
  return (*(v9 + 8))(v12, v6);
}

void (*sub_1E180F58C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3 + 24);
  v5 = __swift_project_boxed_opaque_existential_1Tm((v1 + v3), v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = sub_1E1AF148C();
  (*(v6 + 8))(v9, v4);
  *a1 = v10;
  return sub_1E180F6AC;
}

void sub_1E180F6AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*(a1 + 8) + *(a1 + 16));
  v5 = v4[3];
  v6 = __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v8);
  if (a2)
  {
    v11 = v3;
    sub_1E1AF149C();
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    sub_1E1AF149C();
    (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1E180F840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E180F888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void (*sub_1E180F918(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1E180F218(v2);
  return sub_1E15262E4;
}

void (*sub_1E180F9BC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1E180F350(v2);
  return sub_1E15262E4;
}

uint64_t sub_1E180FA60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = (*v4 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v8 = v7[3];
  v9 = v7[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  v11 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v12);
  a4(a1, v8, v9);
  return (*(v11 + 8))(v14, v8);
}

void (*sub_1E180FB68(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1E180F58C(v2);
  return sub_1E15262E4;
}

uint64_t sub_1E180FBDC()
{
  v1 = (*v0 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v5);
  v8 = sub_1E1AF141C();
  (*(v4 + 8))(v7, v2);
  return v8 & 1;
}

double sub_1E180FCD4()
{
  v1 = (*v0 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6, v5);
  sub_1E1AF147C();
  v9 = v8;
  (*(v4 + 8))(v7, v2);
  return v9;
}

uint64_t sub_1E180FE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, v7);
  (*(v9 + 8))(v12, v6);
  return v13;
}

uint64_t sub_1E180FF2C()
{
  v1 = (*v0 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v5);
  sub_1E1AF116C();
  return (*(v4 + 8))(v7, v2);
}

void (*sub_1E181004C(double ***a1))(void *a1)
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
  *(v2 + 32) = sub_1E180ED6C(v2);
  return sub_1E15255B8;
}

uint64_t sub_1E18100D8(uint64_t a1)
{
  v2 = (*v1 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v6);
  sub_1E1AF118C();
  return (*(v5 + 8))(v8, v3);
}

void (*sub_1E18101D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1E180EFF8(v2);
  return sub_1E15262E4;
}

uint64_t sub_1E1810264(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v10);
  LOBYTE(a3) = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return a3 & 1;
}

double sub_1E1810384(uint64_t a1, uint64_t a2, double (*a3)(uint64_t, void))
{
  v5 = (*v3 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v10);
  v13 = a3(v6, *(v7 + 8));
  (*(v9 + 8))(v12, v6);
  return v13;
}

double sub_1E18104B4(uint64_t a1, double a2, double a3)
{
  sub_1E1300B24(*v3 + OBJC_IVAR____TtC11AppStoreKitP33_93C0E6A11F8F4010766EE3CB34CDB09A40_LabelPlaceholderReferableLayoutTextView_base, v7);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1E1AF11CC();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_1E18105D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ImpressionsCalculator.__allocating_init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_allocObject();
  v6 = sub_1E1812F7C(a1, a3, a2);
  swift_unknownObjectRelease();
  return v6;
}

void sub_1E1810684(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1E1810798(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 16)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;

      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}