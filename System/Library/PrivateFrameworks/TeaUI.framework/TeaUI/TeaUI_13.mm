_BYTE *sub_1D7F2FACC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double sub_1D7F2FBA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

char *BlueprintTableViewDragDelegate.init(blueprintProvider:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_7();
  (*(*(*((v5 & v4) + 0x50) - 8) + 16))(&v1[*(v3 + 96)], v0, *((v5 & v4) + 0x50));
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_init);
  v6 = OUTLINED_FUNCTION_15_7();
  v7(v6);
  return v1;
}

uint64_t BlueprintTableViewDragDelegate.tableView(_:itemsForBeginning:at:)()
{
  OUTLINED_FUNCTION_12_12();
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E8E4();
  [v2 deselectRowAtIndexPath:v5 animated:0];

  OUTLINED_FUNCTION_10_19();
  v7 = *((v4 & v3) + 0x50);
  v8 = *((v4 & v3) + 0x58);
  v9 = v0 + *(v6 + 96);

  return dragItems<A>(from:at:)(v9, v1, v7, v8);
}

id sub_1D7F2FE54(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintTableViewDragDelegate.tableView(_:itemsForBeginning:at:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7F31AF0();
  v13 = sub_1D8191304();

  return v13;
}

uint64_t BlueprintTableViewDragDelegate.tableView(_:itemsForAddingTo:at:point:)()
{
  OUTLINED_FUNCTION_12_12();
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E8E4();
  [v2 deselectRowAtIndexPath:v5 animated:0];

  OUTLINED_FUNCTION_10_19();
  v7 = *((v4 & v3) + 0x50);
  v8 = *((v4 & v3) + 0x58);
  v9 = v0 + *(v6 + 96);

  return dragItems<A>(from:at:)(v9, v1, v7, v8);
}

id sub_1D7F30064(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintTableViewDragDelegate.tableView(_:itemsForAddingTo:at:point:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7F31AF0();
  v13 = sub_1D8191304();

  return v13;
}

id BlueprintTableViewDragDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D7F30290@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintTableViewDragDelegate2.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 120), v3);
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDragDelegate2.delegate.setter(void *a1)
{
  OUTLINED_FUNCTION_3_7();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*BlueprintTableViewDragDelegate2.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_7();
  *(v5 + 40) = *(v4 + 120);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F304EC;
}

void sub_1D7F304EC()
{
  OUTLINED_FUNCTION_17_10();
  swift_unknownObjectWeakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1D7F3055C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x80);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7F305D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDragDelegate2.selectionProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 128), v3);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintTableViewDragDelegate2.selectionProvider.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v5 = v2 + *(v4 + 128);
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BlueprintTableViewDragDelegate2.selectionProvider.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 1);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F307E4;
}

void sub_1D7F307E4()
{
  OUTLINED_FUNCTION_17_10();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_1D7F30878(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  (*(v6 + 16))(v8 - v7, a1, v5);
  v10 = a2(v9);
  (*(v6 + 8))(a1, v5);
  return v10;
}

char *BlueprintTableViewDragDelegate2.init(blueprintProvider:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_7();
  *&v1[*(v5 + 128) + 8] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_7();
  (*(*(*((v4 & v3) + 0x50) - 8) + 16))(&v1[*(v6 + 112)], v0, *((v4 & v3) + 0x50));
  v10.receiver = v1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_init);
  v7 = OUTLINED_FUNCTION_15_7();
  v8(v7);
  return v1;
}

id sub_1D7F30B28(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintTableViewDragDelegate2.tableView(_:itemsForBeginning:at:)(v12, v13, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7F31AF0();
  v14 = sub_1D8191304();

  return v14;
}

id sub_1D7F30CC8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintTableViewDragDelegate2.tableView(_:itemsForAddingTo:at:point:)(v12, v13, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7F31AF0();
  v14 = sub_1D8191304();

  return v14;
}

void *BlueprintTableViewDragDelegate2.tableView(_:dragSessionWillBegin:)(void *a1)
{
  v33 = (*MEMORY[0x1E69E7D40] & *v1);
  v2 = v33[12];
  v3 = v33[10];
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v3;
  v32 = v2;
  OUTLINED_FUNCTION_6_16();
  v5 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_6(v5);
  OUTLINED_FUNCTION_9();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_8_4(v1 + *(v14 + 128), v35);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_13_8();
    v15();
    swift_unknownObjectRelease();
    v16 = OUTLINED_FUNCTION_11_11();
    if (__swift_getEnumTagSinglePayload(v16, v17, v12) != 1)
    {
      v18 = OUTLINED_FUNCTION_7_18();
      v19(v18);
      v20 = sub_1D818E8E4();
      [a1 deselectRowAtIndexPath:v20 animated:0];

      v21 = OUTLINED_FUNCTION_6_16();
      v22(v21);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_11_11();
    __swift_storeEnumTagSinglePayload(v23, v24, 1, v12);
  }

  sub_1D7E73334(v11);
LABEL_6:
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_8_4(v1 + *(v25 + 120), v34);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    OUTLINED_FUNCTION_4_22();
    BlueprintProviderType.blueprint.getter(v31, v32);
    (*(v33[13] + 184))(AssociatedConformanceWitness, v33[11]);

    return (*(v29 + 8))(AssociatedConformanceWitness, v30);
  }

  return result;
}

void *BlueprintTableViewDragDelegate2.tableView(_:dragSessionDidEnd:)(void *a1)
{
  v33 = (*MEMORY[0x1E69E7D40] & *v1);
  v2 = v33[12];
  v3 = v33[10];
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v3;
  v32 = v2;
  OUTLINED_FUNCTION_6_16();
  v5 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_6(v5);
  OUTLINED_FUNCTION_9();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_8_4(v1 + *(v14 + 128), v35);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_13_8();
    v15();
    swift_unknownObjectRelease();
    v16 = OUTLINED_FUNCTION_11_11();
    if (__swift_getEnumTagSinglePayload(v16, v17, v12) != 1)
    {
      v18 = OUTLINED_FUNCTION_7_18();
      v19(v18);
      v20 = sub_1D818E8E4();
      [a1 selectRowAtIndexPath:v20 animated:0 scrollPosition:0];

      v21 = OUTLINED_FUNCTION_6_16();
      v22(v21);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_11_11();
    __swift_storeEnumTagSinglePayload(v23, v24, 1, v12);
  }

  sub_1D7E73334(v11);
LABEL_6:
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_8_4(v1 + *(v25 + 120), v34);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    OUTLINED_FUNCTION_4_22();
    BlueprintProviderType.blueprint.getter(v31, v32);
    (*(v33[13] + 192))(AssociatedConformanceWitness, v33[11]);

    return (*(v29 + 8))(AssociatedConformanceWitness, v30);
  }

  return result;
}

void sub_1D7F31508(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  a5(v7);

  swift_unknownObjectRelease();
}

uint64_t BlueprintTableViewDragDelegate2.tableView(_:dragSessionIsRestrictedToDraggingApplication:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v4 = v3[12];
  v5 = v3[10];
  v16[0] = OUTLINED_FUNCTION_18_8();
  v16[1] = OUTLINED_FUNCTION_18_8();
  v16[2] = swift_getAssociatedConformanceWitness();
  v16[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Blueprint(0, v16);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  OUTLINED_FUNCTION_8_4(v0 + *((v2 & v1) + 0x78), v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    OUTLINED_FUNCTION_3_7();
    BlueprintProviderType.blueprint.getter(v5, v4);
    v14 = (*(v3[13] + 200))(v11, v3[11]);

    (*(v8 + 8))(v11, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D7F317BC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = BlueprintTableViewDragDelegate2.tableView(_:dragSessionIsRestrictedToDraggingApplication:)();

  swift_unknownObjectRelease();
  return v7 & 1;
}

uint64_t sub_1D7F3185C(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x70)]);
  OUTLINED_FUNCTION_10_19();
  MEMORY[0x1DA715E30](&a1[*(v2 + 120)]);
  OUTLINED_FUNCTION_10_19();
  v4 = &a1[*(v3 + 128)];

  return sub_1D7E166A0(v4);
}

uint64_t sub_1D7F3192C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7F31A04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D7F31AF0()
{
  result = qword_1ECA0F6B0;
  if (!qword_1ECA0F6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA0F6B0);
  }

  return result;
}

BOOL static BlueprintPipelineResult.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (!*a1)
  {
    return !v2;
  }

  return v2 > 1;
}

uint64_t BlueprintPipelinePromiseResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F31C1C()
{
  result = qword_1ECA0DDE8;
  if (!qword_1ECA0DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DDE8);
  }

  return result;
}

uint64_t sub_1D7F31C74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7F31CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D7F31D24(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintPipelinePromiseResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t BlueprintLayoutCollectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintLayoutCollectionProvider.init()();
  return v0;
}

uint64_t BlueprintLayoutCollectionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void OpenNewTabCommandHandler.handle(commandCenter:command:with:source:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D7F322EC();
}

uint64_t sub_1D7F32150(uint64_t a1)
{
  if (qword_1EDBBCFC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC6138;
  v2 = sub_1D81919C4();
  sub_1D7E1A4D0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D819FAB0;
  sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
  sub_1D8192334();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D7E13BF4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D818FD44("Failed to connect new UIScene, error=%{public}@", 47, 2, &dword_1D7DFF000, v1, v2, v3);
}

void sub_1D7F32294()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D7F322EC();
}

void sub_1D7F322EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v1 = [objc_opt_self() sharedApplication];
  v4[4] = sub_1D7F32150;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D806D054;
  v4[3] = &block_descriptor_8;
  v2 = _Block_copy(v4);
  v3 = v0;
  [v1 requestSceneSessionActivation:0 userActivity:0 options:v3 errorHandler:v2];
  _Block_release(v2);
}

TeaUI::RadarDiagnostics_optional __swiftcall RadarDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RadarDiagnostics.rawValue.getter()
{
  result = 0x61772C656E6F6870;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 48;
      break;
    case 4:
      result = 12589;
      break;
    case 5:
      result = 0x656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D7F32518()
{
  result = qword_1ECA0DDF0;
  if (!qword_1ECA0DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DDF0);
  }

  return result;
}

unint64_t sub_1D7F32590@<X0>(unint64_t *a1@<X8>)
{
  result = RadarDiagnostics.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RadarDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RadarDiagnostics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

TeaUI::PageBlueprintPrewarmerOptions sub_1D7F32748@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PageBlueprintPrewarmerOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7F32788@<X0>(uint64_t *a1@<X8>)
{
  result = PageBlueprintPrewarmerOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t PageBlueprintPrewarmer.__allocating_init(prewarmRange:pageBlueprintProvider:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  PageBlueprintPrewarmer.init(prewarmRange:pageBlueprintProvider:options:)(a1, a2, a3, a4);
  return v8;
}

char *PageBlueprintPrewarmer.init(prewarmRange:pageBlueprintProvider:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *v4;
  v6 = *a4;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  (*(*(*(v5 + 80) - 8) + 32))(&v4[*(v5 + 104)], a3);
  *&v4[*(*v4 + 112)] = v6;
  return v4;
}

uint64_t PageBlueprintPrewarmer.prewarmPages(neighboring:)(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = v3;
  v75 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_1D81923F4();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v59 - v19;
  v63 = WitnessTable;
  v74 = sub_1D81923E4();
  OUTLINED_FUNCTION_2();
  v60 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v59 - v22;
  v66 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v65 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  OUTLINED_FUNCTION_2();
  v68 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v77 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v67 = &v59 - v31;
  OUTLINED_FUNCTION_2();
  v69 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v59 - v34;
  result = sub_1D7F33044();
  if (result)
  {
    v71 = v13;
    v72 = v10;
    (*(v14 + 24))(v75, v14);
    sub_1D818F154();

    v37 = sub_1D818EF94();
    PageBlueprint.page(for:)(v37);

    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v38 = OUTLINED_FUNCTION_2_36();
      v39(v38);
      v40 = *(v65 + 1);
      v41 = v26;
LABEL_19:
      v44 = v66;
      return v40(v41, v44);
    }

    v42 = v68;
    v43 = v67;
    v75 = *(v68 + 32);
    v76 = v68 + 32;
    v75(v67, v26, AssociatedTypeWitness);
    swift_getWitnessTable();
    sub_1D81918C4();
    if (v81.n128_u8[8])
    {
      (*(v42 + 8))(v43, AssociatedTypeWitness);
      v41 = OUTLINED_FUNCTION_2_36();
      return v40(v41, v44);
    }

    AssociatedConformanceWitness = v81.n128_u64[0];
    v66 = v16;
    v65 = v35;
    MEMORY[0x1DA7133A0](v16, v63);
    v45 = v73;
    sub_1D81923C4();
    v46 = (v64 + 32);
    v48 = v71;
    v47 = v72;
    for (i = v74; ; i = v74)
    {
      while (1)
      {
        sub_1D81923D4();
        (*v46)(v48, v47, v6);
        if (__swift_getEnumTagSinglePayload(v48, 1, TupleTypeMetadata2) == 1)
        {
          (*(v60 + 8))(v45, i);
          (*(v68 + 8))(v67, AssociatedTypeWitness);
          v40 = *(v69 + 8);
          v41 = v65;
          goto LABEL_19;
        }

        v50 = *v48;
        v75(v77, v48 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
        sub_1D7F330C0();
        if (swift_dynamicCast())
        {
          break;
        }

        v80 = 0;
        memset(v79, 0, sizeof(v79));
        sub_1D7F3311C(v79);
      }

      result = sub_1D7E32DEC(v79, &v81);
      v51 = __OFSUB__(v50, AssociatedConformanceWitness);
      v52 = v50 - AssociatedConformanceWitness;
      if (v51)
      {
        break;
      }

      v53 = *(v2 + 24);
      v54 = v2;
      v55 = *(v2 + 16);
      v56 = v82;
      v57 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, v82);
      if (v52 < v55 || v53 < v52)
      {
        (*(v57 + 16))(v56, v57);
      }

      else
      {
        (*(v57 + 8))(v56, v57);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v81);
      v2 = v54;
      v48 = v71;
      v47 = v72;
      v45 = v73;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7F33044()
{
  if ((*(v0 + *(*v0 + 112)) & 1) == 0)
  {
    return 1;
  }

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3 ^ 1;
}

unint64_t sub_1D7F330C0()
{
  result = qword_1EDBBBD20;
  if (!qword_1EDBBBD20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBBD20);
  }

  return result;
}

uint64_t sub_1D7F3311C(uint64_t a1)
{
  sub_1D7F33178(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F33178(uint64_t a1)
{
  if (!qword_1EDBBBD10)
  {
    sub_1D7F330C0();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBBD10);
    }
  }
}

uint64_t PageBlueprintPrewarmer.__deallocating_deinit()
{
  PageBlueprintPrewarmer.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7F3329C()
{
  result = qword_1ECA0DDF8;
  if (!qword_1ECA0DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DDF8);
  }

  return result;
}

unint64_t sub_1D7F332F4()
{
  result = qword_1ECA0DE00;
  if (!qword_1ECA0DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DE00);
  }

  return result;
}

unint64_t sub_1D7F3334C()
{
  result = qword_1ECA0DE08;
  if (!qword_1ECA0DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DE08);
  }

  return result;
}

unint64_t sub_1D7F333A4()
{
  result = qword_1ECA0DE10;
  if (!qword_1ECA0DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DE10);
  }

  return result;
}

