void sub_1D7E71F10(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BlueprintViewController.viewDidAppear(_:)(a3);
}

void sub_1D7E71F64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D81925C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E71FB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E72000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E72050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E720A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E720F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id UIViewController.topParentViewController.getter()
{
  for (i = v0; ; i = v3)
  {
    v2 = [i parentViewController];
    if (!v2)
    {
      break;
    }

    v3 = v2;
  }

  return i;
}

uint64_t adjustLayoutDirection<A>(inBounds:block:)(void (*a1)(void *))
{
  OUTLINED_FUNCTION_155();
  v4 = sub_1D818E7D4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  v6 = swift_allocObject();
  v6[5] = v4;
  v6[6] = sub_1D7E4E9A0();
  __swift_allocate_boxed_opaque_existential_0(v6 + 2);
  OUTLINED_FUNCTION_4_92();
  v7();
  v6[7] = v2;
  v6[8] = v1;
  v8 = OUTLINED_FUNCTION_6_88();
  v9(v8);
  a1(v6);
}

Swift::Void __swiftcall BlueprintViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = OUTLINED_FUNCTION_75_8();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v14.receiver = v1;
  v14.super_class = v3;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, v2 & 1);
  OUTLINED_FUNCTION_1_71();
  v6 = *(v5 + 304);
  OUTLINED_FUNCTION_56(v1 + v6, v13);
  *(v1 + v6) = 2;
  sub_1D7E72464();
  OUTLINED_FUNCTION_1_71();
  __swift_project_boxed_opaque_existential_1((v1 + *(v7 + 232)), *(v1 + *(v7 + 232) + 24));
  OUTLINED_FUNCTION_68_4();
  v8 = OUTLINED_FUNCTION_15_5();
  [v9(v8) setIsActive_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_71();
  v11 = *(v10 + 152);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v1 + v11) != 1 || (sub_1D80EB2E0() & 1) != 0)
  {
    BlueprintViewController.becomeFirstResponder()();
  }

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_73_6();
  (*(v12 + 24))(*(v4 + 88));
}

void sub_1D7E72464()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v29 = *v2;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v11 = *((v4 & v3) + 0x70);
  v12 = *(v11 + 56);
  v13 = *((v4 & v3) + 0x58);
  swift_unknownObjectRetain();
  v25 = v12;
  v14 = (v12)(v13, v11);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 40);
  OUTLINED_FUNCTION_12_13();
  v17 = swift_checkMetadataState();
  v30 = AssociatedConformanceWitness;
  v18 = v16(v17, AssociatedConformanceWitness);

  v19 = *(v18 + 16);
  if (v19)
  {
    v28 = *(AssociatedConformanceWitness + 80);
    v27 = *(v31 + 16);
    OUTLINED_FUNCTION_92_3();
    v21 = v18 + v20;
    v26 = *(v22 + 56);
    v23 = (v22 - 8);
    do
    {
      v27(v10, v21, v5);
      swift_unknownObjectRetain();
      v25(v13, v11);
      OUTLINED_FUNCTION_16_1();
      swift_unknownObjectRelease();
      v24 = v28(v10, v17, v30);

      v32 = v29;
      BlueprintImpressionManager.startImpression(at:view:triggerSource:)(v10, v24, &v32);

      (*v23)(v10, v5);
      v21 += v26;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E72768()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E72808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 290))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7E728A4()
{
  v1 = [v0 indexPathsForVisibleItems];
  sub_1D818E994();
  v2 = sub_1D8191314();

  return v2;
}

uint64_t sub_1D7E728FC(uint64_t a1)
{
  sub_1D7E72A9C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall BlueprintViewController.becomeFirstResponder()()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.invalidate(clearState:)(0);

  v10.receiver = v1;
  v10.super_class = v0;
  v2 = objc_msgSendSuper2(&v10, sel_becomeFirstResponder);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E265E4();
  if (v8)
  {
    sub_1D7E05450(&v7, v9);
    v3 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = OUTLINED_FUNCTION_6_1();
    v5(v4, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_1D7E73ECC(&v7, &qword_1EDBB8098, qword_1EDBB80A0, &protocol descriptor for KeyCommandTraverserType);
  }

  return v2;
}

void sub_1D7E72A9C(uint64_t a1)
{
  if (!qword_1EDBB75F8)
  {
    sub_1D7E09D14(255, &qword_1EDBB7608, &type metadata for MastheadViewLayoutOptions);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB75F8);
    }
  }
}

Swift::Void __swiftcall KeyCommandManager.invalidate(clearState:)(Swift::Bool clearState)
{
  OUTLINED_FUNCTION_0_177(clearState);
  v3 = *(v1 + 64);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = sub_1D81920A4();
  if (v4)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    sub_1D8190DB4();
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v5, v3);
        if (clearState)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);

        if (clearState)
        {
          goto LABEL_10;
        }
      }

      v7 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      if ((*(v7 + 40))(ObjectType, v7))
      {
LABEL_10:
        v9 = *(v6 + 40);
        v10 = swift_getObjectType();
        (*(v9 + 48))(v10, v9);
      }

      ++v5;
      KeyCommandRegistry.invalidate()();

      if (v4 == v5)
      {

        return;
      }
    }
  }
}

Swift::Void __swiftcall KeyCommandRegistry.invalidate()()
{
  OUTLINED_FUNCTION_12_9();
  v1 = v0;
  OUTLINED_FUNCTION_7_13(v2, v3, v4);
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_24();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1D8190DB4();
  v11 = 0;
  while (v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_11();
    v14 = *(*(v5 + 48) + ((v11 << 9) | (8 * v13)));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      [Strong removeKeyCommand_];
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      swift_beginAccess();
      sub_1D7E72D74(0);
      sub_1D8190DE4();
      swift_endAccess();
      swift_getObjectType();
      OUTLINED_FUNCTION_18_5();
      v17(v1);
      OUTLINED_FUNCTION_11_8();
      return;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D7E72D74(uint64_t a1)
{
  if (!qword_1EDBB3480)
  {
    sub_1D7E3DCA8();
    sub_1D7E31228();
    sub_1D7E72E88(&qword_1EDBB3258, sub_1D7E3DCA8);
    v1 = sub_1D8190DF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB3480);
    }
  }
}

uint64_t sub_1D7E72E20(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MastheadViewLayoutOptions.FloatingTabBarOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_1D7E72E88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s5TeaUI32KeyCommandFocusSelectionProviderC17selectedIndexPath10Foundation0iJ0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D7E3D564(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v43 - v9;
  v11 = *(v3 + 96);
  v12 = *(v11 + 56);
  v13 = *(v3 + 80);
  v14 = v12(v13, v11, v8);
  v15 = [v14 window];

  if (v15)
  {
    if ([v15 isKeyWindow])
    {
      v45 = a1;
      v16 = [v15 windowScene];
      if (!v16 || (v17 = v16, v18 = [v16 focusSystem], v17, (v44 = v18) == 0))
      {

        v30 = sub_1D818E994();
        v31 = v45;
        goto LABEL_13;
      }

      v19 = (v12)(v13, v11);
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20 && (v21 = v20, (v22 = [v44 focusedItem]) != 0))
      {
        v43[0] = v21;
        v23 = v22;
        objc_opt_self();
        v43[1] = v23;
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v19;
          v26 = [v43[0] indexPathForCell_];
          a1 = v45;
          if (v26)
          {
            v27 = v26;
            sub_1D818E924();

            swift_unknownObjectRelease();
            v28 = sub_1D818E994();
            v29 = 0;
          }

          else
          {

            swift_unknownObjectRelease();
            v28 = sub_1D818E994();
            v29 = 1;
          }

          __swift_storeEnumTagSinglePayload(v10, v29, 1, v28);
          v42 = v10;
          return sub_1D8013D78(v42, a1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a1 = v45;
      v33 = (v12)(v13, v11);
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = v44;
        if ([v44 focusedItem])
        {
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (v37)
          {
            v38 = [v35 indexPathForCell_];
            if (v38)
            {
              v39 = v38;
              sub_1D818E924();
              swift_unknownObjectRelease();

              v40 = sub_1D818E994();
              v41 = 0;
            }

            else
            {
              swift_unknownObjectRelease();

              v40 = sub_1D818E994();
              v41 = 1;
            }

            __swift_storeEnumTagSinglePayload(v6, v41, 1, v40);
            v42 = v6;
            return sub_1D8013D78(v42, a1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v30 = sub_1D818E994();
  v31 = a1;
LABEL_13:

  return __swift_storeEnumTagSinglePayload(v31, 1, 1, v30);
}

uint64_t sub_1D7E73334(uint64_t a1)
{
  sub_1D7E73450(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *Action.reset()()
{

  v0 = sub_1D818F214();
  sub_1D7E734B0(v0);

  sub_1D818F234();

  return v2;
}

void sub_1D7E73450(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_17_7();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7E734B0(uint64_t result)
{
  if (result)
  {

    sub_1D818F8B4();
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v3 = sub_1D818F894();
    sub_1D7E734B0(v3);
  }

  return result;
}

void *Action.then(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Then(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), a3, a4);
  v11 = Then.__allocating_init(block:)(a1, a2);
  OUTLINED_FUNCTION_0_85(v11, &qword_1EDBBC448);
  OUTLINED_FUNCTION_8_5(v8);

  sub_1D818F8A4();

  sub_1D818F224();

  v9 = v5;

  return v9;
}

BOOL sub_1D7E73660(void *a1)
{
  v1 = a1;
  v2 = BlueprintViewController.canBecomeFirstResponder.getter();

  return v2;
}

BOOL BlueprintViewController.canBecomeFirstResponder.getter()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_82();
  v1 = *(*(v0 + 112) + 88);
  OUTLINED_FUNCTION_82();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_85();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return (v3 & 1) == 0;
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return sub_1D7EF80F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_82_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return swift_getTupleTypeMetadata();
}

id OUTLINED_FUNCTION_82_4()
{

  return [v0 (v1 + 901)];
}

uint64_t Then.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1D7E73860(UIImage_optional a1)
{
  isa = a1.value.super.isa;
  UIImageView.setImageIfNeeded(_:)(a1);
  sub_1D7E73B8C(0, 0);
  if (isa)
  {
    [v1 setBackgroundColor_];
  }

  else
  {
    v2 = *&v1[OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor];

    [v1 setBackgroundColor_];
  }
}

Swift::Void __swiftcall UIImageView.setImageIfNeeded(_:)(UIImage_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = [v1 image];
  if (v4)
  {
    v5 = v4;
    if (isa)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
      v6 = isa;
      v7 = sub_1D8191CC4();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!isa)
  {
    return;
  }

  [v2 setImage_];
}

id sub_1D7E73ACC()
{
  if ([v0 delegate])
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowScene();
  return objc_msgSendSuper2(&v2, sel_nextResponder);
}

uint64_t sub_1D7E73B54@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1D7E73B8C(uint64_t a1, uint64_t a2)
{

  sub_1D818F544();
}

void sub_1D7E73C1C(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
  sub_1D7E73E08();
}

uint64_t sub_1D7E73C68(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_12_0();
  v12[2] = *(v4 + 80);
  OUTLINED_FUNCTION_12_0();
  v13 = *(v5 + 88);
  v6 = OUTLINED_FUNCTION_56_0();
  v9 = type metadata accessor for DebouncedSet.State(v6, v7, v13, v8);
  OUTLINED_FUNCTION_56_0();
  v10 = sub_1D8191654();
  sub_1D7E4ECC8(a1, v12, v3, v9, v10);
  return v14;
}

id sub_1D7E73D88()
{
  v0 = [objc_opt_self() sharedApplication];

  return v0;
}

uint64_t sub_1D7E73DC8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_1D7E73E08()
{
  v1 = [v0 backgroundColor];
  *&v0[OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor] = v1;

  return MEMORY[0x1EEE66BB8]();
}

id sub_1D7E73E84()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ImageView();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

uint64_t sub_1D7E73ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7E32900(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall BlueprintViewProvider.viewDidAppear()()
{
  OUTLINED_FUNCTION_12_53();
  (*(*(*(v2 + 136) + 8) + 24))(*(v0 + 96));
  OUTLINED_FUNCTION_16_46();
  sub_1D7E41148();
  v3 = v1;
  if (OUTLINED_FUNCTION_9_9(v3, v4, v5, v6, v7, v8, v9, v10, v15, *(&v15 + 1), v16, v17, v18, v19, v20))
  {
    sub_1D7E05450(&v15, v21);
    OUTLINED_FUNCTION_27_0(v21);
    v11 = OUTLINED_FUNCTION_3_1();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v15, v13, v14);
  }
}

uint64_t sub_1D7E74104(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7E09D14(0, a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.viewDidAppear()()
{
  OUTLINED_FUNCTION_10_34();
  *(v0 + *(v1 + 304)) = 2;
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_1_0(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    OUTLINED_FUNCTION_117_1();
    v6 = sub_1D8191314();

    v7 = sub_1D7E36AB8(v6);
    if (!v7)
    {
LABEL_11:

      return;
    }

    v8 = v7;
    if (v7 >= 1)
    {
      v9 = 0;
      OUTLINED_FUNCTION_7_38();
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_54_1();
          v11 = MEMORY[0x1DA714420](v10);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        ViewControllerTransitionManager.state(viewController:)(v11);
        if (!v14)
        {
          ViewControllerTransitionManager.endTransition(viewController:)(v12);
        }

        ++v9;
      }

      while (v8 != v9);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_55_7();
    v13();
  }
}

double sub_1D7E74344()
{
  v1 = *(v0 + qword_1EDBB8890);
  if (v1)
  {
    return *(v1 + 88);
  }

  else
  {
    return 0.0;
  }
}

void sub_1D7E74368(uint64_t a1)
{
  v2 = v1;
  v15 = MastheadViewController.scrollView.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v20 = [v3 collectionViewLayout];
    sub_1D7E0A1A8(0, &qword_1EDBB3098, 0x1E69DC850);
    sub_1D7E0631C(0, &qword_1EDBB6740, &protocol descriptor for MastheadDyamicAwareObserver);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_1D805F144(&v16, &qword_1EDBAFE58, &qword_1EDBB6740, &protocol descriptor for MastheadDyamicAwareObserver, sub_1D7E0631C);
      return;
    }

    sub_1D7E05450(&v16, v21);
    sub_1D7E41C50(&v1[qword_1EDBB88C8], &v16);
    v4 = *(&v17 + 1);
    if (*(&v17 + 1))
    {
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v6 = [v1 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = [v6 traitCollection];

      v9 = (*(v5 + 48))(v8, v4, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    else
    {
      sub_1D805F144(&v16, &qword_1EDBB64D0, &unk_1EDBB64D8, &protocol descriptor for MiniMastheadViewProviderType, sub_1D7E0631C);
      v9 = 0.0;
    }

    v10 = qword_1EDBB8838;
    swift_beginAccess();
    v11 = 0.0;
    if (v2[v10] == 1)
    {
      sub_1D7E74344();
      v11 = v12;
    }

    v13 = v22;
    v14 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    MastheadViewController.layoutOptions.getter(&v16);
    sub_1D7E72850(&v16);
    (*(v14 + 16))(v13, v14, v9 + v11 + v19);

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
  }
}

id MastheadViewController.scrollView.getter()
{
  OUTLINED_FUNCTION_26_15();
  v1(&v6, *(v0 + 80));
  v2 = v6;
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_1D818F154();

    if (v5)
    {
      OUTLINED_FUNCTION_35_13();
      return v5;
    }

    else
    {
      v3 = sub_1D805BC98();
      OUTLINED_FUNCTION_35_13();
      return v3;
    }
  }

  return v2;
}

void sub_1D7E74750(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = v2 + *(v5 + 120);
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
}

void sub_1D7E747F8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v20 = MastheadViewController.scrollView.getter();
  [v20 adjustedContentInset];
  v6 = v5;
  [v20 contentOffset];
  v8 = v7;
  if ((v4 & 1) == 0)
  {
    [v20 contentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v2 view];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    [v15 safeAreaInsets];
    v18 = v17;

    [v20 setContentInset_];
  }

  if (v8 != -v6)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1D805EAAC();
    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  [v20 adjustedContentInset];
  [v20 setContentOffset:0 animated:{0.0, -v19}];
LABEL_9:
}

double CGRect.center.getter(double a1, double a2, double a3, double a4)
{
  MidX = CGRectGetMidX(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetMidY(v6);
  return MidX;
}

void sub_1D7E74A04()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PillButton();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetHeight(v16) * 0.5;
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, v9}];
  v11 = [v0 layer];
  v12 = objc_opt_self();
  v13 = OUTLINED_FUNCTION_6_34(v12);
  v14 = [v10 CGPath];
  [v13 setPath_];
}

Swift::Void __swiftcall ImageView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_0_32();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D7E74DC4;
  *(v3 + 24) = v2;
  v7[4] = sub_1D7E74D6C;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D7E74D74;
  v7[3] = &block_descriptor_38;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1D7E74CAC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t CommandExecutionSource.__deallocating_deinit()
{
  CommandExecutionSource.deinit();
  OUTLINED_FUNCTION_5_76();

  return swift_deallocClassInstance();
}

id sub_1D7E74DFC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  [a1 bounds];

  return [v1 setFrame_];
}

void *CommandExecutionSource.deinit()
{

  MEMORY[0x1DA715E30](v0 + 32);
  sub_1D7E166A0(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return v0;
}

Swift::Void __swiftcall BlueprintPrefetcher.prefetch(with:)(TeaUI::ScrollDirection with)
{
  v2 = v1;
  v3 = *v1;
  v4 = **&with.horizontal;
  v5 = *(*&with.horizontal + 1);
  v6 = v3;
  swift_beginAccess();
  v7 = v2[2];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v8 bounds];
  if (CGRectGetWidth(v63) <= 0.0 || (OUTLINED_FUNCTION_4_70(), CGRectGetHeight(v64) <= 0.0))
  {
LABEL_19:

    return;
  }

  OUTLINED_FUNCTION_4_70();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v5 < 2 || ([v8 contentSize], v18 = v17, OUTLINED_FUNCTION_4_70(), v19 = CGRectGetHeight(v65) < v18, x = v10, y = v12, width = v14, height = v16, v19))
  {
    v66.origin.x = OUTLINED_FUNCTION_1_119();
    CGRectGetHeight(v66);
    v67.origin.x = OUTLINED_FUNCTION_1_119();
    v68 = CGRectOffset(v67, v24, v25);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
  }

  v59 = v10;
  if (v4)
  {
    if (v4 == 1)
    {
      v26 = OUTLINED_FUNCTION_0_166();
    }

    else
    {
      v60 = height;
      [v8 contentSize];
      v28 = v27;
      OUTLINED_FUNCTION_4_70();
      if (CGRectGetWidth(v69) >= v28)
      {
        v10 = v12;
        v12 = v14;
        v29 = v16;
        v30 = v60;
        goto LABEL_15;
      }

      v26 = OUTLINED_FUNCTION_0_166();
      height = v60;
    }
  }

  else
  {
    v26 = -OUTLINED_FUNCTION_0_166();
  }

  v29 = v16;
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v71 = CGRectOffset(v70, v26, 0.0);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  v30 = v71.size.height;
LABEL_15:
  v31 = (v2 + *(*v2 + 152));
  v72 = *v31;
  v57 = x;
  v58 = y;
  v32 = x;
  v33 = y;
  v56 = width;
  v34 = width;
  v60 = v30;
  v73 = CGRectIntersection(v72, *(&v30 - 3));
  v35 = v73.origin.y;
  v36 = v73.size.width;
  v37 = v73.size.height;
  v55 = v73.origin.x;
  v38 = CGRectGetWidth(v73);
  v74.origin.x = v59;
  v74.origin.y = v10;
  v74.size.width = v12;
  v74.size.height = v29;
  if (v38 >= CGRectGetWidth(v74) / 3.0)
  {
    v75.origin.x = v55;
    v75.origin.y = v35;
    v75.size.width = v36;
    v75.size.height = v37;
    v39 = CGRectGetHeight(v75);
    v76.origin.x = v59;
    v76.origin.y = v10;
    v76.size.width = v12;
    v76.size.height = v29;
    if (v39 >= CGRectGetHeight(v76) / 3.0)
    {
      goto LABEL_19;
    }
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 56);
  v42 = swift_checkMetadataState();
  v43 = v57;
  v44 = v58;
  v45 = v56;
  v46 = v41(v42, AssociatedConformanceWitness, v57, v58, v56, v60);
  v47 = BlueprintLayoutProviderType.layoutBlueprint.getter(*(v6 + 80), *(v6 + 96));
  if (v46)
  {
    MEMORY[0x1EEE9AC00](v47);
    v54[2] = v8;
    v54[3] = v62;
    v54[4] = v2;
    sub_1D7EB01C4(sub_1D7EB0290, v54, v46);
  }

  else
  {
  }

  v31->origin.x = v43;
  v31->origin.y = v44;
  v48 = v60;
  v31->size.width = v45;
  v31->size.height = v48;
  v49 = OUTLINED_FUNCTION_3_96();
  v50 = OUTLINED_FUNCTION_3_96();
  v51 = swift_getAssociatedConformanceWitness();
  v52 = swift_getAssociatedConformanceWitness();
  v61[0] = v49;
  v61[1] = v50;
  v61[2] = v51;
  v61[3] = v52;
  v53 = type metadata accessor for BlueprintLayout(0, v61);
  (*(*(v53 - 8) + 8))(v62, v53);
}

Swift::OpaquePointer_optional __swiftcall UICollectionView.indexPathsForItems(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v30 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = [v1 collectionViewLayout];
  v11 = [v10 layoutAttributesForElementsInRect_];

  if (v11)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020, 0x1E69DC858);
    v13 = sub_1D8191314();

    v31 = MEMORY[0x1E69E7CC0];
    v14 = sub_1D7E36AB8(v13);
    v15 = v14;
    v16 = 0;
    v17 = &selRef_setMenu_;
    v29 = v9;
    while (v15 != v16)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA714420](v16, v13);
      }

      else
      {
        if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v13 + 8 * v16 + 32);
      }

      v18 = v14;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v14 v17[114]] || (objc_msgSend(v18, sel_frame), v20 <= 0.0) || v19 <= 0.0)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        v14 = sub_1D8192284();
        v17 = &selRef_setMenu_;
        v9 = v29;
      }

      ++v16;
    }

    v21 = v31;
    v22 = sub_1D7E36AB8(v31);
    if (!v22)
    {

      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    v23 = v22;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D7EB0144();
    if ((v23 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA714420](0, v21);
        }

        else
        {
          v24 = *(v21 + 32);
        }

        v25 = v24;
        v26 = [v24 indexPath];
        sub_1D818E924();

        if (*(v32 + 16) >= *(v32 + 24) >> 1)
        {
          sub_1D7EB0144();
        }

        v27 = OUTLINED_FUNCTION_2_67();
        v28(v27, v9, v30);
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_24:
    v14 = v11;
  }

  result.value._rawValue = v14;
  result.is_nil = v12;
  return result;
}

uint64_t BlueprintLayoutProviderType.layoutBlueprint.getter(void x0_0, uint64_t a1)
{
  (*(a1 + 48))();
  sub_1D818F154();
}

uint64_t sub_1D7E75710()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_3_98();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 592) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_6();

    return v10();
  }
}

uint64_t BlueprintLayout.description.getter(__n128 *a1)
{
  sub_1D81921A4();

  OUTLINED_FUNCTION_1_152(a1[1], a1[2], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_1D8191414();
  v14 = sub_1D81925B4();
  MEMORY[0x1DA713260](v14);

  MEMORY[0x1DA713260](0x6F7077656976202CLL, 0xEB000000003D7472);
  v15 = sub_1D81915A4();
  MEMORY[0x1DA713260](v15);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  return 0x6E6F69746365737BLL;
}

void *BlueprintBookmarkManager.prepareTransition(fromSize:toSize:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = *(*(*v5 + 88) + 56);
  v9 = OUTLINED_FUNCTION_2_105();
  v10 = v8(v9);
  v49[0] = 2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 72);
  v13 = swift_checkMetadataState();
  v41 = v12(v49, v13, AssociatedConformanceWitness);

  v14 = OUTLINED_FUNCTION_2_105();
  v15 = v8(v14);
  v49[0] = 0;
  v16 = v12(v49, v13, AssociatedConformanceWitness);

  v17 = OUTLINED_FUNCTION_2_105();
  v18 = v8(v17);
  [v18 contentOffset];
  v20 = v19;
  v22 = v21;

  v23 = OUTLINED_FUNCTION_2_105();
  v24 = v8(v23);
  [v24 contentInset];
  v26 = v25;

  v27 = OUTLINED_FUNCTION_2_105();
  v28 = v8(v27);
  [v28 contentInset];
  v30 = v29;

  v31 = OUTLINED_FUNCTION_2_105();
  v32 = v8(v31);
  [v32 adjustedContentInset];
  v34 = v33;

  v35 = OUTLINED_FUNCTION_2_105();
  v36 = v8(v35);
  [v36 adjustedContentInset];
  v38 = v37;

  *__src = a2;
  *&__src[1] = a3;
  *&__src[2] = a4;
  *&__src[3] = a5;
  __src[4] = v41;
  __src[5] = v16;
  __src[6] = v20;
  __src[7] = v22;
  __src[8] = v26;
  __src[9] = 0;
  __src[10] = v30;
  __src[11] = 0;
  __src[12] = v34;
  __src[13] = 0;
  __src[14] = v38;
  __src[15] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1();
  memcpy(v49, (v44 + 32), 0x80uLL);
  memcpy((v44 + 32), __dst, 0x80uLL);
  sub_1D7E76ED0(__src, v46);
  OUTLINED_FUNCTION_0_159();
  sub_1D7E76F2C(v49, v39);
  return memcpy(a1, __src, 0x80uLL);
}

