void sub_1D808241C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 144);
    v6 = v5;

    if (v5)
    {
      v7 = a3;
      v8 = sub_1D8191CC4();

      if (v8)
      {
        swift_beginAccess();
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = *(v9 + 144);
          *(v9 + 144) = 0;
        }
      }
    }
  }
}

void sub_1D8082504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v20 = sub_1D80828F8;
  v21 = v10;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7E64940;
  v19 = &block_descriptor_57;
  v11 = _Block_copy(&v16);

  v12 = a5;

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_1D7F15988;
  v13[4] = v8;
  v20 = sub_1D7F5E970;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7EB30D4;
  v19 = &block_descriptor_14;
  v14 = _Block_copy(&v16);
  v15 = v12;

  [v9 animateWithDuration:131076 delay:v11 options:v14 animations:0.2 completion:0.0];
  _Block_release(v14);
  _Block_release(v11);
}

id sub_1D80826E4(void *a1)
{
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  [a1 setTransform_];
  return [a1 setAlpha_];
}

void sub_1D8082758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();
  [a4 speak:v6 style:a3];
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D80829DC()
{
  result = qword_1ECA10390;
  if (!qword_1ECA10390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10390);
  }

  return result;
}

unint64_t sub_1D8082A34()
{
  result = qword_1ECA10398;
  if (!qword_1ECA10398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10398);
  }

  return result;
}

_BYTE *sub_1D8082A98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1D8082BB0()
{
  v1 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingCancelBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_1D8190DB4();
  v3 = sub_1D80F81E8();
  v4 = 0;
  v5 = *(v2 + 16);
  for (i = v2 + 40; ; i += 16)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    if (v3)
    {
      v3 = 1;
    }

    else
    {
      v7 = *(i - 8);

      v7(&v9, v8);

      v3 = v9;
    }

    ++v4;
  }

  __break(1u);
}

uint64_t sub_1D8082D10()
{
  v1 = sub_1D8190C64();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_updateGroup);
  sub_1D8190C54();
  sub_1D8191A44();

  (*(v3 + 8))(v7, v1);
  return sub_1D8190BC4() & 1;
}

uint64_t SwipeActionCollectionView.allowsSelection.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_setAllowsSelection_, a1 & 1);
  return sub_1D8082E98();
}

uint64_t sub_1D8082E98()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v6, sel_allowsSelection))
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDBC6030;
    v2 = sub_1D81919E4();
    return sub_1D818FD44("Enabled selection on SwipeActionCollectionView", 46, 2, &dword_1D7DFF000, v1, v2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDBC6030;
    v5 = sub_1D81919E4();
    return sub_1D818FD44("Disabled selection on SwipeActionCollectionView", 47, 2, &dword_1D7DFF000, v4, v5, MEMORY[0x1E69E7CC0]);
  }
}

void (*SwipeActionCollectionView.allowsSelection.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[3].super_class = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 allowsSelection];
  return sub_1D8083018;
}

void sub_1D8083018(objc_super **a1, char a2)
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
    objc_msgSendSuper2(v6 + 1, sel_setAllowsSelection_, receiver_low);
  }

  else
  {
    v6[2].receiver = receiver;
    v6[2].super_class = super_class;
    objc_msgSendSuper2(v6 + 2, sel_setAllowsSelection_, receiver_low);
    sub_1D8082E98();
  }

  free(v2);
}

void (*SwipeActionCollectionView.contentOffset.modify(objc_super **a1))(double **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[4].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[4].super_class = ObjectType;
  v3[1].receiver = v1;
  v3[1].super_class = ObjectType;
  objc_msgSendSuper2(v3 + 1, sel_contentOffset);
  v3->receiver = v5;
  v3->super_class = v6;
  return sub_1D808310C;
}

void sub_1D808310C(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v7 = *a1;
  if (a2)
  {
    v7[2].receiver = v6;
    v7[2].super_class = v5;
    objc_msgSendSuper2(v7 + 2, sel_setContentOffset_, v3, v4);
  }

  else
  {
    v7[3].receiver = v6;
    v7[3].super_class = v5;
    objc_msgSendSuper2(v7 + 3, sel_setContentOffset_, v3, v4);
    sub_1D7E5C3B8();
  }

  free(v2);
}

char *SwipeActionCollectionView.__allocating_init(frame:collectionViewLayout:sceneStateManager:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_14_33());
  OUTLINED_FUNCTION_29_16();
  return SwipeActionCollectionView.init(frame:collectionViewLayout:sceneStateManager:)(a1, a2);
}

id SwipeActionCollectionView.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_dependencyCleanupBlocks;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_1D8190DB4();
    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_1D808334C()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_dependencyCleanupBlocks) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingResetBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingCancelBlocks) = v1;
  v2 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_updateGroup;
  *(v0 + v2) = dispatch_group_create();
  v3 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionRestoreState;
  v4 = type metadata accessor for SwipeActionRestoreState(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8083434(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = [v4 coordinatingSwipeActionPanGestureRecognizer];
      [v5 removeTarget:v3 action:sel_handlePanGestureWithGestureRecognizer_];

      swift_unknownObjectRelease();
      v3 = v5;
    }
  }
}

void *sub_1D80834F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result coordinatingResetSwipeAction];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D8083554@<X0>(unsigned __int8 *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = [result coordinatingSwipeActionShouldCancel];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_1D80835D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 panGestureRecognizer];
      [v6 removeTarget:v3 action:sel_handlePanGestureWithGestureRecognizer_];

      v3 = v6;
    }
  }
}

void sub_1D808368C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager) + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_deferGroup);
  if (*(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) == 1)
  {
    dispatch_group_enter(v1);
  }

  else
  {
    dispatch_group_leave(v1);
  }
}

void sub_1D80836C4(void *a1)
{
  if ([a1 state] == 1)
  {
    sub_1D7E6931C();
  }
}

void sub_1D8083774(void *a1)
{
  if ([a1 state] == 1)
  {
    v2 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingResetBlocks;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_1D8190DB4();
      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);

        v6(v7);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }
}

id SwipeActionCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1)
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_14_33());
  v3 = OUTLINED_FUNCTION_29_16();
  v6 = [v4 v5];

  return v6;
}

double SwipeActionCollectionView.deferUpdates(block:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v42 = v11;
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v40 = v13 - v12;
  v41 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v39 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v38 = v17 - v16;
  v18 = sub_1D8190C64();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  v25 = *(v7 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_updateGroup);
  dispatch_group_enter(v25);
  v26 = swift_allocObject();
  v37 = a1;
  v26[2] = a1;
  v26[3] = a2;
  v27 = *(v7 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager);
  v26[4] = v25;
  v28 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_deferGroup;
  v29 = *(v27 + OBJC_IVAR____TtC5TeaUI18SwipeActionManager_deferGroup);
  v30 = v25;

  v31 = v29;
  sub_1D8190C54();
  sub_1D8191A44();

  (*(v20 + 8))(v24, v18);
  if (sub_1D8190BC4())
  {
    v37();
    dispatch_group_leave(v30);
  }

  else
  {
    v33 = *(v27 + v28);
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
    v34 = v33;
    v35 = sub_1D8191AB4();
    v48 = sub_1D8085C08;
    v49 = v26;
    OUTLINED_FUNCTION_3_94();
    v45 = 1107296256;
    v46 = sub_1D7E64940;
    v47 = &block_descriptor_58;
    v36 = _Block_copy(aBlock);

    sub_1D8190BF4();
    sub_1D7E287CC(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D7E1D3F8(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D7EBCDB4();
    sub_1D8192004();
    sub_1D8191A54();
    _Block_release(v36);

    (*(v42 + 8))(v40, v43);
    (*(v39 + 8))(v38, v41);
  }

  return result;
}

uint64_t sub_1D8083E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7E1D3F8(0, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for SwipeActionRestoreState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionRestoreState;
  swift_beginAccess();
  sub_1D7E535B8(v2 + v15, v11, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_1D7E53770(v11, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
  }

  v47 = a2;
  sub_1D8085EA4(v11, v14, type metadata accessor for SwipeActionRestoreState);
  v17 = sub_1D8082CD4();
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 16))(v2, &v14[*(v12 + 20)], ObjectType, v20);
    if (v23)
    {
      if (v22 == *v14 && v23 == *(v14 + 1))
      {
      }

      else
      {
        v25 = sub_1D8192634();

        if ((v25 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_1D80F84B4();
      if (v32)
      {
        v46 = v19;
        if (qword_1EDBB17D8 != -1)
        {
          swift_once();
        }

        v45 = qword_1EDBC6030;
        sub_1D7E136FC(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1D819FAC0;
        v34 = MEMORY[0x1E69E6158];
        *(v33 + 56) = MEMORY[0x1E69E6158];
        v35 = sub_1D7E13BF4();
        *(v33 + 64) = v35;
        v36 = v47;
        *(v33 + 32) = a1;
        *(v33 + 40) = v36;
        v49 = 0;
        v50 = 0xE000000000000000;
        v48 = *&v14[*(v12 + 28)];
        type metadata accessor for CGPoint();
        sub_1D8190DB4();
        sub_1D8192334();
        v37 = v49;
        v38 = v50;
        *(v33 + 96) = v34;
        *(v33 + 104) = v35;
        *(v33 + 72) = v37;
        *(v33 + 80) = v38;
        v39 = sub_1D81919E4();
        sub_1D818FD44("restoreSwipeActionState(caller: %{private}@): swipe action views restored to position = %{public}@", 98, 2, &dword_1D7DFF000, v45, v39, v33);
      }

      else
      {
        if (qword_1EDBB17D8 != -1)
        {
          swift_once();
        }

        v40 = qword_1EDBC6030;
        sub_1D7E136FC(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D819FAB0;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = sub_1D7E13BF4();
        v42 = v47;
        *(v41 + 32) = a1;
        *(v41 + 40) = v42;
        sub_1D8190DB4();
        v43 = sub_1D81919E4();
        sub_1D818FD44("restoreSwipeActionState(caller: %{private}@): swipe action view state not restored", 82, 2, &dword_1D7DFF000, v40, v43, v41);
      }

      swift_unknownObjectRelease();

      goto LABEL_22;
    }

LABEL_10:
    v45 = v8;
    v46 = v19;
    if (qword_1EDBB17D8 != -1)
    {
      swift_once();
    }

    v44 = qword_1EDBC6030;
    sub_1D7E136FC(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D819FAC0;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D7E13BF4();
    *(v26 + 64) = v27;
    v28 = v47;
    *(v26 + 32) = a1;
    *(v26 + 40) = v28;
    sub_1D818E994();
    sub_1D7E287CC(&unk_1EDBBC6A0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    sub_1D8190DB4();
    v29 = sub_1D81925B4();
    *(v26 + 96) = MEMORY[0x1E69E6158];
    *(v26 + 104) = v27;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;
    v31 = sub_1D81919E4();
    sub_1D818FD44("restoreSwipeActionState(caller: %{private}@): swipe action cancelled due to changed blueprint item at index path %{public}@", 123, 2, &dword_1D7DFF000, v44, v31, v26);

    sub_1D80F82E4();
    sub_1D7E6931C();
    swift_unknownObjectRelease();
    v8 = v45;
  }

LABEL_22:
  sub_1D8085F04(v14, type metadata accessor for SwipeActionRestoreState);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  swift_beginAccess();
  sub_1D8085F5C(v8, v3 + v15);
  return swift_endAccess();
}

uint64_t SwipeActionCollectionView.performBatchUpdates(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v7, v8, MEMORY[0x1E69E6720]);
  v10 = OUTLINED_FUNCTION_15_15(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1D7E52BD8(0xD000000000000022, 0x80000001D81D20F0, &v29 - v17);
  if (a1)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v38 = sub_1D7E74D6C;
    v39 = v19;
    OUTLINED_FUNCTION_3_94();
    v35 = 1107296256;
    v36 = sub_1D7E74D74;
    v37 = &block_descriptor_12_1;
    a1 = _Block_copy(aBlock);
  }

  sub_1D7E535B8(v18, v15, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1D8085C4C(v15, v22 + v20);
  *(v22 + v21) = v4;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v30;
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v38 = sub_1D8085CE0;
  v39 = v22;
  OUTLINED_FUNCTION_3_94();
  v35 = 1107296256;
  v36 = sub_1D7EB30D4;
  v37 = &block_descriptor_6_2;
  v26 = _Block_copy(aBlock);
  v27 = v4;
  sub_1D7E38808(v25, v24);

  v33.receiver = v27;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, sel_performBatchUpdates_completion_, a1, v26);
  _Block_release(v26);
  _Block_release(a1);
  return sub_1D7E53770(v18, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
}

uint64_t sub_1D808477C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = type metadata accessor for SwipeActionRestoreState(0);
  result = __swift_getEnumTagSinglePayload(a2, 1, v7);
  if (result != 1)
  {
    result = sub_1D8083E64(0xD000000000000022, 0x80000001D81D20F0);
  }

  if (a4)
  {
    return a4(a1 & 1);
  }

  return result;
}

uint64_t SwipeActionCollectionView.reloadSections(_:)()
{
  v2 = OUTLINED_FUNCTION_36_12();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_33_12();
  sub_1D7E52BD8(v7, v8, v9);
  v10 = sub_1D818E814();
  v22.receiver = v0;
  v22.super_class = v2;
  objc_msgSendSuper2(&v22, sel_reloadSections_, v10);

  v11 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_11_38(v1, v12, v11);
  if (!v13)
  {
    OUTLINED_FUNCTION_0_8();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v15 = v0;
    v16 = OUTLINED_FUNCTION_30_19();
    SwipeActionCollectionView.performBatchUpdates(_:completion:)(v16, v17, v18, v14);
  }

  OUTLINED_FUNCTION_0_163();
  return sub_1D7E53770(v1, v19, v20);
}

Swift::Void __swiftcall SwipeActionCollectionView.reloadItems(at:)(Swift::OpaquePointer at)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_25_15();
  sub_1D7E52BD8(v8, v9, v10);
  sub_1D818E994();
  OUTLINED_FUNCTION_17_7();
  v11 = sub_1D8191304();
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_reloadItemsAtIndexPaths_, v11);

  v12 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_9_31(v12);
  if (!v13)
  {
    OUTLINED_FUNCTION_0_8();
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    v15 = v2;
    v16 = OUTLINED_FUNCTION_30_19();
    SwipeActionCollectionView.performBatchUpdates(_:completion:)(v16, v17, v18, v14);
  }

  OUTLINED_FUNCTION_0_163();
  sub_1D7E53770(v1, v19, v20);
}

uint64_t SwipeActionCollectionView.insertSections(_:)()
{
  v2 = OUTLINED_FUNCTION_36_12();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_33_12();
  sub_1D7E52BD8(v7, v8, v9);
  v10 = sub_1D818E814();
  v19.receiver = v0;
  v19.super_class = v2;
  objc_msgSendSuper2(&v19, sel_insertSections_, v10);

  v11 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_11_38(v1, v12, v11);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_33_12();
    sub_1D8083E64(v14, v15);
  }

  OUTLINED_FUNCTION_0_163();
  return sub_1D7E53770(v1, v16, v17);
}

Swift::Void __swiftcall SwipeActionCollectionView.insertItems(at:)(Swift::OpaquePointer at)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_25_15();
  sub_1D7E52BD8(v8, v9, v10);
  sub_1D818E994();
  OUTLINED_FUNCTION_17_7();
  v11 = sub_1D8191304();
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_insertItemsAtIndexPaths_, v11);

  v12 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_9_31(v12);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_25_15();
    sub_1D8083E64(v14, v15);
  }

  OUTLINED_FUNCTION_0_163();
  sub_1D7E53770(v1, v16, v17);
}

Swift::Void __swiftcall SwipeActionCollectionView.moveSection(_:toSection:)(Swift::Int _, Swift::Int toSection)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v7, v8, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v9);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  sub_1D7E52BD8(0xD000000000000019, 0x80000001D81D21A0, v2);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_moveSection_toSection_, _, toSection);
  v11 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_9_31(v11);
  if (!v12)
  {
    sub_1D8083E64(0xD000000000000019, 0x80000001D81D21A0);
  }

  OUTLINED_FUNCTION_0_163();
  sub_1D7E53770(v2, v13, v14);
}

uint64_t SwipeActionCollectionView.moveItem(at:to:)()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26();
  v8 = OUTLINED_FUNCTION_25_15();
  sub_1D7E52BD8(v8, v9, v10);
  v11 = sub_1D818E8E4();
  v12 = sub_1D818E8E4();
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_moveItemAtIndexPath_toIndexPath_, v11, v12);

  v13 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_11_38(v1, v14, v13);
  if (!v15)
  {
    v16 = OUTLINED_FUNCTION_25_15();
    sub_1D8083E64(v16, v17);
  }

  OUTLINED_FUNCTION_0_163();
  return sub_1D7E53770(v1, v18, v19);
}

uint64_t SwipeActionCollectionView.deleteSections(_:)()
{
  v2 = OUTLINED_FUNCTION_36_12();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_33_12();
  sub_1D7E52BD8(v7, v8, v9);
  v10 = sub_1D818E814();
  v19.receiver = v0;
  v19.super_class = v2;
  objc_msgSendSuper2(&v19, sel_deleteSections_, v10);

  v11 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_11_38(v1, v12, v11);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_33_12();
    sub_1D8083E64(v14, v15);
  }

  OUTLINED_FUNCTION_0_163();
  return sub_1D7E53770(v1, v16, v17);
}

uint64_t sub_1D80853D8()
{
  OUTLINED_FUNCTION_37_10();
  v2 = sub_1D818E8B4();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  sub_1D818E824();
  v9 = v1;
  v0(v8);

  return (*(v4 + 8))(v8, v2);
}