id sub_1D7F334E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      v8 = *(v2 + 16);
      v9 = OUTLINED_FUNCTION_0_40();
      v21 = v10;
      sub_1D7E19F24(v9, v11);
      v12 = OUTLINED_FUNCTION_0_40();
      sub_1D7E19F24(v12, v13);
      LOBYTE(v8) = v7(v8);
      v14 = OUTLINED_FUNCTION_0_40();
      sub_1D7E0E10C(v14, v15);
      v6 = v21;
      if (v8)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_0_40();
      sub_1D7E0E10C(v16, v17);
      ++v5;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v2 + 16);
    *a2 = v20;
    *(a2 + 8) = v6;
    return v20;
  }

  else
  {
LABEL_5:
    sub_1D7F33630();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D7F335D4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D7F33630()
{
  result = qword_1EDBAFE70;
  if (!qword_1EDBAFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFE70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserActivityHandlerMatcher.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D7F33764()
{
  result = qword_1ECA0DE18;
  if (!qword_1ECA0DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DE18);
  }

  return result;
}

void ToolbarTemplate.init(items:centerItem:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    sub_1D8190DB4();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a3 = a1;
  a3[1] = v6;
  a3[2] = v5;
}

TeaUI::ToolbarTemplate __swiftcall ToolbarTemplate.init(items:centerItemIdentifier:)(Swift::OpaquePointer items, Swift::String_optional centerItemIdentifier)
{
  *v2 = items;
  *(v2 + 8) = centerItemIdentifier;
  result.centerItemIdentifier = centerItemIdentifier;
  result.items = items;
  return result;
}

uint64_t sub_1D7F33850(void *a1)
{
  *(v1 + 56) = 0;
  sub_1D7E0E768(a1, v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7F33B44(0);
  sub_1D818EFF4();
  *(v1 + 56) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D7F338E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D7F33958(void *a1)
{
  v2 = v1[7];
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    type metadata accessor for SettingsNavigationController();
    *(swift_allocObject() + 16) = v2;
    swift_bridgeObjectRetain_n();
    v4 = sub_1D818EFD4();

    if (v4)
    {

      [v4 setModalInPresentation_];
      [a1 presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7F33A94(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7F33B44(0);
  return sub_1D818EE24();
}

void sub_1D7F33B44(uint64_t a1)
{
  if (!qword_1EDBBD1C0)
  {
    sub_1D818EBE4();
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBD1C0);
    }
  }
}

id NavigationController.__allocating_init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_getObjCClassFromMetadata();
  }

  v4 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_3_31();
  v7 = [v5 v6];

  return v7;
}

id NavigationController.init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC5TeaUI20NavigationController_styler;
  type metadata accessor for NavigationControllerStyler();
  *(v2 + v5) = swift_allocObject();
  if (a2)
  {
    swift_getObjCClassFromMetadata();
  }

  v10 = type metadata accessor for NavigationController();
  OUTLINED_FUNCTION_3_31();
  v8 = objc_msgSendSuper2(v6, v7, v2, v10);

  return v8;
}

id NavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id NavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void NavigationController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI20NavigationController_styler;
  type metadata accessor for NavigationControllerStyler();
  *(v0 + v1) = swift_allocObject();
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F33E04(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NavigationController();
  v3 = objc_msgSendSuper2(&v6, sel_popViewControllerAnimated_, a1 & 1);
  v4 = [v1 topViewController];
  sub_1D7F33E8C(v3, v4);

  return v3;
}

void sub_1D7F33E8C(uint64_t a1, void *a2)
{
  if ((sub_1D8190B24() & 1) == 0)
  {
    v4 = [v2 transitionCoordinator];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = sub_1D7F35234;
      v18 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D7F6900C;
      v16 = &block_descriptor_9;
      v7 = _Block_copy(&aBlock);

      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = sub_1D7F3523C;
      v18 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D7F6900C;
      v16 = &block_descriptor_5;
      v9 = _Block_copy(&aBlock);

      [v5 animateAlongsideTransition:v7 completion:v9];
      _Block_release(v9);
      _Block_release(v7);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = sub_1D7F35244;
      v18 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D7F6900C;
      v16 = &block_descriptor_9;
      v11 = _Block_copy(&aBlock);

      [v5 notifyWhenInteractionChangesUsingBlock_];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    else if (a2)
    {
      v12 = a2;
      sub_1D7E26FFC(v12);
    }
  }
}

uint64_t sub_1D7F34164(void *a1, char a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for NavigationController();
  v5 = objc_msgSendSuper2(&v8, sel_popToViewController_animated_, a1, a2 & 1);
  if (v5)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    v6 = sub_1D8191314();

    if (sub_1D7E36AB8(v6))
    {
      sub_1D7E33DD8(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        sub_1D8190DB4();
        v5 = MEMORY[0x1DA714420](0, v6);
      }

      else
      {
        v5 = *(v6 + 32);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1D7F33E8C(v5, a1);

  return v6;
}

uint64_t sub_1D7F34310(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NavigationController();
  v3 = objc_msgSendSuper2(&v7, sel_popToRootViewControllerAnimated_, a1 & 1);
  if (v3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    v4 = sub_1D8191314();

    if (sub_1D7E36AB8(v4))
    {
      sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) != 0)
      {
        sub_1D8190DB4();
        v3 = MEMORY[0x1DA714420](0, v4);
      }

      else
      {
        v3 = *(v4 + 32);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 topViewController];
  sub_1D7F33E8C(v3, v5);

  return v4;
}

id sub_1D7F344B8()
{
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v2 = sub_1D8191314();

  v3 = sub_1D7E36AB8(v2);

  if (v3 < 2)
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for NavigationController();
    return objc_msgSendSuper2(&v6, sel_accessibilityPerformEscape);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_1D7F345C4(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v6, sel_setEditing_animated_, a1 & 1, a2 & 1);
  v5 = [v2 topViewController];
  [v5 setEditing:a1 & 1 animated:a2 & 1];
}

void sub_1D7F346A4(void *a1)
{
  v3 = [v1 topViewController];
  if (v3)
  {
    v16 = v3;
    ObjectType = swift_getObjectType();
    v5 = dynamic_cast_existential_1_conditional(v16, ObjectType, &protocol descriptor for NavigationItemStylable);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = swift_getObjectType();
      v24 = v7;
      (*(v8 + 8))(v9, v8);
      sub_1D818F154();

      memcpy(__dst, __src, 0x5AuLL);
      v10 = __dst[0];
      v11 = __dst[1];
      v12 = __dst[2];
      v13 = __dst[3];
      v14 = __dst[4];
      v15 = __dst[5];
      sub_1D7E442D8(__dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
      sub_1D7E4653C(__dst);
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      sub_1D7F3526C(a1, &v17);

      sub_1D7E45E84(v17, v18, v19, v20, v21, v22);
    }

    else
    {
    }
  }
}

id NavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getObjCClassFromMetadata();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v4 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_3_31();

  return [v5 v6];
}

id NavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NavigationController.hidesBottomBarWhenPushed.getter()
{
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v2 = sub_1D8191314();

  if (sub_1D7E36AB8(v2))
  {
    sub_1D7E33DD8(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1DA714420](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 hidesBottomBarWhenPushed];
  }

  else
  {

    return 0;
  }

  return v5;
}

void NavigationController.hidesBottomBarWhenPushed.setter(char a1)
{
  v3 = [v1 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v4 = sub_1D8191314();

  if (sub_1D7E36AB8(v4))
  {
    sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v6 setHidesBottomBarWhenPushed_];
}

void sub_1D7F34C40(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D7E26FFC(a3);
  }
}

void sub_1D7F34C9C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong isNavigationBarHidden];

    if ((v5 & 1) == 0)
    {
      v6 = [a1 viewControllerForKey_];
      if (v6)
      {
        v7 = v6;
        swift_beginAccess();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_1D7E26FFC(v7);
        }
      }
    }
  }
}

void sub_1D7F34D6C(void *a1, uint64_t a2)
{
  v3 = [a1 isCancelled];
  v4 = MEMORY[0x1E69DE768];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DE778];
  }

  v5 = *v4;
  v6 = [a1 viewControllerForKey_];

  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1D7E26FFC(v6);
    }
  }
}

void sub_1D7F34E2C(void *a1, uint64_t a2)
{
  if ([a1 isCancelled])
  {
    v3 = [a1 viewControllerForKey_];
    if (v3)
    {
      v4 = v3;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        sub_1D7E26FFC(v4);
      }
    }
  }
}

Swift::Void __swiftcall NavigationController.textBeginEditing()()
{
  v1 = [v0 topViewController];
  if (v1 && (LOBYTE(v15[0]) = v1, sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), v2 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving), (OUTLINED_FUNCTION_2_2(v2, v3, v4, v5, v6, v7, v8, v9, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15[0]) & 1) != 0))
  {
    if (*(&v13 + 1))
    {
      sub_1D7E05450(&v12, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v10 = OUTLINED_FUNCTION_3_1();
      v11(v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  sub_1D7F35110(&v12, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
}

Swift::Void __swiftcall NavigationController.textEndEditing()()
{
  v1 = [v0 topViewController];
  if (v1 && (LOBYTE(v15[0]) = v1, sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), v2 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving), (OUTLINED_FUNCTION_2_2(v2, v3, v4, v5, v6, v7, v8, v9, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15[0]) & 1) != 0))
  {
    if (*(&v13 + 1))
    {
      sub_1D7E05450(&v12, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v10 = OUTLINED_FUNCTION_3_1();
      v11(v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  sub_1D7F35110(&v12, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
}

uint64_t sub_1D7F35110(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7F35180(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7F35180(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0631C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7F3526C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v21 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31D0, 0x1E69DC708);
  sub_1D7F3542C();
  v7 = a1;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v19, v22);
    v8 = v23;
    v9 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    if ((*(v9 + 8))(v8, v9))
    {
      switch(v6)
      {
        case 2:
          goto LABEL_8;
        case 4:
          v4 = v3;
LABEL_8:
          v3 = v4;
          if (v4)
          {
            goto LABEL_9;
          }

          return __swift_destroy_boxed_opaque_existential_1Tm(v22);
        case 5:
          return __swift_destroy_boxed_opaque_existential_1Tm(v22);
        default:
          if (!v3)
          {
            return __swift_destroy_boxed_opaque_existential_1Tm(v22);
          }

LABEL_9:
          if (v5)
          {
            v11 = v23;
            v12 = v24;
            __swift_project_boxed_opaque_existential_1(v22, v23);
            sub_1D7E49240();
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_1D81A5090;
            *(v13 + 32) = v3;
            *(v13 + 40) = v5;
            v14 = *(v12 + 16);
            v15 = v3;
            v16 = v5;
            v17 = v15;
            v18 = v16;
            v14(v13, v11, v12);
          }

          break;
      }
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_1D7F35488(v19);
  }
}

unint64_t sub_1D7F3542C()
{
  result = qword_1EDBBBD00;
  if (!qword_1EDBBBD00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBBD00);
  }

  return result;
}

uint64_t sub_1D7F35488(uint64_t a1)
{
  sub_1D7F354E4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F354E4(uint64_t a1)
{
  if (!qword_1EDBBBCF8)
  {
    sub_1D7F3542C();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBBCF8);
    }
  }
}

Swift::Void __swiftcall BlueprintViewportTransitionManager.willDisplay(viewController:parentView:)(UIViewController *viewController, UIView *parentView)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v15 = v3;
    v5 = [(UIViewController *)viewController parentViewController];
    if (!v5 || (v6 = v5, v5, v14 = v15, v6 != v15))
    {
      [(UIViewController *)v15 addChildViewController:viewController];
      v14 = [(UIViewController *)viewController didMoveToParentViewController:v15];
    }

    OUTLINED_FUNCTION_0_42(v14, v7, v8, v9, v10, v11, v12, v13, v15, *v17, *&v17[4], v17[6], 0);
    ViewControllerTransitionManager.endTransition(viewController:)(viewController);
  }
}

Swift::Void __swiftcall BlueprintViewportTransitionManager.didEndDisplaying(viewController:parentView:)(UIViewController *viewController, UIView *parentView)
{
  v4 = [(UIViewController *)viewController parentViewController];
  v5 = *(v2 + 24);
  if (!v4)
  {
    if (v5)
    {
      return;
    }

    v13 = 0;
    goto LABEL_7;
  }

  v23 = v4;
  if (v5)
  {

    LODWORD(v13) = v23;
    if (v23 != v5)
    {
      return;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_42(v13, v6, v7, v8, v9, v10, v11, v12, v23, *v25, *&v25[4], v25[6], 1);
    ViewControllerTransitionManager.endTransition(viewController:)(viewController);
    OUTLINED_FUNCTION_2_37(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v27, v28);
    return;
  }

  v22 = 0;
}

void sub_1D7F35708()
{
  type metadata accessor for ViewControllerTransitionManager();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for BlueprintViewportTransitionManager();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  qword_1ECA0DE28 = v1;
}

uint64_t static BlueprintViewportTransitionManager.noopManager.getter()
{
  if (qword_1ECA0C260 != -1)
  {
    swift_once();
  }
}

void sub_1D7F357DC(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!v6)
  {
    return;
  }

  v20 = v6;
  if (*(v2 + 16))
  {

    v7 = sub_1D7F14348();
    if (v7)
    {
      v8 = v7;
      v9 = [a2 contentView];
      v10 = [v8 view];
      if (v10)
      {
        v11 = v10;
        [v9 addSubview_];

        v12 = [v8 view];
        if (v12)
        {
          v13 = v12;
          [objc_msgSend(a2 contentView)];
          OUTLINED_FUNCTION_1_36();
          OUTLINED_FUNCTION_3_2(v13, sel_setFrame_);

LABEL_13:
          v21 = 0;
          ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v20, &v21, 0);
          ViewControllerTransitionManager.endTransition(viewController:)(v20);
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v14 = *(v2 + 24);
  if (v14)
  {
    v13 = v14;
    [v13 addChildViewController_];
    v15 = [a2 contentView];
    v16 = [(UIViewController *)v20 view];
    if (v16)
    {
      v17 = v16;
      [v15 addSubview_];

      v18 = [(UIViewController *)v20 view];
      if (v18)
      {
        v19 = v18;
        [objc_msgSend(a2 contentView)];
        OUTLINED_FUNCTION_1_36();
        OUTLINED_FUNCTION_3_2(v19, sel_setFrame_);

        [(UIViewController *)v20 didMoveToParentViewController:v13];
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
}

void sub_1D7F35A9C(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    if (!*(v1 + 16) || (, v7 = sub_1D7F14138(), v8 = , (v7 & 1) == 0))
    {
      [(UIViewController *)v6 willMoveToParentViewController:0];
      v16 = [(UIViewController *)v6 view];
      if (!v16)
      {
        __break(1u);
        return;
      }

      v17 = v16;
      [(UIView *)v16 removeFromSuperview];

      [(UIViewController *)v6 removeFromParentViewController];
      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      v20 = (*(v19 + 16))(v18, v19);
      sub_1D7E80824();
    }

    OUTLINED_FUNCTION_0_42(v8, v9, v10, v11, v12, v13, v14, v15, v29, *v31, *&v31[4], v31[6], 1);
    ViewControllerTransitionManager.endTransition(viewController:)(v6);
    OUTLINED_FUNCTION_2_37(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32, v33, v34);
  }
}

uint64_t CardViewTitleViewProviding<>.updateCardViewTitleView()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1D7F35C78(uint64_t a1)
{
  sub_1D7F35CD4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F35CD4(uint64_t a1)
{
  if (!qword_1EDBAF778)
  {
    sub_1D7F35D2C();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAF778);
    }
  }
}

unint64_t sub_1D7F35D2C()
{
  result = qword_1EDBAF780[0];
  if (!qword_1EDBAF780[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBAF780);
  }

  return result;
}

double ShineView.cornerRadius.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius;
  OUTLINED_FUNCTION_10(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius, a2);
  return *(v2 + v3);
}

double sub_1D7F35DE8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void ShineView.cornerRadius.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius;
  OUTLINED_FUNCTION_0_25(v3 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius, a3);
  *(v3 + v5) = a1;
  sub_1D7F35E88();
}

void sub_1D7F35E88()
{
  v1 = [v0 layer];
  [v1 cornerRadius];
  v3 = v2;

  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius;
  swift_beginAccess();
  if (v3 != *&v0[v4])
  {
    v5 = [v0 layer];
    [v5 setCornerRadius_];
  }
}

uint64_t (*ShineView.cornerRadius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7F35F94;
}

uint64_t ShineView.maskedCorners.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners;
  OUTLINED_FUNCTION_10(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners, a2);
  return *(v2 + v3);
}

void sub_1D7F35FE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ShineView.maskedCorners.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners;
  OUTLINED_FUNCTION_0_25(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners, a2);
  *(v2 + v4) = a1;
  sub_1D7F36084();
}

void sub_1D7F36084()
{
  v1 = [v0 layer];
  v2 = [v1 maskedCorners];

  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners;
  swift_beginAccess();
  if (v2 != *&v0[v3])
  {
    v4 = [v0 layer];
    [v4 setMaskedCorners_];
  }
}

uint64_t (*ShineView.maskedCorners.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7F36190;
}

id ShineView.cornerCurve.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve;
  OUTLINED_FUNCTION_10(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve, a2);
  v4 = *(v2 + v3);

  return v4;
}

id sub_1D7F361F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void ShineView.cornerCurve.setter(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve;
  OUTLINED_FUNCTION_0_25(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  sub_1D7F362E0();
}

void sub_1D7F362E0()
{
  v1 = [v0 layer];
  v2 = [v1 cornerCurve];

  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve;
  swift_beginAccess();
  v4 = sub_1D8190F14();
  v6 = v5;
  if (v4 == sub_1D8190F14() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D8192634();

    if ((v9 & 1) == 0)
    {
      v10 = [v0 layer];
      v11 = *&v0[v3];
      [v10 setCornerCurve_];
    }
  }
}

uint64_t (*ShineView.cornerCurve.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7F3647C;
}

uint64_t sub_1D7F36494(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_1D7F364D8()
{
  if (qword_1EDBB39D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  byte_1EDBB34F0 = byte_1EDBB39E0;
}

id sub_1D7F36554()
{
  v1 = OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ShineMotionLayer(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D7F365C8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions];
  if (!v2 || (v3 = *&v0[OBJC_IVAR____TtC5TeaUI9ShineView_shineImageRequest]) == 0)
  {
    v7 = sub_1D7F36554();
    v8 = qword_1EDBBBE88;
    swift_beginAccess();
    *&v7[v8] = 0x8000000000000000;

    v9 = *&v1[OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer];
    sub_1D7F37A20(0, 2);

    return;
  }

  v4 = *(v2 + 32);
  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v10 = *(v2 + 40);

    sub_1D7F3874C(v4, v10, sub_1D7F38714);
    v11.n128_u64[0] = v6;
    v12.n128_u64[0] = v5;
    sub_1D7FA1B74(v11, v12);
    v14 = v13;
    v15.n128_u64[0] = v6;
    v16.n128_u64[0] = v5;
    sub_1D7FA1B74(v15, v16);
    v5 = v17;
    sub_1D7F3874C(v4, v10, sub_1D7F387B0);
    v6 = v14;
  }

  else
  {
  }

  v18 = *(v2 + 56);
  [v1 bounds];
  if (v18 != 6)
  {
    v22 = v19;
    v23 = v20;
    v24 = *(v3 + 64);
    v25 = *(v3 + 72);
    v26 = swift_allocObject();
    v27 = swift_allocObject();
    v28.n128_u64[0] = v6;
    v29.n128_u64[0] = v5;
    v30.n128_u64[0] = v22;
    v31.n128_u64[0] = v23;
    v32.n128_u64[0] = v24;
    v33.n128_u64[0] = v25;
    sub_1D80B238C(v28, v29, v30, v31, v32, v33);
    v40 = floor(v34.n128_f64[0]);
    if (v40 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v34.n128_u64[0] = v6;
      v35.n128_u64[0] = v5;
      v36.n128_u64[0] = v22;
      v37.n128_u64[0] = v23;
      v38.n128_u64[0] = v24;
      v39.n128_u64[0] = v25;
      sub_1D80B238C(v34, v35, v36, v37, v38, v39);
      v42 = floor(v41);
      if (v42 >= 0.0)
      {
        *(v27 + 16) = -v40;
        *(v27 + 24) = v40;
        *(v27 + 32) = -v42;
        *(v27 + 40) = v42;
        *(v27 + 48) = 0;
        *(v27 + 56) = 3;
        v21 = v26 | 0x6000000000000000;
        *(v26 + 16) = v27;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v21 = 0x8000000000000000;
LABEL_12:
  v43 = sub_1D7F36554();
  v44 = qword_1EDBBBE90;
  swift_beginAccess();
  v45 = *&v43[v44];
  v46 = v45;

  if (v45)
  {
    sub_1D7F8CBBC(*(v2 + 80));
  }

  v47 = OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer;
  v48 = *&v1[OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer];
  v49 = qword_1EDBBBE88;
  swift_beginAccess();
  *&v48[v49] = v21;
  v50 = v48;

  v51 = *&v1[v47];

  v52 = v51;
  sub_1D7F37A20(v21, 1);
}

double sub_1D7F36928(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5TeaUI9ShineView_shineImageRequest) = a1;

  if (qword_1EDBB34E8 != -1)
  {
    swift_once();
  }

  if (byte_1EDBB34F0 == 1)
  {
    sub_1D7F365C8();
  }

  return result;
}

void sub_1D7F369C4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDBB34E8 != -1)
  {
    swift_once();
  }

  if (byte_1EDBB34F0 == 1)
  {
    v4 = sub_1D7F36554();
    v5 = qword_1EDBBBE90;
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = v6;

    if (v6)
    {

      sub_1D7F8CAF8(v8);
    }

    v9 = *(v2 + OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions);
    if (a1)
    {
      if (v9)
      {
        v10 = *(a1 + 16) == *(v9 + 16) && *(a1 + 24) == *(v9 + 24);
        if (!v10 && (sub_1D8192634() & 1) == 0)
        {

          sub_1D7F365C8();
        }

        return;
      }
    }

    else if (!v9)
    {
      return;
    }

    sub_1D7F365C8();
  }
}

double sub_1D7F36B00(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions);
  *(v1 + OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions) = a1;

  sub_1D7F369C4(v2);

  return result;
}

id ShineView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *ShineView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners) = 0;
  v2 = *MEMORY[0x1E69796E0];
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve) = *MEMORY[0x1E69796E0];
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI9ShineView_identifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC5TeaUI9ShineView_imageView;
  v5 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v6 = v2;
  *(v0 + v4) = [v5 initWithFrame_];
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_shineImageRequest) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions) = 0;
  v7 = OUTLINED_FUNCTION_80();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  [v10 setClipsToBounds_];
  [v10 addSubview_];
  if (qword_1EDBB34E8 != -1)
  {
    OUTLINED_FUNCTION_0_43(&qword_1EDBB34E8);
  }

  OUTLINED_FUNCTION_7_19();
  v11 = v10;
  if (v12 == 1)
  {
    v11 = sub_1D7F36554();
    sub_1D7F36FD8(v11);
  }

  return v10;
}

id ShineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ShineView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_maskedCorners) = 0;
  v1 = *MEMORY[0x1E69796E0];
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_cornerCurve) = *MEMORY[0x1E69796E0];
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI9ShineView_identifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC5TeaUI9ShineView_imageView;
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v5 = v1;
  *(v0 + v3) = [v4 initWithFrame_];
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_shineImageRequest) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_shineOptions) = 0;
  sub_1D81923A4();
  __break(1u);
}

double sub_1D7F36EC0()
{

  return result;
}

void sub_1D7F36FD8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms;
  swift_beginAccess();
  v5 = a1;
  sub_1D7EE43D4();
  v6 = *(*&v2[v4] + 16);
  sub_1D7EE4600();
  v7 = *&v2[v4];
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = v5;
  *(v8 + 40) = &protocol witness table for MotionLayer<A>;
  *&v2[v4] = v7;
  swift_endAccess();
  v9 = [v2 layer];
  [v9 addSublayer_];
}

void ShineView.prepare(for:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI9ShineView_identifier];
  *v5 = v4;
  *(v5 + 1) = v3;
  sub_1D8190DB4();

  sub_1D7F36928(0);

  [*&v1[OBJC_IVAR____TtC5TeaUI9ShineView_imageView] setImage_];
  if (qword_1EDBB34E8 != -1)
  {
    OUTLINED_FUNCTION_0_43(&qword_1EDBB34E8);
  }

  OUTLINED_FUNCTION_7_19();
  if (v7)
  {
    v8 = sub_1D7F36554();
    v9 = qword_1EDBBBE90;
    OUTLINED_FUNCTION_10(&v8[qword_1EDBBBE90], v10);
    v11 = *&v8[v9];
    v12 = v11;

    if (v11)
    {
      sub_1D7F8CB18(0);
    }
  }

  else if (*(a1 + 120) - 1 >= 2)
  {
    v13 = *(a1 + 40);

    [v1 setBackgroundColor_];
  }
}

void ShineView.apply(shineImage:for:)(uint64_t a1, double *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC5TeaUI9ShineView_identifier + 8];
  if (v4)
  {
    v5 = v2;
    v7 = *&v2[OBJC_IVAR____TtC5TeaUI9ShineView_identifier] == *(a2 + 2) && v4 == *(a2 + 3);
    if (v7 || (sub_1D8192634() & 1) != 0)
    {

      sub_1D7F36928(v8);
      if (qword_1EDBB34E8 != -1)
      {
        OUTLINED_FUNCTION_0_43(&qword_1EDBB34E8);
      }

      OUTLINED_FUNCTION_7_19();
      v9 = *&v2[OBJC_IVAR____TtC5TeaUI9ShineView_imageView];
      if (v10)
      {
        [v9 setImage_];
        v11 = sub_1D7F36554();
        v12 = qword_1EDBBBE90;
        swift_beginAccess();
        v13 = *&v11[v12];
        v14 = v13;

        if (v13)
        {

          sub_1D7F8CB18(v15);
        }

        v16 = *&v5[OBJC_IVAR____TtC5TeaUI9ShineView____lazy_storage___shineMotionLayer];
        v17 = qword_1EDBBBE90;
        swift_beginAccess();
        v18 = *(v16 + v17);
        if (v18)
        {
          v19 = a2[10];
          v20 = a2[11];
          v21 = v18;
          sub_1D7F8CB9C(v19, v20);
        }
      }

      else
      {
        [v9 setImage_];

        [v2 setBackgroundColor_];
      }
    }
  }
}

Swift::Void __swiftcall ShineView.reset()()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI9ShineView_identifier);
  *v1 = 0;
  v1[1] = 0;

  [*(v0 + OBJC_IVAR____TtC5TeaUI9ShineView_imageView) setImage_];
  if (qword_1EDBB34E8 != -1)
  {
    OUTLINED_FUNCTION_0_43(&qword_1EDBB34E8);
  }

  OUTLINED_FUNCTION_7_19();
  if (v2 == 1)
  {
    v3 = sub_1D7F36554();
    v4 = qword_1EDBBBE90;
    OUTLINED_FUNCTION_10(&v3[qword_1EDBBBE90], v5);
    v6 = *&v3[v4];
    v7 = v6;

    if (v6)
    {
      sub_1D7F8CB18(0);
    }

    sub_1D7F36928(0);
  }
}

Swift::Void __swiftcall ShineView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D7F38604;
  *(v5 + 24) = v4;
  v8[4] = sub_1D7E74D6C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D7E74D74;
  v8[3] = &block_descriptor_10;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_1D7F375E8(char *a1, objc_class *a2)
{
  v4.receiver = a1;
  v4.super_class = a2;
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v3 = *&a1[OBJC_IVAR____TtC5TeaUI9ShineView_imageView];
  [a1 bounds];
  [v3 setFrame_];
  if (qword_1EDBB34E8 != -1)
  {
    swift_once();
  }

  if (byte_1EDBB34F0 == 1)
  {
    sub_1D7F365C8();
  }
}

id sub_1D7F376E4()
{
  v0 = [objc_allocWithZone(type metadata accessor for ShineImageLayer()) init];

  return sub_1D7F37720(v0);
}

id sub_1D7F37720(void *a1)
{
  *&v1[qword_1EDBBBE88] = 0x8000000000000000;
  v3 = &v1[qword_1EDBBBE80];
  *v3 = 0;
  v3[8] = 2;
  v1[qword_1EDBBBE98] = 1;
  v1[qword_1EDBBBEA0] = 1;
  v4 = qword_1EDBBBE90;
  *&v1[qword_1EDBBBE90] = 0;
  swift_beginAccess();
  *&v1[v4] = a1;
  sub_1D7F386BC(0);
  v11.receiver = v1;
  v11.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v6;
  v9 = v7;
  [v9 addSublayer_];
  [v8 setDelegate_];

  swift_unknownObjectRelease();
  return v9;
}

void *sub_1D7F37884(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D8192614();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void *sub_1D7F3790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return sub_1D7F37884(v4);
}

double sub_1D7F37A20(uint64_t a1, char a2)
{
  v5 = v2 + qword_1EDBBBE80;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  LOBYTE(a1) = *(v5 + 8);
  *(v5 + 8) = a2;
  sub_1D7F387E8(v6, a1);
  sub_1D7F38800(v6, a1);
  sub_1D7F37AC0(v6, a1);
  return sub_1D7F38800(v6, a1);
}

void sub_1D7F37AC0(uint64_t a1, char a2)
{
  v27 = a1;
  v28 = a2;
  v3 = &v2[qword_1EDBBBE80];
  swift_beginAccess();
  v4 = v3[8];
  v25 = *v3;
  v26 = v4;
  sub_1D7F387E8(v25, v4);
  v5 = static MotionDisabledTransform.== infix(_:_:)(&v27, &v25);
  sub_1D7F38800(v25, v26);
  if ((v5 & 1) == 0)
  {
    v6 = qword_1EDBBBE98;
    swift_beginAccess();
    if ((v2[v6] & 1) == 0 || (v7 = qword_1EDBBBEA0, swift_beginAccess(), (v2[v7] & 1) == 0))
    {
      v8 = qword_1EDBBBE90;
      swift_beginAccess();
      v9 = *&v2[v8];
      if (v9)
      {
        v10 = v9;
        [v2 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = *v3;
        v20 = v3[8];
        sub_1D7F387E8(v19, v20);
        v21.n128_u64[0] = v12;
        v22.n128_u64[0] = v14;
        v23.n128_u64[0] = v16;
        v24.n128_u64[0] = v18;
        sub_1D7F37C40(v10, v19, v20, v21, v22, v23, v24);

        sub_1D7F38800(v19, v20);
      }
    }
  }
}

void sub_1D7F37C40(void *a1, uint64_t a2, char a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v9 = a7.n128_f64[0];
      v10 = a6.n128_f64[0];
      v11 = a5.n128_f64[0];
      v12 = a4.n128_f64[0];
      if (qword_1EDBB1D18 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDBB1D20;

      sub_1D7F37D74(v12, v11, v10, v9, v13, a1, a2);
    }

    else
    {
      memcpy(&v14, MEMORY[0x1E69792E8], sizeof(v14));
      [a1 setTransform_];
    }
  }

  else
  {
    CATransform3DMakeScale(&v14, *&a2, *&a2, 1.0);
    [a1 setTransform_];
  }
}