uint64_t sub_1D7E75C14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_3_98();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 5376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D7E75D3C()
{
  v1 = v0 + 2528;
  swift_getWitnessTable();
  v2 = sub_1D8191834();
  swift_getWitnessTable();
  if (v2 == sub_1D8191834())
  {
    v57 = (v0 + 16);
    v59 = v0 + 2528;
    __src = (v0 + 3744);
    v60 = *(v0 + 5272);
    v3 = *(v0 + 5256);
    v4 = *(v0 + 5216);
    sub_1D81926F4();
    sub_1D81921B4();
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    v62 = (v4 + 8);
    for (i = (v3 + 8); ; (*i)(v14, v15))
    {
      v7 = *(v0 + 5280);
      v8 = *(v0 + 5272);
      sub_1D81921C4();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        v20 = *(v0 + 5296);
        v50 = *(v0 + 5240);
        v51 = *(v0 + 5232);
        v48 = *(v0 + 5168);
        v53 = *(v0 + 5160);
        v21 = *(v0 + 5152);
        v22 = *(v0 + 5144);
        v49 = *(v0 + 5128);
        v45 = *(v0 + 5192);
        v46 = *(v0 + 5176);
        (*(*(v0 + 5344) + 8))();
        memcpy(__dst, __src, 0x235uLL);
        v23 = *(v21 + 120);
        v24 = *(v21 + 96);
        (*(v23 + 40))(v59, __dst, v24, v23);
        *(v0 + 5072) = v46;
        *(v0 + 5088) = v45;
        type metadata accessor for BlueprintLayoutTransition(0, v0 + 5072);
        v25 = v20;
        v47 = v20;
        v26 = *(v20 - 8);
        (*(v26 + 16))(v0 + 3136, v59, v25);
        memcpy(__dst, v57, sizeof(__dst));
        memcpy(v65, __src, 0x235uLL);
        v27 = *(*v22 + 152);
        swift_beginAccess();
        v28 = *(v22 + v27);
        v29 = swift_task_alloc();
        v29[2] = v48;
        v29[3] = v50;
        v29[4] = v24;
        v29[5] = v53;
        v29[6] = v51;
        v29[7] = v23;
        v29[8] = v49;
        v29[9] = v59;
        v29[10] = v57;
        v29[11] = __src;
        sub_1D7E6755C(v57, v0 + 1272);
        sub_1D7E222B8(__src, v0 + 4312);
        sub_1D8190DB4();
        sub_1D7E80474(sub_1D7EB8360, v29, v28);
        v31 = v30;

        sub_1D7E7E8B8((v0 + 3136), __dst, v65, v31);
        sub_1D7E598FC(v57);
        (*(v26 + 8))(v59, v47);

        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X2, X16 }
      }

      v9 = *(v0 + 5280);
      v10 = *(v0 + 5224);
      v11 = *(v0 + 5208);
      v12 = *(v60 + 48);
      (*v5)(*(v0 + 5264), v9, *(v0 + 5248));
      (*v6)(v10, v9 + v12, v11);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      v13 = sub_1D8191834();
      swift_getWitnessTable();
      if (v13 != sub_1D8191834())
      {
        break;
      }

      v14 = *(v0 + 5264);
      v15 = *(v0 + 5248);
      (*v62)(*(v0 + 5224), *(v0 + 5208));
    }

    v61 = *(v0 + 5352);
    v34 = *(v0 + 5344);
    v16 = *(v0 + 5296);
    v35 = *(v0 + 5264);
    v36 = *(v0 + 5248);
    v37 = *(v0 + 5224);
    __srca = *(v0 + 5208);
    v58 = *(v0 + 5336);
    v38 = BlueprintSection.identifier.getter(v36);
    v52 = v39;
    v54 = v38;
    v40 = sub_1D8191834();
    v41 = sub_1D8191834();
    sub_1D7FE814C();
    swift_allocError();
    *v42 = v54;
    *(v42 + 8) = v52;
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;
    *(v42 + 32) = 2;
    swift_willThrow();
    (*v62)(v37, __srca);
    (*i)(v35, v36);
    (*(v34 + 8))(v61, v58);
    v1 = v0 + 2528;
  }

  else
  {
    v16 = *(v0 + 5296);
    v17 = sub_1D8191834();
    v18 = sub_1D8191834();
    sub_1D7FE814C();
    swift_allocError();
    *v19 = v17;
    *(v19 + 8) = v18;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 1;
    swift_willThrow();
  }

  (*(*(v16 - 8) + 8))(v1, v16);
  OUTLINED_FUNCTION_16_34();

  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X1, X16 }
}