Swift::Void __swiftcall SwipeActionCollectionView.deleteItems(at:)(Swift::OpaquePointer at)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_25_15();
  sub_1D7E52BD8(v8, v9, v10);
  sub_1D818E994();
  OUTLINED_FUNCTION_17_7();
  v11 = sub_1D8191304();
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_deleteItemsAtIndexPaths_, v11);

  v12 = type metadata accessor for SwipeActionRestoreState(0);
  OUTLINED_FUNCTION_9_31(v12);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_25_15();
    sub_1D8083E64(v14, v15);
  }

  OUTLINED_FUNCTION_0_163();
  sub_1D7E53770(v1, v16, v17);
}

uint64_t sub_1D80855D0()
{
  OUTLINED_FUNCTION_37_10();
  sub_1D818E994();
  v2 = sub_1D8191314();
  v3 = v1;
  v0(v2);
}

void sub_1D8085C08()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  dispatch_group_leave(v1);
}

uint64_t sub_1D8085C4C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1D3F8(0, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8085CE0(char a1)
{
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_15_15(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D808477C(a1, v1 + v10, v12, v13);
}

uint64_t sub_1D8085DBC(uint64_t a1)
{
  sub_1D7E136FC(0, &qword_1EDBB5010, qword_1EDBB5018, &protocol descriptor for BlueprintViewProviderLoadAwareType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8085EA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D8085F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D8085F5C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1D3F8(0, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI22StackPreviewStepResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(UIViewController *viewController, TeaUI::ViewControllerTransitionManager::Transition transition, Swift::Bool animated)
{
  v4 = v3;
  v7 = *transition;
  OUTLINED_FUNCTION_59(v3 + 16, v23);
  OUTLINED_FUNCTION_3_95();
  if (v8 && (v9 = sub_1D7E7E198(viewController), (v10 & 1) != 0))
  {
    v11 = *(*(v3 + 56) + v9);
  }

  else
  {
    v11 = 4;
  }

  v12 = swift_endAccess();
  if (v7)
  {
    switch(v11)
    {
      case 1:

        goto LABEL_12;
      case 2:
      case 3:
        OUTLINED_FUNCTION_0_164();
        goto LABEL_11;
      case 4:
        goto LABEL_17;
      default:
LABEL_11:
        v13 = sub_1D8192634();

        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        [(UIViewController *)viewController beginAppearanceTransition:0 animated:animated];
        OUTLINED_FUNCTION_15_2(v3 + 16, v23);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_55();
        break;
    }

LABEL_16:
    sub_1D7EF61CC();
    *(v3 + 16) = v22;
    swift_endAccess();
  }

  else
  {
    switch(v11)
    {
      case 2:
        OUTLINED_FUNCTION_0_164();
        goto LABEL_14;
      case 3:

        goto LABEL_15;
      case 4:
        goto LABEL_15;
      default:
LABEL_14:
        v14 = sub_1D8192634();

        if (v14)
        {
LABEL_15:
          [(UIViewController *)viewController beginAppearanceTransition:1 animated:animated];
          OUTLINED_FUNCTION_15_2(v3 + 16, v23);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_55();
          goto LABEL_16;
        }

LABEL_17:
        MEMORY[0x1EEE9AC00](v12);
        sub_1D7E13588();
        v15 = sub_1D8191E44();
        sub_1D818F014();

        break;
    }
  }

  OUTLINED_FUNCTION_59(v4 + 16, v23);
  v16 = *(v4 + 16);
  if (!*(v16 + 16) || (v17 = sub_1D7E7E198(viewController), (v18 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v19 = *(*(v16 + 56) + v17);
  v20 = swift_endAccess();
  if (v11 == 4)
  {
    if (v19 == 4)
    {
      return;
    }

LABEL_26:
    MEMORY[0x1EEE9AC00](v20);
    sub_1D7E13588();
    v21 = sub_1D8191E44();
    sub_1D818F014();

    return;
  }

  if (v19 == 4)
  {
    goto LABEL_26;
  }

  v20 = sub_1D7EE2CF0(v11, v19);
  if ((v20 & 1) == 0)
  {
    goto LABEL_26;
  }
}

Swift::Void __swiftcall ViewControllerTransitionManager.endTransition(viewController:)(UIViewController *viewController)
{
  v2 = v1;
  OUTLINED_FUNCTION_59(v1 + 16, &v40);
  OUTLINED_FUNCTION_3_95();
  if (!v4 || (v5 = sub_1D7E7E198(viewController), (v6 & 1) == 0))
  {
    swift_endAccess();
    v18 = sub_1D81919C4();
    sub_1D7E1A4D0(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D819FAB0;
    v20 = [(UIViewController *)viewController description];
    v21 = sub_1D8190F14();
    v23 = v22;

    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D7E13BF4();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    sub_1D7E13588();
    v24 = sub_1D8191E44();
    sub_1D818FD44("Attempting to end appearance state for view controller that is not tracked, %@", 78, 2, &dword_1D7DFF000, v24, v18, v19);
LABEL_6:

    return;
  }

  v7 = *(*(v1 + 56) + v5);
  swift_endAccess();
  v8 = MEMORY[0x1E69E6158];
  switch(v7)
  {
    case 1:
    case 3:
      v38 = sub_1D81919B4();
      sub_1D7E1A4D0(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D819FAC0;
      v10 = [(UIViewController *)viewController description];
      v11 = sub_1D8190F14();
      v13 = v12;

      *(v9 + 56) = v8;
      v14 = sub_1D7E13BF4();
      *(v9 + 64) = v14;
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1D8192334();
      v15 = v40;
      v16 = v41;
      *(v9 + 96) = v8;
      *(v9 + 104) = v14;
      *(v9 + 72) = v15;
      *(v9 + 80) = v16;
      sub_1D7E13588();
      v17 = sub_1D8191E44();
      sub_1D818FD44("Attempting to end appearance state for view controller that is already transitioned, %@, state=%@", 97, 2, &dword_1D7DFF000, v17, v38, v9);

      break;
    default:
      OUTLINED_FUNCTION_15_2(v1 + 16, &v40);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_4_69();
      sub_1D7EF61CC();
      *(v1 + 16) = v39;
      swift_endAccess();
      [(UIViewController *)viewController endAppearanceTransition];
      break;
  }

  OUTLINED_FUNCTION_59(v2 + 16, &v40);
  v25 = *(v2 + 16);
  if (*(v25 + 16) && (v26 = sub_1D7E7E198(viewController), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + v26);
    swift_endAccess();
    if ((sub_1D7EE2CF0(v7, v28) & 1) == 0)
    {
      v29 = sub_1D81919B4();
      sub_1D7E1A4D0(0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D819FAC0;
      v31 = [(UIViewController *)viewController description];
      v32 = sub_1D8190F14();
      v34 = v33;

      *(v30 + 56) = v8;
      v35 = sub_1D7E13BF4();
      *(v30 + 64) = v35;
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      v36 = 0xE900000000000067;
      v37 = 0x6E69726165707061;
      switch(v28)
      {
        case 1:
          v36 = 0xE800000000000000;
          v37 = 0x6465726165707061;
          break;
        case 2:
          v36 = 0xEC000000676E6972;
          goto LABEL_17;
        case 3:
          v36 = 0xEB00000000646572;
LABEL_17:
          v37 = 0x6165707061736964;
          break;
        default:
          break;
      }

      *(v30 + 96) = v8;
      *(v30 + 104) = v35;
      *(v30 + 72) = v37;
      *(v30 + 80) = v36;
      sub_1D7E13588();
      v24 = sub_1D8191E44();
      sub_1D818FD44("Transition manager, end, %@, state=%@", 37, 2, &dword_1D7DFF000, v24, v29, v30);
      goto LABEL_6;
    }
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Void __swiftcall ViewControllerTransitionManager.clearState(viewController:matching:)(UIViewController *viewController, TeaUI::ViewControllerTransitionManager::State matching)
{
  v3 = v2;
  v5 = *matching;
  OUTLINED_FUNCTION_59(v2 + 16, v12);
  OUTLINED_FUNCTION_3_95();
  if (v6 && (v7 = sub_1D7E7E198(viewController), (v8 & 1) != 0))
  {
    v9 = *(*(v2 + 56) + v7);
  }

  else
  {
    v9 = 4;
  }

  swift_endAccess();
  if (v5 == 4)
  {
    if (v9 != 4)
    {
      return;
    }
  }

  else if (v9 == 4 || (sub_1D7EE2CF0(v5, v9) & 1) == 0)
  {
    return;
  }

  OUTLINED_FUNCTION_15_2(v3 + 16, v12);
  sub_1D7E7E198(viewController);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_1D7EF8318();
    sub_1D8192374();
    sub_1D8192384();
    *(v3 + 16) = v11;
  }

  swift_endAccess();
}

TeaUI::ViewControllerTransitionManager::State_optional __swiftcall ViewControllerTransitionManager.state(viewController:)(UIViewController *viewController)
{
  v4 = v1;
  OUTLINED_FUNCTION_59(v2 + 16, v10);
  OUTLINED_FUNCTION_3_95();
  if (v5 && (v6 = sub_1D7E7E198(viewController), (v7 & 1) != 0))
  {
    v8 = *(*(v2 + 56) + v6);
  }

  else
  {
    v8 = 4;
  }

  *v4 = v8;
  return swift_endAccess();
}

TeaUI::ViewControllerTransitionManager::Transition_optional __swiftcall ViewControllerTransitionManager.Transition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

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

uint64_t ViewControllerTransitionManager.Transition.rawValue.getter()
{
  if (*v0)
  {
    return 0x6165707061736964;
  }

  else
  {
    return 0x6E69726165707061;
  }
}

uint64_t sub_1D8086A8C@<X0>(uint64_t *a1@<X8>)
{
  result = ViewControllerTransitionManager.Transition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

TeaUI::ViewControllerTransitionManager::State_optional __swiftcall ViewControllerTransitionManager.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewControllerTransitionManager.State.rawValue.getter()
{
  result = 0x6E69726165707061;
  switch(*v0)
  {
    case 1:
      result = 0x6465726165707061;
      break;
    case 2:
    case 3:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8086BC4@<X0>(uint64_t *a1@<X8>)
{
  result = ViewControllerTransitionManager.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ViewControllerTransitionManager.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1D8086C00(void *a1, char a2, char a3)
{
  BYTE8(v11) = 0;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000033, 0x80000001D81D27E0);
  v5 = [a1 description];
  v6 = sub_1D8190F14();
  v8 = v7;

  MEMORY[0x1DA713260](v6, v8);

  MEMORY[0x1DA713260](0x3D6574617473202CLL, 0xE800000000000000);
  sub_1D8087240();
  v9 = sub_1D8190F84();
  MEMORY[0x1DA713260](v9);

  MEMORY[0x1DA713260](0x69736E617274202CLL, 0xED00003D6E6F6974);
  *&v11 = a3 & 1;
  sub_1D8192334();
  return *(&v11 + 1);
}

uint64_t sub_1D8086D60(void *a1, char a2, char a3)
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD00000000000001BLL, 0x80000001D81D27C0);
  v6 = [a1 description];
  v7 = sub_1D8190F14();
  v9 = v8;

  MEMORY[0x1DA713260](v7, v9);

  v10 = 0xE800000000000000;
  MEMORY[0x1DA713260](0x3D6574617473202CLL, 0xE800000000000000);
  v11 = 0x6465726165707061;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v10 = 0xEC000000676E6972;
      goto LABEL_5;
    case 3:
      v10 = 0xEB00000000646572;
LABEL_5:
      v11 = 0x6165707061736964;
      break;
    default:
      v10 = 0xE900000000000067;
      v11 = 0x6E69726165707061;
      break;
  }

  MEMORY[0x1DA713260](v11, v10);

  MEMORY[0x1DA713260](0x74616D696E61202CLL, 0xEB000000003D6465);
  if (a3)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a3)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v12, v13);

  return 0;
}

uint64_t ViewControllerTransitionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D8086FB0()
{
  result = qword_1ECA103C8;
  if (!qword_1ECA103C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA103C8);
  }

  return result;
}

unint64_t sub_1D8087008()
{
  result = qword_1ECA103D0;
  if (!qword_1ECA103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA103D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewControllerTransitionManager.Transition(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ViewControllerTransitionManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D8087240()
{
  if (!qword_1ECA103D8)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA103D8);
    }
  }
}

void sub_1D8087290(char a1, int a2, id a3)
{
  v9 = a3;
  if (a1)
  {
    [a3 reloadData];
  }

  else
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1D8087698;
    *(v4 + 24) = &v8;
    v13 = sub_1D7E74D6C;
    v14 = v4;
    OUTLINED_FUNCTION_1_118();
    OUTLINED_FUNCTION_0_165();
    v11 = v5;
    v12 = &block_descriptor_59;
    v6 = _Block_copy(aBlock);

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v3) = OUTLINED_FUNCTION_2_108(v4, "");

    if (v3)
    {
      __break(1u);
    }
  }
}

void *BlueprintPrefetcher.view.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void BlueprintPrefetcher.view.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t BlueprintPrefetcher.__allocating_init(blueprintLayoutProvider:prefetcher:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BlueprintPrefetcher.init(blueprintLayoutProvider:prefetcher:)(a1, a2);
  return v4;
}

id *BlueprintPrefetcher.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 18));

  return v0;
}

uint64_t BlueprintPrefetcher.__deallocating_deinit()
{
  BlueprintPrefetcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t static NavigationItemStyle.default.getter()
{
  if (qword_1EDBB9828 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_1EDBB9830, 0x5AuLL);
  OUTLINED_FUNCTION_14_34();
  return sub_1D7E417E0(__dst, &v1);
}

void *NavigationItemStyle.BarStyle.tintColor.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  result = 0;
  switch(*(v0 + 40))
  {
    case 2:
      goto LABEL_3;
    case 4:
      v1 = *(v0 + 8);
LABEL_3:
      v2 = v1;
      goto LABEL_4;
    case 5:
      return result;
    default:
LABEL_4:
      v4 = v2;
      return v2;
  }
}

id NavigationItemStyle.BarStyle.barTintColor.getter()
{
  v1 = *v0;
  result = 0;
  switch(*(v0 + 40))
  {
    case 2:
    case 4:
      return result;
    case 5:
      result = [objc_opt_self() systemBackgroundColor];
      break;
    default:
      v3 = v1;
      result = v1;
      break;
  }

  return result;
}

uint64_t NavigationItemStyle.BarStyle.barStyle.getter()
{
  if (((1 << v0[40]) & 0x2B) != 0)
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t NavigationItemStyle.BarStyle.isTranslucent.getter()
{
  LOBYTE(v1) = 1;
  switch(*(v0 + 40))
  {
    case 2:
    case 4:
    case 5:
      return v1 & 1;
    default:
      v1 = *(v0 + 16);
      break;
  }

  return v1 & 1;
}

id NavigationItemStyle.BarStyle.backgroundImage.getter()
{
  v1 = 0;
  switch(*(v0 + 40))
  {
    case 1:
    case 2:
    case 3:
    case 5:
      return v1;
    case 4:
      v1 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      break;
    default:
      v1 = *(v0 + 32);
      v3 = v1;
      break;
  }

  return v1;
}

uint64_t NavigationItemStyle.BarStyle.backgroundEffects.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() ts:*v0 visualEffectsForBarWithBackgroundColor:?];
  sub_1D7E0A1A8(0, &qword_1EDBB31E8, 0x1E69DD290);
  v2 = sub_1D8191314();

  return v2;
}

id NavigationItemStyle.BarStyle.blurEffect.getter()
{
  if (*(v0 + 40) == 2)
  {
    return [objc_opt_self() effectWithStyle_];
  }

  else
  {
    return 0;
  }
}

void *NavigationItemStyle.BarStyle.buttonBackgroundColor.getter()
{
  if (*(v0 + 40) > 4u)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

__n128 NavigationItemStyle.init(navigationBar:toolbar:shouldUseImmersiveEffects:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  result = *a2;
  v10 = *(a2 + 16);
  *(a4 + 48) = *a2;
  *(a4 + 64) = v10;
  *(a4 + 80) = v6;
  *(a4 + 88) = v7;
  *(a4 + 89) = a3;
  return result;
}

id NavigationItemStyle.BarStyle.pillButtonBackground.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = objc_opt_self();
  v5 = v4;
  switch(v3)
  {
    case 2:
      goto LABEL_5;
    case 4:
      v2 = v1;
LABEL_5:
      v1 = v2;
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 5:
      goto LABEL_6;
    default:
      if (v1)
      {
LABEL_3:
        v6 = v1;
      }

      else
      {
LABEL_6:
        v6 = [v4 blackColor];
      }

      v7 = v6;
      v8 = [v5 whiteColor];
      v9 = [v5 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

      return v9;
  }
}

uint64_t NavigationItemStyle.BarStyle.isTransparentWhiteBackground.getter()
{
  if (*(v0 + 40) == 4)
  {
    v1 = *(v0 + 16);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t NavigationItemStyle.BarStyle.isTransparentDarkBackground.getter()
{
  if (*(v0 + 40) == 4)
  {
    v1 = *(v0 + 16) ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

id NavigationItemStyle.navigationBar.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return OUTLINED_FUNCTION_8_42(*(v1 + 40), a1, v2, v3, v4, v5, v6);
}

id NavigationItemStyle.toolbar.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return OUTLINED_FUNCTION_8_42(*(v1 + 88), a1, v2, v3, v4, v5, v6);
}

uint64_t NavigationItemStyle.multiColorStatusBarStyle.getter()
{
  memcpy(__dst, v0, 0x5AuLL);
  OUTLINED_FUNCTION_14_34();
  return sub_1D7E417E0(__dst, &v2);
}

id NavigationItemStyle.compressedStyle(mainBackgroundColor:)@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v26 = *(v2 + 56);
  v27 = *(v2 + 48);
  v24 = *(v2 + 72);
  v25 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v23 = *(v2 + 89);
  v12 = sub_1D8088028(a2);
  v13 = v12;
  switch(v9)
  {
    case 1:
    case 3:
      v7 &= 1u;
      v14 = v5;
      v15 = v6;
      v8 = 0;
      v16 = 1;
      goto LABEL_5;
    case 2:
      v20 = v6;
      v21 = v7;
      v8 = 0;
      v16 = 1;
      v4 = v13;
      v5 = v7;
      v7 = 1;
      break;
    case 4:
      v16 = 4;
      sub_1D7E442D8(v4, v5, v7, v6, v8, 4);

      break;
    case 5:

      v16 = 5;
      break;
    default:
      v7 &= 1u;
      v17 = v5;
      v18 = v6;
      v19 = v8;
      v16 = 0;
LABEL_5:
      v4 = v13;
      break;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v16;
  *(a1 + 48) = v27;
  *(a1 + 56) = v26;
  *(a1 + 64) = v25;
  *(a1 + 72) = v24;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 89) = v23;

  return sub_1D7E442D8(v27, v26, v25, v24, v10, v11);
}

id sub_1D8088028(void *a1)
{
  sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  v3 = sub_1D8191CC4();

  if ((v3 & 1) != 0 || (v4 = [a1 CGColor], Alpha = CGColorGetAlpha(v4), v4, Alpha < 1.0))
  {
    v6 = [v1 whiteColor];

    return v6;
  }

  else
  {

    return a1;
  }
}

id NavigationItemStyle.immersiveStyle(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *(v2 + 56);
  v29 = *(v2 + 48);
  v5 = *(v2 + 72);
  v27 = *(v2 + 64);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v26 = *(v2 + 89);
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  if (a1)
  {
    v10 = a1;
    [v10 ts_luminance];
    if (v11 >= 0.7)
    {
      v14 = [v8 blackColor];

      v12 = 1;
      v13 = 2;
      v10 = v9;
      v9 = v14;
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  v15 = v9;
  v16 = [v8 secondarySystemFillColor];
  v17 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v18 = [v16 resolvedColorWithTraitCollection_];

  *a2 = 0;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = 4;
  *(a2 + 48) = v29;
  *(a2 + 56) = v28;
  *(a2 + 64) = v27;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  *(a2 + 89) = v26;
  OUTLINED_FUNCTION_12_37();

  return sub_1D7E442D8(v19, v20, v21, v22, v23, v24);
}

void NavigationItemStyle.style(for:mainBackgroundColor:topContentColor:)(unsigned __int8 *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  memcpy(__dst, v4, 0x5AuLL);
  if (sub_1D8190B24())
  {
    goto LABEL_2;
  }

  if (v8 == 1)
  {
    if (a2)
    {
      v41 = a2;
    }

    else
    {
      v41 = [objc_opt_self() whiteColor];
    }

    v19 = a2;
    NavigationItemStyle.compressedStyle(mainBackgroundColor:)(a4, v41);
    OUTLINED_FUNCTION_17_27();
  }

  else
  {
    if (BYTE1(__dst[11]) != 1 || ((v9 | v10 ^ 1) & 1) == 0)
    {
LABEL_2:
      OUTLINED_FUNCTION_14_34();
      sub_1D7E417E0(__dst, v43);
      OUTLINED_FUNCTION_17_27();
      return;
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a2;
    }

    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = v13;
    if (v11)
    {
      v15 = v11;
      [v15 ts_luminance];
      if (v16 >= 0.7)
      {
        v23 = [v12 blackColor];

        v17 = 1;
        v18 = 2;
        v15 = v14;
        v14 = v23;
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      v42 = v17;
      v22 = v14;
    }

    else
    {
      v22 = v13;
      v42 = 0;
      v18 = 1;
    }

    v24 = __dst[7];
    v40 = __dst[6];
    v25 = __dst[8];
    v26 = __dst[9];
    v27 = __dst[10];
    v28 = __dst[11];
    v39 = v22;
    v29 = [v12 secondarySystemFillColor];
    v30 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v31 = [v29 resolvedColorWithTraitCollection_];

    *a4 = 0;
    *(a4 + 8) = v22;
    *(a4 + 16) = v42;
    *(a4 + 24) = v31;
    *(a4 + 32) = 0;
    *(a4 + 40) = 4;
    *(a4 + 48) = v40;
    *(a4 + 56) = v24;
    *(a4 + 64) = v25;
    *(a4 + 72) = v26;
    *(a4 + 80) = v27;
    *(a4 + 88) = v28;
    *(a4 + 89) = 1;
    OUTLINED_FUNCTION_17_27();

    sub_1D7E442D8(v32, v33, v34, v35, v36, v37);
  }
}

id static NavigationItemStyle.modernStyle(backgroundColor:foregroundColor:traitCollection:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  [a1 ts_luminance];
  v4 = [objc_opt_self() clearColor];
  v5 = a2;
  v6 = v4;
  v7 = a2;
  if (!a2)
  {
    v7 = UIColor.legibleForeground.getter();
    v5 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 5;

  return v5;
}

void sub_1D8088668(uint64_t a1)
{
  if (!qword_1EDBAE438)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2F68, 0x1E69DC888);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE438);
    }
  }
}

uint64_t sub_1D80886DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 90))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 89);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8088728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MotionTransform(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 41))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 5)
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