void sub_1D7F37D74(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, uint64_t a7)
{
  v161[1] = a7;
  sub_1D80E7FBC(v161);
  switch(v161[0] >> 61)
  {
    case 1:
      v151 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v154 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v55 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v56 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v147 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v149 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v57 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v58 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      v167.origin.x = a1;
      v167.origin.y = a2;
      v167.size.width = a3;
      v167.size.height = a4;
      Width = CGRectGetWidth(v167);
      v60 = 1.0;
      switch(v58)
      {
        case 1:
        case 2:
          v168.origin.x = a1;
          v168.origin.y = a2;
          v168.size.width = a3;
          v168.size.height = a4;
          v61 = v56 - v55 + CGRectGetWidth(v168);
          v169.origin.x = a1;
          v169.origin.y = a2;
          v169.size.width = a3;
          v169.size.height = a4;
          v60 = v61 / CGRectGetWidth(v169);
          goto LABEL_18;
        case 3:
        case 4:
LABEL_18:
          if (v151 / Width > v60)
          {
            v62 = v151 / Width;
          }

          else
          {
            v62 = v60;
          }

          v170.origin.x = a1;
          v170.origin.y = a2;
          v170.size.width = a3;
          v170.size.height = a4;
          Height = CGRectGetHeight(v170);
          v72 = 1.0;
          if ((v58 - 3) >= 2)
          {
            v152 = v62;
            v73 = v147;
            if (v58 == 1)
            {
              v73 = v55;
            }

            v146 = v73;
            if (v58 == 1)
            {
              v74 = v56;
            }

            else
            {
              v74 = v149;
            }

            v171.origin.x = a1;
            v171.origin.y = a2;
            v171.size.width = a3;
            v171.size.height = a4;
            v75 = CGRectGetHeight(v171) + v74 - v146;
            v172.origin.x = a1;
            v172.origin.y = a2;
            v172.size.width = a3;
            v172.size.height = a4;
            v72 = v75 / CGRectGetHeight(v172);
            v62 = v152;
          }

          if (v154 / Height > v72)
          {
            v76 = v154 / Height;
          }

          else
          {
            v76 = v72;
          }

          *&__dst.m11 = a7;
          v77 = sub_1D80E8220(v63, v64, v65, v66, v67, v68, v69, v70);
          v86 = MotionData.xTranslate(to:inverted:)(v77 & 1, v55, v56);
          switch(v58)
          {
            case 2:
            case 3:
              goto LABEL_61;
            default:
              goto LABEL_62;
          }

        case 5:
          if (v151 / Width > v57)
          {
            v133 = v151 / Width;
          }

          else
          {
            v133 = v57;
          }

          v186.origin.x = a1;
          v186.origin.y = a2;
          v186.size.width = a3;
          v186.size.height = a4;
          v142 = v154 / CGRectGetHeight(v186);
          if (v142 > v57)
          {
            v76 = v142;
          }

          else
          {
            v76 = v57;
          }

          v62 = v133;
          *&__dst.m11 = a7;
          v143 = sub_1D80E8220(v134, v135, v136, v137, v138, v139, v140, v141);
          v86 = MotionData.xTranslate(to:inverted:)(v143 & 1, v55, v56);
LABEL_61:
          v55 = v147;
          v56 = v149;
          break;
        default:
          v181.origin.x = a1;
          v181.origin.y = a2;
          v181.size.width = a3;
          v181.size.height = a4;
          v115 = CGRectGetHeight(v181);
          v182.origin.x = a1;
          v182.origin.y = a2;
          v182.size.width = a3;
          v182.size.height = a4;
          v116 = CGRectGetWidth(v182) * v55;
          v183.origin.x = a1;
          v183.origin.y = a2;
          v183.size.width = a3;
          v183.size.height = a4;
          v125 = (v116 - CGRectGetWidth(v183)) * 0.5;
          if (v125 < 0.0)
          {
            goto LABEL_67;
          }

          v126 = v154 / v115;
          if (v154 / v115 <= v55)
          {
            v126 = v55;
          }

          v156 = v126;
          if (v151 / Width > v55)
          {
            v62 = v151 / Width;
          }

          else
          {
            v62 = v55;
          }

          *&__dst.m11 = a7;
          v127 = sub_1D80E8220(v117, v118, v119, v120, v121, v122, v123, v124);
          v86 = MotionData.xTranslate(to:inverted:)(v127 & 1, -v125, v125);
          v184.origin.x = a1;
          v184.origin.y = a2;
          v184.size.width = a3;
          v184.size.height = a4;
          v128 = CGRectGetHeight(v184) * v55;
          v185.origin.x = a1;
          v185.origin.y = a2;
          v185.size.width = a3;
          v185.size.height = a4;
          v129 = v128 - CGRectGetHeight(v185);
          v56 = v129 * 0.5;
          if (v129 * 0.5 < 0.0)
          {
            goto LABEL_70;
          }

          v55 = -(v129 * 0.5);
          v76 = v156;
          break;
      }

LABEL_62:
      *&__dst.m11 = a7;
      v144 = sub_1D80E8220(v78, v79, v80, v81, v82, v83, v84, v85);
      v145 = MotionData.yTranslate(to:inverted:)(v144 & 1, v55, v56);
      CATransform3DMakeScale(&__dst, v62, v76, 1.0);
      CATransform3DMakeTranslation(&b, v86, v145, 1.0);
      memcpy(&a, &__dst, sizeof(a));
      CATransform3DConcat(&v157, &a, &b);
      [a6 setTransform_];
      goto LABEL_63;
    case 2:
      v40 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v42 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      switch(*((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x38))
      {
        case 1:
        case 4:
          v54 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          *&__dst.m11 = a7;
          v87 = sub_1D80E8220(v13, v14, v15, v16, v17, v18, v19, v20);
          v53 = MotionData.xTranslate(to:inverted:)(v87 & 1, v40, v54);
          goto LABEL_36;
        case 2:
        case 3:
        case 5:
          v43 = *((v161[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          *&__dst.m11 = a7;
          v44 = sub_1D80E8220(v13, v14, v15, v16, v17, v18, v19, v20);
          v53 = MotionData.xTranslate(to:inverted:)(v44 & 1, v40, v43);
          v40 = v41;
          v54 = v42;
          goto LABEL_36;
        default:
          v173.origin.x = a1;
          v173.origin.y = a2;
          v173.size.width = a3;
          v173.size.height = a4;
          v88 = CGRectGetWidth(v173) * v40;
          v174.origin.x = a1;
          v174.origin.y = a2;
          v174.size.width = a3;
          v174.size.height = a4;
          v97 = (v88 - CGRectGetWidth(v174)) * 0.5;
          if (v97 < 0.0)
          {
            __break(1u);
            goto LABEL_66;
          }

          *&__dst.m11 = a7;
          v98 = sub_1D80E8220(v89, v90, v91, v92, v93, v94, v95, v96);
          v53 = MotionData.xTranslate(to:inverted:)(v98 & 1, -v97, v97);
          v175.origin.x = a1;
          v175.origin.y = a2;
          v175.size.width = a3;
          v175.size.height = a4;
          v99 = CGRectGetHeight(v175) * v40;
          v176.origin.x = a1;
          v176.origin.y = a2;
          v176.size.width = a3;
          v176.size.height = a4;
          v100 = v99 - CGRectGetHeight(v176);
          v54 = v100 * 0.5;
          if (v100 * 0.5 < 0.0)
          {
            goto LABEL_68;
          }

          v40 = -(v100 * 0.5);
LABEL_36:
          *&__dst.m11 = a7;
          v101 = sub_1D80E8220(v45, v46, v47, v48, v49, v50, v51, v52);
          [a6 setShadowOffset_];
          break;
      }

      goto LABEL_37;
    case 3:
LABEL_37:

      return;
    case 4:
      memcpy(&__dst, MEMORY[0x1E69792E8], sizeof(__dst));
      [a6 setTransform_];
      return;
    default:
      v21 = *(v161[0] + 16);
      v22 = *(v161[0] + 24);
      v150 = *(v161[0] + 32);
      v153 = *(v161[0] + 40);
      v23 = 1.0;
      v24 = *(v161[0] + 56);
      switch(*(v161[0] + 56))
      {
        case 1:
        case 2:
          v163.origin.x = a1;
          v163.origin.y = a2;
          v163.size.width = a3;
          v163.size.height = a4;
          v25 = v22 - v21 + CGRectGetWidth(v163);
          v164.origin.x = a1;
          v164.origin.y = a2;
          v164.size.width = a3;
          v164.size.height = a4;
          v23 = v25 / CGRectGetWidth(v164);
          goto LABEL_4;
        case 3:
        case 4:
LABEL_4:
          v26 = 1.0;
          if ((v24 - 3) >= 2)
          {
            v148 = v23;
            if (v24 == 1)
            {
              v27 = v21;
            }

            else
            {
              v27 = v150;
            }

            if (v24 == 1)
            {
              v28 = v22;
            }

            else
            {
              v28 = v153;
            }

            v165.origin.x = a1;
            v165.origin.y = a2;
            v165.size.width = a3;
            v165.size.height = a4;
            v29 = CGRectGetHeight(v165) + v28 - v27;
            v166.origin.x = a1;
            v166.origin.y = a2;
            v166.size.width = a3;
            v166.size.height = a4;
            v26 = v29 / CGRectGetHeight(v166);
            v23 = v148;
          }

          *&__dst.m11 = a7;
          v30 = sub_1D80E8220(v13, v14, v15, v16, v17, v18, v19, v20);
          v39 = MotionData.xTranslate(to:inverted:)(v30 & 1, v21, v22);
          switch(v24)
          {
            case 2:
            case 3:
              goto LABEL_52;
            default:
              goto LABEL_53;
          }

          goto LABEL_53;
        case 5:
          v23 = *(v161[0] + 48);
          *&__dst.m11 = a7;
          v130 = sub_1D80E8220(v13, v14, v15, v16, v17, v18, v19, v20);
          v39 = MotionData.xTranslate(to:inverted:)(v130 & 1, v21, v22);
          v26 = v23;
LABEL_52:
          v21 = v150;
          v22 = v153;
          goto LABEL_53;
        default:
          v177.origin.x = a1;
          v177.origin.y = a2;
          v177.size.width = a3;
          v177.size.height = a4;
          v102 = CGRectGetWidth(v177) * v21;
          v178.origin.x = a1;
          v178.origin.y = a2;
          v178.size.width = a3;
          v178.size.height = a4;
          v111 = (v102 - CGRectGetWidth(v178)) * 0.5;
          if (v111 < 0.0)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          *&__dst.m11 = a7;
          v112 = sub_1D80E8220(v103, v104, v105, v106, v107, v108, v109, v110);
          v155 = MotionData.xTranslate(to:inverted:)(v112 & 1, -v111, v111);
          v179.origin.x = a1;
          v179.origin.y = a2;
          v179.size.width = a3;
          v179.size.height = a4;
          v113 = CGRectGetHeight(v179) * v21;
          v180.origin.x = a1;
          v180.origin.y = a2;
          v180.size.width = a3;
          v180.size.height = a4;
          v114 = v113 - CGRectGetHeight(v180);
          v22 = v114 * 0.5;
          if (v114 * 0.5 < 0.0)
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            return;
          }

          v23 = v21;
          v26 = v21;
          v21 = -(v114 * 0.5);
          v39 = v155;
LABEL_53:
          *&__dst.m11 = a7;
          v131 = sub_1D80E8220(v31, v32, v33, v34, v35, v36, v37, v38);
          v132 = MotionData.yTranslate(to:inverted:)(v131 & 1, v21, v22);
          CATransform3DMakeScale(&__dst, v23, v26, 1.0);
          CATransform3DMakeTranslation(&b, v39, v132, 1.0);
          memcpy(&a, &__dst, sizeof(a));
          CATransform3DConcat(&v157, &a, &b);
          [a6 setTransform_];
LABEL_63:

          return;
      }
  }
}

uint64_t type metadata accessor for ShineMotionLayer(uint64_t a1)
{
  result = qword_1EDBBA760;
  if (!qword_1EDBBA760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7F386BC(uint64_t a1)
{
  if (!qword_1EDBBBDF8[0])
  {
    v2 = type metadata accessor for ShineImageLayer();
    v5 = type metadata accessor for MotionLayer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDBBBDF8);
    }
  }
}

unint64_t sub_1D7F38714(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7F3874C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if ((~result & 0xF000000000000007) != 0)
  {
    (a3)();

    return a3(a2);
  }

  return result;
}

double sub_1D7F387B0(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7F387E8(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

double sub_1D7F38800(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

double sub_1D7F38828@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB12D8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_1D8190DB4();
  return result;
}

uint64_t SegmentedControl.segments.setter(uint64_t a1)
{
  v3 = qword_1EDBB12D8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1D7F38914(v4);
}

uint64_t sub_1D7F38914(uint64_t a1)
{
  swift_beginAccess();
  sub_1D8190DB4();
  v1 = sub_1D8191494();

  if ((v1 & 1) == 0)
  {
    v3 = sub_1D8190DB4();
    sub_1D7F389F4(v3);
  }

  return result;
}

uint64_t sub_1D7F389F4(uint64_t a1)
{
  v65 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v64 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *((v3 & v2) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v49 - v8;
  v60 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v53 = sub_1D8191E84();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v49 - v15;
  sub_1D7F3A640(v1, &v49 - v15);
  v16 = qword_1EDBB12E8;
  swift_beginAccess();
  v66 = v1;
  v54 = v16;
  v17 = *&v1[v16];
  v18 = sub_1D7E36AB8(v17);
  v19 = (v17 & 0xC000000000000001);
  v20 = (v17 & 0xFFFFFFFFFFFFFF8);
  sub_1D8190DB4();
  i = 0;
  v22 = &selRef_attemptTransitionToState_animated_;
  while (v18 != i)
  {
    if (v19)
    {
      v23 = MEMORY[0x1DA714420](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v23 = *(v17 + 8 * i + 32);
    }

    v24 = v23;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v47 = MEMORY[0x1DA714420](v22, v17);
      goto LABEL_22;
    }

    [v23 removeFromSuperview];

    ++i;
  }

  v19 = &v49;
  v67 = v65;
  MEMORY[0x1EEE9AC00](v25);
  v26 = *(v64 + 88);
  *(&v49 - 2) = v4;
  *(&v49 - 1) = v26;
  v56 = v26;
  v27 = sub_1D8191484();
  v28 = type metadata accessor for SegmentedControlButton();
  WitnessTable = swift_getWitnessTable();
  v17 = 0;
  v31 = sub_1D7E6CDC0(sub_1D7F3AC80, (&v49 - 4), v27, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);
  v32 = v66;
  v33 = v54;
  *&v66[v54] = v31;

  v22 = *&v32[v33];
  v34 = sub_1D7E36AB8(v22);
  v63 = v22;
  v64 = v34;
  v57 = v22 & 0xFFFFFFFFFFFFFF8;
  v58 = v22 & 0xC000000000000001;
  v55 = v5 + 16;
  v61 = (v5 + 32);
  v62 = (v5 + 8);
  sub_1D8190DB4();
  for (i = 0; v64 != i; ++i)
  {
    if (v58)
    {
      v35 = MEMORY[0x1DA714420](i, v63);
    }

    else
    {
      if (i >= *(v57 + 16))
      {
        goto LABEL_28;
      }

      v35 = *(v63 + 8 * i + 32);
    }

    v36 = v35;
    if (__OFADD__(i, 1))
    {
      goto LABEL_27;
    }

    sub_1D81914C4();
    v19 = *&v36[OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v59;
    (*(v5 + 16))(v59, v12, v4);
    v38 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v20 = swift_allocObject();
    v39 = v56;
    v20[2] = v4;
    v20[3] = v39;
    v20[4] = v37;
    v40 = v20 + v38;
    v32 = v66;
    (*(v5 + 32))(v40, v17, v4);
    v22 = v19;

    [v32 addSubview_];

    (*(v5 + 8))(v12, v4);
  }

  v12 = v52;
  v41 = v50;
  i = v51;
  v20 = v53;
  (*(v52 + 2))(v50, v51, v53);
  if (__swift_getEnumTagSinglePayload(v41, 1, v4) == 1)
  {
    v42 = *(v12 + 1);
    v42(i, v20);
    return (v42)(v41, v20);
  }

  v19 = v49;
  (*v61)(v49, v41, v4);
  v44 = sub_1D7F39ECC(v19);
  if ((v45 & 1) == 0)
  {
    v22 = v44;
    v46 = v54;
    swift_beginAccess();
    v17 = *&v32[v46];
    sub_1D7E33DD8(v22, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    v47 = *(v17 + 8 * v22 + 32);
LABEL_22:
    v48 = v47;
    swift_endAccess();
    [v48 setSelected_];
  }

  (*v62)(v19, v4);
  return (*(v12 + 1))(i, v20);
}

void (*SegmentedControl.segments.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = qword_1EDBB12D8;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBB12D8, v3);
  v3[3] = *(v1 + v4);
  sub_1D8190DB4();
  return sub_1D7F39134;
}

void sub_1D7F39134(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    v4 = sub_1D8190DB4();
    SegmentedControl.segments.setter(v4);
  }

  else
  {
    SegmentedControl.segments.setter(v3);
  }

  free(v2);
}

double sub_1D7F391A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_4(v1 + *a1, v3);
  sub_1D8190DB4();
  return result;
}

void SegmentedControl.selectedSegment.getter(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v19 = sub_1D8191484();
  WitnessTable = swift_getWitnessTable();
  sub_1D818F0F4();
  OUTLINED_FUNCTION_2();
  v17 = v3;
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &WitnessTable - v4;
  v6 = qword_1EDBB12E8;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBB12E8, v25);
  v7 = *(v1 + v6);
  v8 = sub_1D7E36AB8(v7);
  sub_1D8190DB4();
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      __swift_storeEnumTagSinglePayload(v21, 1, 1, v20);
      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA714420](v9, v7);
      goto LABEL_6;
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(v7 + 8 * v9 + 32);
LABEL_6:
    v11 = v10;
    v12 = [v10 isSelected];

    if (v12)
    {

      v14 = qword_1EDBB12D8;
      OUTLINED_FUNCTION_8_4(v1 + qword_1EDBB12D8, v24);
      v23 = *(v1 + v14);
      sub_1D8191734();
      v22 = v9;
      v15 = v18;
      sub_1D818F104();
      (*(v17 + 8))(v5, v15);
      return;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1D7F3941C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = (*a1 + qword_1EDBB12E0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1D7F3AC30;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_1D7E19F24(v6, v7);
}

uint64_t sub_1D7F394D0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1D7F3ABF8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + qword_1EDBB12E0);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v8;
  sub_1D7E19F24(v5, v6);
  return sub_1D7E0E10C(v11, v12);
}

uint64_t SegmentedControl.onChange.getter()
{
  v1 = (v0 + qword_1EDBB12E0);
  OUTLINED_FUNCTION_8_4(v0 + qword_1EDBB12E0, v4);
  v2 = *v1;
  sub_1D7E19F24(*v1, v1[1]);
  return v2;
}

uint64_t SegmentedControl.onChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EDBB12E0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1D7E0E10C(v6, v7);
}

id SegmentedControl.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedControl.init(coder:)()
{
  v1 = qword_1EDBB12D8;
  *(v0 + v1) = sub_1D81913C4();
  *(v0 + qword_1EDBB12E8) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + qword_1EDBB12E0);
  *v2 = 0;
  v2[1] = 0;
  v3 = qword_1EDBB12F0;
  sub_1D7EF8224(0);
  sub_1D7EF82C4();
  *(v0 + v3) = sub_1D8190D94();
  sub_1D81923A4();
  __break(1u);
}

id SegmentedControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentedControl.init()()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB12D8;
  *&v0[v2] = sub_1D81913C4();
  *&v0[qword_1EDBB12E8] = MEMORY[0x1E69E7CC0];
  v3 = &v0[qword_1EDBB12E0];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = qword_1EDBB12F0;
  sub_1D7EF8224(0);
  sub_1D7EF82C4();
  *&v0[v4] = sub_1D8190D94();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

CGSize __swiftcall SegmentedControl.sizeThatFits(_:)(CGSize a1)
{
  v2 = qword_1EDBB12E8;
  OUTLINED_FUNCTION_8_4(v1 + qword_1EDBB12E8, v15);
  v3 = *(v1 + v2);
  v4 = sub_1D7E36AB8(v3);
  sub_1D8190DB4();
  v7 = 0;
  v8 = 0.0;
  v9 = 0.0;
  while (1)
  {
    if (v4 == v7)
    {

      v5 = v9;
      v6 = v8;
      goto LABEL_16;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA714420](v7, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v10 = *(v3 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    [v10 frame];
    MaxX = CGRectGetMaxX(v16);
    if (MaxX > v9)
    {
      v9 = MaxX;
    }

    [v11 frame];
    MaxY = CGRectGetMaxY(v17);

    if (MaxY > v8)
    {
      v8 = MaxY;
    }

    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result.height = v6;
  result.width = v5;
  return result;
}

double sub_1D7F39A80(void *a1)
{
  v1 = a1;
  *&v4 = *&SegmentedControl.sizeThatFits(_:)(__PAIR128__(v3, v2));

  return v4;
}

void SegmentedControl.set(selected:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1D7F3AA58(0);
  OUTLINED_FUNCTION_2();
  v40 = v7;
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v5 & v4) + 0x50);
  v11 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v42 = a1;
  v17 = sub_1D818EF94();
  v19 = v18;
  SegmentedControl.selectedSegment.getter(v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
  {
    (*(v13 + 8))(v16, v11);

LABEL_3:
    v20 = sub_1D7F39ECC(v42);
    if ((v21 & 1) == 0)
    {
      v22 = v20;
      v23 = qword_1EDBB12E8;
      OUTLINED_FUNCTION_8_4(v2 + qword_1EDBB12E8, v46);
      v43[0] = *(v2 + v23);
      sub_1D7F3AAEC(0);
      sub_1D7F3AB44(&qword_1EDBAE5E8, sub_1D7F3AAEC, MEMORY[0x1E69E6340]);
      sub_1D8191734();
      v44 = v22;
      v24 = v41;
      sub_1D818F104();
      (*(v40 + 8))(v9, v24);
      v25 = v45;
      if (v45)
      {
        v26 = *(v2 + v23);
        v27 = sub_1D7E36AB8(v26);
        sub_1D8190DB4();
        for (i = 0; v27 != i; ++i)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x1DA714420](i, v26);
          }

          else
          {
            if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v29 = *(v26 + 8 * i + 32);
          }

          v30 = v29;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            return;
          }

          [v29 setSelected_];
        }

        v36 = v2 + qword_1EDBB12E0;
        OUTLINED_FUNCTION_8_4(v2 + qword_1EDBB12E0, v43);
        v37 = *v36;
        if (*v36)
        {
          v38 = *(v36 + 1);

          v37(v42, v25);
          sub_1D7E0E10C(v37, v38);
        }
      }
    }

    return;
  }

  v31 = sub_1D818EF94();
  v33 = v32;
  (*(*(v10 - 8) + 8))(v16, v10);
  if (v17 == v31 && v19 == v33)
  {

    return;
  }

  v35 = sub_1D8192634();

  if ((v35 & 1) == 0)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1D7F39ECC(uint64_t a1)
{
  swift_beginAccess();
  sub_1D8191484();
  sub_1D8190DB4();
  swift_getWitnessTable();
  sub_1D81917D4();

  return v2;
}

Swift::Void __swiftcall SegmentedControl.set(fontAttributes:for:)(Swift::OpaquePointer fontAttributes, TeaUI::SegmentedControlState a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v52 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_2();
  i = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v58 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  v21 = *v4;
  v22 = qword_1EDBB12F0;
  swift_beginAccess();
  sub_1D8190DB4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = *(v3 + v22);
  rawValue = fontAttributes._rawValue;
  sub_1D7EF6290(fontAttributes._rawValue, v21, isUniquelyReferenced_nonNull_native, v24, v25, v26, v27, v28, v50[0], v21);
  *(v3 + v22) = v61[0];
  swift_endAccess();
  v29 = qword_1EDBB12D8;
  OUTLINED_FUNCTION_8_4(v3 + qword_1EDBB12D8, v61);
  v56 = v3;
  v62 = *(v3 + v29);
  v30 = sub_1D8191484();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA7133A0](v60, v30, WitnessTable);
  v60[3] = v60[0];
  sub_1D81923F4();
  sub_1D81923C4();
  v55 = qword_1EDBB12E8;
  v57 = sub_1D81923E4();
  v32 = (v15 + 32);
  v54 = (i + 32);
  v50[0] = i + 8;
  for (i = TupleTypeMetadata2; ; TupleTypeMetadata2 = i)
  {
    v33 = v58;
    sub_1D81923D4();
    (*v32)(v20, v33, v59);
    if (__swift_getEnumTagSinglePayload(v20, 1, TupleTypeMetadata2) == 1)
    {

      return;
    }

    v34 = *v20;
    (*v54)(v12, &v20[*(TupleTypeMetadata2 + 48)], v8);
    v36 = v55;
    v35 = v56;
    swift_beginAccess();
    v37 = *(v35 + v36);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1DA714420](v34);
      goto LABEL_7;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    v38 = *(v37 + 8 * v34 + 32);
LABEL_7:
    v39 = v38;
    swift_endAccess();
    v40 = qword_1D81A5DE8[v50[1]];
    v41 = (*(*(v52 + 88) + 24))(v8);
    v43 = v42;
    v44 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v45 = v12;
    v46 = v8;
    v47 = rawValue;
    sub_1D8190DB4();
    v48 = v47;
    v8 = v46;
    v12 = v45;
    v49 = sub_1D7F3A980(v41, v43, v48);
    [v39 setAttributedTitle:v49 forState:v40];

    (*v50[0])(v45, v8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id SegmentedControl.button(for:)(uint64_t a1)
{
  v2 = sub_1D7F39ECC(a1);
  if (v3)
  {
    return 0;
  }

  v5 = v2;
  v6 = qword_1EDBB12E8;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_1D7E33DD8(v5, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA714420](v5, v7);
  }

  else
  {
    v8 = *(v7 + 8 * v5 + 32);
  }

  v4 = v8;
  swift_endAccess();
  return v4;
}

id SegmentedControl.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SegmentedControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F3A5D0(uint64_t a1)
{

  sub_1D7E0E10C(*(a1 + qword_1EDBB12E0), *(a1 + qword_1EDBB12E0 + 8));
}

void sub_1D7F3A640(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *a1;
  v4 = qword_1EDBB12E8;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = sub_1D7E36AB8(v5);
  sub_1D8190DB4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      goto LABEL_13;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v8 isSelected])
    {

      v10 = *(a1 + v4);
      sub_1D8190DB4();
      sub_1D80D0494(v9, v10);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        swift_beginAccess();
        v16 = *(v3 + 80);
        sub_1D81914C4();
        swift_endAccess();

        v14 = a2;
        v15 = 0;
        v13 = v16;
        goto LABEL_15;
      }

LABEL_13:
      v13 = *(v3 + 80);
      v14 = a2;
      v15 = 1;
LABEL_15:
      __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_1D7F3A81C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SegmentedControlButton();
  result = [swift_getObjCClassFromMetadata() buttonWithType_];
  *a1 = result;
  return result;
}

void sub_1D7F3A86C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SegmentedControl.set(selected:)(a2);
  }
}

uint64_t sub_1D7F3A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D818EF94();
  v6 = v5;
  if (v4 == sub_1D818EF94() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D8192634();
  }

  return v9 & 1;
}

