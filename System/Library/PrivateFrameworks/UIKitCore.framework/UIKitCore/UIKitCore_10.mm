uint64_t sub_188B51B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B51B88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188B51D40(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v10, sel__traitCollectionForChildEnvironment_, a1);
  v9[3] = swift_getObjectType();
  v9[0] = a1;
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = sub_188B51E24(v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (v5)
  {
    if (v4)
    {
      v6 = v5;
      v7 = [(UITraitCollection *)v4 _traitCollectionByApplyingOverrides:v6 defaultValueOverrides:0];

      return v7;
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

id sub_188B51E24(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits);
      if (v4)
      {
        sub_188A55598(a1, v10);
        v5 = v3;
        v6 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936348, &unk_18A650590);
        if (!swift_dynamicCast())
        {

          return 0;
        }

        swift_unknownObjectRelease();
        if (v9 == v5)
        {
          v8 = [v5 _traitCollectionOverridesForNavigationBarTraitCollection_];

          return v8;
        }
      }
    }
  }

  return 0;
}

void sub_188B51F44(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = sub_188E49AA8(0, a1);
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_11:
      if (!sub_18A4A7F68())
      {
        return;
      }
    }

    v3 = *(a1 + 32);
LABEL_7:
    v4 = v3;
    [v3 _setOwner_];
    v5 = [v4 representativeItem];
    if (v5)
    {
      v6 = v5;
      [v5 _setViewOwner_];
    }

    [v4 _items];
    sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
    sub_18A4A7528();
    __break(1u);
  }
}

char *sub_188B5215C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_188B522E8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B52298(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA6560();
      v8 = v16;
      goto LABEL_8;
    }

    sub_188B48DD4(v13, a3 & 1);
    v8 = sub_188B52298(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = *(*v4 + 56);
    v19 = *(v18 + 8 * v8);
    *(v18 + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC();

    v20 = a2;
  }
}

uint64_t sub_188B52458(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _BYTE *a7, uint64_t *a8)
{
  v53 = a8;
  v54 = a2;
  v11 = a1;
  v67 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_40:
    v40 = a7;
    v41 = sub_18A4A7F68();
    a7 = v40;
    v12 = v41;
    if (v41)
    {
      goto LABEL_3;
    }

LABEL_41:
    v39 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v42 = v53;
    v43 = *v53;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v43;
    if ((result & 1) == 0)
    {
      result = sub_188B5227C(0, *(v43 + 16) + 1, 1, v43);
      v43 = result;
      *v42 = result;
    }

    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_188B5227C((v45 > 1), v46 + 1, 1, v43);
      v43 = result;
      *v42 = result;
    }

    *(v43 + 16) = v46 + 1;
    v47 = (v43 + 24 * v46);
    v48 = v54;
    v47[4] = v39;
    v47[5] = v48;
    v47[6] = a3;
    return result;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_3:
  v55 = a7;
  v52 = a3;
  a3 = 0;
  v64 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups;
  v57 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups;
  v63 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  v62 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_forceFixedSpacing;
  v65 = v11 & 0xC000000000000001;
  v61 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics;
  v56 = v11 & 0xFFFFFFFFFFFFFF8;
  v60 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsOverflow;
  v59 = v11;
  v58 = v12;
  while (1)
  {
    if (v65)
    {
      v15 = sub_188E49AA8(a3, v11);
    }

    else
    {
      if (a3 >= *(v56 + 16))
      {
        goto LABEL_39;
      }

      v15 = *(v11 + 8 * a3 + 32);
    }

    v14 = v15;
    v16 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = *(a5 + v64);
    v66[0] = v15;
    MEMORY[0x1EEE9AC00](v15);
    v50 = v66;

    v18 = sub_18919A248(sub_188B48DB8, v49, v17);

    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v21 = *(a5 + v57);
      v66[0] = v14;
      MEMORY[0x1EEE9AC00](v19);
      v50 = v66;

      v20 = sub_18919A248(sub_18907CFBC, v49, v21);
    }

    [v14 _sendPrepareForLayout];
    v22 = v63;
    swift_beginAccess();
    v23 = sub_188B5242C(v14, *(a5 + v22));
    swift_endAccess();
    if (!v23)
    {
      v23 = sub_188B52C64(v14);
    }

    v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] = v20 & 1;
    v24 = *(a5 + v62);
    v25 = v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing];
    v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing] = v24;
    if (v24 != v25 && v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] != 1)
    {
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        sub_18907A694();
      }
    }

    v28 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 80];
    v68[4] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 64];
    v68[5] = v28;
    v68[6] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 96];
    v69 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 112];
    v29 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 16];
    v68[0] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics];
    v68[1] = v29;
    v30 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 48];
    v68[2] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 32];
    v68[3] = v30;
    memmove(&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics], (a5 + v61), 0x72uLL);
    sub_188B49604(v68);
    if ((*(a5 + v60) & 1) == 0)
    {
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = 0;
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = 0;
    }

    v31 = *a6;
    if ((*a6 & 0xC000000000000001) != 0)
    {
      if (v31 < 0)
      {
        v11 = *a6;
      }

      else
      {
        v11 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = v14;
      v33 = v23;
      v34 = sub_18A4A7F68();
      if (__OFADD__(v34, 1))
      {
        goto LABEL_38;
      }

      *a6 = sub_18907C994(v11, v34 + 1);
    }

    else
    {
      v35 = v14;
      v36 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = *a6;
    sub_188B522E8(v23, v14, isUniquelyReferenced_nonNull_native);
    *a6 = v66[0];

    v38 = v23;
    MEMORY[0x18CFE2450]();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v39 = v67;
    if (![v14 _isCritical] || objc_msgSend(v14, sel__isHiddenForCalculation))
    {
      v13 = v14;
      v14 = v38;
      goto LABEL_5;
    }

    if (*v55)
    {
      break;
    }

    *v55 = 1;
    v38[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] = 1;
    v13 = v38;
    if ((v20 & 1) == 0)
    {
      v51 = 0;
      v50 = 800;
      goto LABEL_48;
    }

LABEL_5:

    ++a3;
    v11 = v59;
    if (v16 == v58)
    {
      a3 = v52;
      goto LABEL_42;
    }
  }

  v51 = 0;
  v50 = 796;
LABEL_48:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

double sub_188B52BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
  sub_18A4A7548();
  v2();

  return result;
}

char *sub_188B52C64(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 64);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 96);
  v32 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 80);
  v33 = v5;
  v34 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
  v6 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 16);
  v27 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics);
  v28 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 48);
  v29 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 32);
  v30 = v7;
  v31 = v4;
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v9 = _s11GroupLayoutCMa();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isOnlyGroupInSection] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts] = v11;
  v12 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout];
  v12[8] = -2;
  *v12 = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = 0;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] = a1;
  v13 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics];
  v14 = v32;
  v15 = v33;
  *(v13 + 4) = v31;
  *(v13 + 5) = v14;
  *(v13 + 6) = v15;
  *(v13 + 56) = v34;
  v16 = v28;
  *v13 = v27;
  *(v13 + 1) = v16;
  v17 = v30;
  *(v13 + 2) = v29;
  *(v13 + 3) = v17;
  v18 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemViewGenerator];
  *v18 = sub_188C3FA2C;
  v18[1] = v8;
  v26.receiver = v10;
  v26.super_class = v9;
  swift_retain_n();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  v22 = *&v20[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
  *(inited + 32) = v22;
  v23 = v20;
  v24 = v22;
  sub_188B51F44(inited, v23);

  swift_setDeallocating();
  swift_arrayDestroy();

  return v23;
}

uint64_t sub_188B52F00()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188B52FC8()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationBar];
    v4 = [v3 largeTitleTextAttributes];

    if (v4)
    {
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();
    }

    else
    {
      sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    v5 = *&v2[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v6 = sub_18A4A7088();

    [v5 setTitleAttributes_];
  }

  v7 = [v0 navigationBar];
  [v7 setNeedsLayout];

  sub_188B5312C();
}

void sub_188B5312C()
{
  v1 = sub_188B53224();
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_windowDragClientInteraction;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_windowDragClientInteraction];
  if (v1)
  {
    if (!v3)
    {
      v4 = [objc_allocWithZone(UIWindowSceneDragInteraction) init];
      v5 = *&v0[v2];
      *&v0[v2] = v4;
    }

    v6 = [v0 navigationBar];
    if (!*&v0[v2])
    {
      __break(1u);
      return;
    }

    v8 = v6;
    [v6 addInteraction_];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    v8 = [v0 navigationBar];
    [v8 removeInteraction_];
  }
}

uint64_t sub_188B53224()
{
  v1 = [v0 navigationBar];
  v2 = [v1 traitCollection];

  v3 = [v2 userInterfaceIdiom];
  v4 = v3 == 1;
  v5 = [objc_opt_self() _isSpringboardWindowDragEnabled];
  v6 = [v0 navigationBar];
  v7 = [v6 barPosition];

  if (v7 == 3)
  {
    return v4 & v5;
  }

  else
  {
    return 0;
  }
}

char *sub_188B53438(uint64_t a1, char **a2)
{
  v4 = *a2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_188B52BB0(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    result = sub_188B52BB0((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[24 * v7];
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = a1;
  return result;
}

uint64_t sub_188B539FC(double a1)
{
  v2 = *(v1 + 88);
  if (!v2 || [v2 twoLineMode] != 1 || a1 == 0.0)
  {
    sub_188B38ED0(*(v1 + 224));
    swift_beginAccess();
    v21 = *(v1 + 344);
    v8 = v21;
    if (!v21)
    {
      v8 = *(v1 + 352);
      v22 = v8;
    }

    swift_beginAccess();
    v23 = *(v1 + 232);
    v24 = v21;

    sub_188B3A13C(v25, v8, v23);

    swift_beginAccess();
    v14 = *(v1 + 400);
    if (v14 >> 62)
    {
      v26 = sub_18A4A7F68();
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    if (v26 < 1)
    {
      __break(1u);
      goto LABEL_38;
    }

    v27 = 0;
    v28 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v29 = sub_188E4A488(v27, v14);
      }

      else
      {
        v29 = *(v14 + 8 * v27 + 32);
      }

      ++v27;
      v30 = &v29[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v30 = v28;
      *(v30 + 8) = 0;
      v31 = *&v29[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v28 = v28 + v31;
    }

    while (v26 != v27);

LABEL_31:
    *(v1 + 40) = 1;
    sub_188B386EC();

    return v1;
  }

  v1 = sub_188CDB9B0(v4);
  UIFloorToScale(0.0, 6.0);
  v6 = *(v1 + 224) == a1 && v5 == *(v1 + 232);
  if (v6 && (*(v1 + 40) & 1) != 0)
  {
    return v1;
  }

  *(v1 + 224) = a1;
  *(v1 + 232) = v5;
  sub_188B38ED0(a1);
  swift_beginAccess();
  v7 = *(v1 + 344);
  v8 = v7;
  if (!v7)
  {
    v8 = *(v1 + 352);
    v9 = v8;
  }

  swift_beginAccess();
  v10 = *(v1 + 232);
  v11 = v7;

  sub_188B3A13C(v12, v8, v10);

  result = swift_beginAccess();
  v14 = *(v1 + 400);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_33:
    *(v1 + 40) = 1;
    sub_188B386EC();

    return v1;
  }

LABEL_38:
  result = sub_18A4A7F68();
  v15 = result;
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_14:
  if (v15 >= 1)
  {

    v16 = 0;
    v17 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = sub_188E4A488(v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      ++v16;
      v19 = &v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v19 = v17;
      *(v19 + 8) = 0;
      v20 = *&v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v17 = v17 + v20;
    }

    while (v15 != v16);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

double __UIViewConvertRectInViewToSceneSpace(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = [a1 layer];
  [v12 convertRect:0 toLayer:{a3, a4, a5, a6}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 _sceneReferenceBounds];
  v22 = v21;
  v24 = v23;
  v25 = [v11 _sceneOrientation];
  v26 = [v11 interfaceOrientation];

  return _UIWindowConvertRectFromOrientationToOrientation(v25, v26, v14, v16, v18, v20, v22, v24);
}

double UIEdgeInsetsAverage(char a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = a2;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = a10;
    if (a10 == 0.0)
    {
      if (AdjustToScale_onceToken_0 != -1)
      {
        dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
      }

      v15 = *&AdjustToScale___s_0;
    }

    if (v15 == 1.0)
    {
      if ((a1 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else if ((a1 & 4) != 0)
    {
      goto LABEL_22;
    }

LABEL_4:
    if ((a1 & 8) == 0)
    {
      return v11;
    }

    goto LABEL_30;
  }

  v12 = a2 + a6;
  v13 = a10;
  if (a10 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v13 = *&AdjustToScale___s_0;
  }

  v14 = v12 * 0.5;
  if (v13 == 1.0)
  {
    v11 = round(v14);
    if ((a1 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = round(v14 * v13) / v13;
    if ((a1 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if ((a1 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v16 = a10;
  if (a10 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v16 = *&AdjustToScale___s_0;
  }

  if (v16 == 1.0)
  {
    if ((a1 & 8) == 0)
    {
      return v11;
    }
  }

  else if ((a1 & 8) == 0)
  {
    return v11;
  }

LABEL_30:
  if (a10 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v11;
}

void sub_188B54E60()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7258();
    v3 = [v1 BOOLForKey_];

    byte_1EA930840 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_188B54F2C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_platterContainer];
  [v0 bounds];
  return [v3 setFrame_];
}

uint64_t sub_188B5510C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_188B55154()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl])
  {
    v2 = [objc_allocWithZone(_UINavigationBarTitleControl) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    v5 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    if (v5)
    {
      v6 = [v5 titleControlVisualProvider];
    }

    else
    {
      v6 = 0;
    }

    [v4 setVisualProvider_];
    swift_unknownObjectRelease();
    [v4 setControlAlpha_];
    [v4 setContentAlpha_];
    LODWORD(v7) = 1143930880;
    [v4 setTitleViewCompressionResistancePriority_];
    v8 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
    if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80])
    {
      v9 = *(v8 + 11);
      v17 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80];
      v18 = v9;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_188EBB970;
      v16 = &block_descriptor_77_0;
      v10 = _Block_copy(&v13);
    }

    else
    {
      v10 = 0;
    }

    [v4 setTitleMenuProvider_];
    _Block_release(v10);
    [v4 setDocumentProperties_];
    [v0 setNeedsLayout];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_188EC2BF4;
    v18 = v11;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188A4A8F0;
    v16 = &block_descriptor_74_0;
    v12 = _Block_copy(&v13);

    [v4 setIntrinsicContentSizeInvalidationHandler_];
    _Block_release(v12);
  }
}

id sub_188B569CC()
{
  v0 = objc_opt_self();
  v1 = [v0 traitCollectionWithUserInterfaceStyle_];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = sub_18A4A2DB8();
  v8 = *(*(v7 - 8) + 56);
  v9 = v8(&v22 - v6, 1, 1, v7);
  sub_18904F42C(v1, v3, &v22 - v6, v9);
  v23 = v10;

  sub_188A3F5FC(&v22 - v6, &qword_1EA935D70, &qword_18A654CE0);
  v11 = [v0 traitCollectionWithUserInterfaceStyle_];
  v12 = [v2 blackColor];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = (v8)(&v22 - v6, 1, 1, v7, v13);
  sub_18904F42C(v11, v12, &v22 - v6, v14);
  v16 = v15;

  sub_188A3F5FC(&v22 - v6, &qword_1EA935D70, &qword_18A654CE0);
  v17 = objc_opt_self();
  v18 = v23;
  v19 = [v17 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

  v20 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
  return v20;
}

unint64_t sub_188B56C3C(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A5DA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14[0] = 0;
  v11 = 0;
  v12 = 0;
  [a1 getRed:v14 green:&v13 blue:&v12 alpha:{&v11, v4}];
  (*(v3 + 104))(v6, *MEMORY[0x1E69814D8], v2);
  sub_18A4A5DD8();
  return v7 | (v8 << 32);
}

uint64_t sub_188B56DB8()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188B09650(&type metadata for _ResolvedProviderTraitDefinition, sub_188B09978, 0);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933360, &qword_18A65E330);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double sub_188B56F94@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_188B57110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937058, &unk_18A6522E0);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA43E4();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &unk_1EA93B9E0, &unk_18A6517A0);
      sub_188F9E0EC(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937058, &unk_18A6522E0);
  }

  else
  {
    sub_188A3F704(a1, &v15, &unk_1EA93B9E0, &unk_18A6517A0);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188B58114(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188B5724C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_18A4A6E18();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_18A4A6E58();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A2BD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *(v10 + 16);
  v17(&v26 - v15, a1, v9, v14);
  (v17)(v12, v16, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v10 + 32))(v19 + v18, v16, v9);
  v33 = a3;
  swift_retain_n();
  UIObservationTrackingInvalidated();
  if (pthread_main_np() == 1)
  {

    sub_18A4A2BC8();
    a2();
  }

  else
  {
    sub_188A5E418();
    v26 = sub_18A4A7A68();
    aBlock[4] = sub_18913F2E4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_126;
    v20 = _Block_copy(aBlock);

    v21 = v27;
    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
    sub_188BA3728();
    v22 = v29;
    v23 = v32;
    sub_18A4A7EB8();
    v24 = v26;
    MEMORY[0x18CFE29D0](0, v21, v22, v20);
    _Block_release(v20);

    (*(v31 + 8))(v22, v23);
    (*(v28 + 8))(v21, v30);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_188B57678()
{
  v1 = sub_18A4A2BD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_188B57764(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_1ED48EE10;
    v11 = Strong;
    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (sub_188ACEEC4(v11, a3, qword_1ED48EE18))
    {
    }

    else
    {
      if (qword_1ED490F20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_188B57944(v15, v11, a3);
      swift_endAccess();

      if ((a4 & 1) != 0 || _UIObservationTrackingLoggingEnabled())
      {
        if (a1)
        {
          sub_18A4A7DF8();
          v12 = sub_18A4A7258();
        }

        else
        {
          v12 = 0;
        }

        sub_188CF0960(a3);
        v13 = v11;
        v14 = sub_18A4A7258();

        _UILogObservationTrackingInvalidation(v12, v13, v14);
      }

      a5(v11);
    }
  }
}

uint64_t sub_188B57944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  MEMORY[0x18CFE37E0](v4);
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*v12 == a2 && *(v12 + 8) == v4)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    a2 = *v12;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_188B57AD8(a2, v4, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t _UIObservationTrackingLoggingEnabled()
{
  if (qword_1ED49F4E8 != -1)
  {
    dispatch_once(&qword_1ED49F4E8, &__block_literal_global_3_4);
  }

  return byte_1ED49F4D9;
}

void sub_188B57AD8(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v6 = a2;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_188B74864(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_188E797F0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_188B57C64(v7 + 1);
  }

  v10 = *v4;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](result);
  MEMORY[0x18CFE37E0](v6);
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 8);
      if (v15 == result && v16 == v6)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = *(v18 + 48) + 16 * a3;
  *v19 = result;
  *(v19 + 8) = v6;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_18:
  sub_18A4A8798();
  __break(1u);
}

void sub_188B57C64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F8, &qword_18A64D540);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v18);
      MEMORY[0x18CFE37E0](v19);
      v20 = sub_18A4A88E8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

double sub_188B57EA4()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0, &unk_18A6572C8);
  sub_18A4A2C08();

  if (*(v0 + 56))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();

    if (swift_weakLoadStrong())
    {
      sub_188B57EA4();
    }
  }

  return result;
}

unint64_t sub_188B58010()
{
  result = qword_1ED48EE20;
  if (!qword_1ED48EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48EE20);
  }

  return result;
}

uint64_t sub_188B58114(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA43E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188B58238(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return sub_188A4B4F4(a1, v19[7] + 8 * v9, &unk_1EA93B9E0, &unk_18A6517A0);
  }

  return sub_188B5825C(v9, a2, a1, v19);
}

void UIMotionEffectCommonInit(void *a1)
{
  v1 = a1;
  v2 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
  v5 = v1;
  if (!_UIMotionEffectDefaultAnalyzerSettings__defaultSettings)
  {
    v3 = [(_UISettings *)[_UIMotionAnalyzerSettings alloc] initWithDefaultValues];
    v4 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
    _UIMotionEffectDefaultAnalyzerSettings__defaultSettings = v3;

    v1 = v5;
    v2 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
  }

  objc_storeStrong(v1 + 1, v2);
}

void registerObjectInMapOfHashTables(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [v8 setObject:v7 forKey:v5];
  }

  [v7 addObject:v6];
}

void _AssertPointComponentsArePositive(double a1, double a2)
{
  if (a1 < 0.0 || a2 < 0.0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _AssertPointComponentsArePositive(CGPoint)"];
    [v4 handleFailureInFunction:v3 file:@"UIMotionEffect.m" lineNumber:445 description:@"point must be non-negative"];
  }
}