uint64_t storeEnumTagSinglePayload for MotionTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8088824(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D8088874@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for OverlayAlertManager();
  result = sub_1D818EFE4();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D80888E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0631C(0, &qword_1EDBBD570, &protocol descriptor for OverlayAlertRendererType);
  result = sub_1D818EFF4();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0631C(0, qword_1EDBBD1E0, &protocol descriptor for OverlayAlertLayoutAttributesFactoryType);
  result = sub_1D818EFF4();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0631C(0, &qword_1EDBBD4A8, &protocol descriptor for AccessibilityAnnouncerType);
  result = sub_1D818EFF4();
  if (v21)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v4 = MEMORY[0x1EEE9AC00](v3);
    v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D8088F34(*v6, *v11, *v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D8088C34(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OverlayAlertStyler();
  v3 = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52F93C8;
  *a1 = v3;
}

void *sub_1D8088C9C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0631C(0, &qword_1EDBBD580, &protocol descriptor for OverlayAlertStylerType);
  result = sub_1D818EFF4();
  if (v25)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_2();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_15();
    v11 = (v10 - v9);
    (*(v12 + 16))(v10 - v9);
    v13 = *v11;
    v14 = type metadata accessor for OverlayAlertStyler();
    v23[3] = v14;
    v23[4] = &off_1F52F93C8;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    OUTLINED_FUNCTION_2();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_15();
    v20 = (v19 - v18);
    (*(v21 + 16))(v19 - v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_1F52F93C8;
    v16[2] = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v24);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D8088EB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[5] = type metadata accessor for OverlayAlertRenderer();
  a4[6] = &off_1F530A138;
  a4[2] = a1;
  a4[10] = type metadata accessor for OverlayAlertLayoutAttributesFactory();
  a4[11] = &off_1F52E9440;
  a4[7] = a2;
  a4[15] = type metadata accessor for AccessibilityAnnouncer();
  a4[16] = &off_1F5300138;
  a4[12] = a3;
  a4[17] = 0;
  a4[18] = 0;
  return a4;
}

void *sub_1D8088F34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v33 = type metadata accessor for OverlayAlertRenderer();
  v34 = &off_1F530A138;
  v32[0] = a1;
  v30 = type metadata accessor for OverlayAlertLayoutAttributesFactory();
  v31 = &off_1F52E9440;
  v29[0] = a2;
  v27 = v6;
  v28 = &off_1F5300138;
  v26[0] = a3;
  type metadata accessor for OverlayAlertManager();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = sub_1D8088EB0(*v11, *v16, *v21, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v23;
}

CGFloat sub_1D8089214(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetHeight(v9);
  return a1;
}

uint64_t ImageProcessor.process(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v8);
  sub_1D7E0631C(0, qword_1EDBB74A8, &protocol descriptor for ProcessedImageRequestType);
  type metadata accessor for ProcessedImageRequest();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = v5;
  v2 = sub_1D8190DB4();
  sub_1D7F1E6C0(v2, &v5);

  if (!v6)
  {

    sub_1D7F25CC8(&v5);
    return 0;
  }

  v8[0] = v5;
  v8[1] = v6;
  sub_1D7E05450(&v7, v9);

  sub_1D7E05450(v9, v10);
  v3 = sub_1D80893D4(v10, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v3;
}

id ImageProcessor.process(_:imageFromCache:)(uint64_t a1, void *a2)
{
  sub_1D7E0E768(a1, v7);
  sub_1D7E0631C(0, qword_1EDBB74A8, &protocol descriptor for ProcessedImageRequestType);
  type metadata accessor for ProcessedImageRequest();
  if (swift_dynamicCast())
  {
    if (*(v6 + 64))
    {
      v2 = [a2 imageWithRenderingMode_];
    }

    else
    {
      v2 = a2;
    }

    v4 = v2;

    return v4;
  }

  else
  {

    return a2;
  }
}

uint64_t OpenInNewTabCommandHandler.__allocating_init(navigator:sceneProvider:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1D7E05450(a2, v4 + 24);
  *(v4 + 16) = a1;
  return v4;
}

uint64_t OpenInNewTabCommandHandler.init(navigator:sceneProvider:)(uint64_t a1, __int128 *a2)
{
  sub_1D7E05450(a2, v2 + 24);
  *(v2 + 16) = a1;
  return v2;
}

void *OpenInNewTabCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D80899B8(v4 + 24, &v12);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(&v12, v15);
    v6 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    sub_1D8089A48(&v12);
  }

  sub_1D80899B8(v4 + 24, &v12);
  v8 = v15;
  if (v15)
  {
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(&v12, v15);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    sub_1D8089A48(&v12);
    v10 = 0;
  }

  v12 = v6;
  v13 = v10;
  v14 = 1;
  sub_1D80CDA70(a4, &v12);
  return sub_1D7FF1564(v12, v13, v14);
}

uint64_t sub_1D80899B8(uint64_t a1, uint64_t a2)
{
  sub_1D8089B50(0, qword_1EDBB1060, &qword_1EDBBA418, &protocol descriptor for SceneProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8089A48(uint64_t a1)
{
  sub_1D8089B50(0, qword_1EDBB1060, &qword_1EDBBA418, &protocol descriptor for SceneProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OpenInNewTabCommandHandler.deinit()
{

  sub_1D8089A48(v0 + 24);
  return v0;
}

uint64_t OpenInNewTabCommandHandler.__deallocating_deinit()
{
  OpenInNewTabCommandHandler.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8089B50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t StackNavigatorError.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8089C7C()
{
  result = qword_1ECA103E0;
  if (!qword_1ECA103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA103E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackNavigatorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8089DC0()
{
  sub_1D818F834();
  v0 = v4;
  if (!v4)
  {
    return sub_1D808AFA4(v3);
  }

  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 48))(v0, v1);
  sub_1D803ABD8();
  sub_1D818F184();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1D8089E94()
{
  sub_1D818F844();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 40))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

id sub_1D8089F14()
{
  v1 = OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator____lazy_storage___accessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator____lazy_storage___accessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator____lazy_storage___accessoryView);
  }

  else
  {
    v4 = sub_1D8089F78();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1D8089F78()
{
  sub_1D818F844();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 32))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  sub_1D808A690(v2);
  return v2;
}

id FloatingTabBarAcccessoryCoordinator.init(lazyAccessoryViewProvider:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator_presentationMode] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator____lazy_storage___accessoryView] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator_lazyAccessoryViewProvider] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FloatingTabBarAcccessoryCoordinator();

  v3 = objc_msgSendSuper2(&v6, sel_init);
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v3;

  sub_1D818F854();

  return v4;
}

uint64_t sub_1D808A17C(uint64_t a1, uint64_t a2)
{
  sub_1D7E0E768(a1, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &protocol witness table for FloatingTabBarAcccessoryCoordinator;
  }

  else
  {
    v3 = 0;
  }

  v4 = v8;
  v5 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(Strong, v3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

double sub_1D808A230(char a1)
{
  v2 = v1;
  v4 = sub_1D8089E94();
  if (v4)
  {
    v6 = v4;
    sub_1D808AF50();
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = sub_1D8191BD4();

    [v6 setPreferredTransition_];

    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v2;
    v9 = v6;
    v10 = v2;
    sub_1D808ABB4(v9, a1 & 1, sub_1D808AF9C, v8);
  }

  return result;
}

id sub_1D808A368(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4 || (v5 = v4, v6 = [v4 bottomAccessory], v5, !v6) || (v7 = objc_msgSend(v6, sel_contentView), v6, !v7))
  {
    v7 = sub_1D8089F14();
  }

  return v7;
}

uint64_t sub_1D808A430(void *a1, uint64_t a2)
{
  v3 = [a1 presentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate_];
  }

  sub_1D808A4A0(0);
  v6 = 2;
  return sub_1D8089E80(&v6);
}

void sub_1D808A4A0(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v3 = [Strong bottomAccessory];
    if (v3)
    {
      v4 = v3;

      v5 = v4;
    }

    else
    {
      v6 = sub_1D8089F14();
      v7 = [objc_allocWithZone(MEMORY[0x1E69DCFE8]) initWithContentView_];

      [v8 setBottomAccessory:v7 animated:a1 & 1];
      UITabBarController.setFloatingTabBarNeedsTabBarMinimizeBehaviorUpdate()();
      v5 = v8;
    }
  }
}

void sub_1D808A58C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setBottomAccessory:0 animated:a1 & 1];
    UITabBarController.setFloatingTabBarNeedsTabBarMinimizeBehaviorUpdate()();
  }
}

double sub_1D808A60C()
{
  v0 = [objc_opt_self() areAnimationsEnabled];

  return sub_1D808A230(v0);
}

void sub_1D808A690(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {

    [v3 addTarget:v1 action:sel_accessoryViewTapped forControlEvents:64];
  }

  else
  {
    v6[3] = type metadata accessor for FloatingTabBarAcccessoryCoordinator();
    v6[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v4 = v1;
    v5 = sub_1D7E40E74(v6, sel_accessoryViewTapped);
    [a1 addGestureRecognizer_];
  }
}

void sub_1D808A77C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  type metadata accessor for Commands();
  if (qword_1EDBB3738 != -1)
  {
    swift_once();
  }

  if (static Commands.~= infix(_:_:)(qword_1EDBB3740, a1))
  {
    sub_1D818F844();
    v4 = v20;
    v5 = v21;
    __swift_project_boxed_opaque_existential_1(aBlock, v20);
    (*(v5 + 6))(v4, v5);
    sub_1D818F154();

    v6 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (!v6)
    {
      return;
    }

    v7 = sub_1D8089E94();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];
      if (v9)
      {

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v3;
        v21 = sub_1D808B168;
        v22 = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7E64940;
        v20 = &block_descriptor_22_1;
        v12 = _Block_copy(aBlock);

        [v8 dismissViewControllerAnimated:v3 completion:v12];

        _Block_release(v12);
        return;
      }
    }

    sub_1D808A58C(v3);
    LOBYTE(aBlock[0]) = 0;
LABEL_20:
    sub_1D8089E80(aBlock);
    return;
  }

  if (qword_1EDBB3720 != -1)
  {
    swift_once();
  }

  if (static Commands.~= infix(_:_:)(qword_1EDBB3728, a1))
  {
    sub_1D818F844();
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(aBlock, v20);
    (*(v14 + 6))(v13, v14);
    sub_1D818F154();

    v15 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (v15)
    {
      return;
    }

    sub_1D808A4A0(v3);
    LOBYTE(aBlock[0]) = 1;
    goto LABEL_20;
  }

  if (qword_1EDBB3748 != -1)
  {
    swift_once();
  }

  if (static Commands.~= infix(_:_:)(qword_1EDBB3750, a1))
  {
    sub_1D818F844();
    v16 = v20;
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(aBlock, v20);
    (*(v17 + 6))(v16, v17);
    sub_1D818F154();

    v18 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (v18 != 2)
    {
      sub_1D808A230(v3);
    }
  }
}

void sub_1D808AB14(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*a4 != -1)
    {
      swift_once();
    }

    v11 = *a5;
    v12 = v8;
    sub_1D808A77C(v11, &v12);
  }
}

void sub_1D808ABB4(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a3)
    {
      v10[4] = a3;
      v10[5] = a4;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1D7E64940;
      v10[3] = &block_descriptor_60;
      a3 = _Block_copy(v10);
    }

    [v9 presentViewController:a1 animated:a2 & 1 completion:a3];
    _Block_release(a3);
  }
}

uint64_t _s5TeaUI35FloatingTabBarAcccessoryCoordinatorC32presentationControllerDidDismissyySo014UIPresentationI0CF_0()
{
  if (*(v0 + OBJC_IVAR____TtC5TeaUI35FloatingTabBarAcccessoryCoordinator_presentationMode) == 2)
  {
    v2 = 1;
    return sub_1D8089E80(&v2);
  }

  return result;
}

id FloatingTabBarAcccessoryCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FloatingTabBarAcccessoryCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarAcccessoryCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D808ADE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D808A58C(a2 & 1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    sub_1D8089E80(&v7);
  }
}