id sub_1D7F3A980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8190EE4();

  if (a3)
  {
    type metadata accessor for Key();
    sub_1D7F3AB44(&qword_1EDBB30F0, type metadata accessor for Key, &unk_1D819F15C);
    v6 = sub_1D8190D44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

void sub_1D7F3AA58(uint64_t a1)
{
  if (!qword_1EDBB2058)
  {
    sub_1D7F3AAEC(255);
    sub_1D7F3AB44(&qword_1EDBAE5E8, sub_1D7F3AAEC, MEMORY[0x1E69E6340]);
    v1 = sub_1D818F0F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2058);
    }
  }
}

void sub_1D7F3AAEC(uint64_t a1)
{
  if (!qword_1EDBAE5F0)
  {
    type metadata accessor for SegmentedControlButton();
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE5F0);
    }
  }
}

uint64_t sub_1D7F3AB44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7F3ABF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t Collection<>.menu(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D81911C4();
  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1D7F3ADE4(void **a1, uint64_t a2)
{
  v2 = *a1;
  objc_opt_self();
  OUTLINED_FUNCTION_14();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 identifier];
    v7 = sub_1D8190F14();
    v9 = v8;
    if (v7 == sub_1D8190F14() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1D8192634();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL Collection<>.isMenuEmpty.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v20 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v7, v1, a1, v11);
  sub_1D8191134();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_1D8191EB4();
    v14 = v21;
    if (!v21)
    {
      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_14();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_14(), swift_dynamicCastObjCClass()))
    {

      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_14();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 children];
      sub_1D7F3B154();
      v17 = sub_1D8191314();

      if (v17 >> 62)
      {
        v18 = sub_1D81920A4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        break;
      }
    }

    else
    {
    }
  }

  (*(v20 + 8))(v13, AssociatedTypeWitness);
  return v14 == 0;
}

unint64_t sub_1D7F3B154()
{
  result = qword_1EDBB3208;
  if (!qword_1EDBB3208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3208);
  }

  return result;
}

Swift::Void __swiftcall UITabBarController.setFloatingTabBarNeedsTabBarMinimizeBehaviorUpdate()()
{
  v1 = v0;
  v2 = sub_1D7F3B2C8(v0);
  v3 = v2;
  if (v2)
  {
    sub_1D809518C(v2, v13);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  sub_1D7F3B3C8(v13, v10);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1D7F3B4E0(v10);
  }

  v9 = [v1 bottomAccessory];
  if (v9)
  {

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  [v1 setTabBarMinimizeBehavior_];

  sub_1D7F3B4E0(v13);
}

id sub_1D7F3B2C8(void *a1)
{
  v2 = [a1 selectedViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 topViewController];

      return v5;
    }
  }

  v6 = [a1 selectedViewController];
  v7 = [v6 navigationController];

  v5 = [v7 topViewController];
  if (!v5)
  {
    return [a1 selectedViewController];
  }

  return v5;
}

uint64_t sub_1D7F3B3C8(uint64_t a1, uint64_t a2)
{
  sub_1D7F3B42C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7F3B42C(uint64_t a1)
{
  if (!qword_1EDBAECF0)
  {
    sub_1D7F3B484();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAECF0);
    }
  }
}

unint64_t sub_1D7F3B484()
{
  result = qword_1EDBAECF8[0];
  if (!qword_1EDBAECF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBAECF8);
  }

  return result;
}

uint64_t sub_1D7F3B4E0(uint64_t a1)
{
  sub_1D7F3B42C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareToolbarItemConfigurationFactory.__deallocating_deinit()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

void ShareToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
}

uint64_t ShareToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ShareToolbarItem.__deallocating_deinit()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F3B6AC(uint64_t a1)
{
  result = sub_1D7F3B758(&unk_1EDBBA9E0, &protocol conformance descriptor for ShareToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7F3B714(uint64_t a1)
{
  result = sub_1D7F3B758(qword_1EDBBA9F0, &protocol conformance descriptor for ShareToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7F3B758(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShareToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShineOptions.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t ShineOptions.sizer.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D7F3874C(v2, v3, sub_1D7F38714);
}

uint64_t ShineOptions.transform.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D7F3B8A8(v2, v3);
}

uint64_t sub_1D7F3B8A8(uint64_t result, unint64_t a2)
{
  if (result != 6)
  {
    sub_1D7F3B8EC(result);

    return sub_1D7F3B8EC(a2);
  }

  return result;
}

unint64_t sub_1D7F3B8EC(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t ShineOptions.__allocating_init(identifier:sizer:rotateDegrees:transform:blends:scale:)(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, double a6, double a7)
{
  v14 = swift_allocObject();
  ShineOptions.init(identifier:sizer:rotateDegrees:transform:blends:scale:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t ShineOptions.init(identifier:sizer:rotateDegrees:transform:blends:scale:)(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = *a3;
  *(v7 + 48) = a6 / 180.0 * 3.14159265;
  *(v7 + 56) = *a4;
  *(v7 + 72) = a5;
  *(v7 + 80) = a7;
  return v7;
}

void *ShineOptions.deinit()
{

  sub_1D7F3874C(*(v0 + 32), *(v0 + 40), sub_1D7F387B0);
  sub_1D7F3BA20(*(v0 + 56), *(v0 + 64));

  return v0;
}

double sub_1D7F3BA20(unint64_t result, unint64_t a2)
{
  if (result != 6)
  {
    sub_1D7F3BA64(result);

    return sub_1D7F3BA64(a2);
  }

  return v4;
}

double sub_1D7F3BA64(unint64_t a1)
{
  if (a1 >= 6)
  {
  }

  return result;
}

uint64_t ShineOptions.__deallocating_deinit()
{
  ShineOptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t static ShineOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

void ErrorView.errorPosition.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void ErrorView.errorPosition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

char *ErrorView.init(model:styler:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition] = 2;
  v7 = OBJC_IVAR____TtC5TeaUI9ErrorView_label;
  *&v3[v7] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v8 = OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView;
  *&v3[v8] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  v9 = OBJC_IVAR____TtC5TeaUI9ErrorView_keyboardObserver;
  type metadata accessor for KeyboardObserver();
  swift_allocObject();
  *&v3[v9] = KeyboardObserver.init()();
  v10 = &v3[OBJC_IVAR____TtC5TeaUI9ErrorView_model];
  v11 = a1[1];
  *v10 = *a1;
  *(v10 + 1) = v11;
  sub_1D7E0E768(a2, &v3[OBJC_IVAR____TtC5TeaUI9ErrorView_styler]);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = (*(v13 + 16))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  }

  else
  {
    v16 = 0;
  }

  *&v3[OBJC_IVAR____TtC5TeaUI9ErrorView_visualEffectView] = v16;
  v29.receiver = v3;
  v29.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v21 = v17;
  v22 = v20(v18, v19);
  [v21 setBackgroundColor_];

  if (*(v21 + OBJC_IVAR____TtC5TeaUI9ErrorView_visualEffectView))
  {
    [v21 addSubview_];
  }

  v23 = OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView;
  v24 = [*(v21 + OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView) topEdgeEffect];
  [v24 setHidden_];

  OUTLINED_FUNCTION_1_7([*(v21 + v23) bottomEdgeEffect]);
  OUTLINED_FUNCTION_1_7([*(v21 + v23) leftEdgeEffect]);

  OUTLINED_FUNCTION_1_7([*(v21 + v23) rightEdgeEffect]);
  [v21 addSubview_];
  v25 = OBJC_IVAR____TtC5TeaUI9ErrorView_label;
  [*(v21 + OBJC_IVAR____TtC5TeaUI9ErrorView_label) setNumberOfLines_];
  [*(v21 + v25) setTextAlignment_];
  [*(v21 + v25) setAutoresizingMask_];
  [*(v21 + v23) addSubview_];
  v26 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  KeyboardObserver.onWillShow(animationBlock:)(sub_1D7F3CBC4, v26);

  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  KeyboardObserver.onWillHide(animationBlock:)(sub_1D7F3CBCC, v27);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

void sub_1D7F3C084(uint64_t a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView];

  [v4 setContentInset_];
}

void sub_1D7F3C10C(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView];

  [v2 setContentInset_];
}

id ErrorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ErrorView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition) = 2;
  v2 = OBJC_IVAR____TtC5TeaUI9ErrorView_label;
  *(v1 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView;
  *(v1 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI9ErrorView_keyboardObserver;
  type metadata accessor for KeyboardObserver();
  swift_allocObject();
  *(v1 + v4) = KeyboardObserver.init()();
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall ErrorView.layoutSubviews()()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI9ErrorView_scrollView];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI9ErrorView_visualEffectView];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_2_13();
    [v4 setFrame_];
  }

  v5 = *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_label];
  v6 = *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_styler + 24];
  v7 = *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_styler], v6);
  v8 = (*(v7 + 32))(*&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_model], *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_model + 8], *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_model + 16], *&v1[OBJC_IVAR____TtC5TeaUI9ErrorView_model + 24], v6, v7);
  [v5 setAttributedText_];

  [v5 sizeToFit];
  sub_1D7F3C638();
  [v5 setPreferredMaxLayoutWidth_];
  LODWORD(v9) = 0.25;
  [v5 ts:v9 setHyphenationFactor:?];
  [v5 frame];
  v11 = v10;
  [v5 preferredMaxLayoutWidth];
  v13 = v12;
  [v5 intrinsicContentSize];
  v15 = v14;
  OUTLINED_FUNCTION_2_13();
  Width = CGRectGetWidth(v38);
  [v5 preferredMaxLayoutWidth];
  v39.origin.x = (Width - v17) * 0.5;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  v40 = CGRectIntegral(v39);
  x = v40.origin.x;
  v19 = v40.size.width;
  height = v40.size.height;
  v21 = OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition;
  swift_beginAccess();
  v22 = v1[v21];
  v23 = [v1 traitCollection];
  v24 = v23;
  switch(v22)
  {
    case 1:

      goto LABEL_12;
    case 2:
      v25 = [v23 horizontalSizeClass];

      if (v25 == 2)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3:
      v29 = [v23 horizontalSizeClass];

      if (v29 == 1)
      {
        [v1 safeAreaInsets];
        v31 = 36.0;
        if (v30 > 36.0)
        {
          v31 = v30;
        }
      }

      else
      {
LABEL_12:
        [v1 safeAreaInsets];
        v27 = v32;
        OUTLINED_FUNCTION_2_13();
        v28 = CGRectGetHeight(v42) / 3.0;
LABEL_13:
        if (v27 > v28)
        {
          v31 = v27;
        }

        else
        {
          v31 = v28;
        }
      }

      v33 = x;
      v34 = v19;
      v35 = height;
      v43 = CGRectIntegral(*(&v31 - 1));
      [v5 setFrame_];
      OUTLINED_FUNCTION_2_13();
      v36 = CGRectGetWidth(v44);
      [v5 frame];
      [v2 setContentSize_];
      return;
    default:

LABEL_6:
      [v1 safeAreaInsets];
      v27 = v26;
      OUTLINED_FUNCTION_2_13();
      v28 = CGRectGetHeight(v41) * 0.5 - height * 0.5;
      goto LABEL_13;
  }
}

void sub_1D7F3C638()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  if (v2 == 2)
  {
    [v0 bounds];
    CGRectGetWidth(v6);
    if ((v4 - 3) <= 1)
    {
      [v0 bounds];
      CGRectGetWidth(v7);
    }
  }

  else if (v2 == 1)
  {
    [v0 bounds];
    CGRectGetWidth(v5);
  }
}

id ErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ErrorView.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI9ErrorView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

uint64_t (*ErrorView.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = ErrorView.accessibilityLabel.getter();
  a1[1] = v2;
  return sub_1D7F3CB0C;
}

void BlueprintSection.copy(with:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  type metadata accessor for BlueprintItem(255, v6, v7, v8);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v9 = sub_1D818F394();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(v2 + 16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, v4, v15);
  (*(v11 + 16))(v14, v0 + *(v2 + 52), v9);
  BlueprintSection.init(descriptor:items:)(v19, v14, v15, v6, *(v2 + 32), v7, v22);
  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintSection.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_15(WitnessTable);
  return sub_1D818F314();
}

uint64_t BlueprintSection.prepend(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_15(WitnessTable);
  return sub_1D818F324();
}

uint64_t sub_1D7F3CEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  OUTLINED_FUNCTION_8_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_6_17(WitnessTable);
  return a3(a1, v7);
}

uint64_t BlueprintSection.removeSubrange<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  return sub_1D818F2A4();
}

Swift::Void __swiftcall BlueprintSection.removeAll()()
{
  OUTLINED_FUNCTION_15_8(v0, v1, v2, v3);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  sub_1D818F374();
}

Swift::Void __swiftcall BlueprintSection.remove(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_120();
  v5 = OUTLINED_FUNCTION_11_12(v1, v2, v3, v4);
  v6 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v17 - v15;
  BlueprintSection.subscript.getter();
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v8 + 8))(v11, v6);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v5);
    OUTLINED_FUNCTION_2_38();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0_44();
    swift_getWitnessTable();
    sub_1D81918C4();
    if (v18 != 1)
    {
      BlueprintSection.remove(at:)(v17);
    }

    (*(v13 + 8))(v16, v5);
  }

  OUTLINED_FUNCTION_100();
}

void BlueprintSection.remove(_:)()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_2_38();
  swift_getWitnessTable();
  type metadata accessor for BlueprintItem(255, *(v0 + 24), *(v0 + 40), v1);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_0();
  sub_1D81918C4();
  if (v3 != 1)
  {
    BlueprintSection.remove(at:)(at);
  }
}

uint64_t BlueprintSection.replace(_:with:)()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_11_12(v0, v1, v2, v3);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_17(WitnessTable);
  OUTLINED_FUNCTION_14_0();
  return sub_1D818F354();
}

void BlueprintSection.replaceModel(_:with:)()
{
  OUTLINED_FUNCTION_120();
  v28 = v1;
  v29 = v0;
  v27 = v2;
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v13 = type metadata accessor for BlueprintItem(0, v4, *(v11 + 40), v12);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_28_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - v22;
  v24 = *(v6 + 16);
  v24(v10, v27, v4, v21);
  BlueprintItem.init(model:)(v10, v4, v23);
  (v24)(v10, v28, v4);
  BlueprintItem.init(model:)(v10, v4, v19);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  sub_1D818F354();
  v25 = *(v15 + 8);
  v25(v19, v13);
  v25(v23, v13);
  OUTLINED_FUNCTION_100();
}