id _animationForKeyPathsAndValues(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 keyEnumerator];
      v5 = [v4 nextObject];

      v6 = [v3 objectForKeyedSubscript:v5];
      v7 = _animationForValueAndKeyPath(v6, v5, a2);
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v9 objectForKeyedSubscript:{v14, v18}];
            v16 = _animationForValueAndKeyPath(v15, v14, a2);
            [v8 addObject:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      v7 = [MEMORY[0x1E6979308] animation];
      [v7 setAnimations:v8];
      [v7 setFillMode:*MEMORY[0x1E69797E0]];
      [v7 setDuration:0.0001];
      [v7 setRemovedOnCompletion:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _animationForValueAndKeyPath(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1ED4A2CC0 != -1)
  {
    dispatch_once(&qword_1ED4A2CC0, &__block_literal_global_37_5);
  }

  v7 = [qword_1ED4A2CB8 valueForKey:v6];
  v8 = v5;
  if (!v7 || (a3 & 1) != 0)
  {
    if (v7)
    {
      if (!objc_msgSend_isEqualToString_(@"frame"))
      {
        v10 = v8;
        goto LABEL_19;
      }

      [v8 CGRectValue];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = v12;
      if (v17 != 0.0 || v12 != 0.0)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = ___animationForValueAndKeyPath_block_invoke_32;
        v23[3] = &unk_1E70F3B20;
        v24 = v6;
        v25 = v14;
        v26 = v16;
        v27 = v18;
        v28 = v19;
        if (qword_1ED4A2CB0 != -1)
        {
          dispatch_once(&qword_1ED4A2CB0, v23);
        }
      }

      v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, v16}];
    }

    else
    {
      v7 = [_UIViewCALayerKeyValueMapper CALayerKeyPathForUIViewKeyPath:v6];
      v20 = [_UIViewCALayerKeyValueMapper CALayerValueForUIViewValue:v8 forUIViewKey:v6];
    }

    v10 = v20;

    goto LABEL_19;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___animationForValueAndKeyPath_block_invoke;
  block[3] = &unk_1E70F35B8;
  v9 = v6;
  v30 = v9;
  v10 = v8;
  v31 = v10;
  if (_MergedGlobals_1393 != -1)
  {
    dispatch_once(&_MergedGlobals_1393, block);
  }

  v11 = v9;
  v7 = v11;
LABEL_19:
  v21 = [MEMORY[0x1E6979318] animationWithKeyPath:v7];
  [v21 setFromValue:v10];
  [v21 setToValue:v10];
  [v21 setDuration:0.0001];
  [v21 setFillMode:*MEMORY[0x1E69797E0]];
  [v21 setAdditive:a3];
  [v21 setRemovedOnCompletion:0];

  return v21;
}

void _quantizePositionsInAnimation(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (_animationIsEligibleForQuantization(v7))
  {
    v8 = [v7 fromValue];
    v9 = [v7 toValue];
    v10 = _quantizedValueForValueInView(v8, v6);
    v11 = v10;
    if (v8 == v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = _quantizedValueForValueInView(v9, v6);
    }

    v21 = v12;
    if (v11 != v8 || (v13 = v7, v12 != v9))
    {
      v13 = v7;
      if (a3)
      {
        v13 = [v7 copy];
      }

      [v13 setFromValue:v11];
      [v13 setToValue:v21];
    }

LABEL_22:
    goto LABEL_23;
  }

  objc_opt_class();
  v13 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  v8 = [v7 animations];
  v13 = v7;
  if ([v8 indexOfObjectPassingTest:&__block_literal_global_430] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v27 = 0;
            _quantizePositionsInAnimation(v19, v6, &v27);
            v20 = v27;
            [v9 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v16);
      }

      v13 = [v7 copy];
      [v13 setAnimations:v9];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = [v7 animations];
      v23 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v33;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v9);
            }

            _quantizePositionsInAnimation(*(*(&v32 + 1) + 8 * j), v6, 0);
          }

          v24 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v24);
      }

      v13 = v7;
    }

    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  if (a3)
  {
    v22 = v13;
    *a3 = v13;
  }
}

uint64_t _animationIsEligibleForQuantization(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 keyPath];
    v3 = [v2 hasPrefix:@"position"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double _UISystemBackgroundViewFrameInContainerView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UISystemBackgroundViewFrameInContainerView(__strong id<_UIBackgroundConfigurationInternal>, UIView *__strong)"}];
    [v37 handleFailureInFunction:v38 file:@"_UISystemBackgroundView.m" lineNumber:1120 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UISystemBackgroundViewFrameInContainerView(__strong id<_UIBackgroundConfigurationInternal>, UIView *__strong)"}];
  [v39 handleFailureInFunction:v40 file:@"_UISystemBackgroundView.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

LABEL_3:
  v6 = [v5 _shouldReverseLayoutDirection];
  [v3 backgroundInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 edgesAddingLayoutMarginsToBackgroundInsets];
  if (v6)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10;
  }

  if (!v6)
  {
    v10 = v14;
  }

  if (v15)
  {
    v17 = v6 == 0;
    if (v6)
    {
      v18 = 8;
    }

    else
    {
      v18 = 2;
    }

    v19 = v18 & (v15 << 62 >> 63) | v15 & 5;
    if (v17)
    {
      v20 = 8;
    }

    else
    {
      v20 = 2;
    }

    v21 = v20 & (v15 << 60 >> 63);
    [v5 layoutMargins];
    v8 = UIEdgeInsetsAdd(v19 | v21, v8, v16, v12, v10, v22);
    v16 = v23;
    v12 = v24;
    v10 = v25;
  }

  [v5 bounds];
  v27 = v16 + v26;
  v29 = v8 + v28;
  v31 = v30 - (v10 + v16);
  v33 = v32 - (v12 + v8);
  [v5 _currentScreenScale];
  v35 = UIRectIntegralWithScale(v27, v29, v31, v33, v34);

  return v35;
}

void _UIButtonConfigurationCopy(void *a1, void *a2, int a3, int a4)
{
  v47 = a1;
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    objc_storeStrong(v47 + 1, v7[1]);
  }

  v9 = *(v47 + 12) & 0xFFFFFFFFFFFFC7FFLL | (((v8[12] >> 11) & 7) << 11);
  *(v47 + 12) = v9;
  v10 = v9 & 0xFFFFFFFFFFFE3FFFLL | (((v8[12] >> 14) & 7) << 14);
  *(v47 + 12) = v10;
  *(v47 + 12) = v10 & 0xFFFFFFFFFFF3FFFFLL | (((v8[12] >> 18) & 3) << 18);
  v11 = [v8[26] copy];
  v12 = *(v47 + 26);
  *(v47 + 26) = v11;

  *(v47 + 30) = v8[30];
  v13 = [v8[13] copy];
  v14 = *(v47 + 13);
  *(v47 + 13) = v13;

  *(v47 + 14) = v8[14];
  v15 = *(v47 + 12) & 0xFFFFFFFFFFFFFFCFLL | (16 * ((v8[12] >> 4) & 3));
  *(v47 + 12) = v15;
  *(v47 + 12) = v15 & 0xFFFFFFFFFFFFFFF0 | v8[12] & 0xF;
  objc_storeStrong(v47 + 16, v8[16]);
  objc_storeStrong(v47 + 15, v8[15]);
  objc_storeStrong(v47 + 17, v8[17]);
  v16 = [v8[18] copy];
  v17 = *(v47 + 18);
  *(v47 + 18) = v16;

  v18 = [v8[19] copy];
  v19 = *(v47 + 19);
  *(v47 + 19) = v18;

  v20 = [v8[20] copy];
  v21 = *(v47 + 20);
  *(v47 + 20) = v20;

  *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFFFFFBFLL | (((v8[12] >> 6) & 1) << 6);
  v22 = [v8[21] copy];
  v23 = *(v47 + 21);
  *(v47 + 21) = v22;

  v24 = [v8[22] copy];
  v25 = *(v47 + 22);
  *(v47 + 22) = v24;

  v26 = [v8[23] copy];
  v27 = *(v47 + 23);
  *(v47 + 23) = v26;

  v28 = [v8[24] copy];
  v29 = *(v47 + 24);
  *(v47 + 24) = v28;

  v30 = [v8[25] copy];
  v31 = *(v47 + 25);
  *(v47 + 25) = v30;

  v32 = *(v47 + 12) & 0xFFFFFFFFFFFFFF7FLL | (((v8[12] >> 7) & 1) << 7);
  *(v47 + 12) = v32;
  v33 = v8[12];
  if ((v33 & 0x80) != 0)
  {
    v34 = *(v8 + 31);
    *(v47 + 264) = *(v8 + 33);
    *(v47 + 248) = v34;
  }

  else
  {
    v32 = v32 & 0xFFFFFFFFFFFFF8FFLL | (((v33 >> 8) & 7) << 8);
    *(v47 + 12) = v32;
  }

  *(v47 + 27) = v8[27];
  *(v47 + 28) = v8[28];
  *(v47 + 29) = v8[29];
  v35 = v32 & 0xFFFFFFFFFCFFFFFFLL | (((v8[12] >> 24) & 3) << 24);
  *(v47 + 12) = v35;
  v36 = v35 & 0xFFFFFFFFFBFFFFFFLL | (((v8[12] >> 26) & 1) << 26);
  *(v47 + 12) = v36;
  *(v47 + 12) = v36 & 0xFFFFFFFFFFFDFFFFLL | (((v8[12] >> 17) & 1) << 17);
  if (a4)
  {
    v37 = [v8[2] copy];
    v38 = *(v47 + 2);
    *(v47 + 2) = v37;

    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFEFFFFFLL | (((v8[12] >> 20) & 1) << 20);
    v39 = [v8[3] copy];
    v40 = *(v47 + 3);
    *(v47 + 3) = v39;

    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFDFFFFFLL | (((v8[12] >> 21) & 1) << 21);
    v41 = [v8[4] copy];
    v42 = *(v47 + 4);
    *(v47 + 4) = v41;

    objc_storeStrong(v47 + 5, v8[5]);
    v43 = [v8[6] copy];
    v44 = *(v47 + 6);
    *(v47 + 6) = v43;

    objc_storeStrong(v47 + 7, v8[7]);
    v45 = [v8[8] copy];
    v46 = *(v47 + 8);
    *(v47 + 8) = v45;

    *(v47 + 10) = v8[10];
    *(v47 + 11) = v8[11];
    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFF3FFFFFLL | (((v8[12] >> 22) & 3) << 22);
  }
}

id _UIStatusBarManagerForNoWindow()
{
  v0 = (byte_1ED48AA94 != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_SoftAssertWithNilSceneForStatusBar, @"SoftAssertWithNilSceneForStatusBar");
  v1 = *&__SplashBoardOverrideStatusBarHeight;
  v2 = UIApp;
  if (v0 == 1 && *&__SplashBoardOverrideStatusBarHeight == 1.79769313e308 && UIApp == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Looking for statusBarManager before the shared application has been created. This is much too early!", v17, 2u);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1030) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Looking for statusBarManager before the shared application has been created. This is much too early!", buf, 2u);
      }
    }

    v2 = UIApp;
    if (UIApp)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if (!UIApp)
  {
    goto LABEL_21;
  }

LABEL_9:
  v5 = [v2 _appAdoptsUISceneLifecycle];
  v6 = v5;
  if ((v0 & v5) == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unsupported code path for UIScene-based application.", v15, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CC70) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported code path for UIScene-based application.", v14, 2u);
      }
    }
  }

  if (v6)
  {
    [UIApp _findUISceneForLegacyInterfaceOrientation];
  }

  else
  {
    [UIApp _defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists];
  }
  v7 = ;
  v8 = [v7 _statusBarManager];

LABEL_22:

  return v8;
}

double sub_188B5A3B4(void *a1)
{
  v2 = v1;
  v58 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v3 = sub_18A4A2BD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A2BA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090, &qword_18A669D10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  if ([(UIView *)v2 _isDeallocInitiated])
  {
    v20 = v58;

    [v20 _executeConfigurationUpdate];
  }

  else
  {
    v54 = v3;
    v55 = v10;
    v52 = v6;
    v53 = v4;
    v51 = v2;
    v22 = [(UIView *)v2 _typedStorage];
    v23 = sub_188A4CEC4();

    if (v23)
    {
      sub_18913E3AC(13);
    }

    v56 = v23;
    v50 = *(v8 + 56);
    v50(v19, 1, 1, v7);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = *(StatusReg + 848);
    *(StatusReg + 848) = v19;
    v57 = v19;
    v26 = v8;
    v27 = v7;
    v28 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v58 _executeConfigurationUpdate];
    *(StatusReg + 848) = v25;
    byte_1ED4A3680 = v28;
    v29 = v57;
    v30 = v27;
    sub_188A3F29C(v57, v16, &qword_1EA93E090, &qword_18A669D10);
    if ((*(v26 + 48))(v16, 1, v27) == 1)
    {
      sub_188A3F5FC(v29, &qword_1EA93E090, &qword_18A669D10);
      sub_188A3F5FC(v16, &qword_1EA93E090, &qword_18A669D10);
    }

    else
    {
      v31 = v55;
      (*(v26 + 32))(v55, v16, v30);
      v32 = v51;
      LODWORD(v58) = sub_188ACEB88(v51, 13, &block_descriptor_65_1);
      v33 = v56;
      v34 = v26;
      if (!v56)
      {
        v35 = [(UIView *)v32 _typedStorage];
        v33 = sub_188A4CEC4();
      }

      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = 13;
      *(v37 + 25) = v58 & 1;
      *(v37 + 32) = [UITableViewCell _invalidateConfiguration]_0;
      *(v37 + 40) = 0;
      v49 = v34;
      (*(v34 + 16))(v13, v31, v30);
      v56 = v30;
      v50(v13, 0, 1, v30);
      v58 = v36;

      v38 = v52;
      sub_18A4A2BE8();
      v39 = v53;
      if (v33)
      {
        v40 = v31;
      }

      else
      {
        type metadata accessor for TrackingDictionary();
        v41 = swift_allocObject();
        *(v41 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v42 = [(UIView *)v32 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098, &qword_18A669D18);
        v43 = swift_allocObject();
        *(v43 + 16) = v41;
        v44 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(&v42->super.isa + v44);
        *(&v42->super.isa + v44) = 0x8000000000000000;
        v46 = v43;
        v40 = v55;
        sub_188A40430(v46, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v42->super.isa + v44) = v59;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v38, 13);

      v47 = swift_allocObject();
      *(v47 + 16) = sub_188B57AD4;
      *(v47 + 24) = v37;

      MEMORY[0x18CFDDAE0](v38, 0, 0, sub_188B57248, v47);

      (*(v39 + 8))(v38, v54);
      (*(v49 + 8))(v40, v56);
      sub_188A3F5FC(v57, &qword_1EA93E090, &qword_18A669D10);
    }
  }

  return result;
}

id fallbackForegroundColorForTraitCollection(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tintColor];
  }
  v1 = ;

  return v1;
}

void _getDefaultTitleAndSubtitleFontStylesForButtonSize(uint64_t a1, __CFString **a2, __CFString **a3, __CFString **a4, void *a5)
{
  v9 = a5;
  v22 = v9;
  if ((a1 - 1) >= 2)
  {
    v14 = [v9 userInterfaceIdiom];
    v11 = UIFontTextStyleShortBody;
    if (a1)
    {
      v15 = &UIFontTextStyleTitle3;
    }

    else
    {
      v15 = &UIFontTextStyleHeadline;
    }

    if (v14 == 6)
    {
      v11 = v15;
    }

    v12 = UIFontTextStyleShortFootnote;
    v13 = UIFontTextStyleShortEmphasizedBody;
  }

  else
  {
    v10 = [v9 userInterfaceIdiom];
    v11 = UIFontTextStyleShortSubheadline;
    if (v10 == 6)
    {
      v11 = &UIFontTextStyleCallout;
    }

    v12 = UIFontTextStyleShortCaption1;
    v13 = UIFontTextStyleShortEmphasizedSubhead;
  }

  v16 = *v11;
  v17 = *v13;
  v18 = *v12;
  if (a2)
  {
    v19 = v16;
    *a2 = v16;
  }

  if (a3)
  {
    v20 = v18;
    *a3 = v18;
  }

  if (a4)
  {
    v21 = v17;
    *a4 = v17;
  }
}

uint64_t _UIButtonStatesFromButton(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  v3 = v2 & 1;
  if ((v2 & 2) != 0 || [v1 tintAdjustmentMode] == 2)
  {
    v3 |= 2uLL;
  }

  v4 = v3 | v2 & 0xC;
  if ([v1 isHeld])
  {
    v4 |= 0x10uLL;
  }

  return v4;
}

uint64_t _UIButtonCanInferIndicator()
{
  if (qword_1ED49E590 != -1)
  {
    dispatch_once(&qword_1ED49E590, &__block_literal_global_296);
  }

  return _MergedGlobals_1138;
}

id _UIColorFromCUINamedColor(void *a1)
{
  v1 = a1;
  if (![v1 substituteWithSystemColor] || (objc_msgSend(v1, "systemColorName"), v2 = objc_claimAutoreleasedReturnValue(), +[UIColor _systemColorWithUnvalidatedName:](UIColor, "_systemColorWithUnvalidatedName:", v2), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v1 cgColor]);
  }

  return v3;
}

BOOL _UILAIsAnimatingOnCanvas(void *a1)
{
  v1 = a1;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v2 = [v1 _window];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 superview];
  v3 = v1;
  v4 = v2;
  v5 = v4;
  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    do
    {
      if ([v6 _hostsLayoutEngine] && v7 != v5)
      {
        break;
      }

      v8 = [v6 superview];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v8 _mutableLayoutArrangements];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            if ([v14 _monitorsSystemLayoutFittingSizeForItem:v6])
            {
              [v14 _systemLayoutFittingSizeDidChangeForItem:v6];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }

      v7 = v8;
      v6 = v7;
    }

    while (v7);
  }
}

void _UILACleanUpConstraintsMapTable(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [v1 objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) setActive:0];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [v1 removeAllObjects];
  }
}

uint64_t cornerStyleForDeviceIdiomAndConfigurationKind(uint64_t a1)
{
  v1 = a1 != 0;
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 4 * v1;
  }

  else
  {
    return 0;
  }
}

void UIBezierPathCommonInit(void *a1, const void *a2)
{
  v3 = a1;
  v3[1] = CFRetain(a2);
  v3[6] = 0x3FE3333333333333;
  *(v3 + 2) = xmmword_18A67BDC0;
}

void *_selectorForColorName(void *a1)
{
  v1 = a1;
  v2 = +[UIColor _systemColorSelectorTable];
  v3 = NSMapGet(v2, v1);

  return v3;
}

void sub_188B5D644(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_188AA9D24(a1, a2 & 1, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_188A5E664(a2 & 1, a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_188FA1DBC();
        v15 = v17;
      }

      sub_188AB7AD4(v11, v15);
      *v5 = v15;
    }
  }
}

void _UIQOSManagedCommitsEnd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  Count = CFDictionaryGetCount(qword_1ED4A2900);
  if (!v4 || (Value = CFDictionaryGetValue(qword_1ED4A2900, v3)) != 0 && (v7 = Value, CFSetRemoveValue(Value, v4), !CFSetGetCount(v7)))
  {
    CFDictionaryRemoveValue(qword_1ED4A2900, v3);
    if (Count)
    {
      if (!CFDictionaryGetCount(qword_1ED4A2900))
      {
        Class = object_getClass(v3);
        Name = class_getName(Class);
        strncpy(__dst, Name, 8uLL);
        if (v4)
        {
          strncpy(__dst, [v4 UTF8String], 8uLL);
        }

        _tracepointArg4(&qword_1ED4A2900);
        kdebug_trace();
      }
    }
  }
}

void _UIUpdateCompletionObservationRemoveObserver(uint64_t *a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIUpdateCompletionObservationRemoveObserver(_UIUpdateCompletionObservation *const _Nonnull, const id<_UIUpdateCompletionObserving>  _Nonnull const __strong, const BOOL)"}];
    [v13 handleFailureInFunction:v14 file:@"_UIUpdateSequence.mm" lineNumber:226 description:@"Persistant observers are not implemented."];
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v6, a2);
    if (v7)
    {
      v8 = v7;
      v9 = *v5;
      v10 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v6, v7);
      if (v9 == v8)
      {
        *a1[2] = v10;
      }
    }
  }

  v11 = *a1;
  if (v11)
  {
    v12 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v11, a2);
    if (v12)
    {

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v11, v12);
    }
  }
}

void sub_188B5EAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

id _UIKBArbiterSetForPlacements()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = +[UIInputViewSetPlacement encodablePlacementsForXPC];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = [v0 setByAddingObjectsFromArray:v1];

  return v2;
}

id _UIKeyboardArbitrationClient_Interface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0049C28];
  v1 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v1 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  return v0;
}