unint64_t UICollectionView.indexPaths(visibility:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v62 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - v11;
  v59 = *a1;
  [v2 bounds];
  v13 = UICollectionView.indexPathsForItems(in:)(v64);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v63 = MEMORY[0x1E69E7CC0];
  v15 = *(v13 + 16);
  if (v15)
  {
    v56[0] = v13;
    v56[1] = v6;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v60 = *(v16 + 56);
    v61 = v17;
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      v61(v12, v18, v4);
      v19 = [v2 collectionViewLayout];
      v20 = sub_1D818E8E4();
      v21 = [v19 layoutAttributesForItemAtIndexPath_];

      if (v21)
      {
        [v21 frame];
        v66 = CGRectIntegral(v65);
        x = v66.origin.x;
        y = v66.origin.y;
        [v2 bounds];
        v68 = CGRectIntegral(v67);
        v24 = v68.origin.x;
        v25 = v68.origin.y;
        switch(v59)
        {
          case 1:
            OUTLINED_FUNCTION_1_78();
            OUTLINED_FUNCTION_10_33();
            v26 = CGRectContainsRect(v72, v76);
            goto LABEL_17;
          case 2:
            v27 = OUTLINED_FUNCTION_3_62();
            v28(v27);
            if (v24 <= x && v25 <= y)
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          case 3:
            v70.origin.x = OUTLINED_FUNCTION_1_78();
            MaxX = CGRectGetMaxX(v70);
            v71.origin.x = OUTLINED_FUNCTION_0_45();
            if (CGRectGetMaxX(v71) > MaxX)
            {

              goto LABEL_15;
            }

            v73.origin.x = OUTLINED_FUNCTION_1_78();
            MaxY = CGRectGetMaxY(v73);
            v74.origin.x = OUTLINED_FUNCTION_0_45();
            v36 = CGRectGetMaxY(v74);
            v37 = OUTLINED_FUNCTION_3_62();
            v38(v37);
            if (v36 <= MaxY)
            {
LABEL_10:
              MEMORY[0x1DA713500]();
              v29 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
              {
                OUTLINED_FUNCTION_2_10(v29);
                sub_1D81913B4();
              }

              sub_1D8191404();
              v57 = v63;
            }

            else
            {
LABEL_18:
            }

            break;
          default:
            OUTLINED_FUNCTION_1_78();
            OUTLINED_FUNCTION_10_33();
            v26 = CGRectIntersectsRect(v69, v75);
LABEL_17:
            v32 = v26;
            v33 = OUTLINED_FUNCTION_3_62();
            v34(v33);
            if (!v32)
            {
              goto LABEL_18;
            }

            goto LABEL_10;
        }
      }

      else
      {
LABEL_15:
        v30 = OUTLINED_FUNCTION_3_62();
        v31(v30);
      }

      v18 += v60;
      --v15;
    }

    while (v15);

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v39 = v2;
  v40 = sub_1D8190DB4();
  v63 = sub_1D7E769C8(v40);
  sub_1D7E76B80(&v63, v39);

  v41 = v63;
  v42 = sub_1D7E36AB8(v63);
  if (v42)
  {
    v43 = v42;
    v63 = v14;
    sub_1D7EB0144();
    if (v43 < 0)
    {
      __break(1u);

      __break(1u);
      JUMPOUT(0x1D7E76920);
    }

    v61 = v43;
    v44 = v63;
    v45 = v41 & 0xC000000000000001;
    v46 = v4;
    v47 = v41;
    do
    {
      if (v45)
      {
        v48 = MEMORY[0x1DA714420](0, v41);
      }

      else
      {
        v48 = *(v41 + 32);
      }

      v49 = v48;
      v50 = [v48 indexPath];
      v51 = v62;
      sub_1D818E924();

      v63 = v44;
      v52 = *(v44 + 24);
      if (*(v44 + 16) >= v52 >> 1)
      {
        OUTLINED_FUNCTION_2_10(v52);
        sub_1D7EB0144();
        v44 = v63;
      }

      v53 = OUTLINED_FUNCTION_2_67();
      v54(v53, v51, v46);
      v41 = v47;
    }

    while (v61);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v44;
}

uint64_t sub_1D7E76930@<X0>(uint64_t *a1@<X8>, __n128 *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>)
{
  result = BlueprintLayout.endIndex.getter(a2, a10, a11, a12, a13, a3, a4, a5, a6, a7, a8, a9, a14, a15);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E7695C@<X0>(uint64_t *a1@<X8>, __n128 *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, double a10@<D0>, double a11@<D1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>)
{
  result = BlueprintLayout.startIndex.getter(a2, a10, a11, a12, a13, a14, a15, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

unint64_t sub_1D7E769F4(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1D81920A4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

Swift::Int sub_1D7E76A98(Swift::Int *a1)
{
  result = BlueprintLayout.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E76AC4@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[-1].n128_u64[1];
  v6 = (*(v5 + 16))(a2, v2, a1);
  v19 = BlueprintLayout.startIndex.getter(a1, v6, v14, v15, v16, v17, v18, v7, v8, v9, v10, v11, v12, v13);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 608) = v19;
  return result;
}

void sub_1D7E76B80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7E76C38(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1D7E76CC4(v8, v7);
  sub_1D8192284();
}

void (*sub_1D7E76C50(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D7E76DF4(v6, *a2, a3);
  return sub_1D7E46A38;
}

void sub_1D7E76CC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = a2;
  v6 = sub_1D81925A4();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_1D7FE7460(v4 / 2, &qword_1EDBB3020, 0x1E69DC858);
    v10[0] = v9;
    *&v10[1] = v4 / 2;
    v5 = v5;
    sub_1D7FE761C(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_1D7FE74E8(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void (*sub_1D7E76DF4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v5;
  v6 = *(a3 + 32);
  *v5 = *(a3 + 16);
  v5[1] = v6;
  v7 = type metadata accessor for BlueprintLayoutSection(0, v5);
  *(v5 + 4) = v7;
  v8 = *(v7 - 8);
  *(v5 + 5) = v8;
  *(v5 + 6) = __swift_coroFrameAllocStub(*(v8 + 64));
  v9 = OUTLINED_FUNCTION_14_0();
  BlueprintLayout.subscript.getter(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return sub_1D7E46A80;
}

uint64_t sub_1D7E76F2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t BlueprintLayout.subscript.getter(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  v16 = BlueprintLayout.startIndex.getter(a2, a9, a10, a11, a12, a13, a14, a2, a3, a4, a5, a6, a7, a8);
  result = BlueprintLayout.endIndex.getter(a2, v24, v25, v26, v27, v17, v18, v19, v20, v21, v22, v23, v28, v29);
  if (result < v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 > a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result > a1)
  {
    OUTLINED_FUNCTION_1_152(a2[1], a2[2], result, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
    return sub_1D81914C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D7E7701C()
{
  if (!qword_1EDBB7DC0)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB7DC0);
    }
  }
}

uint64_t sub_1D7E770AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void BlueprintLayoutCollectionFactory.makeLayoutCollection(for:with:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v523 = v6;
  v525 = v7;
  v442 = v8;
  v9 = *v1;
  v10 = *(*v1 + 80);
  v521 = *(v10 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v443 = v12;
  v13 = v9[11];
  v14 = v9[13];
  v15 = *(v14 + 8);
  type metadata accessor for BlueprintLayoutItem(0, v13, v15, v16);
  OUTLINED_FUNCTION_9();
  v519 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  v511 = v19;
  v512 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v495 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v514 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23();
  v494 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v501 = &v442 - v25;
  v503 = v1;
  v516 = v9[12];
  OUTLINED_FUNCTION_27_22();
  v27 = type metadata accessor for BlueprintLayoutSection(255, v26);
  WitnessTable = swift_getWitnessTable();
  v448 = sub_1D81923F4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  v447 = v30;
  v449 = WitnessTable;
  v499 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  *&v513 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_94();
  v502 = v33;
  sub_1D7E79920(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94();
  v471 = v35;
  sub_1D7E79920(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_94();
  v470 = v37;
  v518 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  *&v510 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23();
  v469 = v40;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  v522 = &v442 - v42;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  v506 = &v442 - v44;
  v45 = *(v27 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_94();
  v463 = v47;
  v461 = v27;
  v455 = swift_getTupleTypeMetadata2();
  v454 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v509 = *&v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23();
  v453 = v50;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v51);
  v452 = (&v442 - v52);
  memcpy(v550, v523, 0x235uLL);
  v53 = swift_allocObject();
  v446 = type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_18_34();
  v70 = sub_1D7E79998(v62, v63, v64, v65, v66, v67, v68, v69, v54, v55, v56, v57, v58, v59, v60, v61, 0, 0);
  v523 = v53;
  v53[2] = v70;
  v480 = v53 + 2;
  v481 = v70;
  v71 = swift_allocObject();
  v72 = OUTLINED_FUNCTION_32_16();
  memcpy(v72, v550, 0x235uLL);
  v547[0] = *(v525 + 565);
  sub_1D7E222B8(v550, v548);
  v520 = v71;
  v73 = OUTLINED_FUNCTION_32_16();
  BlueprintLayoutCollection.init(layoutOptions:layoutDirection:)(v73, v547, v74);
  v517 = v10;
  OUTLINED_FUNCTION_27_22();
  v76 = type metadata accessor for BlueprintLayout(0, v75);
  v77 = swift_getWitnessTable();
  MEMORY[0x1DA7133A0](v548, v76, v77);
  sub_1D81923F4();
  sub_1D81923C4();
  v456 = sub_1D81923E4();
  v450 = (v45 + 32);
  v451 = (*&v509 + 32);
  v458 = (v521 + 16);
  v505 = 0x80000001D81C5910;
  v493 = (v514 + 32);
  v524 = v13;
  v489 = v13 - 8;
  v490 = (v519 + 32);
  v491 = v15;
  v487 = v15 + 24;
  v488 = v14 + 16;
  v486 = v14 + 32;
  v485 = v14 + 40;
  v484 = v14 + 48;
  v515 = v14;
  v483 = v14 + 24;
  v497 = (v510 + 8);
  v498 = (v510 + 16);
  v482 = (v519 + 8);
  v459 = &v550[88];
  v462 = &v550[56];
  v474 = &v550[8];
  v444 = (v45 + 8);
  v445 = (v513 + 8);
  v478 = 0x80000001D81C5940;
LABEL_2:
  sub_1D81923D4();
  v78 = v452;
  (*v451)();
  v79 = v455;
  if (__swift_getEnumTagSinglePayload(v78, 1, v455) == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v436 = OUTLINED_FUNCTION_32_16();
    v437(v436);
    v278 = *(v503 + 16);
    if (v278)
    {
      v438 = v520;
      swift_beginAccess();
      memcpy(v547, (v438 + 16), sizeof(v547));
      memcpy(v546, (v438 + 16), sizeof(v546));
      sub_1D7E6755C(v547, v549);
      sub_1D80638AC(v546, v549);
      memcpy(v548, v546, 0x4E8uLL);
      sub_1D7E598FC(v548);

      memcpy(v442, v549, 0x4E8uLL);
    }

    else
    {
LABEL_101:
      OUTLINED_FUNCTION_31_16();
      swift_beginAccess();
      v439 = OUTLINED_FUNCTION_32_16();
      memcpy(v439, (v278 + 16), 0x4E8uLL);
      memcpy(v442, (v278 + 16), 0x4E8uLL);
      v440 = OUTLINED_FUNCTION_32_16();
      sub_1D7E6755C(v440, v548);
    }
  }

  else
  {
    v521 = *v78;
    v80 = v78 + *(v79 + 48);
    v81 = v463;
    v82 = v461;
    (*v450)(v463, v80, v461);
    v83 = swift_allocObject();
    *(v83 + 32) = 0u;
    v519 = v83;
    *(v83 + 16) = 0u;
    v84 = v83 + 16;
    v85 = v81 + *(v82 + 52);
    v86 = *(v85 + 8);
    *v547 = *v85;
    v547[8] = v86;
    LOBYTE(v540) = *(v525 + 565);
    memcpy(v548, v550, 0x235uLL);
    sub_1D7E79C5C(*v547, v86);
    BlueprintLayoutSectionFramePosition.solver(for:layoutOptions:)(v548, v546);
    sub_1D7E7A4D8(*v547, v547[8]);
    v87 = v517;
    *(&v548[1] + 1) = v517;
    *&v548[2] = v516;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v548);
    v457 = *v458;
    v457(boxed_opaque_existential_0, v81, v87);
    v89 = sub_1D7E7A504(v548);
    __swift_destroy_boxed_opaque_existential_1Tm(v548);
    v514 = v89[2];
    v90 = v481;
    swift_retain_n();
    v479 = 1;
    OUTLINED_FUNCTION_56(v84, &v545);
    OUTLINED_FUNCTION_56(v480, &v544);
    v91 = 0;
    v92 = 0;
    v504 = v89;
    v500 = (v89 + 4);
    v507 = v90;
    OUTLINED_FUNCTION_40_12();
    v472 = MEMORY[0x1E69E7CC0];
LABEL_4:
    *&v477 = v95;
    *(&v477 + 1) = v96;
    *&v476 = v93;
    *(&v476 + 1) = v94;
    v97 = v92;
    v98 = v501;
    while (1)
    {
      v99 = 0uLL;
      v92 = v514;
      v100 = 0uLL;
      v101 = 0uLL;
      if (v97 != v514)
      {
        if (v97 >= v504[2])
        {
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v92 = v97 + 1;
        v102 = OUTLINED_FUNCTION_46_13(v97);
        sub_1D7E25380(v102, &v547[8]);
        v99 = *v547;
        v100 = *&v547[16];
        v101 = *&v547[32];
      }

      OUTLINED_FUNCTION_45_13(v101, v100, v99);
      if (!v104)
      {
        break;
      }

      v513 = v103;
      sub_1D7E05450((v548 + 8), v547);
      v84 = *&v547[24];
      v105 = OUTLINED_FUNCTION_33_15();
      __swift_project_boxed_opaque_existential_1(v105, v84);
      v106 = OUTLINED_FUNCTION_8_9();
      v107(v106);
      v108 = "UICollectionElementKindSectionFooter";
      if (!v540)
      {
        v108 = "UICollectionElementKindSectionHeader";
      }

      if (((v108 - 32) | 0x8000000000000000) == v505)
      {

LABEL_15:
        OUTLINED_FUNCTION_5_66();
        v109 = OUTLINED_FUNCTION_8_9();
        v110(v109);
        OUTLINED_FUNCTION_24_23();
        LOBYTE(v534) = 0;
        v111 = *&v547[24];
        v112 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v112, v111);
        OUTLINED_FUNCTION_39_15();
        v113(v111);
        (v89[1])(&v534, v507, v481, v507, v84, v89);
        OUTLINED_FUNCTION_9_0();
        v114 = *&v547[24];
        v115 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v115, v114);
        v116 = OUTLINED_FUNCTION_6_1();
        v117(v116);
        OUTLINED_FUNCTION_8_0();
        sub_1D7E7C82C(v118, v119);
        OUTLINED_FUNCTION_9_0();
        __swift_destroy_boxed_opaque_existential_1Tm(&v540);
        v120 = *&v547[24];
        v121 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v121, v120);
        v542 = v120;
        OUTLINED_FUNCTION_51_9(v89[1]);
        OUTLINED_FUNCTION_3_0();
        (*(v122 + 16))();
        v123 = OUTLINED_FUNCTION_36_13();
        sub_1D7EB39AC(v123, v124);
        __swift_destroy_boxed_opaque_existential_1Tm(&v540);
        *&v510 = v534;
        v125 = v535;
        v126 = *&v547[24];
        v127 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v127, v126);
        v542 = v126;
        OUTLINED_FUNCTION_51_9(v89[1]);
        OUTLINED_FUNCTION_3_0();
        (*(v128 + 16))();
        v129 = OUTLINED_FUNCTION_36_13();
        sub_1D7EB3AD0(v129, v130);
        __swift_destroy_boxed_opaque_existential_1Tm(&v540);
        v131 = v534;
        v132 = OUTLINED_FUNCTION_2_119();
        v136 = OUTLINED_FUNCTION_13_36(v132, v133, v134, v135);
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v143 = v519;
        *(v519 + 16) = v136;
        v143[3] = v137;
        *(v143 + 4) = v139;
        *(v143 + 5) = v141;
        v144 = OUTLINED_FUNCTION_8_0();
        if ((v479 & 1) == 0)
        {
          v144 = OUTLINED_FUNCTION_13_36(*&v476, *(&v476 + 1), *&v477, *(&v477 + 1));
        }

        v509 = v136;
        v508 = v138;
        v492 = v140;
        v475 = v142;
        *&v476 = v147;
        *&v477 = v145;
        *(&v477 + 1) = v144;
        *(&v476 + 1) = v146;
        if (v125 == 2 || v125 == 3 && !v510)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D7EE5724();
            v472 = v202;
          }

          v148 = *(v472 + 16);
          if (v148 >= *(v472 + 24) >> 1)
          {
            sub_1D7EE5724();
            v472 = v203;
          }

          v149 = v472;
          *(v472 + 16) = v148 + 1;
          v150 = (v149 + 32 * v148);
          v150[4] = v2;
          v150[5] = v3;
          v150[6] = v4;
          v150[7] = v5;
        }

        OUTLINED_FUNCTION_5_66();
        OUTLINED_FUNCTION_8_0();
        v151 = OUTLINED_FUNCTION_8_9();
        v152(v151);
        OUTLINED_FUNCTION_44_10();
        v153 = *&v547[24];
        v154 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v154, v153);
        v155 = OUTLINED_FUNCTION_8_9();
        v156(v155);
        OUTLINED_FUNCTION_42_13();
        type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
        v157 = v513;
        v158 = v506;
        v159 = v521;
        MEMORY[0x1DA710B60](v513, v521);
        v160 = OUTLINED_FUNCTION_19_29();
        v89 = sub_1D7EB3C70(v160, v161, v158, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
        v162 = [v89 indexPath];
        sub_1D818E924();

        v163 = OUTLINED_FUNCTION_15_35();
        __swift_storeEnumTagSinglePayload(v163, v164, v165, v518);
        v166 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
        OUTLINED_FUNCTION_12_41(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath);
        v167 = OUTLINED_FUNCTION_10_50();
        sub_1D7EB3D28(v167, v168, &qword_1EDBBC690, v169);
        swift_endAccess();
        *v471 = v513;
        v170 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
        OUTLINED_FUNCTION_47_13(v170);
        v171 = OUTLINED_FUNCTION_15_35();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v166);
        OUTLINED_FUNCTION_12_41(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source);
        v174 = OUTLINED_FUNCTION_11_42();
        sub_1D7EB3D28(v174, v175, qword_1EDBB5AF8, v176);
        swift_endAccess();
        v177 = *&v547[24];
        v178 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v178, v177);
        v179 = OUTLINED_FUNCTION_7_60();
        v180(v179);
        v181 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
        OUTLINED_FUNCTION_15_2(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData, &v534);
        sub_1D7E5C8DC(&v540, v89 + v181);
        swift_endAccess();
        OUTLINED_FUNCTION_49_9(v89, sel_setFrame_);
        [v89 setHidden_];
        v182 = v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait;
        OUTLINED_FUNCTION_56(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait, &v528);
        *v182 = v510;
        v182[8] = v125;
        v183 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
        OUTLINED_FUNCTION_56(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait, &v527);
        *(v89 + v183) = v131;
        LOBYTE(v534) = v131;
        v184 = OUTLINED_FUNCTION_37_13();
        OUTLINED_FUNCTION_48_10(v184, v157, v185, v159, v186, v442);
        LOBYTE(v183) = v540;
        v187 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
        OUTLINED_FUNCTION_56(v89 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, &v526);
        *(v89 + v187) = v183;
        v188 = *&v547[32];
        __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
        v189 = OUTLINED_FUNCTION_7_60();
        v190(v189, v188);
        if (v541 == 1)
        {
          if (v125 >= 3 && v510)
          {
            v191 = v157 + 2000;
            if (__OFADD__(v157, 2000))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v191 = v157 + 4000;
            if (__OFADD__(v157, 4000))
            {
              goto LABEL_108;
            }
          }
        }

        else
        {
          v191 = v540;
        }

        [v89 setZIndex_];

        v192 = *&v547[32];
        OUTLINED_FUNCTION_52_5(v547);
        v193 = OUTLINED_FUNCTION_6_1();
        v194(v193, v192);
        OUTLINED_FUNCTION_42_13();
        v195 = OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_12_41(v195);
        OUTLINED_FUNCTION_34_16();
        swift_endAccess();

        v196 = *&v546[32];
        OUTLINED_FUNCTION_52_5(v546);
        v197 = OUTLINED_FUNCTION_8_49();
        v198(v197, v196);
        v84 = v542;
        __swift_project_boxed_opaque_existential_1(&v540, v542);
        LOBYTE(v537) = 0;
        v534 = v510;
        v535 = v125;
        OUTLINED_FUNCTION_43_12();
        v199 = OUTLINED_FUNCTION_8_0();
        v201 = v200(v199);

        *v480 = v201;

        __swift_destroy_boxed_opaque_existential_1Tm(&v540);
        __swift_destroy_boxed_opaque_existential_1Tm(v547);
        v479 = 0;
        v91 = 1;
        v507 = v201;
        v93 = *(&v477 + 1);
        v94 = v477;
        v95 = *(&v476 + 1);
        v96 = v476;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_19_29();
      v84 = sub_1D8192634();

      if (v84)
      {
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v547);
      v97 = v92;
    }

    if (v91)
    {
      OUTLINED_FUNCTION_5_66();
      v204 = OUTLINED_FUNCTION_8_9();
      v205(v204);
      v84 = *(&v548[1] + 1);
      v89 = *&v548[2];
      __swift_project_boxed_opaque_existential_1(v548, *(&v548[1] + 1));
      v547[0] = 0;
      OUTLINED_FUNCTION_40_12();
      if ((v479 & 1) == 0)
      {
        v207.n128_u64[0] = *(&v476 + 1);
        v206.n128_u64[0] = v476;
        v209.n128_u64[0] = *(&v477 + 1);
        v208.n128_u64[0] = v477;
      }

      v210 = (v89[3])(v547, v507, v481, v84, v89, v206, v207, v208, v209);

      *v480 = v210;

      __swift_destroy_boxed_opaque_existential_1Tm(v548);
    }

    else
    {
      v210 = v507;
    }

    OUTLINED_FUNCTION_5_66();
    v211 = v461;
    swift_getWitnessTable();
    v212 = sub_1D8191834();
    (v89[2])(v212, v84, v89);
    v213 = swift_allocObject();
    v214 = v504[2];
    *&v513 = v213;
    *(v213 + 16) = v214;
    v215 = v213 + 16;

    MEMORY[0x1DA7133A0](v211, v449);
    sub_1D81923C4();
    v492 = v215;
    OUTLINED_FUNCTION_56(v215, &v543);
    v216 = v210;
    v460 = v214;
    v507 = v210;
    while (1)
    {
      v217 = v210;
      v218 = v494;
      sub_1D81923D4();
      (*v493)(v98, v218, v495);
      v219 = TupleTypeMetadata2;
      if (__swift_getEnumTagSinglePayload(v98, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      *&v510 = v214;
      v220 = *v98;
      v221 = v511;
      (*v490)(v511, &v98[*(v219 + 48)], v512);
      v222 = v524;
      *(&v548[1] + 1) = v524;
      v223 = v515;
      *&v548[2] = v515;
      v224 = __swift_allocate_boxed_opaque_existential_0(v548);
      (*(*(v222 - 8) + 16))(v224, v221, v222);
      *&v225 = COERCE_DOUBLE(sub_1D7E7A504(v548));
      v509 = *&v225;
      __swift_destroy_boxed_opaque_existential_1Tm(v548);
      v508 = *&v216;
      v226 = v522;
      v227 = v220;
      v228 = v521;
      MEMORY[0x1DA710B60](v227);
      LOBYTE(v548[0]) = 0;
      v441 = v226;
      v229 = v523;
      v230 = v217;
      v231 = v519;
      sub_1D7E7AD7C(v548, v225, v546, v523, v217, v525, v519, v513, v228, v441, v520);
      v232 = *&v546[24];
      v233 = *&v546[32];
      __swift_project_boxed_opaque_existential_1(v546, *&v546[24]);
      v234 = v223;
      v235 = *(v223 + 16);
      v236 = v511;
      v237 = v524;
      v235(v524, v234);
      (*(v233 + 24))(v229[2], v230, v232, v233);
      OUTLINED_FUNCTION_9_0();
      v238 = v236;
      (*(v491 + 24))(v237);
      OUTLINED_FUNCTION_8_0();
      sub_1D7E7C82C(v239, v240);
      OUTLINED_FUNCTION_9_0();
      __swift_project_boxed_opaque_existential_1(v546, *&v546[24]);
      v241 = OUTLINED_FUNCTION_8_0();
      v243 = v242(v241);

      v523[2] = v243;

      v244 = OUTLINED_FUNCTION_2_119();
      *(v231 + 16) = OUTLINED_FUNCTION_13_36(v244, v245, v246, v247);
      *(v231 + 24) = v248;
      *(v231 + 32) = v249;
      *(v231 + 40) = v250;
      v251 = *&v546[24];
      v252 = *&v546[32];
      __swift_project_boxed_opaque_existential_1(v546, *&v546[24]);
      v253 = OUTLINED_FUNCTION_8_0();
      v254(v251, v252, v253);
      OUTLINED_FUNCTION_9_0();
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
      v255 = v506;
      (*v498)(v506, v522, v518);
      v256 = sub_1D7E7CE2C(v255);
      v257 = OUTLINED_FUNCTION_8_0();
      [v258 v259];
      [v256 setHidden_];
      [v256 setZIndex_];
      v260 = OUTLINED_FUNCTION_41_12();
      LOBYTE(v225) = v261(v260);
      v262 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
      OUTLINED_FUNCTION_56(v256 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin, &v529);
      *(v256 + v262) = v225 & 1;
      v263 = v510;
      v264 = OUTLINED_FUNCTION_41_12();
      v266 = v265(v264);
      OUTLINED_FUNCTION_50_9(v266, v267, OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier);
      v268 = OUTLINED_FUNCTION_41_12();
      v270 = v269(v268);
      OUTLINED_FUNCTION_50_9(v270, v271, OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier);
      v272 = OUTLINED_FUNCTION_41_12();
      v273(v272);
      v274 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
      OUTLINED_FUNCTION_15_2(v256 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData, v547);
      sub_1D7E5C8DC(v548, v256 + v274);
      swift_endAccess();
      v275 = v520;
      OUTLINED_FUNCTION_15_2(v520 + 16, v548);
      BlueprintLayoutCollection.add(layoutAttributes:)(v256);
      swift_endAccess();
      LOBYTE(v548[0]) = 1;
      v210 = v507;
      v276 = v522;
      v277 = *&v509;
      sub_1D7E7AD7C(v548, *&v509, v546, v523, v507, v525, v519, v513, v521, v522, v275);

      (*v497)(v276, v518);
      (*v482)(v238, v512);
      v278 = *(v277 + 16);

      v279 = __OFADD__(v263, v278);
      v214 = v263 + v278;
      if (v279)
      {
        __break(1u);
        goto LABEL_101;
      }

      *v492 = v214;
      v216 = v243;
      v98 = v501;
    }

    (*v445)(v502, v499);
    v280 = *(v519 + 16);
    v281 = *(v519 + 24);
    v551.origin.x = OUTLINED_FUNCTION_2_119();
    MinX = CGRectGetMinX(v551);
    v552.origin.x = OUTLINED_FUNCTION_2_119();
    MaxY = CGRectGetMaxY(v552);

    swift_allocObject();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_18_34();
    v509 = COERCE_DOUBLE(sub_1D7E79998(MinX, MaxY, v292, v293, v294, v295, v296, v297, v284, v285, v286, v287, v288, v289, v290, v291, 0, 0));
    *v480 = v509;

    *&v298 = COERCE_DOUBLE();
    v473 = 0;
    v299 = 0;
    v508 = *&v298;
    v300 = v478;
    while (2)
    {
      for (i = v299; ; i = v299)
      {
        v302 = 0uLL;
        v299 = v514;
        v303 = 0uLL;
        v304 = 0uLL;
        if (i != v514)
        {
          if (i >= v504[2])
          {
            goto LABEL_103;
          }

          v299 = i + 1;
          v305 = OUTLINED_FUNCTION_46_13(i);
          sub_1D7E25380(v305, &v547[8]);
          v302 = *v547;
          v303 = *&v547[16];
          v304 = *&v547[32];
        }

        OUTLINED_FUNCTION_45_13(v304, v303, v302);
        if (!v307)
        {

          OUTLINED_FUNCTION_5_66();
          OUTLINED_FUNCTION_18_34();
          v395 = v481;
          v396 = OUTLINED_FUNCTION_2_119();
          v398 = v397(v396);
          v399 = v519;
          *(v519 + 16) = v398;
          v399[3] = v400;
          v399[4] = v401;
          v399[5] = v402;
          OUTLINED_FUNCTION_5_66();
          v403 = OUTLINED_FUNCTION_17_31();
          *&v510 = v404(v403);
          *v480 = v510;

          v4 = *(v395 + 16);
          v5 = *(v395 + 24);
          v553.origin.x = OUTLINED_FUNCTION_17_31();
          v405 = CGRectGetWidth(v553) - *(v395 + 16);
          if (v405 < 0.0)
          {
            v2 = 0.0;
          }

          else
          {
            v2 = v405;
          }

          v554.origin.x = OUTLINED_FUNCTION_17_31();
          Height = CGRectGetHeight(v554);
          v407 = *(v395 + 24);
          v408 = Height - v407;
          if (Height - v407 < 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = Height - v407;
          }

          v555.origin.x = OUTLINED_FUNCTION_38_13();
          if (!CGRectIsEmpty(v555))
          {
            v457(v443, v463, v517);
            sub_1D7E0631C(0, &qword_1EDBB49D8, &protocol descriptor for BlueprintLayoutSectionDecorationType);
            if (swift_dynamicCast())
            {
              sub_1D7E05450(v548, &v540);
              OUTLINED_FUNCTION_24_23();
              v409 = OUTLINED_FUNCTION_8_9();
              v411 = v410(v409);
              if (v411)
              {
                v537 = v411;
                v538 = 0;
                v539 = 0;
                v412 = fabs(v408);
                if (v408 < 0.0)
                {
                  v412 = 0.0;
                }

                LODWORD(v514) = *&v412 == 0;
                while (1)
                {
                  sub_1D7EB7C3C(v547);
                  v548[2] = *&v547[32];
                  v548[0] = *v547;
                  v548[1] = *&v547[16];
                  if (!*&v547[32])
                  {
                    break;
                  }

                  v413 = *&v548[0];
                  sub_1D7E05450((v548 + 8), v547);
                  __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
                  swift_getDynamicType();
                  v414 = static BlueprintLayoutSectionDecorationItemType.viewIdentifier.getter();
                  v416 = v415;
                  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
                  sub_1D8190DB4();
                  v417 = v506;
                  MEMORY[0x1DA710B60](v413, v521);
                  v418 = sub_1D7EB3C70(v414, v416, v417, &selRef_layoutAttributesForDecorationViewOfKind_withIndexPath_);
                  OUTLINED_FUNCTION_23_19();
                  v419 = OUTLINED_FUNCTION_30_1();
                  v420(v419);
                  v421 = v534;
                  v422 = v535;
                  v423 = &v418[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
                  OUTLINED_FUNCTION_56(&v418[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], &v536);
                  *v423 = v421;
                  v423[8] = v422;
                  OUTLINED_FUNCTION_23_19();
                  v424 = OUTLINED_FUNCTION_30_1();
                  v425(v424);
                  if (v535 == 1)
                  {
                    OUTLINED_FUNCTION_23_19();
                    v426 = OUTLINED_FUNCTION_30_1();
                    v427(v426);
                    if (v533 >= 3u && v532)
                    {
                      v428 = -100 - v413;
                      if (__OFSUB__(-100, v413))
                      {
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      v428 = 3000 - v413;
                      if (__OFSUB__(3000, v413))
                      {
                        goto LABEL_105;
                      }
                    }
                  }

                  else
                  {
                    v428 = v534;
                  }

                  [v418 setZIndex_];
                  v556.origin.x = OUTLINED_FUNCTION_38_13();
                  Width = CGRectGetWidth(v556);
                  v430 = v474;
                  if (v550[1])
                  {
                    v430 = v462;
                    if (v550[1] != 1)
                    {
                      v430 = v459;
                    }
                  }

                  if (Width > *v430)
                  {
                    v431 = Width;
                  }

                  else
                  {
                    v431 = *v430;
                  }

                  v432 = v418;
                  [v432 setFrame_];
                  [v432 setHidden_];

                  sub_1D7E25380(v547, &v534);
                  v433 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
                  OUTLINED_FUNCTION_15_2(&v432[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model], &v532);
                  sub_1D80BD844(&v534, &v432[v433]);
                  swift_endAccess();
                  v434 = OUTLINED_FUNCTION_31_16();
                  OUTLINED_FUNCTION_15_2(v434, &v534);
                  BlueprintLayoutCollection.add(decorationLayoutAttributes:for:)(v432, v414, v416);
                  swift_endAccess();

                  __swift_destroy_boxed_opaque_existential_1Tm(v547);
                }
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v540);
            }

            else
            {
              memset(v548, 0, 40);
              sub_1D7E7AD0C(v548, &qword_1EDBB49D0, &qword_1EDBB49D8, &protocol descriptor for BlueprintLayoutSectionDecorationType);
            }
          }

          LOBYTE(v540) = v479 & 1;
          *v548 = v4;
          *(v548 + 1) = v5;
          *&v548[1] = v2;
          *(&v548[1] + 1) = v3;
          v548[2] = v476;
          v548[3] = v477;
          LOBYTE(v548[4]) = v479 & 1;
          *(&v548[4] + 1) = v472;
          *&v548[5] = v4;
          *(&v548[5] + 1) = v5;
          *&v548[6] = v2;
          *(&v548[6] + 1) = v3;
          v548[7] = v476;
          v548[8] = v477;
          LOBYTE(v548[9]) = v479 & 1;
          *(&v548[9] + 1) = v472;
          memcpy(v547, v548, 0xA0uLL);
          v435 = OUTLINED_FUNCTION_31_16();
          OUTLINED_FUNCTION_12_41(v435);
          sub_1D8190DB4();
          BlueprintLayoutCollection.add(section:for:)(v547, v521);
          swift_endAccess();

          (*v444)(v463, v461);
          sub_1D7E7FCD4(v548);
          if (v2 == 0.0 && v3 == 0.0)
          {
            *v480 = v481;
          }

          else
          {
            v481 = v510;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v546);

          goto LABEL_2;
        }

        v510 = v306;
        sub_1D7E05450((v548 + 8), v547);
        v308 = *&v547[24];
        v309 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v309, v308);
        v310 = OUTLINED_FUNCTION_8_9();
        v311(v310);
        v312 = "UICollectionElementKindSectionFooter";
        if (!v540)
        {
          v312 = "UICollectionElementKindSectionHeader";
        }

        if (((v312 - 32) | 0x8000000000000000) == v300)
        {
          break;
        }

        OUTLINED_FUNCTION_19_29();
        v308 = sub_1D8192634();

        if (v308)
        {
          goto LABEL_55;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v547);
      }

LABEL_55:
      OUTLINED_FUNCTION_5_66();
      v313 = OUTLINED_FUNCTION_8_9();
      v314(v313);
      OUTLINED_FUNCTION_24_23();
      LOBYTE(v534) = 1;
      v315 = *&v547[24];
      v316 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v316, v315);
      OUTLINED_FUNCTION_39_15();
      v317(v315);
      (*(v214 + 8))(&v534, COERCE_DOUBLE(*&v509), v481, COERCE_DOUBLE(*&v508), v308, v214);
      OUTLINED_FUNCTION_9_0();
      v318 = *&v547[24];
      v319 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v319, v318);
      v320 = OUTLINED_FUNCTION_6_1();
      v321(v320);
      OUTLINED_FUNCTION_8_0();
      sub_1D7E7C82C(v322, v323);
      OUTLINED_FUNCTION_9_0();
      __swift_destroy_boxed_opaque_existential_1Tm(&v540);
      v324 = OUTLINED_FUNCTION_2_119();
      v328 = OUTLINED_FUNCTION_13_36(v324, v325, v326, v327);
      v329 = v519;
      v466 = v330;
      v467 = v328;
      *(v519 + 16) = v328;
      v329[3] = v330;
      v464 = v332;
      v465 = v331;
      *(v329 + 4) = v331;
      *(v329 + 5) = v332;
      OUTLINED_FUNCTION_5_66();
      OUTLINED_FUNCTION_8_0();
      v333 = OUTLINED_FUNCTION_8_9();
      v334(v333);
      OUTLINED_FUNCTION_44_10();
      v468 = v510;
      v335 = v469;
      MEMORY[0x1DA710B60]();
      v336 = *&v547[24];
      v337 = *&v547[32];
      __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
      v542 = v336;
      OUTLINED_FUNCTION_51_9(*(v337 + 8));
      OUTLINED_FUNCTION_3_0();
      (*(v338 + 16))();
      v339 = OUTLINED_FUNCTION_36_13();
      sub_1D7EB39AC(v339, v340);
      __swift_destroy_boxed_opaque_existential_1Tm(&v540);
      v475 = v534;
      LODWORD(v492) = v535;
      v341 = *&v547[24];
      v342 = *&v547[32];
      __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
      v542 = v341;
      OUTLINED_FUNCTION_51_9(*(v342 + 8));
      OUTLINED_FUNCTION_3_0();
      (*(v343 + 16))();
      v344 = OUTLINED_FUNCTION_36_13();
      sub_1D7EB3AD0(v344, v345);
      __swift_destroy_boxed_opaque_existential_1Tm(&v540);
      LOBYTE(v341) = v534;
      v346 = *&v547[24];
      v347 = *&v547[32];
      __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
      (*(v347 + 16))(&v540, v346, v347);
      OUTLINED_FUNCTION_42_13();
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
      v348 = v506;
      v349 = v518;
      (*v498)(v506, v335, v518);
      v350 = OUTLINED_FUNCTION_19_29();
      v352 = sub_1D7EB3C70(v350, v351, v348, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
      v353 = sub_1D818E974();
      v354 = v473;
      MEMORY[0x1DA710B60](v473, v353);
      v355 = OUTLINED_FUNCTION_15_35();
      v356 = v349;
      v357 = v468;
      __swift_storeEnumTagSinglePayload(v355, v358, v359, v356);
      v360 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
      OUTLINED_FUNCTION_12_41(v352 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath);
      v361 = OUTLINED_FUNCTION_10_50();
      sub_1D7EB3D28(v361, v362, &qword_1EDBBC690, v363);
      swift_endAccess();
      *v471 = v510;
      v364 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
      OUTLINED_FUNCTION_47_13(v364);
      v365 = OUTLINED_FUNCTION_15_35();
      __swift_storeEnumTagSinglePayload(v365, v366, v367, v360);
      OUTLINED_FUNCTION_12_41(v352 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source);
      v368 = OUTLINED_FUNCTION_11_42();
      sub_1D7EB3D28(v368, v369, qword_1EDBB5AF8, v370);
      swift_endAccess();
      v371 = *&v547[24];
      v372 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v372, v371);
      v373 = OUTLINED_FUNCTION_7_60();
      v374(v373);
      v375 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
      OUTLINED_FUNCTION_15_2(v352 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData, &v534);
      sub_1D7E5C8DC(&v540, v352 + v375);
      swift_endAccess();
      v376 = v352;
      OUTLINED_FUNCTION_49_9(v376, sel_setFrame_);
      [v376 setHidden_];
      v377 = &v376[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
      OUTLINED_FUNCTION_56(&v376[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], &v531);
      *v377 = v475;
      v377[8] = v492;
      LOBYTE(v534) = v341;
      v378 = OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_48_10(v378, v357, v460, v521, v379, v442);
      LOBYTE(v377) = v540;
      v380 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
      OUTLINED_FUNCTION_56(&v376[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge], &v530);
      v376[v380] = v377;
      v381 = *&v547[32];
      __swift_project_boxed_opaque_existential_1(v547, *&v547[24]);
      v382 = OUTLINED_FUNCTION_7_60();
      v383(v382, v381);
      if (v541 == 1)
      {
        v384 = 1000 - v357;
        if (__OFSUB__(1000, v357))
        {
          goto LABEL_107;
        }
      }

      else
      {
        v384 = v540;
      }

      [v376 setZIndex_];

      v473 = v354 + 1;
      v300 = v478;
      v281 = v466;
      v280 = v467;
      if (!__OFADD__(v354, 1))
      {
        v385 = *&v547[32];
        *&v510 = v376;
        OUTLINED_FUNCTION_52_5(v547);
        v386 = OUTLINED_FUNCTION_6_1();
        v387(v386, v385);
        OUTLINED_FUNCTION_42_13();
        v388 = OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_12_41(v388);
        OUTLINED_FUNCTION_34_16();
        swift_endAccess();

        v389 = *&v546[32];
        OUTLINED_FUNCTION_52_5(v546);
        v390 = OUTLINED_FUNCTION_8_49();
        v391(v390, v389);
        __swift_project_boxed_opaque_existential_1(&v540, v542);
        LOBYTE(v537) = 1;
        v534 = v475;
        v535 = v492;
        OUTLINED_FUNCTION_43_12();
        v214 = *&v509;
        v392 = OUTLINED_FUNCTION_8_0();
        *&v394 = COERCE_DOUBLE(v393(v392));

        (*v497)(v469, v518);
        *v480 = v394;

        __swift_destroy_boxed_opaque_existential_1Tm(&v540);
        __swift_destroy_boxed_opaque_existential_1Tm(v547);
        v508 = *&v394;
        v509 = *&v394;
        continue;
      }

      break;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
  }
}

uint64_t sub_1D7E797C4()
{

  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7E797F4()
{

  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_1D7E57C40(*(v0 + 344), *(v0 + 352), *(v0 + 360));

  sub_1D7E57C40(*(v0 + 864), *(v0 + 872), *(v0 + 880));
  sub_1D7E57C40(*(v0 + 888), *(v0 + 896), *(v0 + 904));
  sub_1D7E57C40(*(v0 + 912), *(v0 + 920), *(v0 + 928));

  return swift_deallocObject();
}

void sub_1D7E79920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E79998(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = a17;
  *(v18 + 88) = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D7F7F414(0, 0, v6, v5, a5);
}

char *OUTLINED_FUNCTION_32_6()
{

  return sub_1D7FC8374(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1)
{

  return sub_1D7E74104(a1, v1, v2);
}

void OUTLINED_FUNCTION_32_13()
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v0;
  *(v4 - 128) = v1;
  *(v4 - 120) = v3;
}

void OUTLINED_FUNCTION_32_20()
{

  BlueprintSection<>.rank(inclusiveFor:)();
}

unint64_t OUTLINED_FUNCTION_32_21()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_1D7E1C3D8(v2, v3, (v0 - 120));
}

void *BlueprintLayoutCollection.init(layoutOptions:layoutDirection:)@<X0>(void *__src@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x235uLL);
  LOBYTE(a2) = *a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  *(a3 + 32) = v6;
  *(a3 + 1216) = v6;
  *(a3 + 1224) = v6;
  *(a3 + 1232) = v6;
  *(a3 + 1240) = v6;
  *(a3 + 1248) = v6;
  *(a3 + 16) = a2;
  memcpy((a3 + 40), __src, 0x235uLL);
  *(a3 + 605) = a2;
  memcpy(v9, __src, 0x235uLL);
  v8 = a2;
  sub_1D7E222B8(__dst, __srca);
  BlueprintLayoutCollectionPinAdjuster.init(layoutOptions:layoutDirection:)(v9, &v8, __srca);
  return memcpy((a3 + 608), __srca, 0x260uLL);
}

double sub_1D7E79C5C(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return sub_1D7E79C74(result, a2 & 0x3F);
  }

  return v2;
}

double sub_1D7E79C74(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    sub_1D8190DB4();
  }

  return result;
}

void BlueprintLayoutSectionFramePosition.solver(for:layoutOptions:)(const void *a1@<X1>, uint64_t *a2@<X8>)
{
  memcpy(v43, a1, 0x235uLL);
  v4 = *v2;
  v5 = *(v2 + 8);
  switch(v5 >> 6)
  {
    case 1u:
      OUTLINED_FUNCTION_12_46();
      OUTLINED_FUNCTION_6_82();
      v6 = type metadata accessor for RawBlueprintLayoutCollectionSectionSolver();
      OUTLINED_FUNCTION_14_43(v6);
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_72();
      MEMORY[0x1EEE9AC00](v27);
      v29 = OUTLINED_FUNCTION_2_132(v28, v40);
      v30(v29);
      v31 = OUTLINED_FUNCTION_4_86();
      v17 = sub_1D804206C(v31, v32, v33, v34, v35, v36);
      sub_1D7E222B8(v43, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v18 = &off_1F52FD818;
      goto LABEL_9;
    case 2u:
      if ((v5 & 0x3F) == 0)
      {
        OUTLINED_FUNCTION_1_146();
        v38 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53(v38);
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v20 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSolver();
        v21 = swift_allocObject();
        *(v21 + 40) = v38;
        *(v21 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v21);
        *(v21 + 629) = 0;
        *(v21 + 632) = v4;
        v22 = &off_1F52EB008;
        goto LABEL_12;
      }

      if ((v5 & 0x3F) == 1)
      {
        OUTLINED_FUNCTION_1_146();
        v19 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53(v19);
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v20 = type metadata accessor for FlowBlueprintLayoutCollectionSectionSolver();
        v21 = swift_allocObject();
        *(v21 + 40) = v19;
        *(v21 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v21);
        *(v21 + 632) = v4;
        v22 = &off_1F52FAD08;
LABEL_12:
        a2[3] = v20;
        a2[4] = v22;
        *a2 = v21;
        OUTLINED_FUNCTION_13_43();
        OUTLINED_FUNCTION_13_43();
        sub_1D7E79C5C(v4, v5);
        return;
      }

      OUTLINED_FUNCTION_1_146();
      v39 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
      OUTLINED_FUNCTION_8_53(v39);
      OUTLINED_FUNCTION_3_118();
      OUTLINED_FUNCTION_113();
      v24 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSolver();
      v25 = swift_allocObject();
      *(v25 + 40) = v39;
      *(v25 + 48) = &off_1F5302D18;
      OUTLINED_FUNCTION_0_204(v25);
      *(v25 + 629) = 1;
      *(v25 + 632) = MEMORY[0x1E69E7CC0];
      v26 = &off_1F52EB008;
LABEL_14:
      a2[3] = v24;
      a2[4] = v26;
      *a2 = v25;
      OUTLINED_FUNCTION_13_43();
      OUTLINED_FUNCTION_13_43();
      return;
    case 3u:
      OUTLINED_FUNCTION_1_146();
      if (v4 | v5 ^ 0xC0)
      {
        v37 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53(v37);
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v24 = type metadata accessor for RawBlueprintLayoutCollectionSectionSolver();
        v25 = OUTLINED_FUNCTION_14_43(v24);
        *(v25 + 40) = v37;
        *(v25 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v25);
        v26 = &off_1F52FD818;
      }

      else
      {
        v23 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53(v23);
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v24 = type metadata accessor for ManualBlueprintLayoutCollectionSectionSolver();
        v25 = OUTLINED_FUNCTION_14_43(v24);
        *(v25 + 40) = v23;
        *(v25 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v25);
        v26 = &off_1F52F8E68;
      }

      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_12_46();
      OUTLINED_FUNCTION_6_82();
      v6 = type metadata accessor for ManualBlueprintLayoutCollectionSectionSolver();
      OUTLINED_FUNCTION_14_43(v6);
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_72();
      MEMORY[0x1EEE9AC00](v7);
      v9 = OUTLINED_FUNCTION_2_132(v8, v40);
      v10(v9);
      v11 = OUTLINED_FUNCTION_4_86();
      v17 = sub_1D804206C(v11, v12, v13, v14, v15, v16);
      sub_1D7E222B8(v43, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v18 = &off_1F52F8E68;
LABEL_9:
      a2[3] = v6;
      a2[4] = v18;
      *a2 = v17;
      return;
  }
}

Swift::Void __swiftcall SwipeActionCollectionView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D7E1D3F8(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &ObjectType - v7;
  v9 = type metadata accessor for SwipeActionState(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &ObjectType - v14;
  v16 = *&v1[OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager];
  v17 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E535B8(v16 + v17, v8, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_16_32();
    sub_1D7E53770(v8, v18, v19);
    v20 = 1;
    v21 = 0.0;
    v22 = 0.0;
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    sub_1D8085EA4(v8, v15, v23);
    v24 = sub_1D818E8E4();
    v25 = [v1 cellForItemAtIndexPath_];

    if (v25)
    {
      v26 = [v25 contentView];

      v27 = [v26 layer];
      [v27 position];
      v21 = v28;
      v22 = v29;

      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v15, v30);
      v20 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v15, v31);
      v20 = 1;
      v21 = 0.0;
      v22 = 0.0;
    }
  }

  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_layoutSubviews, ObjectType);
  if ((v20 & 1) == 0)
  {
    sub_1D7E535B8(v16 + v17, v5, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      OUTLINED_FUNCTION_16_32();
      sub_1D7E53770(v5, v32, v33);
    }

    else
    {
      OUTLINED_FUNCTION_17_26();
      sub_1D8085EA4(v5, v12, v34);
      v35 = sub_1D818E8E4();
      v36 = [v1 cellForItemAtIndexPath_];

      if (v36)
      {
        v37 = [v36 contentView];
        v38 = [v37 layer];

        [v38 setPosition_];
      }

      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v12, v39);
    }
  }
}

uint64_t sub_1D7E7A488(_BYTE *a1, const void *a2)
{
  *(v2 + 16) = *a1;
  memcpy((v2 + 24), a2, 0x235uLL);
  return v2;
}

uint64_t sub_1D7E7A4D8(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return sub_1D7E7A4F0(result, a2 & 0x3F);
  }

  return result;
}

uint64_t sub_1D7E7A4F0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1D7E7A504(uint64_t a1)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0, &protocol descriptor for BlueprintLayoutFrameAttributesType);
  sub_1D7E0631C(0, qword_1EDBB3F40, &protocol descriptor for BlueprintLayoutSupplementaryAttributesProviding);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 16))(v1, v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7E7AD0C(v6, &qword_1EDBB3F38, qword_1EDBB3F40, &protocol descriptor for BlueprintLayoutSupplementaryAttributesProviding);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1D7E7A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1D8192344() + 36);
  v10 = BlueprintLayoutSection.startIndex.getter(a1, v7, v8, v9);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v10;
  return result;
}