Swift::Bool __swiftcall BlueprintSection.contains(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_11_12(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_17(WitnessTable);
  OUTLINED_FUNCTION_14_0();
  return sub_1D818F364() & 1;
}

uint64_t sub_1D7F3D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11_12(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v7 = sub_1D818F394();
  return a4(a1, a2, v7);
}

void BlueprintSection.applyChanges<A>(_:modelConstructor:)()
{
  OUTLINED_FUNCTION_120();
  v22 = v1;
  v23 = v0;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v20 = v7;
  v21 = v8;
  v9 = *(v5 + 24);
  v10 = *(v5 + 40);
  type metadata accessor for BlueprintItem(255, v9, v10, v5);
  OUTLINED_FUNCTION_0_44();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_13();
  v11 = sub_1D818F394();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  v24 = *(v6 + 52);
  v17 = sub_1D818F2E4();
  v35 = v20;
  v36 = v17;
  v27 = *(v6 + 16);
  v28 = v9;
  v18 = *(v6 + 32);
  v29 = v4;
  v30 = v18;
  v31 = v10;
  v32 = v26;
  v33 = v21;
  v34 = v22;
  OUTLINED_FUNCTION_12_13();
  sub_1D8191484();
  sub_1D818F204();
  sub_1D8191484();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D8191904();
  sub_1D818F284();
  (*(v13 + 40))(v23 + v24, v16, v11);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F3D864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8(v5);
  return BlueprintItem.init(model:)(v7, a2, a3);
}

void BlueprintSection.mergeAndMatch<A>(list:creatingNewModelsWith:)()
{
  OUTLINED_FUNCTION_120();
  v78 = v0;
  v76 = v1;
  v3 = v2;
  v67 = v4;
  v68 = v5;
  v7 = v6;
  v58 = v8;
  v59 = *(v9 + 16);
  OUTLINED_FUNCTION_2();
  v57 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v56 = v13 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v66 = v16 - v15;
  v60 = v17;
  v69 = *(v17 + 40);
  v70 = v18;
  v19 = type metadata accessor for BlueprintItem(255, v18, v69, v17);
  v65 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  OUTLINED_FUNCTION_2();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_28_0();
  v64 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v63 = &v55 - v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v35;
  MEMORY[0x1EEE9AC00](v37);
  v74 = &v55 - v38;
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v79 = sub_1D818F394();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v77 = &v55 - v40;
  v75 = v19;
  sub_1D818F384();
  OUTLINED_FUNCTION_20_7();
  v41 = sub_1D8191324();
  v81 = v41;
  OUTLINED_FUNCTION_20_7();
  if (v41 == sub_1D8191414())
  {
LABEL_2:
    v42 = v56;
    v43 = v59;
    (*(v57 + 16))(v56, v78, v59);
    BlueprintSection.init(descriptor:items:)(v42, v77, v43, v70, *(v60 + 32), v69, v58);
    OUTLINED_FUNCTION_100();
    return;
  }

  v72 = (v33 + 16);
  v71 = *(v60 + 52);
  v44 = (v26 + 32);
  v45 = (v26 + 8);
  v61 = (v21 + 8);
  v62 = v44;
  v73 = v24;
  while (1)
  {
    OUTLINED_FUNCTION_20_7();
    v46 = sub_1D81913E4();
    sub_1D81913A4();
    if ((v46 & 1) == 0)
    {
      break;
    }

    v47 = v74;
    (*(v33 + 16))(v74, v7 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v41, v3);
LABEL_6:
    sub_1D8191454();
    (*(v33 + 32))(v36, v47, v3);
    sub_1D818EF94();
    sub_1D818F3A4();

    v48 = v75;
    if (__swift_getEnumTagSinglePayload(v24, 1, v75) == 1)
    {
      (*v61)(v24, v65);
      v49 = v66;
      v50 = v48;
      v67(v36);
      v51 = v64;
      BlueprintItem.init(model:)(v49, v70, v64);
      v52 = v51;
    }

    else
    {
      v52 = v63;
      (*v62)(v63, v24, v48);
      v50 = v48;
    }

    sub_1D818F314();
    (*v45)(v52, v50);
    (*(v33 + 8))(v36, v3);
    OUTLINED_FUNCTION_20_7();
    v53 = sub_1D8191414();
    v41 = v81;
    v24 = v73;
    if (v81 == v53)
    {
      goto LABEL_2;
    }
  }

  v54 = sub_1D8192204();
  if (v55 == 8)
  {
    v80 = v54;
    v47 = v74;
    (*v72)(v74, &v80, v3);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t BlueprintSection.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1D818EF94();
  sub_1D8190FF4();
}

uint64_t BlueprintSection.hashValue.getter(uint64_t a1)
{
  sub_1D81927E4();
  BlueprintSection.hash(into:)(v3, a1);
  return sub_1D8192824();
}

uint64_t sub_1D7F3DFB4(uint64_t a1, uint64_t a2)
{
  sub_1D81927E4();
  BlueprintSection.hash(into:)(v4, a2);
  return sub_1D8192824();
}

Swift::Int sub_1D7F3E018@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = BlueprintSection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D7F3E044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D7F3E098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

void BlueprintSection<>.rank(inclusiveFor:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v36 = v4;
  v6 = type metadata accessor for BlueprintItem(255, *(v2 + 24), *(v2 + 40), v5);
  OUTLINED_FUNCTION_12_13();
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  OUTLINED_FUNCTION_2();
  v37 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v34 = v33 - v19;
  OUTLINED_FUNCTION_2_38();
  v33[1] = swift_getWitnessTable();
  v20 = sub_1D8191834();
  v35 = v9;
  v21 = *(v9 + 16);
  v22 = v36;
  v36 = v7;
  v21(v12, v22, v7);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
  {
    v23 = v37;
    (*(v35 + 8))(v12, v36);
  }

  else
  {
    v26 = v37;
    v27 = v34;
    (*(v37 + 32))(v34, v12, v6);
    OUTLINED_FUNCTION_0_44();
    swift_getWitnessTable();
    sub_1D81918C4();
    v23 = v26;
    (*(v26 + 8))(v27, v6);
    if (v39 != 1)
    {
      v20 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_13;
      }
    }
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    if (!v20)
    {
LABEL_10:
      OUTLINED_FUNCTION_100();
      return;
    }

    v29 = 0;
    v30 = (v23 + 8);
    while (1)
    {
      BlueprintSection.subscript.getter(v29, v3, v24, v25);
      v31 = BlueprintItem<>.rankValue.getter(v6, v1);
      (*v30)(v17, v6);
      v32 = __OFADD__(v28, v31);
      v28 += v31;
      if (v32)
      {
        break;
      }

      if (v20 == ++v29)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t BlueprintSection<>.insert(_:sortBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BlueprintItem(255, *(a4 + 24), *(a4 + 40), a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  v7 = sub_1D8191744();
  return BlueprintSection.insert(_:at:)(a1, v7, a4);
}

uint64_t BlueprintSection.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_15_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v7 = sub_1D818F394();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  (*(v17 + 16))(v16 - v15, v5, v13);
  v21[0] = sub_1D8190F84();
  v21[1] = v18;
  MEMORY[0x1DA713260](58, 0xE100000000000000);
  (*(v9 + 16))(v12, v5 + *(a1 + 52), v7);
  swift_getWitnessTable();
  v19 = sub_1D8190F94();
  MEMORY[0x1DA713260](v19);

  return v21[0];
}

unint64_t BlueprintSection.visualDescription.getter(void *a1)
{
  sub_1D81921A4();

  v18 = 0xD000000000000013;
  v19 = 0x80000001D81C9370;
  v2 = a1[2];
  v3 = a1[4];
  v4 = sub_1D818EF94();
  MEMORY[0x1DA713260](v4);

  MEMORY[0x1DA713260](0x3D736D657469202CLL, 0xE800000000000000);
  v5 = a1[3];
  *&v6 = v2;
  *(&v6 + 1) = v5;
  v7 = a1[5];
  *&v8 = v3;
  *(&v8 + 1) = v7;
  v17[1] = v6;
  v17[2] = v8;
  type metadata accessor for BlueprintItem(255, v5, v7, v9);
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v10 = sub_1D818F394();
  OUTLINED_FUNCTION_9_11();
  WitnessTable = swift_getWitnessTable();
  sub_1D7E6CDC0(sub_1D7F3EA7C, v17, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
  v13 = MEMORY[0x1DA713540]();
  v15 = v14;

  MEMORY[0x1DA713260](v13, v15);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return v18;
}

uint64_t sub_1D7F3E84C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for BlueprintItem(0, a1, a3, a2);
  result = BlueprintItem.visualDescription.getter(v5);
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t BlueprintSection.traversable(at:)()
{
  OUTLINED_FUNCTION_66_0();
  v2 = v1;
  v1[3] = type metadata accessor for BlueprintItem(0, *(v3 + 24), *(v0 + 40), v4);
  v2[4] = &protocol witness table for BlueprintItem<A>;
  __swift_allocate_boxed_opaque_existential_0(v2);
  v5 = OUTLINED_FUNCTION_14_0();
  return BlueprintSection.subscript.getter(v5, v6, v7, v8);
}

uint64_t sub_1D7F3E8F8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D8191834();
}

void *BlueprintSection.itemIdentifiers.getter(int64x2_t *a1)
{
  v6 = a1[2];
  v10 = a1[1];
  v11 = v6;
  v8 = vzip1q_s64(v10, v6);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_38();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1D7E6CDC0(sub_1D7F3EAA0, v7, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v3);

  return v4;
}

uint64_t sub_1D7F3EA10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for BlueprintItem(0, *(a1 + a2 - 24), *(a1 + a2 - 8), a3);
  result = BlueprintItem.identifier.getter(v5);
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t UserActivityHandlerMatch.pattern.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D7E19F24(v2, v3);
}

_BYTE *storeEnumTagSinglePayload for StackedBlueprintLayoutCollectionSectionSolver.FillStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D7F3EC18()
{
  result = qword_1ECA0DEA8;
  if (!qword_1ECA0DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DEA8);
  }

  return result;
}

double sub_1D7F3EC6C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1D7E7CD68();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetWidth(v16);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  CGRectGetMaxX(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMaxX(v18);
  return v8;
}

uint64_t static BlueprintPipelineError.isCancelled(error:)(void *a1)
{
  v2 = sub_1D818F594();
  OUTLINED_FUNCTION_9();
  v28 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_1D818EFA4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1D8191514();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = a1;
  sub_1D7E61D28();
  if (swift_dynamicCast())
  {
    (*(v17 + 8))(v21, v15);
    return 1;
  }

  v29 = a1;
  v23 = a1;
  if (swift_dynamicCast())
  {
    if ((*(v10 + 88))(v14, v8) == *MEMORY[0x1E69D64A8])
    {
LABEL_12:
      v25 = v29;
      goto LABEL_13;
    }

    (*(v10 + 8))(v14, v8);
  }

  v24 = a1;
  if (swift_dynamicCast())
  {
    if (v33 == 3)
    {
      sub_1D7F3F08C(a1, v30, v31, v32, 3u);
      v25 = a1;
LABEL_13:

      return 1;
    }

    sub_1D7F3F08C(a1, v30, v31, v32, v33);
  }

  v29 = a1;
  v26 = a1;
  if (swift_dynamicCast())
  {
    if ((*(v28 + 88))(v7, v2) == *MEMORY[0x1E69D6780])
    {
      goto LABEL_12;
    }

    (*(v28 + 8))(v7, v2);
  }

  return 0;
}

uint64_t sub_1D7F3F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u && a5 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI22BlueprintPipelineErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
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

uint64_t sub_1D7F3F0D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7F3F118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7F3F160(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t UserActivityHandlerManager.add(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1D7EE43EC();
  v4 = *(*(v1 + 16) + 16);
  sub_1D7EE4618(v4);
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  sub_1D7E0E768(a1, v5 + 40 * v4 + 32);
  *(v2 + 16) = v5;
  return swift_endAccess();
}

Swift::Bool __swiftcall UserActivityHandlerManager.handle(userActivity:)(NSUserActivity userActivity)
{
  type metadata accessor for UserActivityHandlerMatcher();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_46(inited, v4, v5, v6, v7, v8, v9, v10, v24, v25, v26[0]);
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  v13 = userActivity.super.isa;
  result = sub_1D8190DB4();
  if (!v12)
  {

    v23 = 0;
    return v23 & 1;
  }

  if (*(v11 + 16))
  {
    sub_1D7E0E768(v11 + 32, v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v15 = OUTLINED_FUNCTION_1_38();
    v17 = v16(v15);
    sub_1D7F334E0(v17, v26);

    v19 = v26[0];
    v18 = v26[1];
    v20 = v26[2];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    OUTLINED_FUNCTION_2_39();
    v21 = OUTLINED_FUNCTION_3_33();
    v23 = v22(v21);

    sub_1D7E0E10C(v18, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return v23 & 1;
  }

  __break(1u);
  return result;
}

void UserActivityHandlerManager.handleAsync(userActivity:)(void *a1)
{
  type metadata accessor for UserActivityHandlerMatcher();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_46(inited, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24[0]);
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  v13 = a1;
  sub_1D8190DB4();
  if (v12)
  {
    if (*(v11 + 16))
    {
      sub_1D7E0E768(v11 + 32, v25);
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v14 = OUTLINED_FUNCTION_1_38();
      v16 = v15(v14);
      sub_1D7F334E0(v16, v24);

      v18 = v24[0];
      v17 = v24[1];
      v19 = v24[2];
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_2_39();
      v20 = OUTLINED_FUNCTION_3_33();
      v21(v20);

      sub_1D7E0E10C(v17, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    LOBYTE(v25[0]) = 0;
    sub_1D7F3F598();
    swift_allocObject();
    sub_1D818FB44();
  }
}

uint64_t UserActivityHandlerManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D7F3F598()
{
  if (!qword_1EDBBC3E8)
  {
    v0 = sub_1D818FBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC3E8);
    }
  }
}

uint64_t sub_1D7F3F600@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void ViewControllerCollectionViewCell.viewController.setter(void *a1)
{
  OUTLINED_FUNCTION_5_0(a1);
  swift_unknownObjectWeakAssign();
}

void (*ViewControllerCollectionViewCell.viewController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = qword_1EDBBC380;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F3F78C;
}

void sub_1D7F3F78C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
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

unint64_t ViewControllerCollectionViewCell.selectionBehavior.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = qword_1EDBBC370;
  OUTLINED_FUNCTION_1_39(a1);
  v5 = *(v2 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

unint64_t sub_1D7F3F880@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBBC370;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

void sub_1D7F3F8DC(unint64_t *a1)
{
  v1 = *a1;
  sub_1D7F25F40(v1);
  ViewControllerCollectionViewCell.selectionBehavior.setter(&v1);
}

void ViewControllerCollectionViewCell.selectionBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBBC370;
  OUTLINED_FUNCTION_5_0(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E9B848(v4);
  sub_1D7F3F964();
}

void sub_1D7F3F964()
{
  swift_beginAccess();
  SelectionBehavior.style.getter(v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v3 = *(v0 + qword_1EDBBC388);
  (*(v2 + 8))(v0, &protocol witness table for ViewControllerCollectionViewCell<A>, v3, v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (ViewControllerCollectionViewCell.isSelected.getter())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong view];

      if (v6)
      {
        SelectionBehavior.style.getter(v10);
        v7 = v11;
        v8 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v9 = ViewControllerCollectionViewCell.isHighlighted.getter();
        (*(v8 + 16))(1, v9 & 1, 0, v6, v3, v7, v8);

        __swift_destroy_boxed_opaque_existential_1Tm(v10);
      }
    }
  }
}

uint64_t (*ViewControllerCollectionViewCell.selectionBehavior.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7F3FB5C;
}

uint64_t ViewControllerCollectionViewCell.hasBeenTraversed.getter(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDBBC378;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBC378, a2);
  return *(v2 + v3);
}

void sub_1D7F3FBAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBBC378;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ViewControllerCollectionViewCell.hasBeenTraversed.setter(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1EDBBC378;
  OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = v2;
  sub_1D7F3FC48();
}

void sub_1D7F3FC48()
{
  v1 = qword_1EDBBC378;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        [v4 deselect];
      }
    }
  }
}

uint64_t (*ViewControllerCollectionViewCell.hasBeenTraversed.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7F3FD3C;
}

uint64_t sub_1D7F3FD54(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id ViewControllerCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *ViewControllerCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2 = qword_1EDBBC348;
  sub_1D7E40308(0, v3, v4, v5);
  v7 = v6;
  *(v0 + v2) = [objc_allocWithZone(v6) init];
  v8 = qword_1EDBBC358;
  *(v0 + v8) = [objc_allocWithZone(v7) init];
  v9 = qword_1EDBBC350;
  *(v0 + v9) = [objc_allocWithZone(v7) init];
  v10 = qword_1EDBBC388;
  v11 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v10) = OUTLINED_FUNCTION_4(v11, sel_initWithFrame_);
  v12 = qword_1EDBBC360;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBBC370) = 0x8000000000000008;
  *(v0 + qword_1EDBBC378) = 0;
  v13 = (v0 + qword_1EDBBC368);
  *v13 = 0;
  v13[1] = 0;
  v14 = OUTLINED_FUNCTION_80();
  v17 = objc_msgSendSuper2(v15, v16, v14, v0, ObjectType);
  [v17 setSelectedBackgroundView_];
  return v17;
}

id ViewControllerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ViewControllerCollectionViewCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = qword_1EDBBC348;
  sub_1D7E40308(0, v2, v3, v4);
  v6 = v5;
  *(v0 + v1) = [objc_allocWithZone(v5) init];
  v7 = qword_1EDBBC358;
  *(v0 + v7) = [objc_allocWithZone(v6) init];
  v8 = qword_1EDBBC350;
  *(v0 + v8) = [objc_allocWithZone(v6) init];
  v9 = qword_1EDBBC388;
  v10 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v9) = OUTLINED_FUNCTION_4(v10, sel_initWithFrame_);
  v11 = qword_1EDBBC360;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBBC370) = 0x8000000000000008;
  *(v0 + qword_1EDBBC378) = 0;
  v12 = (v0 + qword_1EDBBC368);
  *v12 = 0;
  v12[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.layoutSubviews()()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  OUTLINED_FUNCTION_10(&v0[qword_1EDBBC380], v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v0 contentView];
    [v5 bounds];
    OUTLINED_FUNCTION_9_0();

    [v4 frame];
    if (!OUTLINED_FUNCTION_19_8(v6, v7, v8, v9))
    {
      v10 = OUTLINED_FUNCTION_8_0();
      [v11 v12];
    }
  }

  v13 = *&v0[qword_1EDBBC388];
  v14 = [v0 contentView];
  [v14 bounds];
  OUTLINED_FUNCTION_9_0();

  v23.origin.x = OUTLINED_FUNCTION_8_0();
  SelectedBackgroundView.makeFrame(in:)(v23);
  OUTLINED_FUNCTION_9_0();
  [v13 frame];
  if (!OUTLINED_FUNCTION_19_8(v15, v16, v17, v18))
  {
    v19 = OUTLINED_FUNCTION_8_0();
    [v20 v21];
  }
}

void sub_1D7F40294(void *a1)
{
  v1 = a1;
  ViewControllerCollectionViewCell.layoutSubviews()();
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v8 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[qword_1EDBBC368];
    if (v4)
    {
      v5 = v3;
      v6 = *&v1[qword_1EDBBC368 + 8];
      v7 = a1;
      sub_1D7E19F24(v4, v6);
      v4(v1, v5);
      sub_1D7E0E10C(v4, v6);
    }
  }
}

void sub_1D7F403A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ViewControllerCollectionViewCell.apply(_:)(v4);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.prepareForReuse()()
{
  v1 = v0;
  swift_getObjectType();
  OUTLINED_FUNCTION_7_20();
  v42.receiver = v0;
  v42.super_class = v2;
  objc_msgSendSuper2(&v42, sel_prepareForReuse);
  v3 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v4 = qword_1EDBBC360;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;

  ViewControllerCollectionViewCell.isSelected.setter(0);
  ViewControllerCollectionViewCell.isHighlighted.setter(0);
  ViewControllerCollectionViewCell.hasBeenTraversed.setter(0);
  v6 = &v1[qword_1EDBBC368];
  v7 = *&v1[qword_1EDBBC368];
  v8 = *&v1[qword_1EDBBC368 + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1D7E0E10C(v7, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v39[0] = Strong, v10 = sub_1D7E0631C(0, &qword_1EDBB36D8, &protocol descriptor for Reusable), OUTLINED_FUNCTION_18_2(v10, v11, v12, v10, v13, v14, v15, v16, v29, v31, v33, v35, v37[0]), v17 = swift_dynamicCast(), (v17 & 1) == 0))
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  if (!v38)
  {
LABEL_6:
    sub_1D7E9DD24(v37, &qword_1EDBAE678, &qword_1EDBB36D8, &protocol descriptor for Reusable);
    goto LABEL_7;
  }

  v25 = OUTLINED_FUNCTION_18_2(v17, v18, v19, v20, v21, v22, v23, v24, v30, v32, v34, v36, v37[0]);
  sub_1D7E05450(v25, v26);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v28 + 16))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_7:
  swift_unknownObjectWeakAssign();
  sub_1D7E80824();
}

void ViewControllerCollectionViewCell.isSelected.setter(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setSelected_, a1 & 1);
  sub_1D7F407A0();
}

void ViewControllerCollectionViewCell.isHighlighted.setter(uint64_t a1)
{
  v2 = a1;
  ObjectType = swift_getObjectType();
  sub_1D7F40AA0(v2);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_setHighlighted_, v2 & 1);
  sub_1D7F40BA8();
}

void sub_1D7F406D0(void *a1)
{
  v1 = a1;
  ViewControllerCollectionViewCell.prepareForReuse()();
}

uint64_t sub_1D7F40718(void *a1)
{
  v1 = a1;
  v2 = ViewControllerCollectionViewCell.isSelected.getter();

  return v2 & 1;
}

void sub_1D7F4074C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  ViewControllerCollectionViewCell.isSelected.setter(a3);
}

void sub_1D7F407A0()
{
  v1 = v0;
  if (ViewControllerCollectionViewCell.isSelected.getter())
  {
    sub_1D7E80824();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (v4)
    {
      v5 = qword_1EDBBC370;
      swift_beginAccess();
      v16 = *(v1 + v5);
      SelectionBehavior.style.getter(v13);
      v6 = v14;
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v8 = ViewControllerCollectionViewCell.isSelected.getter();
      v9 = ViewControllerCollectionViewCell.isHighlighted.getter();
      (*(v7 + 16))(v8 & 1, v9 & 1, 0, v4, *(v1 + qword_1EDBBC388), v6, v7);

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  if ((ViewControllerCollectionViewCell.isSelected.getter() & 1) == 0)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v17 = &unk_1F539F660;
      v12 = swift_dynamicCastObjCProtocolConditional();
      if (v12)
      {
        [v12 deselect];
      }
    }
  }
}