uint64_t _UIEventDeferringSystemShellBehaviorIsAllowedForProcess()
{
  if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIEventDeferringProcessIsCarPlayApp() & 1) != 0 || (_UIEventDeferringProcessIsPineBoard())
  {
    return 1;
  }

  return _UIEventDeferringProcessIsCarousel();
}

uint64_t _disableTopRemoteRecordTransition_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  if (*(a2 + 48) == 1)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_disableTopRemoteRecordTransition_block_invoke"];
    [v19 handleFailureInFunction:v20 file:@"_UIEventDeferringManager.m" lineNumber:897 description:{@"[%p] [%@] %@: Invalid state. Unexpected value of ownerInitiatedRemoval: %d", *a2, v7, v8, *(a2 + 48)}];
  }

  v9 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
  v10 = a2[3];
  if (v9)
  {
    v11 = [(_UIEventDeferringRecord *)v9 recreationReasons];
    v12 = [v11 containsObject:v10];

    if ((v12 & 1) == 0)
    {
      if ([(_UIEventDeferringRecord *)v9 needsRecreation])
      {
        v13 = 0;
      }

      else
      {
        v14 = *(v9 + 24);
        [v14 invalidate];

        v13 = 1;
      }

      [(_UIEventDeferringRecord *)v9 addRecreationReason:v10];
      v16 = _UIEventDeferringShorterRecreationReasonStringForReason(v10, v15);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCE0);
      if (*CategoryCachedImpl)
      {
        v21 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *a2;
          *buf = 134350338;
          v24 = v22;
          v25 = 2114;
          v26 = v7;
          v27 = 2114;
          v28 = v8;
          v29 = 1026;
          v30 = v13;
          v31 = 2114;
          v32 = v16;
          v33 = 2114;
          v34 = v9;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling top remote record: invalidated: %{public}d; added recreation reason: %{public}@; record: %{public}@", buf, 0x3Au);
        }
      }
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCE8))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 7;
}

id _UIKeyboardArbitration_Interface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016E550];
  v1 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v1 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];

  v2 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v2 forSelector:sel_setAllVisibleFrames_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t stateMachineSpec_block_invoke_22(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _remoteDeferringRecordStackForEnvironment:v7];
  if ([v9 count] >= 2)
  {
    v10 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
    v11 = [(_UIEventDeferringRecord *)v10 needsRecreation];
    v12 = *a2;
    if (*a2)
    {
      if (!*(v12 + 96))
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:sel__sortRemoteRecordStackForEnvironment_ object:v12 file:@"_UIEventDeferringManager.m" lineNumber:2505 description:{@"[%p] %s: Invalid state. Sorting records without a transaction: %@", v12, "-[_UIEventDeferringManager _sortRemoteRecordStackForEnvironment:]", v12}];
      }

      v13 = [(_UIEventDeferringManager *)v12 _remoteDeferringRecordStackForEnvironment:v7];
      v14 = v13;
      if (v13 && [v13 count] >= 2)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __65___UIEventDeferringManager__sortRemoteRecordStackForEnvironment___block_invoke;
        v25 = &unk_1E70FCC38;
        *&v26 = v12;
        *(&v26 + 1) = v7;
        [v14 sortWithOptions:16 usingComparator:buf];
      }

      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(_UIEventDeferringManager *)v15 _topRemoteRecordInStackForEnvironment:v7];
    if (v16 != v10 && !v11)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDF8);
      if (*CategoryCachedImpl)
      {
        v22 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *a2;
          *buf = 134349826;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = v7;
          *&buf[22] = 2114;
          v25 = v8;
          LOWORD(v26) = 2114;
          *(&v26 + 2) = v10;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Invalidating previous top remote record in stack: %{public}@", buf, 0x2Au);
        }
      }

      if (v10)
      {
        v18 = v10[3];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [v19 invalidate];

      [(_UIEventDeferringRecord *)v10 addRecreationReason:?];
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE00))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 9;
}

id _UISceneIdentityToLogString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 hasPrefix:@"com.apple.frontboard.systemappservices/FBSceneManager:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"com.apple.frontboard.systemappservices/FBSceneManager:", "length")}];

    if ([v2 hasPrefix:@"sceneID%3A"])
    {
      v3 = [v2 substringFromIndex:{objc_msgSend(@"sceneID%3A", "length")}];

      v2 = v3;
    }
  }

  return v2;
}

id _UIArbiterClientLog()
{
  if (_UIArbiterClientLog_onceToken != -1)
  {
    dispatch_once(&_UIArbiterClientLog_onceToken, &__block_literal_global_29_0);
  }

  v1 = _UIArbiterClientLog_log;

  return v1;
}

uint64_t sub_188B60094(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for _Glass._GlassVariant(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_188B60160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A2F58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_188B60324(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_188B622F4(a1);
  if (!v10)
  {
    v30 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
    v31 = swift_beginAccess();
    v32 = *(v4 + v30);
    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = a3;

    v34 = sub_188B656C4(sub_188B62628, v33, (&v42 - 4), v32);

    if (v34)
    {
      sub_18905D7C8(a1, a3, 0);
      [v34 setNeedsLayout];
    }

    else
    {
      sub_18905CB84(a3, a1, 0);
    }

    return;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  v13 = swift_beginAccess();
  v14 = *(v3 + v12);
  MEMORY[0x1EEE9AC00](v13);
  *(&v42 - 2) = a3;

  v16 = sub_188B656C4(sub_189063F5C, v15, (&v42 - 4), v14);

  if (v16)
  {
    type metadata accessor for GlassGroupLayerView(0);
    v17 = sub_18A4A7C88();

    if (v17)
    {
      goto LABEL_15;
    }
  }

  v18 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  v19 = swift_beginAccess();
  if (*(*&v11[v18] + 16) != 1)
  {
    goto LABEL_7;
  }

  v20 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v19);
  *(&v42 - 2) = a3;

  v22 = sub_188B656C4(sub_189063F5C, v21, (&v42 - 4), v20);

  if (!v22)
  {
LABEL_15:
    sub_18905DEA4(a1, a3);

    return;
  }

LABEL_7:
  v23 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v19);
  *(&v42 - 2) = a3;

  v25 = sub_188B656C4(sub_189063F5C, v24, (&v42 - 4), v23);

  if (!v25)
  {
LABEL_10:
    sub_188BBAA3C(v9);
    v26 = sub_188B622F4(a1);
    if (v26)
    {
      v27 = v26;
      sub_18905DA8C(a1, 0);
    }

    sub_18905CB84(v9, a1, 0);
    v29 = v28;
    sub_188B607CC(a1, a3);

    sub_1890639A8(v9, type metadata accessor for _Glass);
    return;
  }

  type metadata accessor for GlassGroupLayerView(0);
  if (sub_18A4A7C88())
  {

    goto LABEL_10;
  }

  v36 = sub_188B622F4(a1);
  if (v36)
  {
    v37 = v36;
    sub_18905DA8C(a1, 0);
  }

  v38 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v36);
  *(&v42 - 2) = a3;

  v40 = sub_188B656C4(sub_189063F5C, v39, (&v42 - 4), v38);

  if (v40)
  {
    sub_18905D7C8(a1, a3, 0);
    [v40 setNeedsLayout];
  }

  else
  {
    sub_18905CB84(a3, a1, 0);
  }
}

uint64_t sub_188B607CC(void *a1, uint64_t a2)
{
  v24 = a2;
  v26 = a1;
  v6 = type metadata accessor for GlassPair(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v25 = v2;
  v22 = v12;
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v3 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v5 = *(v7 + 72) * v15;
      v4 = type metadata accessor for GlassPair;
      sub_189063880(v13 + v3 + v5, v11, type metadata accessor for GlassPair);
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v2 = sub_18A4A7C88();
      sub_1890639A8(v11, type metadata accessor for GlassPair);
      if (v2)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    v14 = v24;
    sub_189063880(v24, v23, type metadata accessor for _Glass);
    v4 = v25;
    v16 = v26;
    *(v7 + *(v6 + 20)) = v26;
    v6 = v22;
    swift_beginAccess();
    v2 = *(v4 + v6);
    v17 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v6) = v2;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:
    result = sub_189212AD4(v2);
    v2 = result;
    *(v4 + v6) = result;
LABEL_8:
    if (v15 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_189063DF0(v7, v2 + v3 + v5, type metadata accessor for GlassPair);
    *(v4 + v6) = v2;
    swift_endAccess();
  }

  else
  {
LABEL_6:

    v14 = v24;
    v4 = v25;
  }

  v19 = *(v14 + 8);
  v20 = *(v14 + 16);

  [v4 setNeedsLayout];
  result = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
  if (result)
  {
    return [v4 layoutIfNeeded];
  }

  return result;
}

void sub_188B60AAC(void *a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = [(UIView *)a1 _typedStorage];
  sub_18901EE3C(__src);

  sub_188B6CFA8(v3, v185);
  sub_18900FA40(__src, v184);
  sub_18900FA40(v185, &v184[18] + 8);
  if (!*&v184[10])
  {
    sub_188A3F5FC(v185, &qword_1EA939FB0, &qword_18A65CFE0);
    sub_188A3F5FC(__src, &qword_1EA939FB0, &qword_18A65CFE0);
    if (!*(&v184[28] + 1))
    {
      sub_188A3F5FC(v184, &qword_1EA939FB0, &qword_18A65CFE0);
      return;
    }

    goto LABEL_8;
  }

  sub_18900FA40(v184, v182);
  if (!*(&v184[28] + 1))
  {
    sub_188A3F5FC(v185, &qword_1EA939FB0, &qword_18A65CFE0);
    sub_188A3F5FC(__src, &qword_1EA939FB0, &qword_18A65CFE0);
    sub_188B6D288(v182);
LABEL_8:
    sub_188A3F5FC(v184, &qword_1EA939FB8, &qword_18A65CFE8);
    goto LABEL_9;
  }

  memcpy(__dst, &v184[18] + 8, sizeof(__dst));
  v6 = sub_189010258(v182, __dst);
  sub_188B6D288(__dst);
  sub_188A3F5FC(v185, &qword_1EA939FB0, &qword_18A65CFE0);
  sub_188A3F5FC(__src, &qword_1EA939FB0, &qword_18A65CFE0);
  sub_188B6D288(v182);
  sub_188A3F5FC(v184, &qword_1EA939FB0, &qword_18A65CFE0);
  if (v6)
  {
    return;
  }

LABEL_9:
  v7 = [(UIView *)v4 _typedStorage];
  sub_188B6CFA8(v3, v184);
  sub_18900FA40(v184, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC0, &qword_18A65CFF0);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0x128uLL);
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v185[0] = *(&v7->super.isa + v9);
  *(&v7->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &type metadata for _Material.Layer.LastAppliedMaterialLayerKey, isUniquelyReferenced_nonNull_native);
  *(&v7->super.isa + v9) = v185[0];
  swift_endAccess();

  sub_188A3F5FC(v184, &qword_1EA939FB0, &qword_18A65CFE0);
  sub_188B6D84C(v3 + 16, __src);
  v11 = *__src;
  v180 = v4;
  if (BYTE5(__src[7]) <= 1u)
  {
    if (!BYTE5(__src[7]))
    {
      type metadata accessor for UISDFBackdropView();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        goto LABEL_177;
      }

      v18 = v17;
      v19 = v11;
      v20 = BYTE8(__src[1]);
      v9 = BYTE8(__src[0]);
      v21 = v4;
      v22 = [v18 layer];
      [v22 setScale_];

      v23 = [v18 layer];
      [v23 setTracksLuma_];

      v4 = v180;
      sub_18900F7CC();
      sub_18900F8B8(v20);

LABEL_37:
      v160 = 1;
      v30 = *(v3 + 8);
      if (!v30)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v188[3] = __src[3];
    v188[4] = __src[4];
    v188[5] = __src[5];
    v188[6] = __src[6];
    v188[0] = __src[0];
    v188[1] = __src[1];
    v188[2] = __src[2];
    v31 = *&__src[7];
    LODWORD(v189) = BYTE4(__src[7]);
    type metadata accessor for UISDFView();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      sub_18900FAB0();
      swift_allocError();
      *v116 = 0;
      swift_willThrow();
      goto LABEL_185;
    }

    v33 = v32;
    v34 = *(v32 + OBJC_IVAR____TtC5UIKit9UISDFView_filter + 16);
    v35 = *(v3 + 280);
    v36 = v4;
    if (v34)
    {
      if ((v35 & 1) == 0)
      {
LABEL_133:
        sub_18900FAB0();
        swift_allocError();
        *v138 = 1;
        swift_willThrow();

        goto LABEL_185;
      }
    }

    else if ((v35 & 1) != 0 || (sub_18A4A6D38() & 1) == 0)
    {
      goto LABEL_133;
    }

    v117 = OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization;
    v118 = *&v33[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
    *&v33[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = v31;
    if (v31 == v118 || (v119 = *&v33[OBJC_IVAR____TtC5UIKit9UISDFView_containerView]) == 0)
    {
LABEL_183:
      sub_18900EE60(v189);
      v155 = v36;
      v156 = [v33 layer];
      objc_opt_self();
      v157 = swift_dynamicCastObjCClassUnconditional();
      sub_18900DAF4(v157, v188);
      if (!v161)
      {
        v161 = 0;

        v158 = [v33 layer];
        objc_opt_self();
        v9 = swift_dynamicCastObjCClassUnconditional();
        v159 = sub_18A4A7258();
        [v9 setName_];

        [v33 setAutoresizingMask_];
        sub_188B6E97C(v188);

        goto LABEL_188;
      }

LABEL_185:
      sub_188B6E97C(v188);
      return;
    }

    v175 = v119;
    v120 = [v175 subviews];
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v121 = sub_18A4A7548();

    v165 = v3;
    if (v121 >> 62)
    {
      v122 = sub_18A4A7F68();
      if (v122)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v122)
      {
LABEL_125:
        if (v122 < 1)
        {
          __break(1u);
LABEL_191:

          __break(1u);
          goto LABEL_192;
        }

        v123 = 0;
        v124 = v121 & 0xC000000000000001;
        v176 = v121 & 0xC000000000000001;
        v179 = v33;
        do
        {
          if (v124)
          {
            v125 = sub_188E49300(v123, v121);
          }

          else
          {
            v125 = *(v121 + 8 * v123 + 32);
          }

          v126 = v125;
          type metadata accessor for UISDFElementView();
          v127 = swift_dynamicCastClassUnconditional();
          v128 = *&v33[v117];
          v129 = OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization;
          v130 = *&v127[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization];
          *&v127[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization] = v128;
          if (v128 != v130)
          {
            v131 = v117;
            v132 = v36;
            v133 = v127;
            v134 = v122;
            v135 = v121;
            v136 = [v127 layer];
            v137 = *&v133[v129];
            v36 = v132;
            v117 = v131;
            v124 = v176;
            [v136 setGradientOvalization_];

            v121 = v135;
            v122 = v134;
            v33 = v179;
          }

          ++v123;
        }

        while (v122 != v123);
      }
    }

    v3 = v165;
    goto LABEL_183;
  }

  if (BYTE5(__src[7]) == 2)
  {
    sub_188A5EBAC(__src, v184);
    sub_188A53994(v184, v185);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC8, &qword_18A65CFF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FD0, &qword_18A65D000);
    if (swift_dynamicCast())
    {
      sub_188A3F5FC(v182, &unk_1EA939FD8, &unk_18A65D008);
      type metadata accessor for _UIMaterialDefinitionView();
      if (swift_dynamicCastClass())
      {
        goto LABEL_45;
      }
    }

    else
    {
      v183 = 0;
      memset(v182, 0, sizeof(v182));
      sub_188A3F5FC(v182, &unk_1EA939FD8, &unk_18A65D008);
    }

    __swift_project_boxed_opaque_existential_0(v184, *(&v184[1] + 1));
    v9 = [v4 layer];
    sub_18A4A5928();

LABEL_45:
    __swift_destroy_boxed_opaque_existential_0Tm(v184);
    v160 = 0;
    v30 = *(v3 + 8);
    if (!v30)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (BYTE5(__src[7]) == 3)
  {
    if (*(*a2 + 16))
    {
      v9 = LOBYTE(__src[1]);
      v12 = BYTE1(__src[1]);
      sub_188B0944C(*&__src[0], *(&__src[0] + 1));
      if (v13)
      {

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_177;
        }

        v15 = v14;
        v16 = v4;
        [v15 setMatchesTransform_];
        [v15 setMatchesPosition_];
        [v15 setHidesSourceView_];

        goto LABEL_37;
      }
    }

LABEL_192:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  if (LODWORD(__src[7]) | (BYTE4(__src[7]) << 32) || *(&__src[6] + 1) | *&__src[0] | *&__src[6] | *(&__src[5] + 1) | *&__src[5] | *(&__src[4] + 1) | *&__src[4] | *(&__src[3] + 1) | *&__src[3] | *(&__src[2] + 1) | *&__src[2] | *(&__src[1] + 1) | *&__src[1] | *(&__src[0] + 1))
  {
    goto LABEL_37;
  }

  type metadata accessor for ContentLensingView();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_177;
  }

  v24 = [v4 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v25 = sub_18A4A7548();

  *&v184[0] = MEMORY[0x1E69E7CC0];
  v163 = v3;
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_27;
    }

LABEL_153:
    v139 = MEMORY[0x1E69E7CC0];
    goto LABEL_154;
  }

  v26 = sub_18A4A7F68();
  if (!v26)
  {
    goto LABEL_153;
  }

LABEL_27:
  v9 = 0;
  v3 = v25 & 0xC000000000000001;
  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  v189 = v25 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v3)
    {
      v28 = sub_188E49300(v9, v25);
    }

    else
    {
      if (v9 >= *(v27 + 16))
      {
        goto LABEL_148;
      }

      v28 = *(v25 + 8 * v9 + 32);
    }

    v4 = v28;
    v29 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_147;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
    }

    else
    {
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v27 = v189;
    }

    ++v9;
  }

  while (v29 != v26);
LABEL_135:
  v139 = *&v184[0];