unint64_t sub_1D808AF50()
{
  result = qword_1EDBAE4A8;
  if (!qword_1EDBAE4A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBAE4A8);
  }

  return result;
}

uint64_t sub_1D808AFA4(uint64_t a1)
{
  sub_1D808B000(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D808B000(uint64_t a1)
{
  if (!qword_1ECA10410)
  {
    sub_1D808B058();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10410);
    }
  }
}

unint64_t sub_1D808B058()
{
  result = qword_1ECA10418;
  if (!qword_1ECA10418)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA10418);
  }

  return result;
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.__allocating_init(layoutConfig:layoutBuilder:layoutCollectionFactory:layoutTransitionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BlueprintLayoutCollectionPipelineProcessor.init(layoutConfig:layoutBuilder:layoutCollectionFactory:layoutTransitionManager:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.__allocating_init(layoutProvider:layoutOptionsProvider:layoutBuilder:layoutCollectionFactory:layoutCollectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  BlueprintLayoutCollectionPipelineProcessor.init(layoutProvider:layoutOptionsProvider:layoutBuilder:layoutCollectionFactory:layoutCollectionProvider:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t *BlueprintLayoutCollectionPipelineProcessor.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(v2 + 136));
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.__deallocating_deinit()
{
  BlueprintLayoutCollectionPipelineProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D808B3B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_3_98();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 2344) = v0;

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D808B4B0()
{
  OUTLINED_FUNCTION_6();

  sub_1D7E52BA8(v0 + 584);
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D808B510()
{
  OUTLINED_FUNCTION_6();

  sub_1D7E52BA8(v0 + 584);
  OUTLINED_FUNCTION_10_6();

  return v1();
}

uint64_t sub_1D808B574()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D808B5D0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_3_98();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 4752) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D808B6D4()
{
  v2 = v0[591];
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000035, 0x80000001D81D2BE0);
  v3 = CACurrentMediaTime();
  countAndFlagsBits = BlueprintPipelineRecorder.format(start:end:)(v2, v3)._countAndFlagsBits;
  MEMORY[0x1DA713260](countAndFlagsBits);

  v5 = sub_1D81919E4();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  BlueprintPipelineRecorder.log(_:type:)(v6, v5);

  v18 = *(v0 + 589);
  v17 = *(v0 + 581);
  v19 = *(v0 + 576);
  v7 = *(v0 + 574);
  OUTLINED_FUNCTION_0_8();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_24_21(v8);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_7_54(v9)[9] = v18;
  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_24_21(v10);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_18_31(v11, v17);
  v13 = OUTLINED_FUNCTION_5_56(v12, v19);
  *v7 = v14;
  v7[1] = v1;
  v7[2] = sub_1D7E89128;
  v7[3] = v13;

  OUTLINED_FUNCTION_5_37();

  return v15();
}

uint64_t sub_1D808B8B0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D808B90C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D808B97C()
{

  OUTLINED_FUNCTION_16_34();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D808BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[77] = a6;
  v6[76] = a5;
  v6[75] = a4;
  v6[74] = a3;
  v6[73] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D808BA40, 0, 0);
}

uint64_t sub_1D808BA40()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[74];
  [objc_opt_self() setCurrentTraitCollection_];
  memcpy(v0 + 2, v1, 0x235uLL);
  v2 = swift_task_alloc();
  v0[78] = v2;
  *v2 = v0;
  v2[1] = sub_1D808BB0C;
  v3 = v0[76];
  v4 = v0[75];

  return sub_1D7E6BC78(v4, v0 + 2, v3);
}

uint64_t sub_1D808BB0C()
{
  OUTLINED_FUNCTION_9_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_12();
  v5 = v4;
  OUTLINED_FUNCTION_3_98();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v8 = v7;
  *(v5 + 632) = v0;

  if (!v0)
  {
    *(v5 + 640) = v3;
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D808BC1C()
{
  OUTLINED_FUNCTION_6();
  sub_1D80D4DE4(*(v0 + 640));

  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D808BCA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D808BCC8, 0, 0);
}

uint64_t sub_1D808BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v12 + 32) = v13;
  *v13 = v14;
  v13[1] = sub_1D808BD94;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DDE0](v15, v16, v17, 0xD00000000000002ALL, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1D808BD94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_5_37();

  return v3();
}

void sub_1D808BE74(uint64_t a1, uint64_t a2)
{
  sub_1D7FF3308();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v9 = *(a2 + 600);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D808CDF0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_61;
  v12 = _Block_copy(aBlock);

  [v9 addBarrierBlock_];
  _Block_release(v12);
}

uint64_t sub_1D808C070(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a2 + *(*a2 + 144)) + 24);
  ObjectType = swift_getObjectType();
  v12 = 2;
  v10 = *(v8 + 64);
  swift_unknownObjectRetain();
  v10(&v12, ObjectType, v8, 0.0, 0.0, v2, v3, v4, v5, v6, v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D808C1F4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_1D8190DB4();
    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      OUTLINED_FUNCTION_20_29();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v23 = sub_1D8192824();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (*(v5 + 48) + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (sub_1D8192634() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v57 = v51;
      v58 = v16;
      v59 = v11;
      v3 = v54;
      v12 = v55;
      v56[0] = v55;
      v56[1] = v54;

      v28 = *(v5 + 32);
      v48 = ((1 << v28) + 63) >> 6;
      v2 = 8 * v48;
      if ((v28 & 0x3Fu) > 0xD)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v49 = &v47;
        MEMORY[0x1EEE9AC00](v27);
        v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, (v5 + 56), v2);
        v29 = *(v7 + 8 * v4) & ~v8;
        v30 = *(v5 + 16);
        v52 = v7;
        *(v7 + 8 * v4) = v29;
        v31 = v30 - 1;
        v32 = v53;
        while (1)
        {
          v50 = v31;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_20_29();
          v35 = (*(v12 + 48) + ((v16 << 10) | (16 * v34)));
          v2 = *v35;
          v36 = v35[1];
          sub_1D81927E4();
          sub_1D8190DB4();
          sub_1D8190FF4();
          v37 = sub_1D8192824();
          v38 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v37 & v38;
            v7 = (v37 & v38) >> 6;
            v8 = 1 << (v37 & v38);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v54;
              v12 = v55;
              v32 = v53;
              goto LABEL_23;
            }

            v39 = (*(v5 + 48) + 16 * v4);
            if (*v39 == v2 && v39[1] == v36)
            {
              break;
            }

            v41 = sub_1D8192634();
            v37 = v4 + 1;
          }

          while ((v41 & 1) == 0);

          v42 = v52[v7];
          v52[v7] = v42 & ~v8;
          v3 = v54;
          v12 = v55;
          v32 = v53;
          if ((v42 & v8) == 0)
          {
            goto LABEL_23;
          }

          v31 = v50 - 1;
          if (__OFSUB__(v50, 1))
          {
            __break(1u);
          }

          if (v50 == 1)
          {

            v5 = MEMORY[0x1E69E7CD0];
            goto LABEL_42;
          }
        }

        while (1)
        {
          v33 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            sub_1D8065644(v52, v48, v50, v5);
            v5 = v43;
            goto LABEL_42;
          }

          v11 = *(v3 + 8 * v33);
          ++v16;
          if (v11)
          {
            v16 = v33;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v45 = swift_slowAlloc();
      v46 = sub_1D808CA90(v45, v48, (v5 + 56), v48, v5, v7, v56);

      MEMORY[0x1DA715D00](v45, -1, -1);
      v12 = v56[0];
      v51 = v57;
      v5 = v46;
LABEL_42:
      v14 = v12;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_47;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    sub_1D7E4507C(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

void sub_1D808C6D4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1D81927E4();
    sub_1D8190DB4();
    sub_1D8190FF4();
    v16 = sub_1D8192824();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1D8192634();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = a1[v19];
    a1[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1D8065644(a1, a2, v26, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1D808C8C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v10 = *a5;
  v9 = a5[1];
  v11 = *(*a5 + 16);
  if (v9 == v11)
  {
LABEL_19:

    sub_1D8065824(a1, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 >= v11)
      {
        goto LABEL_22;
      }

      v14 = (v10 + 48 * v9);
      v26 = v14[2];
      v27 = v14[3];
      v28 = v14[4];
      a5[1] = v9 + 1;
      sub_1D81927E4();
      sub_1D811B984();
      v15 = sub_1D8192824();
      v16 = -1 << *(a3 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v13 + 8 * (v17 >> 6))) != 0)
      {
        v20 = ~v16;
        while (1)
        {
          v21 = (*(a3 + 48) + 48 * v17);
          v22 = v21->f64[0] == v26.f64[0] && v21->f64[1] == v26.f64[1];
          if (v22 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21[1], v27), vceqq_f64(v21[2], v28)))) & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v20;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
          {
            goto LABEL_18;
          }
        }

        v23 = a1[v18];
        a1[v18] = v23 & ~v19;
        if ((v23 & v19) != 0)
        {
          if (__OFSUB__(v8--, 1))
          {
            goto LABEL_23;
          }

          if (!v8)
          {
            return;
          }
        }
      }

LABEL_18:
      v10 = *a5;
      v9 = a5[1];
      v11 = *(*a5 + 16);
      if (v9 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1D808CA90(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1D808C6D4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1D808CB18(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1D808C8C0(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1D808CBA0()
{
  v1 = OUTLINED_FUNCTION_22_20();
  v2 = OUTLINED_FUNCTION_22_20();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = AssociatedConformanceWitness;
  v0[5] = v4;
  type metadata accessor for Blueprint(0, (v0 + 2));
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D7E63D38;
  OUTLINED_FUNCTION_17_1();

  return sub_1D808BA10(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D808CD54()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1D7E5B0D4;

  return sub_1D808BCA8(v3, v0);
}

uint64_t sub_1D808CDF0()
{
  sub_1D7FF3308();

  return sub_1D808C01C();
}

uint64_t AnyNavigator.init<A>(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  *a3 = sub_1D808CEE8(a1, a4, a2, a5);
  a3[1] = v8;
  v9 = OUTLINED_FUNCTION_0_169();
  a3[2] = sub_1D808D014(v9, v10, v11, v12);
  a3[3] = v13;
  v14 = OUTLINED_FUNCTION_0_169();
  v18 = sub_1D808D198(v14, v15, v16, v17);
  v20 = v19;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  a3[4] = v18;
  a3[5] = v20;
  return result;
}

uint64_t (*sub_1D808CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D808D464;
}

uint64_t (*sub_1D808D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, __int128 *a2)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D808D410;
}

uint64_t sub_1D808D140(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  v8 = *a2;
  v9 = v6;
  return (*(a6 + 32))(a1, &v8, a5, a6);
}

uint64_t (*sub_1D808D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D808D3A8;
}

uint64_t AnyNavigator.navigate(to:with:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 16);
  v4 = *(v2 + 16);
  v6 = *a2;
  v7 = v3;
  return v4(a1, &v6);
}

uint64_t CardSplitViewFocus.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D808D5A4()
{
  result = qword_1ECA10428;
  if (!qword_1ECA10428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardSplitViewFocus(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D808D768(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopShareMenuItemManager();
  v3 = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoopShareMenuItemManager;
  *a1 = v3;
}

uint64_t sub_1D808D7B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TipManager();
  result = sub_1D818EFE4();
  if (result)
  {
    v2 = result;
    type metadata accessor for TipSourceManager();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Accessibility.Notifications.blockNotification(_:forInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v8 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v33 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v31 = v14;
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8190C64();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  TSAccessibilityBlockPostingOfNotification(a1);
  sub_1D7E11E0C();
  v26 = sub_1D8191AB4();
  sub_1D8190C54();
  sub_1D8190C94();
  v30 = *(v19 + 8);
  v30(v22, v17);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  aBlock[4] = sub_1D808DC50;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_62;
  v28 = _Block_copy(aBlock);

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28814(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7E54994(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CA0](v25, v16, v12, v28);
  _Block_release(v28);

  (*(v33 + 8))(v12, v8);
  (*(v31 + 8))(v16, v32);
  return (v30)(v25, v17);
}

id static Accessibility.Color.adjustedColor(for:against:contrastFactor:)(void *a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v7 = v4;
    return sub_1D808DCF0(a1, a2, &v7);
  }

  else
  {

    return a1;
  }
}

void Accessibility.Color.ContrastFactor.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.5)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 0.8)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double Accessibility.Color.ContrastFactor.rawValue.getter()
{
  result = 0.8;
  if (*v0)
  {
    return 0.5;
  }

  return result;
}

id sub_1D808DCF0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  UIColor.getHSBA()(v15);
  if (v17)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v16;
  }

  UIColor.getHSBA()(v18);
  if (v20)
  {
    if (v4 <= 0.0)
    {
LABEL_6:
      UIColor.getHSBA()(&v21);
      if (v25)
      {
        v5 = 0.0;
        v6 = 1.0;
        v7 = 0.0;
        v8 = 0.0;
      }

      else
      {
        v5 = v23;
        v6 = v24;
        v8 = v21;
        v7 = v22;
      }

      v11 = 0.8;
      if (v3)
      {
        v11 = 0.5;
      }

      v12 = v11 * v5;
      goto LABEL_19;
    }
  }

  else if (v19 >= v4)
  {
    goto LABEL_6;
  }

  UIColor.getHSBA()(&v21);
  v6 = 1.0;
  v9 = 1.0;
  v7 = 1.0;
  v8 = 1.0;
  if ((v25 & 1) == 0)
  {
    v9 = v23;
    v6 = v24;
    v8 = v21;
    v7 = v22;
  }

  if (v3)
  {
    v10 = v9 + v9;
  }

  else
  {
    v10 = v9 / 0.8;
  }

  v12 = fmin(v10, 1.0);
LABEL_19:
  v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v13 initWithHue:v8 saturation:v7 brightness:v12 alpha:v6];
}

BOOL static Accessibility.shouldAlwaysShowHoverUI.getter()
{
  if (TSAccessibilityIsAutomationEnabled())
  {
    return 0;
  }

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || TSAccessibilityIsVoiceControlEnabled())
  {
    return 1;
  }

  return TSAccessibilityIsFullKeyboardAccessEnabled();
}

unint64_t sub_1D808DE98()
{
  result = qword_1ECA10430;
  if (!qword_1ECA10430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10430);
  }

  return result;
}

_BYTE *sub_1D808DF24(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Accessibility.Color.ContrastFactor(_BYTE *result, unsigned int a2, unsigned int a3)
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

id MastheadNavigationBarCompressionAnimator.init(navigationBar:scrollView:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_allocWithZone(TUNavigationBarDefaultCompressionAnimation) initWithNavigationBar_];
  v7 = OBJC_IVAR____TtC5TeaUI40MastheadNavigationBarCompressionAnimator_barCompressionAnimator;
  *&v2[OBJC_IVAR____TtC5TeaUI40MastheadNavigationBarCompressionAnimator_barCompressionAnimator] = v6;
  [v6 setHideTitleOnTop_];
  [*&v2[v7] setTranslationOffset_];
  *&v2[OBJC_IVAR____TtC5TeaUI40MastheadNavigationBarCompressionAnimator_scrollView] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id MastheadNavigationBarCompressionAnimator.update(withPercentage:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI40MastheadNavigationBarCompressionAnimator_scrollView);
  [v3 contentOffset];
  v5 = v4;
  [v3 contentInset];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC5TeaUI40MastheadNavigationBarCompressionAnimator_barCompressionAnimator);
  [v8 topOffset];
  v10 = v5 <= -(v7 + v9);
  [v3 contentOffset];
  v12 = v11;
  [v3 contentInset];
  v14 = v12 - v13;
  [v8 topOffset];
  [v8 scrollViewIsAtTop:v10 offset:v14 - v15];

  return [v8 updateWithPercentage_];
}

id MastheadNavigationBarCompressionAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MastheadNavigationBarCompressionAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D808E878(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block);
  v6 = *(v2 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block);
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1D7E0E10C(v6, v5);

  return result;
}

uint64_t sub_1D808E8C8(uint64_t (*a1)(void))
{
  v2 = OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_isEnabled;
  *(v1 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_isEnabled) = 0;
  result = a1();
  *(v1 + v2) = 1;
  return result;
}