void (*ViewControllerCollectionViewCell.isSelected.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[3].super_class = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 isSelected];
  return sub_1D7F409AC;
}

void sub_1D7F409AC(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v6[1].super_class = super_class;
    objc_msgSendSuper2(v6 + 1, sel_setSelected_, receiver_low);
  }

  else
  {
    v6[2].receiver = receiver;
    v6[2].super_class = super_class;
    objc_msgSendSuper2(v6 + 2, sel_setSelected_, receiver_low);
    sub_1D7F407A0();
  }

  free(v2);
}

uint64_t sub_1D7F40A18(void *a1)
{
  v1 = a1;
  v2 = ViewControllerCollectionViewCell.isHighlighted.getter();

  return v2 & 1;
}

void sub_1D7F40A4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  ViewControllerCollectionViewCell.isHighlighted.setter(a3);
}

void sub_1D7F40AA0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong view];

    if (v6)
    {
      v7 = qword_1EDBBC370;
      swift_beginAccess();
      v13 = *(v2 + v7);
      SelectionBehavior.style.getter(v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 24))(a1 & 1, v6, *(v2 + qword_1EDBBC388), v8, v9);

      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }
  }
}

void sub_1D7F40BA8()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (v4)
    {
      v5 = qword_1EDBBC370;
      swift_beginAccess();
      v12 = *(v1 + v5);
      SelectionBehavior.style.getter(v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v8 = ViewControllerCollectionViewCell.isHighlighted.getter();
      (*(v7 + 32))(v8 & 1, v4, *(v1 + qword_1EDBBC388), v6, v7);

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }
  }
}

void (*ViewControllerCollectionViewCell.isHighlighted.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ViewControllerCollectionViewCell.isHighlighted.getter() & 1;
  return sub_1D7F40D04;
}

void ViewControllerCollectionViewCell.startTraversing(direction:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_39(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 startTraversingWithDirection_];
    }
  }
}

void sub_1D7F40DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  ViewControllerCollectionViewCell.startTraversing(direction:)(a3);
}

id ViewControllerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F40E34(uint64_t a1)
{
  MEMORY[0x1DA715E30](a1 + qword_1EDBBC380);

  sub_1D7E9B848(*(a1 + qword_1EDBBC370));
  v2 = *(a1 + qword_1EDBBC368);
  v3 = *(a1 + qword_1EDBBC368 + 8);

  return sub_1D7E0E10C(v2, v3);
}

uint64_t ViewControllerCollectionViewCell.keyCommandBlocks.getter()
{
  OUTLINED_FUNCTION_7_20();
  v34 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_39(v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v33[0] = Strong, v2 = sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType), OUTLINED_FUNCTION_18_2(v2, v3, v4, v2, v5, v6, v7, v8, v23, v25, v27, v29, v31[0]), v9 = swift_dynamicCast(), (v9 & 1) == 0))
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  if (!v32)
  {
LABEL_6:
    sub_1D7E9DD24(v31, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
    return v34;
  }

  v17 = OUTLINED_FUNCTION_18_2(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26, v28, v30, v31[0]);
  sub_1D7E05450(v17, v18);
  OUTLINED_FUNCTION_27_0(v33);
  v19 = OUTLINED_FUNCTION_3_1();
  v21 = v20(v19);
  sub_1D7F0A4EC(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v34;
}

uint64_t ViewControllerCollectionViewCell<>.isHighlightable.getter()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_10(v0 + qword_1EDBBC380, v1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_12_14();
    v4 = v3(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7F411D4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ViewControllerCollectionViewCell.isHighlighted.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t ViewControllerCollectionViewCell<>.isSelectable.getter()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_10(v0 + qword_1EDBBC380, v1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_12_14();
    v4 = v3(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7F41354(objc_super ***a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ViewControllerCollectionViewCell.isSelected.modify(v2);
  return sub_1D7F413B4;
}

void (*sub_1D7F413BC(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 selectedBackgroundView];
  return sub_1D7F41418;
}

void sub_1D7F41418(id *a1)
{
  v1 = *a1;
  [a1[1] setSelectedBackgroundView_];
}

id ViewControllerCollectionViewCell.traversedDisposerToken.getter(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDBBC360;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBC360, a2);
  v4 = *(v2 + v3);

  return v4;
}

uint64_t (*sub_1D7F414B0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ViewControllerCollectionViewCell.hasBeenTraversed.modify(v2);
  return sub_1D7F41FE0;
}

void sub_1D7F4150C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.viewWillAppear()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.viewDidAppear()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.viewWillDisappear()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.viewDidDisappear()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.windowDidBecomeBackground()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

Swift::Void __swiftcall ViewControllerCollectionViewCell.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_1_39(v0);
  if (swift_unknownObjectWeakLoadStrong() && (OUTLINED_FUNCTION_14_12(), v1 = sub_1D7E0631C(0, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType), v6 = OUTLINED_FUNCTION_3_34(v1, v2, v3, v4, v5), (v6 & 1) != 0))
  {
    if (v23)
    {
      v14 = OUTLINED_FUNCTION_6_18(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22[0]);
      sub_1D7E05450(v14, v15);
      OUTLINED_FUNCTION_27_0(v24);
      v16 = OUTLINED_FUNCTION_3_1();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_1D7E9DD24(v22, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType);
}

uint64_t ViewControllerCollectionViewCell.shouldMonitorScroll.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBC380, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = dynamic_cast_existential_1_conditional(v4, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver);
    v8 = v6;
    if (v6)
    {
      v9 = v7;
      v10 = swift_getObjectType();
      v8 = (*(v9 + 16))(v10, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t ViewControllerCollectionViewCell.shouldMonitorMotion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBC380, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = dynamic_cast_existential_1_conditional(v4, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver);
    v8 = v6;
    if (v6)
    {
      v9 = v7;
      v10 = swift_getObjectType();
      v8 = (*(v9 + 8))(v10, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void ViewControllerCollectionViewCell.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_39(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v2, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      swift_getObjectType();
      v4 = OUTLINED_FUNCTION_15_9();
      v5(v4);
    }
  }
}

void ViewControllerCollectionViewCell.blueprintViewportMonitor(_:viewportMotionDataDidChange:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_39(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v2, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      swift_getObjectType();
      v4 = OUTLINED_FUNCTION_15_9();
      v5(v4);
    }
  }
}

void ViewControllerCollectionViewCell.blueprintViewportMonitor(_:viewportMotionEnabled:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_1_39(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v5, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v8 = v7;
      v9 = swift_getObjectType();
      (*(v8 + 40))(a1, a2 & 1, v9, v8);
    }
  }
}

uint64_t ViewControllerCollectionViewCell.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_1EDBBC368);
  v6 = *(v2 + qword_1EDBBC368);
  v5 = *(v2 + qword_1EDBBC368 + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1D7E0E10C(v6, v5);
}

TeaUI::SharingHTMLBuilder __swiftcall SharingHTMLBuilder.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0xE000000000000000;
  result.string._object = v3;
  result.string._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SharingHTMLBuilder.toString()()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D81921A4();

  strcpy(v6, "<html><body>");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  MEMORY[0x1DA713260](v1, v2);
  MEMORY[0x1DA713260](0x3C3E79646F622F3CLL, 0xEE003E6C6D74682FLL);
  v3 = v6[0];
  v4 = v6[1];
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::Void __swiftcall SharingHTMLBuilder.appendStrong(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_5_16();

  v11 = *v1;
  v12 = v1[1];
  sub_1D8190DB4();
  v2 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_3_35(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  v10 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x1DA713260](v10);

  MEMORY[0x1DA713260](0x676E6F7274732F3CLL, 0xE90000000000003ELL);
  OUTLINED_FUNCTION_4_23();
}

uint64_t sub_1D7F42184(uint64_t a1, uint64_t a2)
{
  sub_1D8191014();
  sub_1D8191934();
  if (v3)
  {
    sub_1D8190DB4();
  }

  else
  {
    sub_1D7E50D2C();
    a1 = sub_1D8191ED4();
  }

  sub_1D8191014();
  sub_1D8191934();
  if ((v4 & 1) == 0)
  {
    sub_1D7E50D2C();
    a1 = sub_1D8191ED4();
  }

  sub_1D8191014();
  sub_1D8191934();
  if ((v5 & 1) == 0)
  {
    sub_1D7E50D2C();
    a1 = sub_1D8191ED4();
  }

  sub_1D8191014();
  sub_1D8191934();
  if ((v6 & 1) == 0)
  {
    sub_1D7E50D2C();
    a1 = sub_1D8191ED4();
  }

  sub_1D8191014();
  sub_1D8191934();
  if ((v7 & 1) == 0)
  {
    sub_1D7E50D2C();
    a1 = sub_1D8191ED4();
  }

  return a1;
}

uint64_t SharingHTMLBuilder.appendParagraph(_:)(uint64_t a1)
{
  v9 = 4091964;
  v10 = 0xE300000000000000;
  sub_1D7F425AC(a1, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = OUTLINED_FUNCTION_11_0();
    v3 = v2(v1);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1D7F426C4(v7);
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1DA713260](v3, v5);

  MEMORY[0x1DA713260](1047539516, 0xE400000000000000);
  MEMORY[0x1DA713260](v9, v10);
}

uint64_t sub_1D7F425AC(uint64_t a1, uint64_t a2)
{
  sub_1D7F42610(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7F42610(uint64_t a1)
{
  if (!qword_1ECA0DEB0)
  {
    sub_1D7F42668();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0DEB0);
    }
  }
}

unint64_t sub_1D7F42668()
{
  result = qword_1ECA0DEB8;
  if (!qword_1ECA0DEB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0DEB8);
  }

  return result;
}

uint64_t sub_1D7F426C4(uint64_t a1)
{
  sub_1D7F42610(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SharingHTMLBuilder.appendParagraphText(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_1_40();
  v11 = *v1;
  v12 = v1[1];
  sub_1D8190DB4();
  v2 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_3_35(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  v10 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x1DA713260](v10);

  MEMORY[0x1DA713260](1047539516, 0xE400000000000000);
  OUTLINED_FUNCTION_4_23();
}

Swift::Void __swiftcall SharingHTMLBuilder.appendLink(_:withURL:)(Swift::String _, Swift::String withURL)
{
  object = withURL._object;
  countAndFlagsBits = withURL._countAndFlagsBits;
  OUTLINED_FUNCTION_5_16();

  v5 = sub_1D7F4298C(countAndFlagsBits, object);
  MEMORY[0x1DA713260](v5);

  MEMORY[0x1DA713260](15906, 0xE200000000000000);
  v15 = *v2;
  v16 = v2[1];
  sub_1D8190DB4();
  v6 = OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_3_35(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  v14 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x1DA713260](v14);

  MEMORY[0x1DA713260](1046556476, 0xE400000000000000);
  OUTLINED_FUNCTION_4_23();
}

Swift::Void __swiftcall SharingHTMLBuilder.appendText(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_1_40();
  sub_1D8190DB4();
  v1 = OUTLINED_FUNCTION_0_48();
  v3 = v2;

  MEMORY[0x1DA713260](v1, v3);
}

uint64_t SharingHTMLBuilder.appendHTML(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_11_0();
  v3 = v2(v1);
  MEMORY[0x1DA713260](v3);
}

uint64_t sub_1D7F4298C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E3F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a1;
  v12[1] = a2;
  sub_1D818E3D4();
  sub_1D7E50D2C();
  v8 = sub_1D8191EE4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    return v8;
  }

  sub_1D8190DB4();
  return a1;
}

uint64_t CommandBarButtonItem.barButtonItemIdentifier.getter()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x58));
  swift_beginAccess();
  v2 = *v1;
  sub_1D8190DB4();
  return v2;
}

uint64_t CommandBarButtonItem.barButtonItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x58));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id CommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:commandImage:contentSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v25 = a7;
  OUTLINED_FUNCTION_5_17();
  v9 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  (*(v11 + 16))(&v24 - v14, a5, v9, v13);
  v16 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  v17 = OUTLINED_FUNCTION_4_24();
  v22 = CommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:commandImage:contentSize:symbolConfiguration:allowsManagedRecoloring:)(v17, v18, v19, v20, v15, a6, v25, v21, 1);
  (*(v11 + 8))(a5, v9);
  return v22;
}

id CommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:commandImage:contentSize:symbolConfiguration:allowsManagedRecoloring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9)
{
  OUTLINED_FUNCTION_5_17();
  v14 = objc_allocWithZone(v9);
  v15 = OUTLINED_FUNCTION_4_24();
  return CommandBarButtonItem.init(commandCenter:commandSource:command:context:commandImage:contentSize:symbolConfiguration:allowsManagedRecoloring:)(v15, v16, v17, v18, a5, a6, a7, a8, a9);
}

id CommandBarButtonItem.init(commandCenter:commandSource:command:context:commandImage:contentSize:symbolConfiguration:allowsManagedRecoloring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = *v9;
  v13 = *MEMORY[0x1E69E7D40];
  v14 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_3();
  v18 = (v9 + *((v13 & v12) + 0x58));
  sub_1D818E784();
  v19 = sub_1D818E764();
  v21 = v20;
  (*(v16 + 8))(v9, v14);
  *v18 = v19;
  v18[1] = v21;
  OUTLINED_FUNCTION_0_49();
  v23 = *(v22 + 136);
  *&v10[v23] = 0;
  OUTLINED_FUNCTION_0_49();
  v25 = &v10[*(v24 + 96)];
  *v25 = a1;
  v25[1] = a2;
  OUTLINED_FUNCTION_0_49();
  *&v10[*(v26 + 104)] = a3;
  OUTLINED_FUNCTION_0_49();
  *&v10[*(v27 + 112)] = a4;
  OUTLINED_FUNCTION_0_49();
  v29 = *(v28 + 120);
  v30 = sub_1D8191E84();
  v31 = *(v30 - 8);
  (*(v31 + 16))(&v10[v29], a5, v30);
  OUTLINED_FUNCTION_0_49();
  *&v10[*(v32 + 128)] = a6;
  OUTLINED_FUNCTION_0_49();
  v34 = &v10[*(v33 + 152)];
  v34[32] = *(v35 + 32);
  v36 = *(v35 + 16);
  *v34 = *v35;
  *(v34 + 1) = v36;
  *&v10[v23] = a8;
  OUTLINED_FUNCTION_0_49();
  v10[*(v37 + 144)] = a9;
  v49.receiver = v10;
  v49.super_class = ObjectType;
  swift_unknownObjectRetain();

  v38 = a6;
  v39 = a8;
  v40 = objc_msgSendSuper2(&v49, sel_init);
  sub_1D7F43148(v40);
  swift_unknownObjectRelease();

  (*(v31 + 8))(a5, v30);
  return v40;
}

uint64_t sub_1D7F43148(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (sub_1D8190B24())
  {
    [v1 setImage_];
    sub_1D7E0A1A8(0, &qword_1EDBB2F18, 0x1E69DC628);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = v5;
    v7 = sub_1D8191CF4(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0);
    [v2 setPrimaryAction_];
  }

  else
  {
    v8 = sub_1D7F43AF0(v1);
    v7 = v8;
    v9 = *(v2 + *((*v3 & *v2) + 0x88));
    if (v9)
    {
      v10 = *(v2 + *((*v3 & *v2) + 0x80));
      v11 = v9;
      v12 = [v10 imageByApplyingSymbolConfiguration_];
      [v7 setImage:v12 forState:0];
    }

    else
    {
      [v8 setImage:*(v2 + *((*v3 & *v2) + 0x80)) forState:0];
    }
  }

  v13 = *v2;
  v14 = *v3;
  v15 = *(v2 + *((*v3 & *v2) + 0x60) + 8);
  ObjectType = swift_getObjectType();
  v17 = *(v2 + *((v14 & v13) + 0x70));
  v18 = *((v14 & v13) + 0x78);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = *(v4 + 80);
  *(v20 + 24) = v19;

  CommandCenterType.canExecute<A>(command:context:closure:)(v17, v2 + v18, sub_1D7F4414C, v20, ObjectType, v15);

  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1D818ED84();
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

void sub_1D7F43498()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_3();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x58));
  sub_1D818E784();
  v7 = sub_1D818E764();
  v9 = v8;
  (*(v3 + 8))(v0, v1);
  *v6 = v7;
  v6[1] = v9;
  *(v0 + *((*v5 & *v0) + 0x88)) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F4360C()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_3();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x58));
  sub_1D818E784();
  v7 = sub_1D818E764();
  v9 = v8;
  (*(v3 + 8))(v0, v1);
  *v6 = v7;
  v6[1] = v9;
  *(v0 + *((*v5 & *v0) + 0x88)) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7F43780()
{
  v14 = *v0;
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [v0 customView];
  v4 = sub_1D810DE04();

  v5 = *v0;
  v6 = *v1;
  v7 = *(v0 + *((*v1 & *v0) + 0x60) + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v0 + *((v6 & v5) + 0x70));
  v10 = *((v6 & v5) + 0x78);
  v11 = *(v7 + 8);
  v12 = *((v2 & v14) + 0x50);

  v11(v9, v0 + v10, v4, v12, ObjectType, v7);
}

void sub_1D7F438E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7F43780();
}

void *sub_1D7F43948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E69E7D40];

    v7 = v5;
    v8 = sub_1D810DEDC();

    v9 = *v7;
    v10 = *v6;
    v11 = *(v7 + *((*v6 & *v7) + 0x60) + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v7 + *((v10 & v9) + 0x70));
    v14 = *((v10 & v9) + 0x78);
    v15 = *(v11 + 8);
    swift_unknownObjectRetain();

    v15(v13, v7 + v14, v8, a3, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D7F43AF0(void *a1)
{
  v2 = [a1 customView];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      return v4;
    }
  }

  v4 = [objc_opt_self() buttonWithType_];
  [v4 addTarget:a1 action:sel_barButtonItemPressedWithSender_ forControlEvents:64];
  v5 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x98));
  if ((LOBYTE(v5[1].origin.x) & 1) == 0)
  {
    Width = CGRectGetWidth(*v5);
    v7 = [v4 widthAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
  }

  [a1 setCustomView_];
  return v4;
}

void sub_1D7F43C4C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setEnabled_];
  }
}

id CommandBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommandBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7F43D5C(char *a1)
{

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v3 = *(v2 + 120);
  v4 = sub_1D8191E84();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v7 = *&a1[*(v6 + 136)];
}

Swift::Void __swiftcall CommandBarButtonItem.recolor(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v4 = *(v1 + v3);
  if (v4)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3050, 0x1E69DCAD8);
    v5 = v4;
    v6 = sub_1D8190DB4();
    v7 = sub_1D806A548(v6);
    v8 = [v5 configurationByApplyingConfiguration_];

    v9 = *(v2 + v3);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v2 + v3) = v8;

  sub_1D7F43148(v10);
}