LABEL_154:

  v3 = v163;
  if ((v139 & 0x8000000000000000) != 0 || (v139 & 0x4000000000000000) != 0)
  {
    goto LABEL_172;
  }

  v145 = *(v163 + 256);
  v147 = *(v145 + 16);
  v146 = (v145 + 16);
  v189 = *(v139 + 16);
  if (v189 != v147)
  {
    goto LABEL_176;
  }

  if (!v189)
  {
LABEL_174:
    v149 = v161;
LABEL_175:
    v161 = v149;

LABEL_188:
    v160 = 0;
    v4 = v180;
    v30 = *(v3 + 8);
    if (!v30)
    {
LABEL_47:
      v41 = [v4 layer];
      [v41 setCornerRadius_];

      v42 = [v4 layer];
      v43 = [v42 filters];

      if (v43)
      {
        v44 = sub_18A4A7548();

        v45 = *(v44 + 16);

        v166 = *(v3 + 240);
        v167 = v45;
        if (v45 != *(v166 + 16))
        {
          goto LABEL_143;
        }

        if (v45)
        {
          v46 = 0;
          v163 = v3;
          do
          {
            if (v46 >= *(v166 + 16))
            {
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v82 = sub_18A4A7F68();
              goto LABEL_84;
            }

            v47 = (v166 + 32 + 40 * v46);
            v48 = v47[1];
            v9 = v47[2];
            v169 = v46 + 1;
            v49 = v47[4];
            v50 = *v47;
            *&v184[0] = 0x2E737265746C6966;
            *(&v184[0] + 1) = 0xE800000000000000;
            v168 = v49;

            MEMORY[0x18CFE22D0](v50, v48);
            MEMORY[0x18CFE22D0](46, 0xE100000000000000);
            v170 = v184[0];
            v51 = v9 + 64;
            v52 = 1 << *(v9 + 32);
            if (v52 < 64)
            {
              v53 = ~(-1 << v52);
            }

            else
            {
              v53 = -1;
            }

            v54 = v53 & *(v9 + 64);
            v55 = (v52 + 63) >> 6;
            v173 = v9;

            v56 = 0;
LABEL_59:
            if (v54)
            {
              goto LABEL_64;
            }

            while (1)
            {
              v57 = v56 + 1;
              if (__OFADD__(v56, 1))
              {
                __break(1u);
                goto LABEL_135;
              }

              if (v57 >= v55)
              {
                break;
              }

              v54 = *(v51 + 8 * v57);
              ++v56;
              if (v54)
              {
                v56 = v57;
LABEL_64:
                v58 = __clz(__rbit64(v54)) | (v56 << 6);
                v59 = (*(v173 + 48) + 16 * v58);
                v60 = *v59;
                v61 = v59[1];
                v9 = *(*(v173 + 56) + 8 * v58);
                v184[0] = v170;
                v177 = v9;

                v189 = v61;
                MEMORY[0x18CFE22D0](v60, v61);
                v62 = [v4 layer];
                v63 = sub_18A4A7258();
                v64 = [v62 valueForKeyPath_];

                if (v64)
                {
                  sub_18A4A7DE8();
                  swift_unknownObjectRelease();
                }

                else
                {
                  memset(__src, 0, 32);
                }

                v184[0] = __src[0];
                v184[1] = __src[1];
                if (!*(&__src[1] + 1))
                {
                  sub_188A3F5FC(v184, &qword_1EA934050, qword_18A64CA10);
                  if (v9)
                  {
                    v65 = 0;
LABEL_76:
                    v9 = v177;
                    goto LABEL_77;
                  }

LABEL_57:

                  goto LABEL_58;
                }

                sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
                if (!swift_dynamicCast())
                {
                  v65 = 1;
                  goto LABEL_76;
                }

                v65 = v185[0];
                if (!v9)
                {
                  if (v185[0])
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_57;
                }

                if (!v185[0])
                {
                  goto LABEL_76;
                }

                v9 = v177;
                v66 = v177;
                sub_18900FB04(v65);
                v67 = sub_18A4A7C88();
                sub_188DC900C(v65);

                if (v67)
                {

                  sub_188DC900C(v65);

                  goto LABEL_58;
                }

LABEL_77:
                v68 = [v180 layer];
                v69 = v9;
                v9 = sub_18A4A7258();

                [v68 setValue:v69 forKeyPath:v9];

                sub_188DC900C(v65);
LABEL_58:
                v54 &= v54 - 1;

                v4 = v180;
                goto LABEL_59;
              }
            }

            v46 = v169;
            v3 = v163;
          }

          while (v169 != v167);
        }
      }

      else if (*(*(v3 + 240) + 16))
      {
        goto LABEL_143;
      }

      v70 = [v4 layer];
      v71 = sub_18A4A7FF8();
      [v70 setCompositingFilter_];

      v72 = *(v3 + 208);
      v73 = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
      *&v184[2] = &protocol witness table for UIColor;
      *(&v184[1] + 1) = v73;
      *&v184[0] = v72;
      v74 = v72;
      UIView._background.setter(v184);
      [v4 setAlpha_];
      v75 = [v4 layer];
      [v75 setAllowsGroupBlending_];

      v76 = [v4 layer];
      v77 = *(v3 + 232);
      *&v78 = v77;
      [v76 setGain_];

      v79 = [v4 layer];
      [v79 setWantsExtendedDynamicRangeContent_];

      if (v160)
      {
        v9 = &selRef_stopSpinner;
        v80 = [v4 subviews];
        sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        v81 = sub_18A4A7548();

        if (v81 >> 62)
        {
          goto LABEL_151;
        }

        v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_84:

        v83 = *(v3 + 256);
        if (v82 != *(v83 + 16))
        {
LABEL_143:
          sub_18900FAB0();
          swift_allocError();
          *v143 = 1;
          goto LABEL_178;
        }

        v84 = [v4 *(v9 + 2016)];
        v9 = sub_18A4A7548();

        if (v9 >> 62)
        {
          v85 = sub_18A4A7F68();
          v86 = v161;
          if (v85)
          {
LABEL_87:
            v87 = 0;
            v88 = v9 & 0xC000000000000001;
            v189 = v9 & 0xFFFFFFFFFFFFFF8;
            v178 = v9 + 32;
            v164 = v3;
            v171 = v9 & 0xC000000000000001;
            v172 = v9;
            while (1)
            {
              if (v88)
              {
                v89 = sub_188E49300(v87, v9);
              }

              else
              {
                if (v87 >= *(v189 + 16))
                {
                  goto LABEL_149;
                }

                v89 = *(v178 + 8 * v87);
              }

              v4 = v89;
              v90 = *(v83 + 16);
              if (v87 == v90)
              {

                v4 = v180;
                goto LABEL_137;
              }

              if (v87 >= v90)
              {
                goto LABEL_150;
              }

              sub_188B6CFA8(v83 + 32 + 296 * v87, v184 + 8);
              memcpy(__src, v184 + 8, 0x128uLL);
              sub_188B6D84C(&__src[1], v185);
              if (v186)
              {
                v91 = v86;
                sub_188B6A1D4(v185);
              }

              else
              {
                v91 = v86;
                type metadata accessor for UISDFBackdropView();
                v92 = swift_dynamicCastClass();
                if (v92)
                {
                  v93 = v92;
                  v94 = __src[11];
                  v95 = __src[12];
                  v185[0] = MEMORY[0x1E69E7CC0];
                  v174 = v4;
                  sub_188B6479C(0, 4, 0);
                  v96 = v185[0];
                  v98 = *(v185[0] + 16);
                  v97 = *(v185[0] + 24);
                  v99 = v97 >> 1;
                  v100 = v98 + 1;
                  if (v97 >> 1 <= v98)
                  {
                    sub_188B6479C((v97 > 1), v98 + 1, 1);
                    v96 = v185[0];
                    v97 = *(v185[0] + 24);
                    v99 = v97 >> 1;
                  }

                  *(v96 + 16) = v100;
                  *(v96 + 8 * v98 + 32) = fabs(*&v94);
                  v101 = v98 + 2;
                  if (v99 < v101)
                  {
                    sub_188B6479C((v97 > 1), v101, 1);
                    v96 = v185[0];
                  }

                  *(v96 + 16) = v101;
                  *(v96 + 8 * v100 + 32) = fabs(*(&v94 + 1));
                  v103 = *(v96 + 16);
                  v102 = *(v96 + 24);
                  v104 = v103 + 1;
                  if (v103 >= v102 >> 1)
                  {
                    sub_188B6479C((v102 > 1), v103 + 1, 1);
                  }

                  v105 = v185[0];
                  *(v185[0] + 16) = v104;
                  *(v105 + 8 * v103 + 32) = fabs(*(&v95 + 1));
                  v106 = *(v105 + 24);
                  v107 = v103 + 2;
                  if (v107 > (v106 >> 1))
                  {
                    sub_188B6479C((v106 > 1), v107, 1);
                    v105 = v185[0];
                  }

                  *(v105 + 16) = v107;
                  *(v105 + 32 + 8 * v104) = fabs(*&v95);
                  v108 = *(v105 + 16);
                  if (!v108)
                  {
                    goto LABEL_191;
                  }

                  v109 = *(v105 + 32);
                  v110 = v108 - 1;
                  v88 = v171;
                  v9 = v172;
                  if (v108 != 1)
                  {
                    v111 = (v105 + 40);
                    do
                    {
                      v112 = *v111++;
                      v113 = v112;
                      if (v109 < v112)
                      {
                        v109 = v113;
                      }

                      --v110;
                    }

                    while (v110);
                  }

                  v114 = [v93 layer];
                  [v114 setMarginWidth_];
                }

                v3 = v164;
              }

              sub_188B60AAC(v4, a2);
              v86 = v91;
              sub_188B6D288(__src);
              if (v91)
              {
                break;
              }

              ++v87;

              v4 = v180;
              if (v87 == v85)
              {
                goto LABEL_137;
              }
            }

            return;
          }
        }

        else
        {
          v85 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v86 = v161;
          if (v85)
          {
            goto LABEL_87;
          }
        }

LABEL_137:

        v115 = *(v3 + 248);
        if (v115)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v115 = *(v3 + 248);
        if (v115)
        {
LABEL_138:
          if (*(v115 + 16))
          {
            sub_188B6CFA8(v115 + 32, v184);
            v140 = [v4 maskView];
            if (v140)
            {
              v141 = v140;
              sub_188B60AAC(v140, a2);
              sub_188B6D288(v184);
            }

            else
            {
              sub_18900FAB0();
              swift_allocError();
              *v144 = 1;
              swift_willThrow();
              sub_188B6D288(v184);
            }

            return;
          }
        }
      }

      v142 = [v4 maskView];
      if (!v142)
      {
        return;
      }

      goto LABEL_143;
    }

LABEL_46:
    v37 = *v3;
    v9 = v4;

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v184[0] = *a2;
    sub_188B6D924(v9, v37, v30, v38);

    *a2 = *&v184[0];
    v4 = v180;
    v39 = [v9 layer];
    v40 = sub_18A4A7258();
    [v39 setName_];

    goto LABEL_47;
  }

  while (2)
  {
    v9 = 0;
    v148 = v145 + 32;
    v149 = v161;
    while ((v139 & 0xC000000000000001) != 0)
    {
      v150 = v3;
      v151 = sub_188E49300(v9, v139);
LABEL_162:
      v152 = v151;
      if (v9 == *v146)
      {

        v3 = v150;
        goto LABEL_175;
      }

      if (v9 >= *v146)
      {
        goto LABEL_171;
      }

      sub_188B6CFA8(v148, v184 + 8);
      sub_188B60AAC(v152, a2);
      if (v161)
      {
        sub_188B6D288(v184 + 8);

        return;
      }

      ++v9;
      sub_188B6D288(v184 + 8);

      v148 += 296;
      v3 = v150;
      if (v189 == v9)
      {
        goto LABEL_175;
      }
    }

    if (v9 < *(v139 + 16))
    {
      v150 = v3;
      v151 = *(v139 + 8 * v9 + 32);
      goto LABEL_162;
    }

    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    v153 = sub_18A4A7F68();
    v145 = *(v3 + 256);
    v146 = (v145 + 16);
    if (v153 == *(v145 + 16))
    {
      v189 = sub_18A4A7F68();
      if (!v189)
      {
        goto LABEL_174;
      }

      continue;
    }

    break;
  }

LABEL_176:

LABEL_177:
  sub_18900FAB0();
  swift_allocError();
  *v154 = 0;
LABEL_178:
  swift_willThrow();
}

char *sub_188B622F4(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for GlassPair(0);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v24 = v6;

    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v28 = v24 & 0xFFFFFFFFFFFFFF8;
    v29 = v24 & 0xC000000000000001;
    v27 = v24 + 32;
    v25 = v7;
    while (1)
    {
      if (v29)
      {
        v6 = sub_188E49160(v8, v24);
      }

      else
      {
        if (v8 >= *(v28 + 16))
        {
          goto LABEL_22;
        }

        v6 = *(v27 + 8 * v8);
      }

      v10 = v6;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
      v13 = swift_beginAccess();
      v14 = *&v10[v12];
      v15 = *(v14 + 16);
      if (v15)
      {
        v31 = v9;
        v32 = v10;
        v33 = MEMORY[0x1E69E7CC0];

        sub_18A4A8208();
        v16 = v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v17 = *(v26 + 72);
        do
        {
          sub_189063880(v16, v4, type metadata accessor for GlassPair);
          v18 = *&v4[*(v2 + 20)];
          sub_1890639A8(v4, type metadata accessor for GlassPair);
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
          v16 += v17;
          --v15;
        }

        while (v15);

        v19 = v33;
        v7 = v25;
        v9 = v31;
        v10 = v32;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v33 = v30;
      MEMORY[0x1EEE9AC00](v13);
      *(&v23 - 2) = &v33;
      v20 = sub_188B21F78(sub_188B60228, (&v23 - 4), v19);

      if (v20)
      {

        return v10;
      }

      if (v8 == v7)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v22 = v6;
    v7 = sub_18A4A7F68();
    v6 = v22;
  }

LABEL_18:

  return 0;
}

uint64_t _layoutSizeInfo(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  v5 = [v3 arrayWithObjects:{v4, objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1), 0}];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"layoutSize", @"intentionallyCollapsedHeight", 0}];

  return [v2 dictionaryWithObjects:v5 forKeys:v6];
}

uint64_t sub_188B627A8(uint64_t a1, int a2, int a3, int a4)
{
  v37 = a4;
  v34 = a3;
  v32 = a2;
  v5 = sub_18A4A4BE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_18A4A5FA8();
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-v16];
  v19 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent);
  v18 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent + 8);
  v36 = a1;
  if (v19)
  {
    v33 = v19;
    v20 = v18;
  }

  else
  {
    v21 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content);
    v20 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8);
    v33 = v21;
  }

  sub_188B6414C(v19, v18);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  sub_188E5A020();
  (*(v6 + 16))(v8, v11, v5);
  sub_188E5C34C(v11);
  sub_18A4A4B98();
  v23 = (*(v6 + 8))(v8, v5);
  if (v32)
  {
    MEMORY[0x18CFE0ED0](v23);
    v24 = v35;
    if (!IsReduceMotionEnabled)
    {
      sub_18A4A5F68();
    }

    sub_18A4A5F78();
  }

  else
  {
    sub_18A4A5F78();
    v24 = v35;
  }

  v25 = sub_188C449C0(v14, &v38);
  v26 = *(v12 + 8);
  v26(v14, v24, v25);
  v43[2] = v40;
  v43[3] = v41;
  v44[0] = v42[0];
  *(v44 + 9) = *(v42 + 9);
  v43[0] = v38;
  v43[1] = v39;
  if (v34)
  {
    sub_188C3DF9C(v43, &v38);
    type metadata accessor for NavigationBarTransitionContainer.Animator();
    v27 = swift_allocObject();
    v28 = v41;
    v27[3] = v40;
    v27[4] = v28;
    v27[5] = v42[0];
    *(v27 + 89) = *(v42 + 9);
    v29 = v39;
    v27[1] = v38;
    v27[2] = v29;
  }

  else
  {
    v27 = 0;
  }

  sub_188B62BD4(v33, v27);
  sub_188E51AF0(v20, v27, v37 & 1);

  sub_188AAFF20(v43);
  return (v26)(v17, v24);
}