uint64_t sub_1D7E7A71C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = BlueprintLayoutSection.endIndex.getter(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t (*sub_1D7E7A744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for BlueprintLayoutItem(0, *(a3 + 24), *(a3 + 40), a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  a1[2] = __swift_coroFrameAllocStub(*(v8 + 64));
  BlueprintLayoutSection.subscript.getter(a2, a3, v9, v10);
  return sub_1D7E96864;
}

void (*sub_1D7E7A80C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D7E7A744(v6, *a2, a3, v7);
  return sub_1D7E46A38;
}

uint64_t static MastheadViewLayoutOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = *(a1 + 56);
  v81 = *(a1 + 40);
  v78 = *(a1 + 88);
  v79 = *(a1 + 72);
  v83 = *(a1 + 96);
  v76 = *(a1 + 120);
  v77 = *(a1 + 104);
  v2 = *(a1 + 128);
  v71 = *(a1 + 136);
  v69 = *(a1 + 152);
  v70 = *(a1 + 144);
  v64 = *(a1 + 168);
  v65 = *(a1 + 160);
  v62 = *(a1 + 184);
  v63 = *(a1 + 176);
  v56 = *(a1 + 200);
  v57 = *(a1 + 192);
  v54 = *(a1 + 216);
  v55 = *(a1 + 208);
  v48 = *(a1 + 232);
  v49 = *(a1 + 224);
  v46 = *(a1 + 248);
  v47 = *(a1 + 240);
  v3 = *(a1 + 256);
  v41 = *(a1 + 264);
  v4 = *(a1 + 272);
  v40 = *(a1 + 280);
  v5 = *(a1 + 288);
  v73 = *(a2 + 8);
  v74 = *a2;
  v6 = *(a2 + 24);
  v72 = *(a2 + 16);
  v75 = *(a2 + 40);
  v7 = *(a2 + 128);
  v8 = *(a2 + 256);
  v9 = *(a2 + 264);
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  v12 = *(a2 + 289);
  v13 = *(a2 + 56);
  v14 = *(a2 + 72);
  v16 = *(a2 + 88);
  v15 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v67 = *(a2 + 144);
  v68 = *(a2 + 136);
  v66 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 160);
  v58 = *(a2 + 184);
  v59 = *(a2 + 176);
  v52 = *(a2 + 200);
  v53 = *(a2 + 192);
  v50 = *(a2 + 216);
  v51 = *(a2 + 208);
  v44 = *(a2 + 232);
  v45 = *(a2 + 224);
  v42 = *(a2 + 248);
  v43 = *(a2 + 240);
  v39 = *(a2 + 280);
  Width = CGRectGetWidth(*a1);
  v84.origin.y = v73;
  v84.origin.x = v74;
  v84.size.width = v72;
  v84.size.height = v6;
  v26 = Width == CGRectGetWidth(v84) && v81 == v75 && v80 == v13 && v79 == v14 && v78 == v16 && v77 == v17 && v76 == v18 && v83 == v15;
  if (v26 && (v82 = v5, v27 = [v2 horizontalSizeClass], v27 == objc_msgSend(v7, sel_horizontalSizeClass)) && (v28 = objc_msgSend(v2, sel_userInterfaceStyle), v28 == objc_msgSend(v7, sel_userInterfaceStyle)) && ((v29 = objc_msgSend(v2, sel_userInterfaceLevel), v29 == objc_msgSend(v7, sel_userInterfaceLevel)) ? (v30 = v71 == v68) : (v30 = 0), v30 ? (v31 = v70 == v67) : (v31 = 0), v31 ? (v32 = v69 == v66) : (v32 = 0), v32 && (v85.origin.y = v64, v85.origin.x = v65, v85.size.height = v62, v85.size.width = v63, v88.origin.y = v60, v88.origin.x = v61, v88.size.height = v58, v88.size.width = v59, CGRectEqualToRect(v85, v88)) && (v86.origin.y = v56, v86.origin.x = v57, v86.size.height = v54, v86.size.width = v55, v89.origin.y = v52, v89.origin.x = v53, v89.size.height = v50, v89.size.width = v51, CGRectEqualToRect(v86, v89)) && (v87.origin.y = v48, v87.origin.x = v49, v87.size.height = v46, v87.size.width = v47, v90.origin.y = v44, v90.origin.x = v45, v90.size.height = v42, v90.size.width = v43, CGRectEqualToRect(v87, v90))))
  {
    sub_1D7E7AC84();
    v33 = v3;
    v34 = v8;
    v35 = sub_1D8191CC4();

    LOBYTE(v36) = 0;
    if ((v35 & 1) != 0 && ((v41 ^ v9) & 1) == 0)
    {
      LOBYTE(v36) = v4 == 2;
      if (v10 != 2)
      {
        LOBYTE(v36) = 0;
      }

      if (v4 != 2 && v10 != 2)
      {
        v36 = (v4 ^ v10 | v82 ^ v11 | v12 ^ ((v82 & 0x100) >> 8) | (v40 != v39)) ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t BlueprintLayoutSection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = BlueprintLayoutSection.startIndex.getter(a2, a2, a3, a4);
  result = BlueprintLayoutSection.endIndex.getter(a2, v7, v8, v9);
  if (result < v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 > a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for BlueprintLayoutItem(0, *(a2 + 24), *(a2 + 40), v11);

  return sub_1D81914C4();
}

unint64_t sub_1D7E7AC84()
{
  result = qword_1EDBB2F40;
  if (!qword_1EDBB2F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F40);
  }

  return result;
}

Swift::Int sub_1D7E7ACC8(Swift::Int *a1)
{
  result = BlueprintLayoutSection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E7AD0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7E328A8(0, a2, a3, a4);
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7E7AD7C(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111 = a5;
  v112 = a6;
  v108 = a10;
  v107 = a9;
  v106 = a11;
  sub_1D7E79920(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = (&v98 - v18);
  v104 = sub_1D818E994();
  v19 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v114 = *(a2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v110 = a4;
  swift_beginAccess();
  swift_beginAccess();
  v109 = a7;
  swift_beginAccess();
  v113 = a8;
  swift_beginAccess();
  v22 = 0;
  v23 = "eneConnect";
  v101 = "entKindSectionHeader";
  v102 = "eneConnect";
  if (v21)
  {
    v23 = "entKindSectionHeader";
  }

  v24 = v23 | 0x8000000000000000;
  v98 = a2 + 32;
  v99 = (v19 + 16);
  for (i = v23 | 0x8000000000000000; ; v24 = i)
  {
    while (1)
    {
      v25 = 0uLL;
      v26 = v114;
      v27 = 0uLL;
      v28 = 0uLL;
      if (v22 != v114)
      {
        if (v22 >= v114)
        {
          goto LABEL_28;
        }

        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_29;
        }

        *&v120 = v22;
        sub_1D7E25380(v98 + 40 * v22, &v120 + 8);
        v25 = v120;
        v27 = v121;
        v28 = v122;
      }

      v123[0] = v25;
      v123[1] = v27;
      v123[2] = v28;
      if (!v28)
      {
        return;
      }

      v116 = v25;
      sub_1D7E05450((v123 + 8), &v120);
      v29 = *(&v121 + 1);
      v30 = v122;
      __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      (*(v30 + 16))(&v118, v29, v30);
      v31 = "UICollectionElementKindSectionHeader";
      if (v118)
      {
        v31 = "UICollectionElementKindSectionFooter";
      }

      if (((v31 - 32) | 0x8000000000000000) == v24)
      {

        break;
      }

      v32 = sub_1D8192634();

      if (v32)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v120);
      v22 = v26;
    }

    v115 = v26;
    v33 = a3[3];
    v34 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v33);
    v36 = *(&v121 + 1);
    v35 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    v37 = (*(*(v35 + 8) + 16))(v36);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = v110;
    v45 = *(v34 + 24);

    v45(v46, v111, v33, v34, v37, v39, v41, v43);

    v48 = *(&v121 + 1);
    v47 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    v49 = (*(*(*(v47 + 8) + 8) + 24))(v48);
    sub_1D7E7C82C(v112, v49 & 1);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = a3[3];
    v59 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v58);
    v60 = *(v59 + 40);

    v62 = v60(v61, v58, v59, v51, v53, v55, v57);

    *(v44 + 16) = v62;

    v63 = v109;
    v124.origin.x = v51;
    v124.origin.y = v53;
    v124.size.width = v55;
    v124.size.height = v57;
    *(v63 + 16) = CGRectUnion(*(v109 + 16), v124);
    v64 = a3[3];
    v65 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v64);
    v66 = (*(v65 + 32))(v64, v65, v51, v53, v55, v57);
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = *(&v121 + 1);
    v74 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    (*(v74 + 16))(&v118, v73, v74);
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
    v75 = *(v113 + 16);
    v76 = v116;
    if (__OFADD__(v116, v75))
    {
      break;
    }

    v78 = v101;
    v77 = v102;
    if (v118)
    {
      v79 = v101;
    }

    else
    {
      v79 = v102;
    }

    v80 = v103;
    MEMORY[0x1DA710B60](v116 + v75, v107);
    v81 = sub_1D7EB3C70(0xD000000000000024, v79 | 0x8000000000000000, v80, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
    sub_1D7E58AEC(0);
    v83 = *(v82 + 48);
    v84 = v104;
    v85 = v105;
    *v105 = v76;
    (*v99)(v85 + v83, v108, v84);
    v86 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
    v87 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
    swift_beginAccess();
    sub_1D7EB3D28(v85, v81 + v87, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
    swift_endAccess();
    v88 = v81;
    [v88 setFrame_];
    [v88 setHidden_];
    v90 = *(&v121 + 1);
    v89 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    (*(*(v89 + 8) + 24))(&v118, v90);
    v91 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
    swift_beginAccess();
    sub_1D7E5C8DC(&v118, v88 + v91);
    swift_endAccess();
    v92 = *(&v121 + 1);
    v93 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    (*(v93 + 24))(&v118, v92, v93);
    if (v119)
    {
      v94 = 1000;
    }

    else
    {
      v94 = v118;
    }

    [v88 setZIndex_];

    v95 = *(&v121 + 1);
    v96 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    (*(v96 + 16))(v117, v95, v96);
    if (LOBYTE(v117[0]))
    {
      v97 = v78;
    }

    else
    {
      v97 = v77;
    }

    swift_beginAccess();
    BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(v88, 0xD000000000000024, v97 | 0x8000000000000000);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(&v120);
    v22 = v115;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1D7E7B5C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1D7E7BAAC(v10);
  return v8 & 1;
}

double sub_1D7E7B668()
{
  OUTLINED_FUNCTION_155();
  v1 = *(v0 + 16);
  CGRectGetWidth(v3);
  OUTLINED_FUNCTION_3_32();
  return v1;
}

uint64_t MastheadDisplayOptions.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_1D7E7B91C(a1, v12);
  if (!v13)
  {
    sub_1D7E7BAAC(v12);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_2_148(v3) & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  if (*(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8))
  {
    if ((v11[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8] & 1) == 0)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  else if ((v11[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8] & 1) != 0 || *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode) != *&v11[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode])
  {
    goto LABEL_12;
  }

  v4 = *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_styleOptions);
  v5 = *&v11[OBJC_IVAR___TSMastheadDisplayOptions_styleOptions];
  if (!v4)
  {
    v10 = v5;

    if (!v5)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  type metadata accessor for MastheadStyleOptions();
  v6 = v5;
  v7 = v4;
  v8 = sub_1D8191CC4();

  return v8 & 1;
}

uint64_t BlueprintSection.isImpressionable.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  (*(v4 + 16))(v3 - v2);
  sub_1D7EA4FB8();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D7EA5014(v9);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D7E7B91C(uint64_t a1, uint64_t a2)
{
  sub_1D7E2CEC0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D7E7B998(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  BlueprintCollectionViewDataSource.collectionView(_:cellForItemAt:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

uint64_t sub_1D7E7BAAC(uint64_t a1)
{
  sub_1D7E09C24(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void BlueprintCollectionViewDataSource.collectionView(_:cellForItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v123 = v2;
  v119 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v114 = *MEMORY[0x1E69E7D40] & *v0;
  v6 = sub_1D818E2D4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15();
  v98 = v8 - v7;
  v9 = *((v5 & v4) + 0x70);
  v10 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v101 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v102 = v14;
  v120 = v4;
  v121 = v5;
  v118 = *((v5 & v4) + 0x78);
  v117 = *((v5 & v4) + 0x58);
  OUTLINED_FUNCTION_10_8();
  v15 = swift_getAssociatedTypeWitness();
  v115 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintLayoutItem(0, v15, AssociatedConformanceWitness, v16);
  OUTLINED_FUNCTION_9();
  v110 = v18;
  v111 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_94();
  v124 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v130[0] = v21;
  v130[1] = AssociatedTypeWitness;
  v130[2] = v22;
  v131 = v23;
  v24 = type metadata accessor for Blueprint(0, v130);
  OUTLINED_FUNCTION_9();
  v26 = v25;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v103 = AssociatedTypeWitness;
  v116 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v23, v30);
  OUTLINED_FUNCTION_9();
  v122 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_0();
  v106 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  v105 = *((v121 & v120) + 0xA0);
  v112 = v10;
  v113 = v9;
  v38 = v10;
  v39 = v124;
  BlueprintProviderType.blueprint.getter(v38, v9);
  v40 = v123;
  Blueprint.subscript.getter();
  v41 = *(v26 + 8);
  v107 = v29;
  v108 = v26 + 8;
  v109 = v24;
  v104 = v41;
  v41(v29, v24);
  OUTLINED_FUNCTION_43_9();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v117, v118);
  OUTLINED_FUNCTION_13_20();
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedConformanceWitness();
  *&v127 = v42;
  *(&v127 + 1) = v115;
  v128 = v43;
  v129 = AssociatedConformanceWitness;
  v44 = type metadata accessor for BlueprintLayout(0, &v127);
  BlueprintLayout.subscript.getter(v40, v44);
  (*(*(v44 - 8) + 8))(v130, v44);
  OUTLINED_FUNCTION_43_9();
  *&v127 = v119;
  v45 = *((v121 & v120) + 0x80);
  v46 = *(v45 + 64);
  v47 = *((v121 & v120) + 0x60);
  v121 = v37;
  v99 = v47;
  AssociatedConformanceWitness = v45;
  v46(v130, v37, v39, &v127, v40);
  v48 = v130[0];
  *&v125 = v130[0];
  v49 = sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
  OUTLINED_FUNCTION_91(v49, &qword_1EDBB7758, &protocol descriptor for CompositionalListCellType);
  v50 = v48;
  v120 = v49;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v127, v130);
    v51 = v131;
    v52 = v132;
    __swift_project_boxed_opaque_existential_1(v130, v131);
    v133.origin.x = (*(*(v114 + 144) + 16))(v115);
    Height = CGRectGetHeight(v133);
    (*(v52 + 8))(v51, v52, Height);
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v127, &qword_1EDBB7750, &qword_1EDBB7758, &protocol descriptor for CompositionalListCellType);
  }

  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v50, ObjectType, &protocol descriptor for KeyCommandTraversalObserver))
  {
    v56 = v55;
    OUTLINED_FUNCTION_43_9();
    v58 = *(v57 + 192);
    v59 = *(v1 + v58);
    v60 = v50;
    if (v59)
    {

      sub_1D818F154();

      v59 = LOBYTE(v130[0]);
    }

    v61 = swift_getObjectType();
    (*(v56 + 16))(v59, v61, v56);
    if (*(v1 + v58))
    {
      *(swift_allocObject() + 24) = v56;
      swift_unknownObjectWeakInit();

      sub_1D818F164();

      __swift_project_boxed_opaque_existential_1(v130, v131);
      v62 = (*(v56 + 32))(v61, v56);
      sub_1D818ED84();

      __swift_destroy_boxed_opaque_existential_1Tm(v130);
    }

    else
    {
    }
  }

  v63 = (*(v101 + 16))(v102, v121, v103);
  OUTLINED_FUNCTION_91(v63, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v127, v130);
    v64 = v131;
    v65 = v132;
    __swift_project_boxed_opaque_existential_1(v130, v131);
    (*(v65 + 8))(&v125, v64, v65);
    if (v126)
    {
      sub_1D7E05450(&v125, &v127);
      v66 = [v50 contentView];
      v67 = v129;
      v68 = __swift_project_boxed_opaque_existential_1(&v127, v129);
      sub_1D818FD34();
      v115 = &v98;
      OUTLINED_FUNCTION_2();
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_15();
      (*(v72 + 16))(v71 - v70, v68, v67);
      sub_1D7E9A940();
      v73 = sub_1D818FD24();
      sub_1D8191C64();

      __swift_destroy_boxed_opaque_existential_1Tm(&v127);
    }

    else
    {
      sub_1D7E553A4(&v125, &unk_1EDBBC730, &unk_1EDBBC740, MEMORY[0x1E6959DF8]);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v130);
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v127, &unk_1EDBB65D0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  }

  v74 = v107;
  v76 = v112;
  v75 = v113;
  BlueprintProviderType.blueprint.getter(v112, v113);
  v77 = v106;
  v78 = v109;
  Blueprint.subscript.getter();
  v104(v74, v78);
  v79 = v116;
  v123 = BlueprintItem.identifier.getter(v116);
  v81 = v80;
  v82 = *(v122 + 8);
  v83 = v77;
  v84 = v122 + 8;
  v85 = v82(v83, v79);
  *&v125 = v50;
  OUTLINED_FUNCTION_91(v85, qword_1EDBB9798, &protocol descriptor for SwipeActionCellType);
  v86 = v50;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v127, v130);
    v122 = v84;
    v120 = v86;
    v87 = v75;
    v88 = v76;
    v89 = v131;
    v90 = v132;
    v115 = __swift_project_boxed_opaque_existential_1(v130, v131);
    OUTLINED_FUNCTION_0_8();
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_8();
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = swift_allocObject();
    v94 = v117;
    v93[2] = v88;
    v93[3] = v94;
    v93[4] = v99;
    v95 = v114;
    v93[5] = *(v114 + 104);
    v93[6] = v87;
    v96 = AssociatedConformanceWitness;
    v93[7] = v118;
    v93[8] = v96;
    v93[9] = *(v95 + 136);
    v93[10] = *(v95 + 144);
    v93[11] = v91;
    v93[12] = v123;
    v93[13] = v81;
    v93[14] = v92;
    v97 = *(v90 + 8);

    v97(sub_1D802BEC8, v93, v89, v90);

    (*(v110 + 8))(v124, v111);
    v82(v121, v116);

    __swift_destroy_boxed_opaque_existential_1Tm(v130);
  }

  else
  {

    (*(v110 + 8))(v124, v111);
    v82(v121, v79);
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v127, &qword_1EDBB9790, qword_1EDBB9798, &protocol descriptor for SwipeActionCellType);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E7C7A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7C7F0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

