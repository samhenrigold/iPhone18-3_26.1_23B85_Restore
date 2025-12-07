double sub_1D704BB74(void (*a1)(uint64_t, uint64_t))
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_1D5B68374(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      a1(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t FormatLayoutView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FormatLayoutView.shouldCancelContextMenu.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

void FormatLayoutView.shouldCancelContextMenu.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FormatLayoutView.shouldCancelDrag.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  return *(v0 + v1);
}

void FormatLayoutView.shouldCancelDrag.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1D704BF70(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;
  v15 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  v16 = type metadata accessor for FeedItem(0);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag] = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 0;
  v18 = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers] = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName] = v18;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer] = 0;
  sub_1D5BB160C(0, &qword_1EDF3BDD8, type metadata accessor for DebugButton, MEMORY[0x1E69D63A0]);
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_debugButton] = sub_1D725A80C();
  sub_1D7053C04(0);
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapAction] = sub_1D725A80C();
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v19;

  sub_1D725A7FC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v20;
}

id sub_1D704C2BC@<X0>(void *a1@<X8>)
{
  sub_1D7053E1C(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  result = [objc_allocWithZone(v2) init];
  *a1 = result;
  return result;
}

void sub_1D704C320(uint64_t a1, uint64_t a2)
{
  sub_1D7053E1C(0, &qword_1EDF3B460, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8768]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v14 - v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    *v7 = 1;
    (*(v4 + 104))(v7, *MEMORY[0x1E69D8758], v3);
    v10 = sub_1D725F66C();
    (*(v4 + 8))(v7, v3);
    v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture;
    v12 = *&v9[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
    *&v9[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture] = v10;

    v13 = *&v9[v11];
    if (v13)
    {
      [v13 setDelegate_];
    }
  }
}

id FormatLayoutView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (qword_1EDF223A8 != -1)
  {
    goto LABEL_16;
  }

  while (*(qword_1EDFFCA38 + 160) == 1)
  {
    v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
    swift_beginAccess();
    v3 = *&v0[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + 56);

      sub_1D6F0D3C0(v11);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        goto LABEL_14;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

Swift::Bool __swiftcall FormatLayoutView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v6 = [v2 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
  v7 = sub_1D726267C();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6FB460](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    [v2 convertPoint:v11 toCoordinateSpace:{x, y}];
    v13 = [v12 pointInside:isa withEvent:?];

    v9 = v10 + 1;
  }

  while (!v13);

  return v8 != v10;
}

Swift::Void __swiftcall FormatLayoutView.layoutSubviews()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);
      v7 = v1;

      v6(&v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

void sub_1D704CB38(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation);
    v15 = *(Strong + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation + 8);
    v16 = Strong;
    sub_1D5DEA510(v14, v15);

    if (v14)
    {
      v14(a2 - a4 + a6, a3 - a5 + a7);
      sub_1D5B74328(v14, v15);
    }
  }
}

void sub_1D704CC1C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = &Strong[*a2];
    v22 = *v21;
    if (*v21)
    {
      v23 = v21[1];
      sub_1D5DEA510(*v21, v23);

      v22(a3, a4, a5, a6, a7, a8, a9, a10);
      sub_1D5B74328(v22, v23);
    }

    else
    {
    }
  }
}

void sub_1D704CD18(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1D704CD80(void *a1, uint64_t a2)
{
  v3 = v2;
  FormatLayoutView.prepareForReuse()();
  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token];
  *&v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = a1;
  v7 = a1;

  v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 0;
  v8 = [v2 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
  v9 = sub_1D726267C();

  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    goto LABEL_23;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6FB460](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    [v12 removeFromSuperview];
  }

LABEL_10:

  v14 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v15 = *&v3[v14];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v24 = MEMORY[0x1E69E7CC8];
      *&v3[v14] = MEMORY[0x1E69E7CC8];

      v25 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
      swift_beginAccess();
      v26 = MEMORY[0x1E69E7CC0];
      *&v3[v25] = MEMORY[0x1E69E7CC0];

      v27 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
      swift_beginAccess();
      *&v3[v27] = v26;

      v28 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
      swift_beginAccess();
      *&v3[v28] = v26;

      v29 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
      swift_beginAccess();
      *&v3[v29] = v26;

      v30 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName;
      swift_beginAccess();
      *&v3[v30] = v24;

      *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

      *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey] = a2;

      return;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      do
      {
LABEL_17:
        v22 = *(*(v15 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
        v23 = qword_1EDF223A8;

        if (v23 != -1)
        {
          swift_once();
        }

        v18 &= v18 - 1;
        sub_1D6F0D3C0(*(v22 + 56));
      }

      while (v18);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

double sub_1D704D0EC(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  if (v3 >> 62 == 1)
  {
    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *a1;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    sub_1D704DF94(&v8, a2, v6);
  }

  else
  {
    v8 = *a1;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    return sub_1D704E5D4(&v8, a2);
  }

  return result;
}

uint64_t sub_1D704D154(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = v3;
    v7 = result;
    v8 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *(v9 + 16);

    if (v10 && (v11 = sub_1D5B69D90(v7, a2), (v12 & 1) != 0))
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      swift_endAccess();
      v17 = v13;
    }

    else
    {
      swift_endAccess();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v14 = a3;
    MEMORY[0x1DA6F9CE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + v8);
    *(v4 + v8) = 0x8000000000000000;
    sub_1D6D7A950(v17, v7, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v8) = v16;
    return swift_endAccess();
  }

  return result;
}

void sub_1D704D2D0(char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer;
  v6 = *&a1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer];
  if (v6)
  {
    [*(v6 + 16) removeFromSuperview];
  }

  v7 = *(v4 + 192);
  if (v7 && (v8 = *(v7 + 296), v9 = *(v7 + 328), v54 = *(v7 + 312), v55 = v9, v56 = *(v7 + 344), v10 = *(v7 + 232), v11 = *(v7 + 264), v12 = *(v7 + 280), v50 = *(v7 + 248), v51 = v11, v13 = *(v7 + 264), v14 = *(v7 + 296), v52 = *(v7 + 280), v53 = v14, v15 = *(v7 + 200), v46 = *(v7 + 184), v47 = v15, v48 = *(v7 + 216), v49 = v10, v16 = *(v7 + 328), v65 = v54, v66 = v16, v67 = *(v7 + 344), v61 = *(v7 + 248), v62 = v13, v17 = *(v7 + 232), v63 = v12, v64 = v8, v18 = *(v7 + 200), v57 = *(v7 + 184), v58 = v18, v59 = *(v7 + 216), v60 = v17, sub_1D60081E0(&v57) != 1))
  {
    v44[8] = v65;
    v44[9] = v66;
    v45 = v67;
    v44[4] = v61;
    v44[5] = v62;
    v44[6] = v63;
    v44[7] = v64;
    v44[0] = v57;
    v44[1] = v58;
    v44[2] = v59;
    v44[3] = v60;
    v19 = sub_1D62B4E2C(v44);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v26 = sub_1D5D04BC4(v44);
        *&a1[v5] = 0;
        v41 = v54;
        v42 = v55;
        v43 = v56;
        v37 = v50;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v33 = v46;
        v34 = v47;
        v35 = v48;
        v36 = v49;
        sub_1D60864C0(&v33, v31);

        v31[7] = *(v26 + 112);
        v31[8] = *(v26 + 128);
        v31[9] = *(v26 + 144);
        v32 = *(v26 + 160);
        v31[3] = *(v26 + 48);
        v31[4] = *(v26 + 64);
        v31[5] = *(v26 + 80);
        v31[6] = *(v26 + 96);
        v31[0] = *v26;
        v31[1] = *(v26 + 16);
        v31[2] = *(v26 + 32);
        sub_1D70EBD88(a1, v31);
        sub_1D7053DA4(&v46, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D7053E1C);
      }

      else
      {
        *&a1[v5] = 0;

        if (sub_1D7261A3C())
        {
          *(&v34 + 1) = sub_1D725FC9C();
          *&v35 = MEMORY[0x1E69DBEA8];
          __swift_allocate_boxed_opaque_existential_1(&v33);
          sub_1D725FC8C();
          goto LABEL_7;
        }
      }
    }

    else
    {
      if (v19)
      {
        v27 = sub_1D5D04BC4(v44);
        v28 = *v27;
        v29 = v27[1];
        if (sub_1D7261A3C())
        {
          [a1 setOverrideUserInterfaceStyle_];
          *&v35 = 0;
          v33 = 0u;
          v34 = 0u;
          sub_1D72634CC();
        }

        LOBYTE(v33) = v28;
        BYTE1(v33) = v29;
        type metadata accessor for FormatVisualEffectContainer();
        swift_allocObject();
        v21 = sub_1D5F91BD0(&v33);
        [*(v21 + 16) removeFromSuperview];
        v30 = [objc_opt_self() clearColor];
        sub_1D726349C();

        [v2 addSubview_];
      }

      else
      {
        v20 = *sub_1D5D04BC4(v44);
        if (sub_1D7261A3C())
        {
          [a1 setOverrideUserInterfaceStyle_];
          *&v35 = 0;
          v33 = 0u;
          v34 = 0u;
          sub_1D72634CC();
        }

        type metadata accessor for FormatVisualEffectContainer();
        v21 = swift_allocObject();
        LOBYTE(v33) = v20;
        v22 = sub_1D70B50DC(&v33);
        v23 = [objc_opt_self() effectWithStyle_];
        v24 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        *(v21 + 16) = v24;
        *(v21 + 24) = 0;
        [v24 removeFromSuperview];
        v25 = [objc_opt_self() clearColor];
        sub_1D726349C();

        [v2 addSubview_];
      }

      *&a1[v5] = v21;
    }
  }

  else
  {
    *&a1[v5] = 0;

    if (sub_1D7261A3C())
    {
      [a1 setOverrideUserInterfaceStyle_];
      *&v59 = 0;
      v57 = 0u;
      v58 = 0u;
LABEL_7:
      sub_1D72634CC();
    }
  }
}

void sub_1D704D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v10 = v9;
          sub_1D6A4C430(v7, v5, v10);
        }

        v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
        swift_beginAccess();
        v12 = *&v9[v11];
        v18 = MEMORY[0x1E69E7CC0];
        if (v12 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
        {

          if (!i)
          {
            break;
          }

          v16 = v11;
          v17 = v9;
          v11 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1DA6FB460](v11, v12);
            }

            else
            {
              if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v14 = *(v12 + 8 * v11 + 32);
            }

            v9 = (v11 + 1);
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v14 == v5)
            {
            }

            else
            {
              sub_1D7263E9C();
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
            }

            ++v11;
            if (v9 == i)
            {
              v15 = v18;
              v11 = v16;
              v9 = v17;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

        v15 = MEMORY[0x1E69E7CC0];
LABEL_23:

        *&v9[v11] = v15;

        v9[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 1;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_1D704D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v6 = v5;
        sub_1D725DD4C();

        return result;
      }
    }
  }

  return result;
}

id sub_1D704DAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 152) >> 6;
  if (!v3)
  {
    if (qword_1EDF223A8 != -1)
    {
      swift_once();
    }

    v12 = *(qword_1EDFFCA38 + 96);
    swift_beginAccess();

    v14 = sub_1D6209084(v13);
    result = swift_endAccess();
    if (!v14)
    {
      v15 = *(v12 + 64);
      v9 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v9)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      *(v12 + 64) = v16;
      v14 = (*(v12 + 40))(result);
    }

    result = [v14 setAccessibilityIgnoresInvertColors_];
    v11 = (v14 | 0x4000000000000000);
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    if (qword_1EDF223A8 != -1)
    {
      swift_once();
    }

    v4 = *(qword_1EDFFCA38 + 104);
    swift_beginAccess();

    v6 = sub_1D6209084(v5);
    result = swift_endAccess();
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = *(v4 + 64);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      *(v4 + 64) = v10;
      v6 = (*(v4 + 40))(result);
LABEL_8:

      result = [v6 setAccessibilityIgnoresInvertColors_];
      v11 = (v6 | 0x8000000000000000);
LABEL_21:
      *a2 = v11;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDF223A8 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1EDFFCA38 + 88);
  swift_beginAccess();

  v11 = sub_1D6209084(v18);
  result = swift_endAccess();
  if (v11)
  {
LABEL_20:

    result = [v11 setAccessibilityIgnoresInvertColors_];
    goto LABEL_21;
  }

  v19 = *(v17 + 64);
  v9 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (!v9)
  {
    *(v17 + 64) = v20;
    v11 = (*(v17 + 40))(result);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1D704DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v18[1] = v4;
        v7 = v6;
        sub_1D725DD4C();
      }

      v8 = [v4 view];
      if (!v8)
      {
        __break(1u);
        return;
      }

      v9 = v8;
      [v8 removeFromSuperview];

      v10 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
      swift_beginAccess();
      v11 = *(v10 + v6);
      v18[0] = MEMORY[0x1E69E7CC0];
      if (v11 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
      {

        if (!i)
        {
          break;
        }

        v16 = v10;
        v17 = v6;
        v6 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1DA6FB460](v6, v11);
          }

          else
          {
            if (v6 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v13 = *(v11 + 8 * v6 + 32);
          }

          v14 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v13 == v4)
          {
          }

          else
          {
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            v10 = v18;
            sub_1D7263EAC();
          }

          ++v6;
          if (v14 == i)
          {
            v6 = v17;
            v15 = v18[0];
            v10 = v16;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_22:

      *(v10 + v6) = v15;

      *(v6 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty) = 1;
    }

    else
    {
      v6 = v4;
    }
  }
}

void sub_1D704DF94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 24);
  v46 = *(a1 + 16);
  v48 = *(a1 + 8);
  v9 = *(a1 + 32);
  v52 = sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  sub_1D7053E1C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D72816C0;
  *(v10 + 32) = sub_1D6C141D0(a2);
  v51 = v10;
  sub_1D7051B28(a2, a3, &v51, &v52);
  sub_1D7051DBC(a2, a3, &v51, &v52);
  sub_1D705204C(a2, a3, &v51, &v52);
  sub_1D7052268(a2, a3, &v51, &v52);
  sub_1D7052480(a2, a3, &v51, &v52);
  sub_1D705270C(a2, a3, &v51, &v52);
  v11 = v51;
  v12 = v51 >> 62;
  if (v51 >> 62)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v8;
  v45 = v7;
  v42 = v9;
  if (v13)
  {
    if (v13 < 1)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v14 = v11 & 0xC000000000000001;
    v15 = v4;
    v10 = 0;
    do
    {
      if (v14)
      {
        v16 = MEMORY[0x1DA6FB460](v10, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v10 + 32);
      }

      v8 = v16;
      ++v10;
      [v15 addSubview_];

      v15 = v8;
    }

    while (v13 != v10);
    if (v14)
    {
      v17 = MEMORY[0x1DA6FB460](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        __break(1u);
        return;
      }

      v17 = *(v11 + 32);
    }
  }

  else
  {
    v8 = v4;
    v17 = sub_1D6C141D0(a2);
  }

  v18 = v17;
  v19 = swift_allocObject();
  v20 = v52;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  v9 = v19;
  a3 = v13 != 0;
  if (v12)
  {
    if (v11 < 0)
    {
      v10 = v11;
    }

    else
    {
      v10 = v11 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1D7263BFC() < a3)
    {
      goto LABEL_54;
    }

    v21 = sub_1D7263BFC();
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 < a3)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  if (v21 < v13)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v41 = v18;
  if ((v11 & 0xC000000000000001) == 0)
  {

    sub_1D5F33D5C(v46);
    goto LABEL_30;
  }

  sub_1D5F33D5C(v46);
  if (v13 <= 1)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);

  v22 = v13 != 0;
  do
  {
    v23 = v22 + 1;
    sub_1D7263DAC();
    v22 = v23;
  }

  while (v13 != v23);
LABEL_31:

  if (v12)
  {
    a2 = sub_1D72640EC();
    v10 = v24;
    a3 = v25;
    v13 = v26;

    if (v13)
    {
      goto LABEL_36;
    }

LABEL_35:
    sub_1D5EC3150(a2, v10, a3, v13);
    v28 = v27;
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  a2 = v11 & 0xFFFFFFFFFFFFFF8;
  v10 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_1D72647AC();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v29 + 16);

  if (__OFSUB__(v13 >> 1, a3))
  {
    goto LABEL_57;
  }

  if (v30 != (v13 >> 1) - a3)
  {
LABEL_58:
    swift_unknownObjectRelease_n();
    goto LABEL_35;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v28)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

LABEL_43:
  type metadata accessor for FormatLayoutViewContainer();
  v31 = swift_allocObject();
  *(v31 + 80) = 0;
  *(v31 + 88) = 0;
  *(v31 + 16) = v45;
  *(v31 + 24) = v48;
  *(v31 + 32) = v46;
  *(v31 + 40) = v43;
  *(v31 + 48) = v42;
  *(v31 + 56) = v9 | 0x3000000000000004;
  *(v31 + 64) = v41;
  *(v31 + 72) = v28;
  v32 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v44 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *&v4[v32];
  *&v4[v32] = 0x8000000000000000;
  sub_1D6D7A7D0(v31, v45, v48, isUniquelyReferenced_nonNull_native);

  *&v4[v32] = v50;
  swift_endAccess();
  v47 = sub_1D6C13B9C();
  v34 = *(v47 + 16);
  if (v34)
  {
    v35 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
    v36 = (v47 + 32);
    do
    {
      v49 = *v36;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1D725F01C())
      {
        swift_beginAccess();
        v37 = *&v4[v35];
        swift_unknownObjectRetain();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v35] = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1D69931FC(0, v37[2] + 1, 1, v37);
          *&v4[v35] = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1D69931FC((v39 > 1), v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        *&v37[2 * v40 + 4] = v49;
        *&v4[v35] = v37;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      ++v36;
      --v34;
    }

    while (v34);
  }
}

double sub_1D704E5D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  sub_1D5F33D5C(v7);
  v10 = sub_1D6C141D0(a2);
  type metadata accessor for FormatLayoutViewContainer();
  v11 = swift_allocObject();
  *(v11 + 88) = 0;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = a2;
  *(v11 + 64) = v10;
  *(v11 + 72) = MEMORY[0x1E69E7CC0];
  *(v11 + 80) = 0;
  v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *&v3[v12];
  *&v3[v12] = 0x8000000000000000;
  sub_1D6D7A7D0(v11, v6, v5, isUniquelyReferenced_nonNull_native);

  *&v3[v12] = v39;
  swift_endAccess();
  v14 = sub_1D6C13B9C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
    v17 = (v14 + 32);
    do
    {
      v38 = *v17;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1D725F01C())
      {
        swift_beginAccess();
        v18 = *&v3[v16];
        swift_unknownObjectRetain();
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v16] = v18;
        if ((v19 & 1) == 0)
        {
          v18 = sub_1D69931FC(0, v18[2] + 1, 1, v18);
          *&v3[v16] = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1D69931FC((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        *&v18[2 * v21 + 4] = v38;
        *&v3[v16] = v18;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      ++v17;
      --v15;
    }

    while (v15);
  }

  v22 = sub_1D6C13ECC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
    v25 = v22 + 32;
    do
    {
      sub_1D5B68374(v25, v40);
      swift_beginAccess();
      v26 = *&v3[v24];
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v24] = v26;
      if ((v27 & 1) == 0)
      {
        v26 = sub_1D6993260(0, v26[2] + 1, 1, v26);
        *&v3[v24] = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1D6993260((v28 > 1), v29 + 1, 1, v26);
      }

      v26[2] = v29 + 1;
      sub_1D5B63F14(v40, &v26[5 * v29 + 4]);
      *&v3[v24] = v26;
      swift_endAccess();
      v25 += 40;
      --v23;
    }

    while (v23);
  }

  v30 = *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer];
  if (v30)
  {
    v31 = *(v11 + 56);

    v32 = sub_1D6C141D0(v31);
    v33 = *(v30 + 24);
    if (v33)
    {
      v34 = v33;
      v35 = [v34 contentView];
      [v35 addSubview_];
    }

    else
    {
      [v3 addSubview_];
    }
  }

  else
  {
    v36 = sub_1D6C141D0(*(v11 + 56));
    [v3 addSubview_];
  }

  return result;
}