void sub_188B62BD4(int64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews;
  v6 = *(v2 + OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews);

  v7 = sub_188B42D44(a1, v6);

  if ((v7 & 1) == 0)
  {
    *(v2 + v5) = a1;

    v8 = OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews;
    v132 = v2;
    v9 = *(v2 + OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews);
    v10 = sub_188B8B8E4(MEMORY[0x1E69E7CC0]);
    v134 = a2;
    v129 = v8;
    if (v9 >> 62)
    {
      goto LABEL_116;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
    {
      v130 = a1;

      if (i)
      {
        a1 = 0;
        v135 = v9 & 0xC000000000000001;
        v133 = v9 & 0xFFFFFFFFFFFFFF8;
        v131 = v9;
        while (1)
        {
          if (v135)
          {
            v15 = sub_188E4A628(a1, v9);
            v16 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (a1 >= *(v133 + 16))
            {
              goto LABEL_106;
            }

            v15 = *(v9 + 8 * a1 + 32);
            v16 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_105;
            }
          }

          v9 = i;
          v17 = v15[OBJC_IVAR____UINavigationBarHostedViewWrapper_id];
          v18 = v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v162 = v10;
          v20 = sub_188A86B54(v17);
          v22 = v10;
          v23 = *(v10 + 16);
          v24 = (v21 & 1) == 0;
          v25 = __OFADD__(v23, v24);
          v26 = v23 + v24;
          if (v25)
          {
LABEL_107:
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
            goto LABEL_115;
          }

          v10 = v21;
          if (*(v22 + 24) < v26)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v31 = v20;
          sub_188FA40EC();
          v20 = v31;
          v28 = v162;
          if (v10)
          {
LABEL_6:
            v12 = v28[7];
            v13 = *(v12 + 8 * v20);
            *(v12 + 8 * v20) = v18;

            v10 = v28;
            goto LABEL_7;
          }

LABEL_17:
          v28[(v20 >> 6) + 8] |= 1 << v20;
          *(v28[6] + v20) = v17;
          *(v28[7] + 8 * v20) = v18;

          v29 = v28[2];
          v25 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v25)
          {
            goto LABEL_112;
          }

          v10 = v28;
          v28[2] = v30;
LABEL_7:
          ++a1;
          i = v9;
          v14 = v16 == v9;
          v9 = v131;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        sub_188C4FEA8(v26, isUniquelyReferenced_nonNull_native);
        v20 = sub_188A86B54(v17);
        if ((v10 & 1) != (v27 & 1))
        {
          sub_18A4A87A8();
          __break(1u);
          return;
        }

LABEL_16:
        v28 = v162;
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

LABEL_24:

      v32 = MEMORY[0x1E69E7CC0];
      v169 = MEMORY[0x1E69E7CC0];
      v33 = v130[2];
      if (v33)
      {
        a1 = (v130 + 4);
        v9 = v132;
        v135 = OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews;
        swift_beginAccess();
        v34 = 0;
        v133 = v33;
        v131 = a1;
        do
        {
          v35 = (a1 + 80 * v34);
          v36 = v35[1];
          v170[0] = *v35;
          v170[1] = v36;
          v37 = v35[3];
          v170[2] = v35[2];
          v170[3] = v37;
          v170[4] = v35[4];
          v38 = BYTE8(v170[0]);
          v39 = sub_188A86B54(BYTE8(v170[0]));
          if (v40)
          {
            v41 = v39;
            sub_188B8B3D0(v170, &v162);
            v42 = swift_isUniquelyReferenced_nonNull_native();
            *&v162 = v10;
            if (!v42)
            {
              sub_188FA40EC();
              v10 = v162;
            }

            v43 = *(*(v10 + 56) + 8 * v41);
            sub_188C4FF24(v41, v10);
            v44 = v43;
            sub_188B8BA58(v170, v134);
          }

          else
          {
            a1 = v10;
            v45 = *(v9 + v135);
            v10 = v45 & 0xFFFFFFFFFFFFFF8;
            if (v45 >> 62)
            {
              v9 = sub_18A4A7F68();
            }

            else
            {
              v9 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_188B8B3D0(v170, &v162);

            v46 = 0;
            while (v9 != v46)
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                LODWORD(v130) = *(sub_188E4A628(v46, v45) + OBJC_IVAR____UINavigationBarHostedViewWrapper_id);
                swift_unknownObjectRelease();
                if (v130 == v38)
                {
LABEL_41:

                  v9 = v132;
                  swift_beginAccess();
                  v47 = sub_188B747B4(v46);
                  swift_endAccess();
                  v44 = v47;
                  sub_188B8BA58(v170, v134);
                  goto LABEL_43;
                }
              }

              else
              {
                if (v46 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_104:
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
                  goto LABEL_107;
                }

                if (*(*(v45 + 8 * v46 + 32) + OBJC_IVAR____UINavigationBarHostedViewWrapper_id) == v38)
                {
                  goto LABEL_41;
                }
              }

              v25 = __OFADD__(v46++, 1);
              if (v25)
              {
                goto LABEL_104;
              }
            }

            MEMORY[0x1EEE9AC00](v48);
            v118[2] = v170;
            sub_188FE3D8C(sub_188FE6328, v118);
            v44 = v49;
            v9 = v132;
LABEL_43:
            v10 = a1;
            v33 = v133;
            a1 = v131;
          }

          MEMORY[0x18CFE2450]();
          if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
            v9 = v132;
          }

          ++v34;
          sub_18A4A75F8();

          sub_188B8BA00(v170);
        }

        while (v34 != v33);
        v32 = v169;
      }

      else
      {
        v9 = v132;
      }

      *&v129[v9] = v32;

      v50 = v134;
      v51 = v32 >> 62 ? sub_18A4A7F68() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v133 = v32;

      v125 = v10;
      if (v51)
      {
        break;
      }

LABEL_73:

      if (!v50)
      {
        v111 = 1 << *(v10 + 32);
        v112 = -1;
        if (v111 < 64)
        {
          v112 = ~(-1 << v111);
        }

        v113 = v112 & *(v10 + 64);
        v114 = (v111 + 63) >> 6;

        v115 = 0;
        v9 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
        while (v113)
        {
          v116 = v115;
LABEL_99:
          v117 = __clz(__rbit64(v113));
          v113 &= v113 - 1;
          [*(*(v10 + 56) + ((v116 << 9) | (8 * v117))) removeFromSuperview];
        }

        while (1)
        {
          v116 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            goto LABEL_111;
          }

          if (v116 >= v114)
          {

            return;
          }

          v113 = *(v10 + 64 + 8 * v116);
          ++v115;
          if (v113)
          {
            v115 = v116;
            goto LABEL_99;
          }
        }
      }

      v79 = (v10 + 64);
      v80 = 1 << *(v10 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v10 + 64);
      v83 = OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews;
      a1 = (v80 + 63) >> 6;
      v133 = &v143;
      v123 = &v138;

      v84 = 0;
      v121 = v83;
      v122 = (v10 + 64);
      v120 = a1;
      if (!v82)
      {
LABEL_78:
        while (1)
        {
          v85 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_110;
          }

          if (v85 >= a1)
          {

            return;
          }

          v82 = v79[v85];
          ++v84;
          if (v82)
          {
            goto LABEL_81;
          }
        }
      }

      while (1)
      {
        v85 = v84;
LABEL_81:
        v86 = *(*(v10 + 56) + ((v85 << 9) | (8 * __clz(__rbit64(v82)))));
        swift_beginAccess();
        v87 = v86;
        MEMORY[0x18CFE2450]();
        if (*((*(v9 + v83) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v83) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
          v9 = v132;
        }

        sub_18A4A75F8();
        swift_endAccess();
        v88 = swift_allocObject();
        *(v88 + 16) = v9;
        *(v88 + 24) = v87;
        v167 = 0;
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v162 = 0u;
        v168 = -1;
        v135 = swift_allocObject();
        *(v135 + 16) = v87;
        v89 = swift_allocObject();
        *(v89 + 16) = sub_188FE62F0;
        *(v89 + 24) = v88;
        sub_188A3F29C(&v162, &v152, &qword_1EA9362D0, &qword_18A66CFA0);
        v130 = v87;
        v131 = v88;
        if (BYTE8(v156[1]) == 255)
        {
          sub_188C3DF9C(v134 + 16, &v157);
          v92 = v89;
          v93 = BYTE8(v156[1]);
          v94 = v87;
          v95 = v9;

          v14 = v93 == 255;
          v89 = v92;
          if (!v14)
          {
            sub_188A3F5FC(&v152, &qword_1EA9362D0, &qword_18A66CFA0);
          }
        }

        else
        {
          v159 = v154;
          v160 = v155;
          v161[0] = v156[0];
          *(v161 + 9) = *(v156 + 9);
          v157 = v152;
          v158 = v153;
          v90 = v87;
          v91 = v9;
        }

        v96 = swift_allocObject();
        v97 = v135;
        v96[2] = sub_188FE6668;
        v96[3] = v97;
        v98 = v96;
        v129 = v96;
        v99 = swift_allocObject();
        *(v99 + 16) = sub_188A4A9DC;
        *(v99 + 24) = v89;
        sub_188C3DF9C(&v157, &v152);
        sub_188C3DF9C(&v157, &v147);
        v100 = swift_allocObject();
        v101 = v150;
        *(v100 + 48) = v149;
        *(v100 + 64) = v101;
        *(v100 + 80) = v151[0];
        *(v100 + 89) = *(v151 + 9);
        v102 = v148;
        *(v100 + 16) = v147;
        *(v100 + 32) = v102;
        *(v100 + 112) = signpost_c2_entryLock_start;
        *(v100 + 120) = 0;
        v103 = swift_allocObject();
        v128 = v89;
        v104 = v103;
        *(v103 + 16) = 0;
        v105 = swift_allocObject();
        v105[2] = v104;
        v105[3] = sub_188FE6690;
        v105[4] = v99;
        v126 = v99;
        v127 = objc_opt_self();
        v9 = swift_allocObject();
        *(v9 + 16) = sub_188E5C7F8;
        *(v9 + 24) = v98;
        *&v144 = sub_188E3FE50;
        *(&v144 + 1) = v9;
        *&v142 = MEMORY[0x1E69E9820];
        *(&v142 + 1) = 1107296256;
        *&v143 = sub_188A4A968;
        *(&v143 + 1) = &block_descriptor_160;
        v124 = _Block_copy(&v142);

        sub_188C3DFF8(&v152, &v142);
        v106 = swift_allocObject();
        v107 = v145;
        *(v106 + 56) = v144;
        *(v106 + 72) = v107;
        *(v106 + 88) = v146[0];
        *(v106 + 97) = *(v146 + 9);
        v108 = v143;
        *(v106 + 24) = v142;
        *(v106 + 16) = v104;
        *(v106 + 40) = v108;
        *(v106 + 113) = 0;
        *(v106 + 120) = sub_188E5C7FC;
        *(v106 + 128) = v100;
        v140 = sub_188FE665C;
        v141 = v106;
        v136 = MEMORY[0x1E69E9820];
        v137 = 1107296256;
        v138 = sub_188A4A8F0;
        v139 = &block_descriptor_167_1;
        v109 = _Block_copy(&v136);

        *&v144 = sub_188E5C82C;
        *(&v144 + 1) = v105;
        *&v142 = MEMORY[0x1E69E9820];
        *(&v142 + 1) = 1107296256;
        *&v143 = sub_188ABD010;
        *(&v143 + 1) = &block_descriptor_170_1;
        v10 = _Block_copy(&v142);

        a1 = v124;
        [v127 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
        _Block_release(v10);
        _Block_release(v109);
        _Block_release(a1);

        sub_188C3E234(&v152);
        sub_188AAFF20(&v157);
        sub_188A3F5FC(&v162, &qword_1EA9362D0, &qword_18A66CFA0);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        v82 &= v82 - 1;
        v84 = v85;
        v9 = v132;
        v10 = v125;
        v83 = v121;
        v79 = v122;
        a1 = v120;
        if (!v82)
        {
          goto LABEL_78;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      ;
    }

    a1 = 0;
    v52 = v133 & 0xC000000000000001;
    v53 = v133 & 0xFFFFFFFFFFFFFF8;
    v123 = &v143;
    v124 = &v163;
    v122 = &v138;
    v120 = v133 & 0xC000000000000001;
    v121 = v51;
    v119 = v133 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v52)
      {
        v54 = sub_188E4A628(a1, v133);
      }

      else
      {
        if (a1 >= *(v53 + 16))
        {
          goto LABEL_109;
        }

        v54 = *(v133 + 8 * a1 + 32);
      }

      v55 = v54;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_108;
      }

      v135 = a1 + 1;
      v56 = [v54 superview];
      if (v56)
      {
        v57 = v56;

        [v9 insertSubview:v55 atIndex:a1];
        if (!v50 || v57 == v9)
        {
LABEL_54:

          goto LABEL_55;
        }
      }

      else
      {
        [v9 insertSubview:v55 atIndex:a1];
        if (!v50)
        {
          goto LABEL_54;
        }
      }

      v10 = objc_opt_self();
      v58 = swift_allocObject();
      *(v58 + 16) = v55;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_188F8656C;
      *(v59 + 24) = v58;
      *&v164 = sub_188E3FE50;
      *(&v164 + 1) = v59;
      *&v162 = MEMORY[0x1E69E9820];
      *(&v162 + 1) = 1107296256;
      *&v163 = sub_188A4A968;
      *(&v163 + 1) = &block_descriptor_90_2;
      v9 = _Block_copy(&v162);

      v60 = v55;

      [v10 performWithoutAnimation_];
      _Block_release(v9);
      v61 = swift_isEscapingClosureAtFileLocation();

      if (v61)
      {
        goto LABEL_113;
      }

      v167 = 0;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v162 = 0u;
      v168 = -1;
      v62 = swift_allocObject();
      v62[2] = v60;
      sub_188A3F29C(&v162, &v152, &qword_1EA9362D0, &qword_18A66CFA0);
      v130 = v10;
      v131 = v58;
      v129 = v60;
      if (BYTE8(v156[1]) == 255)
      {
        sub_188C3DF9C(v50 + 16, &v157);
        v64 = BYTE8(v156[1]);
        v65 = v60;
        if (v64 != 255)
        {
          sub_188A3F5FC(&v152, &qword_1EA9362D0, &qword_18A66CFA0);
        }
      }

      else
      {
        v159 = v154;
        v160 = v155;
        v161[0] = v156[0];
        *(v161 + 9) = *(v156 + 9);
        v157 = v152;
        v158 = v153;
        v63 = v60;
      }

      v66 = swift_allocObject();
      *(v66 + 16) = sub_188C4F5D8;
      *(v66 + 24) = v62;
      v67 = v66;
      v128 = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      sub_188C3DF9C(&v157, &v152);
      sub_188C3DF9C(&v157, &v147);
      v9 = swift_allocObject();
      v69 = v150;
      *(v9 + 48) = v149;
      *(v9 + 64) = v69;
      *(v9 + 80) = v151[0];
      *(v9 + 89) = *(v151 + 9);
      v70 = v148;
      *(v9 + 16) = v147;
      *(v9 + 32) = v70;
      *(v9 + 112) = signpost_c2_entryLock_start;
      *(v9 + 120) = 0;
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      *(v72 + 24) = sub_188FE6690;
      *(v72 + 32) = v68;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_188E5C7F8;
      *(v10 + 24) = v67;
      *&v144 = sub_188E3FE50;
      *(&v144 + 1) = v10;
      *&v142 = MEMORY[0x1E69E9820];
      *(&v142 + 1) = 1107296256;
      *&v143 = sub_188A4A968;
      *(&v143 + 1) = &block_descriptor_117_2;
      v126 = _Block_copy(&v142);
      v127 = v62;

      sub_188C3DFF8(&v152, &v142);
      v73 = swift_allocObject();
      v74 = v145;
      *(v73 + 56) = v144;
      *(v73 + 72) = v74;
      *(v73 + 88) = v146[0];
      *(v73 + 97) = *(v146 + 9);
      v75 = v143;
      *(v73 + 24) = v142;
      *(v73 + 16) = v71;
      *(v73 + 40) = v75;
      *(v73 + 113) = 0;
      *(v73 + 120) = sub_188E5C7FC;
      *(v73 + 128) = v9;
      v140 = sub_188FE665C;
      v141 = v73;
      v136 = MEMORY[0x1E69E9820];
      v137 = 1107296256;
      v138 = sub_188A4A8F0;
      v139 = &block_descriptor_124_1;
      v76 = _Block_copy(&v136);

      *&v144 = sub_188E5C82C;
      *(&v144 + 1) = v72;
      *&v142 = MEMORY[0x1E69E9820];
      *(&v142 + 1) = 1107296256;
      *&v143 = sub_188ABD010;
      *(&v143 + 1) = &block_descriptor_127_1;
      v77 = _Block_copy(&v142);

      v78 = v126;
      [v130 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v77);
      _Block_release(v76);
      _Block_release(v78);

      sub_188C3E234(&v152);
      sub_188AAFF20(&v157);
      sub_188A3F5FC(&v162, &qword_1EA9362D0, &qword_18A66CFA0);

      LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

      if (v72)
      {
        goto LABEL_114;
      }

      v50 = v134;
      v9 = v132;
      v10 = v125;
      v52 = v120;
      v51 = v121;
      v53 = v119;
LABEL_55:
      ++a1;
      if (v135 == v51)
      {
        goto LABEL_73;
      }
    }
  }
}

uint64_t sub_188B6406C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B640AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B640E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_188B6414C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double UIView.Material.resolved(using:size:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *sub_188B6479C(char *a1, int64_t a2, char a3)
{
  result = sub_188B22DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188B647BC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_18A4A3118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v36 = v5;
  v10 = *(v5 + 16);
  v34 = v2;
  v31 = v10;
  v32 = v11;
  v10(v30 - v11, v2, v4, v9);
  v12 = MEMORY[0x1EEE86AF8];
  v30[1] = sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8], MEMORY[0x1EEE86B10]);
  sub_18A4A7E38();
  sub_188B64AD8(&unk_1ED48D450, v12, MEMORY[0x1EEE86B08]);
  v33 = a2;
  v13 = sub_18A4A7248();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E78, &unk_18A654D30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  *(v30 - v17) = (v13 & 1) == 0;
  if (v13)
  {
    v21 = (*(v36 + 32))(&v18[v20], v7, v4, v16);
  }

  else
  {
    (*(v36 + 8))(v7, v4, v16);
    v22 = &v18[v20];
    v23 = v33;
    v24 = v31;
    v25 = (v31)(v22, v33, v4);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v24(v30 - v32, v23, v4, v26);
    v21 = sub_18A4A7E88();
  }

  MEMORY[0x1EEE9AC00](v21);
  v27 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F704(v18, v27, &qword_1EA937E78, &unk_18A654D30);
  v28 = *v27;
  (*(v36 + 32))(v35, &v27[*(v14 + 48)], v4);
  return v28;
}

uint64_t sub_188B64AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_188B64B20(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *__return_ptr), uint64_t a5, id a6)
{
  type metadata accessor for _GlassGroupView();
  if (!swift_dynamicCastClass())
  {
    v10 = a2();
    v11 = [v10 userInterfaceStyle];

    if (v11 != a6)
    {
      a4(v14);
      v12 = v15;
      v13 = v16;
      __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      UIMutableTraits.userInterfaceStyle.setter(a6, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  return result;
}

uint64_t sub_188B64BF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (*(v10 + 16))
  {
    v11 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v8, type metadata accessor for _Glass);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for _Glass(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v8, v12, 1, v13);
  sub_188A3F29C(v8, v5, &unk_1EA93BA10, &qword_18A6526E0);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_188A3F5FC(v8, &unk_1EA93BA10, &qword_18A6526E0);
    sub_188A3F5FC(v5, &unk_1EA93BA10, &qword_18A6526E0);
    v15 = 1;
  }

  else
  {
    v15 = _Glass.isCompatible(_:)(a1);
    sub_188A3F5FC(v8, &unk_1EA93BA10, &qword_18A6526E0);
    sub_1890639A8(v5, type metadata accessor for _Glass);
  }

  return v15 & 1;
}

uint64_t _Glass.isCompatible(_:)(uint64_t a1)
{
  v3 = type metadata accessor for _Glass(0);
  if (*(v1 + *(v3 + 48)) != *(a1 + *(v3 + 48)))
  {
    goto LABEL_20;
  }

  v4 = v3;
  v5 = *(v3 + 24);
  v6 = v1 + v5;
  v7 = a1 + v5;
  if ((MEMORY[0x18CFDDDF0](v1 + v5, a1 + v5) & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = type metadata accessor for _Glass._GlassVariant(0);
  if (*(v6 + v8[5]) != *(v7 + v8[5]) || *(v6 + v8[6]) != *(v7 + v8[6]))
  {
    goto LABEL_20;
  }

  v9 = v8[7];
  v10 = *(v6 + v9);
  v11 = *(v7 + v9);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v12 = v11;
    v13 = v10;
    v14 = sub_18A4A7C88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  if (*(v1 + v4[10]) == *(a1 + v4[10]))
  {
    v15 = v4;
    v16 = *(v1 + 16);
    v17 = *(a1 + 16);
    if (v16)
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      if (*(v1 + 8) != *(a1 + 8) || v16 != v17)
      {
        v18 = sub_18A4A86C8();
        v15 = v4;
        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_20;
    }

    if (*(v1 + v15[9]) == *(a1 + v15[9]) && *(v1 + v15[7]) == *(a1 + v15[7]))
    {
      v19 = *(v1 + v15[8]) ^ *(a1 + v15[8]) ^ 1;
      return v19 & 1;
    }
  }

LABEL_20:
  v19 = 0;
  return v19 & 1;
}

void sub_188B65054()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (*(v9 + 16))
  {
    v10 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4, type metadata accessor for _Glass);
    sub_188B6549C(v4, v7, type metadata accessor for _Glass);
    v11 = [v1 layer];
    [v11 setZPosition_];

    if (*&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView])
    {
      sub_188B89FBC();
      v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
      swift_beginAccess();
      v13 = *&v1[v12];
      v32 = v7;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = sub_18A4A8338() | 0x8000000000000000;
      }

      else
      {
        v18 = -1 << *(v13 + 32);
        v15 = ~v18;
        v14 = v13 + 64;
        v19 = -v18;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v16 = v20 & *(v13 + 64);
        v17 = v13;
      }

      v21 = 0;
      v31 = v15;
      v22 = (v15 + 64) >> 6;
      v33 = v17;
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v23 = v21;
        v24 = v16;
        v25 = v21;
        if (!v16)
        {
          break;
        }

LABEL_17:
        v26 = (v24 - 1) & v24;
        v27 = *(*(v17 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

        if (!v27)
        {
LABEL_24:
          v17 = v33;
LABEL_23:
          sub_1890639A8(v32, type metadata accessor for _Glass);
          sub_188E036A4(v17);
          return;
        }

        while (1)
        {

          sub_18906192C();

          v21 = v25;
          v16 = v26;
          v17 = v33;
          if ((v33 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_19:
          v28 = sub_18A4A8378();
          if (!v28)
          {
            goto LABEL_23;
          }

          v30 = v29;
          v34 = v28;
          sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
          swift_dynamicCast();
          v27 = v35;
          v34 = v30;
          type metadata accessor for GlassGroupLayerView.MaterializeAnimation(0);
          swift_dynamicCast();
          v25 = v21;
          v26 = v16;
          if (!v27)
          {
            goto LABEL_24;
          }
        }
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          goto LABEL_23;
        }

        v24 = *(v14 + 8 * v25);
        ++v23;
        if (v24)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
      sub_188B68770();
      sub_1890639A8(v7, type metadata accessor for _Glass);
    }
  }
}

uint64_t sub_188B6549C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B65504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B6556C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_188B655D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_188A55538(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_188B65974(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934050, qword_18A64CA10);
    sub_188BBAF5C(a2, a3, v8);

    sub_188A3F5FC(v8, &qword_1EA934050, qword_18A64CA10);
  }
}

void *sub_188B656C4(uint64_t (*a1)(id *), __n128 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v8 = sub_188E49160(j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a4 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v14 = v8;
      v11 = a1(&v14);
      if (v4)
      {

        return v9;
      }

      if (v11)
      {
        return v9;
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_188B657E8()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, sub_188AF4E14, 0);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933148, &qword_18A648D58);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_188B65974(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B0944C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188BBB000();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188B65AC4(v16, a4 & 1);
    v11 = sub_188B0944C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    sub_188A55538(a1, v22);
  }

  else
  {
    sub_188B65D7C(v11, a2, a3, a1, v21);
  }
}

void sub_188B65AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70, &unk_18A64E770);
  v34 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_188A55538(v24, v35);
      }

      else
      {
        sub_188A55598(v24, v35);
      }

      sub_18A4A8888();
      sub_18A4A7348();
      v25 = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_188A55538(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

_OWORD *sub_188B65D7C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_188A55538(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

double sub_188B65E58(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName);
  v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName + 8);
  *v3 = a1;
  v3[1] = a2;
  if (*(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup) == 1)
  {
    if (a2)
    {
      if (v5)
      {
        v6 = v4 == a1 && v5 == a2;
        if (v6 || (sub_18A4A86C8() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v5)
    {
      return result;
    }

    v7 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView);
    if (v7)
    {
      v8 = v7;
      sub_188B667B4(v8);
    }
  }

LABEL_13:

  return result;
}

uint64_t sub_188B65F14(uint64_t a1)
{
  result = type metadata accessor for GlassState(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_188B65FF8(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state];
  sub_18A4A2DF8();
  v12 = &v11[*(type metadata accessor for GlassState(0) + 20)];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] = 1;
  v13 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = 0;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius] = 0;
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] = 0;
  v14 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
  v15 = sub_188B66180(v9);
  *v14 = 2;
  v14[1] = v15;
  v16 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  *&v4[v16] = sub_188E8F624(v9);
  v18.receiver = v4;
  v18.super_class = type metadata accessor for GlassGroupLayerView(0);
  return objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
}

unint64_t sub_188B66180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C80, &unk_18A6570C0);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_188A403F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_188B6625C(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  if (*(v4 + 16))
  {
    v5 = sub_188A403F4(a1);
    if (v6)
    {
      return *(*(v4 + 56) + 8 * v5);
    }
  }

  v7 = *v2;
  *v2 *= 2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2[1];
  sub_188B662F4(v7, a1, isUniquelyReferenced_nonNull_native);
  v2[1] = v10;
  return v7;
}

uint64_t sub_188B662F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA0BF0();
      result = v17;
      goto LABEL_8;
    }

    sub_188B66400(v14, a3 & 1);
    result = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_188A415E8(result, a2, a1, v19);
  }

  return result;
}

void sub_188B66400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C80, &unk_18A6570C0);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_188B667B4(void *a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] != 1)
  {
    return 1;
  }

  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))())
  {
    v5 = [a1 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      if (!*&v2[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName + 8])
      {
        v17 = [v2 traitCollection];
        sub_188E1ADFC();
        v19 = v18;

        if (!v19)
        {
          MEMORY[0x18CFE22D0](0x72477373616C475FLL, 0xEC0000002D70756FLL);
          result = [v2 superview];
          if (!result)
          {
            __break(1u);
            return result;
          }

          sub_18A4A82D8();
        }
      }

      v20 = sub_18A4A7258();

      [v7 setGroupName_];

      return 1;
    }
  }

  v8 = (*((*v4 & *a1) + 0x60))();
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_27:
    v11 = sub_18A4A7F68();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = sub_188E49314(i, v9);
    }

    else
    {
      if (i >= *(v10 + 16))
      {
        goto LABEL_26;
      }

      v13 = *(v9 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = sub_188B667B4(v13);

    if (v15)
    {

      return 1;
    }
  }

  return 0;
}