void sub_1D7E7C82C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 565);
    v7.origin.x = OUTLINED_FUNCTION_6_74();
    CGRectIntegral(v7);
    v3 = OUTLINED_FUNCTION_6_74();
    if (v2)
    {
      CGRectGetWidth(*&v3);
    }

    else
    {
      CGRectGetHeight(*&v3);
    }
  }

  OUTLINED_FUNCTION_6_74();
}

char *CollectionViewListCell.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE8;
  v3 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  v4 = qword_1EDBB8B88;
  sub_1D7E40308(0, v5, v6, v7);
  v9 = v8;
  *(v0 + v4) = [objc_allocWithZone(v8) init];
  v10 = qword_1EDBB8BD8;
  *(v0 + v10) = [objc_allocWithZone(v9) init];
  v11 = qword_1EDBB8BC8;
  *(v0 + v11) = [objc_allocWithZone(v9) init];
  v12 = qword_1EDBB8B98;
  *(v0 + v12) = [objc_allocWithZone(v9) init];
  *(v0 + qword_1EDBB8BD0) = 0;
  *(v0 + qword_1EDBB8BC0) = 0x8000000000000008;
  v13 = qword_1EDBB8BA0;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB8BB0) = 0;
  v14 = (v0 + qword_1EDBB8BB8);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + qword_1EDBB8BE0) = 0;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *(v0 + qword_1EDBB8BA8) = OUTLINED_FUNCTION_4(v15, sel_initWithFrame_);
  *(v0 + qword_1EDBB8B90) = 0;
  v16 = OUTLINED_FUNCTION_80();
  v19 = objc_msgSendSuper2(v17, v18, v16, v0, ObjectType);
  v20 = [v19 contentView];
  v21 = qword_1EDBB8BA8;
  [v20 addSubview_];

  v22 = *&v19[v21];
  v23 = [v19 contentView];
  [v23 bounds];
  OUTLINED_FUNCTION_9_0();

  v24 = OUTLINED_FUNCTION_8_0();
  [v25 v26];

  [*&v19[v21] bounds];
  OUTLINED_FUNCTION_9_0();
  v27 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v28 = OUTLINED_FUNCTION_8_0();
  v31 = [v29 v30];
  [v19 setBackgroundView_];

  [v19 setSelectedBackgroundView_];
  return v19;
}

uint64_t sub_1D7E7CC20(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(v5 + 632);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = 0.0;
    do
    {
      v11 = *v9++;
      v10 = v10 + v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  if (*(v5 + 56))
  {
    v12 = *(a1 + 16);
    v13 = v10 + CGRectGetMaxY(*&a2);
  }

  else
  {
    v12 = v10 + CGRectGetMaxX(*&a2);
    v13 = *(a1 + 24);
  }

  type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_1_37();
  return sub_1D7E79998(v12, v13, v22, v23, v24, v25, v26, v27, v14, v15, v16, v17, v18, v19, v20, v21, 0, 0);
}

id sub_1D7E7CD34()
{
  OUTLINED_FUNCTION_16_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_108();
  return objc_msgSendSuper2(v0, v1);
}

double sub_1D7E7CD68()
{
  OUTLINED_FUNCTION_155();
  v6 = 440;
  if (*(v0 + 65) == 1)
  {
    v6 = 104;
  }

  v7 = *(v0 + v6);
  CGRectGetWidth(*&v2);
  OUTLINED_FUNCTION_3_32();
  return v7 + v1;
}

id sub_1D7E7CE2C(uint64_t a1)
{
  v2 = sub_1D818E8E4();
  v3 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath_];

  v4 = sub_1D818E994();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

id sub_1D7E7CEC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_shadowOpacity);
}

id sub_1D7E7CF00()
{
  OUTLINED_FUNCTION_16_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_108();
  v2 = objc_msgSendSuper2(v0, v1);

  return v2;
}

uint64_t BlueprintLayoutFrameAttributesType.layoutData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_0, v2, a1);
}

id sub_1D7E7D044()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_shadowOffset);
}

void BlueprintLayoutCollection.add(layoutAttributes:)(char *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_45(v20);
  OUTLINED_FUNCTION_15_45(v19);
  sub_1D7E6755C(v20, v21);
  v10 = sub_1D7E7D31C(a1);
  v12 = v11;
  memcpy(v21, v19, sizeof(v21));
  sub_1D7E598FC(v21);
  v13 = &a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v13 = v10;
  *(v13 + 1) = v12;

  v14 = a1;
  MEMORY[0x1DA713500]();
  sub_1D7E2893C(*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  v15 = [v14 indexPath];
  sub_1D818E924();

  v16 = v14;
  swift_isUniquelyReferenced_nonNull_native();
  v19[0] = *(v2 + 1216);
  sub_1D7E7D494();
  *(v2 + 1216) = v19[0];
  (*(v6 + 8))(v9, v4);
  sub_1D7E7D6B8(v16);
  v17 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  swift_beginAccess();
  if (v16[v17] == 1)
  {
    BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v16);
  }
}

uint64_t sub_1D7E7D31C(void *a1)
{
  v2 = sub_1D818E994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = [a1 representedElementCategory];
  v12 = sub_1D81925B4();
  v13 = v7;
  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v8 = [a1 indexPath];
  sub_1D818E924();

  sub_1D7E24964(&unk_1EDBBC6A0, MEMORY[0x1E6969C70]);
  v9 = sub_1D81925B4();
  MEMORY[0x1DA713260](v9);

  (*(v3 + 8))(v6, v2);
  return v12;
}

void sub_1D7E7D494()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_76_0();
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D7E7DB08();
  OUTLINED_FUNCTION_4_10();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = OUTLINED_FUNCTION_96();
  sub_1D7E7D610(v14, v15);
  if ((OUTLINED_FUNCTION_40(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1D7E7DB08();
  if ((v13 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v12 = v17;
LABEL_5:
  v19 = *v1;
  if (v13)
  {
    *(*(v19 + 56) + 8 * v12) = v0;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    (*(v7 + 16))(v2, v4, v5);
    sub_1D7E7DD68(v12, v2, v0, v19);
    OUTLINED_FUNCTION_100();
  }
}

void sub_1D7E7D610(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v3;
    OUTLINED_FUNCTION_35();
    sub_1D818E994();
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(255);
    sub_1D7E2B754(&qword_1EDBBC6C0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    OUTLINED_FUNCTION_134();
    v5 = v4();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

unint64_t sub_1D7E7D6B8(char *a1)
{
  v2 = v1;
  memcpy(__dst, (v1 + 40), 0x236uLL);
  sub_1D7E6EB58(__dst, v48);
  [a1 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame];
  v13 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 8];
  v15 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 16];
  v14 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 24];
  v16 = a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 32];
  memcpy(v48, __dst, 0x236uLL);
  sub_1D7E6ED1C();
  v19 = v17;
  v20 = v18;
  if ((v16 & 1) != 0 || (v50.origin.x = v12, v50.origin.y = v13, v50.size.width = v15, v50.size.height = v14, v51.origin.x = v5, v51.origin.y = v7, v51.size.width = v9, v51.size.height = v11, CGRectEqualToRect(v50, v51)))
  {
    sub_1D7E6F268(__dst);
  }

  else
  {
    memcpy(v48, __dst, 0x236uLL);
    sub_1D7E6ED1C();
    v45 = v44;
    v47 = v46;
    sub_1D7E6F268(__dst);
    if (v45 < v19)
    {
      v19 = v45;
    }

    if (v47 > v20)
    {
      v20 = v47;
    }
  }

  v21 = *(v2 + 1248);
  do
  {
    if (v21[2] && (v22 = sub_1D7E7E198(v19), (v23 & 1) != 0))
    {
      v48[0] = *(v21[7] + 8 * v22);
      sub_1D8190DB4();
      v24 = a1;
      MEMORY[0x1DA713500]();
      if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      v25 = v48[0];
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v2 + 1248);
      v26 = sub_1D7E7E198(v19);
      if (__OFADD__(v21[2], (v27 & 1) == 0))
      {
        goto LABEL_40;
      }

      v28 = v26;
      v29 = v27;
      sub_1D7E7DB98(0);
      result = sub_1D8192374();
      if (result)
      {
        result = sub_1D7E7E198(v19);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_42;
        }

        v28 = result;
      }

      if (v29)
      {
        *(v21[7] + 8 * v28) = v25;
LABEL_23:

        goto LABEL_29;
      }

      v21[(v28 >> 6) + 8] |= 1 << v28;
      *(v21[6] + 8 * v28) = v19;
      *(v21[7] + 8 * v28) = v25;
      v43 = v21[2];
      v41 = __OFADD__(v43, 1);
      v42 = v43 + 1;
      if (v41)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_1D7E49240();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D81A50A0;
      *(v32 + 32) = a1;
      v33 = a1;
      swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *(v2 + 1248);
      v34 = v48[0];
      v35 = sub_1D7E7E198(v19);
      if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
      {
        goto LABEL_38;
      }

      v37 = v35;
      v38 = v36;
      sub_1D7E7DB98(0);
      result = sub_1D8192374();
      if (result)
      {
        result = sub_1D7E7E198(v19);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_42;
        }

        v37 = result;
      }

      v21 = v48[0];
      if (v38)
      {
        *(*(v48[0] + 56) + 8 * v37) = v32;
        goto LABEL_23;
      }

      *(v48[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v21[6] + 8 * v37) = v19;
      *(v21[7] + 8 * v37) = v32;
      v40 = v21[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_39;
      }
    }

    v21[2] = v42;
LABEL_29:
    *(v2 + 1248) = v21;
    if (v20 == v19)
    {
      return result;
    }

    v41 = __OFADD__(v19++, 1);
  }

  while (!v41);
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

unint64_t sub_1D7E7DB08()
{
  OUTLINED_FUNCTION_20_3();
  sub_1D818E994();
  sub_1D7E72E88(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
  sub_1D8190E54();
  v0 = OUTLINED_FUNCTION_14();

  return sub_1D7E7E5EC(v0, v1);
}

void sub_1D7E7DB98(uint64_t a1)
{
  if (!qword_1EDBB2D98)
  {
    sub_1D7E188DC(255, &unk_1EDBB33A0);
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2D98);
    }
  }
}

void sub_1D7E7DC54(double a1, CGFloat a2)
{
  if (v2[629] == 1)
  {
    if (v2[56])
    {
      v18.origin.x = OUTLINED_FUNCTION_0_45();
      MaxY = CGRectGetMaxY(v18);
      v6 = *&v2[qword_1D81A64A0[v2[65]]];
      v7 = ceil(trunc(MaxY) / v6) * v6;
      v19.origin.x = OUTLINED_FUNCTION_0_45();
      v8 = v7 - trunc(CGRectGetMaxY(v19));
      v20.origin.x = OUTLINED_FUNCTION_0_45();
      Width = CGRectGetWidth(v20);
      v21.origin.x = OUTLINED_FUNCTION_0_45();
      Height = CGRectGetHeight(v21) + v8;
    }

    else
    {
      v22.origin.x = OUTLINED_FUNCTION_0_45();
      MaxX = CGRectGetMaxX(v22);
      v15 = *&v2[qword_1D81A6488[v2[65]]];
      v16 = ceil(trunc(MaxX) / v15) * v15;
      v23.origin.x = OUTLINED_FUNCTION_0_45();
      v17 = v16 - trunc(CGRectGetMaxX(v23));
      v24.origin.x = OUTLINED_FUNCTION_0_45();
      Width = CGRectGetWidth(v24) + v17;
      v25.origin.x = OUTLINED_FUNCTION_0_45();
      Height = CGRectGetHeight(v25);
    }

    v11 = a1;
    v12 = a2;
    v13 = Width;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_45();
  }

  sub_1D7F3EC6C(v11, v12, v13, Height);
}

void sub_1D7E7DD68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_1D818E994();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

Swift::Void __swiftcall BlueprintLayoutCollection.add(section:for:)(TeaUI::BlueprintLayoutCollectionSection *section, Swift::Int a2)
{
  memcpy(__dst, section, sizeof(__dst));
  v4 = *&__dst[3];
  v5 = __dst[8];
  v6 = __dst[9];
  sub_1D7E7E7A8();
  if (v20 == 1)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *(v2 + 1192);
    OUTLINED_FUNCTION_11_52();
    sub_1D7E7DFC8();
    *(v2 + 1192) = v19[0];
    v7 = (v2 + 1200);
    if (v5)
    {
      sub_1D7E7ED3C(a2, v21);
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v19[0] = *v7;
      sub_1D7E7DFC8();
      *v7 = v19[0];
    }

    sub_1D8190DB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *(v2 + 1208);
    sub_1D7E7EF78(v6, a2, isUniquelyReferenced_nonNull_native);
    *(v2 + 1208) = v19[0];
    sub_1D7E7E30C(__dst, v19);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D7E7E368(__dst, a2, v9, v10, v11, v12, v13, v14, *(v2 + 32), v19[1]);
    *(v2 + 32) = v19[0];
    v15 = *v2;
    v23.origin.x = OUTLINED_FUNCTION_11_52();
    v23.size.height = v4;
    MaxX = CGRectGetMaxX(v23);
    if (v15 <= MaxX)
    {
      v15 = MaxX;
    }

    v17 = *(v2 + 8);
    v24.origin.x = OUTLINED_FUNCTION_11_52();
    v24.size.height = v4;
    MaxY = CGRectGetMaxY(v24);
    if (v17 > MaxY)
    {
      MaxY = v17;
    }

    *v2 = v15;
    *(v2 + 8) = MaxY;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7E7DFC8()
{
  OUTLINED_FUNCTION_153();
  v8 = v7;
  OUTLINED_FUNCTION_155();
  sub_1D7E7E198(v9);
  OUTLINED_FUNCTION_4_10();
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v11 = OUTLINED_FUNCTION_128_0();
  sub_1D7E7E098(v11);
  if (OUTLINED_FUNCTION_70_0(v12))
  {
    sub_1D7E7E198(v8);
    OUTLINED_FUNCTION_74_0();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    v15 = (*(*v0 + 56) + 32 * v2);
    *v15 = v6;
    v15[1] = v5;
    v15[2] = v4;
    v15[3] = v3;
    OUTLINED_FUNCTION_170();
  }

  else
  {
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_170();

    sub_1D7E7ECA0(v16, v17, v18);
  }
}

void sub_1D7E7E098(uint64_t a1)
{
  if (!qword_1EDBB2D80)
  {
    type metadata accessor for CGRect();
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2D80);
    }
  }
}

void sub_1D7E7E100(uint64_t a1)
{
  if (!qword_1EDBB2D90)
  {
    sub_1D7E188DC(255, &unk_1EDBB32F8);
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2D90);
    }
  }
}

unint64_t sub_1D7E7E1D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1D7E7E238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_25_2(a1, a2);
  sub_1D7E7E198(v7);
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v9 = OUTLINED_FUNCTION_79_0();
  v10 = a4(v9);
  v11 = OUTLINED_FUNCTION_29_2(v10);
  if (v11)
  {
    v14 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v14);
    OUTLINED_FUNCTION_31_2();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  OUTLINED_FUNCTION_88_0(v11, v12, v13, *v4);
  OUTLINED_FUNCTION_169();
}

void sub_1D7E7E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_144();
  v12 = OUTLINED_FUNCTION_25_2(v10, v11);
  sub_1D7E7E198(v12);
  OUTLINED_FUNCTION_4_10();
  if (v14)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v15 = v13;
  sub_1D7E7E44C();
  if (OUTLINED_FUNCTION_29_2(v16))
  {
    v17 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v17);
    OUTLINED_FUNCTION_26_1();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_139();

    sub_1D7EF71F8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_139();

    sub_1D7E7FC80(v22, v23, v24, v25);
  }
}

void sub_1D7E7E44C()
{
  if (!qword_1EDBB2DA0)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DA0);
    }
  }
}

void *sub_1D7E7E4AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  memcpy(__dst, (v0 + 64), 0x235uLL);
  sub_1D7E4C1A0(__dst);

  return v0;
}

uint64_t sub_1D7E7E4FC(double a1, double a2, double a3, double a4)
{
  if (*(v4 + 56))
  {
    MaxY = CGRectGetMaxY(*&a1);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_37();
    v21 = MaxY;
  }

  else
  {
    MaxX = CGRectGetMaxX(*&a1);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_37();
    v14 = MaxX;
  }

  return sub_1D7E79998(v14, v21, v15, v16, v17, v18, v19, v20, v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
}

uint64_t sub_1D7E7E594()
{
  sub_1D7E7E4AC();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7E7E5EC(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1D818E994();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1D7E72E88(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
    v10 = sub_1D8190ED4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_1D7E7E7A8()
{
  OUTLINED_FUNCTION_10_9();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = sub_1D7E7E198(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

uint64_t sub_1D7E7E8B8(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1D7E7EA50(a1, a2, a3, a4);
  return v8;
}

void sub_1D7E7E920(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D7E7E898(0, v5, 0);
    v8 = v15;
    for (i = a3 + 32; ; i += 40)
    {
      a1(&v14, i);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v14;
        sub_1D7E7E898(v11 > 1, v12 + 1, 1);
        v10 = v13;
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 16 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t *sub_1D7E7EA50(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v9 = *v5;
  v10 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D818E794();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v23, a2, sizeof(v23));
  memcpy(v24, a3, sizeof(v24));
  sub_1D818E784();
  v15 = sub_1D818E764();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v5[2] = v15;
  v5[3] = v17;
  swift_weakInit();
  v18 = *(v9 + 96);
  v22[0] = *(v9 + 80);
  v22[1] = v18;
  type metadata accessor for BlueprintLayoutTransition.SidecarKey(0, v22);
  swift_getWitnessTable();
  v5[310] = sub_1D8190D24();
  sub_1D818EDD4();
  sub_1D818EE04();
  swift_allocObject();
  v5[311] = sub_1D818EDF4();
  memcpy(v5 + 4, a1, 0x260uLL);
  memcpy(v5 + 80, v23, 0x4E8uLL);
  memcpy(v5 + 237, v24, 0x235uLL);
  v5[308] = v21;
  return v5;
}

void sub_1D7E7ECA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v3) = v5;
  v6 = (v4[7] + 32 * v3);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v13);
  }
}

uint64_t sub_1D7E7ED00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7E7ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7E7E198(a1);
  v6 = v5;
  v7 = 0uLL;
  v8 = 0uLL;
  if (v5)
  {
    v9 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D7E7E098(0);
    sub_1D8192374();
    v10 = (*(v13 + 56) + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    type metadata accessor for CGRect();
    result = sub_1D8192384();
    v7 = v11;
    v8 = v12;
    *v2 = v13;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = (v6 & 1) == 0;
  return result;
}

uint64_t sub_1D7E7EE40()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_3_98();
  *v4 = v3;
  *v4 = *v1;
  v3[589] = v5;
  v3[590] = v0;

  if (v0)
  {
    memcpy(v3 + 286, v3 + 144, 0x235uLL);
    sub_1D7E4C1A0((v3 + 286));
  }

  else
  {
    memcpy(v3 + 357, v3 + 144, 0x235uLL);
    sub_1D7E4C1A0((v3 + 357));
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D7E7EFA4()
{
  v2 = *(*(v0 + 4616) + 584);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 4680);
  v5 = *(v0 + 4672);
  v36 = *(v0 + 4640);
  v6 = *(v0 + 4608);
  sub_1D7E9EBD8(0, &qword_1ECA10420, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6720]);
  v35 = *(v6 + 600);
  v7 = (v2 + 32);
  v34 = *(v5 + 16);
  v33 = v4 + 7;
  v8 = v5;
  do
  {
    v40 = *(v0 + 4712);
    v9 = *(v0 + 4688);
    v10 = *(v0 + 4664);
    v11 = *(v0 + 4656);
    v37 = *(v0 + 4648);
    v38 = *(v0 + 4608);
    v12 = *(v0 + 4600);
    memcpy((v0 + 16), v7, 0x235uLL);
    v34(v9, v12, v10);
    v13 = (*(v8 + 80) + 629) & ~*(v8 + 80);
    v1 = (v33 + v13) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 2) = v36[10];
    *(v14 + 3) = v11;
    *(v14 + 4) = v36[12];
    *(v14 + 5) = v36[13];
    *(v14 + 6) = v37;
    *(v14 + 7) = v36[15];
    memcpy(v14 + 64, (v0 + 16), 0x235uLL);
    (*(v8 + 32))(&v14[v13], v9, v10);
    *&v14[v1] = v38;
    *&v14[(v1 + 15) & 0xFFFFFFFFFFFFFFF8] = v40;
    sub_1D7E222B8(v0 + 16, v0 + 3424);
    sub_1D7E222B8(v0 + 16, v0 + 3992);

    v15 = sub_1D818F4C4();
    sub_1D8190DB4();
    v16 = sub_1D8190EE4();

    [v15 setName_];

    [v35 addOperation_];
    sub_1D7E4C1A0(v0 + 16);
    v7 += 568;
    --v3;
  }

  while (v3);
  if ((sub_1D7E3A3F4() & 1) == 0)
  {
    v27 = *(v0 + 4608);
    *(v0 + 4728) = CACurrentMediaTime();
    *(v0 + 4736) = *(v27 + 584);
    v28 = sub_1D81919E4();
    v29._object = 0x80000001D81D2BB0;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    BlueprintPipelineRecorder.log(_:type:)(v29, v28);

    v30 = swift_task_alloc();
    *(v0 + 4744) = v30;
    *v30 = v0;
    v30[1] = sub_1D808B5D0;
    v31 = *(v0 + 4608);
    v32 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE44AD8](v30, &unk_1D81B5990, v31, v32);
  }

  else
  {
LABEL_5:
    v41 = *(v0 + 4712);
    v39 = *(v0 + 4648);
    v42 = *(v0 + 4608);
    v17 = *(v0 + 4592);
    OUTLINED_FUNCTION_0_8();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_24_21(v18);
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_7_54(v19)[9] = v41;
    OUTLINED_FUNCTION_0_8();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_24_21(v20);
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_18_31(v21, v39);
    v23 = OUTLINED_FUNCTION_5_56(v22, v42);
    *v17 = v24;
    v17[1] = v1;
    v17[2] = sub_1D7E89128;
    v17[3] = v23;

    OUTLINED_FUNCTION_5_37();

    return v25();
  }
}

uint64_t sub_1D7E7F440()
{
  v1 = OUTLINED_FUNCTION_129();
  v2 = OUTLINED_FUNCTION_129();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v21 = v1;
  v22 = v2;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v5 = type metadata accessor for Blueprint(0, &v21);
  v20 = *(*(v5 - 8) + 80);

  sub_1D7E57C40(*(v0 + 304), *(v0 + 312), *(v0 + 320));
  sub_1D7E57C40(*(v0 + 328), *(v0 + 336), *(v0 + 344));
  sub_1D7E57C40(*(v0 + 352), *(v0 + 360), *(v0 + 368));
  v6 = v0 + ((v20 + 629) & ~v20);

  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
  }

  v7 = *(v5 + 56);
  v21 = v1;
  v22 = v2;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v8 = type metadata accessor for BlueprintSection(255, &v21);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v11 + 8))(v6 + v7);
  v12 = *(v5 + 60);
  v14 = type metadata accessor for BlueprintItem(255, v2, v4, v13);
  OUTLINED_FUNCTION_7_5();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v21 = v8;
  v22 = v14;
  v23 = v15;
  v24 = WitnessTable;
  v25 = v10;
  v26 = v16;
  v27 = v17;
  sub_1D818F784();
  OUTLINED_FUNCTION_4_3();
  (*(v18 + 8))(v6 + v12);

  return swift_deallocObject();
}

uint64_t sub_1D7E7F744()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E7F778()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7F7B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7F800()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_3_98();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 2376) = v0;

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

unint64_t sub_1D7E7F908()
{
  result = qword_1EDBB0970;
  if (!qword_1EDBB0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0970);
  }

  return result;
}

uint64_t sub_1D7E7F95C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_5_37();

  return v0();
}

uint64_t sub_1D7E7F9B4()
{
  memcpy(__dst, (v0 + 16), 0x235uLL);
  sub_1D7E4C1A0(__dst);

  return v0;
}

void sub_1D7E7F9FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_13(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v8, v9);
  }
}