uint64_t sub_1D808E910(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_isEnabled) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block);
    if (v2)
    {
      v3 = result;
      if (result)
      {
        v4 = *(v1 + OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block + 8);

        v2(v3);

        return sub_1D7E0E10C(v2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_1D808EA14()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_block];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC5TeaUI28GutterViewScrollViewObserver_isEnabled] = 1;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *ErrorStyler.visualEffect.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ErrorStyler.init(backgroundColor:visualEffect:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

NSAttributedString __swiftcall ErrorStyler.styled(title:subtitle:)(Swift::String_optional title, Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v5 = title.value._object;
  v6 = title.value._countAndFlagsBits;
  v42 = *(v2 + 16);
  sub_1D808F078(v6, v5, countAndFlagsBits, object);
  v7 = sub_1D8190EE4();

  v8 = sub_1D8190EE4();

  v9 = sub_1D7E0A1A8(0, &qword_1EDBB2F28, 0x1E696AEC0);
  v10 = sub_1D8191CD4("%@%@", 4, 2);
  sub_1D7E13760(0, &qword_1EDBBE100, sub_1D7F06938);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D819FAC0;
  *(v11 + 56) = v9;
  v12 = sub_1D808F410();
  *(v11 + 32) = v7;
  *(v11 + 96) = v9;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = v8;
  v13 = v7;
  v44 = v8;
  v43 = sub_1D8191CE4();

  sub_1D7E0A1A8(0, &unk_1EDBB3058, 0x1E696AD40);
  v14 = sub_1D8190F14();
  v16 = sub_1D8049DF0(v14, v15);
  sub_1D7E13760(0, &qword_1EDBB2C30, sub_1D7F66EA4);
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAB0;
  v19 = *v18;
  *(inited + 32) = *v18;
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DDD40];
  v40 = v19;
  v22 = [v20 preferredFontForTextStyle_];
  v23 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  *(inited + 64) = v23;
  *(inited + 40) = v22;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  OUTLINED_FUNCTION_0_171();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_171();
  v24 = sub_1D8190D44();

  v41 = v13;
  [v16 addAttributes:v24 range:{0, objc_msgSend(v13, sel_length)}];

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1D819FAB0;
  *(v25 + 32) = v40;
  v26 = [v20 preferredFontForTextStyle_];
  *(v25 + 64) = v23;
  *(v25 + 40) = v26;
  OUTLINED_FUNCTION_0_171();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_171();
  v27 = sub_1D8190D44();

  [v16 addAttributes:v27 range:{objc_msgSend(v13, sel_length), objc_msgSend(v44, sel_length)}];

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1D819FAB0;
  v29 = *MEMORY[0x1E69DB650];
  *(v28 + 32) = *MEMORY[0x1E69DB650];
  *(v28 + 64) = sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
  *(v28 + 40) = v42;
  v30 = v29;
  OUTLINED_FUNCTION_0_171();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_171();
  v31 = sub_1D8190D44();

  v32 = v16;
  [v32 addAttributes:v31 range:{0, objc_msgSend(v32, sel_length)}];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v33 setLineSpacing_];
  [v33 setAlignment_];
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1D819FAB0;
  v35 = *MEMORY[0x1E69DB688];
  *(v34 + 32) = *MEMORY[0x1E69DB688];
  *(v34 + 64) = sub_1D7E0A1A8(0, &unk_1EDBB3088, 0x1E69DB7C8);
  *(v34 + 40) = v33;
  v36 = v35;
  v37 = v33;
  OUTLINED_FUNCTION_0_171();
  sub_1D8190D94();
  OUTLINED_FUNCTION_0_171();
  v38 = sub_1D8190D44();

  [v32 addAttributes:v38 range:{0, objc_msgSend(v32, sel_length)}];

  return v32;
}

uint64_t sub_1D808F078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a1;
    if (a4)
    {
      sub_1D8190DB4();
      sub_1D8190DB4();
      MEMORY[0x1DA713260](10, 0xE100000000000000);
      return a1;
    }

    else
    {
      sub_1D8190DB4();
    }
  }

  else
  {
    if (a4)
    {
      sub_1D8190DB4();
    }

    return 0;
  }

  return v4;
}

id sub_1D808F1B0@<X0>(SEL *a1@<X0>, void *a2@<X1>, void **a3@<X2>, void *a5@<X8>)
{
  v8 = [objc_opt_self() *a1];
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  *a5 = v8;
  a5[1] = 0;
  a5[2] = v9;

  return v9;
}

id sub_1D808F248()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
  qword_1EDBB1C88 = result;
  return result;
}

id sub_1D808F2B8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  qword_1EDBB1CA0 = result;
  return result;
}

void sub_1D808F328()
{
  v0 = objc_opt_self();
  if (qword_1EDBB1C80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBB1C98;
  v2 = qword_1EDBB1C88;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBB1CA0;
  v4 = [v0 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  qword_1EDBB1C78 = v4;
}

unint64_t sub_1D808F410()
{
  result = qword_1EDBB2F20;
  if (!qword_1EDBB2F20)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2F28, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB2F20);
  }

  return result;
}

id sub_1D808F510(void *a1)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for ResponderProviding))
  {
    v3 = v2;
    v4 = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = a1;
    v7 = v5(v4, v3);

    if (v7 != v6)
    {
      v8 = v5(v4, v3);
      v9 = sub_1D808F510(v8);

      return v9;
    }
  }

  v11 = swift_dynamicCastObjCProtocolConditional();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    v14 = [v12 responder];

    if (v14 != v13)
    {
      v15 = [v12 responder];
      v16 = sub_1D808F510(v15);

      return v16;
    }
  }

  return a1;
}

uint64_t StatusBannerVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D808F744()
{
  result = qword_1ECA10460;
  if (!qword_1ECA10460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10460);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusBannerVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D808F888(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_1D808F8C8(_BYTE *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState], Strong, v3 == 8))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;

      sub_1D818F154();

      LOBYTE(v3) = v6;
    }

    else
    {
      LOBYTE(v3) = 4;
    }
  }

  *a1 = v3;
}

uint64_t sub_1D808F968()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocClassInstance();
}

void *sub_1D808F9DC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x49uLL);
}

void *sub_1D808FA34(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
  swift_beginAccess();
  return memcpy((v1 + v3), a1, 0x49uLL);
}

double sub_1D808FABC()
{
  v1 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView);
  [v2 bounds];
  [v2 layoutMargins];
  v14 = v3;
  v5 = v4;
  v7 = v6;
  v16.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetHeight(v16);
  v8 = OUTLINED_FUNCTION_8_0();
  CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(v9, v8, v10, v11, v12, v14, v5, v7);
  return 0.0;
}

unsigned __int8 *sub_1D808FBB8(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state) != v2)
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v10 = v2;
      (*(v4 + 8))(v1, &protocol witness table for CardViewAnimationCoordinator, &v10, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    v6 = v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      v8 = swift_getObjectType();
      v9 = v2;
      (*(v7 + 8))(v1, &protocol witness table for CardViewAnimationCoordinator, &v9, v8, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unsigned __int8 *sub_1D808FCB8(unsigned __int8 *result)
{
  v2 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state) != *result)
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v1 + v2);
      (*(v4 + 16))(v1, &protocol witness table for CardViewAnimationCoordinator, &v10, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    v6 = v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      v8 = swift_getObjectType();
      v9 = *(v1 + v2);
      (*(v7 + 16))(v1, &protocol witness table for CardViewAnimationCoordinator, &v9, v8, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unsigned __int8 *sub_1D808FDC0(unsigned __int8 *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state;
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state);
  v7 = *a1;
  v2 = v7;
  sub_1D808FBB8(&v7);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_1D808FCB8(&v6);
}

char *sub_1D808FE18(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, const void *a6)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v42 = *(a5 + 9);
  v13 = *(a5 + 10);
  v14 = a5[2];
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_presentationState;
  sub_1D8093D58();
  swift_allocObject();
  *&v6[v15] = sub_1D818F144();
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators] = MEMORY[0x1E69E7CC0];
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState] = 8;
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha] = 0;
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState] = 8;
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState] = 8;
  v16 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panGestureRecoginzer;
  *&v6[v16] = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panLockState] = 1;
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state] = 4;
  v17 = &v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session];
  v45[0] = 1;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[64] = 1;
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView] = a1;
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView] = a2;
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_contentView] = a3;
  *&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView] = a4;
  v18 = &v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior];
  *v18 = v11;
  v18[8] = v12;
  v18[9] = v42;
  v18[10] = v13;
  *(v18 + 2) = v14;
  memcpy(&v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions], a6, 0x49uLL);
  v44.receiver = v6;
  v44.super_class = type metadata accessor for CardViewAnimationCoordinator();
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = objc_msgSendSuper2(&v44, sel_init);
  v24 = v23;
  if (v13 == 1)
  {
    v25 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panGestureRecoginzer;
    [*&v23[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panGestureRecoginzer] addTarget:v23 action:sel_handleWithRecognizer_];
    [*&v24[v25] setDelegate_];
    [*&v24[v25] setMaximumNumberOfTouches_];
    [*&v24[v25] setAllowedScrollTypesMask_];
    [v20 addGestureRecognizer_];
  }

  v26 = *&v20[OBJC_IVAR___TSCardView_onTap];
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v27);
  swift_unknownObjectUnownedInit();
  v28 = v26;

  v29 = *&v20[OBJC_IVAR___TSCardView_onCloseTap];
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v30);
  swift_unknownObjectUnownedInit();
  v31 = v29;
  v32 = v24;

  OUTLINED_FUNCTION_19();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v33);
  swift_unknownObjectWeakInit();
  v34 = &v20[OBJC_IVAR___TSCardView_expandAccessibilityActionHandler];
  v35 = *&v20[OBJC_IVAR___TSCardView_expandAccessibilityActionHandler];
  v36 = *&v20[OBJC_IVAR___TSCardView_expandAccessibilityActionHandler + 8];
  *v34 = sub_1D8093E08;
  v34[1] = v33;

  sub_1D7E0E10C(v35, v36);

  OUTLINED_FUNCTION_19();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v37);
  swift_unknownObjectWeakInit();

  v38 = &v20[OBJC_IVAR___TSCardView_collapseAccessibilityActionHandler];
  v39 = *&v20[OBJC_IVAR___TSCardView_collapseAccessibilityActionHandler];
  v40 = *&v20[OBJC_IVAR___TSCardView_collapseAccessibilityActionHandler + 8];
  *v38 = sub_1D8093E2C;
  v38[1] = v37;

  sub_1D7E0E10C(v39, v40);

  return v32;
}

void sub_1D8090268(uint64_t a1, void (*a2)(id))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView];

  a2(v5);
}

uint64_t sub_1D80902F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView);
    v7 = sub_1D80924D8(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1D8090380(void *a1)
{
  v2 = [a1 state];
  if ((v2 - 3) < 2)
  {

    sub_1D80908C0(a1);
  }

  else if (v2 == 2)
  {

    sub_1D80904C8(a1);
  }

  else if (v2 == 1)
  {

    sub_1D8090428(a1);
  }
}

void *sub_1D8090428(void *result)
{
  *(*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView) + OBJC_IVAR____TtC5TeaUI15CardDimmingView_preventTouches) = 1;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panLockState) == 1)
  {
    v2 = result;
    LOBYTE(v6[0]) = 3;
    sub_1D808FDC0(v6);
    sub_1D809279C(v2, v6);
    v3 = v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session;
    v4 = v6[1];
    *v3 = v6[0];
    *(v3 + 16) = v4;
    v5 = v6[3];
    *(v3 + 32) = v6[2];
    *(v3 + 48) = v5;
    *(v3 + 64) = 0;
    return TUActivateUpdateRequest();
  }

  return result;
}

void sub_1D80904C8(void *a1)
{
  if (v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panLockState] == 1)
  {
    v2 = v1;
    v4 = &v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session];
    if (v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session + 64])
    {
      sub_1D809279C(a1, &v39);
    }

    else
    {
      v5 = *(v4 + 1);
      v39 = *v4;
      v40 = v5;
      v6 = *(v4 + 3);
      v41 = *(v4 + 2);
      v42 = v6;
    }

    v38 = 0;
    v7 = v42;
    *(v4 + 2) = v41;
    *(v4 + 3) = v7;
    v8 = v40;
    *v4 = v39;
    *(v4 + 1) = v8;
    v4[64] = 0;
    v9 = *(v4 + 5);
    v10 = *(v4 + 6);
    v12 = *(v4 + 3);
    v11 = *(v4 + 4);
    v14 = *(v4 + 1);
    v13 = *(v4 + 2);
    [a1 locationInView_];
    v16 = v14 + v15 - v14 - v13;
    if (sub_1D7E3A3F4())
    {
      v17 = v12;
    }

    else
    {
      v17 = v11;
    }

    v18 = v10 * (log10(v16 / v10) + 1.0);
    if (v11 > v18)
    {
      v18 = v11;
    }

    if (v17 > v16)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= v12 && (sub_1D7E3A3F4() & 1) != 0)
    {
      LOBYTE(aBlock[0]) = 0;
    }

    else
    {
      if (v20 > v11 || (sub_1D7E3A3F4() & 1) != 0)
      {
        if (v10 <= v20)
        {
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }
      }

      else
      {
        v21 = 1;
      }

      LOBYTE(aBlock[0]) = v21;
    }

    sub_1D808FDC0(aBlock);
    v22 = v9 - v11;
    if (v9 - v11 != 0.0)
    {
      if (v9 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v9;
      }

      [*&v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView] setAlpha_];
    }

    v24 = *&v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView];
    [v24 frame];
    [v24 setFrame_];
    v25 = &v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      (*(v26 + 48))(v1, &protocol witness table for CardViewAnimationCoordinator, ObjectType, v26, v20);
      swift_unknownObjectRelease();
    }

    v28 = &v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 1);
      v30 = swift_getObjectType();
      (*(v29 + 48))(v1, &protocol witness table for CardViewAnimationCoordinator, v30, v29, v20);
      swift_unknownObjectRelease();
    }

    if (sub_1D7E3A3F4())
    {
      if ([v24 safeAreaInsets], v20 <= v31 * 0.5) && *(v24 + OBJC_IVAR___TSCardView_isFullscreen) != 1 || (objc_msgSend(v24, sel_safeAreaInsets), v32 * 0.5 < v20) && (*(v24 + OBJC_IVAR___TSCardView_isFullscreen))
      {
        v33 = objc_opt_self();
        v34 = swift_allocObject();
        *(v34 + 16) = v2;
        aBlock[4] = sub_1D8093AD4;
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7E64940;
        aBlock[3] = &block_descriptor_63;
        v35 = _Block_copy(aBlock);
        v36 = v2;

        [v33 animateWithDuration:0x20000 delay:v35 options:0 animations:0.075 completion:0.0];
        _Block_release(v35);
      }
    }
  }
}

void sub_1D80908C0(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session];
  if (v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session + 64])
  {
    *(*&v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView] + OBJC_IVAR____TtC5TeaUI15CardDimmingView_preventTouches) = 0;
  }

  else
  {
    v3 = *(v2 + 1);
    v17[0] = *v2;
    v17[1] = v3;
    v4 = *(v2 + 3);
    v17[2] = *(v2 + 2);
    v17[3] = v4;
    [a1 velocityInView_];
    v6 = v5;
    v8 = v7;
    v9 = v7 * v7 * -1.5 / dbl_1D81B5E80[v7 >= 0.0];
    v10 = *&v1[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView];
    [v10 frame];
    MinY = CGRectGetMinY(v18);
    sub_1D8092CEC(v17, &v16, MinY + v9);
    v12 = v16;
    LOBYTE(v16) = 4;
    sub_1D808FDC0(&v16);
    LOBYTE(v16) = 1;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    v2[64] = 1;
    *(v10 + OBJC_IVAR___TSCardView_isFullscreen) = v12 == 0;
    sub_1D81024F8();
    v15 = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = v1;
    sub_1D8090B4C(v10, &v15, sub_1D8093AE4, v13, v6, v8);
  }
}

void sub_1D8090AD4()
{
  if ((*(v0 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session + 64) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panGestureRecoginzer);
    [v1 setEnabled_];

    [v1 setEnabled_];
  }
}

void sub_1D8090B4C(void *a1, unsigned __int8 *a2, void (*a3)(uint64_t), uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v11 = *a2;
  v6[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState] = v11;
  [a1 frame];
  v63 = v13;
  v64 = v12;
  OUTLINED_FUNCTION_21_0();
  v14 = swift_allocObject();
  [a1 frame];
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  *(v14 + 4) = v17;
  *(v14 + 5) = v18;
  v19 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  memcpy(__dst, &v7[v19], 0x49uLL);
  v20 = *&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView];
  [v20 bounds];
  [v20 layoutMargins];
  v60 = v21;
  v23 = v22;
  v25 = v24;
  v67.origin.x = OUTLINED_FUNCTION_4_72();
  Height = CGRectGetHeight(v67);
  v27 = OUTLINED_FUNCTION_4_72();
  v32 = Height - CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(v28, v27, v29, v30, v31, v60, v23, v25);
  v14[2] = 0.0;
  v14[3] = v32;
  [v20 bounds];
  v34 = v33;
  v36 = v35;
  v14[4] = v33;
  v14[5] = v35;
  [a1 frame];
  v41 = sub_1D8091074(a5, a6, v37, v38, v39, v40, 0.0, v32, v34, v36);
  v43 = v42;
  v44 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
  if (v43 <= 4.0)
  {
    v45 = 312.11;
    v46 = 31.96;
  }

  else
  {
    v45 = 471.5;
    v46 = 30.7;
  }

  v47 = [v44 initWithMass:1.0 stiffness:v45 damping:v46 initialVelocity:{v41, v43}];
  [a1 frame];
  v49 = v48;
  sub_1D8091118(v7, v11, v47, *&v64, v63);
  if (v32 == v49)
  {
    sub_1D8091678(v7, v11);
    v50 = 0.0;
    if (v11 <= 1)
    {
      v50 = *&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha];
    }

    [*&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView] setAlpha_];
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(*&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView] + OBJC_IVAR___TSCardView_isFullscreen) = v11 == 0;
  sub_1D81024F8();
  if ([objc_opt_self() areAnimationsEnabled])
  {
    [v47 ts_settlingDuration];
    v65 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v47 timingParameters:v51];
    OUTLINED_FUNCTION_21_0();
    v52 = swift_allocObject();
    *(v52 + 16) = a1;
    *(v52 + 24) = v14;
    *(v52 + 32) = v11;
    *(v52 + 40) = v7;
    __dst[4] = sub_1D8093CE4;
    __dst[5] = v52;
    __dst[0] = MEMORY[0x1E69E9820];
    __dst[1] = 1107296256;
    __dst[2] = sub_1D7E64940;
    __dst[3] = &block_descriptor_72_0;
    v53 = _Block_copy(__dst);
    v54 = a1;

    v55 = v7;

    [v65 addAnimations_];
    _Block_release(v53);
    OUTLINED_FUNCTION_21_0();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v11;
    *(v56 + 32) = a3;
    *(v56 + 40) = a4;
    __dst[4] = sub_1D8093CF4;
    __dst[5] = v56;
    __dst[0] = MEMORY[0x1E69E9820];
    __dst[1] = 1107296256;
    __dst[2] = sub_1D7FEBC20;
    __dst[3] = &block_descriptor_78;
    v57 = _Block_copy(__dst);
    v58 = v55;
    sub_1D7E38808(a3, a4);

    [v65 addCompletion_];
    _Block_release(v57);
    [v65 startAnimation];

    goto LABEL_10;
  }

  [a1 setFrame_];
  v59 = 0.0;
  if (v11 <= 1)
  {
    v59 = *&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha];
  }

  [*&v7[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView] setAlpha_];
  sub_1D8091678(v7, v11);
  if (a3)
  {
LABEL_8:
    a3(1);
  }