uint64_t sub_1D704E9E0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D704EA3C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D704EA84()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_1D704EB08()
{
  sub_1D5BBB890(&unk_1EDF30340, type metadata accessor for FormatLayoutView, &protocol conformance descriptor for FormatLayoutView);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatLayoutView.isSelectable.getter()
{
  sub_1D704EC6C(v0);
  if (!v1)
  {
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v2 = v1;
  v3 = [*&v1[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider] interaction];
  if (!v3)
  {
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v4 = [v3 type];
  swift_unknownObjectRelease();
  if (v4 < 3)
  {
    v5 = 4u >> (v4 & 7);
LABEL_7:

    return v5 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void sub_1D704EC6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v3 = 0;
  v4 = *(a1 + v2);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 56);
    if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 5)
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      return;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void (*sub_1D704ED9C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D725D26C();
  return sub_1D5FE8C5C;
}

void FormatLayoutView.blueprintViewportMonitor(_:willDisplayCellWith:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 >> 62)
  {
    goto LABEL_37;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    goto LABEL_3;
  }

  while (2)
  {
    while (2)
    {
      v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
      swift_beginAccess();
      v3 = *(v3 + v11);
      v12 = 1 << *(v3 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v3 + 64);
      v15 = (v12 + 63) >> 6;

      v16 = 0;
      while (v14)
      {
LABEL_20:
        v6 = *(*(v3 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
        v14 &= v14 - 1;
        v20 = *(v6 + 56);
        v21 = (v20 >> 59) & 0x1E | (v20 >> 2) & 1;
        if (v21 > 12)
        {
          if (v21 == 13)
          {
            v28 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v29 = *&v28[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
            swift_beginAccess();
            v30 = *(v29 + 17);
            *(v29 + 17) = 1;
            if (v30 >= 0x40 || (v30 & 1) == 0)
            {

              v31 = v28;
              LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_14:
            }
          }

          else if (v21 == 14)
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v25 = *&v22[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
            if (v25)
            {
              v24 = *(v25 + qword_1EDF11060);
LABEL_29:
              swift_beginAccess();
              v26 = *(v24 + 17);
              *(v24 + 17) = 1;
              if (v26 > 0x3F || (v26 & 1) == 0)
              {

                v27 = v22;

                LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

                goto LABEL_14;
              }
            }
          }
        }

        else
        {
          if (v21 == 4)
          {
            v17 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

            v18 = v17;
            FormatLayoutView.blueprintViewportMonitor(_:willDisplayCellWith:)(a1, a2);

            goto LABEL_14;
          }

          if (v21 == 12)
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v23 = *&v22[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
            if (v23)
            {
              v24 = *(v23 + qword_1EDF11060);
              goto LABEL_29;
            }
          }
        }
      }

      while (1)
      {
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v19 >= v15)
        {

          return;
        }

        v14 = *(v3 + 64 + 8 * v19);
        ++v16;
        if (v14)
        {
          v16 = v19;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      v7 = sub_1D7263BFC();
      if (!v7)
      {
        continue;
      }

      break;
    }

LABEL_3:
    if (v7 >= 1)
    {

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6FB460](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        sub_1D725F21C();
      }

      continue;
    }

    break;
  }

  __break(1u);
}

void FormatLayoutView.blueprintViewportMonitor(_:didEndDisplayingCellWith:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 >> 62)
  {
    goto LABEL_37;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    goto LABEL_3;
  }

  while (2)
  {
    while (2)
    {
      v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
      swift_beginAccess();
      v3 = *(v3 + v11);
      v12 = 1 << *(v3 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v3 + 64);
      v15 = (v12 + 63) >> 6;

      v16 = 0;
      while (v14)
      {
LABEL_20:
        v6 = *(*(v3 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
        v14 &= v14 - 1;
        v20 = *(v6 + 56);
        v21 = (v20 >> 59) & 0x1E | (v20 >> 2) & 1;
        if (v21 > 12)
        {
          if (v21 == 13)
          {
            v28 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v29 = *&v28[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
            swift_beginAccess();
            v30 = *(v29 + 17);
            *(v29 + 17) = 0;
            if (v30 >= 0x40 || (v30 & 1) != 0)
            {

              v31 = v28;
              LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_14:
            }
          }

          else if (v21 == 14)
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v25 = *&v22[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
            if (v25)
            {
              v24 = *(v25 + qword_1EDF11060);
LABEL_29:
              swift_beginAccess();
              v26 = *(v24 + 17);
              *(v24 + 17) = 0;
              if (v26 > 0x3F || (v26 & 1) != 0)
              {

                v27 = v22;

                LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

                goto LABEL_14;
              }
            }
          }
        }

        else
        {
          if (v21 == 4)
          {
            v17 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

            v18 = v17;
            FormatLayoutView.blueprintViewportMonitor(_:didEndDisplayingCellWith:)(a1, a2);

            goto LABEL_14;
          }

          if (v21 == 12)
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v23 = *&v22[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
            if (v23)
            {
              v24 = *(v23 + qword_1EDF11060);
              goto LABEL_29;
            }
          }
        }
      }

      while (1)
      {
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v19 >= v15)
        {

          return;
        }

        v14 = *(v3 + 64 + 8 * v19);
        ++v16;
        if (v14)
        {
          v16 = v19;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      v7 = sub_1D7263BFC();
      if (!v7)
      {
        continue;
      }

      break;
    }

LABEL_3:
    if (v7 >= 1)
    {

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6FB460](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        sub_1D725F22C();
      }

      continue;
    }

    break;
  }

  __break(1u);
}

void FormatLayoutView.blueprintViewportMonitorWillDisplaySupplementaryView(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v12 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;
    v13 = *(v12 + 56);
    v14 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
    if (v14 > 12)
    {
      if (v14 == 13)
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v22 = *&v21[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
        swift_beginAccess();
        v23 = *(v22 + 17);
        *(v22 + 17) = 1;
        if (v23 >= 0x40 || (v23 & 1) == 0)
        {

          v24 = v21;
          LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_5:
        }
      }

      else if (v14 == 14)
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v18 = *&v15[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
        if (v18)
        {
          v17 = *(v18 + qword_1EDF11060);
LABEL_20:
          swift_beginAccess();
          v19 = *(v17 + 17);
          *(v17 + 17) = 1;
          if (v19 > 0x3F || (v19 & 1) == 0)
          {

            v20 = v15;

            LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      if (v14 == 4)
      {
        v9 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v10 = v9;
        FormatLayoutView.blueprintViewportMonitorWillDisplaySupplementaryView(_:)(a1);

        goto LABEL_5;
      }

      if (v14 == 12)
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v16 = *&v15[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
        if (v16)
        {
          v17 = *(v16 + qword_1EDF11060);
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void FormatLayoutView.blueprintViewportMonitorDidEndDisplayingSupplementaryView(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v12 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;
    v13 = *(v12 + 56);
    v14 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
    if (v14 > 12)
    {
      if (v14 == 13)
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v22 = *&v21[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
        swift_beginAccess();
        v23 = *(v22 + 17);
        *(v22 + 17) = 0;
        if (v23 >= 0x40 || (v23 & 1) != 0)
        {

          v24 = v21;
          LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_5:
        }
      }

      else if (v14 == 14)
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v18 = *&v15[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
        if (v18)
        {
          v17 = *(v18 + qword_1EDF11060);
LABEL_20:
          swift_beginAccess();
          v19 = *(v17 + 17);
          *(v17 + 17) = 0;
          if (v19 > 0x3F || (v19 & 1) != 0)
          {

            v20 = v15;

            LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      if (v14 == 4)
      {
        v9 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v10 = v9;
        FormatLayoutView.blueprintViewportMonitorDidEndDisplayingSupplementaryView(_:)(a1);

        goto LABEL_5;
      }

      if (v14 == 12)
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v16 = *&v15[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
        if (v16)
        {
          v17 = *(v16 + qword_1EDF11060);
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1D704FA84()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

uint64_t FormatLayoutView.accessibilityContainerType.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  sub_1D6A5E96C();
  v2 = v1;
  v4 = v3;

  if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  result = v2;
  if (v4)
  {
    return 4 * (v2 == 0);
  }

  return result;
}

void (*FormatLayoutView.accessibilityContainerType.modify(uint64_t *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) || (, sub_1D6A5E96C(), v4 = v3, v6 = v5, , (v6 & 0x100) != 0))
  {
    v4 = 0;
  }

  else if (v6)
  {
    v4 = 4 * (v4 == 0);
  }

  *a1 = v4;
  return nullsub_1;
}

uint64_t FormatLayoutView.isAccessibilityElement.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  sub_1D6A5E96C();
  v2 = v1;
  v4 = v3;

  if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v4 & (v2 != 0);
  }
}

void (*FormatLayoutView.isAccessibilityElement.modify(_BYTE *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) || (, sub_1D6A5E96C(), v4 = v3, v6 = v5, , (v6 & 0x100) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 & (v4 != 0);
  }

  *a1 = v7;
  return nullsub_1;
}

double (*FormatLayoutView.accessibilityElements.modify(char **a1))(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5EB3C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return sub_1D612BC30;
}

double (*FormatLayoutView.accessibilityIdentifier.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5F440();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

double (*FormatLayoutView.accessibilityLabel.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5FA90();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

double (*FormatLayoutView.accessibilityValue.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5FD6C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

double (*FormatLayoutView.ts_accessibilityElementHelp.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60048();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

double (*FormatLayoutView.accessibilityHint.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60324();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D70502B8;
}

id sub_1D70502D8(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] && (v4 = a1, v5 = , a3(v5), v7 = v6, v4, , v7))
  {
    v8 = sub_1D726203C();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1D705038C(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

double (*FormatLayoutView.accessibilityLanguage.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60600();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t sub_1D70504FC(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

void (*FormatLayoutView.accessibilityTraits.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A6082C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return nullsub_1;
}

uint64_t FormatLayoutView.accessibilityCustomActions.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    sub_1D6A5E96C();
    if ((v2 & 0x100) == 0 && ((v2 & 1) == 0 || v1))
    {
      sub_1D6A5E790();
      sub_1D7046E0C(v4);

      sub_1D70517D8(0);
      sub_1D5BBB890(&qword_1EC8909B0, sub_1D70517D8, MEMORY[0x1E69E6328]);
      v5 = sub_1D72623CC();

      return v5;
    }
  }

  return 0;
}

double (*FormatLayoutView.accessibilityCustomActions.modify(uint64_t *a1))(void *)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    sub_1D6A5E96C();
    if ((v4 & 0x100) == 0 && ((v4 & 1) == 0 || v3))
    {
      sub_1D6A5E790();
      sub_1D7046E0C(v7);
      v9 = v8;

      a1[1] = v9;
      sub_1D70517D8(0);
      sub_1D5BBB890(&qword_1EC8909B0, sub_1D70517D8, MEMORY[0x1E69E6328]);
      v5 = sub_1D72623CC();

      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a1 = v5;
  return sub_1D7053E6C;
}

void sub_1D70508C0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = (v2 + 64);
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = ((v4 + 63) >> 6);
  v37 = v0;
  v38 = v2;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(*(v38 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
        v12 = *(v11 + 48);
        if (v12 > 0x3F)
        {
          v39 = 0;
          LOBYTE(v12) = 1;
        }

        else
        {
          v13 = *(v11 + 40);
          if (v12)
          {
            v13 = 0;
          }

          v39 = v13;
        }

        LOBYTE(v42[0]) = v12 & 1;
        v14 = *(v11 + 56);

        v15 = sub_1D6C141D0(v14);
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = sub_1D6C141D0(*(v11 + 56));

        v25 = sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
        v26 = v42[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D6995784(0, v9[2] + 1, 1, v9);
        }

        v28 = v9[2];
        v27 = v9[3];
        if (v28 >= v27 >> 1)
        {
          v9 = sub_1D6995784((v27 > 1), v28 + 1, 1, v9);
        }

        v6 &= v6 - 1;
        v9[2] = v28 + 1;
        v29 = &v9[10 * v28];
        v29[4] = v39;
        *(v29 + 40) = v26;
        *(v29 + 41) = *v40;
        *(v29 + 11) = *&v40[3];
        v29[6] = v17;
        v29[7] = v19;
        v29[8] = v21;
        v29[9] = v23;
        v29[10] = v24;
        *(v29 + 11) = v42[0];
        v29[13] = v25;
      }

      while (v6);
    }
  }

  *&v42[0] = v9;
  v30 = v37;

  sub_1D70539BC(v42, v30);

  v31 = *&v42[0];
  v32 = *(*&v42[0] + 16);
  if (v32)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D5B8C520(0, v32, 0);
    v33 = v44;
    v34 = v31 + 32;
    do
    {
      sub_1D7053D3C(v34, v42, sub_1D69A7BBC);
      v41[0] = v42[3];
      v41[1] = v42[4];
      sub_1D5B7C390(v41, v43);
      v44 = v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D5B8C520((v35 > 1), v36 + 1, 1);
        v33 = v44;
      }

      *(v33 + 16) = v36 + 1;
      sub_1D5B7C390(v43, (v33 + 32 * v36 + 32));
      v34 += 80;
      --v32;
    }

    while (v32);
  }

  else
  {
  }
}

Swift::Bool __swiftcall FormatLayoutView.gestureRecognizer(_:shouldRequireFailureOf:)(UIGestureRecognizer _, UIGestureRecognizer shouldRequireFailureOf)
{
  v2 = [(objc_class *)shouldRequireFailureOf.super.isa view];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FormatButton();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 != 0;

  return v4;
}

Swift::Bool __swiftcall FormatLayoutView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer _, UITouch shouldReceive)
{
  v2 = [(objc_class *)shouldReceive.super.isa view];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FormatButton();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 == 0;

  return v4;
}

void __swiftcall FormatLayoutView.sourceView(identifier:)(UIView_optional *__return_ptr retstr, Swift::String identifier)
{
  v3 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_1D5BB160C(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for FeedItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  swift_beginAccess();
  sub_1D6B47F90(&v3[v15], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D7053DA4(v9, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D5BB160C);
    goto LABEL_3;
  }

  sub_1D5C24B48(v9, v14);
  if (FeedItem.identifier.getter() == countAndFlagsBits && v28 == object)
  {

    sub_1D5BCAB0C(v14, type metadata accessor for FeedItem);
LABEL_24:
    v31 = v3;
    return;
  }

  v30 = sub_1D72646CC();

  sub_1D5BCAB0C(v14, type metadata accessor for FeedItem);
  if (v30)
  {
    goto LABEL_24;
  }

LABEL_3:
  v32[0] = countAndFlagsBits;
  v32[1] = object;
  v16 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v17 = *&v3[v16];
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      while (1)
      {
        v23 = v22;
LABEL_10:
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v35 = *(*(*(v17 + 56) + ((v23 << 9) | (8 * v24))) + 64);
        v25 = v35;
        sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
        sub_1D7051840();

        v26 = v25;
        if (swift_dynamicCast())
        {
          break;
        }

        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_1D7053DA4(v33, &unk_1EC899958, sub_1D7051840, MEMORY[0x1E69E6720], sub_1D5BB160C);
        v22 = v23;
        if (!v20)
        {
          goto LABEL_7;
        }
      }

      sub_1D5B63F14(v33, v36);
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v27 = sub_1D725EE5C();

      if (v27)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v22 = v23;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return;
      }

      v20 = *(v17 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D7051384(char *__src, char *__dst, char *a3, char *a4, void *a5, __n128 a6)
{
  v7 = a4;
  v8 = a3;
  v9 = __dst;
  v10 = __src;
  v11 = __dst - __src;
  v12 = (__dst - __src) / 80;
  v13 = a3 - __dst;
  v14 = (a3 - __dst) / 80;
  if (v12 >= v14)
  {
    if (a4 != __dst || &__dst[80 * v14] <= a4)
    {
      memmove(a4, __dst, 80 * v14);
    }

    v15 = (v7 + 80 * v14);
    if (v13 >= 80 && v9 > v10)
    {
      v22 = -v7;
      while (1)
      {
        v38 = v9 - 80;
        v23 = v15 - 80;
        v24 = &v15[v22];
        v8 -= 80;
        while (1)
        {
          sub_1D7053D3C(v23, v37, sub_1D69A7BBC);
          sub_1D7053D3C(v38, v36, sub_1D69A7BBC);
          v28 = sub_1D7052928(v37, v36, v27);
          if (v6)
          {
            sub_1D5BCAB0C(v36, sub_1D69A7BBC);
            sub_1D5BCAB0C(v37, sub_1D69A7BBC);
            v32 = v24 / 80;
            if (v9 >= v7 && v9 < v7 + 80 * v32 && v9 == v7)
            {
              goto LABEL_49;
            }

            v31 = 80 * v32;
            v21 = v9;
LABEL_48:
            memmove(v21, v7, v31);
            goto LABEL_49;
          }

          v29 = v28;
          sub_1D5BCAB0C(v36, sub_1D69A7BBC);
          sub_1D5BCAB0C(v37, sub_1D69A7BBC);
          if (v29)
          {
            break;
          }

          if (v8 + 80 != v23 + 80)
          {
            memmove(v8, v23, 0x50uLL);
          }

          v25 = v23 - 80;
          v24 -= 80;
          v8 -= 80;
          v26 = v23 > v7;
          v23 -= 80;
          if (!v26)
          {
            v15 = v25 + 80;
            goto LABEL_43;
          }
        }

        v20 = v8 + 80 == v9;
        v9 = v38;
        if (!v20)
        {
          memmove(v8, v38, 0x50uLL);
        }

        v15 = v23 + 80;
        if ((v23 + 80) <= v7)
        {
          v21 = v9;
          goto LABEL_51;
        }

        v21 = v9;
        v22 = -v7;
        if (v9 <= v10)
        {
LABEL_51:
          v15 = v23 + 80;
          goto LABEL_44;
        }
      }
    }

LABEL_43:
    v21 = v9;
LABEL_44:
    v33 = &v15[-v7] / 80;
    if (v21 >= v7 && v21 < v7 + 80 * v33 && v21 == v7)
    {
      goto LABEL_49;
    }

    v31 = 80 * v33;
    goto LABEL_48;
  }

  if (a4 != __src || &__src[80 * v12] <= a4)
  {
    memmove(a4, __src, 80 * v12);
  }

  v15 = (v7 + 80 * v12);
  if (v11 < 80 || v9 >= v8)
  {
LABEL_16:
    v21 = v10;
    goto LABEL_44;
  }

  while (1)
  {
    sub_1D7053D3C(v9, v37, sub_1D69A7BBC);
    sub_1D7053D3C(v7, v36, sub_1D69A7BBC);
    v17 = sub_1D7052928(v37, v36, v16);
    if (v6)
    {
      break;
    }

    v18 = v17;
    sub_1D5BCAB0C(v36, sub_1D69A7BBC);
    sub_1D5BCAB0C(v37, sub_1D69A7BBC);
    if (!v18)
    {
      v19 = v7;
      v20 = v10 == v7;
      v7 += 80;
      if (v20)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v10, v19, 0x50uLL);
      goto LABEL_14;
    }

    v19 = v9;
    v20 = v10 == v9;
    v9 += 80;
    if (!v20)
    {
      goto LABEL_13;
    }

LABEL_14:
    v10 += 80;
    if (v7 >= v15 || v9 >= v8)
    {
      goto LABEL_16;
    }
  }

  sub_1D5BCAB0C(v36, sub_1D69A7BBC);
  sub_1D5BCAB0C(v37, sub_1D69A7BBC);
  v30 = &v15[-v7] / 80;
  if (v10 < v7 || v10 >= v7 + 80 * v30 || v10 != v7)
  {
    v31 = 80 * v30;
    v21 = v10;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void sub_1D70517D8(uint64_t a1)
{
  if (!qword_1EC8909A8)
  {
    sub_1D5B5A498(255, &unk_1EDF04400, 0x1E69DC5E8);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8909A8);
    }
  }
}

unint64_t sub_1D7051840()
{
  result = qword_1EC899950;
  if (!qword_1EC899950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC899950);
  }

  return result;
}

void sub_1D70518AC(void *a1, unint64_t a2, unint64_t *a3)
{
  if (*a3 >> 62)
  {
    if (!sub_1D7263BFC())
    {
      return;
    }
  }

  else if (!*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v7 = sub_1D62096D4();
  if (!v7)
  {
    if (*a3 >> 62)
    {
      if (!__OFSUB__(sub_1D7263BFC(), 1))
      {
        goto LABEL_6;
      }
    }

    else if (!__OFSUB__(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
    {
LABEL_6:
      v7 = sub_1D5EC4C00();
      goto LABEL_7;
    }

    __break(1u);
LABEL_27:
    sub_1D726272C();
    goto LABEL_21;
  }

LABEL_7:
  v8 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  if ((v8 - 3) < 0x12 || !v8)
  {
    v12 = v7;
    MEMORY[0x1DA6F9CE0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v9 = a1;
    MEMORY[0x1DA6F9CE0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    goto LABEL_13;
  }

  v3 = v7;
  if (v8 == 1)
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    [a1 setMaskView_];
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v10 = sub_1D725FB7C();
    [a1 setMaskView_];
  }

  v11 = a1;
  MEMORY[0x1DA6F9CE0]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_27;
  }

LABEL_21:
  sub_1D726278C();

LABEL_13:
}

void sub_1D7051B28(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (*(*(a2 + 48) + v7) != 2)
      {
        v9 = sub_1D72646CC();

        if (v9)
        {
          goto LABEL_9;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_9:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v10 = *(qword_1EDFFCA38 + 112);
      swift_beginAccess();

      v12 = sub_1D6209084(v11);
      v13 = swift_endAccess();
      if (!v12)
      {
        v14 = *(v10 + 64);
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
          return;
        }

        *(v10 + 64) = v16;
        v12 = (*(v10 + 40))(v13);
      }

      sub_1D70518AC(v12, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a4;
      sub_1D6D7A7E8(v12, 0, 2, isUniquelyReferenced_nonNull_native);
      *a4 = v21;
    }
  }
}

void sub_1D7051DBC(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 <= 2 && v9 != 1 && v9 != 2)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v11 = *(qword_1EDFFCA38 + 120);
      swift_beginAccess();

      v13 = sub_1D6209084(v12);
      v14 = swift_endAccess();
      if (!v13)
      {
        v15 = *(v11 + 64);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          return;
        }

        *(v11 + 64) = v17;
        v13 = (*(v11 + 40))(v14);
      }

      sub_1D70518AC(v13, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a4;
      sub_1D6D7A7E8(v13, 1, 0, isUniquelyReferenced_nonNull_native);
      *a4 = v22;
    }
  }
}

void sub_1D705204C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (*(*(a2 + 48) + v7) > 2u || !*(*(a2 + 48) + v7) || *(*(a2 + 48) + v7) == 2)
      {
        v9 = sub_1D72646CC();

        if (v9)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      v10 = [objc_allocWithZone(sub_1D725DD9C()) initWithFrame_];
      sub_1D70518AC(v10, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a4;
      sub_1D6D7A7E8(v10, 2, 1, isUniquelyReferenced_nonNull_native);
      *a4 = v15;
    }
  }
}

void sub_1D7052268(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 > 2 && v9 != 4 && v9 != 5)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      v11 = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
      sub_1D70518AC(v11, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a4;
      sub_1D6D7A7E8(v11, 3, 3, isUniquelyReferenced_nonNull_native);
      *a4 = v16;
    }
  }
}

void sub_1D7052480(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 >= 4 && v9 != 5)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_10;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_10:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v11 = *(qword_1EDFFCA38 + 80);
      swift_beginAccess();

      v13 = sub_1D6209084(v12);
      v14 = swift_endAccess();
      if (!v13)
      {
        v15 = *(v11 + 64);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          return;
        }

        *(v11 + 64) = v17;
        v13 = (*(v11 + 40))(v14);
      }

      sub_1D70518AC(v13, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a4;
      sub_1D6D7A7E8(v13, 4, 4, isUniquelyReferenced_nonNull_native);
      *a4 = v22;
    }
  }
}

void sub_1D705270C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 > 4)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_9;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_9:
      v11 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithFrame_];
      sub_1D70518AC(v11, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a4;
      sub_1D6D7A7E8(v11, 5, 5, isUniquelyReferenced_nonNull_native);
      *a4 = v16;
    }
  }
}

BOOL sub_1D7052928(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D7053D3C(a1, &v61, sub_1D69A7BBC);
  v4 = v61;
  v5 = v62;
  v31 = v64;
  v33 = v63;
  sub_1D7053D3C(a2, &v56, sub_1D69A7BBC);
  v6 = v56;
  v7 = v57;
  v51 = v4;
  v52 = v5;
  v53 = v33;
  v54 = v31;
  v29 = v59;
  v32 = v58;
  sub_1D5B76B10(v65, &v55);
  *&v48 = v6;
  BYTE8(v48) = v7;
  v49.origin = v32;
  v49.size = v29;
  sub_1D5B76B10(v60, v50);
  sub_1D7053D3C(&v51, &v45, sub_1D69A7BBC);
  if (BYTE8(v45))
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
    if ((v7 & 1) == 0)
    {
      sub_1D5BCAB0C(&v48, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v51, sub_1D69A7BBC);
      v10 = 0;
      goto LABEL_19;
    }

    sub_1D7053D3C(&v51, &v37, sub_1D69A7BBC);
    MinX = CGRectGetMinX(v39);
    sub_1D7053D3C(&v48, v34, sub_1D69A7BBC);
    v9 = CGRectGetMinX(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v10 = MinX < v9;
    if (MinX < v9)
    {
      sub_1D7053D3C(&v51, &v37, sub_1D69A7BBC);
      y = v39.origin.y;
      x = v39.origin.x;
      width = v39.size.width;
      *&v45 = v37;
      BYTE8(v45) = v38;
      v46 = v39;
      height = v39.size.height;
      sub_1D5B7C390(v40, v47);
      v18 = &v48;
    }

    else
    {
      sub_1D7053D3C(&v48, &v37, sub_1D69A7BBC);
      y = v39.origin.y;
      x = v39.origin.x;
      width = v39.size.width;
      *&v45 = v37;
      BYTE8(v45) = v38;
      v46 = v39;
      height = v39.size.height;
      sub_1D5B7C390(v40, v47);
      v18 = &v51;
    }

    sub_1D7053D3C(v18, &v37, sub_1D69A7BBC);
    origin = v39.origin;
    size = v39.size;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    sub_1D5B7C390(v40, &v44);
    v67.origin = origin;
    v67.size = size;
    v30 = CGRectGetMinX(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MaxX = CGRectGetMaxX(v68);
    v69.origin.y = y;
    v22 = MaxX;
    v66 = x;
    v69.origin.x = x;
    v28 = v69.origin.y;
    v69.size.width = width;
    v69.size.height = height;
    MinY = CGRectGetMinY(v69);
    v70.origin = origin;
    v70.size = size;
    v24 = MinY - CGRectGetMinY(v70);
    if (v24 >= 10.0 || v24 >= v30 - v22)
    {
      sub_1D5BCAB0C(&v41, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v45, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v48, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v51, sub_1D69A7BBC);
    }

    else
    {
      v71.origin = origin;
      v71.size = size;
      MaxY = CGRectGetMaxY(v71);
      v72.origin.x = v66;
      v72.size.width = width;
      v72.origin.y = v28;
      v72.size.height = height;
      v26 = CGRectGetMinY(v72);
      sub_1D5BCAB0C(&v41, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v45, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v48, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v51, sub_1D69A7BBC);
      if (v26 < MaxY)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = v45;
    sub_1D5BCAB0C(&v51, sub_1D69A7BBC);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v45 = v48;
    v46 = v49;
    v47[0] = v50[0];
    v47[1] = v50[1];
    v12 = v48;
    v13 = BYTE8(v48);
    __swift_destroy_boxed_opaque_existential_1(v47);
    if (v13)
    {
      v10 = 1;
      goto LABEL_19;
    }

    if (v11 != v12)
    {
      v10 = v11 < v12;
      goto LABEL_19;
    }
  }

  if (*(&v33 + 1) == v32.y)
  {
    v10 = *&v33 <= v32.x;
  }

  else
  {
    v10 = *(&v33 + 1) < v32.y;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v10;
}

void sub_1D7052DDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v108 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v107 = *a1;
    if (*a1)
    {
      v108 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_93;
    }

    goto LABEL_134;
  }

  v103 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = v6;
      v14 = *a3;
      sub_1D7053D3C(*a3 + 80 * v12, &v115, sub_1D69A7BBC);
      sub_1D7053D3C(v14 + 80 * v11, v114, sub_1D69A7BBC);
      v16 = sub_1D7052928(&v115, v114, v15);
      if (v13)
      {
LABEL_102:
        sub_1D5BCAB0C(v114, sub_1D69A7BBC);
        sub_1D5BCAB0C(&v115, sub_1D69A7BBC);

        return;
      }

      v17 = v16;
      sub_1D5BCAB0C(v114, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v115, sub_1D69A7BBC);
      v18 = v11 + 2;
      v110 = v11;
      v19 = 80 * v11;
      v20 = v14 + 80 * v11 + 160;
      v6 = 0;
      while (v8 != v18)
      {
        sub_1D7053D3C(v20, &v115, sub_1D69A7BBC);
        sub_1D7053D3C(v20 - 80, v114, sub_1D69A7BBC);
        v22 = sub_1D7052928(&v115, v114, v21);
        sub_1D5BCAB0C(v114, sub_1D69A7BBC);
        sub_1D5BCAB0C(&v115, sub_1D69A7BBC);
        ++v18;
        v20 += 80;
        if ((v17 ^ v22))
        {
          v8 = v18 - 1;
          break;
        }
      }

      v11 = v110;
      if (v17)
      {
        if (v8 < v110)
        {
          goto LABEL_128;
        }

        if (v110 < v8)
        {
          v23 = 80 * v8 - 80;
          v24 = v8;
          do
          {
            if (v11 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v25 = (v26 + v23);
              v116 = *(v26 + v19 + 16);
              v117 = *(v26 + v19 + 32);
              v118 = *(v26 + v19 + 48);
              v119 = *(v26 + v19 + 64);
              v115 = *(v26 + v19);
              memmove((v26 + v19), (v26 + v23), 0x50uLL);
              v25[1] = v116;
              v25[2] = v117;
              v25[3] = v118;
              v25[4] = v119;
              *v25 = v115;
            }

            ++v11;
            v23 -= 80;
            v19 += 80;
          }

          while (v11 < v24);
          v11 = v110;
        }
      }
    }

    v27 = a3[1];
    if (v8 >= v27)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= v103)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v11, v103))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:

      __break(1u);
LABEL_130:

      __break(1u);
      goto LABEL_131;
    }

    if (v11 + v103 >= v27)
    {
      v28 = a3[1];
    }

    else
    {
      v28 = v11 + v103;
    }

    if (v28 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v28)
    {
LABEL_29:
      v29 = v8;
      if (v8 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v80 = *a3;
      v81 = (*a3 + 80 * v8);
      v112 = v11;
      v82 = v11 - v8;
      v105 = v28;
      do
      {
        v102 = v82;
        v107 = v81;
        do
        {
          sub_1D7053D3C(v81, &v115, sub_1D69A7BBC);
          v83 = v81 - 80;
          sub_1D7053D3C((v81 - 80), v114, sub_1D69A7BBC);
          v85 = sub_1D7052928(&v115, v114, v84);
          if (v6)
          {
            goto LABEL_102;
          }

          v86 = v85;
          sub_1D5BCAB0C(v114, sub_1D69A7BBC);
          sub_1D5BCAB0C(&v115, sub_1D69A7BBC);
          if (!v86)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_130;
          }

          v116 = *(v81 + 1);
          v117 = *(v81 + 2);
          v118 = *(v81 + 3);
          v119 = *(v81 + 4);
          v115 = *v81;
          v87 = *(v81 - 2);
          *(v81 + 2) = *(v81 - 3);
          *(v81 + 3) = v87;
          *(v81 + 4) = *(v81 - 1);
          v88 = *(v81 - 4);
          *v81 = *v83;
          *(v81 + 1) = v88;
          *v83 = v115;
          v89 = v116;
          v90 = v117;
          v91 = v119;
          *(v81 - 2) = v118;
          *(v81 - 1) = v91;
          *(v81 - 4) = v89;
          *(v81 - 3) = v90;
          v81 -= 80;
        }

        while (!__CFADD__(v82++, 1));
        ++v8;
        v81 = v107 + 80;
        v82 = v102 - 1;
        v29 = v105;
      }

      while (v8 != v105);
      v11 = v112;
      if (v105 < v112)
      {
        goto LABEL_123;
      }
    }

    v111 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
    }

    v6 = *(v10 + 2);
    v30 = *(v10 + 3);
    v31 = v6 + 1;
    if (v6 >= v30 >> 1)
    {
      v10 = sub_1D698BA94((v30 > 1), v6 + 1, 1, v10);
    }

    *(v10 + 2) = v31;
    v32 = &v10[16 * v6];
    *(v32 + 4) = v11;
    *(v32 + 5) = v29;
    v104 = v29;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v6 = v111;
    v8 = a3[1];
    v9 = v104;
    if (v104 >= v8)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v33 = v31 - 1;
    if (v31 >= 4)
    {
      v38 = &v10[16 * v31 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_110;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_111;
      }

      v45 = &v10[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_113;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_116;
      }

      if (v49 >= v41)
      {
        v67 = &v10[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_122;
        }

        if (v36 < v70)
        {
          v33 = v31 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v31 == 3)
    {
      v34 = *(v10 + 4);
      v35 = *(v10 + 5);
      v44 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      v37 = v44;
LABEL_49:
      if (v37)
      {
        goto LABEL_112;
      }

      v50 = &v10[16 * v31];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      v55 = v53;
      if (v53)
      {
        goto LABEL_115;
      }

      v56 = &v10[16 * v33 + 32];
      v58 = *v56;
      v57 = *(v56 + 1);
      v44 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v44)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v54, v59))
      {
        goto LABEL_119;
      }

      if (v54 + v59 >= v36)
      {
        if (v36 < v59)
        {
          v33 = v31 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v60 = &v10[16 * v31];
    v62 = *v60;
    v61 = *(v60 + 1);
    v44 = __OFSUB__(v61, v62);
    v54 = v61 - v62;
    v55 = v44;
LABEL_63:
    if (v55)
    {
      goto LABEL_114;
    }

    v63 = &v10[16 * v33];
    v65 = *(v63 + 4);
    v64 = *(v63 + 5);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_117;
    }

    if (v66 < v54)
    {
      goto LABEL_3;
    }

LABEL_70:
    v71 = v33 - 1;
    if (v33 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v73 = *&v10[16 * v71 + 32];
    v6 = *&v10[16 * v33 + 40];
    v74 = (v72 + 80 * v73);
    v75 = (v72 + 80 * *&v10[16 * v33 + 32]);
    v76 = (v72 + 80 * v6);
    v77 = v108;
    sub_1D7051384(v74, v75, v76, v107, v77, v78);
    if (v111)
    {

      return;
    }

    if (v6 < v73)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D62FF50C(v10);
    }

    if (v71 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v79 = &v10[16 * v71];
    *(v79 + 4) = v73;
    *(v79 + 5) = v6;
    v120 = v10;
    sub_1D62FF480(v33);
    v10 = v120;
    v31 = *(v120 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v10 = sub_1D62FF50C(v10);
LABEL_93:
  v113 = v6;
  v120 = v10;
  v93 = *(v10 + 2);
  if (v93 < 2)
  {
LABEL_103:
  }

  else
  {
    while (1)
    {
      v94 = *a3;
      if (!*a3)
      {
        break;
      }

      v95 = *&v10[16 * v93];
      v6 = *&v10[16 * v93 + 24];
      v96 = (v94 + 80 * v95);
      v97 = (v94 + 80 * *&v10[16 * v93 + 16]);
      v98 = (v94 + 80 * v6);
      v99 = v108;
      sub_1D7051384(v96, v97, v98, v107, v99, v100);
      if (v113)
      {

        return;
      }

      if (v6 < v95)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D62FF50C(v10);
      }

      if (v93 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v101 = &v10[16 * v93];
      *v101 = v95;
      *(v101 + 1) = v6;
      v120 = v10;
      sub_1D62FF480(v93 - 1);
      v10 = v120;
      v93 = *(v120 + 2);
      if (v93 <= 1)
      {
        goto LABEL_103;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
LABEL_134:

    __break(1u);
  }
}

uint64_t sub_1D7053714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 80 * a3);
    v9 = result - a3;
LABEL_4:
    v10 = v9;
    v27 = v8;
    while (1)
    {
      sub_1D7053D3C(v8, &v22, sub_1D69A7BBC);
      v11 = v8 - 5;
      sub_1D7053D3C((v8 - 5), v21, sub_1D69A7BBC);
      v13 = sub_1D7052928(&v22, v21, v12);
      sub_1D5BCAB0C(v21, sub_1D69A7BBC);
      result = sub_1D5BCAB0C(&v22, sub_1D69A7BBC);
      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v23 = v8[1];
        v24 = v8[2];
        v25 = v8[3];
        v26 = v8[4];
        v22 = *v8;
        v14 = *(v8 - 2);
        v8[2] = *(v8 - 3);
        v8[3] = v14;
        v8[4] = *(v8 - 1);
        v15 = *(v8 - 4);
        *v8 = *v11;
        v8[1] = v15;
        *v11 = v22;
        v16 = v23;
        v17 = v24;
        v18 = v26;
        *(v8 - 2) = v25;
        *(v8 - 1) = v18;
        *(v8 - 4) = v16;
        *(v8 - 3) = v17;
        v8 -= 5;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v6;
      v8 = v27 + 5;
      --v9;
      if (v6 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1D7053898(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1D726449C();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v7 = v5;
      v8 = v3 / 2;
      if (v3 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D69A7BBC(0);
        v9 = sub_1D726276C();
        *(v9 + 16) = v8;
      }

      v11[0] = (v9 + 32);
      v11[1] = v8;
      v10 = v4;
      sub_1D7052DDC(v11, v12, a1, v7, v10);

      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1D7053714(0, v3, 1, a1, v6);
  }
}

void sub_1D70539BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFD10(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_1D7053898(v7, v6);

  *a1 = v3;
}

void sub_1D7053A54()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  v6 = type metadata accessor for FeedItem(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty) = 0;
  v8 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName) = v8;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer) = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D7053C04(uint64_t a1)
{
  if (!qword_1EDF3BDE0)
  {
    sub_1D7053E1C(255, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
    v1 = sub_1D725A81C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BDE0);
    }
  }
}

void sub_1D7053C8C(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v3 = a1;
  }
}

void sub_1D7053C9C(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1D7053CCC(uint64_t a1)
{
  if (!qword_1EC899970)
  {
    type metadata accessor for FormatShareAttributionData(255);
    type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899970);
    }
  }
}

uint64_t sub_1D7053D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7053DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D7053E1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t FormatLatestCompatibleFileReference.init(latestCompatible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for FormatFileReference(0, a2, a3, a4);
  v10 = *(v9 - 8);
  (*(v10 + 16))(a5, a1, v9);
  sub_1D72644CC();
  swift_allocObject();
  v11 = sub_1D726270C();
  (*(v10 + 32))(v12, a1, v9);
  v13 = sub_1D5BFCB60(v11, v9);
  FormatFileReferenceCollection.init(references:)(v13, &v17);
  v14 = v17;
  result = type metadata accessor for FormatLatestCompatibleFileReference(0, a2, a3, v15);
  *(a5 + *(result + 36)) = v14;
  return result;
}

uint64_t static FormatLatestCompatibleFileReference.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (static FormatFileReference.== infix(_:_:)(a1, a2, a3, a4))
  {
    v9 = *(type metadata accessor for FormatLatestCompatibleFileReference(0, a3, a4, v8) + 36);
    v10 = *(a1 + v9);
    v13 = *&a2[v9];
    v14 = v10;

    v11 = static FormatFileReferenceCollection.== infix(_:_:)(&v14, &v13, a3, a4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t FormatLatestCompatibleFileReference.latestCompatible.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for FormatFileReference(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t FormatLatestCompatibleFileReference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v9 = type metadata accessor for FormatFileReference(255, a2, a3, a4);
  v10 = sub_1D726393C();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - v16;
  sub_1D5B68374(a1, v45);
  FormatFileReferenceCollection.init(from:)(v45, a2, a3, &v46, v18);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = a1;
  v21 = v46;
  v45[0] = v46;
  v22 = type metadata accessor for FormatFileReferenceCollection(0, a2, a3, v19);
  v26 = FormatFileReferenceCollection.latestFormatCompatible.getter(v22, v23, v24, v25);
  if ((*(v44 + 48))(v13, 1, v9, v26) == 1)
  {
    v27 = (*(v42 + 8))(v13, v10);
    v45[0] = v21;
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v40 - 2) = a2;
    *(&v40 - 1) = a3;
    v29 = sub_1D72627FC();
    WitnessTable = swift_getWitnessTable();
    v32 = sub_1D5B874E4(sub_1D70545A0, (&v40 - 4), v29, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v31);

    v45[0] = v32;
    sub_1D5BBE0A8();
    sub_1D5BB0AB8();
    v33 = sub_1D7261F3C();
    v35 = v34;

    sub_1D5E2D970();
    swift_allocError();
    *v36 = v33;
    v36[1] = v35;
    v36[3] = 0;
    v36[4] = 0;
    v36[2] = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v37 = *(v44 + 32);
    (v37)(v17, v13, v9);
    v39 = type metadata accessor for FormatLatestCompatibleFileReference(0, a2, a3, v38);
    *(v43 + *(v39 + 36)) = v21;
    return v37();
  }
}

uint64_t sub_1D7054454@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for FormatFileReference(0, a2, a3, a4);
  swift_getWitnessTable();
  result = sub_1D726466C();
  *a5 = 0;
  a5[1] = 0xE000000000000000;
  return result;
}

double FormatLatestCompatibleFileReference.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FormatFileReferenceCollection(0, *(a2 + 16), *(a2 + 24), a4);

  FormatFileReferenceCollection.encode(to:)(a1, v5);

  return result;
}

uint64_t sub_1D70545C0(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7054640(_DWORD *a1, int a2, uint64_t a3)
{
  v6 = *(*(sub_1D72585BC() - 8) + 64);
  v7 = *(sub_1D725BD1C() - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 7;
  v10 = ((v8 | 7) + v6) & ~(v8 | 7);
  v11 = *(v7 + 64);
  v12 = (v11 + v8 + ((v11 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8;
  if (*(v7 + 84))
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = ((((((((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 + v10;
  v16 = v14 + ((*(*(*(a3 + 16) - 8) + 64) + v9) & ~v9);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v19 = v16 + 16;
  v20 = a2 - 2147483646;
  if ((v16 + 16) > 3)
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v22 == 4)
  {
    v23 = *(a1 + v19);
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  else if (v22 == 2)
  {
    v23 = *(a1 + v19);
    if (!*(a1 + v19))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(a1 + v19);
    if (!*(a1 + v19))
    {
LABEL_8:
      v17 = *((a1 + v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v24 = v23 - 1;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    LODWORD(v19) = *a1;
  }

  return (v19 | v24) ^ 0x80000000;
}

void sub_1D7054814(int *a1, int a2, int a3, uint64_t a4)
{
  v8 = *(*(sub_1D72585BC() - 8) + 64);
  v9 = *(sub_1D725BD1C() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v12 = ((v10 | 7) + v8) & ~(v10 | 7);
  v13 = *(v9 + 64);
  v14 = (v13 + v10 + ((v13 + v10 + ((v10 + 16) & ~v10)) & ~v10)) & ~v10;
  if (*(v9 + 84))
  {
    v15 = *(v9 + 64);
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((((((((v15 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 + v12;
  v18 = v16 + ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  v19 = v18 + 16;
  if (a3 < 0)
  {
    v21 = a3 - 2147483646;
    if (v19 > 3)
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = v22;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v23 = a2 & 0x7FFFFFFF;
    if (v19 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19)
    {
      if (v19 <= 3)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      bzero(a1, v19);
      *a1 = v25;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v20)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  v20 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v20 <= 1)
  {
    if (v20)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    *(a1 + v19) = 0;
    goto LABEL_34;
  }

  *(a1 + v19) = 0;
  if (a2)
  {
LABEL_35:
    *((a1 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

id sub_1D7054A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 64);
  sub_1D725A7EC();
  v5 = sub_1D6E465F4();

  if (v4)
  {
    v6 = &unk_1F50F4380;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D5EEFCA0(v6, v5);

  v8 = sub_1D61881BC();
  *a2 = v3;
  *(a2 + 8) = &unk_1F50F43A8;
  *(a2 + 16) = 0;
  *(a2 + 66) = 3;
  *(a2 + 72) = v7;
  *(a2 + 80) = v3;
  *(a2 + 88) = v8 & 1 | 0x10;
  type metadata accessor for FormatAction(0);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t FormatIssueBinding.Action.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D7054B90()
{
  result = qword_1EC899978;
  if (!qword_1EC899978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899978);
  }

  return result;
}

unint64_t sub_1D7054BE4(uint64_t a1)
{
  result = sub_1D7054C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7054C0C()
{
  result = qword_1EC899980;
  if (!qword_1EC899980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899980);
  }

  return result;
}

unint64_t sub_1D7054C60(void *a1)
{
  a1[1] = sub_1D667D400();
  a1[2] = sub_1D67007B8();
  result = sub_1D7054B90();
  a1[3] = result;
  return result;
}

uint64_t static FormatArrangementSlotInstruction.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v14 = *a2;
  v15 = v4;
  v7 = type metadata accessor for FormatArrangementTemplateReference(255, a3, a4, a4);

  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = type metadata accessor for FormatCodingSafeishArrayStrategy(0, v7, WitnessTable, v9);
  v11 = swift_getWitnessTable();
  sub_1D72627FC();
  swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  LODWORD(v10) = static FormatCodingDefault<>.== infix(_:_:)(&v15, &v14, v10, v11, v12);

  return v10 & ~(v5 ^ v6) & 1;
}

uint64_t FormatArrangementSlotInstruction.templates.getter()
{
  sub_1D5D2F2BC();
}

uint64_t sub_1D7054E70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for FormatArrangementSlotInstruction(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = sub_1D5D2F2BC();
}

uint64_t sub_1D7054F4C@<X0>(_BYTE *a1@<X8>)
{
  result = FormatArrangementSlotInstruction.personalize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7054FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xEB00000000657A69)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7055094(char a1)
{
  if (a1)
  {
    return 0x6C616E6F73726570;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_1D70550E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7054FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7055118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D705516C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementSlotInstruction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v22 = *(a2 + 24);
  v23 = v6;
  type metadata accessor for FormatArrangementSlotInstruction.CodingKeys(255, v6, v22, a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = *v4;
  HIDWORD(v21) = *(v4 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B5C();
  v29 = v11;
  v28 = 0;
  v13 = type metadata accessor for FormatArrangementTemplateReference(255, v23, v22, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = type metadata accessor for FormatCodingSafeishArrayStrategy(0, v13, WitnessTable, v15);
  v17 = swift_getWitnessTable();
  v18 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v29, &v28, v7, v16, v17);
  if (v18)
  {

    return (*(v24 + 8))(v10, v7);
  }

  else
  {
    v20 = v24;

    v27 = BYTE4(v21);
    v26 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v27, &v26, v7, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
    return (*(v20 + 8))(v10, v7);
  }
}

void FormatArrangementSlotInstruction.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a4;
  v24 = a3;
  type metadata accessor for FormatArrangementSlotInstruction.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v25 = sub_1D726435C();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v8;
    v14 = v23;
    v27[1] = 0;
    v15 = type metadata accessor for FormatArrangementTemplateReference(255, a2, v24, v12);
    WitnessTable = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    v18 = type metadata accessor for FormatCodingSafeishArrayStrategy(0, v15, WitnessTable, v17);
    v19 = swift_getWitnessTable();
    v20 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v18, v19, &v28);
    v21 = v28;
    v26 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, v27);
    (*(v13 + 8))(v11, v20);
    v22 = v27[0];
    *v14 = v21;
    *(v14 + 8) = v22;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D705574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1D7055A8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button;
  *&v2[v5] = [objc_opt_self() buttonWithType_];
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap;
  sub_1D5BFDBB4();
  *&v2[v6] = [objc_allocWithZone(v7) init];
  if (a2)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, 3, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button;
  [v11 addSubview_];

  v13 = *&v10[v12];
  v14 = *&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap];
  v15 = v13;
  sub_1D725F67C();

  return v10;
}

id SharingTagTextActivityItemSource.__allocating_init(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D70566C4(a1, v1);
}

id SharingTagTextActivityItemSource.__allocating_init(feedDescriptor:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = FCFeedDescriptor.feedTag.getter();
  v5 = FCFeedDescriptor.feedExternalTitle.getter();
  v6 = &v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v6 = v5;
  v6[1] = v7;
  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id SharingTagTextActivityItemSource.init(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D705670C(a1, v1);
}

id SharingTagTextActivityItemSource.init(feedDescriptor:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = FCFeedDescriptor.feedTag.getter();
  v5 = FCFeedDescriptor.feedExternalTitle.getter();
  v6 = &v2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v6 = v5;
  v6[1] = v7;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t SharingTagTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

double SharingTagTextActivityItemSource.activityViewController(_:itemForActivityType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (a1)
  {
    v7 = sub_1D726207C();
    v9 = v8;
    if (v7 == sub_1D726207C() && v9 == v10)
    {

LABEL_13:
      v14 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
      v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16 == 0xE000000000000000;
      }

      if (!v17 && (sub_1D72646CC() & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[0] = v14;
        sub_1D6D76D20(v15, v16, 0x2D6C656E6E616863, 0xED0000656C746974, isUniquelyReferenced_nonNull_native);
      }

      v19 = objc_opt_self();
      v20 = sub_1D7261D2C();

      v28[0] = 0;
      v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v28];

      v22 = v28[0];
      if (v21)
      {
        v23 = sub_1D725867C();
        v25 = v24;

        *(a2 + 24) = MEMORY[0x1E6969080];
        *a2 = v23;
        *(a2 + 8) = v25;
      }

      else
      {
        v26 = v22;
        v27 = sub_1D725829C();

        swift_willThrow();
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }

      return result;
    }

    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  sub_1D70560AC(a1, v2, a2);
  return result;
}

void sub_1D70560AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = a2;
  v5 = sub_1D726207C();
  v7 = v6;
  if (v5 == sub_1D726207C() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_1D72646CC();

  if (v10)
  {
LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v11 = sub_1D726207C();
  v13 = v12;
  if (v11 == sub_1D726207C() && v13 == v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = sub_1D72646CC();

  if (v16)
  {
    goto LABEL_16;
  }

  v17 = sub_1D726207C();
  v19 = v18;
  if (v17 == sub_1D726207C() && v19 == v20)
  {
    goto LABEL_14;
  }

  v21 = sub_1D72646CC();

  if (v21)
  {
    goto LABEL_21;
  }

  v22 = sub_1D726207C();
  v24 = v23;
  if (v22 == sub_1D726207C() && v24 == v25)
  {
LABEL_14:

LABEL_21:
    *(a3 + 24) = MEMORY[0x1E69E6158];
    *a3 = 0;
    *(a3 + 8) = 0xE000000000000000;
    return;
  }

  v26 = sub_1D72646CC();

  a2 = v4;
  if (v26)
  {
    goto LABEL_21;
  }

LABEL_22:
  v28 = *(a2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v27 = *(a2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
  *(a3 + 24) = MEMORY[0x1E69E6158];
  *a3 = v28;
  *(a3 + 8) = v27;
}

Swift::String __swiftcall SharingTagTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SharingTagTextActivityItemSource.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);

  v5 = v3;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id SharingTagTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingTagTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D70566C4(void *a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return sub_1D705670C(a1, v3);
}

id sub_1D705670C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = a1;
  v5 = [swift_unknownObjectRetain() asPuzzleType];
  if (v5)
  {
    v6 = [v5 nameForSharing];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = [a1 displayName];
  }

  v7 = sub_1D726207C();
  v9 = v8;

  swift_unknownObjectRelease();
  v10 = &a2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v10 = v7;
  *(v10 + 1) = v9;
  v12.receiver = a2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t ResetPuzzleProgressCommandHandler.__allocating_init(historyService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B7DDE8(a1, v2 + 16);
  return v2;
}

double ResetPuzzleProgressCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  v8 = [a4 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  (*(v7 + 40))(v9, v11, v6, v7);

  return result;
}

uint64_t ResetPuzzleProgressCommandHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1D70569D0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  v6 = *(*v4 + 40);
  v7 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  v8 = [v5 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  (*(v7 + 40))(v9, v11, v6, v7);

  return result;
}

uint64_t _s8NewsFeed33ResetPuzzleProgressCommandHandlerC9canHandle13commandCenter0J04with6sourceSb5TeaUI0fK4Type_p_AI0F0CySo17FCPuzzleProviding_pGSoAM_pAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_1D725E87C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D725950C();
  sub_1D72596CC();

  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E69D8000])
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = *MEMORY[0x1E69D8008];
    v9 = *MEMORY[0x1E69D8010];
    sub_1D725A9FC();
    v6 = sub_1D725A9CC();
    if (v7 != v8 && v7 != v9)
    {
      (*(v1 + 8))(v4, v0);
    }
  }

  return v6 & 1;
}

uint64_t sub_1D7056D1C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B590A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL _s8NewsFeed35FormatCompilerSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6A58];
  sub_1D5B590A0(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = &v51 - v10;
  v11 = a1;
  sub_1D7057568(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v7);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v51 - v14;
  v15 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B590A0(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v51 - v22);
  sub_1D7057568(0, &qword_1EC8999C0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v51 - v27;
  if ((sub_1D633C7DC(*v11, *a2) & 1) == 0)
  {
    return 0;
  }

  v53 = v4;
  v29 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  v30 = *(v29 + 20);
  v31 = *(v25 + 48);
  v51 = v29;
  v52 = v11;
  sub_1D7056D1C(v11 + v30, v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D7056D1C(a2 + v30, &v28[v31], qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v32 = *(v16 + 48);
  if (v32(v28, 1, v15) != 1)
  {
    sub_1D7056D1C(v28, v23, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    if (v32(&v28[v31], 1, v15) != 1)
    {
      sub_1D70576CC(&v28[v31], v19);
      v37 = _s8NewsFeed44FormatCompilerSlotDefinitionItemSetAuxiliaryV2eeoiySbAC_ACtFZ_0(v23, v19);
      sub_1D7057670(v19);
      sub_1D7057670(v23);
      sub_1D5CDE6DC(v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
      if (!v37)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1D7057670(v23);
LABEL_7:
    v33 = &qword_1EC8999C0;
    v34 = qword_1EDF43D48;
    v35 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary;
    v36 = v28;
LABEL_15:
    sub_1D70575CC(v36, v33, v34, v35);
    return 0;
  }

  if (v32(&v28[v31], 1, v15) != 1)
  {
    goto LABEL_7;
  }

  sub_1D5CDE6DC(v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
LABEL_9:
  v38 = *(v51 + 24);
  v39 = v57;
  v40 = *(v56 + 48);
  v41 = MEMORY[0x1E69D6A58];
  sub_1D7056D1C(v52 + v38, v57, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D7056D1C(a2 + v38, v39 + v40, &qword_1EDF45AD0, v41);
  v42 = v58;
  v43 = *(v58 + 48);
  v44 = v53;
  if (v43(v39, 1, v53) == 1)
  {
    if (v43(v39 + v40, 1, v44) == 1)
    {
      sub_1D5CDE6DC(v39, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_14;
  }

  v45 = v55;
  sub_1D7056D1C(v39, v55, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v43(v39 + v40, 1, v44) == 1)
  {
    (*(v42 + 8))(v45, v44);
LABEL_14:
    v33 = &qword_1EDF3BA98;
    v34 = &qword_1EDF45AD0;
    v35 = MEMORY[0x1E69D6A58];
    v36 = v39;
    goto LABEL_15;
  }

  v47 = v39 + v40;
  v48 = v54;
  (*(v42 + 32))(v54, v47, v44);
  sub_1D7057628(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
  v49 = sub_1D7261FBC();
  v50 = *(v42 + 8);
  v50(v48, v44);
  v50(v45, v44);
  sub_1D5CDE6DC(v39, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v49 & 1) != 0;
}

uint64_t sub_1D7057464(uint64_t a1)
{
  result = sub_1D7057628(&qword_1EC8999B0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70574BC(void *a1)
{
  a1[1] = sub_1D7057628(&qword_1EDF1D928, type metadata accessor for FormatCompilerSlotDefinitionItemSet, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSet);
  a1[2] = sub_1D7057628(&qword_1EDF071A8, type metadata accessor for FormatCompilerSlotDefinitionItemSet, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSet);
  result = sub_1D7057628(&qword_1EC8999B8, type metadata accessor for FormatCompilerSlotDefinitionItemSet, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSet);
  a1[3] = result;
  return result;
}

void sub_1D7057568(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B590A0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D70575CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7057568(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7057628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7057670(uint64_t a1)
{
  v2 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D70576CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:contentFrameIdentifier:puzzleIdentifier:accessibilityRole:isResizable:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, char a20, uint64_t a21, uint64_t a22)
{
  v32 = swift_allocObject();
  v33 = *a8;
  v34 = *a14;
  v35 = *a19;
  v36 = *(a19 + 8);
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  *(v32 + 56) = a6;
  *(v32 + 64) = a9;
  *(v32 + 72) = a10;
  *(v32 + 80) = a11;
  *(v32 + 88) = a12;
  v37 = *a7;
  v38 = a7[1];
  v39 = a7[3];
  *(v32 + 128) = a7[2];
  *(v32 + 144) = v39;
  *(v32 + 96) = v37;
  *(v32 + 112) = v38;
  *(v32 + 160) = v33;
  *(v32 + 168) = a13;
  *(v32 + 176) = v34;
  *(v32 + 184) = a15;
  *(v32 + 192) = a16;
  *(v32 + 200) = v35;
  *(v32 + 208) = v36;
  *(v32 + 209) = a20;
  *(v32 + 216) = a21;
  *(v32 + 224) = a22;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a17, a18);

  *(v32 + 232) = a3;
  *(v32 + 240) = a4;
  *(v32 + 248) = MEMORY[0x1E69E7CD0];
  return v32;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D6755B04(v7, &v6);
}

double FormatPuzzleEmbedNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 160);

  return result;
}

double FormatPuzzleEmbedNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.contentFrameIdentifier.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

void FormatPuzzleEmbedNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.location.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:contentFrameIdentifier:puzzleIdentifier:accessibilityRole:isResizable:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, char a20, uint64_t a21, uint64_t a22)
{
  v23 = *a8;
  v24 = *a14;
  v25 = *a19;
  v26 = *(a19 + 8);
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a9;
  *(v22 + 72) = a10;
  *(v22 + 80) = a11;
  *(v22 + 88) = a12;
  v27 = *a7;
  v28 = a7[1];
  v29 = a7[3];
  *(v22 + 128) = a7[2];
  *(v22 + 144) = v29;
  *(v22 + 96) = v27;
  *(v22 + 112) = v28;
  *(v22 + 160) = v23;
  *(v22 + 168) = a13;
  *(v22 + 176) = v24;
  *(v22 + 184) = a15;
  *(v22 + 192) = a16;
  *(v22 + 200) = v25;
  *(v22 + 208) = v26;
  *(v22 + 209) = a20;
  *(v22 + 216) = a21;
  *(v22 + 224) = a22;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a17, a18);

  *(v22 + 232) = a3;
  *(v22 + 240) = a4;
  *(v22 + 248) = MEMORY[0x1E69E7CD0];
  return v22;
}

unint64_t sub_1D7057B70(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E65644965646F6ELL;
      break;
    case 3:
      result = 0x656D617266;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x676E697A69736572;
      break;
    case 6:
      result = 0x7865646E497ALL;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x617A697365527369;
      break;
    case 11:
      result = 0x6E6F697461636F6CLL;
      break;
    case 12:
      result = 0x6564496573756572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7057D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7059190(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7057D48(uint64_t a1)
{
  v2 = sub_1D70583FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7057D84(uint64_t a1)
{
  v2 = sub_1D70583FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.deinit()
{

  sub_1D67564F0(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_1D5EB15C4(*(v0 + 176));

  return v0;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__deallocating_deinit()
{
  FormatPuzzleEmbedNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D7058C68(0, &qword_1EC8999C8, sub_1D70583FC, &type metadata for FormatPuzzleEmbedNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70583FC();
  sub_1D7264B5C();
  LOBYTE(v27[0]) = 0;
  v10 = v19[1];
  sub_1D72643FC();
  if (!v10)
  {
    LOBYTE(v27[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v27[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v11 = *(v2 + 80);
    v27[4] = *(v2 + 64);
    v27[5] = v11;
    v30 = 3;
    type metadata accessor for CGRect(0);
    sub_1D70595FC(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    v12 = *(v2 + 112);
    v27[0] = *(v2 + 96);
    v27[1] = v12;
    v13 = *(v2 + 144);
    v15 = *(v2 + 96);
    v14 = *(v2 + 112);
    v27[2] = *(v2 + 128);
    v27[3] = v13;
    v23 = v15;
    v24 = v14;
    v16 = *(v2 + 144);
    v25 = *(v2 + 128);
    v26 = v16;
    v29 = 4;
    sub_1D6755B04(v27, v22);
    sub_1D66B03DC();
    sub_1D72643BC();
    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v26;
    sub_1D6755C1C(v22);
    v20 = *(v2 + 160);
    v28 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v20) = 6;
    sub_1D726442C();
    v20 = *(v2 + 176);
    v28 = 7;
    sub_1D5EB1500(v20);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v20);
    LOBYTE(v20) = 8;
    sub_1D726437C();
    v17 = *(v2 + 208);
    v20 = *(v2 + 200);
    v21 = v17;
    v28 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    LOBYTE(v20) = 10;
    sub_1D726440C();
    LOBYTE(v20) = 11;
    sub_1D726437C();
    LOBYTE(v20) = 12;
    sub_1D72643FC();
    v20 = *(v2 + 248);
    v28 = 13;
    sub_1D7058C68(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D7058CD0(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D70583FC()
{
  result = qword_1EC8999D0;
  if (!qword_1EC8999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999D0);
  }

  return result;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t *FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D7058C68(0, &qword_1EC8999D8, sub_1D70583FC, &type metadata for FormatPuzzleEmbedNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70583FC();
  v25 = v8;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v21 = a1;
  }

  else
  {
    v22 = a1;
    v9 = v23;
    LOBYTE(v28) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v10;
    LOBYTE(v28) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v28) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    LOBYTE(v26) = 3;
    sub_1D70595FC(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v29;
    *(v1 + 64) = v28;
    *(v1 + 80) = v13;
    v33 = 4;
    sub_1D66A5CB0();
    sub_1D726427C();
    v15 = v29;
    *(v1 + 96) = v28;
    *(v1 + 112) = v15;
    v16 = v31;
    *(v1 + 128) = v30;
    *(v1 + 144) = v16;
    v32 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 160) = v26;
    LOBYTE(v26) = 6;
    *(v1 + 168) = sub_1D72642FC();
    v32 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 176) = v26;
    LOBYTE(v26) = 8;
    *(v1 + 184) = sub_1D726422C();
    *(v1 + 192) = v17;
    v32 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v18 = v27;
    *(v1 + 200) = v26;
    *(v1 + 208) = v18;
    LOBYTE(v26) = 10;
    *(v1 + 209) = sub_1D72642CC() & 1;
    LOBYTE(v26) = 11;
    *(v1 + 216) = sub_1D726422C();
    *(v1 + 224) = v19;
    LOBYTE(v26) = 12;
    *(v1 + 232) = sub_1D72642BC();
    *(v1 + 240) = v20;
    sub_1D7058C68(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v32 = 13;
    sub_1D7058CD0(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v9 + 8))(v25, v24);
    v3 = v1;
    *(v1 + 248) = v26;
    v21 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v3;
}

void sub_1D7058C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D7058CD0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7058C68(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1D7058EC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D7058F40(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D70595FC(&qword_1EC8940B8, a2, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes, &protocol conformance descriptor for FormatPuzzleEmbedNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D705908C()
{
  result = qword_1EC8999F0;
  if (!qword_1EC8999F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999F0);
  }

  return result;
}

unint64_t sub_1D70590E4()
{
  result = qword_1EC8999F8;
  if (!qword_1EC8999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999F8);
  }

  return result;
}

unint64_t sub_1D705913C()
{
  result = qword_1EC899A00;
  if (!qword_1EC899A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A00);
  }

  return result;
}

uint64_t sub_1D7059190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73B7620 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617A697365527369 && a2 == 0xEB00000000656C62 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D70595FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D7059644@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2B12C(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v34 - v6;
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v36, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory;
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
  v14 = *(v13 + 24);
  *a2 = *(v13 + 16);
  a2[1] = v14;
  v15 = *(a1 + 24);
  a2[2] = *(a1 + 16);
  a2[3] = v15;
  v38 = a1;
  v16 = (a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory);
  a2[4] = *(*(v16 + *(type metadata accessor for FormatGroupLayoutFactory.Bound(0) + 64)) + 16);
  v18 = v16[4];
  v17 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v18);
  v19 = *(v17 + 32);

  v19((&v39 + 1), v18, v17);
  if (BYTE1(v39) > 1u)
  {
    if (BYTE1(v39) == 2)
    {
      v20 = 0xE400000000000000;
      v21 = 1751607624;
    }

    else
    {
      v20 = 0xE900000000000073;
      v21 = 0x756F72636964754CLL;
    }
  }

  else if (BYTE1(v39))
  {
    v20 = 0xE300000000000000;
    v21 = 7827276;
  }

  else
  {
    v20 = 0xE400000000000000;
    v21 = 1701736270;
  }

  a2[5] = v21;
  a2[6] = v20;
  v22 = v16[4];
  v23 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v22);
  (*(v23 + 32))(&v39, v22, v23);
  a2[7] = v39;
  v24 = *(v38 + v34);

  v25 = v35;
  sub_1D5EF3B18(v24 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v35);

  v26 = v37;
  sub_1D6C7CC68(v25 + *(v36 + 24), v37);
  sub_1D5E4B924(v25, type metadata accessor for FormatCompilerOptions);
  sub_1D5E4B86C(v26, v10);
  v27 = *v10;
  v28 = v10[1];
  v29 = v10[2];
  v30 = v10[3];
  v31 = v10[4];
  v32 = v10[5];
  sub_1D5E4B8D0(*v10, v28, v29, v30, v31, v32);
  result = sub_1D5E4B924(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
  a2[8] = v27;
  a2[9] = v28;
  a2[10] = v29;
  a2[11] = v30;
  a2[12] = v31;
  a2[13] = v32;
  return result;
}

uint64_t sub_1D70599B4(void *a1)
{
  sub_1D5C2B12C(0, &qword_1EC899A18, sub_1D705A1E0, &type metadata for DebugFormatWorkspaceSnapshotManifestLayout.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = v1[2];
  v32 = v1[3];
  v33 = v7;
  v8 = v1[4];
  v30 = v1[5];
  v31 = v8;
  v9 = v1[6];
  v28 = v1[7];
  v29 = v9;
  v10 = v1[8];
  v11 = v1[10];
  v22 = v1[9];
  v23 = v11;
  v12 = v1[11];
  v26 = v1[12];
  v27 = v10;
  v13 = v1[13];
  v24 = v12;
  v25 = v13;
  v14 = a1[3];
  v15 = a1;
  v17 = &v21 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1D705A1E0();
  sub_1D7264B5C();
  LOBYTE(v35) = 0;
  v18 = v34;
  sub_1D72643FC();
  if (!v18)
  {
    v19 = v27;
    LOBYTE(v35) = 1;
    sub_1D72643FC();
    LOBYTE(v35) = 2;
    sub_1D726442C();
    LOBYTE(v35) = 3;
    sub_1D72643FC();
    LOBYTE(v35) = 4;
    sub_1D726442C();
    v35 = v19;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v26;
    v40 = v25;
    v41 = 5;
    sub_1D5E4B8D0(v19, v22, v23, v24, v26, v25);
    sub_1D5FC6610();
    sub_1D72643BC();
    sub_1D5E4B984(v35, v36, v37, v38, v39, v40);
  }

  return (*(v5 + 8))(v17, v4);
}

void sub_1D7059C60(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  sub_1D5C2B12C(0, &qword_1EC899A08, sub_1D705A1E0, &type metadata for DebugFormatWorkspaceSnapshotManifestLayout.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D705A1E0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = a1;
    v10 = v5;
    v11 = v35;
    LOBYTE(v44[0]) = 0;
    v12 = sub_1D72642BC();
    v14 = v13;
    LOBYTE(v44[0]) = 1;
    v15 = sub_1D72642BC();
    *(&v34 + 1) = v16;
    *&v34 = v15;
    LOBYTE(v44[0]) = 2;
    v32 = sub_1D72642FC();
    LOBYTE(v44[0]) = 3;
    v31 = sub_1D72642BC();
    v33 = v17;
    LOBYTE(v44[0]) = 4;
    v30 = sub_1D72642FC();
    v59 = 5;
    sub_1D5C8F1E8();
    sub_1D726427C();
    (*(v10 + 8))(v8, v36);
    v36 = v56;
    *&v37 = v12;
    v28 = v57;
    v29 = *(&v56 + 1);
    v26 = v58;
    v27 = *(&v57 + 1);
    v25 = *(&v58 + 1);
    v18 = v34;
    *(&v37 + 1) = v14;
    v38 = v34;
    v20 = v32;
    v19 = v33;
    *&v39 = v32;
    *(&v39 + 1) = v31;
    *&v40 = v33;
    *(&v40 + 1) = v30;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v21 = v40;
    v11[2] = v39;
    v11[3] = v21;
    v22 = v38;
    *v11 = v37;
    v11[1] = v22;
    v23 = v43;
    v24 = v41;
    v11[5] = v42;
    v11[6] = v23;
    v11[4] = v24;
    sub_1D6E1C7E8(&v37, v44);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v44[0] = v12;
    v44[1] = v14;
    v45 = __PAIR128__(*(&v34 + 1), v18);
    v46 = v20;
    v47 = v31;
    v48 = v19;
    v49 = v30;
    v50 = v36;
    v51 = v29;
    v52 = v28;
    v53 = v27;
    v54 = v26;
    v55 = v25;
    sub_1D705A234(v44);
  }
}

uint64_t sub_1D705A048()
{
  v1 = *v0;
  v2 = 0x6567616B636170;
  v3 = 0x797469726F697270;
  v4 = 0x797469726F697270;
  if (v1 != 4)
  {
    v4 = 0x6D6F6F727377656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 0x657449646E756F62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D705A110@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D705A37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D705A138(uint64_t a1)
{
  v2 = sub_1D705A1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D705A174(uint64_t a1)
{
  v2 = sub_1D705A1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D705A1E0()
{
  result = qword_1EC899A10;
  if (!qword_1EC899A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A10);
  }

  return result;
}

unint64_t sub_1D705A278()
{
  result = qword_1EC899A20;
  if (!qword_1EC899A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A20);
  }

  return result;
}

unint64_t sub_1D705A2D0()
{
  result = qword_1EC899A28;
  if (!qword_1EC899A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A28);
  }

  return result;
}

unint64_t sub_1D705A328()
{
  result = qword_1EC899A30;
  if (!qword_1EC899A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A30);
  }

  return result;
}

uint64_t sub_1D705A37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657449646E756F62 && a2 == 0xEA0000000000736DLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xED000065726F6353 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F6F727377656ELL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1D705A5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v5 setUnitsStyle_];
  result = [v5 setAllowedUnits_];
  *a3 = v5;
  return result;
}

uint64_t sub_1D705A638(uint64_t a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - v19;
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      sub_1D5EB84C0(a1, v10);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v20, v10, v11);
        v21 = sub_1D705A8E8();
        (*(v12 + 8))(v20, v11);
        return v21 & 1;
      }

      v22 = v10;
    }

    else
    {
      sub_1D5EB84C0(a1, v6);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        (*(v12 + 32))(v15, v6, v11);
        v23 = sub_1D705A8E8();
        (*(v12 + 8))(v15, v11);
        v21 = v23 ^ 1;
        return v21 & 1;
      }

      v22 = v6;
    }

    sub_1D5E3E404(v22);
    v21 = 0;
  }

  else if (*v1)
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) != 1;
  }

  else
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) == 1;
  }

  return v21 & 1;
}

id sub_1D705A8E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D726207C();
  v4 = v3;

  v5 = v2 == 0x6C7070612E6D6F63 && v4 == 0xEE007377656E2E65;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = &selRef_nss_isNewsURL;
LABEL_8:
    v7 = sub_1D725844C();
    v8 = [v7 *v6];

    return v8;
  }

  if (v2 == 0xD000000000000010 && 0x80000001D73E7810 == v4)
  {

    goto LABEL_16;
  }

  v11 = sub_1D72646CC();

  if (v11)
  {
LABEL_16:
    v6 = &selRef_nss_isStocksURL;
    goto LABEL_8;
  }

  return 0;
}

uint64_t FormatBindingURLExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D705AAD4()
{
  result = qword_1EC899A40;
  if (!qword_1EC899A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A40);
  }

  return result;
}

unint64_t sub_1D705AB28(uint64_t a1)
{
  result = sub_1D705AB50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D705AB50()
{
  result = qword_1EC899A48;
  if (!qword_1EC899A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A48);
  }

  return result;
}

unint64_t sub_1D705ABA4(void *a1)
{
  a1[1] = sub_1D5F2E834();
  a1[2] = sub_1D5F2E888();
  result = sub_1D705AAD4();
  a1[3] = result;
  return result;
}

id sub_1D705AC1C(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v79 = a7;
  v77 = a8;
  v78 = a5;
  v76 = a1;
  v67 = type metadata accessor for FormatAction(0);
  MEMORY[0x1EEE9AC00](v67, v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v66 = &v61 - v19;
  sub_1D705D65C(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v68 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - v25;
  v27 = *a3;
  v75 = a3[1];
  v28 = a3[3];
  v74 = a3[2];
  v73 = v28;
  v72 = a3[4];
  v29 = a6[1];
  v71 = *a6;
  v70 = v29;
  v69 = a6[2];
  v30 = &a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  v31 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  v32 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock + 8];
  *v30 = 0;
  *(v30 + 1) = 0;
  sub_1D5B74328(v31, v32);
  [a4 setActivityItemsConfiguration_];
  v33 = *(v27 + 16);
  v35 = *(v33 + 48);
  v34 = *(v33 + 56);
  v36 = &a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier];
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 1) = v34;

  v37 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap];

  v38 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_onLongPress];
  swift_beginAccess();
  sub_1D726344C();
  v39 = *(v27 + 64);
  v40 = *(v27 + 72);
  [a4 setIsAccessibilityElement_];
  [a4 setAccessibilityElementsHidden_];
  if (v40 <= 0xFD)
  {
    if ((v40 & 0x80) != 0)
    {
      if (!(v39 | v40 & 0x7F))
      {
        goto LABEL_7;
      }

      v41 = &selRef_setAccessibilityElementsHidden_;
    }

    else
    {
      v41 = &selRef_setIsAccessibilityElement_;
    }

    [a4 *v41];
  }

LABEL_7:
  swift_beginAccess();
  result = [a4 setUserInteractionEnabled_];
  if (*(v27 + 56) != 1)
  {
    if (!*v30)
    {
      if ([a4 isContextMenuInteractionEnabled])
      {
        [a4 setContextMenuInteractionEnabled_];
      }

      result = [a4 showsMenuAsPrimaryAction];
      if (result)
      {
        return [a4 setShowsMenuAsPrimaryAction_];
      }
    }

    return result;
  }

  v65 = v38;
  v61 = v16;
  sub_1D705D0B0(a2, v26, type metadata accessor for FormatButtonNodeDataAction);
  v43 = type metadata accessor for FormatButtonNodeDataAction(0);
  v44 = a2;
  v45 = *(v43 - 8);
  (*(v45 + 56))(v26, 0, 1, v43);
  v83 = v27;
  v84 = v75;
  v85 = v74;
  v86 = v73;
  v87 = v72;
  v80 = v71;
  v81 = v70;
  v82 = v69;
  v63 = a10;
  v64 = a9;
  v46 = sub_1D705B3CC(v76, a4, v37, v26, v78, &v83, &v80, v79, v77, a9, a10);
  sub_1D705D5EC(v26, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v47);
  v48 = v44;
  v62 = *(type metadata accessor for FormatButtonNodeData(0) + 20);
  v49 = v44 + v62;
  v50 = v68;
  sub_1D705D030(v49, v68, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v51);
  if ((*(v45 + 48))(v50, 1, v43) == 1)
  {
    sub_1D705D5EC(v50, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v52);
    v53 = 0;
    v54 = v65;
    goto LABEL_28;
  }

  v55 = v66;
  sub_1D705D0B0(v50, v66, type metadata accessor for FormatAction);
  sub_1D705D118(v50, type metadata accessor for FormatButtonNodeDataAction);
  v56 = v55;
  v57 = v61;
  sub_1D705D194(v56, v61, type metadata accessor for FormatAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v65;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
LABEL_26:
    sub_1D705D118(v57, type metadata accessor for FormatAction);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 8)
  {
LABEL_24:
    sub_1D705D118(v57, type metadata accessor for FormatAction);
LABEL_25:
    v53 = 1;
    goto LABEL_28;
  }

LABEL_27:
  v53 = 0;
LABEL_28:
  sub_1D70CEF04(v53);
  v83 = v27;
  v84 = v75;
  v85 = v74;
  v86 = v73;
  v87 = v72;
  v80 = v71;
  v81 = v70;
  v82 = v69;
  v59 = sub_1D705B3CC(v76, a4, v54, v48 + v62, v78, &v83, &v80, v79, v77, v64, v63);
  if (v46 == 2)
  {
    v46 = v59;
    v60 = &off_1E84D3000;
  }

  else
  {
    v60 = &off_1E84D3000;
    if (v59 != 2)
    {
      v46 |= v59;
    }
  }

  result = [a4 v60[233]];
  if (!*v30)
  {
    if ([a4 isContextMenuInteractionEnabled])
    {
      [a4 setContextMenuInteractionEnabled_];
    }

    result = [a4 showsMenuAsPrimaryAction];
    if (result)
    {
      return [a4 setShowsMenuAsPrimaryAction_];
    }
  }

  return result;
}

uint64_t sub_1D705B3CC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v102 = a8;
  v96 = a5;
  v97 = a1;
  v104 = a3;
  v105 = a2;
  v13 = type metadata accessor for FormatPurchaseData(0);
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v94 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = &v92 - v18;
  v99 = a10;
  v95 = *(a10 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D705D65C(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for FormatAction(0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a7[1];
  v100 = *a7;
  v101 = v31;
  v32 = a7[2];
  sub_1D705D030(a4, v25, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v28);
  v33 = type metadata accessor for FormatButtonNodeDataAction(0);
  if ((*(*(v33 - 8) + 48))(v25, 1, v33) == 1)
  {
    sub_1D705D5EC(v25, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v34);
    return 2;
  }

  sub_1D705D0B0(v25, v30, type metadata accessor for FormatAction);
  sub_1D705D118(v25, type metadata accessor for FormatButtonNodeDataAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v41 = *v30;
        v40 = *(v30 + 1);
        v42 = v30[16];
        if (!*(*v30 + 16))
        {

          sub_1D6A69684(v40, v42);
          return 2;
        }

        sub_1D726345C();
        v43 = swift_allocObject();
        swift_weakInit();
        v44 = swift_allocObject();
        v46 = v100;
        v45 = v101;
        *(v44 + 16) = v43;
        *(v44 + 24) = v46;
        *(v44 + 32) = v45;
        *(v44 + 40) = v32;
        *(v44 + 48) = v41;
        *(v44 + 56) = v40;
        *(v44 + 64) = v42;

        sub_1D5EBC314(v46, v45, v32);

        sub_1D705D57C(v40, v42);
        sub_1D70CF088(v104, sub_1D705D568, v44);

        sub_1D6A69684(v40, v42);

        goto LABEL_26;
      }

      v102 = a11;
      v73 = *(v30 + 3);
      v109 = *(v30 + 2);
      v110 = v73;
      *v111 = *(v30 + 4);
      *&v111[9] = *(v30 + 73);
      v74 = *(v30 + 1);
      v107 = *v30;
      v108 = v74;
      sub_1D726345C();
      v75 = swift_allocObject();
      swift_weakInit();
      v103 = swift_allocObject();
      swift_weakInit();
      v76 = v95;
      v77 = v93;
      v78 = v99;
      (*(v95 + 16))(v93, v97, v99);
      v79 = (*(v76 + 80) + 40) & ~*(v76 + 80);
      v98 = (v79 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v79 + v19 + 103) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v102;
      *(v81 + 2) = v78;
      *(v81 + 3) = v82;
      *(v81 + 4) = v75;
      (*(v76 + 32))(&v81[v79], v77, v78);
      v83 = &v81[v98];
      v84 = v110;
      *(v83 + 2) = v109;
      *(v83 + 3) = v84;
      *(v83 + 4) = *v111;
      *(v83 + 73) = *&v111[9];
      v85 = v108;
      *v83 = v107;
      *(v83 + 1) = v85;
      *&v81[v80] = v103;
      v86 = &v81[(v80 + 15) & 0xFFFFFFFFFFFFFFF8];
      v87 = v100;
      v88 = v101;
      *v86 = v100;
      v86[1] = v88;
      v86[2] = v32;
      sub_1D5EBC314(v87, v88, v32);

      sub_1D6A695D4(&v107, v106);

      sub_1D70CF088(v104, sub_1D705D4BC, v81);
      sub_1D6A69630(&v107);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          goto LABEL_24;
        }

        v63 = *(v30 + 5);
        *v111 = *(v30 + 4);
        *&v111[16] = v63;
        v64 = *(v30 + 7);
        v112 = *(v30 + 6);
        v113 = v64;
        v65 = *(v30 + 1);
        v107 = *v30;
        v108 = v65;
        v66 = *(v30 + 3);
        v109 = *(v30 + 2);
        v110 = v66;
        sub_1D726345C();
        v67 = swift_allocObject();
        v68 = *&v111[16];
        v67[5] = *v111;
        v67[6] = v68;
        v69 = v113;
        v67[7] = v112;
        v67[8] = v69;
        v70 = v108;
        v67[1] = v107;
        v67[2] = v70;
        v71 = v110;
        v67[3] = v109;
        v67[4] = v71;
        sub_1D6A69518(&v107, v106);
        v72 = sub_1D725F63C();
        sub_1D6072298(&v107);

LABEL_26:

        return 1;
      }

      v53 = *v30;
      sub_1D726345C();
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v56[2] = v54;
      v56[3] = v55;
      v57 = v100;
      v58 = v101;
      v56[4] = v100;
      v56[5] = v58;
      v56[6] = v32;
      v56[7] = v53;
      sub_1D5EBC314(v57, v58, v32);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v59 = *v30;
      v60 = *(v30 + 1);
      sub_1D726345C();
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      v62[2] = v61;
      v62[3] = v59;
      v62[4] = v60;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        [v105 setUserInteractionEnabled_];
        return 0;
      }

      v37 = *v30;
      v38 = *(v30 + 1);
      sub_1D726345C();
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_24:
    v89 = *v30;
    sub_1D726345C();
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v89;
    *(v91 + 32) = v102;
    *(v91 + 40) = a9;

LABEL_25:

    goto LABEL_26;
  }

  v47 = v98;
  sub_1D705D194(v30, v98, type metadata accessor for FormatPurchaseData);
  sub_1D726345C();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v94;
  sub_1D705D0B0(v47, v94, type metadata accessor for FormatPurchaseData);
  v50 = (*(v92 + 80) + 24) & ~*(v92 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  sub_1D705D194(v49, v51 + v50, type metadata accessor for FormatPurchaseData);
  v52 = (v51 + ((v14 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v52 = v102;
  v52[1] = a9;

  sub_1D705D118(v47, type metadata accessor for FormatPurchaseData);
  return 1;
}

uint64_t sub_1D705BE2C(int a1, id a2, uint64_t a3)
{
  if ([a2 showsMenuAsPrimaryAction])
  {
    return [a2 _feldsparAccessibilityPresentMenu];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    MEMORY[0x1DA6F6CF0]();

    return 1;
  }

  return result;
}

void sub_1D705BEB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D725E84C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v12 + 104))(v15, *MEMORY[0x1E69D7FB8], v11);
    v18 = v17[4];
    sub_1D5EBC314(a3, a4, a5);

    v19 = a1;
    v20 = sub_1D7134D70(a3, a4, a5, v15, v18, a1);
    v21 = 0;
    v28[0] = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v22 = *(a6 + 16);
    while (1)
    {
      if (v22 == v21)
      {

        return;
      }

      if (v21 >= v22)
      {
        break;
      }

      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_13;
      }

      v28[1] = *(a6 + 32 + 8 * v21);
      v24 = v17[2];
      v25 = v17[3];

      v26 = sub_1D6D92808(v24, v25, v20);

      ++v21;
      if (v26)
      {
        MEMORY[0x1DA6F9CE0](v27);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v28[0] = v29;
        v21 = v23;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1D705C0F0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v16 = a4[3];
  v22[2] = a4[2];
  v22[3] = v16;
  v23[0] = a4[4];
  *(v23 + 9) = *(a4 + 73);
  v17 = a4[1];
  v22[0] = *a4;
  v22[1] = v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v19 = sub_1D705C208(a3, v22, Strong, v21, a1, a9, a10);

  return v19;
}

uint64_t sub_1D705C208(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v54 = a6;
  v55 = a7;
  v59 = a3;
  v53 = a1;
  v12 = sub_1D725E87C();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725E84C();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v70 = a2[2];
  v71[0] = v19;
  *(v71 + 15) = *(a2 + 63);
  v20 = a2[1];
  v68 = *a2;
  v69 = v20;
  v21 = *(a2 + 9);
  v23 = *a4;
  v22 = a4[1];
  v24 = a4[2];
  (*(v25 + 104))(v18, *MEMORY[0x1E69D7FB8]);
  v26 = *(v8 + 32);

  v27 = a5;
  sub_1D705D590(&v68, v72);
  sub_1D5EBC314(v23, v22, v24);
  sub_1D7134D70(v23, v22, v24, v18, v26, a5);
  v65 = v70;
  *v66 = v71[0];
  *&v66[15] = *(v71 + 15);
  v63 = v68;
  v64 = v69;
  _s5TeaUI11ContextMenuC8NewsFeedE07contextD6Groups3for7optionsSayAA0cD9Groupable_pSgGAcDE0D4TypeO_ShyAcDE11ItemOptionsOGtFZ_0(&v63, v21);
  v29 = v28;
  v72[2] = v65;
  v73[0] = *v66;
  *(v73 + 15) = *&v66[15];
  v30 = v59;
  v72[0] = v63;
  v72[1] = v64;
  sub_1D6AB75E0(v72);
  if (v30)
  {
    sub_1D725A9FC();

    if ((sub_1D725A9CC() & 1) == 0 || (sub_1D72596FC(), sub_1D72596DC(), sub_1D725950C(), v32 = v56, sub_1D72596CC(), , , v34 = v57, v33 = v58, v35 = (*(v57 + 88))(v32, v58), v35 == *MEMORY[0x1E69D8000]))
    {
LABEL_9:

      goto LABEL_10;
    }

    if (v35 == *MEMORY[0x1E69D8008])
    {
      sub_1D6B47704(v53, v54, v55, &v63);
      v36 = v29[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v29;
      if (!isUniquelyReferenced_nonNull_native || v36 >= v29[3] >> 1)
      {
        v29 = sub_1D6995D68(isUniquelyReferenced_nonNull_native, v36 + 1, 1, v29);
        v67 = v29;
      }

      sub_1D5EC38D8(0, 0, 1, &v63);
      goto LABEL_9;
    }

    if (v35 == *MEMORY[0x1E69D8010])
    {
      sub_1D6B47704(v53, v54, v55, &v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D6995D68(0, v29[2] + 1, 1, v29);
      }

      v49 = v29[2];
      v48 = v29[3];
      if (v49 >= v48 >> 1)
      {
        v29 = sub_1D6995D68((v48 > 1), v49 + 1, 1, v29);
      }

      v29[2] = v49 + 1;
      v50 = &v29[5 * v49];
      v31 = v63;
      v51 = v64;
      v50[4].n128_u64[0] = v65;
      v50[2] = v31;
      v50[3] = v51;
    }

    else
    {

      (*(v34 + 8))(v32, v33);
    }
  }

LABEL_10:
  v62 = MEMORY[0x1E69E7CC0];
  v38 = v29[2];
  if (v38)
  {
    v59 = v29;
    v39 = (v29 + 4);
    v40 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D705D030(v39, &v63, &qword_1EDF3B530, sub_1D5F26890, v31);
      sub_1D705D030(&v63, v60, &qword_1EDF3B530, sub_1D5F26890, v42);
      if (v61)
      {
        __swift_project_boxed_opaque_existential_1(v60, v61);
        v44 = sub_1D725DF5C();
        sub_1D705D5EC(&v63, &qword_1EDF3B530, sub_1D5F26890, v45);
        v46 = __swift_destroy_boxed_opaque_existential_1(v60);
        if (v44)
        {
          MEMORY[0x1DA6F9CE0](v46);
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v40 = v62;
        }
      }

      else
      {
        sub_1D705D5EC(&v63, &qword_1EDF3B530, sub_1D5F26890, v43);
        sub_1D705D5EC(v60, &qword_1EDF3B530, sub_1D5F26890, v41);
      }

      v39 += 40;
      --v38;
    }

    while (v38);
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  return v40;
}

double sub_1D705C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D725E84C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      (*(v11 + 104))(v14, *MEMORY[0x1E69D7FB8], v10);
      v20 = *(v17 + 32);
      sub_1D5EBC314(a3, a4, a5);

      v21 = v19;
      v22 = sub_1D7134D70(a3, a4, a5, v14, v20, v19);
      v23 = *(v17 + 24);
      v24 = *(a6 + 56);
      v25 = swift_unknownObjectRetain();
      v24(v25, v23, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D705C980(uint64_t a1, char a2, void (*a3)(_BYTE *, __n128))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    *v8 = a2;
    type metadata accessor for FeedAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    (a3)(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

void sub_1D705CA98(_OWORD *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_1D726203C();
  sub_1D705D65C(0, &unk_1EC899A50, sub_1D705D6C0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v11[0] = 1635017060;
  v11[1] = 0xE400000000000000;
  sub_1D7263C9C();
  *(inited + 96) = &type metadata for FormatStateMachineAction;
  v5 = swift_allocObject();
  *(inited + 72) = v5;
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v7 = a1[3];
  v5[3] = a1[2];
  v5[4] = v7;
  v8 = a1[5];
  v5[5] = a1[4];
  v5[6] = v8;
  v9 = a1[7];
  v5[7] = a1[6];
  v5[8] = v9;
  sub_1D6A69518(a1, v11);
  sub_1D605D4B8(inited);
  swift_setDeallocating();
  sub_1D705D118(inited + 32, sub_1D705D6C0);
  v10 = sub_1D7261D2C();

  [v2 postNotificationName:v3 object:0 userInfo:v10];
}

double sub_1D705CC68(uint64_t a1, uint64_t a2)
{
  sub_1D5BFDC08();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1D72649DC();

  return result;
}

uint64_t sub_1D705CCFC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1D705D0B0(a2, v8, type metadata accessor for FormatPurchaseData);
    type metadata accessor for FeedAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    a3(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

uint64_t sub_1D705CE30(uint64_t a1, char a2, void (*a3)(_BYTE *, __n128))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    *v8 = a2;
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    (a3)(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

double sub_1D705CF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong[14];
    v8 = Strong[15];
    __swift_project_boxed_opaque_existential_1(Strong + 11, v7);
    (*(v8 + 16))(a2, a3, v7, v8);
  }

  return result;
}

uint64_t sub_1D705CFD8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D705D030(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  sub_1D705D65C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D705D0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D705D118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D705D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D705D1FC()
{
  v1 = *(type metadata accessor for FormatPurchaseData(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D705CCFC(v3, v0 + v2, v4);
}

uint64_t objectdestroy_11Tm_0()
{

  return swift_deallocObject();
}

void sub_1D705D310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  switch(a10)
  {
    case 0:
      swift_unknownObjectRelease();
      goto LABEL_13;
    case 1:
    case 4:
    case 14:
      goto LABEL_17;
    case 2:
      swift_unknownObjectRelease();

LABEL_13:

      return;
    case 3:

LABEL_17:

      swift_unknownObjectRelease();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:

      break;
    case 12:
    case 15:

      break;
    case 13:
      swift_unknownObjectRelease();

      sub_1D6205FF8(a2, a3, a4, a5, a6);
      break;
    default:
      return;
  }
}

uint64_t sub_1D705D4BC(void *a1)
{
  v2 = (*(*(v1[2] - 8) + 80) + 40) & ~*(*(v1[2] - 8) + 80);
  v3 = v2 + *(*(v1[2] - 8) + 64);
  return sub_1D705C0F0(a1, v1[4], v1 + v2, (v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 103) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v1[2], v1[3]);
}

void sub_1D705D57C(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_1D5EC9444(a1, a2);
  }
}

uint64_t sub_1D705D5EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_1D705D65C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D705D65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D705D6C0()
{
  if (!qword_1EC882D70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882D70);
    }
  }
}

uint64_t objectdestroy_21Tm_1()
{

  sub_1D5E32940(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t CommandExecutionSource.init(sourceItemData:location:tracker:sourceView:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D705D8AC(a1, a2, v14, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

uint64_t sub_1D705D8AC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[1] = a5;
  v13 = sub_1D725E84C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v32 - v20;
  v34[3] = a6;
  v34[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v23 = a1[1];
  if (v23)
  {
    v24 = a1[2];
    v25 = *a1;
    v26 = a2;
    (*(v14 + 16))(v21, a2, v13);
    sub_1D5B68374(v34, v33);
    v35 = 0u;
    v36 = 0u;
    v37 = 1;

    v27 = a4;
    v28 = sub_1D725E2FC();
    sub_1D5EBC358(v25, v23, v24);
    (*(v14 + 8))(v26, v13);
  }

  else
  {
    v29 = a2;
    (*(v14 + 16))(v17, a2, v13);
    sub_1D5B68374(v34, v33);
    v35 = 0u;
    v36 = 0u;
    v37 = 1;
    v30 = a4;
    v28 = sub_1D725E33C();
    (*(v14 + 8))(v29, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v28;
}

uint64_t BundleSessionDemoProvider.nextSessionValue(after:)(uint64_t a1)
{
  sub_1D5B76C1C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D705DCD0(uint64_t a1)
{
  sub_1D5B76C1C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D705DE9C(void *a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1D725DA6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v11 = *(a2 + 32);
  if (!v11)
  {
    [a1 setAccessibilityIgnoresInvertColors_];
LABEL_9:
    *&v35[0] = 1;
    memset(v35 + 8, 0, 49);
    return sub_1D5BF8000(a1, v35);
  }

  [a1 setAccessibilityIgnoresInvertColors_];
  v12 = *(v11 + 136);
  v32 = *(v11 + 120);
  v33 = v12;
  *v34 = *(v11 + 152);
  v13 = *(v11 + 161);
  *&v34[9] = v13;
  if (v13.n128_u8[15] > 1u)
  {
    if (v34[24] == 2)
    {
      sub_1D5BFDE94(0, v13);
      v15 = v14;
      v16 = swift_allocBox();
      v18 = v17;
      v19 = *(v15 + 48);
      sub_1D725DA5C();
      v20 = *(v6 + 104);
      v20(v18 + v19, *MEMORY[0x1E69D7AC0], v5);
      *v9 = v16;
      v20(v9, *MEMORY[0x1E69D7AD0], v5);
      return sub_1D725DBCC();
    }

    goto LABEL_9;
  }

  if (v34[24])
  {
    v22 = v32 & 0xF000000000000007;
    if ((v32 & 0xF000000000000007) == 0xD000000000000007)
    {
      v23 = 0;
      v27 = 0;
      v28 = 1;
    }

    else
    {
      if (v22 == 0xF000000000000007)
      {
        sub_1D5BF85E4(&v32, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
        v23 = 0;
      }

      else
      {
        *&v35[0] = v32;
        sub_1D62B54E4(v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], 1);
        sub_1D6013498();
        v23 = v13.n128_u64[0];
      }

      v28 = 0;
      v27 = v22 == 0xF000000000000007;
    }

    sub_1D7070900(v13, a1, v23, v27 | (v28 << 8));
    v24 = &qword_1EDF2CAB8;
    v25 = &type metadata for FormatCellSelection;
    v26 = &v32;
  }

  else
  {
    if ((*&v34[16] & 0xF000000000000007) == 0xD000000000000007)
    {
      *&v31[0] = 1;
      *(v31 + 8) = 0u;
      *(&v31[1] + 8) = 0u;
      *(&v31[2] + 8) = 0u;
      BYTE8(v31[3]) = 0;
    }

    else
    {
      v35[0] = v32;
      v35[1] = v33;
      *&v35[2] = *v34;
      BYTE8(v35[2]) = v34[8] & 1;
      *&v35[3] = *&v34[16];
      sub_1D62B54E4(v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], 0);
      sub_1D71734C0(v29);
      v31[0] = v29[0];
      v31[1] = v29[1];
      v31[2] = v30[0];
      *(&v31[2] + 9) = *(v30 + 9);
    }

    v35[0] = v31[0];
    v35[1] = v31[1];
    v35[2] = v31[2];
    *(&v35[2] + 9) = *(&v31[2] + 9);
    sub_1D5BF8000(a1, v35);
    sub_1D5BF85E4(&v32, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v24 = &qword_1EDF2CAF0;
    v25 = &type metadata for FormatCellSelection.Background.Resolved;
    v26 = v31;
  }

  return sub_1D5BF85E4(v26, v24, v25);
}

uint64_t sub_1D705E2B0(uint64_t *a1, uint64_t (*a2)(_BYTE *))
{
  sub_1D725FE2C();
  v4 = a2(v17);
  sub_1D725FD6C();
  v4(v17, 0);
  sub_1D725FDDC();
  v5 = a2(v17);
  sub_1D725FD6C();
  v5(v17, 0);
  sub_1D725FE0C();
  v6 = a2(v17);
  sub_1D725FD6C();
  v6(v17, 0);
  if (a1[1])
  {
    if (a1[3])
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = a2(v17);
    sub_1D725FD7C();
    sub_1D725FCDC();
    v16(v17, 0);
    if (a1[5])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = a2(v17);
  sub_1D725FD7C();
  sub_1D725FD0C();
  v15(v17, 0);
  if ((a1[3] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1[5] & 1) == 0)
  {
LABEL_4:
    v7 = a2(v17);
    sub_1D725FD7C();
    sub_1D725FCEC();
    v7(v17, 0);
  }

LABEL_5:
  v8 = sub_1D5EDF474(*(a1 + 41));
  v9 = a2(v17);
  sub_1D725FD7C();
  sub_1D725FD2C();
  v9(v17, 0);
  v10 = a2(v17);
  sub_1D725FCFC();
  v10(v17, 0);
  v11 = a2(v17);
  sub_1D725FCBC();
  v11(v17, 0);
  v12 = a2(v17);
  sub_1D725FD1C();
  v12(v17, 0);
  v13 = a2(v17);
  sub_1D725FCCC();
  return v13(v17, 0);
}

void sub_1D705E660(uint64_t *a1)
{
  v2 = *(type metadata accessor for FeedItemSupplementaryAttributes(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFBD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7066624(v5, type metadata accessor for FeedItemSupplementaryAttributes, sub_1D70684AC, sub_1D7066774);
  *a1 = v3;
}

void sub_1D705E744(uint64_t *a1)
{
  v2 = *(type metadata accessor for ZIndexable(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFBE4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7066624(v5, type metadata accessor for ZIndexable, sub_1D706A2E8, sub_1D70673F0);
  *a1 = v3;
}

void sub_1D705E828(uint64_t a1, uint64_t a2, uint64_t a3, CGRect *a4, CGRect *a5, CGRect *a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, CGFloat a15)
{
  v896 = a7;
  v894 = a5;
  v895 = a6;
  v893 = a4;
  v838 = a11;
  v898 = a2;
  v20 = type metadata accessor for InternalErrorViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v839 = (&v831 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v870 = (&v831 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v872 = (&v831 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v841 = (&v831 - v31);
  v906 = sub_1D725EF8C();
  v833 = *(v906 - 8);
  MEMORY[0x1EEE9AC00](v906, v32);
  v34 = &v831 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v831 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v848 = &v831 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v867 = &v831 - v44;
  v913 = sub_1D725F3DC();
  v832 = *(v913 - 8);
  MEMORY[0x1EEE9AC00](v913, v45);
  v878 = (&v831 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47, v48);
  v887 = (&v831 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v844 = (&v831 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v850 = &v831 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  *&v860 = &v831 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v831 = &v831 - v61;
  v915 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v885 = *(v915 - 8);
  MEMORY[0x1EEE9AC00](v915, v62);
  v855 = (&v831 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64, v65);
  v854 = &v831 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v903 = (&v831 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v902 = &v831 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v905 = (&v831 - v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v904 = &v831 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v886 = &v831 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v879 = (&v831 - v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  v880 = (&v831 - v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v899 = &v831 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v842 = &v831 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v888 = (&v831 - v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v897 = (&v831 - v99);
  MEMORY[0x1EEE9AC00](v100, v101);
  v914 = &v831 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v892 = (&v831 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v891 = (&v831 - v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v849 = &v831 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v851 = (&v831 - v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  v863 = &v831 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v862 = (&v831 - v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  *&v868 = &v831 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v901 = (&v831 - v126);
  v900 = type metadata accessor for ZIndexable(0);
  v882 = *(v900 - 8);
  MEMORY[0x1EEE9AC00](v900, v127);
  v858 = &v831 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129, v130);
  v871 = &v831 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v861 = &v831 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v877 = (&v831 - v137);
  MEMORY[0x1EEE9AC00](v138, v139);
  *&v874 = &v831 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v912 = &v831 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v908 = (&v831 - v146);
  MEMORY[0x1EEE9AC00](v147, v148);
  v857 = &v831 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v881 = &v831 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v875 = &v831 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  *&v911 = &v831 - v158;
  v161 = MEMORY[0x1EEE9AC00](v159, v160);
  *&v910 = &v831 - v162;
  sub_1D6A5DD4C(0, v161);
  MEMORY[0x1EEE9AC00](v163 - 8, v164);
  v845 = &v831 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v166, v167);
  v853 = &v831 - v168;
  MEMORY[0x1EEE9AC00](v169, v170);
  v172 = &v831 - v171;
  MEMORY[0x1EEE9AC00](v173, v174);
  v176 = &v831 - v175;
  v852 = type metadata accessor for DebugGroupDirectionalLayoutAttributes(0);
  MEMORY[0x1EEE9AC00](v852, v177);
  v864 = &v831 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v179, v180);
  v182 = &v831 - v181;
  MEMORY[0x1EEE9AC00](v183, v184);
  v187 = &v831 - v185;
  v188 = *(a1 + 16);
  v873 = v188;
  v834 = a1;
  v835 = v186;
  v876 = v34;
  v884 = v38;
  if (v188)
  {
    v889 = *&a13;
    v907 = a14;
    v909 = a15;
    v189 = a3;
    v190 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v191 = a1;
    v192 = v188;
    v193 = *(v186 + 72);
    sub_1D707111C(v191 + v190, &v831 - v185, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
    x = *(v187 + 1);
    y = *(v187 + 2);
    width = *(v187 + 3);
    height = *(v187 + 4);
    sub_1D7070E6C(v187, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
    v198 = v192 - 1;
    if (v198)
    {
      v199 = v191 + v193 + v190;
      do
      {
        sub_1D707111C(v199, v187, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
        v953.origin.x = x;
        v953.origin.y = y;
        v953.size.width = width;
        v953.size.height = height;
        v954 = CGRectUnion(v953, *(v187 + 8));
        x = v954.origin.x;
        y = v954.origin.y;
        width = v954.size.width;
        height = v954.size.height;
        sub_1D7070E6C(v187, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
        v199 += v193;
        --v198;
      }

      while (v198);
    }

    sub_1D726327C();
    sub_1D7262E2C();
    sub_1D7262E2C();
    sub_1D72632AC();
    v201 = v200;
    v203 = v202;
    v205 = v204;
    v207 = v206;
    v188 = v873;
    a1 = v834;
    a3 = v189;
  }

  else
  {
    v201 = 0.0;
    v203 = 0.0;
    v205 = 0.0;
    v207 = 0.0;
  }

  v837 = type metadata accessor for DebugGroupLayoutView();
  v889 = [objc_allocWithZone(v837) initWithFrame_];
  v208 = *(a3 + 64) | (*(a3 + 66) << 16);
  v209 = *&v911;
  if (*(a3 + 64) != 2)
  {
    v210 = *(a3 + 16);
    v950[0] = *a3;
    v950[1] = v210;
    v211 = *(a3 + 48);
    v950[2] = *(a3 + 32);
    v950[3] = v211;
    v951 = v208;
    v952 = BYTE2(v208);
    sub_1D705E2B0(v950, MEMORY[0x1E69DC4D8]);
  }

  *&v920 = MEMORY[0x1E69E7CC0];
  if (v188)
  {
    v212 = v188;
    *&v909 = *(v852 + 20);
    v213 = a1 + ((*(v835 + 80) + 32) & ~*(v835 + 80));
    v214 = *(v835 + 72);
    LODWORD(v907) = *MEMORY[0x1E69D74D0];
    while (1)
    {
      sub_1D707111C(v213, v182, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      sub_1D707111C(&v182[*&v909], v176, sub_1D6A5DD4C);
      v216 = sub_1D725A5BC();
      v217 = *(v216 - 8);
      if ((*(v217 + 48))(v176, 1, v216) != 1)
      {
        sub_1D707111C(v176, v172, sub_1D6A5DD4C);
        v218 = (*(v217 + 88))(v172, v216);
        v215 = MEMORY[0x1E69E7CC0];
        if (v218 == LODWORD(v907))
        {
          goto LABEL_12;
        }

        (*(v217 + 8))(v172, v216);
      }

      v215 = *(v182 + 6);

LABEL_12:
      sub_1D7070E6C(v182, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      sub_1D7070E6C(v176, sub_1D6A5DD4C);
      sub_1D69861DC(v215);
      v213 += v214;
      if (!--v212)
      {
        v219 = v920;
        v209 = *&v911;
        goto LABEL_18;
      }
    }
  }

  v219 = MEMORY[0x1E69E7CC0];
LABEL_18:
  sub_1D7070ECC(0, &qword_1EC899B28, sub_1D7070F30, MEMORY[0x1E69E6F90]);
  v220 = swift_allocObject();
  v221 = v898;
  v222 = *(v898 + 16);
  v223 = MEMORY[0x1E69E7CC0];
  v224 = v910;
  if (v222)
  {
    *&v920 = MEMORY[0x1E69E7CC0];
    sub_1D6E76FAC(v222);
    v225 = (v221 + 32);
    do
    {
      v226 = *v225++;
      **&v224 = v226;
      swift_storeEnumTagMultiPayload();
      v227 = v920;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998114(0, *(v227 + 16) + 1, 1);
        v227 = v920;
      }

      v229 = *(v227 + 16);
      v228 = *(v227 + 24);
      if (v229 >= v228 >> 1)
      {
        sub_1D6998114((v228 > 1), v229 + 1, 1);
        v227 = v920;
      }

      *(v227 + 16) = v229 + 1;
      v224 = v910;
      sub_1D7070F64(*&v910, v227 + ((*(v882 + 80) + 32) & ~*(v882 + 80)) + *(v882 + 72) * v229, type metadata accessor for ZIndexable);
      --v222;
    }

    while (v222);
  }

  else
  {
    v227 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6B98650(v227);
  *(v220 + 32) = v230;
  v231 = *(v219 + 16);
  if (v231)
  {
    *&v920 = v223;
    sub_1D6E76FAC(v231);
    v232 = v219 + ((*(v885 + 80) + 32) & ~*(v885 + 80));
    v233 = *(v885 + 72);
    do
    {
      sub_1D707111C(v232, v209, type metadata accessor for FeedItemSupplementaryAttributes);
      swift_storeEnumTagMultiPayload();
      v234 = v920;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998114(0, *(v234 + 16) + 1, 1);
        v234 = v920;
      }

      v236 = *(v234 + 16);
      v235 = *(v234 + 24);
      if (v236 >= v235 >> 1)
      {
        sub_1D6998114((v235 > 1), v236 + 1, 1);
        v234 = v920;
      }

      *(v234 + 16) = v236 + 1;
      v237 = v234 + ((*(v882 + 80) + 32) & ~*(v882 + 80)) + *(v882 + 72) * v236;
      v209 = *&v911;
      sub_1D7070F64(*&v911, v237, type metadata accessor for ZIndexable);
      v232 += v233;
      --v231;
    }

    while (v231);
  }

  else
  {

    v234 = MEMORY[0x1E69E7CC0];
  }

  *(v220 + 40) = v234;
  *&v920 = v223;

  sub_1D6986194(v238);

  sub_1D6986194(v239);
  swift_setDeallocating();
  sub_1D7070F30(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  sub_1D705E744(&v920);
  v846 = 0;
  v240 = v831;

  v241 = v920;
  v242 = v906;
  v243 = v881;
  v898 = *(v920 + 16);
  if (!v898)
  {
    v246 = MEMORY[0x1E69E7CC0];
    v857 = MEMORY[0x1E69E7CC0];
    goto LABEL_120;
  }

  v244 = 0;
  LODWORD(v907) = *MEMORY[0x1E69D8678];
  *&v869 = v832 + 104;
  LODWORD(v909) = *MEMORY[0x1E69D8680];
  v883 = v832 + 88;
  v840 = (v832 + 8);
  v859 = (v832 + 96);
  v245 = *MEMORY[0x1E69D8478];
  v866 = (v833 + 104);
  LODWORD(v865) = *MEMORY[0x1E69D8470];
  v847 = v833 + 88;
  v836 = (v833 + 8);
  v246 = MEMORY[0x1E69E7CC0];
  v247 = v875;
  LODWORD(v856) = v245;
  do
  {
    if (v244 >= v241[2])
    {
      goto LABEL_380;
    }

    *&v911 = (*(v882 + 80) + 32) & ~*(v882 + 80);
    v910 = *(v882 + 72);
    sub_1D707111C(v241 + *&v911 + *&v910 * v244, v247, type metadata accessor for ZIndexable);
    sub_1D707111C(v247, v243, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v248 = v240;
      v917 = *v243;
      FeedGroupDecoration.decorationItem.getter(&v920);
      __swift_project_boxed_opaque_existential_1(&v920, *(&v921 + 1));
      v249 = *&v860;
      sub_1D725F4AC();

      v250 = (*v883)(v249, v913);
      if (v250 == LODWORD(v907))
      {
        (*v859)(v249, v913);
        v251 = *v249;
        v242 = v906;
      }

      else
      {
        v242 = v906;
        if (v250 != LODWORD(v909))
        {
          (*v840)(v249, v913);
        }

        v251 = -100;
      }

      v240 = v248;
      v243 = v881;
      __swift_destroy_boxed_opaque_existential_1(&v920);
      v247 = v875;
      v245 = v856;
      if ((v251 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v252 = v901;
      sub_1D7070F64(v243, v901, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v252, *&v868, type metadata accessor for FeedItemSupplementaryAttributes);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v254 = v867;
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_62;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_1D7070E6C(*&v868, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_62:
        (**&v869)(v240, LODWORD(v909), v913);
LABEL_63:
        sub_1D7070F64(v901, v862, type metadata accessor for FeedItemSupplementaryAttributes);
        v270 = swift_getEnumCaseMultiPayload();
        if (v270 < 2)
        {
          (*v866)(v254, v865, v242);
          v247 = v875;
        }

        else
        {
          if (v270 == 2)
          {
            v271 = v862[4];
            v272 = v862[6];
            v273 = v862[7];
            v925 = v862[5];
            v926 = v272;
            v927 = v273;
            v274 = v862[1];
            v920 = *v862;
            v275 = v862[2];
            v276 = v862[3];
            v921 = v274;
            v922 = v275;
            v923 = v276;
            v924 = v271;
            v277 = *(v862 + 16);
            sub_1D6729D5C(&v920);
            v278 = *(*(v277 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v254 = v867;
            if (v278)
            {
              v279 = v865;
            }

            else
            {
              v279 = v245;
            }

            (*v866)(v867, v279, v242);
            v243 = v881;
          }

          else
          {
            (*v866)(v254, v245, v242);
            sub_1D7070E6C(v862, type metadata accessor for InternalErrorViewLayout.Context);
          }

          v247 = v875;
          v280 = (*v847)(v254, v242);
          if (v280 != v245 && v280 != v865)
          {
            (*v836)(v867, v242);
          }
        }

        goto LABEL_39;
      }

      v255 = *(*&v868 + 64);
      v256 = *(*&v868 + 96);
      v257 = *(*&v868 + 112);
      v925 = *(*&v868 + 80);
      v926 = v256;
      v927 = v257;
      v258 = *(*&v868 + 16);
      v920 = **&v868;
      v259 = *(*&v868 + 32);
      v260 = *(*&v868 + 48);
      v921 = v258;
      v922 = v259;
      v923 = v260;
      v924 = v255;
      v261 = *(*&v868 + 128);
      sub_1D6729D5C(&v920);
      v262 = *(v261 + 48);
      v263 = *(v261 + 56);

      v264 = LODWORD(v909);
      if ((v263 & 1) == 0)
      {
        *v240 = v262;
        v264 = LODWORD(v907);
      }

      v265 = v913;
      (**&v869)(v240, v264, v913);
      v266 = (*v883)(v240, v265);
      if (v266 != LODWORD(v907))
      {
        v242 = v906;
        v243 = v881;
        if (v266 == LODWORD(v909))
        {
          v254 = v867;
          goto LABEL_63;
        }

        sub_1D7070E6C(v901, type metadata accessor for FeedItemSupplementaryAttributes);
        (*v840)(v240, v913);
LABEL_39:
        sub_1D7070E6C(v247, type metadata accessor for ZIndexable);
        goto LABEL_40;
      }

      sub_1D7070E6C(v901, type metadata accessor for FeedItemSupplementaryAttributes);
      (*v859)(v240, v913);
      v242 = v906;
      v243 = v881;
      if ((*v240 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_1D7070F64(v247, v857, type metadata accessor for ZIndexable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v936 = v246;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6998114(0, *(v246 + 16) + 1, 1);
      v246 = v936;
    }

    v269 = *(v246 + 16);
    v268 = *(v246 + 24);
    if (v269 >= v268 >> 1)
    {
      sub_1D6998114((v268 > 1), v269 + 1, 1);
      v246 = v936;
    }

    *(v246 + 16) = v269 + 1;
    sub_1D7070F64(v857, v246 + *&v911 + v269 * *&v910, type metadata accessor for ZIndexable);
    v242 = v906;
    v243 = v881;
LABEL_40:
    ++v244;
  }

  while (v898 != v244);
  v281 = v241[2];
  if (v281)
  {
    v898 = v246;
    v282 = 0;
    v283 = v241 + *&v911;
    v857 = MEMORY[0x1E69E7CC0];
    v284 = v874;
    v247 = *&v910;
    v843 = v241;
    while (1)
    {
      if (v282 >= v241[2])
      {
        goto LABEL_381;
      }

      v285 = v908;
      sub_1D707111C(v283, v908, type metadata accessor for ZIndexable);
      sub_1D707111C(v285, *&v284, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v286 = v245;
        v287 = v281;
        v917 = **&v284;
        FeedGroupDecoration.decorationItem.getter(&v920);
        __swift_project_boxed_opaque_existential_1(&v920, *(&v921 + 1));
        v288 = v844;
        sub_1D725F4AC();
        v289 = v913;

        v290 = (*v883)(v288, v289);
        if (v290 == LODWORD(v907))
        {
          (*v859)(v288, v913);
          v291 = *v288;
        }

        else
        {
          if (v290 != LODWORD(v909))
          {
            (*v840)(v288, v913);
          }

          v291 = -100;
        }

        v284 = v874;
        v247 = *&v910;
        v281 = v287;
        __swift_destroy_boxed_opaque_existential_1(&v920);
        v245 = v286;
        v241 = v843;
        if ((v291 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v292 = v863;
        sub_1D7070F64(*&v284, v863, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D707111C(v292, v851, type metadata accessor for FeedItemSupplementaryAttributes);
        v293 = swift_getEnumCaseMultiPayload();
        v294 = v293 >= 2;
        v295 = v293 == 2;
        v296 = v850;
        if (!v294)
        {
          goto LABEL_98;
        }

        if (!v295)
        {
          v310 = v850;
          sub_1D7070E6C(v851, type metadata accessor for InternalErrorViewLayout.Context);
          v296 = v310;
LABEL_98:
          (**&v869)(v296, LODWORD(v909), v913);
LABEL_99:
          sub_1D7070F64(v863, v849, type metadata accessor for FeedItemSupplementaryAttributes);
          v311 = swift_getEnumCaseMultiPayload();
          if (v311 >= 2)
          {
            if (v311 == 2)
            {
              v312 = *(v849 + 64);
              v313 = *(v849 + 96);
              v314 = *(v849 + 112);
              v925 = *(v849 + 80);
              v926 = v313;
              v927 = v314;
              v315 = *(v849 + 16);
              v920 = *v849;
              v316 = *(v849 + 32);
              v317 = *(v849 + 48);
              v921 = v315;
              v922 = v316;
              v923 = v317;
              v924 = v312;
              v318 = *(v849 + 128);
              sub_1D6729D5C(&v920);
              v319 = *(*(v318 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

              if (v319)
              {
                v322 = v848;
                v320 = v848;
                v321 = v865;
              }

              else
              {
                v322 = v848;
                v320 = v848;
                v321 = v245;
              }

              v323 = v906;
              (*v866)(v320, v321, v906);
            }

            else
            {
              v322 = v848;
              v323 = v906;
              (*v866)(v848, v245, v906);
              sub_1D7070E6C(v849, type metadata accessor for InternalErrorViewLayout.Context);
            }

            v324 = (*v847)(v322, v323);
            if (v324 != v245 && v324 != v865)
            {
              (*v836)(v848, v906);
            }
          }

          else
          {
            (*v866)(v848, v865, v906);
          }

          goto LABEL_112;
        }

        v297 = v851[4];
        v298 = v851[6];
        v299 = v851[7];
        v925 = v851[5];
        v926 = v298;
        v927 = v299;
        v300 = v851[1];
        v920 = *v851;
        v301 = v851[2];
        v302 = v851[3];
        v921 = v300;
        v922 = v301;
        v923 = v302;
        v924 = v297;
        v303 = *(v851 + 16);
        sub_1D6729D5C(&v920);
        v304 = *(v303 + 48);
        v305 = *(v303 + 56);
        v306 = v850;

        v307 = LODWORD(v909);
        if ((v305 & 1) == 0)
        {
          *v306 = v304;
          v307 = LODWORD(v907);
        }

        v308 = v913;
        (**&v869)(v306, v307, v913);
        v309 = (*v883)(v306, v308);
        if (v309 != LODWORD(v907))
        {
          if (v309 == LODWORD(v909))
          {
            goto LABEL_99;
          }

          sub_1D7070E6C(v863, type metadata accessor for FeedItemSupplementaryAttributes);
          (*v840)(v306, v913);
LABEL_112:
          sub_1D7070F64(v908, v877, type metadata accessor for ZIndexable);
          v325 = v857;
          v326 = swift_isUniquelyReferenced_nonNull_native();
          *&v936 = v325;
          if ((v326 & 1) == 0)
          {
            sub_1D6998114(0, *(v325 + 16) + 1, 1);
            v325 = v936;
          }

          v328 = *(v325 + 16);
          v327 = *(v325 + 24);
          if (v328 >= v327 >> 1)
          {
            sub_1D6998114((v327 > 1), v328 + 1, 1);
            v325 = v936;
          }

          *(v325 + 16) = v328 + 1;
          v857 = v325;
          sub_1D7070F64(v877, v325 + *&v911 + v328 * v247, type metadata accessor for ZIndexable);
          v284 = v874;
          goto LABEL_79;
        }

        sub_1D7070E6C(v863, type metadata accessor for FeedItemSupplementaryAttributes);
        (*v859)(v306, v913);
        v284 = v874;
        if ((*v306 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }
      }

      sub_1D7070E6C(v908, type metadata accessor for ZIndexable);
LABEL_79:
      ++v282;
      v283 += v247;
      if (v281 == v282)
      {
        v246 = v898;
        goto LABEL_120;
      }
    }
  }

  v857 = MEMORY[0x1E69E7CC0];
LABEL_120:
  v329 = v861;

  v330 = *(v246 + 16);
  v860 = v201;
  v874 = v207;
  if (v330)
  {
    v911 = *&OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
    v908 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
    *&v907 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
    v901 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
    v331 = *(v882 + 80);
    v898 = v246;
    v332 = v246 + ((v331 + 32) & ~v331);
    v333 = *(v882 + 72);
    v910 = v333;
    do
    {
      v338 = v912;
      sub_1D707111C(v332, v912, type metadata accessor for ZIndexable);
      sub_1D707111C(v338, v329, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *&v920 = *v329;
        if (v873)
        {
          v334 = v201;
          v335 = v203;
          v336 = v205;
          v337 = v207;
        }

        else
        {
          v334 = 0.0;
          v335 = 0.0;
          v336 = 0.0;
          v337 = 0.0;
        }

        sub_1D7070474(&v920, v889, v334, v335, v336, v337);
        sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
      }

      else
      {
        v339 = v891;
        sub_1D7070F64(v329, v891, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D707111C(v339, v892, type metadata accessor for FeedItemSupplementaryAttributes);
        v340 = swift_getEnumCaseMultiPayload();
        if (v340 > 1)
        {
          if (v340 == 2)
          {
            v354 = *(v892 + 1);
            v920 = *v892;
            v355 = *(v892 + 2);
            v356 = *(v892 + 3);
            v357 = v889;
            v921 = v354;
            v922 = v355;
            v358 = *(v892 + 7);
            v926 = *(v892 + 6);
            v927 = v358;
            v359 = *(v892 + 5);
            v924 = *(v892 + 4);
            v925 = v359;
            v923 = v356;
            v360 = *(v892 + 16);
            *&v909 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
            v361 = *(v360 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
            swift_beginAccess();
            v362 = [objc_allocWithZone(type metadata accessor for FormatLayoutView(0)) initWithFrame_];
            v363 = v911;
            [*(v357 + *&v911) addSubview_];
            v364 = *(v357 + *&v363);
            [v364 contentSize];
            v366 = v365;
            [v362 frame];
            MaxX = CGRectGetMaxX(v957);
            if (v366 <= MaxX)
            {
              v366 = MaxX;
            }

            [*(v357 + *&v363) contentSize];
            v369 = v368;
            [v362 frame];
            MaxY = CGRectGetMaxY(v958);
            if (v369 > MaxY)
            {
              v371 = v369;
            }

            else
            {
              v371 = MaxY;
            }

            [v364 setContentSize_];
            v372 = *(*&v907 + 8);
            ObjectType = swift_getObjectType();
            v940 = v924;
            v941 = v925;
            v942 = v926;
            v943 = v927;
            v936 = v920;
            v937 = v921;
            v938 = v922;
            v939 = v923;
            v374 = *(v360 + *&v909);
            v918 = 0;
            v917 = 0;
            v919 = 0;
            (*(v372 + 88))(&v936, v374, v362, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, ObjectType, v372);
            v375 = *(v360 + 32);
            if (v375)
            {
              LOBYTE(v375) = *(v375 + 48);
            }

            v201 = v860;
            [v362 setClipsToBounds_];
            sub_1D725A7CC();
            v376 = v936;
            v329 = v861;
            v333 = v910;
            if (v936)
            {
              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              sub_1D6729D5C(&v920);
            }

            sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
            goto LABEL_125;
          }

          sub_1D5BAA13C(0);
          v390 = (v892 + *(v389 + 48));
          v391 = *v390;
          v392 = v390[1];
          v393 = v390[2];
          v394 = v390[3];
          v395 = *(v390 + 7);
          v940 = *(v390 + 6);
          v941 = v395;
          v396 = *(v390 + 11);
          v944 = *(v390 + 10);
          v945 = v396;
          v397 = *(v390 + 9);
          v942 = *(v390 + 8);
          v943 = v397;
          v398 = *(v390 + 15);
          v948 = *(v390 + 14);
          v949 = v398;
          v399 = *(v390 + 13);
          v946 = *(v390 + 12);
          v947 = v399;
          v400 = *(v390 + 5);
          v938 = *(v390 + 4);
          v939 = v400;
          v401 = *(v390 + 3);
          v936 = *(v390 + 2);
          v937 = v401;
          sub_1D7070F64(v892, v841, type metadata accessor for InternalErrorViewLayout.Context);
          v402 = [objc_allocWithZone(type metadata accessor for InternalErrorView()) initWithFrame_];
          v403 = v889;
          v404 = v911;
          [*(v889 + *&v911) addSubview_];
          v405 = *(v403 + *&v404);
          [v405 contentSize];
          v407 = v406;
          [v402 frame];
          v408 = CGRectGetMaxX(v961);
          if (v407 <= v408)
          {
            v407 = v408;
          }

          [*(v403 + *&v404) contentSize];
          v410 = v409;
          [v402 frame];
          v411 = CGRectGetMaxY(v962);
          if (v410 > v411)
          {
            v412 = v410;
          }

          else
          {
            v412 = v411;
          }

          v207 = v874;
          [v405 setContentSize_];
          *&v920 = v391;
          *(&v920 + 1) = v392;
          *&v921 = v393;
          *(&v921 + 1) = v394;
          v932 = v946;
          v933 = v947;
          v934 = v948;
          v935 = v949;
          v928 = v942;
          v929 = v943;
          v930 = v944;
          v931 = v945;
          v924 = v938;
          v925 = v939;
          v926 = v940;
          v927 = v941;
          v922 = v936;
          v923 = v937;
          v413 = v841;
          sub_1D69CBF1C(v841, &v920, v402);
          [*&v402[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
          v333 = v910;
          sub_1D7070E6C(v413, type metadata accessor for InternalErrorViewLayout.Context);
          sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
        }

        else
        {
          if (v340)
          {
            v377 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
            v378 = v889;
            v379 = v911;
            [*(v889 + *&v911) addSubview_];
            v380 = *(v378 + *&v379);
            [v380 contentSize];
            v382 = v381;
            [v377 frame];
            v383 = CGRectGetMaxX(v959);
            if (v382 <= v383)
            {
              v382 = v383;
            }

            [*(v378 + *&v379) contentSize];
            v385 = v384;
            [v377 frame];
            v386 = CGRectGetMaxY(v960);
            if (v385 > v386)
            {
              v387 = v385;
            }

            else
            {
              v387 = v386;
            }

            [v380 setContentSize_];
            v388 = [objc_opt_self() clearColor];
            sub_1D725CFEC();
          }

          else
          {
            v341 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
            v342 = v889;
            v343 = v911;
            [*(v889 + *&v911) addSubview_];
            v344 = *(v342 + *&v343);
            [v344 contentSize];
            v346 = v345;
            [v341 frame];
            v347 = CGRectGetMaxX(v955);
            if (v346 <= v347)
            {
              v346 = v347;
            }

            [*(v342 + *&v343) contentSize];
            v349 = v348;
            [v341 frame];
            v350 = CGRectGetMaxY(v956);
            if (v349 > v350)
            {
              v351 = v349;
            }

            else
            {
              v351 = v350;
            }

            [v344 setContentSize_];
            v352 = v901[3];
            v353 = v901[4];
            __swift_project_boxed_opaque_existential_1(v901, v352);
            (*(v353 + 8))(&v920, v352, v353);

            sub_1D725CFEC();
          }

          sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
        }

        v201 = v860;
        v329 = v861;
      }

LABEL_125:
      v332 += *&v333;
      --v330;
    }

    while (v330);
  }

  v414 = v858;
  v415 = v853;
  if (!v873)
  {
LABEL_334:
    v748 = *(v857 + 16);
    if (v748)
    {
      v914 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
      v910 = *&OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
      *&v909 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
      v908 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
      v749 = v857 + ((*(v882 + 80) + 32) & ~*(v882 + 80));
      v750 = *(v882 + 72);
      v913 = v750;
      do
      {
        v755 = v871;
        sub_1D707111C(v749, v871, type metadata accessor for ZIndexable);
        sub_1D707111C(v755, v414, type metadata accessor for ZIndexable);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *&v920 = *v414;
          if (v873)
          {
            v751 = v201;
            v752 = v203;
            v753 = v205;
            v754 = v207;
          }

          else
          {
            v751 = 0.0;
            v752 = 0.0;
            v753 = 0.0;
            v754 = 0.0;
          }

          sub_1D7070474(&v920, v889, v751, v752, v753, v754);
          sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
        }

        else
        {
          v756 = v854;
          sub_1D7070F64(v414, v854, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v756, v855, type metadata accessor for FeedItemSupplementaryAttributes);
          v757 = swift_getEnumCaseMultiPayload();
          if (v757 > 1)
          {
            if (v757 == 2)
            {
              v771 = *(v855 + 1);
              v920 = *v855;
              v772 = *(v855 + 2);
              v773 = *(v855 + 3);
              v921 = v771;
              v922 = v772;
              v774 = *(v855 + 7);
              v926 = *(v855 + 6);
              v927 = v774;
              v775 = *(v855 + 5);
              v924 = *(v855 + 4);
              v925 = v775;
              v923 = v773;
              v911 = v855[16];
              v912 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v776 = *(*&v911 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              v777 = [objc_allocWithZone(type metadata accessor for FormatLayoutView(0)) initWithFrame_];
              v778 = v889;
              v779 = v914;
              [*(v889 + v914) addSubview_];
              v780 = *(v778 + v779);
              [v780 contentSize];
              v782 = v781;
              [v777 frame];
              v783 = CGRectGetMaxX(v993);
              if (v782 <= v783)
              {
                v782 = v783;
              }

              [*(v778 + v779) contentSize];
              v785 = v784;
              [v777 frame];
              v786 = CGRectGetMaxY(v994);
              if (v785 > v786)
              {
                v787 = v785;
              }

              else
              {
                v787 = v786;
              }

              [v780 setContentSize_];
              v788 = *(*&v909 + 8);
              v789 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v790 = v911;
              v791 = *(*&v911 + v912);
              memset(v916, 0, sizeof(v916));
              (*(v788 + 88))(&v936, v791, v777, v893, v916, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v789, v788);
              v792 = *(*&v790 + 32);
              if (v792)
              {
                LOBYTE(v792) = *(v792 + 48);
              }

              v201 = v860;
              v750 = v913;
              [v777 setClipsToBounds_];
              sub_1D725A7CC();
              v793 = v936;
              if (v936)
              {
                [v936 setHidden_];
                sub_1D6729D5C(&v920);
              }

              else
              {
                sub_1D6729D5C(&v920);
              }

              sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
              sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
              v414 = v858;
            }

            else
            {
              sub_1D5BAA13C(0);
              v807 = (v855 + *(v806 + 48));
              v808 = *v807;
              v809 = v807[1];
              v810 = v807[2];
              v811 = v807[3];
              v812 = *(v807 + 7);
              v940 = *(v807 + 6);
              v941 = v812;
              v813 = *(v807 + 11);
              v944 = *(v807 + 10);
              v945 = v813;
              v814 = *(v807 + 9);
              v942 = *(v807 + 8);
              v943 = v814;
              v815 = *(v807 + 15);
              v948 = *(v807 + 14);
              v949 = v815;
              v816 = *(v807 + 13);
              v946 = *(v807 + 12);
              v947 = v816;
              v817 = *(v807 + 5);
              v938 = *(v807 + 4);
              v939 = v817;
              v818 = *(v807 + 3);
              v936 = *(v807 + 2);
              v937 = v818;
              sub_1D7070F64(v855, v839, type metadata accessor for InternalErrorViewLayout.Context);
              v819 = [objc_allocWithZone(type metadata accessor for InternalErrorView()) initWithFrame_];
              v820 = v889;
              v821 = v914;
              [*(v889 + v914) addSubview_];
              v822 = *(v820 + v821);
              [v822 contentSize];
              v824 = v823;
              [v819 frame];
              v825 = CGRectGetMaxX(v997);
              if (v824 <= v825)
              {
                v824 = v825;
              }

              [*(v820 + v821) contentSize];
              v827 = v826;
              [v819 frame];
              v828 = CGRectGetMaxY(v998);
              if (v827 > v828)
              {
                v829 = v827;
              }

              else
              {
                v829 = v828;
              }

              v207 = v874;
              [v822 setContentSize_];
              *&v920 = v808;
              *(&v920 + 1) = v809;
              *&v921 = v810;
              *(&v921 + 1) = v811;
              v932 = v946;
              v933 = v947;
              v934 = v948;
              v935 = v949;
              v928 = v942;
              v929 = v943;
              v930 = v944;
              v931 = v945;
              v924 = v938;
              v925 = v939;
              v926 = v940;
              v927 = v941;
              v922 = v936;
              v923 = v937;
              v830 = v839;
              sub_1D69CBF1C(v839, &v920, v819);
              [*&v819[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
              sub_1D7070E6C(v830, type metadata accessor for InternalErrorViewLayout.Context);
              sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
              sub_1D7070E6C(v871, type metadata accessor for ZIndexable);

              v414 = v858;
              v201 = v860;
              v750 = v913;
            }
          }

          else
          {
            if (v757)
            {
              v794 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v795 = v889;
              v796 = v914;
              [*(v889 + v914) addSubview_];
              v797 = *(v795 + v796);
              [v797 contentSize];
              v799 = v798;
              [v794 frame];
              v800 = CGRectGetMaxX(v995);
              if (v799 <= v800)
              {
                v799 = v800;
              }

              [*(v795 + v796) contentSize];
              v802 = v801;
              [v794 frame];
              v803 = CGRectGetMaxY(v996);
              if (v802 > v803)
              {
                v804 = v802;
              }

              else
              {
                v804 = v803;
              }

              [v797 setContentSize_];
              v805 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

            else
            {
              v758 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v759 = v889;
              v760 = v914;
              [*(v889 + v914) addSubview_];
              v761 = *(v759 + v760);
              [v761 contentSize];
              v763 = v762;
              [v758 frame];
              v764 = CGRectGetMaxX(v991);
              if (v763 <= v764)
              {
                v763 = v764;
              }

              [*(v759 + v760) contentSize];
              v766 = v765;
              [v758 frame];
              v767 = CGRectGetMaxY(v992);
              if (v766 > v767)
              {
                v768 = v766;
              }

              else
              {
                v768 = v767;
              }

              [v761 setContentSize_];
              v769 = v908[3];
              v770 = v908[4];
              __swift_project_boxed_opaque_existential_1(v908, v769);
              (*(v770 + 8))(&v920, v769, v770);

              sub_1D725CFEC();
            }

            sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
            v414 = v858;
            v201 = v860;
          }
        }

        v749 += v750;
        --v748;
      }

      while (v748);
    }

    return;
  }

  v416 = 0;
  v841 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  v867 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
  v866 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
  v865 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
  v850 = (v834 + ((*(v835 + 80) + 32) & ~*(v835 + 80)));
  LODWORD(v844) = *MEMORY[0x1E69D74D0];
  LODWORD(v875) = *MEMORY[0x1E69D8678];
  v898 = v832 + 104;
  LODWORD(v901) = *MEMORY[0x1E69D8680];
  v861 = (v832 + 88);
  v843 = (v832 + 8);
  v848 = (v832 + 96);
  v417 = *MEMORY[0x1E69D8478];
  v891 = (v833 + 104);
  LODWORD(v892) = *MEMORY[0x1E69D8470];
  v877 = (v833 + 88);
  v856 = (v833 + 8);
  v849 = *(v835 + 72);
  v868 = v205;
  v869 = v203;
  LODWORD(v907) = v417;
LABEL_166:
  v859 = v416;
  v419 = v864;
  sub_1D707111C(&v850[v849 * v416], v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
  sub_1D707111C(v419 + *(v852 + 20), v415, sub_1D6A5DD4C);
  v420 = sub_1D725A5BC();
  v421 = *(v420 - 8);
  if ((*(v421 + 48))(v415, 1, v420) == 1)
  {
    goto LABEL_202;
  }

  v422 = v415;
  v423 = v845;
  sub_1D707111C(v422, v845, sub_1D6A5DD4C);
  v424 = (*(v421 + 88))(v423, v420);
  if (v424 == v844)
  {
    *&v920 = *(v419 + 48);

    v247 = v846;
    sub_1D705E660(&v920);
    if (v247)
    {
      goto LABEL_382;
    }

    v846 = 0;
    v247 = v920;
    v425 = *(v920 + 16);
    if (!v425)
    {
      v472 = MEMORY[0x1E69E7CC0];
      v506 = MEMORY[0x1E69E7CC0];
      goto LABEL_248;
    }

    v426 = 0;
    v851 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v426 >= *(v247 + 16))
      {
        goto LABEL_378;
      }

      v427 = (*(v885 + 80) + 32) & ~*(v885 + 80);
      v428 = *(v885 + 72);
      v429 = v914;
      sub_1D707111C(v247 + v427 + v428 * v426, v914, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v429, v897, type metadata accessor for FeedItemSupplementaryAttributes);
      v430 = swift_getEnumCaseMultiPayload();
      if (v430 < 2)
      {
        goto LABEL_184;
      }

      if (v430 != 2)
      {
        break;
      }

      v431 = v897[4];
      v432 = v897[6];
      v433 = v897[7];
      v925 = v897[5];
      v926 = v432;
      v927 = v433;
      v434 = v897[1];
      v920 = *v897;
      v435 = v897[2];
      v436 = v897[3];
      v921 = v434;
      v922 = v435;
      v923 = v436;
      v924 = v431;
      v437 = *(v897 + 16);
      sub_1D6729D5C(&v920);
      v438 = *(v437 + 48);
      v439 = *(v437 + 56);

      v440 = v901;
      if ((v439 & 1) == 0)
      {
        *v887 = v438;
        v440 = v875;
      }

      v441 = v887;
      v442 = v913;
      (*v898)(v887, v440, v913);
      v443 = (*v861)(v441, v442);
      if (v443 == v875)
      {
        (*v848)(v441, v442);
        v417 = LODWORD(v907);
        if ((*v441 & 0x8000000000000000) != 0)
        {
          sub_1D7070F64(v914, v842, type metadata accessor for FeedItemSupplementaryAttributes);
          v444 = v851;
          v445 = swift_isUniquelyReferenced_nonNull_native();
          *&v936 = v444;
          if ((v445 & 1) == 0)
          {
            sub_1D69980C4(0, *(v444 + 16) + 1, 1);
            v444 = v936;
          }

          v447 = *(v444 + 16);
          v446 = *(v444 + 24);
          if (v447 >= v446 >> 1)
          {
            sub_1D69980C4((v446 > 1), v447 + 1, 1);
            v444 = v936;
          }

          *(v444 + 16) = v447 + 1;
          v851 = v444;
          sub_1D7070F64(v842, v444 + v427 + v447 * v428, type metadata accessor for FeedItemSupplementaryAttributes);
          v417 = LODWORD(v907);
          goto LABEL_199;
        }
      }

      else
      {
        v417 = LODWORD(v907);
        if (v443 == v901)
        {
          goto LABEL_185;
        }

        (*v843)(v887, v913);
      }

LABEL_198:
      sub_1D7070E6C(v914, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_199:
      if (v425 == ++v426)
      {
        v912 = *(v247 + 16);
        if (v912)
        {
          v470 = 0;
          v471 = v247 + v427;
          v472 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v470 >= *(v247 + 16))
            {
              goto LABEL_379;
            }

            v473 = v472;
            v474 = v899;
            sub_1D707111C(v471, v899, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v474, v880, type metadata accessor for FeedItemSupplementaryAttributes);
            v475 = swift_getEnumCaseMultiPayload();
            if (v475 < 2)
            {
              goto LABEL_224;
            }

            if (v475 != 2)
            {
              break;
            }

            v476 = v880[4];
            v477 = v880[6];
            v478 = v880[7];
            v925 = v880[5];
            v926 = v477;
            v927 = v478;
            v479 = v880[1];
            v920 = *v880;
            v480 = v880[2];
            v481 = v880[3];
            v921 = v479;
            v922 = v480;
            v923 = v481;
            v924 = v476;
            v482 = *(v880 + 16);
            sub_1D6729D5C(&v920);
            v483 = *(v482 + 48);
            v484 = *(v482 + 56);

            v485 = v901;
            if ((v484 & 1) == 0)
            {
              *v878 = v483;
              v485 = v875;
            }

            v486 = v878;
            v487 = v913;
            (*v898)(v878, v485, v913);
            v488 = (*v861)(v486, v487);
            if (v488 != v875)
            {
              if (v488 != v901)
              {
                v472 = v473;
                (*v843)(v878, v913);
                goto LABEL_238;
              }

LABEL_225:
              sub_1D707111C(v899, v879, type metadata accessor for FeedItemSupplementaryAttributes);
              v489 = swift_getEnumCaseMultiPayload();
              if (v489 >= 2)
              {
                if (v489 == 2)
                {
                  v490 = v879[4];
                  v491 = v879[6];
                  v492 = v879[7];
                  v925 = v879[5];
                  v926 = v491;
                  v927 = v492;
                  v493 = v879[1];
                  v920 = *v879;
                  v494 = v879[2];
                  v495 = v879[3];
                  v921 = v493;
                  v922 = v494;
                  v923 = v495;
                  v924 = v490;
                  v496 = *(v879 + 16);
                  sub_1D6729D5C(&v920);
                  v497 = *(*(v496 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

                  v498 = *v891;
                  if (v497)
                  {
                    v499 = v876;
                    v501 = v906;
                    v498(v876, v892, v906);
                    v500 = LODWORD(v907);
                  }

                  else
                  {
                    v499 = v876;
                    v500 = LODWORD(v907);
                    v501 = v906;
                    v498(v876, LODWORD(v907), v906);
                  }
                }

                else
                {
                  v499 = v876;
                  v500 = LODWORD(v907);
                  v501 = v906;
                  (*v891)(v876, LODWORD(v907), v906);
                  sub_1D7070E6C(v879, type metadata accessor for InternalErrorViewLayout.Context);
                }

                v502 = (*v877)(v499, v501);
                v472 = v473;
                if (v502 != v500 && v502 != v892)
                {
                  (*v856)(v876, v906);
                }
              }

              else
              {
                (*v891)(v876, v892, v906);
LABEL_227:
                v472 = v473;
              }

LABEL_238:
              sub_1D7070F64(v899, v886, type metadata accessor for FeedItemSupplementaryAttributes);
              v503 = swift_isUniquelyReferenced_nonNull_native();
              *&v936 = v472;
              if ((v503 & 1) == 0)
              {
                sub_1D69980C4(0, *(v472 + 16) + 1, 1);
                v472 = v936;
              }

              v505 = *(v472 + 16);
              v504 = *(v472 + 24);
              if (v505 >= v504 >> 1)
              {
                sub_1D69980C4((v504 > 1), v505 + 1, 1);
                v472 = v936;
              }

              *(v472 + 16) = v505 + 1;
              sub_1D7070F64(v886, v472 + v427 + v505 * v428, type metadata accessor for FeedItemSupplementaryAttributes);
              goto LABEL_243;
            }

            (*v848)(v486, v487);
            if ((*v486 & 0x8000000000000000) == 0)
            {
              goto LABEL_227;
            }

            sub_1D7070E6C(v899, type metadata accessor for FeedItemSupplementaryAttributes);
            v472 = v473;
LABEL_243:
            ++v470;
            v471 += v428;
            if (v912 == v470)
            {
              v417 = LODWORD(v907);
              goto LABEL_247;
            }
          }

          sub_1D7070E6C(v880, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_224:
          (*v898)(v878, v901, v913);
          goto LABEL_225;
        }

        v472 = MEMORY[0x1E69E7CC0];
LABEL_247:
        v506 = v851;
LABEL_248:
        v847 = v472;

        v963.origin.x = v860;
        v963.origin.y = v203;
        v963.size.width = v205;
        v963.size.height = v207;
        CGRectGetWidth(v963);
        v507 = sub_1D72632FC();
        v512 = MEMORY[0x1DA6FA970](v507, 0.0, v508, v509, v510, v511);
        v514 = v513;
        v516 = v515;
        v518 = v517;
        v519 = objc_allocWithZone(v837);
        v911 = v512;
        v910 = v514;
        v909 = v516;
        v908 = v518;
        v520 = [v519 initWithFrame_];
        v521 = *(v841 + v889);
        v912 = v520;
        [v521 addSubview_];
        v522 = *(v506 + 16);
        if (v522)
        {
          v883 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
          v523 = *(v885 + 80);
          v851 = v506;
          v524 = v506 + ((v523 + 32) & ~v523);
          v525 = *(v885 + 72);
          v881 = v525;
          while (1)
          {
            v545 = v904;
            sub_1D707111C(v524, v904, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v545, v905, type metadata accessor for FeedItemSupplementaryAttributes);
            v546 = swift_getEnumCaseMultiPayload();
            if (v546 > 1)
            {
              if (v546 != 2)
              {
                sub_1D5BAA13C(0);
                v594 = v905 + *(v593 + 48);
                v595 = *v594;
                v596 = *(v594 + 8);
                v597 = *(v594 + 16);
                v598 = *(v594 + 24);
                v599 = *(v594 + 112);
                v940 = *(v594 + 96);
                v941 = v599;
                v600 = *(v594 + 176);
                v944 = *(v594 + 160);
                v945 = v600;
                v601 = *(v594 + 144);
                v942 = *(v594 + 128);
                v943 = v601;
                v602 = *(v594 + 240);
                v948 = *(v594 + 224);
                v949 = v602;
                v603 = *(v594 + 208);
                v946 = *(v594 + 192);
                v947 = v603;
                v604 = *(v594 + 80);
                v938 = *(v594 + 64);
                v939 = v604;
                v605 = *(v594 + 48);
                v936 = *(v594 + 32);
                v937 = v605;
                sub_1D7070F64(v905, v872, type metadata accessor for InternalErrorViewLayout.Context);
                v973.origin.x = v595;
                v973.origin.y = v596;
                v973.size.width = v597;
                v973.size.height = v598;
                CGRectGetMinY(v973);
                v974.origin.x = v911;
                v974.origin.y = v910;
                v974.size.width = v909;
                *&v974.size.height = v908;
                CGRectGetMinY(v974);
                sub_1D72632EC();
                v607 = v606;
                v609 = v608;
                v611 = v610;
                v613 = v612;
                v614 = objc_allocWithZone(type metadata accessor for InternalErrorView());
                v615 = v611;
                v616 = v613;
                v205 = v868;
                v203 = v869;
                v617 = [v614 initWithFrame_];
                v618 = v522;
                v619 = v912;
                v620 = v883;
                [*(v912 + v883) addSubview_];
                v621 = *(v619 + v620);
                [v621 contentSize];
                v623 = v622;
                [v617 frame];
                v624 = CGRectGetMaxX(v975);
                if (v623 <= v624)
                {
                  v623 = v624;
                }

                v625 = *(v619 + v620);
                v522 = v618;
                [v625 contentSize];
                v627 = v626;
                [v617 frame];
                v628 = CGRectGetMaxY(v976);
                if (v627 > v628)
                {
                  v629 = v627;
                }

                else
                {
                  v629 = v628;
                }

                v207 = v874;
                [v621 setContentSize_];
                *&v920 = v595;
                *(&v920 + 1) = v596;
                *&v921 = v597;
                *(&v921 + 1) = v598;
                v932 = v946;
                v933 = v947;
                v934 = v948;
                v935 = v949;
                v928 = v942;
                v929 = v943;
                v930 = v944;
                v931 = v945;
                v924 = v938;
                v925 = v939;
                v926 = v940;
                v927 = v941;
                v922 = v936;
                v923 = v937;
                v630 = v872;
                sub_1D69CBF1C(v872, &v920, v617);
                [*&v617[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
                v525 = v881;
                sub_1D7070E6C(v630, type metadata accessor for InternalErrorViewLayout.Context);
                sub_1D7070E6C(v904, type metadata accessor for FeedItemSupplementaryAttributes);

                v417 = LODWORD(v907);
                goto LABEL_257;
              }

              v566 = v905[1];
              v920 = *v905;
              v567 = v905[2];
              v568 = v905[3];
              v921 = v566;
              v922 = v567;
              v569 = v905[7];
              v926 = v905[6];
              v927 = v569;
              v570 = v905[5];
              v924 = v905[4];
              v925 = v570;
              v923 = v568;
              v862 = *(v905 + 16);
              v863 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v571 = *(v862 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              CGRectGetMinY(*(v571 + 16));
              v970.origin.x = v911;
              v970.origin.y = v910;
              v970.size.width = v909;
              *&v970.size.height = v908;
              CGRectGetMinY(v970);
              sub_1D72632EC();
              v576 = [objc_allocWithZone(type metadata accessor for FormatLayoutView(0)) initWithFrame_];
              v577 = v912;
              v578 = v883;
              [*(v912 + v883) addSubview_];
              v579 = *(v577 + v578);
              [v579 contentSize];
              v581 = v580;
              [v576 frame];
              v582 = CGRectGetMaxX(v971);
              if (v581 <= v582)
              {
                v581 = v582;
              }

              v583 = *(v577 + v578);
              v584 = v862;
              [v583 contentSize];
              v586 = v585;
              [v576 frame];
              v587 = CGRectGetMaxY(v972);
              if (v586 > v587)
              {
                v588 = v586;
              }

              else
              {
                v588 = v587;
              }

              [v579 setContentSize_];
              v589 = *(v866 + 1);
              v590 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v591 = *(v584 + v863);
              v918 = 0;
              v917 = 0;
              v919 = 0;
              (*(v589 + 88))(&v936, v591, v576, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v590, v589);
              v592 = *(v584 + 32);
              if (v592)
              {
                LOBYTE(v592) = *(v592 + 48);
              }

              [v576 setClipsToBounds_];
              sub_1D725A7CC();
              v551 = v936;
              v417 = LODWORD(v907);
              v525 = v881;
              if (!v936)
              {
                sub_1D6729D5C(&v920);

                goto LABEL_256;
              }

              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              if (!v546)
              {
                CGRectGetMinY(*v905);
                v964.origin.x = v911;
                v964.origin.y = v910;
                v964.size.width = v909;
                *&v964.size.height = v908;
                CGRectGetMinY(v964);
                sub_1D72632EC();
                v530 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
                v531 = v912;
                v532 = v883;
                [*(v912 + v883) addSubview_];
                v533 = *(v531 + v532);
                [v533 contentSize];
                v535 = v534;
                [v530 frame];
                v536 = CGRectGetMaxX(v965);
                if (v535 <= v536)
                {
                  v535 = v536;
                }

                [*(v531 + v532) contentSize];
                v538 = v537;
                [v530 frame];
                v539 = CGRectGetMaxY(v966);
                if (v538 > v539)
                {
                  v540 = v538;
                }

                else
                {
                  v540 = v539;
                }

                [v533 setContentSize_];
                v541 = v865[3];
                v542 = v865[4];
                __swift_project_boxed_opaque_existential_1(v865, v541);
                v543 = *(v542 + 8);
                v544 = v542;
                v417 = LODWORD(v907);
                v543(&v920, v541, v544);

                sub_1D725CFEC();
                goto LABEL_256;
              }

              CGRectGetMinY(*v905);
              v967.origin.x = v911;
              v967.origin.y = v910;
              v967.size.width = v909;
              *&v967.size.height = v908;
              CGRectGetMinY(v967);
              sub_1D72632EC();
              v551 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v552 = v522;
              v553 = v417;
              v554 = v912;
              v555 = v883;
              [*(v912 + v883) addSubview_];
              v556 = *(v554 + v555);
              [v556 contentSize];
              v558 = v557;
              [v551 frame];
              v559 = CGRectGetMaxX(v968);
              if (v558 <= v559)
              {
                v558 = v559;
              }

              v560 = *(v554 + v555);
              v417 = v553;
              v522 = v552;
              v525 = v881;
              [v560 contentSize];
              v562 = v561;
              [v551 frame];
              v563 = CGRectGetMaxY(v969);
              if (v562 > v563)
              {
                v564 = v562;
              }

              else
              {
                v564 = v563;
              }

              [v556 setContentSize_];
              v565 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

LABEL_256:
            sub_1D7070E6C(v904, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_257:
            v524 += v525;
            if (!--v522)
            {
              v631 = v890;
              goto LABEL_286;
            }
          }
        }

        v631 = v890;
LABEL_286:

        v632 = *(v864 + 40);
        v247 = v632 + 64;
        v633 = 1 << *(v632 + 32);
        if (v633 < 64)
        {
          v634 = ~(-1 << v633);
        }

        else
        {
          v634 = -1;
        }

        v635 = v634 & *(v632 + 64);
        v636 = (v633 + 63) >> 6;

        v637 = 0;
        if (v635)
        {
          while (1)
          {
            v638 = v637;
LABEL_295:
            v639 = __clz(__rbit64(v635));
            v635 &= v635 - 1;
            *&v920 = *(*(v632 + 56) + ((v638 << 9) | (8 * v639)));

            sub_1D7063E0C(&v920, v912, v893, v894, v895, v896, v631, v911, v910, v909, *&v908);

            if (!v635)
            {
              goto LABEL_291;
            }
          }
        }

        while (1)
        {
LABEL_291:
          v638 = v637 + 1;
          if (__OFADD__(v637, 1))
          {
            goto LABEL_377;
          }

          if (v638 >= v636)
          {
            break;
          }

          v635 = *(v247 + 8 * v638);
          ++v637;
          if (v635)
          {
            v637 = v638;
            goto LABEL_295;
          }
        }

        v640 = *(v847 + 16);
        if (v640)
        {
          v881 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
          v641 = v847 + ((*(v885 + 80) + 32) & ~*(v885 + 80));
          v883 = *(v885 + 72);
          do
          {
            v661 = v902;
            sub_1D707111C(v641, v902, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v661, v903, type metadata accessor for FeedItemSupplementaryAttributes);
            v662 = swift_getEnumCaseMultiPayload();
            if (v662 > 1)
            {
              if (v662 != 2)
              {
                sub_1D5BAA13C(0);
                v708 = v903 + *(v707 + 48);
                v709 = *v708;
                v710 = *(v708 + 8);
                v711 = *(v708 + 16);
                v712 = *(v708 + 24);
                v713 = *(v708 + 112);
                v940 = *(v708 + 96);
                v941 = v713;
                v714 = *(v708 + 176);
                v944 = *(v708 + 160);
                v945 = v714;
                v715 = *(v708 + 144);
                v942 = *(v708 + 128);
                v943 = v715;
                v716 = *(v708 + 240);
                v948 = *(v708 + 224);
                v949 = v716;
                v717 = *(v708 + 208);
                v946 = *(v708 + 192);
                v947 = v717;
                v718 = *(v708 + 80);
                v938 = *(v708 + 64);
                v939 = v718;
                v719 = *(v708 + 48);
                v936 = *(v708 + 32);
                v937 = v719;
                sub_1D7070F64(v903, v870, type metadata accessor for InternalErrorViewLayout.Context);
                v986.origin.x = v709;
                v986.origin.y = v710;
                v986.size.width = v711;
                v986.size.height = v712;
                CGRectGetMinY(v986);
                v987.origin.x = v911;
                v987.origin.y = v910;
                v987.size.width = v909;
                *&v987.size.height = v908;
                CGRectGetMinY(v987);
                sub_1D72632EC();
                v721 = v720;
                v723 = v722;
                v725 = v724;
                v727 = v726;
                v728 = objc_allocWithZone(type metadata accessor for InternalErrorView());
                v729 = v725;
                v730 = v727;
                v205 = v868;
                v203 = v869;
                v731 = [v728 initWithFrame_];
                v732 = v912;
                v733 = v881;
                [*&v881[v912] addSubview_];
                v734 = *&v733[v732];
                [v734 contentSize];
                v736 = v735;
                [v731 frame];
                v737 = CGRectGetMaxX(v988);
                if (v736 <= v737)
                {
                  v736 = v737;
                }

                [*&v733[v732] contentSize];
                v739 = v738;
                [v731 frame];
                v740 = CGRectGetMaxY(v989);
                if (v739 > v740)
                {
                  v741 = v739;
                }

                else
                {
                  v741 = v740;
                }

                v207 = v874;
                [v734 setContentSize_];
                *&v920 = v709;
                *(&v920 + 1) = v710;
                *&v921 = v711;
                *(&v921 + 1) = v712;
                v932 = v946;
                v933 = v947;
                v934 = v948;
                v935 = v949;
                v928 = v942;
                v929 = v943;
                v930 = v944;
                v931 = v945;
                v924 = v938;
                v925 = v939;
                v926 = v940;
                v927 = v941;
                v922 = v936;
                v923 = v937;
                v742 = v870;
                sub_1D69CBF1C(v870, &v920, v731);
                [*&v731[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
                sub_1D7070E6C(v742, type metadata accessor for InternalErrorViewLayout.Context);
                sub_1D7070E6C(v902, type metadata accessor for FeedItemSupplementaryAttributes);

                v417 = LODWORD(v907);
                goto LABEL_306;
              }

              v863 = v640;
              v681 = v903[1];
              v920 = *v903;
              v682 = v903[2];
              v683 = v903[3];
              v921 = v681;
              v922 = v682;
              v684 = v903[7];
              v926 = v903[6];
              v927 = v684;
              v685 = v903[5];
              v924 = v903[4];
              v925 = v685;
              v923 = v683;
              v686 = *(v903 + 16);
              v862 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v687 = *(v686 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              CGRectGetMinY(*(v687 + 16));
              v983.origin.x = v911;
              v983.origin.y = v910;
              v983.size.width = v909;
              *&v983.size.height = v908;
              CGRectGetMinY(v983);
              sub_1D72632EC();
              v692 = [objc_allocWithZone(type metadata accessor for FormatLayoutView(0)) initWithFrame_];
              v693 = v912;
              v694 = v881;
              [*&v881[v912] addSubview_];
              v695 = *&v694[v693];
              [v695 contentSize];
              v697 = v696;
              [v692 frame];
              v698 = CGRectGetMaxX(v984);
              if (v697 <= v698)
              {
                v697 = v698;
              }

              [*&v694[v693] contentSize];
              v700 = v699;
              [v692 frame];
              v701 = CGRectGetMaxY(v985);
              if (v700 > v701)
              {
                v702 = v700;
              }

              else
              {
                v702 = v701;
              }

              [v695 setContentSize_];
              v703 = *(v866 + 1);
              v704 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v705 = *(v862 + v686);
              v918 = 0;
              v917 = 0;
              v919 = 0;
              (*(v703 + 88))(&v936, v705, v692, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v704, v703);
              v706 = *(v686 + 32);
              if (v706)
              {
                LOBYTE(v706) = *(v706 + 48);
              }

              [v692 setClipsToBounds_];
              sub_1D725A7CC();
              v667 = v936;
              v417 = LODWORD(v907);
              v640 = v863;
              if (!v936)
              {
                sub_1D6729D5C(&v920);

                goto LABEL_305;
              }

              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              if (!v662)
              {
                CGRectGetMinY(*v903);
                v977.origin.x = v911;
                v977.origin.y = v910;
                v977.size.width = v909;
                *&v977.size.height = v908;
                CGRectGetMinY(v977);
                sub_1D72632EC();
                v646 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
                v647 = v912;
                v648 = v881;
                [*&v881[v912] addSubview_];
                v649 = *&v648[v647];
                [v649 contentSize];
                v651 = v650;
                [v646 frame];
                v652 = CGRectGetMaxX(v978);
                if (v651 <= v652)
                {
                  v651 = v652;
                }

                [*&v648[v647] contentSize];
                v654 = v653;
                [v646 frame];
                v655 = CGRectGetMaxY(v979);
                if (v654 > v655)
                {
                  v656 = v654;
                }

                else
                {
                  v656 = v655;
                }

                [v649 setContentSize_];
                v657 = v865[3];
                v658 = v865[4];
                __swift_project_boxed_opaque_existential_1(v865, v657);
                v659 = *(v658 + 8);
                v660 = v658;
                v417 = LODWORD(v907);
                v659(&v920, v657, v660);

                sub_1D725CFEC();
                goto LABEL_305;
              }

              CGRectGetMinY(*v903);
              v980.origin.x = v911;
              v980.origin.y = v910;
              v980.size.width = v909;
              *&v980.size.height = v908;
              CGRectGetMinY(v980);
              sub_1D72632EC();
              v667 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v668 = v417;
              v669 = v912;
              v670 = v881;
              [*&v881[v912] addSubview_];
              v671 = *&v670[v669];
              [v671 contentSize];
              v673 = v672;
              [v667 frame];
              v674 = CGRectGetMaxX(v981);
              if (v673 <= v674)
              {
                v673 = v674;
              }

              v675 = *&v670[v669];
              v417 = v668;
              [v675 contentSize];
              v677 = v676;
              [v667 frame];
              v678 = CGRectGetMaxY(v982);
              if (v677 > v678)
              {
                v679 = v677;
              }

              else
              {
                v679 = v678;
              }

              [v671 setContentSize_];
              v680 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

LABEL_305:
            sub_1D7070E6C(v902, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_306:
            v641 += v883;
            --v640;
          }

          while (v640);
        }

        v743 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
        v744 = v912;
        [*(v912 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView) setClipsToBounds_];
        v745 = *&v744[v743];
        [v745 contentSize];
        v747 = v746 + v838;
        v990.origin.x = v911;
        v990.origin.y = v910;
        v990.size.width = v909;
        *&v990.size.height = v908;
        [v745 setContentSize_];
        sub_1D7070E6C(v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);

        v414 = v858;
        v418 = v873;
        v201 = v860;
LABEL_165:
        v416 = v859 + 1;
        v415 = v853;
        sub_1D7070E6C(v853, sub_1D6A5DD4C);
        if (v416 == v418)
        {
          goto LABEL_334;
        }

        goto LABEL_166;
      }
    }

    sub_1D7070E6C(v897, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_184:
    (*v898)(v887, v901, v913);
LABEL_185:
    sub_1D707111C(v914, v888, type metadata accessor for FeedItemSupplementaryAttributes);
    v448 = swift_getEnumCaseMultiPayload();
    if (v448 >= 2)
    {
      if (v448 == 2)
      {
        v449 = v888[4];
        v450 = v888[6];
        v451 = v888[7];
        v925 = v888[5];
        v926 = v450;
        v927 = v451;
        v452 = v888[1];
        v920 = *v888;
        v453 = v888[2];
        v454 = v888[3];
        v921 = v452;
        v922 = v453;
        v923 = v454;
        v924 = v449;
        v455 = *(v888 + 16);
        sub_1D6729D5C(&v920);
        v456 = *(*(v455 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        if (v456)
        {
          v459 = v884;
          v457 = v884;
          v458 = v892;
        }

        else
        {
          v459 = v884;
          v457 = v884;
          v458 = v417;
        }

        v460 = v906;
        (*v891)(v457, v458, v906);
      }

      else
      {
        v459 = v884;
        v460 = v906;
        (*v891)(v884, v417, v906);
        sub_1D7070E6C(v888, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v461 = (*v877)(v459, v460);
      if (v461 != v417 && v461 != v892)
      {
        (*v856)(v884, v906);
      }
    }

    else
    {
      (*v891)(v884, v892, v906);
    }

    goto LABEL_198;
  }

  (*(v421 + 8))(v423, v420);
LABEL_202:
  v462 = *(v419 + 40);
  v247 = v462 + 64;
  v463 = 1 << *(v462 + 32);
  if (v463 < 64)
  {
    v464 = ~(-1 << v463);
  }

  else
  {
    v464 = -1;
  }

  v465 = v464 & *(v462 + 64);
  v466 = (v463 + 63) >> 6;

  v467 = 0;
  while (v465)
  {
    v468 = v467;
LABEL_211:
    v469 = __clz(__rbit64(v465));
    v465 &= v465 - 1;
    *&v920 = *(*(v462 + 56) + ((v468 << 9) | (8 * v469)));

    sub_1D7065110(&v920, v889, v893, v894, v895, v896, v890);
  }

  while (1)
  {
    v468 = v467 + 1;
    if (__OFADD__(v467, 1))
    {
      break;
    }

    if (v468 >= v466)
    {

      sub_1D7070E6C(v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      v414 = v858;
      v418 = v873;
      goto LABEL_165;
    }

    v465 = *(v247 + 8 * v468);
    ++v467;
    if (v465)
    {
      v467 = v468;
      goto LABEL_211;
    }
  }

  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:

  __break(1u);
}