uint64_t sub_1D7E7FA30()
{
  sub_1D7E7F9B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E7FA64()
{
  OUTLINED_FUNCTION_9_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_12();
  v5 = v4;
  OUTLINED_FUNCTION_21_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v8 = v7;
  *(v5 + 352) = v0;

  if (!v0)
  {
    *(v5 + 360) = v3;
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D7E7FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_100_2();
  v27 = v12[45];
  v13 = v12[32];
  v15 = v12[30];
  v14 = v12[31];
  v17 = v12[19];
  v16 = v12[20];
  (*(v12[37] + 8))(v12[40], v12[33]);
  (*(v14 + 16))(v13, v16, v15);
  sub_1D7E7FD28(v13, v27, v17);

  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

void sub_1D7E7FC80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  memcpy((*(v6 + 56) + 160 * v5), v8, 0xA0uLL);
  OUTLINED_FUNCTION_7_22();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

uint64_t sub_1D7E7FD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_0_98();
  v8 = type metadata accessor for BlueprintModifierResult(v6, v7);
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  v9 = OUTLINED_FUNCTION_0_98();
  result = type metadata accessor for BlueprintPipelineProcessingResult(v9, v10);
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_1D7E7FDDC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_5_37();

    return v10();
  }
}

uint64_t sub_1D7E7FF00()
{
  memcpy(__dst, (v0 + 24), 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_128_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D7E7FFB0()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0x3D746C757365727BLL, 0xE800000000000000);
  v0 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintModifierResult(v0, v1);
  swift_getWitnessTable();
  sub_1D8192604();
  MEMORY[0x1DA713260](0x74696D6D6F63202CLL, 0xEA00000000003D73);
  v2 = sub_1D81925B4();
  MEMORY[0x1DA713260](v2);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7E800F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D7E801F0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = swift_task_alloc();
  v0[27] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[28] = v5;
  *v5 = v6;
  v5[1] = sub_1D7E94F7C;
  OUTLINED_FUNCTION_101_2();

  return (sub_1D7E8031C)();
}

uint64_t Then.__deallocating_deinit()
{
  Then.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E8031C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 273) = a3;
  *(v6 + 272) = a2;
  *(v6 + 96) = a1;
  *(v6 + 104) = a4;
  v7 = sub_1D818FDC4();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_1D818FD84();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E804C4, 0, 0);
}

void sub_1D7E804C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_64_6();
  *(v10 + 208) = OBJC_IVAR____TtC5TeaUI25BlueprintPipelineRecorder_signposter;
  v12 = sub_1D7E55B54(*(v10 + 272));
  v14 = v13;
  *(v10 + 216) = v12;
  *(v10 + 274) = v13;
  sub_1D818FD94();
  sub_1D818FD64();
  v15 = sub_1D818FD94();
  sub_1D8191B34();
  if (sub_1D8191E34())
  {
    if ((v14 & 1) == 0)
    {
      if (v12)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_8_26();
        *v17 = 0;
        v18 = sub_1D818FD74();
        OUTLINED_FUNCTION_113_1(&dword_1D7DFF000, v19, v20, v18, v21, "");
        MEMORY[0x1DA715D00](v17, -1, -1);
        goto LABEL_9;
      }

      __break(1u);
    }

    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      if (v16)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v12 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_46_10();
  v22();
  v23 = sub_1D818FDF4();
  OUTLINED_FUNCTION_8_5(v23);
  *(v10 + 224) = OUTLINED_FUNCTION_135_2();
  *(v10 + 232) = *(v11 + 8);
  *(v10 + 240) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24 = OUTLINED_FUNCTION_87_0();
  v25(v24);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_62();
  *(v10 + 248) = sub_1D7E55D2C(v26, v27, v28, v29);
  OUTLINED_FUNCTION_39_9();
  v41 = v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v10 + 256) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_104_2(v31);
  OUTLINED_FUNCTION_134_2();

  v34(v33, v34, v35, v36, v37, v38, v39, v40, v41, a10);
}

void *_s5TeaUI16StatusBannerablePAAE26statusBannerViewControllerAA0cF19VisibilityProviding_So06UIViewH0CXcSgvg_0()
{
  type metadata accessor for StatusBannerContainerController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController);
    v3 = v2;
  }

  else
  {
    v4 = [v0 ts_parentVC];
    if (v4)
    {
      v5 = v4;
      v2 = _s5TeaUI16StatusBannerablePAAE26statusBannerViewControllerAA0cF19VisibilityProviding_So06UIViewH0CXcSgvg_0();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for BlueprintItem(0, v4, a1, a4);
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1D81922B4();
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return sub_1D818FDE4();
}

double sub_1D7E80824()
{

  v0 = sub_1D818F214();
  sub_1D7E734B0(v0);

  v1 = sub_1D818F214();
  sub_1D7E80A18(v1);

  return result;
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return type metadata accessor for Blueprint(0, v0 - 120);
}

void OUTLINED_FUNCTION_103_3(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LOBYTE(STACK[0x528]) = a1;

  sub_1D80E9C84(&STACK[0x528], a8);
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return BlueprintProviderType.blueprint.getter(v0, v1);
}

uint64_t sub_1D7E80970()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_61_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_64();

  return sub_1D7E80BA0(v3, v4, v5, v6);
}

Swift::Void __swiftcall Debounce.invalidate()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    [v1 invalidate];
  }
}

uint64_t sub_1D7E80A18(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1D818F8B4();
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    v6 = *(v3 + 8);

    v6(sub_1D7E9DFC4, v5, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_1D7E80B28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E80B60()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E80BA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  *v8 = v4;
  v8[1] = sub_1D7E5B0D4;

  return sub_1D7E80CE4(a1, a3, a4, AssociatedTypeWitness, v10);
}

uint64_t sub_1D7E80CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a2;
  v6[12] = a4;
  v6[10] = a1;
  v6[15] = *v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = AssociatedConformanceWitness;
  v6[5] = v10;
  v11 = type metadata accessor for BlueprintPipelineUpdate.Action(0, (v6 + 2));
  v6[16] = v11;
  v6[17] = *(v11 - 8);
  v6[18] = swift_task_alloc();
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = AssociatedConformanceWitness;
  v6[9] = v10;
  v12 = type metadata accessor for BlueprintPipelineUpdate(255, (v6 + 6));
  v6[19] = v12;
  v13 = sub_1D8191E84();
  v6[20] = v13;
  v6[21] = *(v13 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = *(v12 - 8);
  v6[24] = swift_task_alloc();
  sub_1D8191534();
  v6[25] = sub_1D8191524();
  v15 = sub_1D81914D4();
  v6[26] = v15;
  v6[27] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D7E81964, v15, v14);
}

void Debounce.run(finished:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 5);
  if (v6)
  {
    [v6 invalidate];
  }

  v7 = objc_opt_self();
  v8 = v2[2];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(*&v5 + 80);
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v14[4] = sub_1D7FEFB78;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7F845F8;
  v14[3] = &block_descriptor_37;
  v11 = _Block_copy(v14);

  v12 = [v7 scheduledTimerWithTimeInterval:0 repeats:v11 block:v8];
  _Block_release(v11);
  v13 = *(v2 + 5);
  *(v2 + 5) = v12;
}

uint64_t sub_1D7E81124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E8115C()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7E811AC(void *a1)
{
  v2 = sub_1D7E813FC();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v27 = v2;
    sub_1D7E81424(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v28 = v5;
      sub_1D7E81698(319);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        v29 = v7;
        v30 = v3;
        sub_1D7E817D8();
        v3 = v9;
        if (v10 <= 0x3F)
        {
          v31 = v9;
          MEMORY[0x1EEE9AC00](v9);
          v11 = a1[2];
          v12 = a1[3];
          v13 = a1[4];
          v14 = a1[5];
          v23 = v11;
          v24 = v12;
          v25 = v13;
          v26 = v14;
          v23 = type metadata accessor for Blueprint(255, &v23);
          v24 = sub_1D7E81588();
          sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
          v25 = v15;
          v26 = MEMORY[0x1E69E6370];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v3 = TupleTypeMetadata;
          if (v17 <= 0x3F)
          {
            v32 = TupleTypeMetadata;
            v23 = v11;
            v24 = v12;
            v25 = v13;
            v26 = v14;
            type metadata accessor for Blueprint(255, &v23);
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v3 = TupleTypeMetadata2;
            if (v19 <= 0x3F)
            {
              v33 = TupleTypeMetadata2;
              v20 = swift_getTupleTypeMetadata2();
              v3 = v20;
              if (v21 <= 0x3F)
              {
                v34 = v20;
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

ValueMetadata *sub_1D7E813FC()
{
  result = qword_1EDBBA0D8;
  if (!qword_1EDBBA0D8)
  {
    result = &type metadata for BlueprintAnimation;
    atomic_store(&type metadata for BlueprintAnimation, &qword_1EDBBA0D8);
  }

  return result;
}

void sub_1D7E81424(uint64_t a1)
{
  if (!qword_1EDBBA680)
  {
    sub_1D7E81588();
    sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBA680);
    }
  }
}

unint64_t sub_1D7E81588()
{
  result = qword_1EDBBA670;
  if (!qword_1EDBBA670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBA670);
  }

  return result;
}

void sub_1D7E815E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_14();
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E81634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E81698(uint64_t a1)
{
  if (!qword_1EDBBA688)
  {
    sub_1D7E81588();
    sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBBA688);
    }
  }
}

void sub_1D7E817D8()
{
  if (!qword_1EDBBA678)
  {
    v0 = sub_1D7E81588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBA678);
    }
  }
}

unint64_t sub_1D7E81880(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v15 = v1;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  result = type metadata accessor for BlueprintPipelineUpdate.Action(319, &v15);
  if (v6 <= 0x3F)
  {
    v11 = 0;
    v15 = result;
    result = sub_1D7E31228();
    if (v7 <= 0x3F)
    {
      v12 = 0;
      v16 = result;
      v17 = result;
      result = type metadata accessor for BlueprintBookmark(319);
      if (v8 <= 0x3F)
      {
        v13 = 0;
        v18 = result;
        v10[0] = v1;
        v10[1] = v2;
        v10[2] = v3;
        v10[3] = v4;
        result = type metadata accessor for Blueprint(319, v10);
        if (v9 <= 0x3F)
        {
          v14 = 0;
          v19 = result;
          v20 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D7E81964()
{
  OUTLINED_FUNCTION_100_2();
  sub_1D7E81BE0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 176));
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  if (OUTLINED_FUNCTION_116_0(v1) == 1)
  {
    v3 = *(v0 + 80);

    v4 = OUTLINED_FUNCTION_112();
    v5(v4);
    *v3 = 0;
    OUTLINED_FUNCTION_112_2();

    OUTLINED_FUNCTION_5_37();

    return v6();
  }

  else
  {
    v8 = *(v0 + 120);
    (*(*(v0 + 184) + 32))(*(v0 + 192), v1, v2);
    v9 = *(v8 + 104);
    v10 = *(v8 + 88);
    v11 = OUTLINED_FUNCTION_110();
    v12(v11);
    v15 = (*(v9 + 56) + **(v9 + 56));
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_1D7E94808;
    v14 = *(v0 + 192);

    return v15(v14, v10, v9);
  }
}

uint64_t sub_1D7E81BE0@<X0>(uint64_t (*a1)(uint64_t a1, uint64_t a2)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v594 = a1;
  v574 = a4;
  v7 = *v4;
  v579 = *(*v4 + 96);
  v578 = *(v7 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  *&v587 = a2;
  *(&v587 + 1) = a3;
  *&v588 = AssociatedConformanceWitness;
  *(&v588 + 1) = v9;
  v568 = type metadata accessor for BlueprintPipelineUpdate.Action(0, &v587);
  MEMORY[0x1EEE9AC00](v568);
  v570 = &v548 - v10;
  v571 = type metadata accessor for BlueprintBookmark(0);
  MEMORY[0x1EEE9AC00](v571);
  v554 = &v548 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v559 = &v548 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v550 = &v548 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v560 = &v548 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v549 = &v548 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v567 = &v548 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v566 = (&v548 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v557 = &v548 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v572 = &v548 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v563 = (&v548 - v29);
  *&v587 = a2;
  *(&v587 + 1) = a3;
  *&v588 = AssociatedConformanceWitness;
  *(&v588 + 1) = v9;
  v30 = type metadata accessor for BlueprintModifierResult(0, &v587);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v548 - v32);
  *&v580 = a2;
  *(&v580 + 1) = a3;
  *&v587 = a2;
  *(&v587 + 1) = a3;
  v581 = AssociatedConformanceWitness;
  *&v588 = AssociatedConformanceWitness;
  *(&v588 + 1) = v9;
  v575 = v9;
  v34 = type metadata accessor for Blueprint(0, &v587);
  v35 = *(v34 - 8);
  v582 = v34;
  v583 = v35;
  MEMORY[0x1EEE9AC00](v34);
  v556 = &v548 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v558 = &v548 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v555 = &v548 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v565 = &v548 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v548 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v552 = &v548 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v562 = &v548 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v553 = &v548 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v564 = &v548 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v551 = &v548 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v561 = &v548 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v548 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v548 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v569 = &v548 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v576 = &v548 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v548 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v573 = v4;
  v577 = (&v548 - v72);
  BlueprintProviderType.blueprint.getter(v578, v579);
  (*(v31 + 16))(v33, v594, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v229 = v582;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v231 = *(TupleTypeMetadata3 + 48);
      v232 = v33 + *(TupleTypeMetadata3 + 64);
      v233 = v583;
      v234 = v33;
      v235 = *(v583 + 2);
      v235(v63, v234, v229);
      v579 = v234;
      v578 = v231;
      v236 = v557;
      sub_1D7E2B108(v231 + v234, v557);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
        swift_getTupleTypeMetadata2();
        v571 = v232;
        v237 = v570;
        v235(v570, v63, v229);
        v238 = v577;
        - infix<A, B>(_:_:)(v63, v577, v580, *(&v580 + 1), v581, v575);
        swift_storeEnumTagMultiPayload();
        v239 = v594;
        v568 = sub_1D7E859F8(v63, v594);
        v567 = v240;
        v594 = sub_1D7E86B60(v239);
        v573 = v241;
        v242 = v572;
        sub_1D7E85994(v236, v572);
        v243 = v229;
        v244 = *(v233 + 4);
        v245 = v576;
        v244(v576, v238, v243);
        v246 = v569;
        v244(v569, v63, v243);
        v247 = v575;
        v547[1] = v575;
        v248 = v581;
        v547[0] = v581;
        v249 = *(&v580 + 1);
        v250 = v580;
        v546 = v580;
        v251 = v574;
        sub_1D7E87FD8(v237, v568, v567, v594, v573, v242, v245, v246, v574);
        *&v587 = v250;
        *(&v587 + 1) = v249;
        *&v588 = v248;
        *(&v588 + 1) = v247;
        v252 = type metadata accessor for BlueprintPipelineUpdate(0, &v587);
        __swift_storeEnumTagSinglePayload(v251, 0, 1, v252);
        sub_1D8022FD0(v571);
        goto LABEL_22;
      }

      sub_1D7E2BBA0(v236);
      (*(v233 + 1))(v63, v229);
      v353 = *(v233 + 4);
      v354 = v576;
      v355 = v579;
      v353(v576, v579, v229);
      sub_1D7E85994(v578 + v355, v572);
      v356 = *(v232 + 1);
      v587 = *v232;
      v588 = v356;
      v589 = *(v232 + 2);
      v357 = v570;
      sub_1D8022F74(&v587, v570);
      swift_storeEnumTagMultiPayload();
      v358 = v354;
      v359 = v594;
      v583 = sub_1D7E859F8(v358, v594);
      v579 = v360;
      sub_1D8022FD0(&v587);
      v361 = sub_1D7E86B60(v359);
      v363 = v362;
      v364 = v569;
      v353(v569, v577, v229);
      v119 = v575;
      v547[1] = v575;
      v120 = v581;
      v547[0] = v581;
      v121 = *(&v580 + 1);
      v122 = v580;
      v546 = v580;
      v123 = v574;
      v124 = v574;
      v125 = v357;
      v126 = v583;
      v127 = v579;
      v128 = v361;
      v129 = v363;
      v130 = v572;
      v131 = v364;
      goto LABEL_46;
    case 2:
      v175 = v582;
      v176 = *(swift_getTupleTypeMetadata2() + 48);
      v177 = v583;
      v178 = *(v583 + 2);
      v178(v60, v33, v175);
      v179 = v566;
      sub_1D7E2B108(v176 + v33, v566);
      v180 = *(v573 + *(*v573 + 168));
      v579 = v33;
      if (v180 == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
        swift_getTupleTypeMetadata2();
        v181 = v570;
        v178(v570, v60, v175);
        v182 = v577;
        v578 = v176;
        v183 = v575;
        - infix<A, B>(_:_:)(v60, v577, v580, *(&v580 + 1), v581, v575);
        swift_storeEnumTagMultiPayload();
        v184 = v594;
        v571 = sub_1D7E859F8(v60, v594);
        v568 = v185;
        v594 = sub_1D7E86B60(v184);
        v573 = v186;
        v187 = v572;
        sub_1D7E85994(v566, v572);
        v188 = *(v177 + 4);
        v189 = v576;
        v188(v576, v182, v175);
        v190 = v569;
        v188(v569, v60, v175);
        v547[1] = v183;
        v191 = v581;
        v547[0] = v581;
        v192 = *(&v580 + 1);
        v193 = v580;
        v546 = v580;
        v194 = v574;
        sub_1D7E87FD8(v181, v571, v568, v594, v573, v187, v189, v190, v574);
        *&v587 = v193;
        *(&v587 + 1) = v192;
        *&v588 = v191;
        *(&v588 + 1) = v183;
        v94 = type metadata accessor for BlueprintPipelineUpdate(0, &v587);
        v95 = v194;
        goto LABEL_13;
      }

      sub_1D7E2BBA0(v179);
      (*(v177 + 1))(v60, v175);
      v322 = *(v177 + 4);
      v323 = v576;
      v324 = v579;
      v322(v576, v579, v175);
      sub_1D7E85994(v176 + v324, v572);
      v325 = v570;
      swift_storeEnumTagMultiPayload();
      v326 = v594;
      v583 = sub_1D7E859F8(v323, v594);
      v579 = v327;
      v328 = sub_1D7E86B60(v326);
      v594 = v329;
      v330 = v569;
      v322(v569, v577, v175);
      goto LABEL_43;
    case 3:
      v195 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v196 = v582;
      v566 = v195;
      v197 = swift_getTupleTypeMetadata3();
      v198 = *(v197 + 48);
      v199 = *(v197 + 64);
      v200 = v583;
      v201 = v561;
      v571 = *(v583 + 2);
      (v571)(v561, v33, v196);
      sub_1D7E0E768(&v198[v33], &v587);
      v578 = v199;
      v202 = v199 + v33;
      v203 = v567;
      sub_1D7E2B108(v202, v567);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        v565 = v198;
        v579 = v33;
        v204 = *(&v588 + 1);
        v205 = v589;
        __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
        v206 = (*(v205 + 96))(v204, v205);
        v207 = v577;
        if (v206)
        {
          sub_1D7E2BBA0(v567);
          v208 = *(v583 + 1);
          v208(v561, v196);
          v208(v207, v196);
          v590 = v580;
          v591 = v581;
          v592 = v575;
          v209 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v574, 1, 1, v209);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          v210 = v579;
          sub_1D7E2BBA0(v578 + v579);
          __swift_destroy_boxed_opaque_existential_1Tm(&v565[v210]);
          v211 = v210;
          v212 = v196;
          return (v208)(v211, v212);
        }

        v420 = v196;
        v421 = *(swift_getTupleTypeMetadata2() + 48);
        v422 = v570;
        v423 = v561;
        (v571)(v570, v561, v196);
        sub_1D7E0E768(&v587, v422 + v421);
        swift_storeEnumTagMultiPayload();
        v424 = v594;
        v571 = sub_1D7E859F8(v423, v594);
        v568 = v425;
        v594 = sub_1D7E86B60(v424);
        v573 = v426;
        v427 = v572;
        sub_1D7E85994(v567, v572);
        v428 = *(v583 + 4);
        v429 = v576;
        v428(v576, v207, v420);
        v430 = v569;
        v428(v569, v423, v420);
        v431 = v575;
        v547[1] = v575;
        v432 = v581;
        v547[0] = v581;
        v433 = *(&v580 + 1);
        v434 = v580;
        v546 = v580;
        v435 = v574;
        sub_1D7E87FD8(v422, v571, v568, v594, v573, v427, v429, v430, v574);
        *&v590 = v434;
        *(&v590 + 1) = v433;
        v591 = v432;
        v592 = v431;
        v436 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
        __swift_storeEnumTagSinglePayload(v435, 0, 1, v436);
        __swift_destroy_boxed_opaque_existential_1Tm(&v587);
        v253 = v579;
        sub_1D7E2BBA0(v578 + v579);
        v417 = &v590 + 1;
        goto LABEL_66;
      }

      sub_1D7E2BBA0(v203);
      v331 = *(v200 + 1);
      v331(v201, v196);
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v332 = *(v200 + 4);
      v333 = v551;
      v583 = (v200 + 32);
      v579 = v332;
      (v332)(v551, v33, v196);
      sub_1D7E17C84(&v198[v33], &v587);
      v334 = v549;
      sub_1D7E85994(v578 + v33, v549);
      v335 = *(&v588 + 1);
      v336 = v589;
      __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
      v337 = (*(v336 + 96))(v335, v336);
      v338 = v577;
      if (v337)
      {
        sub_1D7E2BBA0(v334);
        v331(v333, v196);
        v331(v338, v196);
        goto LABEL_55;
      }

      swift_getWitnessTable();
      if (sub_1D8191874())
      {
        v437 = v570;
      }

      else
      {
        v437 = v570;
        sub_1D7E0E768(&v587, v570);
        *(v437 + 40) = 0;
      }

      swift_storeEnumTagMultiPayload();
      v535 = v551;
      v536 = v594;
      v578 = sub_1D7E859F8(v551, v594);
      v571 = v537;
      v594 = sub_1D7E86B60(v536);
      v573 = v538;
      v381 = v572;
      sub_1D7E85994(v334, v572);
      v382 = v576;
      v539 = v579;
      (v579)(v576, v338, v196);
      v383 = v569;
      (v539)(v569, v535, v196);
      v384 = v575;
      v547[1] = v575;
      v385 = v581;
      v547[0] = v581;
      v386 = *(&v580 + 1);
      v387 = v580;
      v546 = v580;
      v388 = v574;
      v389 = v574;
      v390 = v437;
      v391 = v578;
      goto LABEL_80;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v548 - 6, "blueprint diff bookmark", 23);
      BYTE7(v546) = 32;
      strcpy(v547, "n ");
      *(&v546 + 1) = *"animation ";
      v132 = v582;
      *&v587 = v582;
      v567 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      *(&v587 + 1) = v567;
      *&v588 = v571;
      *(&v588 + 1) = &type metadata for BlueprintAnimation;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v134 = TupleTypeMetadata[12];
      v135 = TupleTypeMetadata[16];
      v136 = (v33 + TupleTypeMetadata[20]);
      v137 = v583;
      v138 = *(v583 + 2);
      v139 = v564;
      v578 = (v583 + 16);
      v571 = v138;
      (v138)(v564, v33, v132);
      sub_1D7E0E768(v33 + v134, &v587);
      v140 = v560;
      sub_1D7E2B108(&v135[v33], v560);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        v563 = v136;
        v565 = v135;
        v566 = v134;
        v579 = v33;
        v141 = *(&v588 + 1);
        v142 = v589;
        __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
        v143 = (*(v142 + 96))(v141, v142);
        if (v143)
        {
          sub_1D7E2BBA0(v140);
          v144 = v582;
          v145 = *(v583 + 1);
          v145(v564, v582);
          v145(v577, v144);
          v590 = v580;
          v591 = v581;
          v592 = v575;
          v146 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v574, 1, 1, v146);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          sub_1D8022FD0(v563);
          v147 = v579;
          sub_1D7E2BBA0(&v565[v579]);
          __swift_destroy_boxed_opaque_existential_1Tm((v566 + v147));
          return (v145)(v147, v144);
        }

        MEMORY[0x1EEE9AC00](v143);
        qmemcpy(&v548 - 6, "blueprint diff response", 23);
        BYTE7(v546) = 32;
        strcpy(v547, " ");
        *(&v546 + 1) = *"animated ";
        v395 = v582;
        *&v590 = v582;
        *(&v590 + 1) = v567;
        sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
        v591 = v396;
        v592 = MEMORY[0x1E69E6370];
        v397 = swift_getTupleTypeMetadata();
        v398 = v397[12];
        v399 = v397[16];
        v400 = v397[20];
        v401 = v570;
        v402 = v564;
        (v571)(v570, v564, v395);
        sub_1D7E0E768(&v587, v401 + v398);
        *(v401 + v399) = 0;
        *(v401 + v400) = 1;
        swift_storeEnumTagMultiPayload();
        v403 = v594;
        v578 = sub_1D7E859F8(v402, v594);
        v571 = v404;
        v594 = sub_1D7E86B60(v403);
        v573 = v405;
        v406 = v572;
        sub_1D7E85994(v140, v572);
        v407 = *(v583 + 4);
        v408 = v576;
        v409 = v395;
        v407(v576, v577, v395);
        v410 = v569;
        v407(v569, v402, v409);
        v411 = v575;
        v547[1] = v575;
        v412 = v581;
        v547[0] = v581;
        v413 = *(&v580 + 1);
        v414 = v580;
        v546 = v580;
        v415 = v574;
        sub_1D7E87FD8(v401, v578, v571, v594, v573, v406, v408, v410, v574);
        *&v590 = v414;
        *(&v590 + 1) = v413;
        v591 = v412;
        v592 = v411;
        v416 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
        __swift_storeEnumTagSinglePayload(v415, 0, 1, v416);
        __swift_destroy_boxed_opaque_existential_1Tm(&v587);
        sub_1D8022FD0(v563);
        v253 = v579;
        sub_1D7E2BBA0(&v565[v579]);
        v417 = &v591;
        goto LABEL_66;
      }

      sub_1D7E2BBA0(v140);
      v316 = *(v137 + 1);
      v316(v139, v132);
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v317 = v553;
      v583 = *(v137 + 4);
      (v583)(v553, v33, v132);
      sub_1D7E17C84((v33 + v134), &v590);
      v318 = v550;
      sub_1D7E85994(&v135[v33], v550);
      v319 = v136[1];
      v587 = *v136;
      v588 = v319;
      v589 = v136[2];
      v320 = v592;
      v321 = v593;
      __swift_project_boxed_opaque_existential_1(&v590, v592);
      if ((*(v321 + 96))(v320, v321))
      {
        sub_1D8022FD0(&v587);
        sub_1D7E2BBA0(v318);
        v316(v317, v132);
        v316(v577, v132);
        goto LABEL_41;
      }

      swift_getWitnessTable();
      v418 = v577;
      if (sub_1D8191874())
      {
        v419 = v570;
        sub_1D8022F74(&v587, v570);
      }

      else
      {
        v419 = v570;
        sub_1D7E0E768(&v590, v570);
        *(v419 + 40) = 0;
        sub_1D8022F74(&v587, v419 + 48);
      }

      swift_storeEnumTagMultiPayload();
      v523 = v553;
      v524 = v594;
      v579 = sub_1D7E859F8(v553, v594);
      v578 = v525;
      sub_1D8022FD0(&v587);
      v594 = sub_1D7E86B60(v524);
      v573 = v526;
      v465 = v572;
      sub_1D7E85994(v318, v572);
      v466 = v576;
      v527 = v418;
      v528 = v583;
      (v583)(v576, v527, v132);
      v468 = v569;
      (v528)(v569, v523, v132);
      goto LABEL_74;
    case 5:
      v254 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v255 = v582;
      v567 = v254;
      v256 = swift_getTupleTypeMetadata3();
      v257 = *(v256 + 48);
      v258 = *(v256 + 64);
      v259 = v583;
      v260 = v562;
      v578 = *(v583 + 2);
      (v578)(v562, v33, v255);
      sub_1D7E0E768(&v257[v33], &v587);
      v261 = v559;
      sub_1D7E2B108(v33 + v258, v559);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        v566 = v258;
        v571 = v257;
        v579 = v33;
        v262 = *(&v588 + 1);
        v263 = v589;
        __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
        v264 = (*(v263 + 96))(v262, v263);
        if (v264)
        {
          sub_1D7E2BBA0(v261);
          v208 = *(v583 + 1);
          v208(v562, v255);
          v208(v577, v255);
          v590 = v580;
          v591 = v581;
          v592 = v575;
          v265 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v574, 1, 1, v265);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          v266 = v579;
          sub_1D7E2BBA0(v566 + v579);
          __swift_destroy_boxed_opaque_existential_1Tm(&v571[v266]);
          v211 = v266;
          v212 = v255;
          return (v208)(v211, v212);
        }

        MEMORY[0x1EEE9AC00](v264);
        qmemcpy(&v548 - 6, "blueprint diff response", 23);
        BYTE7(v546) = 32;
        strcpy(v547, " ");
        *(&v546 + 1) = *"animated ";
        v469 = v255;
        *&v590 = v255;
        *(&v590 + 1) = v567;
        sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
        v591 = v470;
        v592 = MEMORY[0x1E69E6370];
        v471 = swift_getTupleTypeMetadata();
        v472 = v471[12];
        v473 = v471[16];
        v474 = v471[20];
        v475 = v261;
        v476 = v570;
        v477 = v562;
        (v578)(v570, v562, v255);
        sub_1D7E0E768(&v587, v476 + v472);
        *(v476 + v473) = 0;
        *(v476 + v474) = 0;
        swift_storeEnumTagMultiPayload();
        v478 = v594;
        v578 = sub_1D7E859F8(v477, v594);
        v568 = v479;
        v594 = sub_1D7E86B60(v478);
        v573 = v480;
        v481 = v475;
        v482 = v572;
        sub_1D7E85994(v481, v572);
        v483 = *(v583 + 4);
        v484 = v576;
        v483(v576, v577, v255);
        v485 = v569;
        v483(v569, v477, v469);
        v486 = v575;
        v547[1] = v575;
        v487 = v581;
        v547[0] = v581;
        v488 = *(&v580 + 1);
        v489 = v580;
        v546 = v580;
        v490 = v574;
        sub_1D7E87FD8(v476, v578, v568, v594, v573, v482, v484, v485, v574);
        *&v590 = v489;
        *(&v590 + 1) = v488;
        v591 = v487;
        v592 = v486;
        v491 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
        __swift_storeEnumTagSinglePayload(v490, 0, 1, v491);
        __swift_destroy_boxed_opaque_existential_1Tm(&v587);
        v253 = v579;
        sub_1D7E2BBA0(v566 + v579);
        v417 = &v594;