LABEL_9:

LABEL_10:
}

double sub_1D8091074(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v15.origin.x = a7;
  v15.size.width = a9;
  v15.size.height = a10;
  v15.origin.y = a8;
  CGRectGetMinY(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  return 0.0;
}

uint64_t sub_1D8091118(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v8 = a1;
  v9 = a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    __dst[0] = a2;
    (*(v10 + 24))(v8, &protocol witness table for CardViewAnimationCoordinator, __dst, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v9 + 8);
    v13 = swift_getObjectType();
    __dst[0] = a2;
    (*(v12 + 32))(v8, &protocol witness table for CardViewAnimationCoordinator, __dst, a3, v13, v12);
    swift_unknownObjectRelease();
  }

  v14 = v8 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    v16 = swift_getObjectType();
    __dst[0] = a2;
    (*(v15 + 24))(v8, &protocol witness table for CardViewAnimationCoordinator, __dst, v16, v15);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v14 + 8);
    v18 = swift_getObjectType();
    __dst[0] = a2;
    (*(v17 + 32))(v8, &protocol witness table for CardViewAnimationCoordinator, __dst, a3, v18, v17);
    swift_unknownObjectRelease();
  }

  __dst[0] = a2;
  sub_1D8100EAC(__dst);
  v19 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
  swift_beginAccess();
  v20 = *(v8 + v19);
  result = sub_1D7E36AB8(v20);
  if (result)
  {
    v22 = result;
    if (result >= 1)
    {
      v72 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView;
      sub_1D8190DB4();
      v23 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](v23, v20);
        }

        else
        {
        }

        ++v23;
        switch(a2)
        {
          case 4:
          case 6:
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              goto LABEL_16;
            }

            v25 = Strong;
            sub_1D818F154();
            if (__dst[135] == 7)
            {
              v26 = v25[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState];
              if (v26 != 7)
              {
                if (v26 == 3)
                {
                  v27 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
                  swift_beginAccess();
                  memcpy(__dst, &v25[v27], 0x49uLL);
                  v28 = *(v8 + v72);
                  [v28 bounds];
                  v30 = v29;
                  v32 = v31;
                  v34 = v33;
                  v36 = v35;
                  [v28 layoutMargins];
                  v70 = v37;
                  v39 = v38;
                  v41 = v40;
                  v75.origin.x = v30;
                  v75.origin.y = v32;
                  v75.size.width = v34;
                  v75.size.height = v36;
                  v42 = a5;
                  Height = CGRectGetHeight(v75);
                  v73 = 3;
                  v44 = Height - CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v73, v30, v32, v34, v36, v70, v39, v41);
                  a5 = v42;
                  if (v44 < v42)
                  {
                    v45 = *&v25[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView];
                    v46 = 3;
                    goto LABEL_38;
                  }

                  v67 = 3;
LABEL_40:
                  __dst[0] = v67;
                  sub_1D8091BF0(__dst);
                }

                else
                {
                  v47 = &v25[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions];
                  swift_beginAccess();
                  v48 = v8;
                  v49 = v47[4];
                  v50 = *(v47 + 40);
                  v71 = v48;
                  v51 = *(v48 + v72);
                  [v51 bounds];
                  v53 = v52;
                  v55 = v54;
                  v57 = v56;
                  v59 = v58;
                  [v51 layoutMargins];
                  v61 = v60;
                  v63 = v62;
                  v76.origin.x = v53;
                  v76.origin.y = v55;
                  v76.size.width = v57;
                  v76.size.height = v59;
                  v64 = CGRectGetHeight(v76);
                  if (v50 >> 6)
                  {
                    if (v50 >> 6 == 1)
                    {
                      v65 = 0.0;
                      if (v50)
                      {
                        v65 = v63;
                      }

                      v66 = v65 + v49;
                    }

                    else
                    {
                      v78.origin.x = v53;
                      v78.origin.y = v55;
                      v78.size.width = v57;
                      v78.size.height = v59;
                      v66 = CGRectGetHeight(v78) * v49;
                    }
                  }

                  else
                  {
                    v77.origin.x = v53;
                    v77.origin.y = v55;
                    v77.size.width = v57;
                    v77.size.height = v59;
                    v68 = CGRectGetHeight(v77);
                    v69 = 0.0;
                    if (v50)
                    {
                      v69 = v61;
                    }

                    v66 = v68 - v49 - v69;
                  }

                  v8 = v71;
                  if (v64 - v66 >= a5)
                  {
                    v67 = 2;
                    goto LABEL_40;
                  }

                  v45 = *&v25[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView];
                  v46 = 2;
LABEL_38:
                  __dst[0] = v46;
                  sub_1D8090B4C(v45, __dst, 0, 0, 0.0, 0.0);
                }

                goto LABEL_16;
              }
            }

LABEL_17:
            if (v22 == v23)
            {
            }

            break;
          default:
LABEL_16:

            goto LABEL_17;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8091678(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  v3 = a2;
  v4 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState;
  v5 = *(result + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState);
  if (v5 != 8 && v5 == a2)
  {
LABEL_3:
    v6 = v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v17[0] = v3;
      (*(v7 + 40))(v2, &protocol witness table for CardViewAnimationCoordinator, v17, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    v9 = v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      v11 = swift_getObjectType();
      v17[0] = v3;
      (*(v10 + 40))(v2, &protocol witness table for CardViewAnimationCoordinator, v17, v11, v10);
      swift_unknownObjectRelease();
    }

    if (v3 != 7)
    {
      *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState) = v3;
    }

    v17[0] = v3;
    sub_1D8093C90();
    sub_1D818F184();
    *(v2 + v4) = 8;
    v12 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
    swift_beginAccess();
    v2 = *(v2 + v12);
    result = sub_1D7E36AB8(v2);
    if (result)
    {
      v13 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        sub_1D8190DB4();
        v4 = 0;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA714420](v4, v2);
          }

          else
          {
          }

          ++v4;
          switch(v3)
          {
            case 0:
            case 1:
            case 2:
            case 3:
            case 7:
              Strong = swift_unknownObjectWeakLoadStrong();
              if (!Strong)
              {
                goto LABEL_18;
              }

              v15 = Strong;
              v16 = 7;
              sub_1D8091BF0(&v16);

              break;
            case 4:
            case 5:
            case 6:
LABEL_18:

              break;
            default:
              goto LABEL_3;
          }
        }

        while (v13 != v4);
      }
    }
  }

  return result;
}

void sub_1D80918C0(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v12[4] = sub_1D8093D48;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7E64940;
  v12[3] = &block_descriptor_84;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = a4;

  TUModifyAnimation(v9);
  _Block_release(v9);
}

id sub_1D80919B4(void *a1, double *a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = a3;
  swift_beginAccess();
  [a1 setFrame_];
  v8 = 0.0;
  if (v7 <= 1)
  {
    v8 = *(a4 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha);
  }

  return [*(a4 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingView) setAlpha_];
}

uint64_t sub_1D8091A4C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(BOOL))
{
  result = sub_1D8091678(a2, a3);
  if (a4)
  {
    return a4(a1 == 0);
  }

  return result;
}

id sub_1D8091A9C(id result)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState) == 8)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView);
    [v3 bounds];
    v19 = v5;
    v20 = v4;
    v6 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    memcpy(__dst, (v1 + v6), sizeof(__dst));
    sub_1D818F154();
    [v3 bounds];
    [v3 layoutMargins];
    v8 = v7;
    v10 = v9;
    v18 = v11;
    v22.origin.x = OUTLINED_FUNCTION_1_50();
    Height = CGRectGetHeight(v22);
    v13 = OUTLINED_FUNCTION_1_50();
    return [v2 setFrame_];
  }

  return result;
}

void sub_1D8091BF0(char *a1)
{
  v2 = *a1;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8093C84;
  *(v5 + 24) = v4;
  v9[4] = sub_1D7E74D6C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E74D74;
  v9[3] = &block_descriptor_63_1;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1D8091D58(uint64_t a1, char a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView);
  [v4 frame];
  v47 = v6;
  v48 = v5;
  v7 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions;
  swift_beginAccess();
  memcpy(__dst, (a1 + v7), 0x49uLL);
  v8 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView);
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 layoutMargins];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v52.origin.x = v10;
  v52.origin.y = v12;
  v52.size.width = v14;
  v52.size.height = v16;
  Height = CGRectGetHeight(v52);
  v50 = a2;
  v23 = CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v50, v10, v12, v14, v16, v18, v20, v22);
  v49 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:312.11 damping:31.96 initialVelocity:{0.0, 0.0}];
  v24 = a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    __dst[0] = a2;
    (*(v25 + 24))(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, ObjectType, v25);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v24 + 8);
    v28 = swift_getObjectType();
    __dst[0] = a2;
    v29 = *(v27 + 32);
    v30 = v49;
    v29(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, v30, v28, v27);

    swift_unknownObjectRelease();
  }

  v31 = a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    v33 = swift_getObjectType();
    __dst[0] = a2;
    (*(v32 + 24))(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, v33, v32);
    swift_unknownObjectRelease();
  }

  v34 = Height - v23;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v31 + 8);
    v36 = swift_getObjectType();
    __dst[0] = a2;
    v46 = v24;
    v37 = a2;
    v38 = v4;
    v39 = *(v35 + 32);
    v40 = v49;
    v39(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, v40, v36, v35);
    v4 = v38;
    a2 = v37;
    v24 = v46;

    swift_unknownObjectRelease();
  }

  [v4 setFrame_];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v24 + 8);
    v42 = swift_getObjectType();
    __dst[0] = a2;
    (*(v41 + 40))(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, v42, v41);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v31 + 8);
    v44 = swift_getObjectType();
    __dst[0] = a2;
    (*(v43 + 40))(a1, &protocol witness table for CardViewAnimationCoordinator, __dst, v44, v43);
    swift_unknownObjectRelease();
  }

  if (a2 != 7)
  {
    *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState) = a2;
  }

  __dst[0] = a2;
  sub_1D8093C90();
  sub_1D818F184();
}