uint64_t sub_1D7F43FF4(uint64_t a1)
{
  result = sub_1D8191E84();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:commandImage:contentSize:symbolConfiguration:allowsManagedRecoloring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 160);
  v9 = *(a7 + 32);
  v10 = *(a7 + 16);
  v12[0] = *a7;
  v12[1] = v10;
  v13 = v9;
  return v8(a1, a2, a3, a4, a5, a6, v12);
}

uint64_t sub_1D7F4415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_50();
  sub_1D7E18938(v6, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v15 - v10;
  v15[1] = sub_1D818E764();
  v15[2] = v12;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](0x6E696665642F232FLL, 0xEF2F736E6F697469);

  sub_1D8190DB4();
  MEMORY[0x1DA713260](a2, a3);

  sub_1D7F44AA0(a1, v11);
  v13 = type metadata accessor for JSONSchema(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  swift_beginAccess();
  sub_1D7EE606C();
  return swift_endAccess();
}

uint64_t sub_1D7F442B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  sub_1D7E18938(0, &qword_1ECA0CFE0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v48 - v9;
  sub_1D818E5A4();
  OUTLINED_FUNCTION_9();
  v49 = v11;
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E644();
  OUTLINED_FUNCTION_9();
  v53 = v15;
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = OUTLINED_FUNCTION_0_50();
  sub_1D7E18938(v20, v21, v22);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v48 - v24;
  v26 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D7EDF2C0(a1, a2, *(v4 + 16));
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1D7F4491C(v25);
    swift_endAccess();
    if ((sub_1D81910E4() & 1) == 0)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1D81921A4();

      v56 = 0xD000000000000010;
      v57 = 0x80000001D81C9730;
      MEMORY[0x1DA713260](a1, a2);
      result = sub_1D81923A4();
      __break(1u);
      return result;
    }

    v29 = sub_1D8191034();
    v30 = sub_1D7F44874(v29, a1, a2);
    v56 = 0x6E6F736A2ELL;
    v57 = 0xE500000000000000;
    v31 = MEMORY[0x1DA7131E0](v30);
    v33 = v32;

    v60 = v31;
    v61 = v33;
    v34 = MEMORY[0x1E69E6158];
    sub_1D8191044();
    v56 = sub_1D8191EA4();
    v57 = v35;
    v58 = v36;
    v59 = v37;
    v39 = v49;
    v38 = v50;
    (*(v49 + 104))(v13, *MEMORY[0x1E6968F70], v50);
    sub_1D7F44994();
    sub_1D818E634();
    (*(v39 + 8))(v13, v38);

    sub_1D7F449E8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D819FAC0;
    *(v40 + 56) = v34;
    *(v40 + 32) = 0xD000000000000015;
    *(v40 + 40) = 0x80000001D81C9750;
    v41 = v54;
    *(v40 + 88) = v54;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v40 + 64));
    v43 = v53;
    v44 = *(v53 + 16);
    v44(boxed_opaque_existential_0, v19, v41);
    sub_1D81927B4();

    v44(v52, v19, v41);
    v45 = sub_1D818F824();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v45);
    v46 = v62;
    JSONSchema.init(jsonSchemaURL:defaultValue:)();
    if (v46)
    {
      return (*(v43 + 8))(v19, v41);
    }

    (*(v43 + 8))(v19, v41);
  }

  else
  {
    sub_1D7F44A3C(v25, v28);
    swift_endAccess();
    sub_1D7F44A3C(v28, a4);
  }

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v26);
}

void sub_1D7F4483C()
{
  type metadata accessor for JSONSchemaRefDirectory();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  qword_1ECA2C528 = v0;
}

unint64_t sub_1D7F44874(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D8191124();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7F448C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F4491C(uint64_t a1)
{
  sub_1D7E18938(0, &qword_1ECA0D2A0, type metadata accessor for JSONSchema);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7F44994()
{
  result = qword_1ECA0DEC0;
  if (!qword_1ECA0DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DEC0);
  }

  return result;
}

void sub_1D7F449E8()
{
  if (!qword_1EDBB2BE8)
  {
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2BE8);
    }
  }
}

uint64_t sub_1D7F44A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F44AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EmptyStatePosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F44B9C()
{
  result = qword_1ECA0DEC8;
  if (!qword_1ECA0DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DEC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EmptyStatePosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_1D7F44CCC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5TeaUI15TipPresentation_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5TeaUI15TipPresentation_observedScrollViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5TeaUI15TipPresentation_placement] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11.receiver = v4;
  v11.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

Swift::Void __swiftcall TipPresentation.setup(sourceViewController:)(UIViewController *sourceViewController)
{
  v2 = v1;
  v3 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  *v8 = sub_1D8191AB4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v3);
  v9 = sub_1D8190CA4();
  (*(v5 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((*(*(v2 + OBJC_IVAR____TtC5TeaUI15TipPresentation_placement) + 72) & 4) != 0)
  {
    return;
  }

  v10 = sub_1D7F4502C();
  v11 = sub_1D7E36AB8(v10);
  if (v11)
  {
    v12 = v11;
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC5TeaUI15TipPresentation_observedScrollViews;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA714420](v13, v10);
        }

        else
        {
          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        [v15 _addScrollViewScrollObserver_];
        sub_1D7F45684(0);
        swift_allocObject();
        v17 = v16;
        sub_1D818F8F4();
        v18 = swift_beginAccess();
        MEMORY[0x1DA713500](v18);
        if (*((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        ++v13;
        sub_1D8191404();
        swift_endAccess();
      }

      while (v12 != v13);
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:
}

id sub_1D7F4502C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    sub_1D7F454CC(result, v1);

    swift_beginAccess();
    v4 = *(v1 + 16);
    sub_1D8190DB4();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TipPresentation.teardown()()
{
  v1 = v0;
  v2 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  *v7 = sub_1D8191AB4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v2);
  v8 = sub_1D8190CA4();
  (*(v4 + 8))(v7, v2);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC5TeaUI15TipPresentation_observedScrollViews;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = sub_1D7E36AB8(v10);
    if (!v11)
    {
LABEL_12:
      *(v1 + v9) = MEMORY[0x1E69E7CC0];

      return;
    }

    v12 = v11;
    if (v11 >= 1)
    {
      sub_1D8190DB4();
      for (i = 0; i != v12; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](i, v10);
        }

        else
        {
        }

        v14 = sub_1D818F8D4();
        if (v14)
        {
          v15 = v14;
          [v14 _removeScrollViewScrollObserver_];
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id TipPresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipPresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TipPresentation._observeScrollViewDidScroll(_:)(UIScrollView_optional *a1)
{
  if (!sub_1D7FF00EC() && swift_unknownObjectWeakLoadStrong())
  {
    sub_1D818AF88();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7F454CC(void *a1, uint64_t a2)
{
  v3 = [a1 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v4 = sub_1D8191314();

  result = sub_1D7E36AB8(v4);
  if (!result)
  {
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA714420](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_beginAccess();
        MEMORY[0x1DA713500](v9);
        if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
        swift_endAccess();
      }

      sub_1D7F454CC(v9, a2);
    }
  }

  __break(1u);
  return result;
}

void sub_1D7F45684(uint64_t a1)
{
  if (!qword_1EDBB2018)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3240, 0x1E69DCEF8);
    v1 = sub_1D818F8E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2018);
    }
  }
}

uint64_t UserActivityHandlerType.handle(userActivity:for:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v5 = (v4 + 16);
  sub_1D818FC24();

  v6 = sub_1D818FA14();
  sub_1D818FAC4();

  swift_beginAccess();
  v7 = *v5;

  return v7;
}

uint64_t UserActivityHandlerType.handleAsync(userActivity:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  LOBYTE(v5) = (*(a4 + 16))(a1, &v5, a3) & 1;
  sub_1D7F3F598();
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t sub_1D7F458CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return (*(v2 + 24))(v3, &v5, v1);
}

void sub_1D7F4592C(char *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
}

BOOL sub_1D7F459D8(id a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 visibleViewController]) != 0 && (v6 = v5, v5, v6 == a1))
  {
    return 1;
  }

  else
  {
    return v3 == a1;
  }
}

uint64_t sub_1D7F45A88()
{
  sub_1D7F45A58();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F45AB8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_1D7F45B40(v2, v1);
}

uint64_t sub_1D7F45AF4()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D7F45B40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___TSCardContainerController_delegate;
  OUTLINED_FUNCTION_56(v4, v6);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7F45BA4(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___TSCardContainerController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F45C30;
}

uint64_t sub_1D7F45C60()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

double sub_1D7F45CA0(uint64_t a1)
{
  v3 = OBJC_IVAR___TSCardContainerController_transitionManager;
  OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = a1;

  return result;
}

id sub_1D7F45D78()
{
  v1 = v0;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v45 - v5;
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - v9;
  v11 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, &v1[v11], v3);
  v12(v10, v6, v3);
  v13 = *(v8 + 44);
  v14 = sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v4 + 8))(v6, v3);
  v15 = &v1[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
  swift_beginAccess();
  v47 = v13;
  v46 = v10;
  *&v45[1] = v14;
  while (1)
  {
    sub_1D81917B4();
    if (*&v10[v13] == __dst[0])
    {
      return sub_1D7F530BC(v10, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
    }

    v16 = sub_1D81918F4();
    v18 = *v17;

    v16(__dst, 0);
    sub_1D81917C4();
    v19 = v15[2];
    v20 = v15;
    v21 = *(v15 + 24);
    result = [v1 view];
    if (!result)
    {
      break;
    }

    v23 = result;
    [result bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    result = [v1 view];
    if (!result)
    {
      goto LABEL_17;
    }

    v32 = result;
    [result layoutMargins];
    v34 = v33;
    v36 = v35;

    v37 = *(*(v18 + 24) + OBJC_IVAR___TSCardView_layout);
    v49.origin.x = v25;
    v49.origin.y = v27;
    v49.size.width = v29;
    v49.size.height = v31;
    Height = CGRectGetHeight(v49);
    if (v21 >> 6)
    {
      if (v21 >> 6 == 1)
      {
        v39 = 0.0;
        if (v21)
        {
          v39 = v36;
        }

        v40 = v39 + v19;
      }

      else
      {
        v51.origin.x = v25;
        v51.origin.y = v27;
        v51.size.width = v29;
        v51.size.height = v31;
        v40 = CGRectGetHeight(v51) * v19;
      }
    }

    else
    {
      v45[0] = v19;
      v50.origin.x = v25;
      v50.origin.y = v27;
      v50.size.width = v29;
      v50.size.height = v31;
      v41 = CGRectGetHeight(v50);
      v42 = 0.0;
      if (v21)
      {
        v42 = v34;
      }

      v40 = v41 - v45[0] - v42;
    }

    [*(v18 + 16) setAdditionalSafeAreaInsets_];
    v43 = *(v18 + 32);

    v15 = v20;
    memcpy(__dst, v20, 0x49uLL);
    v44 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
    swift_beginAccess();
    memcpy(&v43[v44], __dst, 0x49uLL);

    v13 = v47;
    v10 = v46;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_1D7F46278@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x49uLL);
}

id sub_1D7F462D0(const void *a1)
{
  v3 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  OUTLINED_FUNCTION_5_0(a1);
  memcpy((v1 + v3), a1, 0x49uLL);
  return sub_1D7F45D78();
}

uint64_t sub_1D7F46320(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D7F46398()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v1, v2, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_65_2();
  v5(v4);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  OUTLINED_FUNCTION_13_9();
  v6 = sub_1D8191774();
  if (!v6)
  {
    v12 = OUTLINED_FUNCTION_14_0();
    v13(v12);
LABEL_6:
    OUTLINED_FUNCTION_100();
    return;
  }

  v7 = v6;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D81922A4();
  OUTLINED_FUNCTION_13_9();
  sub_1D8191724();
  if ((v7 & 0x8000000000000000) == 0)
  {
    do
    {
      v8 = OUTLINED_FUNCTION_57_1(v14, &v15);
      OUTLINED_FUNCTION_63_1(v8, v9);
      (v16)(v14, 0);
      *(v0 + 16);

      sub_1D8192274();
      v0 = *(v16 + 16);
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
      OUTLINED_FUNCTION_58_1(&v15);
      --v7;
    }

    while (v7);
    v10 = OUTLINED_FUNCTION_14_0();
    v11(v10);
    goto LABEL_6;
  }

  __break(1u);
}

id sub_1D7F4658C()
{
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v2, v3, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26();
  v9 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v7 + 16))(v1, v0 + v9, v5);
  sub_1D818F974();
  v10 = OUTLINED_FUNCTION_14_0();
  v11(v10);
  if (!v14)
  {
    return 0;
  }

  v12 = *(v14 + 16);

  return v12;
}

void sub_1D7F466C0(char *a1@<X8>)
{
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_10();
  v11 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v9 + 16))(v2, v1 + v11, v7);
  sub_1D818F974();
  v12 = OUTLINED_FUNCTION_85();
  v13(v12);
  if (v17)
  {
    v14 = *(v17 + 32);

    sub_1D818F154();

    v15 = v16;
  }

  else
  {
    v15 = 6;
  }

  *a1 = v15;
}

void sub_1D7F46828()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v0, v1, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_65_2();
  v4(v3);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  OUTLINED_FUNCTION_13_9();
  v5 = sub_1D8191774();
  if (!v5)
  {
    v16 = OUTLINED_FUNCTION_14_0();
    v17(v16);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  v6 = v5;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D7E9842C(0, v5 & ~(v5 >> 63), 0);
  v7 = v20;
  OUTLINED_FUNCTION_13_9();
  sub_1D8191724();
  if ((v6 & 0x8000000000000000) == 0)
  {
    do
    {
      v8 = OUTLINED_FUNCTION_57_1(&v18, &v19);
      OUTLINED_FUNCTION_89_0(v8, v9);
      v10 = OUTLINED_FUNCTION_46_3();
      v8(v10);

      sub_1D818F154();

      v11 = v18;
      v20 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D7E9842C(v12 > 1, v13 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + v13 + 32) = v11;
      OUTLINED_FUNCTION_58_1(&v19);
      --v6;
    }

    while (v6);
    v14 = OUTLINED_FUNCTION_14_0();
    v15(v14);
    goto LABEL_8;
  }

  __break(1u);
}

id sub_1D7F46A7C()
{
  v1 = *(v0 + OBJC_IVAR___TSCardContainerController_dimmingView);
  v2 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  swift_beginAccess();
  return [v1 setBackgroundColor_];
}

id sub_1D7F46AE4()
{
  v1 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D7F46B30(void *a1)
{
  v3 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  OUTLINED_FUNCTION_5_0(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1D7F46A7C();
}

uint64_t sub_1D7F46B88(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F46BF0()
{
  v1 = v0;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - v5;
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, v1 + v11, v3);
  v12(v10, v6, v3);
  v13 = *(v8 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  swift_beginAccess();
  while (1)
  {
    sub_1D81917B4();
    if (*&v10[v13] == v20[0])
    {
      break;
    }

    v15 = sub_1D81918F4();
    v17 = *v16;

    v15(v20, 0);
    sub_1D81917C4();
    v18 = *(v17 + 32);

    *&v18[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha] = *(v1 + v14);
  }

  return sub_1D7F530BC(v10, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
}

double sub_1D7F46EF4()
{
  v1 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7F46F30(double a1)
{
  v3 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  v4 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_56(v4, v5);
  *(v1 + v3) = a1;
  return sub_1D7F46BF0();
}

uint64_t sub_1D7F46F78(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F46FE0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *sub_1D7F47024()
{
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v1, v2, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_2();
  v8 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v6 + 16))(v0, &v0[v8], v4);
  sub_1D818F974();
  (*(v6 + 8))(v0, v4);
  if (v17)
  {
    [*(v17 + 24) frame];
    MinY = CGRectGetMinY(v19);
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    [result safeAreaInsets];
    v13 = v12;

    if (MinY <= v13 * 0.5)
    {
      v15 = *(v17 + 16);
      OUTLINED_FUNCTION_16_1();

      return v0;
    }
  }

  v16 = *&v0[OBJC_IVAR___TSCardContainerController_rootViewController];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || (result = [v14 visibleViewController]) == 0)
  {

    return v16;
  }

  return result;
}

char *CardContainerController.init(rootViewController:)(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR___TSCardContainerController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___TSCardContainerController_transitionManager;
  type metadata accessor for ViewControllerTransitionManager();
  OUTLINED_FUNCTION_0_8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC8];
  *(v1 + v4) = v5;
  *(v5 + 16) = v6;
  v7 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  if (qword_1EDBB0B40 != -1)
  {
    OUTLINED_FUNCTION_35_1();
    swift_once();
  }

  memmove((v1 + v7), &qword_1EDBB0B48, 0x49uLL);
  v8 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  v9 = objc_opt_self();
  *(v2 + v8) = [v9 blackColor];
  *(v2 + OBJC_IVAR___TSCardContainerController_dimmingAlpha) = 0;
  type metadata accessor for CardContainerController.CardItem();
  sub_1D818F9D4();
  v10 = OBJC_IVAR___TSCardContainerController_dimmingView;
  v11 = objc_allocWithZone(type metadata accessor for CardDimmingView());
  *(v2 + v10) = OUTLINED_FUNCTION_4(v11, sel_initWithFrame_);
  v12 = OBJC_IVAR___TSCardContainerController_eventManager;
  OUTLINED_FUNCTION_7_21();
  sub_1D7E25D58(0, v13, v14, v15, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *(v2 + v12) = sub_1D818EF74();
  *(v2 + OBJC_IVAR___TSCardContainerController_rootViewController) = a1;
  v31 = v2;
  v32 = type metadata accessor for CardContainerController(0);
  v16 = a1;
  OUTLINED_FUNCTION_7();
  v19 = objc_msgSendSuper2(v17, v18);
  v20 = qword_1EDBB2098;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7F52404(&qword_1EDBB0640, type metadata accessor for CardContainerController);
  sub_1D818EA54();

  v22 = &selRef_blackColor;
  if (!LOBYTE(v29[0]))
  {
    v22 = &selRef_systemBackgroundColor;
  }

  v23 = [v9 *v22];
  v24 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  OUTLINED_FUNCTION_56(&v21[OBJC_IVAR___TSCardContainerController_dimmingColor], v30);
  v25 = *&v21[v24];
  *&v21[v24] = v23;

  if (qword_1EDBB20B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D818EA54();

  v26 = v29[0];
  v27 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  OUTLINED_FUNCTION_56(&v21[OBJC_IVAR___TSCardContainerController_dimmingAlpha], v29);
  *&v21[v27] = v26;

  return v21;
}