LABEL_66:
        __swift_destroy_boxed_opaque_existential_1Tm((*(v417 - 32) + v253));
        return (*(v583 + 1))(v253, v582);
      }

      sub_1D7E2BBA0(v261);
      v579 = *(v259 + 1);
      (v579)(v260, v255);
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v365 = *(v259 + 4);
      v366 = v552;
      v583 = (v259 + 32);
      v578 = v365;
      (v365)(v552, v33, v255);
      sub_1D7E17C84(&v257[v33], &v587);
      v367 = v554;
      sub_1D7E85994(v33 + v258, v554);
      v368 = *(&v588 + 1);
      v369 = v589;
      __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
      v370 = v255;
      if ((*(v369 + 96))(v368, v369))
      {
        sub_1D7E2BBA0(v367);
        v313 = v579;
        (v579)(v366, v255);
        v314 = v577;
        v315 = v255;
        goto LABEL_52;
      }

      swift_getWitnessTable();
      v492 = v577;
      if (sub_1D8191874())
      {
        v493 = v570;
      }

      else
      {
        v493 = v570;
        sub_1D7E0E768(&v587, v570);
        *(v493 + 40) = 0;
      }

      swift_storeEnumTagMultiPayload();
      v540 = v552;
      v541 = v594;
      v579 = sub_1D7E859F8(v552, v594);
      v571 = v542;
      v594 = sub_1D7E86B60(v541);
      v573 = v543;
      v381 = v572;
      sub_1D7E85994(v554, v572);
      v382 = v576;
      v544 = v255;
      v545 = v578;
      (v578)(v576, v492, v544);
      v383 = v569;
      (v545)(v569, v540, v370);
      v384 = v575;
      v547[1] = v575;
      v385 = v581;
      v547[0] = v581;
      v386 = *(&v580 + 1);
      v387 = v580;
      v546 = v580;
      v388 = v574;
      v389 = v574;
      v390 = v493;
      v391 = v579;
LABEL_80:
      v522 = &v594;
      goto LABEL_81;
    case 6:
      v294 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintViewActionResponse();
      v295 = v582;
      v296 = swift_getTupleTypeMetadata3();
      v297 = *(v296 + 48);
      v578 = *(v33 + *(v296 + 64));
      v298 = v583;
      v299 = *(v583 + 2);
      v300 = v565;
      v299(v565, v33, v295);
      sub_1D7E0E768(v33 + v297, &v587);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        v567 = v297;
        v579 = v33;
        v301 = *(&v588 + 1);
        v302 = v589;
        __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
        v303 = (*(v302 + 96))(v301, v302);
        if (v303)
        {

          v208 = *(v583 + 1);
          v208(v565, v295);
          v208(v577, v295);
          v590 = v580;
          v591 = v581;
          v592 = v575;
          v304 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v574, 1, 1, v304);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          v305 = v579;
          __swift_destroy_boxed_opaque_existential_1Tm((v579 + v567));
          v211 = v305;
          v212 = v295;
          return (v208)(v211, v212);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v303);
          qmemcpy(&v548 - 6, "blueprint diff response", 23);
          BYTE7(v546) = 32;
          strcpy(v547, " ");
          *(&v546 + 1) = *"animated ";
          *&v590 = v295;
          *(&v590 + 1) = v294;
          sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
          v591 = v494;
          v592 = MEMORY[0x1E69E6370];
          v495 = swift_getTupleTypeMetadata();
          v496 = v495[12];
          v497 = v495[16];
          v498 = v495[20];
          v499 = v570;
          v500 = v565;
          v299(v570, v565, v295);
          sub_1D7E0E768(&v587, v499 + v496);
          *(v499 + v497) = v578;
          *(v499 + v498) = 0;
          swift_storeEnumTagMultiPayload();
          v501 = v500;
          v502 = v594;
          v578 = sub_1D7E859F8(v500, v594);
          v568 = v503;
          v594 = sub_1D7E86B60(v502);
          v573 = v504;
          swift_storeEnumTagMultiPayload();
          v505 = v583;
          v506 = *(v583 + 4);
          v507 = v576;
          v506(v576, v577, v295);
          v508 = v569;
          v506(v569, v501, v295);
          v509 = v575;
          v547[1] = v575;
          v510 = v581;
          v547[0] = v581;
          v511 = *(&v580 + 1);
          v512 = v580;
          v546 = v580;
          v513 = v574;
          sub_1D7E87FD8(v499, v578, v568, v594, v573, v572, v507, v508, v574);
          *&v590 = v512;
          *(&v590 + 1) = v511;
          v591 = v510;
          v592 = v509;
          v514 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v513, 0, 1, v514);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          v515 = v579;
          __swift_destroy_boxed_opaque_existential_1Tm((v579 + v567));
          return (*(v505 + 1))(v515, v582);
        }
      }

      v371 = *(v298 + 1);
      v371(v300, v295);
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v583 = *(v298 + 4);
      (v583)(v555, v33, v295);
      sub_1D7E17C84((v33 + v297), &v587);
      v372 = *(&v588 + 1);
      v373 = v589;
      __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
      if ((*(v373 + 96))(v372, v373))
      {

        v371(v555, v295);
        v371(v577, v295);
        goto LABEL_55;
      }

      v516 = v570;
      sub_1D7E0E768(&v587, v570);
      *(v516 + 40) = v578;
      swift_storeEnumTagMultiPayload();
      v517 = v555;
      v518 = v594;
      v579 = sub_1D7E859F8(v555, v594);
      v578 = v519;
      v594 = sub_1D7E86B60(v518);
      v573 = v520;
      v381 = v572;
      swift_storeEnumTagMultiPayload();
      v382 = v576;
      v521 = v583;
      (v583)(v576, v577, v295);
      v383 = v569;
      (v521)(v569, v517, v295);
      v384 = v575;
      v547[1] = v575;
      v385 = v581;
      v547[0] = v581;
      v386 = *(&v580 + 1);
      v387 = v580;
      v546 = v580;
      v388 = v574;
      v389 = v574;
      v390 = v516;
      v391 = v579;
      v522 = &v596;
LABEL_81:
      v392 = *(v522 - 32);
      v393 = v594;
      v394 = &v595;
      goto LABEL_82;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v548 - 6, "blueprint diff response", 23);
      BYTE7(v546) = 32;
      strcpy(v547, "n ");
      *(&v546 + 1) = *"animation ";
      v213 = v582;
      *&v587 = v582;
      v214 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      *(&v587 + 1) = v214;
      *&v588 = type metadata accessor for BlueprintViewActionResponse();
      *(&v588 + 1) = &type metadata for BlueprintAnimation;
      v215 = swift_getTupleTypeMetadata();
      v578 = *(v33 + v215[16]);
      v216 = v215[12];
      v217 = (v33 + v215[20]);
      v218 = v583;
      v219 = *(v583 + 2);
      v220 = v558;
      v219(v558, v33, v213);
      sub_1D7E0E768(v33 + v216, &v587);
      if (*(v573 + *(*v573 + 168)) == 1)
      {
        v221 = v219;
        v566 = v217;
        v567 = v216;
        v579 = v33;
        v222 = *(&v588 + 1);
        v223 = v589;
        __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
        v224 = (*(v223 + 96))(v222, v223);
        if (v224)
        {

          v225 = v582;
          v226 = *(v583 + 1);
          v226(v220, v582);
          v226(v577, v225);
          v590 = v580;
          v591 = v581;
          v592 = v575;
          v227 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v574, 1, 1, v227);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          sub_1D8022FD0(v566);
          v228 = v579;
          __swift_destroy_boxed_opaque_existential_1Tm((v579 + v567));
          return (v226)(v228, v225);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v224);
          qmemcpy(&v548 - 6, "blueprint diff response", 23);
          BYTE7(v546) = 32;
          strcpy(v547, " ");
          *(&v546 + 1) = *"animated ";
          v438 = v582;
          *&v590 = v582;
          *(&v590 + 1) = v214;
          sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
          v591 = v439;
          v592 = MEMORY[0x1E69E6370];
          v440 = swift_getTupleTypeMetadata();
          v441 = v440[12];
          v442 = v440[16];
          v443 = v440[20];
          v444 = v220;
          v445 = v570;
          v221(v570, v444, v438);
          sub_1D7E0E768(&v587, v445 + v441);
          *(v445 + v442) = v578;
          *(v445 + v443) = 1;
          swift_storeEnumTagMultiPayload();
          v446 = v594;
          v578 = sub_1D7E859F8(v444, v594);
          v568 = v447;
          v594 = sub_1D7E86B60(v446);
          v573 = v448;
          swift_storeEnumTagMultiPayload();
          v450 = v582;
          v449 = v583;
          v451 = *(v583 + 4);
          v452 = v576;
          v451(v576, v577, v582);
          v453 = v569;
          v451(v569, v444, v450);
          v454 = v575;
          v547[1] = v575;
          v455 = v581;
          v547[0] = v581;
          v456 = *(&v580 + 1);
          v457 = v580;
          v546 = v580;
          v458 = v574;
          sub_1D7E87FD8(v445, v578, v568, v594, v573, v572, v452, v453, v574);
          *&v590 = v457;
          *(&v590 + 1) = v456;
          v591 = v455;
          v592 = v454;
          v459 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
          __swift_storeEnumTagSinglePayload(v458, 0, 1, v459);
          __swift_destroy_boxed_opaque_existential_1Tm(&v587);
          sub_1D8022FD0(v566);
          v460 = v579;
          __swift_destroy_boxed_opaque_existential_1Tm((v579 + v567));
          return (*(v449 + 1))(v460, v582);
        }
      }

      else
      {
        v339 = *(v218 + 1);
        v339(v220, v213);
        __swift_destroy_boxed_opaque_existential_1Tm(&v587);
        v583 = *(v218 + 4);
        (v583)(v556, v33, v213);
        sub_1D7E17C84((v33 + v216), &v590);
        v340 = v217[1];
        v587 = *v217;
        v588 = v340;
        v589 = v217[2];
        v341 = v592;
        v342 = v593;
        __swift_project_boxed_opaque_existential_1(&v590, v592);
        v343 = v213;
        if ((*(v342 + 96))(v341, v342))
        {

          sub_1D8022FD0(&v587);
          v339(v556, v213);
          v339(v577, v213);
LABEL_41:
          v584 = v580;
          v585 = v581;
          v586 = v575;
          v344 = type metadata accessor for BlueprintPipelineUpdate(0, &v584);
          v345 = v574;
          v346 = 1;
        }

        else
        {
          v419 = v570;
          sub_1D7E0E768(&v590, v570);
          *(v419 + 40) = v578;
          sub_1D8022F74(&v587, v419 + 48);
          swift_storeEnumTagMultiPayload();
          v461 = v556;
          v462 = v594;
          v579 = sub_1D7E859F8(v556, v594);
          v578 = v463;
          sub_1D8022FD0(&v587);
          v594 = sub_1D7E86B60(v462);
          v573 = v464;
          v465 = v572;
          swift_storeEnumTagMultiPayload();
          v466 = v576;
          v467 = v583;
          (v583)(v576, v577, v343);
          v468 = v569;
          (v467)(v569, v461, v343);
LABEL_74:
          v529 = v575;
          v547[1] = v575;
          v530 = v581;
          v547[0] = v581;
          v531 = *(&v580 + 1);
          v532 = v580;
          v546 = v580;
          v533 = v574;
          sub_1D7E87FD8(v419, v579, v578, v594, v573, v465, v466, v468, v574);
          *&v584 = v532;
          *(&v584 + 1) = v531;
          v585 = v530;
          v586 = v529;
          v344 = type metadata accessor for BlueprintPipelineUpdate(0, &v584);
          v345 = v533;
          v346 = 0;
        }

        __swift_storeEnumTagSinglePayload(v345, v346, 1, v344);
        v534 = &v590;
        return __swift_destroy_boxed_opaque_existential_1Tm(v534);
      }

    case 8:
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v306 = v582;
      v307 = *(swift_getTupleTypeMetadata2() + 48);
      v308 = v33;
      v309 = v583;
      v310 = *(v583 + 4);
      v310(v45, v308, v306);
      sub_1D7E17C84((v308 + v307), &v587);
      v311 = *(&v588 + 1);
      v312 = v589;
      __swift_project_boxed_opaque_existential_1(&v587, *(&v588 + 1));
      if ((*(v312 + 96))(v311, v312))
      {
        v313 = *(v309 + 1);
        (v313)(v45, v306);
        v314 = v577;
        v315 = v306;
LABEL_52:
        (v313)(v314, v315);
LABEL_55:
        v590 = v580;
        v591 = v581;
        v592 = v575;
        v374 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
        v375 = v574;
        v376 = 1;
      }

      else
      {
        v377 = v570;
        sub_1D7E0E768(&v587, v570);
        swift_storeEnumTagMultiPayload();
        v378 = v594;
        v583 = sub_1D7E859F8(v45, v594);
        v579 = v379;
        v594 = sub_1D7E86B60(v378);
        v578 = v380;
        v381 = v572;
        swift_storeEnumTagMultiPayload();
        v382 = v576;
        v310(v576, v577, v306);
        v383 = v569;
        v310(v569, v45, v306);
        v384 = v575;
        v547[1] = v575;
        v385 = v581;
        v547[0] = v581;
        v386 = *(&v580 + 1);
        v387 = v580;
        v546 = v580;
        v388 = v574;
        v389 = v574;
        v390 = v377;
        v391 = v583;
        v392 = v579;
        v393 = v594;
        v394 = &v596;
LABEL_82:
        sub_1D7E87FD8(v390, v391, v392, v393, *(v394 - 32), v381, v382, v383, v389);
        *&v590 = v387;
        *(&v590 + 1) = v386;
        v591 = v385;
        v592 = v384;
        v374 = type metadata accessor for BlueprintPipelineUpdate(0, &v590);
        v375 = v388;
        v376 = 0;
      }

      __swift_storeEnumTagSinglePayload(v375, v376, 1, v374);
      v534 = &v587;
      return __swift_destroy_boxed_opaque_existential_1Tm(v534);
    case 9:
      v163 = v572;
      sub_1D7E85994(v33, v572);
      v164 = v570;
      swift_storeEnumTagMultiPayload();
      v165 = v582;
      v166 = v583;
      v167 = v576;
      v168 = v577;
      (*(v583 + 2))(v576, v577, v582);
      v169 = v569;
      (*(v166 + 4))(v569, v168, v165);
      v170 = v575;
      v547[1] = v575;
      v171 = v581;
      v547[0] = v581;
      v172 = *(&v580 + 1);
      v173 = v580;
      v546 = v580;
      v174 = v574;
      sub_1D7E87FD8(v164, nullsub_1, 0, nullsub_1, 0, v163, v167, v169, v574);
      *&v587 = v173;
      *(&v587 + 1) = v172;
      *&v588 = v171;
      *(&v588 + 1) = v170;
      v96 = type metadata accessor for BlueprintPipelineUpdate(0, &v587);
      v97 = v174;
      goto LABEL_48;
    case 10:
      swift_willThrow();
      return (*(v583 + 1))(v577, v582);
    case 11:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v548 - 6, "blueprint diff response", 23);
      BYTE7(v546) = 32;
      strcpy(v547, " bookmark ");
      *(&v546 + 1) = *"animated bookmark ";
      v99 = v582;
      *&v587 = v582;
      v578 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      *(&v587 + 1) = v578;
      sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
      v101 = v100;
      *&v588 = v100;
      *(&v588 + 1) = MEMORY[0x1E69E6370];
      *&v589 = v571;
      v102 = swift_getTupleTypeMetadata();
      v103 = v102[12];
      v571 = *(v33 + v102[16]);
      LODWORD(v567) = *(v33 + v102[20]);
      v104 = v102[24];
      v105 = v583;
      v579 = *(v583 + 4);
      (v579)(v576, v33, v99);
      sub_1D7E17C84((v33 + v103), &v587);
      v106 = sub_1D7E85994(v33 + v104, v572);
      MEMORY[0x1EEE9AC00](v106);
      qmemcpy(&v548 - 6, "blueprint diff response", 23);
      BYTE7(v546) = 32;
      strcpy(v547, " ");
      *(&v546 + 1) = *"animated ";
      *&v590 = v99;
      *(&v590 + 1) = v578;
      v591 = v101;
      v592 = MEMORY[0x1E69E6370];
      v107 = swift_getTupleTypeMetadata();
      v108 = v107[12];
      v109 = v107[16];
      v110 = v107[20];
      v111 = v570;
      v112 = v576;
      (*(v105 + 2))(v570, v576, v99);
      sub_1D7E0E768(&v587, v111 + v108);
      *(v111 + v109) = v571;
      *(v111 + v110) = v567;
      swift_storeEnumTagMultiPayload();
      v113 = v594;
      v583 = sub_1D7E859F8(v112, v594);
      v578 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v115 = sub_1D7E86B60(v113);
      v117 = v116;
      v118 = v569;
      (v579)(v569, v577, v99);
      v119 = v575;
      v547[1] = v575;
      v120 = v581;
      v547[0] = v581;
      v121 = *(&v580 + 1);
      v122 = v580;
      v546 = v580;
      v123 = v574;
      v124 = v574;
      v125 = v111;
      v126 = v583;
      v127 = v578;
      v128 = v115;
      v129 = v117;
      v130 = v572;
      v131 = v118;
      goto LABEL_46;
    case 12:
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v149 = v582;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v151 = *(TupleTypeMetadata2 + 48);
      v152 = v583;
      v153 = *(v583 + 4);
      v154 = v576;
      v153(v576, v33, v149);
      sub_1D7E17C84((v33 + v151), &v587);
      v155 = *(TupleTypeMetadata2 + 48);
      v156 = v570;
      (*(v152 + 2))(v570, v154, v149);
      sub_1D7E0E768(&v587, v156 + v155);
      swift_storeEnumTagMultiPayload();
      v157 = v594;
      v583 = sub_1D7E859F8(v154, v594);
      v579 = v158;
      __swift_destroy_boxed_opaque_existential_1Tm(&v587);
      v594 = sub_1D7E86B60(v157);
      v160 = v159;
      v161 = v572;
      swift_storeEnumTagMultiPayload();
      v162 = v569;
      v153(v569, v577, v149);
      v119 = v575;
      v547[1] = v575;
      v120 = v581;
      v547[0] = v581;
      v121 = *(&v580 + 1);
      v122 = v580;
      v546 = v580;
      v123 = v574;
      v124 = v574;
      v125 = v156;
      v126 = v583;
      v127 = v579;
      v128 = v594;
      v129 = v160;
      v130 = v161;
      v131 = v162;