void sub_1D80921E8()
{
  v1 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v32 = *(v0 + v1);
  v2 = sub_1D7E36AB8(v32);
  if (v2)
  {
    v3 = v2;
    if (v2 >= 1)
    {
      sub_1D8190DB4();
      v4 = 0;
      v31 = v3;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](v4, v32);
        }

        else
        {
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = Strong + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v8 = *(v7 + 8);
            swift_getObjectType();
            v9 = *(v8 + 56);
            v10 = v6;
            v11 = v9();
            v3 = v31;
            v12 = v11;
            swift_unknownObjectRelease();
          }

          else
          {
            v12 = 1;
          }
        }

        else
        {
          v12 = 1;
        }

        v13 = swift_unknownObjectWeakLoadStrong();
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = v13 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          break;
        }

        if ((v12 & 1) == 0)
        {

          swift_unknownObjectRelease();
LABEL_27:

          goto LABEL_28;
        }

        v16 = *(v15 + 8);
        swift_getObjectType();
        v17 = *(v16 + 56);
        v18 = v14;
        v3 = v31;
        LOBYTE(v16) = v17();

        swift_unknownObjectRelease();
        if ((v16 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_20:
        sub_1D808F8C8(&v34);
        v19 = v34;
        sub_1D818F154();
        v20 = qword_1D81B6030[v19];
        v21 = qword_1D81B6030[v33];
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = v22;
        if (v20 >= v21)
        {
          if (!v22)
          {
            goto LABEL_27;
          }

          sub_1D818F154();
          v33 = v34;
          v24 = &v33;
        }

        else
        {
          if (!v22)
          {
            goto LABEL_27;
          }

          sub_1D808F8C8(&v34);
          v24 = &v34;
        }

        sub_1D8091BF0(v24);

LABEL_28:
        if (v3 == ++v4)
        {

          goto LABEL_30;
        }
      }

LABEL_19:
      if ((v12 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    v34 = 4;
    OUTLINED_FUNCTION_7();
    sub_1D8090B4C(v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1D80924D8(char a1)
{
  sub_1D818F154();
  switch(v10)
  {
    case 1:
      if ((a1 & 1) == 0)
      {
        goto LABEL_2;
      }

      if ((*(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 2:
      if (a1)
      {
        goto LABEL_2;
      }

LABEL_7:
      sub_1D7E3A3F4();
LABEL_8:
      OUTLINED_FUNCTION_7();
      sub_1D8090B4C(v4, v5, v6, v7, v8, v9);
      result = 1;
      break;
    case 3:
      goto LABEL_8;
    default:
LABEL_2:
      result = 0;
      break;
  }

  return result;
}

id CardViewAnimationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CardViewAnimationCoordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardViewAnimationCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1D809279C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView);
  [a1 locationInView_];
  v6 = v5;
  v95 = v7;
  v8 = *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8);
  [*(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView) frame];
  v93 = v9;
  v10 = (v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_layoutOptions);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);
  [v4 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v4 layoutMargins];
  v22 = v21;
  v24 = v23;
  v98.origin.x = v14;
  v98.origin.y = v16;
  v98.size.width = v18;
  v98.size.height = v20;
  v94 = v6;
  Height = CGRectGetHeight(v98);
  if (v12 >> 6)
  {
    if (v12 >> 6 == 1)
    {
      v25 = 0.0;
      if (v12)
      {
        v25 = v24;
      }

      v26 = v25 + v11;
    }

    else
    {
      v100.origin.x = v14;
      v100.origin.y = v16;
      v100.size.width = v18;
      v100.size.height = v20;
      v26 = CGRectGetHeight(v100) * v11;
    }
  }

  else
  {
    v99.origin.x = v14;
    v99.origin.y = v16;
    v99.size.width = v18;
    v99.size.height = v20;
    v27 = CGRectGetHeight(v99);
    v28 = 0.0;
    if (v12)
    {
      v28 = v22;
    }

    v26 = v27 - v11 - v28;
  }

  v89 = v26;
  v29 = v10[2];
  v30 = *(v10 + 24);
  [v4 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [v4 layoutMargins];
  v40 = v39;
  v42 = v41;
  v101.origin.x = v32;
  v101.origin.y = v34;
  v101.size.width = v36;
  v101.size.height = v38;
  v87 = CGRectGetHeight(v101);
  if (v30 >> 6)
  {
    if (v30 >> 6 == 1)
    {
      v43 = v29;
      v44 = 0.0;
      if (v30)
      {
        v44 = v42;
      }

      v45 = v44 + v29;
    }

    else
    {
      v103.origin.x = v32;
      v103.origin.y = v34;
      v103.size.width = v36;
      v103.size.height = v38;
      v43 = CGRectGetHeight(v103);
      v45 = v43 * v29;
    }
  }

  else
  {
    v102.origin.x = v32;
    v102.origin.y = v34;
    v102.size.width = v36;
    v102.size.height = v38;
    v46 = CGRectGetHeight(v102);
    v47 = 0.0;
    if (v30)
    {
      v47 = v40;
    }

    v43 = v46 - v29;
    v45 = v43 - v47;
  }

  v48 = v10[6];
  v49 = *(v10 + 56);
  [v4 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  [v4 layoutMargins];
  v59 = v58;
  v61 = v60;
  v104.origin.x = v51;
  v104.origin.y = v53;
  v104.size.width = v55;
  v104.size.height = v57;
  v62 = CGRectGetHeight(v104);
  if (v49 >> 6)
  {
    if (v49 >> 6 == 1)
    {
      v63 = 0.0;
      if (v49)
      {
        v63 = v61;
      }

      v64 = v63 + v48;
    }

    else
    {
      v106.origin.x = v51;
      v106.origin.y = v53;
      v106.size.width = v55;
      v106.size.height = v57;
      v64 = CGRectGetHeight(v106) * v48;
    }
  }

  else
  {
    v105.origin.x = v51;
    v105.origin.y = v53;
    v105.size.width = v55;
    v105.size.height = v57;
    v65 = CGRectGetHeight(v105);
    v66 = 0.0;
    if (v49)
    {
      v66 = v59;
    }

    v64 = v65 - v48 - v66;
  }

  v67 = v87;
  if (v8)
  {
    v68 = 5;
  }

  else
  {
    v68 = 2;
  }

  v92 = Height - v89;
  v88 = v62 - v64;
  v90 = v67 - v45;
  memcpy(__dst, v10, sizeof(__dst));
  [v4 bounds];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  [v4 layoutMargins];
  v86 = v77;
  v79 = v78;
  v81 = v80;
  v107.origin.x = v70;
  v107.origin.y = v72;
  v107.size.width = v74;
  v107.size.height = v76;
  v82 = CGRectGetHeight(v107);
  v96 = v68;
  v83 = v82 - CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v96, v70, v72, v74, v76, v86, v79, v81);
  [v4 bounds];
  *a2 = v94;
  *(a2 + 8) = v95;
  *(a2 + 16) = v95 - v93;
  *(a2 + 24) = v92;
  *(a2 + 32) = v90;
  result = v88;
  *(a2 + 40) = v88;
  *(a2 + 48) = v83;
  *(a2 + 56) = v85;
  return result;
}

void sub_1D8092BD8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_1D8093ADC;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D7E64940;
  v5[3] = &block_descriptor_51_0;
  v3 = _Block_copy(v5);
  v4 = a1;

  TUModifyAnimation(v3);
  _Block_release(v3);
}

uint64_t sub_1D8092CEC@<X0>(unint64_t i@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  v7 = v3 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior;
  if ((sub_1D7E3A3F4() & 1) == 0)
  {
    sub_1D8190DB4();
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v8 = *(v3 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_rootView);
  sub_1D8190DB4();
  [v8 safeAreaInsets];
  v10 = v9;
  sub_1D7EE57FC();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = v13 + 1;
  if (v13 >= *(v11 + 24) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    *(v12 + 16) = v14;
    v15 = v12 + 16 * v13;
    *(v15 + 32) = 0;
    *(v15 + 40) = v10;
LABEL_5:
    v10 = *(i + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_39:
      sub_1D7EE57FC();
      v12 = v27;
    }

    v13 = *(v12 + 16);
    v14 = v13 + 1;
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1D7EE57FC();
      v12 = v28;
    }

    *(v12 + 16) = v14;
    v16 = v12 + 16 * v13;
    *(v16 + 32) = 1;
    *(v16 + 40) = v10;
    if (sub_1D7E3A3F4())
    {
      v10 = *(i + 40);
      v13 = *(v12 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1D7EE57FC();
        v12 = v30;
      }

      *(v12 + 16) = v14;
      v17 = v12 + 16 * v13;
      *(v17 + 32) = 3;
      *(v17 + 40) = v10;
    }

    if (sub_1D7E3A3F4())
    {
      v10 = *(i + 48);
      v13 = *(v12 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1D7EE57FC();
        v12 = v31;
      }

      *(v12 + 16) = v14;
      v18 = v12 + 16 * v13;
      *(v18 + 32) = 2;
      *(v18 + 40) = v10;
    }

    if (*(v7 + 8) == 1)
    {
      v10 = *(i + 56);
      v14 = *(v12 + 16);
      i = v14 + 1;
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_1D7EE57FC();
        v12 = v32;
      }

      *(v12 + 16) = i;
      v19 = v12 + 16 * v14;
      *(v19 + 32) = 4;
      *(v19 + 40) = v10;
    }

    [*(v3 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView) frame];
    MinY = CGRectGetMinY(v33);
    v3 = *(v12 + 16);
    if (v3)
    {
      break;
    }

    __break(1u);
LABEL_41:
    sub_1D7EE57FC();
    v12 = v29;
  }

  if (MinY <= *(v12 + 40))
  {

    if (*(v12 + 16))
    {
      v23 = *(v12 + 32);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_43;
  }

  v21 = v12 + 32 + 16 * v3;
  if (*(v21 - 8) < MinY)
  {

    if (v3 <= *(v12 + 16))
    {
      v23 = *(v21 - 16);
LABEL_37:

      *a2 = v23;
      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = 0;
  for (i = v12 + 40; ; i += 16)
  {
    if (v3 == v24)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (MinY <= *i)
    {
      break;
    }

    ++v24;
  }

  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = *(v12 + 16);
  if (v24 <= v25)
  {
    if (v24 >= v25)
    {
      goto LABEL_46;
    }

    v26 = (i - 24);
    if ((*(i - 16) + *i) * 0.5 < a3)
    {
      v26 = (i - 8);
    }

    v23 = *v26;
    goto LABEL_37;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CardViewAnimationCoordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  if (*(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session + 64))
  {
    *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panLockState) = sub_1D80930D4(v2, shouldRecognizeSimultaneouslyWith.super.isa) & 1;
  }

  return 1;
}

uint64_t sub_1D80930D4(uint64_t a1, id a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState);
  if (v4 == 8)
  {
    sub_1D818F154();
    LOBYTE(v4) = v35[1];
  }

  LOBYTE(v5) = 1;
  if (((1 << v4) & 0xF4) == 0)
  {
    if (((1 << v4) & 3) != 0)
    {
      [*(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panGestureRecoginzer) velocityInView_];
      v9 = sub_1D8032A70(v7, v8);
      sub_1D818F154();
      if (v34 == 1 && (sub_1D7E3A3F4() & 1) != 0)
      {
        LOBYTE(v5) = v9 < 2u;
        return v5 & 1;
      }

      v10 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_contentView);
      v11 = [a2 view];
      LOBYTE(v10) = sub_1D809343C(v10, v11);

      if ((v10 & 1) != 0 || (v12 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView), v13 = [a2 view], LOBYTE(v12) = sub_1D809343C(v12, v13), v13, (v12 & 1) == 0))
      {
        v5 = [a2 view];
        if (!v5)
        {
          return v5 & 1;
        }

        v14 = v5;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v17 = v14;
          v18 = sub_1D80934BC(v16);

          if (v18)
          {
            [v16 contentOffset];
            v20 = v19;
            [v16 adjustedContentInset];
            v22 = v21;

            v23 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 10);
            if (v20 + v22 > 0.0)
            {
              v23 = 0;
            }

            if (v9 == 1)
            {
              LOBYTE(v5) = v23;
            }

            else
            {
              LOBYTE(v5) = 0;
            }

            return v5 & 1;
          }
        }

        else
        {
        }

LABEL_28:
        LOBYTE(v5) = 0;
        return v5 & 1;
      }
    }

    else
    {
      v24 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_contentView);
      v25 = [a2 view];
      LOBYTE(v24) = sub_1D809343C(v24, v25);

      if ((v24 & 1) != 0 || (v26 = *(a1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView), v27 = [a2 view], LOBYTE(v26) = sub_1D809343C(v26, v27), v27, (v26 & 1) == 0))
      {
        v28 = [a2 view];
        if (v28)
        {
          v29 = v28;
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            v31 = v30;
            v32 = v29;
            v33 = sub_1D80934BC(v31);

            if ((v33 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }

        v35[0] = 3;
        LOBYTE(v5) = sub_1D80935BC(a2, v35);
        return v5 & 1;
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t sub_1D809343C(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == a1)
  {
    return 1;
  }

  v3 = a2;
  v4 = [v3 superview];
  v5 = sub_1D809343C(a1, v4);

  return v5 & 1;
}

uint64_t sub_1D80934BC(void *a1)
{
  v2 = [a1 superview];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panView);
  sub_1D7F9F0F0();
  v5 = v4;
  v6 = v3;
  v7 = sub_1D8191CC4();

  if ((v7 & 1) == 0)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || swift_dynamicCastObjCProtocolConditional())
    {
      v8 = sub_1D80934BC(v3);

      return v8 & 1;
    }

LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_1D80935BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v14 = v5;
    v9 = (*(v7 + 64))(v3, &protocol witness table for CardViewAnimationCoordinator, a1, &v14, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 1;
  }

  v10 = v3 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (v9)
    {
      v11 = *(v10 + 8);
      v12 = swift_getObjectType();
      v15 = v5;
      v9 = (*(v11 + 64))(v3, &protocol witness table for CardViewAnimationCoordinator, a1, &v15, v12, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0;
    }
  }

  return v9 & 1;
}

void CardViewAnimationCoordinator.cardViewScrollViewCoordinator(_:didTransitionTo:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if ((*(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_session + 64) & 1) == 0)
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_panLockState) = v3;
}

BOOL CardViewAnimationCoordinator.cardViewScrollViewCoordinator(_:shouldAllowState:)(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if ((*(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_state) & 0xFE) != 2)
    {
      return *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState) - 8 < 0xFFFFFFFA;
    }
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState);
    if (v4 - 2 < 6)
    {
      return 1;
    }

    if (v4 >= 2)
    {
      sub_1D818F154();
      return v5 > 1u;
    }
  }

  return 0;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8093934(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8093954(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CardViewAnimationCoordinator.LockState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8093A80()
{
  result = qword_1ECA10508;
  if (!qword_1ECA10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10508);
  }

  return result;
}

uint64_t sub_1D8093AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  (*(a4 + 8))(&v24, a3, a4);
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = a2 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior;
  *v15 = v24;
  *(v15 + 8) = v11;
  *(v15 + 9) = v12;
  *(v15 + 10) = v13;
  *(v15 + 16) = v14;

  sub_1D818F154();
  if (!v24 && (sub_1D7E3A3F4() & 1) == 0)
  {
    LOBYTE(v24) = 1;
    OUTLINED_FUNCTION_7();
    sub_1D8090B4C(v16, v17, v18, v19, v20, v21);
  }

  return (*(v7 + 8))(v10, a3);
}

unint64_t sub_1D8093C90()
{
  result = qword_1EDBB01F8;
  if (!qword_1EDBB01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB01F8);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

void sub_1D8093D58()
{
  if (!qword_1EDBB2040)
  {
    v0 = sub_1D818F194();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2040);
    }
  }
}

BOOL UIScrollView.didReachBottom.getter()
{
  [v0 contentSize];
  v2 = v1;
  [v0 frame];
  if (v3 >= v2)
  {
    return 0;
  }

  [v0 frame];
  v5 = v4;
  [v0 contentSize];
  v7 = v5 - v6;
  [v0 contentInset];
  v9 = v7 - v8;
  [v0 contentOffset];
  return v9 + v10 >= 0.0;
}

uint64_t UIScrollView.isAtTop(within:)(double a1)
{
  [v1 adjustedContentInset];
  v4 = v3;
  [v1 contentOffset];
  v6 = v4 + v5;
  if (a1 >= 0.0)
  {
    if (v6 <= a1)
    {
      return 1;
    }
  }

  else if (v6 <= 0.0)
  {
    return 1;
  }

  return 0;
}

double sub_1D8093FAC(SEL *a1)
{
  [v1 *a1];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1D7E45D98();
  OUTLINED_FUNCTION_11_1();

  return UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
}

__C::CGRect __swiftcall UIScrollView.calculateVisibleBounds(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  sub_1D7E45D98();
  OUTLINED_FUNCTION_11_1();

  v7 = UIEdgeInsetsInsetRect(x, y, width, height, v5, v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

Swift::Void __swiftcall UIScrollView.repositionHorizontalContentInsetAndOffset(layoutMargins:safeAreaInsets:)(UIEdgeInsets layoutMargins, UIEdgeInsets safeAreaInsets)
{
  right = safeAreaInsets.right;
  v4 = layoutMargins.right;
  left = layoutMargins.left;
  [v2 contentOffset];
  v7 = v6;
  v9 = v8;
  v10 = v4 + right;
  [v2 contentInset];
  v15 = v14 == 0.0 && v11 == left;
  if (!v15 || (v12 == 0.0 ? (v16 = v13 == v10) : (v16 = 0), !v16))
  {
    [v2 setContentInset_];
  }

  if (v7 <= 0.0)
  {
    v17 = v7 - (v7 + left);
    [v2 contentOffset];
    if (v19 != v17 || v18 != v9)
    {

      [v2 setContentOffset_];
    }
  }
}

__n128 sub_1D8094178@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v14 = *a5;
  v32 = *a6;
  v35 = *a10;
  v34 = a10[1].n128_u64[0];
  v15 = OUTLINED_FUNCTION_1_122();
  type metadata accessor for Blueprint(v15, v16);
  OUTLINED_FUNCTION_8();
  (*(v17 + 32))(a9, a1);
  v18 = OUTLINED_FUNCTION_1_122();
  v20 = type metadata accessor for BlueprintImpressionSection(v18, v19);
  v21 = v20[13];
  v22 = OUTLINED_FUNCTION_1_122();
  type metadata accessor for BlueprintSection(v22, v23);
  OUTLINED_FUNCTION_8();
  (*(v24 + 32))(a9 + v21, a2);
  v25 = v20[14];
  v26 = sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 32);
  v28(a9 + v25, a3, v26);
  v28(a9 + v20[15], a4, v26);
  *(a9 + v20[16]) = v14;
  *(a9 + v20[17]) = v32;
  v29 = (a9 + v20[18]);
  *v29 = a7;
  v29[1] = a8;
  v30 = (a9 + v20[19]);
  result = v35;
  *v30 = v35;
  v30[1].n128_u64[0] = v34;
  return result;
}

uint64_t BlueprintImpressionSection.blueprint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v3, v4);
  OUTLINED_FUNCTION_8();
  return (*(v5 + 16))(a1, v1);
}

uint64_t BlueprintImpressionSection.section.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v5, v6);
  OUTLINED_FUNCTION_8();
  return (*(v7 + 16))(a2, v2 + v4);
}

uint64_t BlueprintImpressionSection.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t BlueprintImpressionSection.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t BlueprintImpressionSection.sessionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));
  sub_1D8190DB4();
  return v2;
}

double BlueprintImpressionSection.viewState.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 76);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  sub_1D8190DB4();
  return result;
}