double sub_188B66A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v9(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

void sub_188B66B10(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_188A55598(a1, v19);
    type metadata accessor for UISDFView();
    if (swift_dynamicCast())
    {
      v10 = OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius;
      v18[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = v9[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius];
      sub_18900EF90();
      if (v11 != a2)
      {
        v12 = v18[v10];
        v13 = [v18 layer];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClassUnconditional();
        if (v12 == 1)
        {
          v15 = v14;
          v16 = sub_18A4A2D28();
          v17 = sub_18A4A7258();
          [v15 setValue:v16 forKey:v17];
        }

        else
        {
          [v14 setSmoothness_];
        }
      }
    }

    else
    {
    }
  }
}

void sub_188B66CB0(id a1)
{
  v3 = type metadata accessor for GlassPair(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v48[0] = a1;
  if (v10)
  {
    aBlock = MEMORY[0x1E69E7CC0];

    sub_18A4A8208();
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_189063880(v12, v6, type metadata accessor for GlassPair);
      v14 = *&v6[*(v3 + 20)];
      sub_1890639A8(v6, type metadata accessor for GlassPair);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v12 += v13;
      --v10;
    }

    while (v10);

    v11 = aBlock;
    a1 = v48[0];
  }

  if (v11 >> 62)
  {
    v15 = sub_18A4A7F68();
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_43:

    return;
  }

  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_43;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = 0;
    v49 = v11 & 0xC000000000000001;
    v48[1] = &v52;
    while (1)
    {
      if (v49)
      {
        v17 = sub_188E49300(v16, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [(UIView *)v17 _traitOverridesIfExist];
      if (v19)
      {
        v20 = v19;
        v21 = sub_18A4A7258();
        v22 = [(_UITraitOverrides *)v20 _hasTransformWithIdentifier:v21];

        if (v22)
        {
          v23 = [v20 userInterfaceStyle];

          if (v23 == a1)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v24 = sub_18A4A7258();
      [(UIView *)v18 _removeChildTraitCollectionTransformWithIdentifier:v24];

      v25 = sub_18A4A7258();
      v26 = swift_allocObject();
      *(v26 + 16) = sub_188B64BE8;
      *(v26 + 24) = v7;
      v54 = sub_188A8EE7C;
      v55 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_188A85DA8;
      v53 = &block_descriptor_118_2;
      v27 = _Block_copy(&aBlock);

      [(UIView *)v18 _addChildTraitCollectionTransformWithIdentifier:v25 transform:v27];
      _Block_release(v27);

LABEL_22:
      v28 = [(UIView *)v18 _typedStorage];
      v29 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      v30 = *(&v28->super.isa + v29);
      if (*(v30 + 16) && (v31 = sub_188A403F4(&_s24_UIViewBackgroundDataKeyVN), (v32 & 1) != 0))
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        swift_endAccess();
        v34 = (v33 + 16);
      }

      else
      {
        swift_endAccess();
        v34 = &xmmword_1ED48CF70;
        if (qword_1ED4906C0 != -1)
        {
          swift_once();
          v34 = &xmmword_1ED48CF70;
        }
      }

      sub_188A3F29C(v34, &aBlock, &unk_1EA933EC0, &qword_18A65E090);

      if (!v53 || (v35 = v56) == 0)
      {
        sub_188A3F5FC(&aBlock, &unk_1EA933EC0, &qword_18A65E090);
        v57 = 0u;
        v58 = 0u;
LABEL_10:
        sub_188A3F5FC(&v57, &qword_1EA934050, qword_18A64CA10);
        goto LABEL_11;
      }

      if (*(v56 + 16) && (v36 = sub_188B0944C(0x756F726765726F66, 0xEE0077656956646ELL), (v37 & 1) != 0))
      {
        sub_188A55598(*(v35 + 56) + 32 * v36, &v57);
      }

      else
      {
        v58 = 0u;
        v57 = 0u;
      }

      sub_188A3F5FC(&aBlock, &unk_1EA933EC0, &qword_18A65E090);
      if (!*(&v58 + 1))
      {
        goto LABEL_10;
      }

      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      if (swift_dynamicCast())
      {
        v38 = aBlock;
        v39 = [(UIView *)aBlock _traitOverridesIfExist];
        if (v39)
        {
          v40 = v39;
          v41 = sub_18A4A7258();
          v42 = [(_UITraitOverrides *)v40 _hasTransformWithIdentifier:v41];

          if (v42)
          {
            v43 = [v40 userInterfaceStyle];

            if (v43 == v48[0])
            {

LABEL_41:
              a1 = v48[0];
              goto LABEL_12;
            }
          }

          else
          {
          }
        }

        v44 = sub_18A4A7258();
        [(UIView *)v38 _removeChildTraitCollectionTransformWithIdentifier:v44];

        v45 = sub_18A4A7258();
        v46 = swift_allocObject();
        *(v46 + 16) = sub_188B64BE8;
        *(v46 + 24) = v7;
        v54 = sub_189063F78;
        v55 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v51 = 1107296256;
        v52 = sub_188A85DA8;
        v53 = &block_descriptor_125_0;
        v47 = _Block_copy(&aBlock);

        [(UIView *)v38 _addChildTraitCollectionTransformWithIdentifier:v45 transform:v47];

        _Block_release(v47);
        goto LABEL_41;
      }

LABEL_11:

LABEL_12:
      if (v15 == ++v16)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
}

id sub_188B6741C(id *a1, char *a2)
{
  v4 = type metadata accessor for GlassPair(0);
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_188B68E20();
  v8 = *a1;
  *a1 = v7;
  v9 = v7;

  [v9 setAutoresizingMask_];
  if (!*a1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *a1;
  [a2 bounds];
  [v10 setFrame_];

  if (!*a1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [*a1 setAlpha_];
  v11 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v44 = a2;
  v12 = *&a2[v11];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v4 + 20);
    v15 = &v44[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
    v46 = v12 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v47 = v14;

    v16 = 0;
    v45 = a1;
    while (v16 < *(v12 + 16))
    {
      sub_189063880(v46 + *(v48 + 72) * v16, v6, type metadata accessor for GlassPair);
      v17 = *&v6[v47];
      sub_1890639A8(v6, type metadata accessor for GlassPair);
      swift_beginAccess();
      v18 = *(v15 + 1);
      if (*(v18 + 16) && (v19 = sub_188A403F4(v17), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v21 = *v15;
        *v15 *= 2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = *(v15 + 1);
        v23 = v50;
        *(v15 + 1) = 0x8000000000000000;
        v24 = sub_188A403F4(v17);
        v26 = v23[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_27;
        }

        v30 = v25;
        if (v23[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = v24;
            sub_188FA0BF0();
            v24 = v40;
          }
        }

        else
        {
          sub_188B66400(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_188A403F4(v17);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }
        }

        a1 = v45;
        v32 = v50;
        if (v30)
        {
          *(v50[7] + 8 * v24) = v21;
        }

        else
        {
          v50[(v24 >> 6) + 8] |= 1 << v24;
          *(v32[6] + 8 * v24) = v17;
          *(v32[7] + 8 * v24) = v21;
          v33 = v32[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_28;
          }

          v32[2] = v34;
        }

        *(v15 + 1) = v32;
      }

      swift_endAccess();
      v35 = type metadata accessor for _ShapeSetTagBox();
      v36 = objc_allocWithZone(v35);
      *&v36[OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag] = v21;
      v49.receiver = v36;
      v49.super_class = v35;
      v37 = objc_msgSendSuper2(&v49, sel_init);
      if (!*a1)
      {
        goto LABEL_29;
      }

      v38 = v37;
      ++v16;
      v39 = *a1;
      [v39 _addTrackedElementFor_with_];

      if (v13 == v16)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  if (!*a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v41 = *a1;
  v42 = v44;
  sub_188B667B4(v41);

  if (*a1)
  {
    return [v42 addSubview_];
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_188B67840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v7 = sub_18A4A7548();

  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_188E49300(i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 _addTrackedElementFor_with_];
  }

LABEL_10:

  v12 = [v3 maskView];
  [v12 _addTrackedElementFor_with_];
}

void sub_188B67A2C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC5UIKit9UISDFView_trackedElements;
  swift_beginAccess();
  v6 = *&v2[v5];

  v7 = sub_18903AD48(a1, v6);

  if (v7)
  {
    goto LABEL_2;
  }

  v8 = [v2 maskView];
  [v8 _addTrackedElementFor_with_];

  v9 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter];
  v10 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter + 8];
  v11 = v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter + 16];
  if ((v11 & 1) != 0 || (!a2 ? (v12 = 0) : (v12 = *(a2 + OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag)), ((v12 ^ v10) & v9) == 0))
  {
    v13 = OBJC_IVAR____TtC5UIKit9UISDFView_containerView;
    if (!*&v2[OBJC_IVAR____TtC5UIKit9UISDFView_containerView])
    {

      v15 = sub_189010E24(v14, v9, v10, v11);
      v17 = v16;

      v18 = *&v2[v13];
      *&v2[v13] = v15;
      v19 = v15;

      v2[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] = v17 & 1;
      [v2 bounds];
      [v19 setFrame_];

      if (!*&v2[v13])
      {
        goto LABEL_25;
      }

      [v2 addSubview_];
    }

    if ((v2[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] & 1) == 0)
    {
      v20 = [objc_allocWithZone(type metadata accessor for UISDFElementView()) initWithFrame_];
      v21 = v20;
      v22 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
      v23 = OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization;
      v24 = *&v20[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization];
      *&v20[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization] = v22;
      if (v22 != v24)
      {
        v25 = [v20 layer];
        [v25 setGradientOvalization_];
      }

      v26 = v21;
      v27 = [v26 layer];
      [v27 setHitTestsAsFill_];

      v28 = *&v2[v13];
      if (v28)
      {
        [v28 addSubview_];
        swift_beginAccess();
        v29 = *&v2[v5];
        if ((v29 & 0xC000000000000001) == 0)
        {
LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = *&v2[v5];
          sub_188EA0414(v26, a1, isUniquelyReferenced_nonNull_native);
          *&v2[v5] = v79;
          swift_endAccess();
          v33 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v34 = [a1 layer];
          [v33 setSourceLayer_];

          v35 = sub_18A4A7258();
          [v33 setKeyPath_];

          v36 = v33;
          [v36 setDuration_];
          [v36 setRemovedOnCompletion_];
          v37 = *MEMORY[0x1E69797E0];
          [v36 setFillMode_];

          v78 = v36;
          v38 = [v26 layer];

          v39 = sub_18A4A7258();
          [v38 addAnimation:v36 forKey:v39];

          v40 = [objc_allocWithZone(MEMORY[0x1E69793B8]) &selRef_inhibitSetupOrientation];
          [v40 setRemovedOnCompletion_];
          v41 = [a1 &selRef_lastOperation];
          [v40 &selRef:v41 setSuppressSpacing:? + 7];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_18A64B810;
          v43 = objc_opt_self();
          *(v42 + 32) = [v43 valueWithCGPoint_];
          *(v42 + 40) = [v43 valueWithCGPoint_];
          *(v42 + 48) = [v43 valueWithCGPoint_];
          *(v42 + 56) = [v43 valueWithCGPoint_];
          sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
          v44 = sub_18A4A7518();

          [v40 setSourcePoints_];

          [v40 setUsesNormalizedCoordinates_];
          [v40 setDuration_];
          v45 = sub_18A4A7258();
          [v40 setKeyPath_];

          [v40 setFillMode_];
          v46 = [v26 &selRef_lastOperation];

          v47 = sub_18A4A7258();
          [v46 addAnimation:v40 forKey:v47];

          v48 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v49 = [a1 &selRef_lastOperation];
          [v48 setSourceLayer_];

          v50 = sub_18A4A7258();
          [v48 setKeyPath_];

          v51 = v48;
          [v51 setDuration_];
          [v51 setRemovedOnCompletion_];
          v52 = v37;
          [v51 setFillMode_];

          v53 = [v26 layer];
          v54 = sub_18A4A7258();
          [v53 addAnimation:v51 forKey:v54];

          v55 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v56 = [a1 layer];
          [v55 setSourceLayer_];

          v57 = sub_18A4A7258();
          [v55 setKeyPath_];

          v58 = v55;
          [v58 setDuration_];
          [v58 setRemovedOnCompletion_];
          [v58 setFillMode_];

          v59 = [v26 &selRef_lastOperation];
          v60 = sub_18A4A7258();
          [v59 addAnimation:v58 forKey:v60];

          v61 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v62 = [a1 &selRef_lastOperation];
          [v61 setSourceLayer_];

          v63 = sub_18A4A7258();
          [v61 setKeyPath_];

          v64 = v61;
          [v64 setDuration_];
          [v64 setRemovedOnCompletion_];
          [v64 setFillMode_];

          v65 = [v26 &selRef_lastOperation];
          v66 = sub_18A4A7258();
          [v65 addAnimation:v64 forKey:v66];

          v67 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v68 = [a1 layer];
          [v67 setSourceLayer_];

          v69 = sub_18A4A7258();
          [v67 setKeyPath_];

          v70 = v67;
          [v70 setDuration_];
          [v70 setRemovedOnCompletion_];
          [v70 setFillMode_];

          v71 = [v26 layer];
          v72 = sub_18A4A7258();
          [v71 addAnimation:v70 forKey:v72];

          v73 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v74 = [a1 layer];
          [v73 setSourceLayer_];

          v75 = sub_18A4A7258();
          [v73 setKeyPath_];

          v76 = v73;
          [v76 setDuration_];
          [v76 setRemovedOnCompletion_];
          [v76 setFillMode_];

          v77 = [v26 layer];
          v7 = sub_18A4A7258();
          [v77 addAnimation:v76 forKey:v7];

LABEL_2:
          return;
        }

        if (v29 < 0)
        {
          v30 = *&v2[v5];
        }

        else
        {
          v30 = v29 & 0xFFFFFFFFFFFFFF8;
        }

        v31 = sub_18A4A7F68();
        if (!__OFADD__(v31, 1))
        {
          *&v2[v5] = sub_18907C534(v30, v31 + 1);
          goto LABEL_22;
        }

        __break(1u);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }
}

void sub_188B68770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!*(v6 + 16))
  {
    v14 = type metadata accessor for _Glass(0);
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_188A3F5FC(v4, &unk_1EA93BA10, &qword_18A6526E0);
    return;
  }

  v7 = *(type metadata accessor for GlassPair(0) - 8);
  sub_189063880(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v4, type metadata accessor for _Glass);
  v8 = type metadata accessor for _Glass(0);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_188A3F5FC(v4, &unk_1EA93BA10, &qword_18A6526E0);
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView;
  v10 = *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
  v11 = sub_18905D5C0();
  swift_beginAccess();
  v34 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_189014978(0, *(v13 + 16));
  }

  else
  {
    *(v11 + 16) = sub_1890BA45C(0, *(v13 + 24) >> 1);
  }

  swift_endAccess();

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v15 + 16;
  *(v18 + 24) = v1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188B67414;
  *(v19 + 24) = v18;
  v39 = sub_188E3FE50;
  v40 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A4A968;
  v38 = &block_descriptor_156_2;
  v20 = _Block_copy(&aBlock);
  v21 = v1;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!*v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [*v16 setAlpha_];
  v22 = *v16;
  v23 = *&v1[v9];
  *&v1[v9] = *v16;
  v24 = v22;

  if (!v10)
  {
LABEL_12:

    return;
  }

  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v34;
  *(v25 + 24) = v15;
  swift_beginAccess();
  v27 = *(v15 + 16);
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = v26;

  v29 = [v27 layer];
  [v29 setCompositingFilter_];

  if ([v17 _isInAnimationBlockWithAnimationsEnabled])
  {
    [v28 setAlpha_];
    v30 = swift_allocObject();
    *(v30 + 16) = sub_189063A10;
    *(v30 + 24) = v25;
    v39 = sub_188A4A9DC;
    v40 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_188ABD010;
    v38 = &block_descriptor_165;
    v31 = _Block_copy(&aBlock);

    [v17 _addCompletion_];

    _Block_release(v31);
    goto LABEL_12;
  }

  [v28 removeFromSuperview];
  if (*v16)
  {
    v32 = [*v16 layer];
    [v32 setCompositingFilter_];

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_188B68D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B68DA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68E20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (*(v4 + 16))
  {
    v5 = (v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];

    sub_18905EA80(v19, v4, v8, v6, v7, 1);
    v10 = v9;

    v11 = sub_18905D5C0();
    v18 = MEMORY[0x1E69E7CC8];
    v12 = sub_18900CCB0(&v18, v11);

    v13 = (v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride);
    if (*(v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride + 8) == 1)
    {
      v14 = *(v1 + v2);
      if (!*(v14 + 16))
      {
        v17 = 0.0;
        goto LABEL_6;
      }

      v15 = *(type metadata accessor for GlassPair(0) - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v13 = (v14 + *(type metadata accessor for _Glass(0) + 48) + v16);
    }

    v17 = *v13;
LABEL_6:
    sub_1890617B4(v12, v17);
    sub_188B66CB0(v10);
    sub_188B6D288(v19);
    type metadata accessor for _UIMaterialDefinitionView();
    return swift_dynamicCastClassUnconditional();
  }

  __break(1u);
  return result;
}

uint64_t sub_188B68FF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188B69068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_188B690B0()
{
  v0 = sub_18A4A6B28();
  v65 = *(v0 - 8);
  v66 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v62 = v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18A4A6558();
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v69 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v61 - v6;
  v7 = sub_18A4A65A8();
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A65B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79[0] = 0uLL;
  *&v79[1] = 1;
  *(&v79[1] + 8) = 0u;
  *(&v79[2] + 8) = 0u;
  *(&v79[3] + 8) = 0u;
  *(&v79[4] + 8) = 0u;
  *(&v79[5] + 8) = 0u;
  *(&v79[6] + 8) = 0u;
  *(&v79[7] + 5) = 0u;
  BYTE5(v79[8]) = 4;
  *&v72 = sub_18A4A7288();
  *(&v72 + 1) = v13;
  sub_18A4A8048();
  memset(&v79[11], 0, 32);
  v14 = objc_opt_self();
  v67 = [v14 clearColor];
  *&v79[14] = 0;
  DWORD2(v79[14]) = 1065353216;
  WORD6(v79[14]) = 1;
  v79[15] = MEMORY[0x1E69E7CC0];
  *&v79[17] = 0;
  v79[16] = MEMORY[0x1E69E7CC0];
  BYTE8(v79[17]) = 1;
  *&v79[18] = 0;
  sub_18A4A6568();
  *(&v79[13] + 1) = v15;
  sub_18A4A6298();
  if (*(&v73 + 1))
  {
    if (swift_dynamicCast())
    {
      if (*(&v77 + 1))
      {
        v72 = v76;
        v73 = v77;
        v74 = v78;
        sub_188EA2468(&v72, &v79[8] + 8);
        goto LABEL_8;
      }
    }

    else
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }
  }

  else
  {
    sub_188A3F5FC(&v72, &qword_1EA934050, qword_18A64CA10);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  sub_188A3F5FC(&v76, &unk_1EA937A80, &unk_18A650500);
LABEL_8:
  v16 = [v14 clearColor];

  *&v79[13] = v16;
  sub_18A4A6B38();
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == *MEMORY[0x1E6981B90])
  {
    (*(v10 + 96))(v12, v9);
    v18 = *v12;
    v19 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    sub_188B6A1D4(&v79[1]);
    *&v79[1] = 1;
    v25.n128_u32[1] = 0;
    v25.n128_u64[1] = 0;
    *(&v79[1] + 8) = 0u;
    *(&v79[2] + 8) = 0u;
    *(&v79[3] + 8) = 0u;
    *(&v79[4] + 8) = 0u;
    *(&v79[5] + 8) = 0u;
    *(&v79[6] + 8) = 0u;
    *(&v79[7] + 5) = 0u;
    BYTE5(v79[8]) = 4;
    if (qword_1ED48E998 != -1)
    {
      swift_once();
    }

    v25.n128_u32[0] = v18;
    v22.n128_u32[0] = v19;
    v23.n128_u32[0] = v20;
    v24.n128_u32[0] = v21;
    sub_188BA4D84(v25, v22, v23, v24);
    v27 = v26;

    *&v79[13] = v27;
    goto LABEL_32;
  }

  if (v17 == *MEMORY[0x1E6981BA0])
  {
    (*(v10 + 96))(v12, v9);
    v28 = v63;
    (*(v64 + 32))(v63, v12, v7);
    sub_18A4A6588();
    *&v72 = v29;
    WORD4(v72) = 256;
    *&v73 = 0;
    BYTE8(v73) = 0;
    v75 = 0;
    sub_188C3B560(&v72, &v79[1]);
    sub_18A4A6578();
    if (qword_1ED48E998 != -1)
    {
      v57 = v30.n128_u32[0];
      v58 = v31.n128_u32[0];
      v59 = v32.n128_u32[0];
      v60 = v33.n128_u32[0];
      swift_once();
      v33.n128_u32[0] = v60;
      v32.n128_u32[0] = v59;
      v31.n128_u32[0] = v58;
      v30.n128_u32[0] = v57;
    }

    sub_188BA4D84(v30, v31, v32, v33);
    v35 = v34;

    *&v79[13] = v35;
    v36 = sub_18A4A6598();
    v37 = *(v36 + 16);
    if (v37)
    {
      v61[1] = v36;
      v62 = v7;
      v38 = *(v71 + 16);
      v39 = v36 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v66 = *(v71 + 72);
      v67 = v38;
      v71 += 16;
      v65 = v71 - 8;
      v40 = MEMORY[0x1E69E7CC0];
      do
      {
        v42 = v67;
        v43 = v68;
        v44 = v70;
        (v67)(v68, v39, v70);
        v45 = v69;
        v42(v69, v43, v44);
        sub_188B6A220(v45, &v72);
        v46 = v72;
        v47 = v73;
        v48 = v74;
        (*v65)(v43, v44);
        if (*(&v72 + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_188B6CE78(0, *(v40 + 2) + 1, 1, v40);
          }

          v50 = *(v40 + 2);
          v49 = *(v40 + 3);
          if (v50 >= v49 >> 1)
          {
            v40 = sub_188B6CE78((v49 > 1), v50 + 1, 1, v40);
          }

          *(v40 + 2) = v50 + 1;
          v41 = &v40[40 * v50];
          *(v41 + 2) = v46;
          *(v41 + 3) = v47;
          *(v41 + 8) = v48;
        }

        v39 += v66;
        --v37;
      }

      while (v37);

      v7 = v62;
      v28 = v63;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    (*(v64 + 8))(v28, v7);
    *&v79[15] = v40;
    goto LABEL_32;
  }

  if (v17 == *MEMORY[0x1E6981B98])
  {
    sub_188B6A1D4(&v79[1]);
    *&v79[1] = 1;
    *(&v79[1] + 8) = 0u;
    *(&v79[2] + 8) = 0u;
    *(&v79[3] + 8) = 0u;
    *(&v79[4] + 8) = 0u;
    *(&v79[5] + 8) = 0u;
    *(&v79[6] + 8) = 0u;
    *(&v79[7] + 5) = 0u;
    BYTE5(v79[8]) = 4;
LABEL_29:
    (*(v10 + 8))(v12, v9);
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_18A64BFB0;
    memcpy((v55 + 32), v79, 0x128uLL);
    return v55;
  }

  if (v17 != *MEMORY[0x1E6981B88])
  {
    goto LABEL_29;
  }

  (*(v10 + 96))(v12, v9);
  v52 = v65;
  v51 = v66;
  v53 = v62;
  (*(v65 + 32))(v62, v12, v66);
  sub_189068C64(v53, 0x200000000, 0, 0, 1, 0);
  v55 = v54;
  (*(v52 + 8))(v53, v51);
  sub_188B6D288(v79);
  return v55;
}

unint64_t sub_188B69960()
{
  result = qword_1ED48E050;
  if (!qword_1ED48E050)
  {
    sub_18A4A6728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E050);
  }

  return result;
}

id sub_188B699B8(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v2 = sub_18A4A65F8();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_18A4A6B28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A6678();
  v9 = sub_18A4A6638();
  sub_18A4A6658();
  v10 = sub_18A4A6658();
  sub_18A4A6678();
  v11 = sub_18A4A6648();
  sub_18A4A6658();
  v12 = sub_18A4A6658();
  v13 = 2;
  if (v10 == v9)
  {
    v13 = 3;
  }

  if (v12 == v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10 == v9;
  }

  sub_18A4A6618();
  v15 = sub_18A4A65C8();
  sub_189068C64(v8, v72 & 0xFFFFFFFFFFLL, v15, v16, 0, v14);
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = *(v18 + 16);
  if (v19 != 1)
  {
    if (!v19)
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v18;
  }

  sub_188B6CFA8(v18 + 32, v85);
  sub_18A4A6668();
  v85[27] = v20;
  sub_18A4A65E8();
  LODWORD(v85[29]) = v21;
  sub_18A4A6608();
  v23 = v70;
  v22 = v71;
  v24 = (*(v70 + 88))(v4, v71);
  if (v24 == *MEMORY[0x1E6981BB8])
  {
    (*(v23 + 96))(v4, v22);
    v25 = *v4;
    sub_188BBA230(&v85[17], &v75);
    if (swift_dynamicCast())
    {
      v27 = v73;
      v26 = v74;

      if (v27 != sub_18A4A7288() || v26 != v28)
      {
        v69 = sub_18A4A86C8();

        if ((v69 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    LOBYTE(v75) = 0;
    v73 = sub_188B6CFEC(v25, v48);
    v74 = v49;
    sub_18A4A8048();
    sub_188EA2468(&v75, &v85[17]);
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18A64BFB0;
    memcpy((v18 + 32), v85, 0x128uLL);
    return v18;
  }

  if (v24 == *MEMORY[0x1E6981BA8])
  {
    (*(v23 + 96))(v4, v22);
    v29 = *(*v4 + 16);
    v30 = *(*v4 + 24);
    v31 = *(*v4 + 32);
    v32 = *(*v4 + 40);
    v33 = *(*v4 + 48);
    v34 = *(*v4 + 56);
    v36 = *(*v4 + 64);
    v35 = *(*v4 + 72);
    v37 = *(*v4 + 88);
    v71 = *(*v4 + 80);
    v72 = v35;
    v70 = v37;
    sub_18A4A65D8();
    if ((v38 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      sub_18A4A65D8();
    }

    v39 = sub_18A4A7288();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64D660;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 40) = v43;
    v44 = objc_opt_self();
    v75 = v29;
    v76 = v30;
    v77 = v31;
    v78 = v32;
    v79 = v33;
    v80 = v34;
    v81 = v36;
    v82 = v72;
    v83 = v71;
    v84 = v70;
    result = [v44 valueWithCAColorMatrix_];
    if (result)
    {
      v46 = result;

      *(inited + 48) = v46;
      *(inited + 56) = 0x616C437475706E69;
      *(inited + 64) = 0xEA0000000000706DLL;
      *(inited + 72) = sub_18A4A7738();
      *(inited + 80) = 0xD000000000000015;
      *(inited + 88) = 0x800000018A688B90;
      sub_18A4A6678();
      sub_18A4A6628();
      sub_18A4A6658();
      sub_18A4A6658();
      *(inited + 96) = sub_18A4A7668();
      v47 = sub_188E8CFB8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
LABEL_26:
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240, &qword_18A64D430);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_18A64BFB0;
      *(v68 + 32) = v39;
      *(v68 + 40) = v41;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      *(v68 + 48) = v47;

      *&v85[30] = v68;
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    if (v24 != *MEMORY[0x1E6981BB0])
    {

      (*(v23 + 8))(v4, v22);
      goto LABEL_30;
    }

    (*(v23 + 96))(v4, v22);
    v50 = *(*v4 + 16);
    v51 = *(*v4 + 24);
    v52 = *(*v4 + 32);
    v53 = *(*v4 + 40);
    v54 = *(*v4 + 48);
    v55 = *(*v4 + 56);
    v57 = *(*v4 + 64);
    v56 = *(*v4 + 72);
    v58 = *(*v4 + 80);
    v71 = *(*v4 + 88);
    v72 = v58;
    sub_18A4A65D8();
    v60 = v59 & 0x7FFFFFFF;
    v61 = 0;
    if (v60 <= 2139095039)
    {
      sub_18A4A65D8();
    }

    LODWORD(v70) = v61;
    v39 = sub_18A4A7288();
    v41 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_18A64C6E0;
    *(v63 + 32) = sub_18A4A7288();
    *(v63 + 40) = v64;
    v65 = objc_opt_self();
    v75 = v50;
    v76 = v51;
    v77 = v52;
    v78 = v53;
    v79 = v54;
    v80 = v55;
    v81 = v57;
    v82 = v56;
    v83 = v72;
    v84 = v71;
    result = [v65 valueWithCAColorMatrix_];
    if (result)
    {
      v66 = result;

      *(v63 + 48) = v66;
      *(v63 + 56) = sub_18A4A7288();
      *(v63 + 64) = v67;
      sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
      *(v63 + 72) = sub_18A4A7C58();
      *(v63 + 80) = 0x616C437475706E69;
      *(v63 + 88) = 0xEA0000000000706DLL;
      *(v63 + 96) = sub_18A4A7738();
      *(v63 + 104) = 0xD000000000000015;
      *(v63 + 112) = 0x800000018A688B90;
      sub_18A4A6678();
      sub_18A4A6628();
      sub_18A4A6658();
      sub_18A4A6658();
      *(v63 + 120) = sub_18A4A7668();
      v47 = sub_188E8CFB8(v63);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit9_MaterialV5LayerV4KindO(uint64_t a1)
{
  if ((*(a1 + 117) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 117) & 7;
  }
}

void sub_188B6A220(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v328 = a2;
  v3 = sub_18A4A64B8();
  v290 = *(v3 - 8);
  v291 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v289 = &v279 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B010, &qword_18A660BF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v282 = &v279 - v6;
  v7 = sub_18A4A64C8();
  v284 = *(v7 - 8);
  v285 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v281 = &v279 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v280 = &v279 - v10;
  v287 = sub_18A4A64E8();
  v283 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v286 = &v279 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B018, &qword_18A660C00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v294 = &v279 - v13;
  v14 = sub_18A4A64F8();
  v296 = *(v14 - 8);
  v297 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v288 = &v279 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v292 = &v279 - v17;
  v295 = sub_18A4A6528();
  v300 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v298 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B020, &qword_18A660C08);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v302 = &v279 - v20;
  v21 = sub_18A4A6438();
  v304 = *(v21 - 8);
  v305 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v293 = &v279 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v299 = &v279 - v24;
  v303 = sub_18A4A6468();
  v307 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v306 = &v279 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B028, &qword_18A660C10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v308 = &v279 - v27;
  v312 = sub_18A4A63B8();
  v310 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v301 = (&v279 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v309 = &v279 - v30;
  v314 = sub_18A4A63F8();
  v311 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v313 = &v279 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18A4A6428();
  v316 = *(v32 - 8);
  v317 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v315 = &v279 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_18A4A6398();
  v319 = *(v34 - 8);
  v320 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v318 = &v279 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_18A4A6358();
  v322 = *(v36 - 8);
  *&v323 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v321 = &v279 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_18A4A62D8();
  v324 = *(v38 - 8);
  *&v325 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v279 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18A4A6328();
  v326 = *(v41 - 8);
  *&v327 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v279 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18A4A62B8();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v279 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_18A4A6538();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v279 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18A4A6548();
  v52 = (*(v49 + 88))(v51, v48);
  if (v52 == *MEMORY[0x1E6981B28])
  {
    v329 = sub_18A4A7288();
    v54 = v53;
    v55 = sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
    v56 = sub_18A4A6558();
    (*(*(v56 - 8) + 8))(a1, v56);
    (*(v49 + 8))(v51, v48);
LABEL_9:
    v94 = 0;
LABEL_10:
    v95 = v328;
    *v328 = v329;
    v95[1] = v54;
    v95[2] = v55;
    v95[3] = v94;
    v95[4] = 0;
    return;
  }

  v279 = a1;
  if (v52 == *MEMORY[0x1E6981AF8])
  {
    (*(v49 + 96))(v51, v48);
    (*(v45 + 32))(v47, v51, v44);
    v329 = sub_18A4A7288();
    v54 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18A64BFB0;
    *(v58 + 32) = sub_18A4A7288();
    *(v58 + 40) = v59;
    sub_18A4A62A8();
    *(v58 + 48) = sub_18A4A2D28();
    v60 = sub_188E8CFB8(v58);
    swift_setDeallocating();
    sub_188A3F5FC(v58 + 32, &qword_1EA93B038, &unk_18A660C20);
    swift_deallocClassInstance();
    v61 = sub_18A4A6558();
    (*(*(v61 - 8) + 8))(v279, v61);
    v55 = v60;
    (*(v45 + 8))(v47, v44);
    goto LABEL_9;
  }

  if (v52 == *MEMORY[0x1E6981B08])
  {
    (*(v49 + 96))(v51, v48);
    v62 = v326;
    v63 = v43;
    v64 = v51;
    v65 = v327;
    (*(v326 + 32))(v43, v64, v327);
    v329 = sub_18A4A7288();
    v324 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
    v67 = swift_allocObject();
    v325 = xmmword_18A64C6E0;
    *(v67 + 16) = xmmword_18A64C6E0;
    *(v67 + 32) = sub_18A4A7288();
    *(v67 + 40) = v68;
    sub_18A4A6308();
    v323 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
    v70 = swift_allocObject();
    *(v70 + 16) = v325;
    v71 = MEMORY[0x1E69E6448];
    *(v70 + 56) = MEMORY[0x1E69E6448];
    v72 = v323;
    *(v70 + 32) = v323;
    *(v70 + 88) = v71;
    *(v70 + 64) = DWORD1(v72);
    *(v70 + 120) = v71;
    *(v70 + 96) = DWORD2(v72);
    *(v70 + 152) = v71;
    *(v70 + 128) = HIDWORD(v72);
    sub_188A34624(0, &qword_1EA93D840, 0x1E695DEC8);
    *(v67 + 48) = MEMORY[0x18CFE2B40](v70);
    *(v67 + 56) = sub_18A4A7288();
    *(v67 + 64) = v73;
    sub_18A4A62E8();
    v323 = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = v325;
    *(v75 + 56) = v71;
    v76 = v323;
    *(v75 + 32) = v323;
    *(v75 + 88) = v71;
    *(v75 + 64) = DWORD1(v76);
    *(v75 + 120) = v71;
    *(v75 + 96) = DWORD2(v76);
    *(v75 + 152) = v71;
    *(v75 + 128) = HIDWORD(v76);
    *(v67 + 72) = MEMORY[0x18CFE2B40]();
    *(v67 + 80) = sub_18A4A7288();
    *(v67 + 88) = v77;
    sub_18A4A6318();
    v323 = v78;
    v79 = swift_allocObject();
    *(v79 + 16) = v325;
    *(v79 + 56) = v71;
    v80 = v323;
    *(v79 + 32) = v323;
    *(v79 + 88) = v71;
    *(v79 + 64) = DWORD1(v80);
    *(v79 + 120) = v71;
    *(v79 + 96) = DWORD2(v80);
    *(v79 + 152) = v71;
    *(v79 + 128) = HIDWORD(v80);
    *(v67 + 96) = MEMORY[0x18CFE2B40]();
    *(v67 + 104) = sub_18A4A7288();
    *(v67 + 112) = v81;
    sub_18A4A62F8();
    v323 = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = v325;
    *(v83 + 56) = v71;
    v84 = v323;
    *(v83 + 32) = v323;
    *(v83 + 88) = v71;
    *(v83 + 64) = DWORD1(v84);
    *(v83 + 120) = v71;
    *(v83 + 96) = DWORD2(v84);
    *(v83 + 152) = v71;
    *(v83 + 128) = HIDWORD(v84);
    v54 = v324;
    *(v67 + 120) = MEMORY[0x18CFE2B40]();
    v55 = sub_188E8CFB8(v67);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v85 = sub_18A4A6558();
    (*(*(v85 - 8) + 8))(v279, v85);
    (*(v62 + 8))(v63, v65);
    goto LABEL_9;
  }

  if (v52 == *MEMORY[0x1E6981B00])
  {
    (*(v49 + 96))(v51, v48);
    v87 = v324;
    v86 = v325;
    (*(v324 + 32))(v40, v51, v325);
    v329 = sub_18A4A7288();
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 40) = v91;
    sub_18A4A62A8();
    *(inited + 48) = sub_18A4A2D28();
    v55 = sub_188E8CFB8(inited);
    swift_setDeallocating();
    sub_188A3F5FC(inited + 32, &qword_1EA93B038, &unk_18A660C20);
    v92 = sub_18A4A6558();
    (*(*(v92 - 8) + 8))(v279, v92);
    v93 = v40;
    v54 = v89;
    (*(v87 + 8))(v93, v86);
    goto LABEL_9;
  }

  if (v52 != *MEMORY[0x1E6981B10])
  {
    if (v52 == *MEMORY[0x1E6981B30])
    {
      (*(v49 + 96))(v51, v48);
      v107 = v318;
      v108 = v319;
      v109 = v320;
      (*(v319 + 32))(v318, v51, v320);
      v329 = sub_18A4A7288();
      v54 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_18A64D660;
      *(v111 + 32) = sub_18A4A7288();
      *(v111 + 40) = v112;
      sub_18A4A6378();
      *(v111 + 48) = sub_18A4A2D28();
      *(v111 + 56) = sub_18A4A7288();
      *(v111 + 64) = v113;
      sub_18A4A6368();
      *(v111 + 72) = sub_18A4A7668();
      *(v111 + 80) = sub_18A4A7288();
      *(v111 + 88) = v114;
      sub_18A4A6388();
      *(v111 + 96) = sub_18A4A7668();
      v55 = sub_188E8CFB8(v111);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
      swift_arrayDestroy();
      v115 = sub_18A4A6558();
      (*(*(v115 - 8) + 8))(v279, v115);
      (*(v108 + 8))(v107, v109);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B40])
    {
      (*(v49 + 96))(v51, v48);
      v116 = v315;
      v117 = v316;
      v118 = v51;
      v119 = v317;
      (*(v316 + 32))(v315, v118, v317);
      v329 = sub_18A4A7288();
      v54 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v121 = swift_initStackObject();
      *(v121 + 16) = xmmword_18A64BFA0;
      *(v121 + 32) = sub_18A4A7288();
      *(v121 + 40) = v122;
      sub_18A4A6408();
      v327 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_18A64C6E0;
      v125 = MEMORY[0x1E69E6448];
      *(v124 + 56) = MEMORY[0x1E69E6448];
      v126 = v327;
      *(v124 + 32) = v327;
      *(v124 + 88) = v125;
      *(v124 + 64) = DWORD1(v126);
      *(v124 + 120) = v125;
      *(v124 + 96) = DWORD2(v126);
      *(v124 + 152) = v125;
      *(v124 + 128) = HIDWORD(v126);
      sub_188A34624(0, &qword_1EA93D840, 0x1E695DEC8);
      *(v121 + 48) = MEMORY[0x18CFE2B40](v124);
      *(v121 + 56) = sub_18A4A7288();
      *(v121 + 64) = v127;
      sub_18A4A6418();
      *(v121 + 72) = sub_18A4A2D28();
      v55 = sub_188E8CFB8(v121);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
      swift_arrayDestroy();
      v128 = sub_18A4A6558();
      (*(*(v128 - 8) + 8))(v279, v128);
      (*(v117 + 8))(v116, v119);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B38])
    {
      (*(v49 + 96))(v51, v48);
      v129 = v311;
      v131 = v313;
      v130 = v314;
      (*(v311 + 32))(v313, v51, v314);
      v329 = sub_18A4A7288();
      v54 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v133 = swift_initStackObject();
      *(v133 + 16) = xmmword_18A64D660;
      *(v133 + 32) = sub_18A4A7288();
      *(v133 + 40) = v134;
      sub_18A4A63D8();
      *(v133 + 48) = sub_18A4A2D28();
      *(v133 + 56) = sub_18A4A7288();
      *(v133 + 64) = v135;
      sub_18A4A63A8();
      *(v133 + 72) = sub_18A4A7668();
      *(v133 + 80) = sub_18A4A7288();
      *(v133 + 88) = v136;
      sub_18A4A63E8();
      *(v133 + 96) = sub_18A4A7668();
      *&v327 = sub_188E8CFB8(v133);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
      swift_arrayDestroy();
      v137 = v308;
      sub_18A4A63C8();
      v138 = v310;
      v139 = v312;
      if ((*(v310 + 48))(v137, 1, v312) == 1)
      {
        v140 = sub_18A4A6558();
        (*(*(v140 - 8) + 8))(v279, v140);
        (*(v129 + 8))(v131, v130);
        sub_188A3F5FC(v137, &qword_1EA93B028, &qword_18A660C10);
      }

      else
      {
        (*(v138 + 32))(v309, v137, v139);
        v153 = v301;
        (*(v138 + 16))();
        v154 = (*(v138 + 88))(v153, v139);
        if (v154 == *MEMORY[0x1E6981B20])
        {
          (*(v138 + 96))(v153, v139);
          v155 = *v153;
          v156 = sub_18A4A7288();
          v158 = v157;
          objc_opt_self();
          v159 = swift_dynamicCastObjCClass();
          v160 = v314;
          if (v159)
          {
            v161 = v155;
          }

          v162 = v327;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v331 = v162;
          sub_188EA0C10(v159, v156, v158, isUniquelyReferenced_nonNull_native);

          v55 = v331;
          v164 = sub_18A4A6558();
          (*(*(v164 - 8) + 8))(v279, v164);
          (*(v310 + 8))(v309, v312);
          (*(v311 + 8))(v313, v160);
          goto LABEL_9;
        }

        v191 = v279;
        if (v154 == *MEMORY[0x1E6981B18])
        {
          (*(v138 + 96))(v153, v139);
          v192 = *v153;
          v326 = sub_18A4A7288();
          v194 = v193;
          *&v331 = 64;
          *(&v331 + 1) = 0xE100000000000000;
          *&v330[0] = v192;
          v195 = sub_18A4A8618();
          v196 = v129;
          MEMORY[0x18CFE22D0](v195);

          v197 = sub_18A4A7258();

          v198 = v327;
          v199 = swift_isUniquelyReferenced_nonNull_native();
          *&v331 = v198;
          sub_188EA0C10(v197, v326, v194, v199);

          v200 = v331;
          v201 = sub_18A4A6558();
          (*(*(v201 - 8) + 8))(v191, v201);
          (*(v138 + 8))(v309, v139);
          v55 = v200;
          (*(v196 + 8))(v313, v314);
          goto LABEL_9;
        }

        v232 = sub_18A4A6558();
        (*(*(v232 - 8) + 8))(v191, v232);
        v233 = *(v138 + 8);
        v233(v309, v139);
        (*(v129 + 8))(v131, v314);
        v233(v153, v139);
      }

      v94 = 0;
      v55 = v327;
      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981B58])
    {
      (*(v49 + 96))(v51, v48);
      v141 = v306;
      v142 = v307;
      v143 = v303;
      (*(v307 + 32))(v306, v51, v303);
      v329 = sub_18A4A7288();
      v54 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_18A64BFB0;
      *(v145 + 32) = sub_18A4A7288();
      *(v145 + 40) = v146;
      sub_18A4A6458();
      *(v145 + 48) = sub_18A4A2D28();
      v147 = sub_188E8CFB8(v145);
      swift_setDeallocating();
      sub_188A3F5FC(v145 + 32, &qword_1EA93B038, &unk_18A660C20);
      sub_18A4A6458();
      v94 = v148;
      v149 = v302;
      sub_18A4A6448();
      v150 = v304;
      v151 = v305;
      if ((*(v304 + 48))(v149, 1, v305) == 1)
      {
        v152 = sub_18A4A6558();
        (*(*(v152 - 8) + 8))(v279, v152);
        (*(v142 + 8))(v141, v143);
        sub_188A3F5FC(v149, &qword_1EA93B020, &qword_18A660C08);
        v55 = v147;
      }

      else
      {
        v179 = v299;
        (*(v150 + 32))(v299, v149, v151);
        v180 = v293;
        (*(v150 + 16))(v293, v179, v151);
        v181 = (*(v150 + 88))(v180, v151);
        v182 = v279;
        if (v181 == *MEMORY[0x1E6981B48])
        {
          (*(v150 + 96))(v180, v151);
          v183 = *v180;
          *&v327 = sub_18A4A7288();
          v185 = v184;
          *&v331 = 64;
          *(&v331 + 1) = 0xE100000000000000;
          *&v330[0] = v183;
          v186 = sub_18A4A8618();
          v187 = v182;
          MEMORY[0x18CFE22D0](v186);

          v188 = sub_18A4A7258();

          v189 = swift_isUniquelyReferenced_nonNull_native();
          *&v331 = v147;
          sub_188EA0C10(v188, v327, v185, v189);

          v55 = v331;
          v190 = sub_18A4A6558();
          (*(*(v190 - 8) + 8))(v187, v190);
          (*(v150 + 8))(v299, v151);
          (*(v307 + 8))(v306, v143);
        }

        else
        {
          v230 = sub_18A4A6558();
          (*(*(v230 - 8) + 8))(v182, v230);
          v231 = *(v150 + 8);
          v231(v179, v151);
          (*(v307 + 8))(v141, v143);
          v231(v180, v151);
          v55 = v147;
        }
      }

      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981B78])
    {
      (*(v49 + 96))(v51, v48);
      v165 = v300;
      v166 = v298;
      v167 = v295;
      (*(v300 + 32))(v298, v51, v295);
      v329 = sub_18A4A7288();
      v54 = v168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v169 = swift_initStackObject();
      *(v169 + 16) = xmmword_18A64BFB0;
      *(v169 + 32) = sub_18A4A7288();
      *(v169 + 40) = v170;
      sub_18A4A6458();
      *(v169 + 48) = sub_18A4A2D28();
      v171 = sub_188E8CFB8(v169);
      swift_setDeallocating();
      sub_188A3F5FC(v169 + 32, &qword_1EA93B038, &unk_18A660C20);
      v172 = v294;
      sub_18A4A6448();
      v173 = v296;
      v174 = v297;
      if ((*(v296 + 48))(v172, 1, v297) == 1)
      {
        v175 = sub_18A4A6558();
        (*(*(v175 - 8) + 8))(v279, v175);
        (*(v165 + 8))(v166, v167);
        v176 = &qword_1EA93B018;
        v177 = &qword_18A660C00;
        v178 = v172;
LABEL_32:
        sub_188A3F5FC(v178, v176, v177);
        goto LABEL_47;
      }

      v218 = v292;
      (*(v173 + 32))(v292, v172, v174);
      v219 = v288;
      (*(v173 + 16))(v288, v218, v174);
      v220 = (*(v173 + 88))(v219, v174);
      v221 = v279;
      if (v220 == *MEMORY[0x1E6981B70])
      {
        (*(v173 + 96))(v219, v174);
        v222 = *v219;
        *&v327 = sub_18A4A7288();
        v224 = v223;
        *&v331 = 64;
        *(&v331 + 1) = 0xE100000000000000;
        *&v330[0] = v222;
        v225 = sub_18A4A8618();
        v226 = v167;
        MEMORY[0x18CFE22D0](v225);

        v227 = sub_18A4A7258();

        v228 = swift_isUniquelyReferenced_nonNull_native();
        *&v331 = v171;
        sub_188EA0C10(v227, v327, v224, v228);

        v55 = v331;
        v229 = sub_18A4A6558();
        (*(*(v229 - 8) + 8))(v221, v229);
        (*(v173 + 8))(v292, v174);
        (*(v300 + 8))(v298, v226);
        goto LABEL_9;
      }

      v243 = sub_18A4A6558();
      (*(*(v243 - 8) + 8))(v221, v243);
      v244 = *(v173 + 8);
      v244(v218, v174);
      (*(v300 + 8))(v166, v167);
      v244(v219, v174);
      goto LABEL_47;
    }

    if (v52 == *MEMORY[0x1E6981B60])
    {
      (*(v49 + 96))(v51, v48);
      v203 = v289;
      v202 = v290;
      v204 = v51;
      v205 = v291;
      (*(v290 + 32))(v289, v204, v291);
      v329 = sub_18A4A7288();
      v54 = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
      v207 = swift_initStackObject();
      *(v207 + 16) = xmmword_18A64D660;
      *(v207 + 32) = sub_18A4A7288();
      *(v207 + 40) = v208;
      sub_18A4A6368();
      *(v207 + 48) = sub_18A4A7668();
      *(v207 + 56) = sub_18A4A7288();
      *(v207 + 64) = v209;
      sub_18A4A6498();
      *(v207 + 72) = sub_18A4A7738();
      *(v207 + 80) = sub_18A4A7288();
      *(v207 + 88) = v210;
      sub_18A4A64A8();
      *(v207 + 96) = sub_18A4A7738();
      v211 = sub_188E8CFB8(v207);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
      swift_arrayDestroy();
      v212 = sub_18A4A7288();
      v214 = v213;
      sub_18A4A6478();
      v215 = sub_18A4A7668();
      v216 = swift_isUniquelyReferenced_nonNull_native();
      *&v331 = v211;
      sub_188EA0C10(v215, v212, v214, v216);

      v55 = v331;
      v217 = sub_18A4A6558();
      (*(*(v217 - 8) + 8))(v279, v217);
      (*(v202 + 8))(v203, v205);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B68])
    {
      (*(v49 + 96))(v51, v48);
      v234 = v283;
      v236 = v286;
      v235 = v287;
      (*(v283 + 32))(v286, v51, v287);
      v329 = sub_18A4A7288();
      v54 = v237;
      v171 = sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
      v238 = v282;
      sub_18A4A64D8();
      v239 = v238;
      v240 = v284;
      v241 = v285;
      if ((*(v284 + 48))(v239, 1, v285) == 1)
      {
        v242 = sub_18A4A6558();
        (*(*(v242 - 8) + 8))(v279, v242);
        (*(v234 + 8))(v236, v235);
        v176 = &qword_1EA93B010;
        v177 = &qword_18A660BF8;
        v178 = v239;
        goto LABEL_32;
      }

      v253 = v280;
      (*(v240 + 32))(v280, v239, v241);
      v254 = v281;
      (*(v240 + 16))(v281, v253, v241);
      if ((*(v240 + 88))(v254, v241) == *MEMORY[0x1E6981B50])
      {
        (*(v240 + 96))(v254, v241);
        v255 = *v254;
        *&v327 = sub_18A4A7288();
        v257 = v256;
        *&v331 = 64;
        *(&v331 + 1) = 0xE100000000000000;
        *&v330[0] = v255;
        v258 = sub_18A4A8618();
        v259 = v234;
        MEMORY[0x18CFE22D0](v258);

        v260 = sub_18A4A7258();

        v261 = swift_isUniquelyReferenced_nonNull_native();
        *&v331 = v171;
        sub_188EA0C10(v260, v327, v257, v261);

        v55 = v331;
        v262 = sub_18A4A6558();
        (*(*(v262 - 8) + 8))(v279, v262);
        (*(v240 + 8))(v253, v241);
        (*(v259 + 8))(v286, v287);
        goto LABEL_9;
      }

      v265 = sub_18A4A6558();
      (*(*(v265 - 8) + 8))(v279, v265);
      v266 = *(v240 + 8);
      v266(v253, v241);
      (*(v234 + 8))(v236, v235);
      v266(v281, v241);
LABEL_47:
      v94 = 0;
      v55 = v171;
      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981AF0])
    {
      (*(v49 + 96))(v51, v48);
      sub_188A5EBAC(v51, &v331);
      sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
      __swift_project_boxed_opaque_existential_0(&v331, *(&v332 + 1));
      sub_188B6CDC0();
      sub_18A4A4DC8();
      objc_opt_self();
      v245 = swift_dynamicCastObjCClass();
      if (v245 && (v246 = [v245 type]) != 0)
      {
        v247 = v246;
        v329 = sub_18A4A7288();
        v249 = v248;
        __swift_project_boxed_opaque_existential_0(&v331, *(&v332 + 1));
        v250 = v247;
        sub_18A4A4DB8();
        v94 = v251;
        if ([v250 isEqual_])
        {

          v252 = &unk_1EFAB7238;
LABEL_62:
          v268 = sub_18906AFE0(v252);

          v269 = sub_18A4A7288();
          v271 = v270;
          sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
          v272 = sub_18A4A7CB8();
          v273 = swift_isUniquelyReferenced_nonNull_native();
          *&v330[0] = v268;
          sub_188EA0C10(v272, v269, v271, v273);
          swift_unknownObjectRelease();

          v274 = *&v330[0];
          v275 = sub_18A4A6558();
          (*(*(v275 - 8) + 8))(v279, v275);
LABEL_63:
          __swift_destroy_boxed_opaque_existential_0Tm(&v331);
          v54 = v249;
          v55 = v274;
          goto LABEL_10;
        }

        v267 = [v250 isEqual_];

        if (v267)
        {

          v252 = &unk_1EFAB75B8;
          goto LABEL_62;
        }

        v276 = [v250 isEqual_];

        if (v276)
        {
          v274 = sub_18906AFE0(&unk_1EFAB7688);
          swift_unknownObjectRelease();
          sub_188ECC874(&unk_1EFAB76A8);
          v277 = sub_18A4A6558();
          (*(*(v277 - 8) + 8))(v279, v277);

          goto LABEL_63;
        }

        swift_unknownObjectRelease();
        v278 = sub_18A4A6558();
        (*(*(v278 - 8) + 8))(v279, v278);
      }

      else
      {
        swift_unknownObjectRelease();
        v264 = sub_18A4A6558();
        (*(*(v264 - 8) + 8))(v279, v264);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v331);
    }

    else
    {
      v263 = sub_18A4A6558();
      (*(*(v263 - 8) + 8))(v279, v263);
      (*(v49 + 8))(v51, v48);
    }

    v329 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_9;
  }

  (*(v49 + 96))(v51, v48);
  v96 = v322;
  v97 = v321;
  v98 = v323;
  (*(v322 + 32))();
  v329 = sub_18A4A7288();
  v100 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030, &qword_18A660C18);
  v101 = swift_initStackObject();
  *(v101 + 16) = xmmword_18A64BFA0;
  *(v101 + 32) = sub_18A4A7288();
  *(v101 + 40) = v102;
  sub_18A4A6348();
  v103 = objc_opt_self();
  v330[0] = v331;
  v330[1] = v332;
  v330[2] = v333;
  v330[3] = v334;
  v330[4] = v335;
  v104 = [v103 valueWithCAColorMatrix_];
  if (v104)
  {
    *(v101 + 48) = v104;
    *(v101 + 56) = sub_18A4A7288();
    *(v101 + 64) = v105;
    sub_18A4A6338();
    *(v101 + 72) = sub_18A4A7668();
    v55 = sub_188E8CFB8(v101);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038, &unk_18A660C20);
    swift_arrayDestroy();
    v106 = sub_18A4A6558();
    (*(*(v106 - 8) + 8))(v279, v106);
    (*(v96 + 8))(v97, v98);
    v94 = 0;
    v54 = v100;
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_188B6CDC0()
{
  result = qword_1ED48E110;
  if (!qword_1ED48E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E110);
  }

  return result;
}

uint64_t sub_188B6CE14()
{
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  return 64;
}

char *sub_188B6CE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240, &qword_18A64D430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240, &qword_18A64D430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D268(char *a1, int64_t a2, char a3)
{
  result = sub_188B6D148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_188B6D2B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_188B6D020(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_188B6D3B0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730, &qword_18A64FA98);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - v4;
  v5 = sub_18A4A6BC8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18A4A5318();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A3138();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_18A4A3148();
  sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38], MEMORY[0x1EEE86B18]);
  sub_18A4A5838();
  v15 = sub_18A4A5308();
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v12 + 16))(&v24 - v14, &v24 - v14, v11, v16);
  sub_188B69068(&qword_1ED48DB10, MEMORY[0x1EEE86B30], MEMORY[0x1EEE86B28]);
  sub_18A4A6BB8();
  sub_18A4A4DF8();
  (*(v26 + 8))(v7, v27);
  v17 = v28;
  sub_18A4A4EB8();
  (*(v8 + 8))(v10, v25);
  (*(v12 + 8))(&v24 - v14, v11);
  v18 = v29;
  v19 = sub_18A4A4428();
  v20 = *(v19 - 8);
  v21 = 1;
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_188B6D7DC(v17, v18);
  v22 = (*(v20 + 88))(v18, v19);
  if (v22 != *MEMORY[0x1E697DBB8])
  {
    if (v22 == *MEMORY[0x1E697DBA8])
    {
      return 2;
    }

    else
    {
      (*(v20 + 8))(v18, v19);
      return 0;
    }
  }

  return v21;
}

uint64_t sub_188B6D7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730, &qword_18A64FA98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_188B6D978(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_188B0944C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_188B0944C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

void sub_188B6DAE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_18A4A8468();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_18A4A8888();
      sub_18A4A7348();
      v28 = sub_18A4A88E8();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

unint64_t sub_188B6DD84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

char *sub_188B6DF7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 2) | (*(v0 + 3) << 32);
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  v8 = *(v0 + 4);
  v9 = *(v1 + 96);
  if (v9 > 3)
  {
    if (*(v1 + 96) <= 5u)
    {
      v11 = *(v1 + 40);
      v12 = *(v1 + 48);
      if (v9 == 4)
      {
        v13 = *&v8;
        v14 = objc_allocWithZone(MEMORY[0x1E6979460]);
        sub_188B666A4(v1, &v59);
        v10 = [v14 init];
        v15 = [v2 | (v3 << 8) | (v4 << 16) CGColor];
        [v10 setColor_];

        [v10 setHeight_];
        [v10 setAngle_];
        [v10 setSpread_];
        [v10 setAmount_];
        [v10 setCurvature_];
        [v10 setGlobal_];
      }

      else
      {
        v41 = *(v1 + 80);
        v57 = *(v1 + 88);
        v43 = *(v1 + 64);
        v42 = *(v1 + 72);
        v44 = *(v1 + 56);
        v45 = *&v8;
        v46 = objc_allocWithZone(MEMORY[0x1E6979470]);
        sub_188B666A4(v1, &v59);
        v10 = [v46 init];
        [v10 setCurvature_];
        [v10 setGlobal_];
        v47 = [v6 CGColor];
        [v10 setKeyColor_];

        [v10 setKeyAngle_];
        [v10 setKeyHeight_];
        [v10 setKeySpread_];
        [v10 setKeyAmount_];
        v48 = [v44 CGColor];
        [v10 setFillColor_];

        [v10 setFillAngle_];
        [v10 setFillHeight_];
        [v10 setFillSpread_];
        [v10 setFillAmount_];
      }

      sub_188B6E97C(v1);
      return v10;
    }

    if (v9 != 6)
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E6979480]) init];
      [v10 setMinimum_];
      [v10 setMaximum_];
      return v10;
    }

    v18 = v5;
    v19 = objc_allocWithZone(MEMORY[0x1E6979468]);
    sub_188B666A4(v1, &v59);
    v10 = [v19 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_18A64D660;
    v21 = [v6 colorWithAlphaComponent_];
    v22 = [v21 CGColor];

    type metadata accessor for CGColor(0);
    v24 = v23;
    *(v20 + 56) = v23;
    *(v20 + 32) = v22;
    v25 = [v6 CGColor];
    *(v20 + 88) = v24;
    *(v20 + 64) = v25;
    v26 = [v6 CGColor];
    *(v20 + 120) = v24;
    *(v20 + 96) = v26;
    v27 = sub_18A4A7518();

    [v10 setColors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18A64E3E0;
    *(v28 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
    *(v28 + 40) = sub_18A4A7C68();
    *(v28 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v29 = sub_18A4A7518();

    [v10 setDistances_];
    goto LABEL_30;
  }

  if (*(v1 + 96) > 1u)
  {
    if (v9 == 2)
    {
      v16 = objc_allocWithZone(MEMORY[0x1E6979440]);
      sub_188B666A4(v1, &v59);
      v10 = [v16 init];
      v17 = [v2 | (v3 << 8) | (v4 << 16) CGColor];
    }

    else
    {
      v49 = objc_allocWithZone(MEMORY[0x1E6979488]);
      sub_188B666A4(v1, &v59);
      v10 = [v49 init];
      [v10 setInvert_];
      [v10 setPunchout_];
      [v10 setOffset_];
      [v10 setRadius_];
      v17 = [v8 CGColor];
    }

    v29 = v17;
    [v10 setColor_];
LABEL_30:
    sub_188B6E97C(v1);

    return v10;
  }

  if (!*(v1 + 96))
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
    [v10 setHeight_];
    [v10 setCurvature_];
    [v10 setAngle_];
    [v10 setMaskOffset_];
    return v10;
  }

  v30 = (v2 | (v3 << 8)) | (v4 << 16);
  v31 = objc_allocWithZone(MEMORY[0x1E6979468]);
  sub_188B666A4(v1, &v59);
  v10 = [v31 init];
  if (v4 & 0x400000000000 | ((v4 >> 47) << 63))
  {
    goto LABEL_40;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {

LABEL_33:
    v50 = sub_18A4A7518();

    [v10 setColors_];

    v51 = *(*&v5 + 16);
    if (v51)
    {
      *&v59 = v33;
      sub_18A4A8208();
      v52 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v52 += 8;
        --v51;
      }

      while (v51);
    }

    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
    v53 = sub_18A4A7518();

    [v10 setDistances_];

    sub_188A34624(0, &unk_1ED48CFE0, 0x1E69793D0);
    v54 = sub_18A4A7518();

    [v10 setInterpolations_];

    [v10 setPremultiplied_];
    return v10;
  }

  v55 = v6;
  v56 = v10;
  v58 = MEMORY[0x1E69E7CC0];
  result = sub_188B221A4(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v6 = (v30 & 0xC000000000000001);
    while (1)
    {
      if (v6)
      {
        v36 = sub_188E48DA0(v35, v30);
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v32 = sub_18A4A7F68();
          goto LABEL_14;
        }

        if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v36 = *(v30 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 CGColor];
      type metadata accessor for CGColor(0);
      v60 = v39;

      *&v59 = v38;
      v10 = *(v58 + 16);
      v40 = *(v58 + 24);
      if (v10 >= v40 >> 1)
      {
        sub_188B221A4((v40 > 1), v10 + 1, 1);
      }

      ++v35;
      *(v58 + 16) = v10 + 1;
      sub_188A55538(&v59, (v58 + 32 * v10 + 32));
      if (v32 == v35)
      {

        v10 = v56;
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}