LABEL_46:
      sub_1D7E87FD8(v125, v126, v127, v128, v129, v130, v131, v576, v124);
      *&v590 = v122;
      *(&v590 + 1) = v121;
      v591 = v120;
      v592 = v119;
      v352 = &v590;
      goto LABEL_47;
    case 13:
      v267 = v582;
      v268 = swift_getTupleTypeMetadata2();
      v269 = *(v33 + *(v268 + 48));
      v270 = v583;
      v271 = *(v583 + 4);
      v272 = v576;
      v271(v576, v33, v267);
      v273 = *(v268 + 48);
      v274 = v570;
      (*(v270 + 2))(v570, v272, v267);
      *(v274 + v273) = v269;
      swift_storeEnumTagMultiPayload();
      v275 = v594;
      v583 = sub_1D7E859F8(v272, v594);
      v579 = v276;
      v594 = sub_1D7E86B60(v275);
      v278 = v277;
      v279 = v572;
      swift_storeEnumTagMultiPayload();
      v280 = v569;
      v271(v569, v577, v267);
      v281 = v575;
      v547[1] = v575;
      v282 = v581;
      v547[0] = v581;
      v283 = *(&v580 + 1);
      v284 = v580;
      v546 = v580;
      v123 = v574;
      v285 = v574;
      v286 = v274;
      v287 = v583;
      v288 = v579;
      v289 = v594;
      v290 = v278;
      v291 = v279;
      v292 = v280;
      v293 = v576;
      goto LABEL_44;
    case 14:
      (*(v583 + 1))(v577, v582);
      v587 = v580;
      *&v588 = v581;
      *(&v588 + 1) = v575;
      v96 = type metadata accessor for BlueprintPipelineUpdate(0, &v587);
      v97 = v574;
      v98 = 1;
      return __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
    default:
      v74 = v582;
      v75 = *(swift_getTupleTypeMetadata2() + 48);
      v76 = v583;
      v77 = *(v583 + 2);
      v77(v70, v33, v74);
      v78 = v563;
      sub_1D7E2B108(v75 + v33, v563);
      v79 = *(v573 + *(*v573 + 168));
      v579 = v33;
      if (v79 == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
        swift_getTupleTypeMetadata2();
        v80 = v570;
        v77(v570, v70, v74);
        v81 = v577;
        v578 = v75;
        v82 = v575;
        - infix<A, B>(_:_:)(v70, v577, v580, *(&v580 + 1), v581, v575);
        swift_storeEnumTagMultiPayload();
        v83 = v594;
        v571 = sub_1D7E859F8(v70, v594);
        v568 = v84;
        v594 = sub_1D7E86B60(v83);
        v573 = v85;
        v86 = v572;
        sub_1D7E85994(v563, v572);
        v87 = *(v76 + 4);
        v88 = v576;
        v87(v576, v81, v74);
        v89 = v569;
        v87(v569, v70, v74);
        v547[1] = v82;
        v90 = v581;
        v547[0] = v581;
        v91 = *(&v580 + 1);
        v92 = v580;
        v546 = v580;
        v93 = v574;
        sub_1D7E87FD8(v80, v571, v568, v594, v573, v86, v88, v89, v574);
        *&v587 = v92;
        *(&v587 + 1) = v91;
        *&v588 = v90;
        *(&v588 + 1) = v82;
        v94 = type metadata accessor for BlueprintPipelineUpdate(0, &v587);
        v95 = v93;
LABEL_13:
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v94);
LABEL_22:
        v253 = v579;
        sub_1D7E2BBA0(v578 + v579);
        return (*(v583 + 1))(v253, v582);
      }

      else
      {
        sub_1D7E2BBA0(v78);
        (*(v76 + 1))(v70, v74);
        v347 = *(v76 + 4);
        v323 = v576;
        v348 = v579;
        v347(v576, v579, v74);
        sub_1D7E85994(v75 + v348, v572);
        v325 = v570;
        swift_storeEnumTagMultiPayload();
        v349 = v594;
        v583 = sub_1D7E859F8(v323, v594);
        v579 = v350;
        v328 = sub_1D7E86B60(v349);
        v594 = v351;
        v330 = v569;
        v347(v569, v577, v74);
LABEL_43:
        v281 = v575;
        v547[1] = v575;
        v282 = v581;
        v547[0] = v581;
        v283 = *(&v580 + 1);
        v284 = v580;
        v546 = v580;
        v123 = v574;
        v285 = v574;
        v286 = v325;
        v287 = v583;
        v288 = v579;
        v289 = v328;
        v290 = v594;
        v291 = v572;
        v292 = v330;
        v293 = v323;
LABEL_44:
        sub_1D7E87FD8(v286, v287, v288, v289, v290, v291, v292, v293, v285);
        *&v587 = v284;
        *(&v587 + 1) = v283;
        *&v588 = v282;
        *(&v588 + 1) = v281;
        v352 = &v587;
LABEL_47:
        v96 = type metadata accessor for BlueprintPipelineUpdate(0, v352);
        v97 = v123;
LABEL_48:
        v98 = 0;
        return __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
      }
  }
}

uint64_t sub_1D7E85994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintBookmark(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1D7E859F8(uint64_t a1, uint64_t a2))()
{
  v26 = a2;
  v3 = *v2;
  v29 = a1;
  v30 = v3;
  v28 = *(v3 + 96);
  v27 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v32 = v5;
  v33 = AssociatedConformanceWitness;
  v34 = v7;
  v8 = type metadata accessor for BlueprintPipelineProcessingResult(0, &v31);
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v25 = &v23 - v10;
  v31 = AssociatedTypeWitness;
  v32 = v5;
  v33 = AssociatedConformanceWitness;
  v34 = v7;
  v12 = type metadata accessor for Blueprint(0, &v31);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, v29, v12);
  (*(v9 + 16))(v11, v26, v8);
  v18 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 2) = v27;
  *(v20 + 3) = *(v21 + 88);
  *(v20 + 4) = v28;
  *(v20 + 5) = *(v21 + 104);
  *(v20 + 6) = v17;
  (*(v13 + 32))(&v20[v18], v16, v12);
  (*(v9 + 32))(&v20[v19], v25, v24);
  return sub_1D7E91684;
}

void sub_1D7E85D3C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_27_14();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_getAssociatedConformanceWitness();
  v134 = AssociatedTypeWitness;
  v135 = v2;
  v136 = AssociatedConformanceWitness;
  v137 = v4;
  v5 = OUTLINED_FUNCTION_123_0();
  v7 = type metadata accessor for Blueprint(v5, v6);
  OUTLINED_FUNCTION_20_19();
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);
  v134 = AssociatedTypeWitness;
  v135 = v2;
  v132 = v9;
  v12 = (v9 + 56) & ~v9;
  v136 = AssociatedConformanceWitness;
  v137 = v4;
  v13 = OUTLINED_FUNCTION_123_0();
  type metadata accessor for BlueprintPipelineProcessingResult(v13, v14);
  OUTLINED_FUNCTION_20_19();
  v128 = *(v15 + 80);
  v130 = (v12 + v11 + v128) & ~v128;
  v131 = v16;
  v129 = *(v17 + 64);

  v133 = v0;
  v18 = v0 + v12;

  if (*(v0 + v12 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 16));
  }

  v19 = *(v7 + 56);
  v134 = AssociatedTypeWitness;
  v135 = v2;
  v136 = AssociatedConformanceWitness;
  v137 = v4;
  v20 = type metadata accessor for BlueprintSection(255, &v134);
  OUTLINED_FUNCTION_4_2();
  v127 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_46_10();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  v24 = *(v23 + 8);
  v124[0] = v25;
  v124[1] = v23 + 8;
  v124[2] = v24;
  v24(v18 + v19);
  v126 = *(v7 + 60);
  v27 = type metadata accessor for BlueprintItem(255, v2, v4, v26);
  OUTLINED_FUNCTION_7_5();
  v125 = v4;
  v28 = v7;
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v31 = swift_getWitnessTable();
  v134 = v20;
  v135 = v27;
  v136 = v29;
  v137 = WitnessTable;
  v138 = v22;
  v139 = v30;
  v140 = v31;
  OUTLINED_FUNCTION_123_0();
  v32 = sub_1D818F784();
  OUTLINED_FUNCTION_3_0();
  v34 = *(v33 + 8);
  v34(v18 + v126, v32);

  v35 = v133 + v130;
  v134 = v127;
  v135 = v2;
  v136 = AssociatedConformanceWitness;
  v137 = v125;
  v36 = OUTLINED_FUNCTION_123_0();
  v38 = type metadata accessor for BlueprintModifierResult(v36, v37);
  switch(OUTLINED_FUNCTION_143_0(v38))
  {
    case 0u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v78 = OUTLINED_FUNCTION_8_31();
      v79(v78);
      v80 = OUTLINED_FUNCTION_22_14();
      (v34)(v80);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_56_0();
      swift_getTupleTypeMetadata2();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 1u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v81 = OUTLINED_FUNCTION_8_31();
      v82(v81);
      v83 = OUTLINED_FUNCTION_22_14();
      (v34)(v83);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_56_0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          v114 = sub_1D818E994();
          v115 = OUTLINED_FUNCTION_0_110();
          if (!__swift_getEnumTagSinglePayload(v115, v116, v114))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v117 + 8))(v34, v114);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v118 + 8))(v34, v119);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v77 = *(TupleTypeMetadata3 + 64);
      goto LABEL_57;
    case 2u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v62 = OUTLINED_FUNCTION_8_31();
      v63(v62);
      v64 = OUTLINED_FUNCTION_22_14();
      (v34)(v64);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_56_0();
      swift_getTupleTypeMetadata2();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 3u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v65 = OUTLINED_FUNCTION_8_31();
      v66(v65);
      v67 = OUTLINED_FUNCTION_22_14();
      (v34)(v67);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_56_0();
      v34 = swift_getTupleTypeMetadata3();
      v68 = OUTLINED_FUNCTION_52_1(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 4u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v53 = OUTLINED_FUNCTION_8_31();
      v54(v53);
      v55 = OUTLINED_FUNCTION_22_14();
      (v34)(v55);
      v56 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v56);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_5_1(v57);
      v134 = v28;
      v135 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v58 = type metadata accessor for BlueprintBookmark(255);
      v59 = OUTLINED_FUNCTION_82_3(v58, &type metadata for BlueprintAnimation);
      OUTLINED_FUNCTION_32_8(v59);
      v61 = v35 + v60;
      type metadata accessor for BlueprintBookmark(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v110 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_116_0(v61))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v111 + 8))(v61, v110);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v112 + 8))(v61, v113);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v77 = *(v59 + 80);
      goto LABEL_57;
    case 5u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v88 = OUTLINED_FUNCTION_8_31();
      v89(v88);
      v90 = OUTLINED_FUNCTION_22_14();
      (v34)(v90);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_56_0();
      v34 = swift_getTupleTypeMetadata3();
      v91 = OUTLINED_FUNCTION_52_1(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
LABEL_43:
          v98 = sub_1D818E994();
          v99 = OUTLINED_FUNCTION_0_110();
          if (!__swift_getEnumTagSinglePayload(v99, v100, v98))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v101 + 8))(v34, v98);
          }

          break;
        case 1u:
LABEL_45:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v102 + 8))(v34, v103);
          break;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 6u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v93 = OUTLINED_FUNCTION_8_31();
      v94(v93);
      v95 = OUTLINED_FUNCTION_22_14();
      (v34)(v95);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_56_0();
      v96 = swift_getTupleTypeMetadata3();
      v97 = OUTLINED_FUNCTION_52_1(v96);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      goto LABEL_42;
    case 7u:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v69 = OUTLINED_FUNCTION_8_31();
      v70(v69);
      v71 = OUTLINED_FUNCTION_22_14();
      (v34)(v71);
      v72 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v72);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_5_1(v73);
      v134 = v28;
      v135 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v74 = type metadata accessor for BlueprintViewActionResponse();
      v75 = OUTLINED_FUNCTION_82_3(v74, &type metadata for BlueprintAnimation);
      v76 = OUTLINED_FUNCTION_52_1(v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);

      v77 = *(v75 + 80);
LABEL_57:
      v120 = v35 + v77;
      if (!*(v120 + 40))
      {
        goto LABEL_65;
      }

      v43 = (v120 + 16);
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
LABEL_65:

      swift_deallocObject();
      OUTLINED_FUNCTION_100();
      return;
    case 8u:
    case 0xCu:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v39 = OUTLINED_FUNCTION_8_31();
      v40(v39);
      v41 = OUTLINED_FUNCTION_22_14();
      (v34)(v41);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_56_0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v43 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata2);
      goto LABEL_59;
    case 9u:
      v92 = type metadata accessor for BlueprintBookmark(0);
      switch(OUTLINED_FUNCTION_143_0(v92))
      {
        case 0u:
          v104 = sub_1D818E994();
          if (OUTLINED_FUNCTION_116_0(v133 + v130))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_3_0();
          v106 = *(v121 + 8);
          v107 = v133 + v130;
          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v106 = *(v123 + 8);
          v107 = v133 + v130;
          goto LABEL_64;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

LABEL_62:
      v122 = v104;
LABEL_64:
      v106(v107, v122);
      goto LABEL_65;
    case 0xAu:

      goto LABEL_65;
    case 0xBu:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v44 = OUTLINED_FUNCTION_8_31();
      v45(v44);
      v46 = OUTLINED_FUNCTION_22_14();
      (v34)(v46);
      v47 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_6_51(v124);
      OUTLINED_FUNCTION_29_10(v48);
      v134 = v28;
      v135 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_24_13(v135, qword_1EDBB68A8);
      v136 = v49;
      v137 = MEMORY[0x1E69E6370];
      v138 = type metadata accessor for BlueprintBookmark(255);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v51 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);

      v52 = v35 + *(TupleTypeMetadata + 96);
      type metadata accessor for BlueprintBookmark(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v104 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_116_0(v52))
          {
            OUTLINED_FUNCTION_3_0();
            v106 = *(v105 + 8);
            v107 = v52;
            goto LABEL_62;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v108 + 8))(v52, v109);
          break;
        case 2u:
        case 3u:
        case 4u:
LABEL_37:

          break;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 0xDu:

      if (*(v35 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v35 + 16));
      }

      v85 = OUTLINED_FUNCTION_8_31();
      v86(v85);
      v87 = OUTLINED_FUNCTION_22_14();
      (v34)(v87);
LABEL_42:

      goto LABEL_65;
    default:
      goto LABEL_65;
  }
}

uint64_t (*sub_1D7E86B60(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for BlueprintPipelineProcessingResult(0, v14);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  (*(v7 + 16))(v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v5;
  *(v12 + 3) = *(v3 + 88);
  *(v12 + 4) = v4;
  *(v12 + 5) = *(v3 + 104);
  (*(v7 + 32))(&v12[v11], v10, v6);
  return sub_1D7E88BC4;
}

void sub_1D7E86D88()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_27_14();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_getAssociatedConformanceWitness();
  v159 = AssociatedTypeWitness;
  v160 = v2;
  v161 = AssociatedConformanceWitness;
  v162 = v4;
  v5 = type metadata accessor for BlueprintPipelineProcessingResult(0, &v159);
  OUTLINED_FUNCTION_20_19();
  v7 = *(v6 + 80);
  v159 = AssociatedTypeWitness;
  v160 = v2;
  v8 = (v7 + 48) & ~v7;
  v9 = v0 + v8;
  v161 = AssociatedConformanceWitness;
  v162 = v4;
  v10 = type metadata accessor for BlueprintModifierResult(0, &v159);
  switch(OUTLINED_FUNCTION_143_0(v10))
  {
    case 0u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      v91 = *(type metadata accessor for Blueprint(0, v90) + 56);
      OUTLINED_FUNCTION_14_21();
      type metadata accessor for BlueprintSection(255, v92);
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(WitnessTable);
      OUTLINED_FUNCTION_4_3();
      v95 = (*(v94 + 8))(v9 + v91);
      OUTLINED_FUNCTION_25_11(v95, v96, v97, v98);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v99 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v99);
      OUTLINED_FUNCTION_4_3();
      (*(v100 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_48_3();
      v37 = v9 + *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 1u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v101);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v102 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v102);
      OUTLINED_FUNCTION_4_3();
      v104 = (*(v103 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v104, v105, v106, v107);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v108 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v108);
      OUTLINED_FUNCTION_4_3();
      (*(v109 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_48_3();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v111 = v9 + *(TupleTypeMetadata3 + 48);
      OUTLINED_FUNCTION_111();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v152 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_136_2(v152))
          {
            OUTLINED_FUNCTION_3_0();
            v153 = OUTLINED_FUNCTION_111();
            goto LABEL_55;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v154 = *(v155 + 8);
          v153 = v111;
LABEL_55:
          v154(v153);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v151 = *(TupleTypeMetadata3 + 64);
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v55);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v56 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v56);
      OUTLINED_FUNCTION_4_3();
      v58 = (*(v57 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v58, v59, v60, v61);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v62 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v62);
      OUTLINED_FUNCTION_4_3();
      (*(v63 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_48_3();
      v37 = v9 + *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 3u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v64);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v65 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v65);
      OUTLINED_FUNCTION_4_3();
      v67 = (*(v66 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v67, v68, v69, v70);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v71 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v71);
      OUTLINED_FUNCTION_4_3();
      (*(v72 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_48_3();
      v73 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v73);
      v37 = v9 + v74;
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 4u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v38);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v39 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v39);
      OUTLINED_FUNCTION_4_3();
      v41 = (*(v40 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v41, v42, v43, v44);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v45 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v45);
      OUTLINED_FUNCTION_4_3();
      (*(v46 + 8))(v9 + v5);
      v47 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_1(v48);
      v159 = v7;
      v49 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v50 = OUTLINED_FUNCTION_117_2(v49);
      v51 = type metadata accessor for BlueprintBookmark(v50);
      OUTLINED_FUNCTION_28_11(v51, &type metadata for BlueprintAnimation);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(TupleTypeMetadata);
      v54 = v9 + v53;
      type metadata accessor for BlueprintBookmark(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v147 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_136_2(v147))
          {
            OUTLINED_FUNCTION_3_0();
            v148 = OUTLINED_FUNCTION_111();
            goto LABEL_50;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v149 = *(v150 + 8);
          v148 = v54;
LABEL_50:
          v149(v148);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v151 = *(TupleTypeMetadata + 80);
LABEL_57:
      v89 = v9 + v151;
      if (*(v89 + 40))
      {
        goto LABEL_58;
      }

      break;
    case 5u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v121);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v122 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v122);
      OUTLINED_FUNCTION_4_3();
      v124 = (*(v123 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v124, v125, v126, v127);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v128 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v128);
      OUTLINED_FUNCTION_4_3();
      (*(v129 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_48_3();
      v130 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v130);
      v37 = v9 + v131;
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 6u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v133);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v134 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v134);
      OUTLINED_FUNCTION_4_3();
      v136 = (*(v135 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v136, v137, v138, v139);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v140 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v140);
      OUTLINED_FUNCTION_4_3();
      (*(v141 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_48_3();
      v142 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v142);
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v75);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v76 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v76);
      OUTLINED_FUNCTION_4_3();
      v78 = (*(v77 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v78, v79, v80, v81);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v82 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v82);
      OUTLINED_FUNCTION_4_3();
      (*(v83 + 8))(v9 + v5);
      v84 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v84);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_1(v85);
      v159 = v7;
      v86 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_117_2(v86);
      v87 = type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_28_11(v87, &type metadata for BlueprintAnimation);
      v88 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(v88);

      v89 = v9 + *(v88 + 80);
      if (!*(v89 + 40))
      {
        break;
      }

LABEL_58:
      __swift_destroy_boxed_opaque_existential_1Tm((v89 + 16));
      break;
    case 8u:
    case 0xCu:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v11);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v12 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v12);
      OUTLINED_FUNCTION_4_3();
      v14 = (*(v13 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v14, v15, v16, v17);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v18 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v18);
      OUTLINED_FUNCTION_4_3();
      (*(v19 + 8))(v9 + v5);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_48_3();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v21 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata2);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      break;
    case 9u:
      v132 = type metadata accessor for BlueprintBookmark(0);
      switch(OUTLINED_FUNCTION_143_0(v132))
      {
        case 0u:
          v156 = sub_1D818E994();
          if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v156))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v157 + 8))(v0 + v8);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v158 + 8))(v0 + v8);
          break;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 0xAu:

      break;
    case 0xBu:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v22);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v23 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v23);
      OUTLINED_FUNCTION_4_3();
      v25 = (*(v24 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v25, v26, v27, v28);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v29 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v29);
      OUTLINED_FUNCTION_4_3();
      (*(v30 + 8))(v9 + v5);
      v31 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v31);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_6_51(v32);
      OUTLINED_FUNCTION_29_10(v33);
      v159 = v7;
      v160 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_24_13(v160, qword_1EDBB68A8);
      v161 = v34;
      v162 = MEMORY[0x1E69E6370];
      v35 = type metadata accessor for BlueprintBookmark(255);
      OUTLINED_FUNCTION_76_5(v35);
      v36 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(v36);

      v37 = v9 + *(v36 + 96);
      type metadata accessor for BlueprintBookmark(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
LABEL_42:
          v143 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_73_4(v143))
          {
            OUTLINED_FUNCTION_3_0();
            v144 = OUTLINED_FUNCTION_15_5();
            goto LABEL_45;
          }

          break;
        case 1u:
LABEL_44:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v145 = *(v146 + 8);
          v144 = v37;
LABEL_45:
          v145(v144);
          break;
        case 2u:
        case 3u:
        case 4u:
LABEL_36:

          break;
        default:
          goto LABEL_59;
      }

      break;
    case 0xDu:
      OUTLINED_FUNCTION_44_7();
      if (*(v9 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint(0, v112);
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v113 = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19(v113);
      OUTLINED_FUNCTION_4_3();
      v115 = (*(v114 + 8))(v9 + v5);
      OUTLINED_FUNCTION_25_11(v115, v116, v117, v118);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v119 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v119);
      OUTLINED_FUNCTION_4_3();
      (*(v120 + 8))(v9 + v5);
LABEL_41:

      break;
    default:
      break;
  }

LABEL_59:

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E87FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = OUTLINED_FUNCTION_10_49();
  type metadata accessor for BlueprintPipelineUpdate.Action(v15, v16);
  OUTLINED_FUNCTION_8();
  (*(v17 + 32))(a9, a1);
  v18 = OUTLINED_FUNCTION_10_49();
  v20 = type metadata accessor for BlueprintPipelineUpdate(v18, v19);
  v21 = (a9 + v20[14]);
  *v21 = a2;
  v21[1] = a3;
  sub_1D7E85994(a6, a9 + v20[15]);
  v22 = v20[16];
  v23 = OUTLINED_FUNCTION_10_49();
  v25 = type metadata accessor for Blueprint(v23, v24);
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 32);
  v27(a9 + v22, a7, v25);
  result = (v27)(a9 + v20[17], a8, v25);
  v29 = (a9 + v20[13]);
  *v29 = a4;
  v29[1] = a5;
  return result;
}

void sub_1D7E88140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintPipelineUpdate.Action(v8, v9);
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[13]) = (a2 - 1);
      return;
    }

    type metadata accessor for BlueprintBookmark(0);
    OUTLINED_FUNCTION_95();
    if (*(v15 + 84) == a3)
    {
      v12 = v14;
      v16 = a4[15];
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_98();
      v12 = type metadata accessor for Blueprint(v17, v18);
      v16 = a4[16];
    }

    v13 = a1 + v16;
  }

  __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
}

uint64_t sub_1D7E88284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  *v9 = sub_1D8191AB4();
  v11 = OUTLINED_FUNCTION_16_3();
  v12(v11);
  sub_1D8190CA4();
  v13 = OUTLINED_FUNCTION_13_4();
  result = v14(v13);
  if (v10)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v16 = *(v3 + 32);
    sub_1D8190DB4();
    v18 = sub_1D7E886A4(a1, a2, v16, v17);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E883CC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  MastheadViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_1D7E88434(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintPipelineUpdate.Action(v6, v7);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for BlueprintBookmark(0);
    OUTLINED_FUNCTION_95();
    if (*(v15 + 84) == a2)
    {
      v10 = v14;
      v16 = a3[15];
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_98();
      v10 = type metadata accessor for Blueprint(v17, v18);
      v16 = a3[16];
    }

    v11 = a1 + v16;
    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }

  v12 = *(a1 + a3[13]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

Swift::Void __swiftcall MastheadViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = v1;
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1);
  OUTLINED_FUNCTION_27_18();
  v6 = [v3 v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [v3 (v2 + 2808)];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];

  __swift_project_boxed_opaque_existential_1(&v3[qword_1EDBB8880], *&v3[qword_1EDBB8880 + 24]);
  v10 = MastheadViewController.scrollView.getter();
  OUTLINED_FUNCTION_0_120();
  v11();

  if (sub_1D8190B24())
  {
    v12 = *&v3[qword_1EDBB88A8];
    [v12 setNeedsLayout];
    [v12 layoutIfNeeded];
  }

  v13 = MastheadViewController.scrollView.getter();
  sub_1D7E6D654();
}

uint64_t sub_1D7E886F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D7E11428(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v3);
}

void BlueprintIntegator.validate(update:)(uint64_t a1)
{
  v14 = *v1;
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v15 = *(v2 + 56);
  v4 = v15(v3, v2);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 216);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, AssociatedConformanceWitness);

  if (v8)
  {
    if (BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v9))
    {
      sub_1D7FE814C();
      swift_allocError();
      *v10 = 0xD000000000000025;
      *(v10 + 8) = 0x80000001D81D1C10;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 3;
      swift_willThrow();

      return;
    }
  }

  v11 = *(v14 + 104);
  v17[0] = *(v14 + 80);
  v17[1] = v11;
  v12 = *(a1 + *(type metadata accessor for BlueprintPipelineUpdate(0, v17) + 52));
  v13 = v15(v3, v2);
  v12(v13, AssociatedConformanceWitness);
}

uint64_t NavigationController.backdropGroupName.getter()
{
  v1 = sub_1D7E88AA8([v0 navigationBar]);
  if (!v2)
  {
    if ([v0 topViewController] && (sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), sub_1D7E0631C(0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v8 + 1))
      {
        sub_1D7E05450(&v7, v10);
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v4 = OUTLINED_FUNCTION_3_1();
        v3 = v5(v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        return v3;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_1D7F35110(&v7, &unk_1EDBB72F0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding);
    return 0;
  }

  return v1;
}