void sub_1D8094520(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v5 = type metadata accessor for Blueprint(319, &v19);
  if (v6 <= 0x3F)
  {
    v14 = 0;
    v19 = v5;
    v13[0] = v1;
    v13[1] = v2;
    v13[2] = v3;
    v13[3] = v4;
    v7 = type metadata accessor for BlueprintSection(319, v13);
    if (v8 <= 0x3F)
    {
      v15 = 0;
      v20 = v7;
      v9 = sub_1D818E754();
      if (v10 <= 0x3F)
      {
        v21 = v9;
        v22 = v9;
        v16 = 0;
        v23 = &type metadata for BlueprintImpressionTrigger;
        v24 = &type metadata for BlueprintImpressionTrigger;
        v17 = 0;
        v25 = MEMORY[0x1E69E6158];
        sub_1D8094660();
        if (v12 <= 0x3F)
        {
          v18 = 0;
          v26 = v11;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8094660()
{
  if (!qword_1EDBB5B38[0])
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB5B38);
    }
  }
}

id UIViewController.effectiveNavigationItem.getter(uint64_t a1)
{
  if (sub_1D8190B24())
  {
    v2 = UIViewController.effectiveViewController.getter();
    v3 = [v2 navigationItem];

    return v3;
  }

  else
  {
    v5 = [v1 navigationItem];

    return v5;
  }
}

id UIViewController.effectiveNavigationController.getter()
{
  v1 = [v0 ts_transitionContainerViewController];
  if (!v1)
  {
    return [v0 navigationController];
  }

  v2 = v1;
  v3 = [v1 navigationController];

  if (!v3)
  {
    return [v0 navigationController];
  }

  return v3;
}

uint64_t UIViewController.first<A>(parentOfType:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastUnknownClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
  }

  else
  {
    v6 = v2;
    while (1)
    {
      v7 = v6;
      v6 = [v7 parentViewController];

      if (!v6)
      {
        break;
      }

      v8 = swift_dynamicCastUnknownClass();
      if (v8)
      {
        return v8;
      }
    }

    return 0;
  }

  return v4;
}

id UIViewController.find<A>(viewsOfType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8190D34();
  result = [v3 view];
  if (result)
  {
    v7 = result;
    sub_1D8095008(result, v5, a2);

    swift_beginAccess();
    v8 = *(v5 + 16);
    sub_1D8190DB4();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UIViewController.topPresentedViewController.getter()
{
  for (i = v0; ; i = v3)
  {
    v2 = [i presentedViewController];
    if (!v2)
    {
      break;
    }

    v3 = v2;
    if ([v2 isBeingDismissed])
    {

      return i;
    }
  }

  return i;
}

void UIViewController.first<A>(parentConformingToType:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v34 = v0;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v21 = v0;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_7_55(v13, 0);
    v22 = *(v15 + 32);
    v22(v20, v13, v2);
    v22(v4, v20, v2);
    v23 = v4;
  }

  else
  {
    v32 = v4;
    OUTLINED_FUNCTION_7_55(v13, 1);
    v24 = *(v7 + 8);
    v24(v13, v5);
    v25 = v21;
    while (1)
    {
      v26 = [v25 parentViewController];

      if (!v26)
      {
        v23 = v32;
        v27 = 1;
        goto LABEL_10;
      }

      v34 = v26;
      v25 = v26;
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_7_55(v10, 1);
      v24(v10, v5);
    }

    OUTLINED_FUNCTION_7_55(v10, 0);
    v28 = *(v15 + 32);
    v29 = v33;
    v28(v33, v10, v2);
    v30 = v32;
    v28(v32, v29, v2);
    v23 = v30;
  }

  v27 = 0;
LABEL_10:
  OUTLINED_FUNCTION_7_55(v23, v27);
  OUTLINED_FUNCTION_100();
}

id UIViewController.segmentedViewController.getter()
{
  v1 = [v0 ts_parentVC];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SegmentedViewController();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 ts_parentVC];
  if (result)
  {
    v4 = result;
    v5 = UIViewController.segmentedViewController.getter();

    return v5;
  }

  return result;
}

void sub_1D8094D04(void *a1)
{
  v2 = [a1 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v3 = sub_1D8191314();

  v4 = sub_1D7E36AB8(v3);
  while (v4)
  {
    if (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA714420](v4, v3);
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v3 + 32 + 8 * v4);
    }

    v7 = v6;
    sub_1D8094D04(v6);
    v9 = v8;

    if (v9)
    {

      return;
    }
  }

  v10 = [a1 view];
  if (v10)
  {
    v11 = v10;
    sub_1D80435D4(v10, a1);

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1D8094E4C()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v24 = v8;
  v9 = [v8 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v10 = sub_1D8191314();

  v11 = sub_1D7E36AB8(v10);
  v12 = v10 & 0xC000000000000001;
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  v25 = v10;
  v14 = v10 + 32;
  while (v11)
  {
    if (__OFSUB__(v11--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v12)
    {
      v16 = MEMORY[0x1DA714420](v11, v25);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v11 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v16 = *(v14 + 8 * v11);
    }

    v17 = v16;
    sub_1D8094E4C();
    v19 = v18;

    if (v19)
    {

LABEL_11:
      OUTLINED_FUNCTION_100();
      return;
    }
  }

  v20 = v24;
  v21 = [v24 view];
  if (v21)
  {
    v22 = v21;
    MEMORY[0x1EEE9AC00](v21);
    v23[2] = v1;
    v23[3] = v5;
    v23[4] = v3;
    v23[5] = v20;
    UIView.first<A>(viewOfType:where:)(v7, sub_1D8096A38, v23, v1);

    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D8095008(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v6 = sub_1D8191314();

  result = sub_1D7E36AB8(v6);
  if (!result)
  {
  }

  v8 = result;
  if (result >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA714420](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (swift_dynamicCastUnknownClass())
      {
        swift_beginAccess();
        sub_1D8191484();
        v12 = v11;
        sub_1D8191434();
        swift_endAccess();
      }

      sub_1D8095008(v11, a2, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D809518C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1D8095874(a1, qword_1EDBAECF8, &protocol descriptor for FloatingTabBarAccessoryBehaviorProviding, sub_1D7F3B42C, sub_1D7E17C84, a2);
}

uint64_t sub_1D809521C(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  sub_1D7E49240();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A50A0;
  *(inited + 32) = a1;
  v3 = a1;
  while (1)
  {
    v4 = inited >> 62;
    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_84;
      }

      if (!sub_1D81920A4())
      {
        goto LABEL_85;
      }
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
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
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v5 = *(inited + 32);
    }

    v6 = v5;
    if (v4)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_78;
      }

      if (sub_1D81920A4() < 1)
      {
        goto LABEL_79;
      }

      v7 = sub_1D81920A4();
    }

    else
    {
      v7 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_78;
      }
    }

    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_73;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v4)
      {
        v9 = inited & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_20;
    }

    if (v4)
    {
      goto LABEL_19;
    }

LABEL_20:
    inited = sub_1D8192224();
    v9 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    v10 = inited >> 62;
    if (inited >> 62)
    {
      v11 = sub_1D81920A4();
    }

    else
    {
      v11 = *(v9 + 16);
    }

    if (__OFSUB__(v11, 1))
    {
      goto LABEL_74;
    }

    memmove((v9 + 32), (v9 + 40), 8 * (v11 - 1));
    if (v10)
    {
      v12 = sub_1D81920A4();
    }

    else
    {
      v12 = *(v9 + 16);
    }

    if (__OFSUB__(v12, 1))
    {
      goto LABEL_75;
    }

    *(v9 + 16) = v12 - 1;
    ObjectType = swift_getObjectType();
    v14 = dynamic_cast_existential_1_conditional(v6, ObjectType, &protocol descriptor for MastheadViewControllerType);
    if (v14)
    {
      break;
    }

    type metadata accessor for LazyViewController();
    if (swift_dynamicCastClass())
    {
      v15 = v6;
      LazyViewController.loadViewController()(v16);
      v18 = v17;
    }

    v19 = [v6 childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    v20 = sub_1D8191314();

    if (v20 >> 62)
    {
      v21 = sub_1D81920A4();
      if (!v10)
      {
LABEL_33:
        v22 = v9;
        v23 = *(v9 + 16);
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    v22 = v9;
    v41 = v21;
    v23 = sub_1D81920A4();
    v21 = v41;
LABEL_34:
    v24 = v23 + v21;
    if (__OFADD__(v23, v21))
    {
      goto LABEL_76;
    }

    v46 = v21;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        if (v24 <= *(v22 + 24) >> 1)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

LABEL_40:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_41;
    }

    if (v10)
    {
      goto LABEL_40;
    }

LABEL_41:
    OUTLINED_FUNCTION_4_73();
    inited = sub_1D8192224();
    v22 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_42:
    v45 = v6;
    v25 = *(v22 + 16);
    v26 = (*(v22 + 24) >> 1) - v25;
    v27 = v22 + 8 * v25;
    if (v20 >> 62)
    {
      v29 = sub_1D81920A4();
      if (!v29)
      {
LABEL_56:

        v37 = v22;
        if (v46 > 0)
        {
          goto LABEL_77;
        }

        goto LABEL_57;
      }

      v30 = v29;
      v31 = sub_1D81920A4();
      if (v26 < v31)
      {
        goto LABEL_81;
      }

      if (v30 < 1)
      {
        goto LABEL_83;
      }

      v28 = v31;
      v44 = inited;
      v32 = v27 + 32;
      sub_1D7E49448(0);
      sub_1D7E495F0();
      for (i = 0; i != v30; ++i)
      {
        v34 = sub_1D7E49648(v47, i, v20);
        v36 = *v35;
        v34(v47, 0);
        *(v32 + 8 * i) = v36;
      }

      inited = v44;
    }

    else
    {
      v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_56;
      }

      if (v26 < v28)
      {
        goto LABEL_82;
      }

      swift_arrayInitWithCopy();
    }

    v37 = v22;
    if (v28 < v46)
    {
      goto LABEL_77;
    }

    if (v28 >= 1)
    {
      v38 = *(v22 + 16);
      v39 = __OFADD__(v38, v28);
      v40 = v38 + v28;
      if (v39)
      {
        goto LABEL_80;
      }

      *(v22 + 16) = v40;
    }

LABEL_57:

    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
LABEL_68:

        return 0;
      }
    }

    else if (!*(v37 + 16))
    {
      goto LABEL_68;
    }
  }

  v42 = v14;

  return v42;
}

uint64_t sub_1D8095754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1D8095874(a1, &qword_1EDBB7748, &protocol descriptor for CoverViewManagerProviding, sub_1D8096A70, sub_1D7E17C84, a2);
}

uint64_t sub_1D80957E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1D8095874(a1, &qword_1ECA10510, &protocol descriptor for TabBarSplitViewGestureProviding, sub_1D80969D0, sub_1D7E17C84, a2);
}

uint64_t sub_1D8095874@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v61 = *MEMORY[0x1E69E9840];
  sub_1D7E49240();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A50A0;
  *(inited + 32) = a1;
  v9 = a1;
  v51 = a3;
  while (1)
  {
    v10 = inited >> 62;
    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_84;
      }

      if (!sub_1D81920A4())
      {
        goto LABEL_85;
      }
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
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
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA714420](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v11 = *(inited + 32);
    }

    v12 = v11;
    if (v10)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_78;
      }

      if (sub_1D81920A4() < 1)
      {
        goto LABEL_79;
      }

      v13 = sub_1D81920A4();
    }

    else
    {
      v13 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_78;
      }
    }

    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_73;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v15 = inited & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_20;
    }

    if (v10)
    {
      goto LABEL_19;
    }

LABEL_20:
    inited = sub_1D8192224();
    v15 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    v16 = inited >> 62;
    if (inited >> 62)
    {
      v17 = sub_1D81920A4();
    }

    else
    {
      v17 = *(v15 + 16);
    }

    if (__OFSUB__(v17, 1))
    {
      goto LABEL_74;
    }

    memmove((v15 + 32), (v15 + 40), 8 * (v17 - 1));
    if (v16)
    {
      v18 = sub_1D81920A4();
    }

    else
    {
      v18 = *(v15 + 16);
    }

    if (__OFSUB__(v18, 1))
    {
      goto LABEL_75;
    }

    *(v15 + 16) = v18 - 1;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    sub_1D7E0631C(0, a2, a3);
    v19 = v12;
    if (swift_dynamicCast())
    {
      break;
    }

    v59 = 0;
    memset(v58, 0, sizeof(v58));
    sub_1D8096970(v58, a4);
    type metadata accessor for LazyViewController();
    if (swift_dynamicCastClass())
    {
      v20 = v19;
      LazyViewController.loadViewController()(v21);
      v23 = v22;
    }

    v24 = [v19 childViewControllers];
    v25 = sub_1D8191314();

    if (v25 >> 62)
    {
      v26 = sub_1D81920A4();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v19;
    v27 = v15;
    if (v16)
    {
      v47 = v26;
      v28 = sub_1D81920A4();
      v26 = v47;
    }

    else
    {
      v28 = *(v15 + 16);
    }

    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      goto LABEL_76;
    }

    v55 = v26;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        if (v29 <= *(v27 + 24) >> 1)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

LABEL_41:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_42;
    }

    if (v16)
    {
      goto LABEL_41;
    }

LABEL_42:
    inited = sub_1D8192224();
    v27 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_43:
    v54 = inited;
    v30 = *(v27 + 16);
    v31 = (*(v27 + 24) >> 1) - v30;
    v56 = v27;
    v32 = v27 + 8 * v30;
    if (v25 >> 62)
    {
      v35 = sub_1D81920A4();
      v34 = v57;
      if (!v35)
      {
LABEL_57:

        v43 = v56;
        if (v55 > 0)
        {
          goto LABEL_77;
        }

        goto LABEL_58;
      }

      v36 = v35;
      v37 = sub_1D81920A4();
      if (v31 < v37)
      {
        goto LABEL_81;
      }

      if (v36 < 1)
      {
        goto LABEL_83;
      }

      v33 = v37;
      v38 = v32 + 32;
      sub_1D7E49448(0);
      sub_1D7E495F0();
      for (i = 0; i != v36; ++i)
      {
        v40 = sub_1D7E49648(v60, i, v25);
        v42 = *v41;
        v40(v60, 0);
        *(v38 + 8 * i) = v42;
      }

      a3 = v51;
      v34 = v57;
    }

    else
    {
      v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v57;
      if (!v33)
      {
        goto LABEL_57;
      }

      if (v31 < v33)
      {
        goto LABEL_82;
      }

      swift_arrayInitWithCopy();
    }

    v43 = v56;
    if (v33 < v55)
    {
      goto LABEL_77;
    }

    if (v33 >= 1)
    {
      v44 = *(v56 + 16);
      v45 = __OFADD__(v44, v33);
      v46 = v44 + v33;
      if (v45)
      {
        goto LABEL_80;
      }

      *(v56 + 16) = v46;
    }

LABEL_58:

    inited = v54;
    if (v54 >> 62)
    {
      if (!sub_1D81920A4())
      {
LABEL_69:

        *(a6 + 32) = 0;
        *a6 = 0u;
        *(a6 + 16) = 0u;
        return result;
      }
    }

    else if (!*(v43 + 16))
    {
      goto LABEL_69;
    }
  }

  v49(v58, v60);

  return v49(v60, a6);
}

void UIViewController.findDescendantExcludingUnloadedLazy<A>(ofType:where:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v60 = v3;
  v61 = v4;
  v54[1] = v5;
  v68[9] = *MEMORY[0x1E69E9840];
  v59 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v64 = v54 - v9;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E49240();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A50A0;
  *(inited + 32) = v0;
  v57 = (v7 + 8);
  v62 = (v11 + 32);
  v56 = (v11 + 8);
  v15 = v0;
  v55 = v2;
  while (1)
  {
    v16 = inited >> 62;
    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_86;
      }

      if (!sub_1D81920A4())
      {
        goto LABEL_87;
      }
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA714420](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v17 = *(inited + 32);
    }

    v18 = v17;
    if (v16)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_80;
      }

      if (sub_1D81920A4() < 1)
      {
        goto LABEL_81;
      }

      v19 = sub_1D81920A4();
    }

    else
    {
      v19 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_80;
      }
    }

    v20 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      goto LABEL_75;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v21 = inited & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_20;
    }

    if (v16)
    {
      goto LABEL_19;
    }

LABEL_20:
    OUTLINED_FUNCTION_4_73();
    inited = sub_1D8192224();
    v21 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    v22 = inited;
    v23 = inited >> 62;
    if (v23)
    {
      v24 = sub_1D81920A4();
    }

    else
    {
      v24 = *(v21 + 16);
    }

    if (__OFSUB__(v24, 1))
    {
      goto LABEL_76;
    }

    memmove((v21 + 32), (v21 + 40), 8 * (v24 - 1));
    if (v23)
    {
      v25 = sub_1D81920A4();
    }

    else
    {
      v25 = *(v21 + 16);
    }

    if (__OFSUB__(v25, 1))
    {
      goto LABEL_77;
    }

    v26 = v21;
    *(v21 + 16) = v25 - 1;
    v68[0] = v18;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    v27 = v18;
    v28 = v64;
    if (swift_dynamicCast())
    {
      break;
    }

    OUTLINED_FUNCTION_6_68(v28, 1);
    (*v57)(v28, v59);
LABEL_32:
    v67 = v27;
    v32 = [v27 childViewControllers];
    v33 = sub_1D8191314();

    if (v33 >> 62)
    {
      v34 = sub_1D81920A4();
      if (!v23)
      {
LABEL_34:
        v35 = *(v26 + 16);
        goto LABEL_35;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    v35 = sub_1D81920A4();
LABEL_35:
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v65 = v34;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        goto LABEL_43;
      }

LABEL_42:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_43;
    }

    if (v23)
    {
      goto LABEL_42;
    }

    if (v36 <= *(v26 + 24) >> 1)
    {
      inited = v22;
      goto LABEL_44;
    }

LABEL_43:
    inited = sub_1D8192224();
    v26 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_44:
    v38 = *(v26 + 16);
    v39 = (*(v26 + 24) >> 1) - v38;
    v66 = v26;
    v31 = v26 + 8 * v38;
    if (v33 >> 62)
    {
      v41 = sub_1D81920A4();
      if (!v41)
      {
LABEL_58:

        v48 = v66;
        v49 = v67;
        if (v65 > 0)
        {
          goto LABEL_79;
        }

        goto LABEL_59;
      }

      v42 = v41;
      v43 = sub_1D81920A4();
      if (v39 < v43)
      {
        goto LABEL_83;
      }

      if (v42 < 1)
      {
        goto LABEL_85;
      }

      v40 = v43;
      v63 = inited;
      v31 += 32;
      sub_1D7E49448(0);
      sub_1D7E495F0();
      for (i = 0; i != v42; ++i)
      {
        v45 = sub_1D7E49648(v68, i, v33);
        v47 = *v46;
        v45(v68, 0);
        *(v31 + 8 * i) = v47;
      }

      v2 = v55;
      inited = v63;
    }

    else
    {
      v40 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_58;
      }

      if (v39 < v40)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();
    }

    v48 = v66;
    v49 = v67;
    if (v40 < v65)
    {
      goto LABEL_79;
    }

    if (v40 > 0)
    {
      v50 = *(v66 + 16);
      v51 = __OFADD__(v50, v40);
      v52 = v50 + v40;
      if (v51)
      {
        goto LABEL_82;
      }

      *(v66 + 16) = v52;
    }

LABEL_59:

    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
LABEL_70:

        OUTLINED_FUNCTION_8_44();
        goto LABEL_72;
      }
    }

    else if (!*(v48 + 16))
    {
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_6_68(v28, 0);
  v29 = *v62;
  v30 = v58;
  (*v62)(v58, v28, v2);
  v31 = v61;
  if ((v60(v30) & 1) == 0)
  {
    (*v56)(v30, v2);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_8_44();
  v29(v31, v30, v2);
  v53 = 0;
LABEL_72:
  OUTLINED_FUNCTION_6_68(v31, v53);
  OUTLINED_FUNCTION_100();
}

id sub_1D8096518(void *a1)
{
  result = [a1 parentViewController];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      v3 = sub_1D8096518(v2);

      return v3;
    }
  }

  return result;
}

id UIViewController.tabBarSplitViewFousable()()
{
  v1 = [v0 tabBarSplitViewFocusable];

  return v1;
}

id sub_1D80965B8(void *a1)
{
  v1 = a1;
  v2 = UIViewController.tabBarSplitViewFousable()();

  return v2;
}

uint64_t UIViewController.tabBarSplitViewFocusable()()
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v4 = v0;
    while (1)
    {
      v5 = v4;
      v4 = [v5 parentViewController];

      if (!v4)
      {
        break;
      }

      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        return v6;
      }
    }

    return 0;
  }

  return v2;
}

id sub_1D80966BC(void *a1)
{
  v1 = a1;
  v2 = UIViewController.tabBarSplitViewFocusable()();

  return v2;
}

void UIViewController.cardSplitViewFocusable()(uint64_t a1@<X8>)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  sub_1D7E0631C(0, &unk_1EDBB0888, &protocol descriptor for CardSplitViewFocusable);
  v4 = v1;
  v12 = OUTLINED_FUNCTION_5_58(v4, v5, v6, v7, v8, v9, v10, v11, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42);
  if (!v12)
  {
    OUTLINED_FUNCTION_1_123(v12, v13, v14, v15, v16, v17, v18, v19, v38, v39, v40);
    v20 = v2;
    while (1)
    {
      v21 = [v20 parentViewController];

      if (!v21)
      {
        OUTLINED_FUNCTION_3_100();
        return;
      }

      v22 = v21;
      v30 = OUTLINED_FUNCTION_5_58(v22, v23, v24, v25, v26, v27, v28, v29, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v21);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_1_123(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  sub_1D7E05450(&v38, v43);
  sub_1D7E05450(v43, a1);
}

id UIViewController.effectiveViewController.getter()
{
  v1 = v0;
  while (1)
  {
    v2 = v1;
    v3 = [v2 parentViewController];
    if (!v3)
    {
      goto LABEL_5;
    }

    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

LABEL_5:
    v5 = [v2 parentViewController];

    if (!v5)
    {
      return v2;
    }

    v1 = v5;
  }

  return v2;
}