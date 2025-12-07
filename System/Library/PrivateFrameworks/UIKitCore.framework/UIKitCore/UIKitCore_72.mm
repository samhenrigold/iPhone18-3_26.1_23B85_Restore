double sub_1891DAF54()
{
  v1 = *(v0 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController);
  if (v1)
  {
    v2 = v1;
    v3 = [(_UISceneHostingController *)v2 _fbScene];
    type metadata accessor for _UISceneKeyValueStorageExtension(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for _UISceneKeyValueStorageComponent();
    if ([v3 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
    {
      if (swift_dynamicCastClass())
      {
        sub_1890F5B58();

        swift_unknownObjectRelease();
        v5 = sub_1891DA1C0(&type metadata for UIKeyboardInlineCandidateStorage.IsExpandedKey, &qword_1EA93FCC8, &qword_18A673740);
        v6 = sub_1891DA1C0(&type metadata for UIKeyboardInlineCandidateStorage.IsVisibleKey, &qword_1EA93FD00, &qword_18A673770);

        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_8:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong clientStateChangedWithIsExpanded:v5 & 1 isVisible:v6 & 1];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1891DB0E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1891DAF54();
  }
}

Swift::Bool __swiftcall UIKeyboardCandidateSceneHostingController.isExpanded()()
{
  v1 = *(v0 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [(_UISceneHostingController *)v2 _fbScene];
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v3 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {

LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  sub_1890F5B58();

  swift_unknownObjectRelease();
  v5 = sub_1891DA1C0(&type metadata for UIKeyboardInlineCandidateStorage.IsExpandedKey, &qword_1EA93FCC8, &qword_18A673740);

  return v5 & 1;
}

Swift::Void __swiftcall UIKeyboardCandidateSceneHostingController.setHostIsTextVertical(_:)(Swift::Bool a1)
{
  v2 = *(v1 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController);
  if (v2)
  {
    v8 = v2;
    v3 = [(_UISceneHostingController *)v8 _fbScene];
    type metadata accessor for _UISceneKeyValueStorageExtension(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for _UISceneKeyValueStorageComponent();
    if ([v3 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
    {
      if (swift_dynamicCastClass())
      {
        v5 = sub_1890F5B48();

        swift_unknownObjectRelease();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          MEMORY[0x1EEE9AC00](Strong);
          sub_188FD0880(*(v5 + 16), v7, sub_1891DB990);
        }

        else
        {
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void __swiftcall UIKeyboardCandidateSceneHostingController.init()(UIKeyboardCandidateSceneHostingController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_1891DB5C4@<X0>(void *a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, BOOL *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_18A4A7308();
  v7 = sub_18A4A7258();

  v8 = MEMORY[0x18CFE4050](v7);

  result = [a1 flagForSetting_];
  *a5 = result == 1;
  return result;
}

uint64_t sub_1891DB65C(uint64_t a1, _BYTE *a2)
{
  v3 = *(v2 + 16);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return v3(v6);
}

uint64_t sub_1891DB73C(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v4 = *(v1 + 32);
  v7[0] = *a1;
  v7[1] = v3;
  v6 = v4;
  return v2(&v6, v7);
}

uint64_t sub_1891DB790(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return v2(v5);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_18A4A29D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1891DB93C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1891DB9B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_1891DBA80(uint64_t a1)
{
  v2 = objc_opt_self();

  v3 = sub_18A4A7258();

  v4 = sub_18A4A7258();

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

double sub_1891DBB68(unsigned __int8 a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;

    *v1 = v5;
  }

  v6 = qword_1ED491B40;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v8 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B07C(&type metadata for GlassFrostTrait, sub_1891DB9B8, 0);
  os_unfair_lock_unlock(v8[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v9 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 _setNSIntegerValue_forTraitToken_];

  swift_unknownObjectRelease();
  return result;
}

void sub_1891DBD2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_188AFA928(MEMORY[0x1E69E7CC0]);
  v8 = sub_188AFA928(v6);
  v65 = a2;

  sub_1890A28A4();
  if (!v10)
  {
    v12 = 0;
    v13 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
LABEL_37:
    sub_188E036A4(v65);
    if (v12 < 1)
    {

      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v57 = 0.0;
    }

    else
    {
      v57 = v13 / v12;
      v58 = sub_18914C554(v7);
      v59 = sub_18914C554(v8);

      v60 = COERCE_UNSIGNED_INT(v14 / v12) | (COERCE_UNSIGNED_INT(v15 / v12) << 32);
      v61 = COERCE_UNSIGNED_INT(v16 / v12);
    }

    *a3 = v60;
    *(a3 + 8) = v61;
    *(a3 + 16) = v57;
    *(a3 + 24) = v58;
    *(a3 + 32) = v59;
    *(a3 + 40) = v12 < 1;
    return;
  }

  v11 = v9;
  v12 = 0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  while (1)
  {
    while (1)
    {
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(&v66, a1, ObjectType, v11);
      if ((v71 & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      sub_1890A28A4();
      v11 = v18;
      if (!v19)
      {
        goto LABEL_37;
      }
    }

    v20 = __OFADD__(v12++, 1);
    if (v20)
    {
      break;
    }

    v62 = a3;
    v21 = v66;
    v22 = v67;
    v23 = v68;
    v25 = v69;
    v24 = v70;
    if (!v69)
    {
      goto LABEL_18;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v7;
    v27 = sub_188B85570(v25);
    v29 = v7[2];
    v30 = (v28 & 1) == 0;
    v20 = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (v20)
    {
      goto LABEL_42;
    }

    v32 = v28;
    if (v7[3] < v31)
    {
      sub_188BE7828(v31, isUniquelyReferenced_nonNull_native);
      type metadata accessor for UIUserInterfaceStyle(0);
      v27 = sub_188B85570(v25);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_48;
      }

LABEL_13:
      if ((v32 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v55 = v27;
    sub_188FA3CA0();
    v27 = v55;
    v7 = v63;
    if ((v32 & 1) == 0)
    {
LABEL_14:
      v7[(v27 >> 6) + 8] |= 1 << v27;
      *(v7[6] + 8 * v27) = v25;
      *(v7[7] + 8 * v27) = 0;
      v34 = v7[2];
      v20 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v20)
      {
        goto LABEL_46;
      }

      v7[2] = v35;
    }

LABEL_16:
    v36 = v7[7];
    v37 = *(v36 + 8 * v27);
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      goto LABEL_43;
    }

    *(v36 + 8 * v27) = v38;
    v25 = sub_188E36B90;
LABEL_18:
    if (!v24)
    {
      v47 = 0;
      goto LABEL_30;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v8;
    v40 = sub_188B85570(v24);
    v42 = v8[2];
    v43 = (v41 & 1) == 0;
    v20 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v20)
    {
      goto LABEL_44;
    }

    v45 = v41;
    if (v8[3] < v44)
    {
      sub_188BE7828(v44, v39);
      type metadata accessor for UIUserInterfaceStyle(0);
      v40 = sub_188B85570(v24);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_48;
      }

LABEL_25:
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    if (v39)
    {
      goto LABEL_25;
    }

    v56 = v40;
    sub_188FA3CA0();
    v40 = v56;
    v8 = v64;
    if ((v45 & 1) == 0)
    {
LABEL_26:
      v8[(v40 >> 6) + 8] |= 1 << v40;
      *(v8[6] + 8 * v40) = v24;
      *(v8[7] + 8 * v40) = 0;
      v48 = v8[2];
      v20 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v20)
      {
        goto LABEL_47;
      }

      v8[2] = v49;
    }

LABEL_28:
    v50 = v8[7];
    v51 = *(v50 + 8 * v40);
    v20 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v20)
    {
      goto LABEL_45;
    }

    *(v50 + 8 * v40) = v52;
    v47 = sub_188E36B90;
LABEL_30:
    swift_unknownObjectRelease();
    sub_188A55B8C(v25, 0);
    sub_188A55B8C(v47, 0);
    v14 = v14 + *&v21;
    v15 = v15 + *(&v21 + 1);
    v16 = v16 + v22;
    v13 = v13 + v23;
    sub_1890A28A4();
    v11 = v53;
    a3 = v62;
    if (!v54)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_18A4A87A8();
  __break(1u);
}

void sub_1891DC378(char a1)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketContainerInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView) = a1;
  if (v3 != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

void sub_1891DC560(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = *(v3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_edge);
  *(v3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_edge) = a1;
  if (v4 != a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

void sub_1891DC630(char *a1, uint64_t a2, void *a3, void *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v8 = a1;
  v7 = a3;
  sub_188AF8544(Strong);

  if (v7)
  {
  }

  else
  {
    [v8 _updateProperties];
  }
}

void sub_1891DC73C(char *a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v5 = a1;
    [v6 setNeedsUpdateProperties];
  }
}

void __swiftcall UIScrollEdgeElementContainerInteraction.init()(UIScrollEdgeElementContainerInteraction *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id UIScrollEdgeElementContainerInteraction.init()()
{
  v1 = OBJC_IVAR___UIScrollEdgeElementContainerInteraction_implementation;
  v2 = objc_allocWithZone(type metadata accessor for ContainerImplementation(0));
  *&v0[v1] = sub_188AF7050(0, 0);
  v4.receiver = v0;
  v4.super_class = UIScrollEdgeElementContainerInteraction;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1891DC8F4(id a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerElementInteraction);
  if (a2)
  {
    [a1 addInteraction_];
    v5 = *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerModel);

    v6 = [(UIView *)a1 _traitOverrides];
    v7 = [(_UITraitOverrides *)v6 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v7;
    v23 = inited;
    sub_188AF8D18(v5);
    v9 = v23;
    v10 = [(UIView *)a1 _traitOverrides];
  }

  else
  {
    [a1 removeInteraction_];
    v11 = [(UIView *)a1 _traitOverrides];
    v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v9 = swift_initStackObject();
    *(v9 + 16) = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = [(_UITraitOverrides *)*(v9 + 16) _swiftImplCopy];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;

      v9 = v15;
    }

    v16 = qword_1ED491B40;
    v17 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v18 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v19 = sub_188A78A74(&type metadata for ScrollPocketContainerModelTrait, 0, 0);
    os_unfair_lock_unlock(v18[2]);
    [(_UITraitOverrides *)v17 _removeTraitToken:v19];

    swift_unknownObjectRelease();
    v10 = [(UIView *)a1 _traitOverrides];
  }

  v20 = v10;
  v21 = *(v9 + 16);

  [(_UITraitOverrides *)v20 _replaceWithOverrides:v21];

  return [a1 updateTraitsIfNeeded];
}

void sub_1891DCB88(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = objc_opt_self();
  sub_18A4A79D8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1891DE644;
  *(v16 + 24) = v15;
  v22[4] = sub_188E3FE50;
  v22[5] = v16;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_188A4A968;
  v22[3] = &block_descriptor_55_5;
  v17 = _Block_copy(v22);

  v18 = a4;

  LODWORD(v19) = v10;
  LODWORD(v20) = v12;
  LODWORD(v21) = v14;
  [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v17);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_1891DCD64(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties;
  v5 = *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 41);
  if (*(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 40))
  {
    if (v5 == v3)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = v2;
    if (!Strong)
    {
      return;
    }
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    if ((v2 & 1) == 0)
    {
      v11 = COERCE_FLOAT(*v4) == COERCE_FLOAT(*a1) && COERCE_FLOAT(HIDWORD(*v4)) == COERCE_FLOAT(HIDWORD(*a1));
      v12 = v11 && COERCE_FLOAT(*(v4 + 8)) == COERCE_FLOAT(*(a1 + 8));
      v13 = v12 && *(v4 + 16) == *(a1 + 16);
      v14 = v13 && *(v4 + 24) == v9;
      v15 = v14 && *(v4 + 32) == v10;
      if (v15 && v5 == v3)
      {
        return;
      }
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      return;
    }

    Strong = v17;
    if (v2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v9;
    }

    if (v2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10;
    }

    v11 = *(v4 + 24) == v18;
    v20 = v2 ^ 1;
    if (v11)
    {
      LODWORD(v2) = v2 ^ 1;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    if (*(v4 + 32) == v19)
    {
      v8 = v20;
    }

    else
    {
      v8 = 0;
    }
  }

  v21 = v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_targetScrollPocket;
  swift_beginAccess();
  if (*(v21 + 16) == 0xFF)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    sub_188AFA8CC(v21, &v76);
    LOBYTE(v22) = sub_18914C400();
    sub_188B04290(&v76);
  }

  v23 = v2 & v8;
  if (*(v4 + 40) != 1)
  {
    if (v23)
    {
      if (v5 == v3)
      {
LABEL_52:
        if (v22)
        {
          v24 = 0;
          LOBYTE(v22) = *(*(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_materialBackdropContext) + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags) & 1;
        }

        else
        {
          LOBYTE(v22) = 0;
          v24 = 0;
        }

        goto LABEL_68;
      }

      v24 = 1;
LABEL_58:
      v25 = *(v4 + 41);
      if (v25)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    }

LABEL_54:
    v11 = v5 == v3;
    v24 = 1;
    if (v11)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v5 == v3)
  {
    goto LABEL_52;
  }

  if (v22)
  {
    v24 = 0;
    LOBYTE(v22) = *(*(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_materialBackdropContext) + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags) & 1;
    v25 = *(v4 + 41);
    if (!v25)
    {
      goto LABEL_62;
    }

LABEL_59:
    v26 = [(UIView *)Strong _traitOverrides];
    v27 = [(_UITraitOverrides *)v26 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    v76 = inited;
    sub_1891DBB68(v25);
    v29 = v76;
    v30 = [(UIView *)Strong _traitOverrides];
    v31 = *(v29 + 16);

    [(_UITraitOverrides *)v30 _replaceWithOverrides:v31];

    goto LABEL_68;
  }

  LOBYTE(v22) = 0;
  v24 = 0;
  v25 = *(v4 + 41);
  if (v25)
  {
    goto LABEL_59;
  }

LABEL_62:
  LODWORD(v66) = v24;
  v32 = [(UIView *)Strong _traitOverrides];
  v33 = [(_UITraitOverrides *)v32 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  v34 = swift_initStackObject();
  *(v34 + 16) = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v34 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = [(_UITraitOverrides *)*(v34 + 16) _swiftImplCopy];
    v37 = swift_allocObject();
    *(v37 + 16) = v36;

    v34 = v37;
  }

  v38 = qword_1ED491B40;
  v65 = v36;
  if (v38 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v39 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v40 = sub_18901B07C(&type metadata for GlassFrostTrait, 0, 0);
    os_unfair_lock_unlock(v39[2]);
    v41 = v65;
    [(_UITraitOverrides *)v65 _removeTraitToken:v40];

    swift_unknownObjectRelease();
    v42 = [(UIView *)Strong _traitOverrides];
    v43 = *(v34 + 16);

    [(_UITraitOverrides *)v42 _replaceWithOverrides:v43];

    v24 = v66;
LABEL_68:
    v46 = MEMORY[0x1EEE9AC00](v2 ^ 1);
    v59[16] = v44;
    v60 = Strong;
    v61 = v1;
    v62 = v45;
    if ((v22 & 1) == 0)
    {
      break;
    }

    v63[1] = v63;
    if (v24)
    {
      [Strong layoutIfNeeded];
    }

    v1 = swift_allocObject();
    *(v1 + 16) = sub_1891DE5E4;
    *(v1 + 24) = v59;
    v47 = [objc_opt_self() _lumaUserInterfaceStyleSpringDuration];
    v48 = MEMORY[0x18CFE1B90](v47);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_188A4B574;
    *(v22 + 24) = v1;
    *(v22 + 32) = v24;
    *(v22 + 40) = Strong;
    v76 = v48;
    v66 = v48;
    v77 = 0;
    v78 = 2;
    sub_188C3DF9C(&v76, v75);
    sub_188C3DF9C(&v76, v73);
    v34 = swift_allocObject();
    v49 = v73[3];
    *(v34 + 48) = v73[2];
    *(v34 + 64) = v49;
    *(v34 + 80) = v74[0];
    *(v34 + 89) = *(v74 + 9);
    v50 = v73[1];
    *(v34 + 16) = v73[0];
    *(v34 + 32) = v50;
    *(v34 + 112) = signpost_c2_entryLock_start;
    *(v34 + 120) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v2 = swift_allocObject();
    *(v2 + 16) = v51;
    *(v2 + 24) = signpost_c2_entryLock_start;
    *(v2 + 32) = 0;
    v65 = objc_opt_self();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1891DE5F4;
    *(v52 + 24) = v22;
    *&v70 = sub_188E3FE50;
    *(&v70 + 1) = v52;
    *&v68 = MEMORY[0x1E69E9820];
    *(&v68 + 1) = 1107296256;
    *&v69 = sub_188A4A968;
    *(&v69 + 1) = &block_descriptor_145;
    v64 = _Block_copy(&v68);

    v63[0] = Strong;

    sub_188C3DFF8(v75, &v68);
    v53 = swift_allocObject();
    v54 = v71;
    *(v53 + 56) = v70;
    *(v53 + 72) = v54;
    *(v53 + 88) = v72[0];
    *(v53 + 97) = *(v72 + 9);
    v55 = v69;
    *(v53 + 24) = v68;
    *(v53 + 16) = v51;
    *(v53 + 40) = v55;
    *(v53 + 113) = 0;
    *(v53 + 120) = sub_188E5B140;
    *(v53 + 128) = v34;
    v67[4] = sub_188C3E220;
    v67[5] = v53;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 1107296256;
    v67[2] = sub_188A4A8F0;
    v67[3] = &block_descriptor_42_3;
    Strong = _Block_copy(v67);

    *&v70 = sub_188ABBADC;
    *(&v70 + 1) = v2;
    *&v68 = MEMORY[0x1E69E9820];
    *(&v68 + 1) = 1107296256;
    *&v69 = sub_188ABD010;
    *(&v69 + 1) = &block_descriptor_45_4;
    v56 = _Block_copy(&v68);

    v57 = v64;
    [v65 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
    _Block_release(v56);
    _Block_release(Strong);
    _Block_release(v57);

    sub_188C3E234(v75);
    sub_188AAFF20(&v76);

    LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

    if ((v56 & 1) == 0)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
      break;
    }

    __break(1u);
LABEL_77:
    swift_once();
  }

  sub_1891DD6F4(v44, Strong, v1, v45);
}

uint64_t sub_1891DD6F4(char a1, _BYTE *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &aBlock - v12;
  if (a1)
  {
    v14 = sub_18A4A7258();
    [(UIView *)a2 _removeTraitCollectionTransformWithIdentifier:v14];

    if ((*(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 40) & 1) == 0)
    {
      v15 = *(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 24);
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        v17 = sub_18A4A7258();
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1891DE6EC;
        *(v18 + 24) = v16;
        v62 = sub_1891DE730;
        v63 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v59 = 1107296256;
        v60 = sub_188A8528C;
        v61 = &block_descriptor_74_4;
        v19 = _Block_copy(&aBlock);

        [(UIView *)a2 _addTraitCollectionTransformWithIdentifier:v17 transform:v19];
        _Block_release(v19);
      }
    }
  }

  if (a4)
  {
    v20 = sub_18A4A7258();
    [(UIView *)a2 _removeTraitCollectionTransformWithIdentifier:v20];

    if ((*(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 40) & 1) == 0)
    {
      v21 = *(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 32);
      if (v21)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        v23 = sub_18A4A7258();
        v24 = swift_allocObject();
        *(v24 + 16) = sub_1891DE6B4;
        *(v24 + 24) = v22;
        v62 = sub_188A853B4;
        v63 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v59 = 1107296256;
        v60 = sub_188A8528C;
        v61 = &block_descriptor_64_5;
        v25 = _Block_copy(&aBlock);

        [(UIView *)a2 _addTraitCollectionTransformWithIdentifier:v23 transform:v25];
        _Block_release(v25);
      }
    }
  }

  v26 = a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties;
  if (*(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 40))
  {
    v27 = [(UIView *)a2 _traitOverrides];
    v28 = [(_UITraitOverrides *)v27 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(inited + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v32 = swift_allocObject();
      *(v32 + 16) = v31;

      inited = v32;
    }

    v33 = qword_1ED491B40;
    v34 = v31;
    if (v33 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v35 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v36 = sub_18901AD54(&type metadata for MaterialBackdropContextTrait, 0, 0);
    os_unfair_lock_unlock(v35[2]);
    [(_UITraitOverrides *)v34 _removeTraitToken:v36];

    swift_unknownObjectRelease();
    v37 = [(UIView *)a2 _traitOverrides];
    v38 = *(inited + 16);

    [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

    v39 = *(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_materialBackdropContext);
    v40 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
    swift_beginAccess();
    sub_188A3F29C(v39 + v40, v13, &qword_1EA935CD0, &qword_18A64FA60);
    v41 = sub_18A4A56B8();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v13, 1, v41) == 1)
    {
      sub_188A3F5FC(v13, &qword_1EA935CD0, &qword_18A64FA60);
    }

    else
    {
      LOBYTE(v64) = 1;
      sub_18A4A5698();
      (*(v42 + 8))(v13, v41);
    }
  }

  else
  {
    v43 = *(a3 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_materialBackdropContext);
    v44 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
    swift_beginAccess();
    sub_188A3F29C(v43 + v44, v10, &qword_1EA935CD0, &qword_18A64FA60);
    v45 = sub_18A4A56B8();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v10, 1, v45) == 1)
    {
      sub_188A3F5FC(v10, &qword_1EA935CD0, &qword_18A64FA60);
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_18A4A5698();
      (*(v46 + 8))(v10, v45);
    }

    v47 = [(UIView *)a2 _traitOverrides];
    v48 = [(_UITraitOverrides *)v47 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v49 = swift_initStackObject();
    *(v49 + 16) = v48;
    v64 = v49;
    sub_18901E6BC(v43);
    v50 = v64;
    v51 = [(UIView *)a2 _traitOverrides];
    v52 = *(v50 + 16);

    [(_UITraitOverrides *)v51 _replaceWithOverrides:v52];
  }

  v53 = sub_18A4A3098();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &aBlock - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A3088();
  if ((*(v26 + 40) & 1) == 0)
  {
    sub_18A4A3058();
    LOBYTE(v64) = 0;
    sub_18A4A3068();
    LOBYTE(v64) = 0;
    sub_18A4A3078();
  }

  sub_18A4A30A8();
  return (*(v54 + 8))(v56, v53);
}

double sub_1891DDF54(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void *__return_ptr), uint64_t a4, id a5, SEL *a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = a1();
  v12 = [v11 *a6];

  if (v12 != a5)
  {
    a3(v16);
    v14 = v17;
    v15 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    a7(a5, v14, v15);
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return result;
}

uint64_t sub_1891DE00C(uint64_t a1, uint64_t a2)
{
  if (sub_1891DE378(a1, a2))
  {
    v4 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1891DE054(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([(UIView *)Strong _isHiddenOrAncestorHidden])
      {
        v6 = [v5 traitCollection];
        if (qword_1ED491B40 != -1)
        {
          swift_once();
        }

        if (qword_1ED491AF0 != -1)
        {
          swift_once();
        }

        v7 = off_1ED491B48;
        os_unfair_lock_lock(*(off_1ED491B48 + 2));
        sub_18901CDE4(&type metadata for _UITraitHiddenViewsContributeToPocket, sub_1890B2DF4, 0);
        os_unfair_lock_unlock(v7[2]);
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
        v8 = sub_188A74A44();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v2 = [v6 _valueForNSIntegerTraitToken_];

        swift_unknownObjectRelease();
        LOBYTE(v2) = v2 != 0;
      }

      else
      {

        LOBYTE(v2) = 1;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    swift_beginAccess();
    *a1 = v2;
  }

  return v2 & 1;
}

void sub_1891DE25C(float a1)
{
  v1 = 1.0;
  if (a1 <= 1.0)
  {
    v1 = a1;
  }

  v2 = v1 * 32.0;
  v3 = a1 > 0.0;
  v4 = 0.0;
  if (v3)
  {
    v4 = v2;
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  if (v4 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
  }
}

BOOL sub_1891DE2E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (COERCE_FLOAT(*a1) != COERCE_FLOAT(*a2) || COERCE_FLOAT(HIDWORD(*a1)) != COERCE_FLOAT(HIDWORD(*a2)) || COERCE_FLOAT(*(a1 + 8)) != COERCE_FLOAT(*(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  return *(a1 + 41) == *(a2 + 41);
}

BOOL sub_1891DE378(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  if (!Strong)
  {
    if (v3)
    {

      return 0;
    }

    goto LABEL_7;
  }

  if (!v3)
  {

    return 0;
  }

  sub_188A34624(0, &qword_1EA9310A8, off_1E70EA610);
  v5 = sub_18A4A7C88();

  if (v5)
  {
LABEL_7:
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        v9 = sub_18A4A7C88();

        return (v9 & 1) != 0;
      }

      v8 = v6;
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1891DE4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1891DE514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1891DE574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD78, &unk_18A673970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1891DE644()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = (*(v0 + 16))();
  if (v1 == 1)
  {

    return [v2 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_1891DE8A8(uint64_t a1)
{
  sub_18A4A8888();
  v2 = *(a1 + 16);
  MEMORY[0x18CFE37E0](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x18CFE37E0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_18A4A88E8();
}

uint64_t sub_1891DE920()
{
  v1 = *v0;
  result = MEMORY[0x18CFE37E0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x18CFE37E0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1891DE974()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x18CFE37E0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_18A4A88E8();
}

void _UIScrollEdgeEffectContainerProxy.init(_:)(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*&a1[OBJC_IVAR____UIScrollPocketContainerInteraction_implementation] + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerModel);

  *a2 = v4;
}

{
  v4 = *(*&a1[OBJC_IVAR___UIScrollEdgeElementContainerInteraction_implementation] + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerModel);

  *a2 = v4;
}

uint64_t sub_1891DEA94()
{
  v1 = *v0;
  swift_getKeyPath();
  v19[0] = v1;
  sub_1891E1E08(&qword_1ED48E1A0, type metadata accessor for ScrollPocketContainerModel, &unk_18A66A73C);
  sub_18A4A2C08();

  swift_beginAccess();
  sub_188AFA5B0(v1 + 16, v15);
  if (v16 == 0xFF)
  {
    sub_1891E1E50(v15);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_188AFA8CC(v15, v19);
    sub_1891E1E50(v15);
    v3 = sub_18914BDC0();
    sub_188B04290(v19);
    v19[0] = MEMORY[0x1E69E7CC0];
    sub_188AAEE7C(0, 0, 0);
    v2 = v19[0];
    v4 = -1 << *(v3 + 32);
    v5 = ~v4;
    v6 = v3[8];
    v7 = -v4;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v15[0] = v3;
    v15[1] = (v3 + 8);
    v16 = v5;
    v17 = 0;
    v18 = v8 & v6;

    sub_1890A28A4();
    if (v9)
    {
      v10 = v9;
      do
      {
        swift_unknownObjectRelease();
        v19[0] = v2;
        v12 = *(v2 + 16);
        v11 = *(v2 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_188AAEE7C((v11 > 1), v12 + 1, 1);
          v2 = v19[0];
        }

        *(v2 + 16) = v12 + 1;
        *(v2 + 8 * v12 + 32) = v10;
        sub_1890A28A4();
        v10 = v13;
      }

      while (v13);
    }

    sub_188E036A4(v15[0]);
  }

  return v2;
}

uint64_t sub_1891DEC8C(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  v21[0] = v3;
  sub_1891E1E08(&qword_1ED48E1A0, type metadata accessor for ScrollPocketContainerModel, &unk_18A66A73C);
  sub_18A4A2C08();

  swift_beginAccess();
  sub_188AFA5B0(v3 + 16, v17);
  if (v18 == 0xFF)
  {
    return sub_1891E1E50(v17);
  }

  sub_188B02584(v17, v21);
  v5 = sub_18914BDC0();
  v6 = -1 << *(v5 + 32);
  v7 = ~v6;
  v8 = v5[8];
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v17[0] = v5;
  v17[1] = (v5 + 8);
  v18 = v7;
  v19 = 0;
  v20 = v10 & v8;
  sub_1890A28A4();
  if (v12)
  {
    v13 = v11;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(a1, v21[3], ObjectType, v13);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v13 = v15;
    }

    while (v16);
  }

  sub_188E036A4(v17[0]);
  return sub_188B04290(v21);
}

void *EnvironmentValues._scrollEdgeEffectContainerProxy.getter()
{
  sub_188EB9204();

  return sub_18A4A5328();
}

void *sub_1891DEE80@<X0>(void *a1@<X8>)
{
  sub_188EB9204();
  result = sub_18A4A5328();
  *a1 = v3;
  return result;
}

uint64_t sub_1891DEED0(uint64_t *a1)
{
  sub_188EB9204();

  return sub_18A4A5338();
}

void (*EnvironmentValues._scrollEdgeEffectContainerProxy.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_188EB9204();
  sub_18A4A5328();
  return sub_1891DEF90;
}

void sub_1891DEF90(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_18A4A5338();
  }

  else
  {
    sub_18A4A5338();
  }
}

uint64_t sub_1891DF024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1891E1D04(&qword_1EA93FE50, &qword_1EA93FE18, &qword_18A673B48, sub_1891E1D80);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1891DF0B4(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  v3 = *(v1 + 16);
  if (!v2)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v2 != v3)
  {
LABEL_7:
    sub_1891DF6AC();
  }
}

double sub_1891DF1A0@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  *a1 = *(v1 + 16);

  return result;
}

double sub_1891DF24C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  *a2 = *(v3 + 16);

  return result;
}

double sub_1891DF2F8(uint64_t *a1)
{
  v2 = *a1;

  v4 = sub_1891E1F40(v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
    sub_18A4A2BF8();
  }

  else
  {
    v7 = *(v1 + 16);
    *(v1 + 16) = v2;
    v8 = v7;
    sub_1891DF0B4(&v8);
  }

  return result;
}

double sub_1891DF43C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;

  v4 = v2;
  sub_1891DF0B4(&v4);

  return result;
}

uint64_t sub_1891DF490()
{
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1891DF534@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

double sub_1891DF5E0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2BF8();

  return result;
}

double sub_1891DF6AC()
{

  sub_18A4A49A8();

  if (v3 == 1)
  {
    v0[4] = 0;

    v2 = MEMORY[0x1E69E7CC0];
    v0[5] = MEMORY[0x1E69E7CC0];

    v0[6] = v2;

    v0[7] = v2;
  }

  return result;
}

uint64_t sub_1891DF75C()
{
  swift_getKeyPath();
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  if (*(v0 + 16))
  {
    return sub_1891DEA94();
  }

  else
  {
    return 0;
  }
}

void sub_1891DF814()
{
  v1 = v0;
  v128 = sub_18A4A54B8();
  v118 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v114 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v136 = v114 - v7;
  v135 = sub_18A4A5488();
  v130 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v116 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = v114 - v10;
  v11 = sub_18A4A5448();
  v133 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v115 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v127 = v114 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v114 - v16;
  swift_getKeyPath();
  v137 = v0;
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2C08();

  v18 = *(v0 + 16);
  if (v18)
  {
    swift_getKeyPath();
    v137 = v0;

    sub_18A4A2C08();

    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    v19 = *(v0 + 40);
    v20 = *(v19 + 16);
    v134 = v18;
    v126 = v5;
    *&v125 = v20;
    if (v20)
    {
      *&v123 = v19 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
      v122 = v133 + 16;
      v21 = (v133 + 8);
      swift_unknownObjectRetain();

      v22 = 0;
      v23 = v135;
      v24 = v116;
      while (v22 < *(v19 + 16))
      {
        v26 = *(v133 + 72);
        (*(v133 + 16))(v17, v123 + v26 * v22, v11);
        swift_beginAccess();
        v27 = v1[8];
        if (*(v27 + 16) && (v28 = sub_188E8BFB4(v17), (v29 & 1) != 0))
        {
          v30 = *(*(v27 + 56) + 8 * v28);
          swift_endAccess();
          swift_beginAccess();
          v31 = v30;
          v32 = sub_188E8BFB4(v17);
          if (v33)
          {
            v34 = v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = v1[8];
            v142 = v36;
            v1[8] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_188FA8800();
              v36 = v142;
            }

            (*v21)(*(v36 + 48) + v34 * v26, v11);

            sub_188F9FE20(v34, v36);
            v1[8] = v36;
          }

          swift_endAccess();
          swift_getKeyPath();
          v37 = v134;
          v142 = v134;
          sub_1891E1E08(&qword_1ED48E1A0, type metadata accessor for ScrollPocketContainerModel, &unk_18A66A73C);
          sub_18A4A2C08();

          swift_beginAccess();
          sub_188AFA5B0(v37 + 16, &v137);
          if (v139 == 0xFF)
          {

            (*v21)(v17, v11);
            sub_1891E1E50(&v137);
            v25 = v136;
          }

          else
          {
            sub_188B02584(&v137, &v142);
            v38 = sub_18914BDC0();
            v39 = -1 << *(v38 + 32);
            v40 = ~v39;
            v41 = v38[8];
            v42 = -v39;
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v137 = v38;
            v138 = v38 + 8;
            v139 = v40;
            v140 = 0;
            v141 = v43 & v41;
            sub_1890A28A4();
            v25 = v136;
            if (v45)
            {
              v46 = v44;
              do
              {
                ObjectType = swift_getObjectType();
                (*(v46 + 16))(v31, v143, ObjectType, v46);
                swift_unknownObjectRelease();
                sub_1890A28A4();
                v46 = v48;
              }

              while (v49);
            }

            sub_188B04290(&v142);
            (*v21)(v17, v11);
            sub_188E036A4(v137);
          }

          v23 = v135;
          v24 = v116;
        }

        else
        {
          swift_endAccess();
          (*v21)(v17, v11);
          v25 = v136;
        }

        if (++v22 == v125)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
      swift_unknownObjectRetain();
      v23 = v135;
      v24 = v116;
      v25 = v136;
LABEL_28:
      v50 = v1[6];
      v51 = *(v50 + 16);
      v136 = v11;
      v52 = v131;
      if (v51)
      {
        v125 = *&UIEdgeInsetsZero.bottom;
        v123 = *&UIEdgeInsetsZero.top;
        v121 = *(v130 + 16);
        v53 = v50 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
        v120 = *(v130 + 72);
        v119 = (v118 + 2);
        v54 = (v118 + 1);
        v118 = (v133 + 8);
        v122 = v130 + 16;
        v117 = (v130 + 8);
        v114[1] = v50;

        v124 = v1;
        do
        {
          v121(v52, v53, v23);
          sub_18A4A5468();
          v75 = v25;
          v76 = v126;
          v77 = v128;
          (*v119)(v126, v75, v128);
          v78 = v129;
          sub_18A4A54A8();
          sub_1891E1E08(&qword_1EA93FE68, MEMORY[0x1E697F7C0], MEMORY[0x1E697F7C8]);
          v79 = sub_18A4A7248();
          v80 = *v54;
          (*v54)(v78, v77);
          if (v79)
          {
            v80(v76, v77);
            v80(v75, v77);
            v56 = 0;
          }

          else
          {
            sub_18A4A5498();
            v55 = sub_18A4A7248();
            v80(v78, v77);
            v80(v76, v77);
            v80(v75, v77);
            v56 = v55 & 1;
          }

          v25 = v75;
          v52 = v131;
          sub_18A4A5478();
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          type metadata accessor for _UIScrollEdgeEffectElementProxy();
          v66 = v65;
          v67 = objc_allocWithZone(v65);
          swift_unknownObjectWeakInit();
          *&v67[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__style] = v56;
          v68 = &v67[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame];
          *v68 = v58;
          v68[1] = v60;
          v68[2] = v62;
          v68[3] = v64;
          swift_unknownObjectWeakAssign();
          v67[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__requiresPocket] = 1;
          v69 = &v67[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__visualInsets];
          v70 = v125;
          *v69 = v123;
          v69[1] = v70;
          v144.receiver = v67;
          v144.super_class = v66;
          v71 = objc_msgSendSuper2(&v144, sel_init);
          v72 = v127;
          sub_18A4A5458();
          v1 = v124;
          swift_beginAccess();
          v73 = v71;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v142 = v1[8];
          v1[8] = 0x8000000000000000;
          sub_188EA1ED0(v73, v72, v74);
          (*v118)(v72, v136);
          v1[8] = v142;
          swift_endAccess();
          v137 = v134;
          sub_1891DEC8C(v73);

          v23 = v135;
          (*v117)(v52, v135);
          v53 += v120;
          --v51;
        }

        while (v51);

        v24 = v116;
      }

      v81 = v1[7];
      v82 = *(v81 + 16);
      if (!v82)
      {
LABEL_53:

        swift_unknownObjectRelease_n();
        return;
      }

      v131 = (v81 + ((*(v130 + 80) + 32) & ~*(v130 + 80)));
      v129 = (v130 + 16);
      v83 = (v133 + 8);
      v84 = (v130 + 8);

      v85 = 0;
      v86 = v115;
      v128 = v82;
      while (v85 < *(v81 + 16))
      {
        (*(v130 + 16))(v24, &v131[*(v130 + 72) * v85], v23);
        sub_18A4A5458();
        swift_beginAccess();
        v87 = v1[8];
        if (*(v87 + 16) && (v88 = sub_188E8BFB4(v86), (v89 & 1) != 0))
        {
          v90 = *(*(v87 + 56) + 8 * v88);
          swift_endAccess();
          v91 = *v83;
          v92 = v90;
          v93 = v86;
          v94 = v24;
          v95 = v92;
          v91(v93, v136);
          sub_18A4A5478();
          v96 = &v95[OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB31_UIScrollEdgeEffectElementProxy__frame];
          *v96 = v97;
          *(v96 + 1) = v98;
          *(v96 + 2) = v99;
          *(v96 + 3) = v100;
          swift_getKeyPath();
          v101 = v134;
          v142 = v134;
          sub_1891E1E08(&qword_1ED48E1A0, type metadata accessor for ScrollPocketContainerModel, &unk_18A66A73C);
          sub_18A4A2C08();

          swift_beginAccess();
          sub_188AFA5B0(v101 + 16, &v137);
          if (v139 == 0xFF)
          {

            v23 = v135;
            (*v84)(v94, v135);
            sub_1891E1E50(&v137);
            v24 = v94;
          }

          else
          {
            sub_188B02584(&v137, &v142);
            v102 = sub_18914BDC0();
            v103 = -1 << *(v102 + 32);
            v104 = ~v103;
            v105 = v102[8];
            v106 = -v103;
            if (v106 < 64)
            {
              v107 = ~(-1 << v106);
            }

            else
            {
              v107 = -1;
            }

            v137 = v102;
            v138 = v102 + 8;
            v139 = v104;
            v140 = 0;
            v141 = v107 & v105;
            sub_1890A28A4();
            if (v109)
            {
              v110 = v108;
              do
              {
                v111 = swift_getObjectType();
                (*(v110 + 24))(v95, v143, v111, v110);
                swift_unknownObjectRelease();
                sub_1890A28A4();
                v110 = v112;
              }

              while (v113);
            }

            sub_188B04290(&v142);
            v24 = v116;
            v23 = v135;
            (*v84)(v116, v135);
            sub_188E036A4(v137);
          }

          v86 = v115;
          v82 = v128;
        }

        else
        {
          swift_endAccess();
          (*v83)(v86, v136);
          (*v84)(v24, v23);
        }

        if (++v85 == v82)
        {

          goto LABEL_53;
        }
      }
    }

    __break(1u);
  }
}

char *sub_1891E0708()
{

  sub_188B223B8(v0 + 24);

  v1 = OBJC_IVAR____TtC5UIKitP33_86A58F9D1ED17F2B0CAEA2FDC739EFBB29UIScrollEdgeEffectTagReceiver___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1891E07A0()
{
  sub_1891E0708();

  return swift_deallocClassInstance();
}

void *sub_1891E07F4()
{
  v0[2] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1E69E7CC0];
  v0[4] = 0;
  v0[5] = v1;
  v0[6] = v1;
  v0[7] = v1;
  v0[8] = sub_188E90194(v1);
  sub_18A4A2C38();
  return v0;
}

uint64_t sub_1891E0850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891DF75C();
  *a1 = result;
  return result;
}

double sub_1891E087C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return result;
}

uint64_t sub_1891E08E0(uint64_t a1, double a2)
{
  v4 = sub_18A4A5488();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v5 + 16))(v8, a1, v4, v6);
  v10 = *(v9 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 48) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_188E4CE94(0, v10[2] + 1, 1, v10);
    *(v9 + 48) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_188E4CE94((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(v9 + 48) = v10;
  return result;
}

uint64_t sub_1891E0A58(uint64_t a1)
{
  v3 = sub_18A4A5448();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  (*(v4 + 16))(v7, a1, v3, v5);
  v9 = *(v8 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 40) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188E4CE6C(0, v9[2] + 1, 1, v9);
    *(v8 + 40) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4CE6C((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  *(v8 + 40) = v9;
  return result;
}

uint64_t sub_1891E0BD0(uint64_t a1, double a2)
{
  v4 = sub_18A4A5488();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v5 + 16))(v8, a1, v4, v6);
  v10 = *(v9 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 56) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_188E4CE94(0, v10[2] + 1, 1, v10);
    *(v9 + 56) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_188E4CE94((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(v9 + 56) = v10;
  return result;
}

uint64_t View._uiScrollEdgeEffectTagReceiver()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(v6 + 2) = swift_getKeyPath();
  v6[24] = 0;
  type metadata accessor for UIScrollEdgeEffectTagReceiver(0);
  sub_18A4A43D8();
  MEMORY[0x18CFE0CC0](v6, a1, v4, a2);
  return sub_1891E194C(v6);
}

uint64_t sub_1891E0E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[1] = a1;
  v25 = a2;
  v4 = type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FE70, &qword_18A673D28);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FDF0, &unk_18A673B10);
  sub_18A4A43E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FE78, &qword_18A673D30);
  v11 = type metadata accessor for UIScrollEdgeEffectTagReceiver(0);
  v12 = sub_1891E1FC4();
  v13 = sub_1891E1E08(&qword_1EA93FE88, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673BE8);
  sub_18A4A5D58();

  sub_1891E1508(*v3, *(v3 + 8), v26);
  v14 = v26[0];
  v16 = sub_1891E1718(*(v3 + 16), *(v3 + 24), v15);
  v26[4] = v14;
  v26[5] = v16;
  sub_1891E2028(v3, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_1891E209C(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_1891E2160();
  v19 = v23;
  sub_18A4A5D88();

  swift_unknownObjectRelease();
  return (*(v24 + 8))(v9, v19);
}

double sub_1891E1174(void *a1)
{
  type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FDF0, &unk_18A673B10);
  sub_18A4A43E8();
  sub_1891E1508(*a1, *(a1 + 8), &v9);
  v2 = v9;
  v3 = a1[2];
  v4 = *(a1 + 24);
  sub_1891E1718(v3, v4, v5);
  swift_unknownObjectRelease();
  v9 = v2;
  sub_1891DF2F8(&v9);

  sub_18A4A43E8();
  v6 = v9;
  sub_1891E1508(*a1, *(a1 + 8), &v9);
  sub_1891E1718(v3, v4, v7);

  swift_getKeyPath();
  v9 = v6;
  sub_1891E1E08(&qword_1EA93FE60, type metadata accessor for UIScrollEdgeEffectTagReceiver, &unk_18A673B74);
  sub_18A4A2BF8();

  swift_unknownObjectRelease();
  return result;
}

double sub_1891E133C(uint64_t a1, char a2, double a3)
{
  v5 = sub_18A4A5318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v10 = sub_18A4A7988();
  v11 = sub_18A4A5B28();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = *&v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1891D69C0(0x74616F6C464743, 0xE700000000000000, &v17);
    _os_log_impl(&dword_188A29000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x18CFEA5B0](v13, -1, -1, v14);
    MEMORY[0x18CFEA5B0](v12, -1, -1);
  }

  sub_18A4A5308();
  swift_getAtKeyPath();
  v15 = sub_1891E21DC(a1, 0);
  (*(v6 + 8))(v8, v5, v15);
  return v17;
}

void sub_1891E1508(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = sub_18A4A5318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *a3 = a1;

    j__swift_retain(a1);
  }

  else
  {
    j__swift_retain(a1);
    v11 = sub_18A4A7988();
    v12 = sub_18A4A5B28();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1891D69C0(0xD00000000000002BLL, 0x800000018A6B0B40, &v18);
      _os_log_impl(&dword_188A29000, v12, v11, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v13, 0xCu);
      v15 = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x18CFEA5B0](v14, -1, -1, v15);
      MEMORY[0x18CFEA5B0](v13, -1, -1);
    }

    sub_18A4A5308();
    swift_getAtKeyPath();
    v16 = j__swift_release(a1);
    (*(v8 + 8))(v10, v7, v16);
  }
}

void *sub_1891E1718(uint64_t a1, char a2, double a3)
{
  v5 = sub_18A4A5318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v9 = sub_18A4A7988();
    v10 = sub_18A4A5B28();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1891D69C0(0xD000000000000013, 0x800000018A6B0B20, &v17);
      _os_log_impl(&dword_188A29000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      v13 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x18CFEA5B0](v12, -1, -1, v13);
      MEMORY[0x18CFEA5B0](v11, -1, -1);
    }

    sub_18A4A5308();
    swift_getAtKeyPath();
    v14 = sub_1891E2090(a1, 0);
    (*(v6 + 8))(v8, v5, v14);
    return v17;
  }

  return a1;
}

void *sub_1891E18EC@<X0>(void *a1@<X8>)
{
  type metadata accessor for UIScrollEdgeEffectTagReceiver(0);
  swift_allocObject();
  result = sub_1891E07F4();
  *a1 = result;
  return result;
}

uint64_t sub_1891E194C(uint64_t a1)
{
  v2 = type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1891E19E4(uint64_t a1)
{
  result = sub_18A4A2C48();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1891E1AC8(uint64_t a1)
{
  sub_1891E1B94(319, &qword_1EA93FE10, &qword_1EA93FE18, &qword_18A673B48);
  if (v1 <= 0x3F)
  {
    sub_1891E1B94(319, &unk_1EA93FE20, &qword_1EA93C768, &qword_18A665570);
    if (v2 <= 0x3F)
    {
      sub_1891E1BE8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1891E1B94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_18A4A4448();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1891E1BE8(uint64_t a1)
{
  if (!qword_1EA93FE30)
  {
    type metadata accessor for UIScrollEdgeEffectTagReceiver(255);
    v1 = sub_18A4A43F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA93FE30);
    }
  }
}

unint64_t sub_1891E1CB0()
{
  result = qword_1EA93FE48;
  if (!qword_1EA93FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FE48);
  }

  return result;
}

uint64_t sub_1891E1D04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1891E1D80()
{
  result = qword_1EA93FE58;
  if (!qword_1EA93FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FE58);
  }

  return result;
}

uint64_t sub_1891E1E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1891E1E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB20, &qword_18A666410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1891E1EB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (v3)
  {
    if (v6)
    {
      if (v3 == v6)
      {
        goto LABEL_6;
      }

      return 0;
    }

LABEL_15:

    return 0;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_6:
  v7 = v5 == 0;
  if (v5)
  {
    v8 = v4 == v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v4)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

BOOL sub_1891E1F40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 != a2;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:

    return 1;
  }

  return 0;
}

unint64_t sub_1891E1FC4()
{
  result = qword_1EA93FE80;
  if (!qword_1EA93FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93FE78, &qword_18A673D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FE80);
  }

  return result;
}

uint64_t sub_1891E2028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1891E2090(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1891E209C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1891E2100()
{
  v1 = *(type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1891E1174(v2);
}

unint64_t sub_1891E2160()
{
  result = qword_1EA93FEA0;
  if (!qword_1EA93FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FEA0);
  }

  return result;
}

double sub_1891E21DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1891E2200()
{
  v1 = [(UIView *)v0 _traitOverrides];
  v2 = sub_18A4A7258();
  v3 = [(_UITraitOverrides *)v1 _hasChildTransformWithIdentifier:v2];

  if ((v3 & 1) == 0)
  {
    v4 = sub_18A4A7258();
    v6[4] = sub_188E26A78;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188A85DA8;
    v6[3] = &block_descriptor_146;
    v5 = _Block_copy(v6);

    [(UIView *)v0 _addChildTraitCollectionTransformWithIdentifier:v4 transform:v5];
    _Block_release(v5);
  }
}

char *sub_1891E2420(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIParallaxTransitionCardView_contentView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____UIParallaxTransitionCardView_backdropView] = 0;
  v4[OBJC_IVAR____UIParallaxTransitionCardView_roundsCorners] = 1;
  v4[OBJC_IVAR____UIParallaxTransitionCardView_hasShadow] = 1;
  v21.receiver = v4;
  v21.super_class = _UIParallaxTransitionCardView;
  v10 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____UIParallaxTransitionCardView_contentView;
  v12 = *&v10[OBJC_IVAR____UIParallaxTransitionCardView_contentView];
  v13 = v10;
  v14 = v12;
  [v13 bounds];
  [v14 setFrame_];

  [*&v10[v11] setAutoresizingMask_];
  [*&v10[v11] setClipsToBounds_];
  [v13 addSubview_];
  v15 = [v13 layer];
  v16 = [objc_opt_self() blackColor];
  v17 = [v16 CGColor];

  [v15 setShadowColor_];
  v18 = [v13 layer];
  [v18 setShadowRadius_];

  v19 = [v13 layer];
  [v19 setShadowPathIsBounds_];

  return v13;
}

void sub_1891E2800(void *a1)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1891E2F0C;
    *(v5 + 24) = v4;
    v12[4] = sub_188A4B574;
    v12[5] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188A4A968;
    v12[3] = &block_descriptor_147;
    v6 = _Block_copy(v12);
    v7 = a1;
    v8 = v1;

    [v3 performWithoutAnimation_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    v10 = [v1 backdropView];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];
    }

    [v1 setBackdropView_];
  }
}

void sub_1891E29F0(void *a1, uint64_t a2)
{
  v4 = [a1 backdropView];
  if (!v4)
  {
    [a1 bounds];
    v4 = [objc_allocWithZone(_UIVisualEffectBackdropView) initWithFrame_];
  }

  v9 = v4;
  [a1 setBackdropView_];
  [v9 setAutoresizingMask_];

  [v9 setCaptureGroup_];
  [a1 insertSubview:v9 atIndex:0];
}

void sub_1891E2B04()
{
  v1 = v0;
  v31.super_class = _UIParallaxTransitionCardView;
  objc_msgSendSuper2(&v31, sel_updateProperties);
  if (![v0 roundsCorners] || (v2 = objc_msgSend(v0, sel_superview)) == 0)
  {
    *&v26 = 0;
    BYTE8(v26) = -1;
    *&v27 = 0;
    BYTE8(v27) = -1;
    *&v28 = 0;
    BYTE8(v28) = -1;
    *&v29 = 0;
    BYTE8(v29) = -1;
    v14 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    v15 = [v0 contentView];
    *&v26 = 0;
    BYTE8(v26) = -1;
    *&v27 = 0;
    BYTE8(v27) = -1;
    *&v28 = 0;
    BYTE8(v28) = -1;
    *&v29 = 0;
    BYTE8(v29) = -1;
    v30 = v14;
    UIView.cornerConfiguration.setter(&v26);

    v16 = [v1 backdropView];
    if (!v16)
    {
      goto LABEL_8;
    }

    v13 = v16;
    *&v26 = 0;
    BYTE8(v26) = -1;
    *&v27 = 0;
    BYTE8(v27) = -1;
    *&v28 = 0;
    BYTE8(v28) = -1;
    *&v29 = 0;
    BYTE8(v29) = -1;
    v30 = v14;
    UIView.cornerConfiguration.setter(&v26);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 _containerConcentricRadiusForCorner_];
  v5 = v4;
  [v3 _containerConcentricRadiusForCorner_];
  v7 = v6;
  [v3 _containerConcentricRadiusForCorner_];
  v9 = v8;
  [v3 _containerConcentricRadiusForCorner_];
  *&v26 = v5;
  BYTE8(v26) = 0;
  *&v27 = v7;
  BYTE8(v27) = 0;
  *&v28 = v9;
  BYTE8(v28) = 0;
  *&v29 = v10;
  BYTE8(v29) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v23 = v28;
  v24 = v29;
  v25 = MEMORY[0x1E69E7CC0];
  v21 = v26;
  v22 = v27;
  sub_188E41F80(&v26, v20);
  v11 = [v0 contentView];
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v21 = v26;
  v22 = v27;
  sub_188E41F80(&v26, v20);
  UIView.cornerConfiguration.setter(&v21);

  v12 = [v1 backdropView];
  if (v12)
  {
    v13 = v12;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    UIView.cornerConfiguration.setter(&v21);

LABEL_7:
    goto LABEL_8;
  }

  sub_188E4342C(&v26);
LABEL_8:
  v17 = [v1 layer];
  v18 = [v1 hasShadow];
  LODWORD(v19) = 1025758986;
  if (!v18)
  {
    *&v19 = 0.0;
  }

  [v17 setShadowOpacity_];
}

unint64_t type metadata accessor for _UIParallaxTransitionCardView()
{
  result = qword_1EA93FED0;
  if (!qword_1EA93FED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93FED0);
  }

  return result;
}

uint64_t sub_1891E2FA0()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

void *_UIScenePresenterGeometryDriver.deinit()
{
  v1 = *(v0 + 128);
  swift_beginAccess();

  swift_unownedRelease();
  *(v1 + 16) = 0;
  swift_endAccess();

  sub_1891E3084(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  MEMORY[0x18CFEA6E0](v0 + 120);

  return v0;
}

void sub_1891E3084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a1 != 1)
  {
  }
}

uint64_t _UIScenePresenterGeometryDriver.__deallocating_deinit()
{
  _UIScenePresenterGeometryDriver.deinit();

  return swift_deallocClassInstance();
}

double _UIScenePresenterGeometryDriver.beginDrivingGeometry(for:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;

  return sub_1891E3154();
}

double sub_1891E3154()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 16);
    if (v4)
    {
      v19 = Strong;

      sub_1891E3518(&v44);
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v5 = v44;
      v42 = v50;
      v37 = v45;
      v38 = v46;
      v6 = *(v0 + 72);
      v43[2] = *(v0 + 56);
      v43[3] = v6;
      v7 = *(v0 + 104);
      v43[4] = *(v0 + 88);
      v43[5] = v7;
      v8 = *(v0 + 40);
      v43[0] = *(v0 + 24);
      v43[1] = v8;
      if (v44 == 1)
      {
        if (*&v43[0] == 1)
        {
          sub_1891E4240(v43, v29);

          *&v29[40] = v39;
          *&v29[56] = v40;
          *&v29[72] = v41;
          *v29 = 1;
          *&v29[88] = v42;
          *&v29[8] = v37;
          *&v29[24] = v38;
          sub_188A3F5FC(v29, &qword_1EA93FEE8, &qword_18A673F10);
          return result;
        }
      }

      else if (*&v43[0] != 1)
      {
        *&v21[0] = *&v43[0];
        v14 = *(v0 + 48);
        *(v21 + 8) = *(v0 + 32);
        *(&v21[1] + 8) = v14;
        *(&v21[5] + 1) = *(v0 + 112);
        v15 = *(v0 + 80);
        *(&v21[4] + 8) = *(v0 + 96);
        v16 = *(v0 + 64);
        *(&v21[3] + 8) = v15;
        *(&v21[2] + 8) = v16;
        *v29 = v21[0];
        *&v29[16] = v21[1];
        *&v29[64] = v21[4];
        *&v29[80] = v21[5];
        *&v29[32] = v21[2];
        *&v29[48] = v21[3];
        v53 = v46;
        v52 = v45;
        v56 = v49;
        v55 = v48;
        v54 = v47;
        v57 = v50;
        v51 = v44;
        sub_1891E4240(v43, v20);
        sub_1891E4240(v43, v20);
        sub_1891E42B0(&v44, v20);
        v17 = sub_1891E3DA4(&v51, v29);
        sub_188A3F5FC(v43, &qword_1EA93FEE8, &qword_18A673F10);
        sub_188A3F5FC(v21, &qword_1EA93FEE8, &qword_18A673F10);
        v25 = v39;
        v26 = v40;
        v27 = v41;
        v22 = v5;
        v28 = v42;
        v23 = v37;
        v24 = v38;
        v13 = sub_188A3F5FC(&v22, &qword_1EA93FEE8, &qword_18A673F10);
        if (v17)
        {

          sub_1891E42F4(&v44);

          return result;
        }

        goto LABEL_11;
      }

      *&v29[40] = v47;
      *&v29[56] = v48;
      *&v29[72] = v49;
      *v29 = v44;
      *&v29[88] = v50;
      v30 = *&v43[0];
      *&v29[8] = v45;
      *&v29[24] = v46;
      v9 = *(v0 + 32);
      v32 = *(v0 + 48);
      v31 = v9;
      v10 = *(v0 + 64);
      v11 = *(v0 + 80);
      v12 = *(v0 + 96);
      v36 = *(v0 + 112);
      v35 = v12;
      v34 = v11;
      v33 = v10;
      sub_1891E4240(v43, &v51);
      sub_1891E42B0(&v44, &v51);
      v13 = sub_188A3F5FC(v29, &qword_1EA93FEF0, &qword_18A673F18);
LABEL_11:
      MEMORY[0x1EEE9AC00](v13);
      v18[2] = v4;
      v18[3] = &v44;
      v18[4] = v1;
      sub_188F5EAD0(sub_1891E42E8, v18);

      sub_1891E42F4(&v44);
      return result;
    }
  }

  return result;
}

double _UIScenePresenterGeometryDriver.endDrivingGeometry(for:)()
{
  *(v0 + 16) = 0;

  return result;
}

double sub_1891E3518@<D0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 _window];
  v5 = _UIPortraitFrameForSceneHosting(v2);
  v7 = v6;
  v31 = v8;
  v10 = v9;
  if (v4)
  {
    v11 = [v4 interfaceOrientation];
  }

  else
  {
    v11 = 1;
  }

  v12 = _UIPortraitSafeAreaInsetsForSceneHosting(v2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v2 traitCollection];
  [v19 displayCornerRadius];
  v21 = v20;

  v22 = 0;
  if (v4 && v21 > 0.0)
  {
    v29 = v7;
    v30 = v5;
    v23 = v4;
    [v23 frame];
    v25 = v24;
    v27 = v26;
    [v2 frame];
    v32.width = v25;
    v32.height = v27;
    if (CGSizeEqualToSize(v32, v33))
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E698E668]) initWithCornerRadius_];
    }

    else
    {

      v22 = 0;
    }

    v7 = v29;
    v5 = v30;
  }

  *a1 = v4;
  a1[1] = v5;
  *(a1 + 2) = v7;
  result = v31;
  a1[3] = v31;
  *(a1 + 4) = v10;
  a1[5] = v12;
  *(a1 + 6) = v14;
  *(a1 + 7) = v16;
  *(a1 + 8) = v18;
  *(a1 + 9) = v11;
  a1[10] = 0.0;
  *(a1 + 11) = v22;
  return result;
}

uint64_t sub_1891E36B0(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[3];
  v52 = a3[2];
  v53 = v7;
  v8 = a3[5];
  v54 = a3[4];
  v55 = v8;
  v9 = a3[1];
  v50 = *a3;
  v51 = v9;
  v10 = *(a3 + 24);
  v48[0] = *(a3 + 8);
  v48[1] = v10;
  v49 = 0;
  sub_188F5EE04(v48);
  sub_188F5F26C(*(a3 + 9), 0);
  v11 = *(a3 + 56);
  v46[0] = *(a3 + 40);
  v46[1] = v11;
  v47 = 0;
  sub_188F5EF6C(v46);
  sub_188F5F3CC(2, 0);
  v12 = *(a3 + 11);
  v13 = v12;
  sub_188F5F0D0(v12);
  v15 = *(a4 + 24);
  v14 = (a4 + 24);
  if (v15 != 1)
  {
    v16 = v14[3];
    v17 = v14[1];
    v35 = v14[2];
    v36 = v16;
    v18 = v14[1];
    v34[0] = *v14;
    v34[1] = v18;
    v45[6] = v34[0];
    v45[7] = v18;
    v45[8] = v35;
    v45[9] = v16;
    v19 = v14[5];
    v20 = v14[3];
    v37 = v14[4];
    v38 = v19;
    v45[10] = v37;
    v45[11] = v19;
    v45[2] = v52;
    v45[3] = v53;
    v45[4] = v54;
    v45[5] = v55;
    v45[0] = v50;
    v45[1] = v51;
    v21 = v14[5];
    v43 = v37;
    v44 = v21;
    v41 = v35;
    v42 = v20;
    v39 = v34[0];
    v40 = v17;
    sub_1891E42B0(&v39, &v33);
    v22 = sub_1891E38F0(v45);
    sub_188A3F5FC(v34, &qword_1EA93FEE8, &qword_18A673F10);
    if (v22)
    {
      if (a1)
      {
        v23 = [objc_opt_self() _synchronizedDrawingFence];
        [a1 setAnimationFence_];

        v24 = objc_opt_self();
        if ([v24 areAnimationsEnabled])
        {
          v25 = [v24 _currentAnimationSettings];
        }

        else
        {
          v25 = 0;
        }

        [a1 setAnimationSettings_];
      }
    }
  }

  v26 = v14[3];
  v41 = v14[2];
  v42 = v26;
  v27 = v14[5];
  v43 = v14[4];
  v44 = v27;
  v28 = v14[1];
  v39 = *v14;
  v40 = v28;
  v29 = v53;
  v14[2] = v52;
  v14[3] = v29;
  v30 = v55;
  v14[4] = v54;
  v14[5] = v30;
  v31 = v51;
  *v14 = v50;
  v14[1] = v31;
  sub_188A3F5FC(&v39, &qword_1EA93FEE8, &qword_18A673F10);
  return sub_1891E42B0(a3, v34);
}

uint64_t sub_1891E38F0(uint64_t a1)
{
  if (*a1 == 1)
  {
    goto LABEL_2;
  }

  v2 = *v1;
  if (!*v1)
  {
    return LOBYTE(v2) & 1;
  }

  if (v1[3] != *(a1 + 24) || v1[4] != *(a1 + 32) || v1[5] != *(a1 + 40))
  {
    goto LABEL_23;
  }

  LOBYTE(v2) = 1;
  if (v1[6] == *(a1 + 48) && v1[7] == *(a1 + 56) && v1[8] == *(a1 + 64))
  {
    if (*(v1 + 9) == *(a1 + 72))
    {
      v4 = *(a1 + 80);
      v3 = *(a1 + 88);
      v5 = *(v1 + 10);
      if (v5)
      {
        if (!v4)
        {
          goto LABEL_23;
        }

        sub_188A34624(0, &qword_1EA93FEE0, 0x1E699FAC0);
        v7 = a1;
        sub_1891E4240(a1, v21);
        v8 = v4;
        v9 = v5;
        v10 = sub_18A4A7C88();

        if ((v10 & 1) == 0)
        {
LABEL_20:
          sub_188A3F5FC(v7, &qword_1EA93FEE8, &qword_18A673F10);
          goto LABEL_23;
        }
      }

      else
      {
        if (v4)
        {
          goto LABEL_23;
        }

        v11 = *(a1 + 48);
        v21[2] = *(a1 + 32);
        v21[3] = v11;
        v12 = *(a1 + 80);
        v21[4] = *(a1 + 64);
        v21[5] = v12;
        v13 = *(a1 + 16);
        v7 = a1;
        v21[0] = *a1;
        v21[1] = v13;
        sub_1891E42B0(v21, &v20);
      }

      v14 = *(v1 + 11);
      if (v14)
      {
        if (v3)
        {
          sub_188A34624(0, &qword_1EA93FED8, 0x1E698E668);
          v15 = v3;
          v16 = v14;
          v17 = sub_18A4A7C88();
          sub_188A3F5FC(v7, &qword_1EA93FEE8, &qword_18A673F10);

          LOBYTE(v2) = v17 ^ 1;
          return LOBYTE(v2) & 1;
        }

        goto LABEL_20;
      }

      v18 = v3;
      sub_188A3F5FC(v7, &qword_1EA93FEE8, &qword_18A673F10);
      if (!v3)
      {
LABEL_2:
        LOBYTE(v2) = 0;
        return LOBYTE(v2) & 1;
      }
    }

LABEL_23:
    LOBYTE(v2) = 1;
  }

  return LOBYTE(v2) & 1;
}

double sub_1891E3B18(uint64_t a1, uint64_t a2)
{
  *(*v2 + 16) = a2;

  return sub_1891E3154();
}

double sub_1891E3B54()
{
  *(*v0 + 16) = 0;

  return result;
}

void *UIScenePresenter.geometryDriver.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    swift_unknownObjectRetain();
    v1 = [v0 presentationView];
    v2 = [v1 _geometryDriverStorage];

    swift_unknownObjectRelease();
    v0 = *&v2[OBJC_IVAR____UIScenePresenterGeometryDriverStorage_driver];
  }

  return v0;
}

uint64_t sub_1891E3C70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1891E3CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1891E3D48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1891E3DA4(v9, v10);
}

BOOL sub_1891E3DA4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_188A34624(0, &qword_1EA930850, off_1E70EAEB8);
    v6 = v5;
    v7 = v4;
    v8 = sub_18A4A7C88();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 72) == *(a2 + 72))
    {
      v10 = *(a1 + 80);
      v11 = *(a2 + 80);
      if (v10)
      {
        if (!v11)
        {
          return 0;
        }

        sub_188A34624(0, &qword_1EA93FEE0, 0x1E699FAC0);
        v12 = v11;
        v13 = v10;
        v14 = sub_18A4A7C88();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v15 = *(a1 + 88);
      v16 = *(a2 + 88);
      if (v15)
      {
        if (v16)
        {
          sub_188A34624(0, &qword_1EA93FED8, 0x1E698E668);
          v17 = v16;
          v18 = v15;
          v19 = sub_18A4A7C88();

          if (v19)
          {
            return 1;
          }
        }
      }

      else if (!v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1891E3F60(void *a1)
{
  *(v1 + 16) = xmmword_18A64C520;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIScenePresenterGeometryDriver.GeometryChangeObserver();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 128) = v3;
  swift_unknownObjectWeakAssign();
  v4 = *(v1 + 128);
  swift_beginAccess();

  swift_unownedRelease();
  *(v4 + 16) = v1;
  swift_endAccess();
  swift_unownedRetain();

  [(UIView *)a1 _addGeometryChangeObserver:?];
  return v1;
}

void sub_1891E4048(uint64_t *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v2 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v4 = [Strong window];
    if (!v4)
    {
LABEL_26:

      return;
    }

    v5 = v4;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    v6 = [v4 interfaceOrientation];
    v7 = a1[25];
    if (UIInterfaceOrientationIsPortrait(v6))
    {
      IsPortrait = UIInterfaceOrientationIsPortrait(v7);
      if (UIInterfaceOrientationIsLandscape(v6))
      {
        IsLandscape = UIInterfaceOrientationIsLandscape(v7);
        if (!IsPortrait)
        {
          v10 = IsLandscape;
LABEL_15:
          v11 = v5;
          [v11 frame];
          v13 = v12;
          [v11 frame];
          v15 = v14;

          if (v10 || v13 == v15)
          {
            v5 = v29;
            v29 = v11;
            goto LABEL_24;
          }

LABEL_17:
          if ([v5 isRotating])
          {
            [v5 frame];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            [v29 frame];
            v32.origin.x = v24;
            v32.origin.y = v25;
            v32.size.width = v26;
            v32.size.height = v27;
            v31.origin.x = v17;
            v31.origin.y = v19;
            v31.size.width = v21;
            v31.size.height = v23;
            v28 = CGRectEqualToRect(v31, v32);
            if ((v2 & 0x36) == 0 || v28)
            {
              goto LABEL_25;
            }
          }

          else if ((v2 & 0x36) == 0)
          {
            goto LABEL_25;
          }

LABEL_24:
          sub_1891E3154();
LABEL_25:

          goto LABEL_26;
        }

LABEL_13:
        v10 = 1;
        goto LABEL_15;
      }

      if (IsPortrait)
      {
        goto LABEL_13;
      }
    }

    else if (UIInterfaceOrientationIsLandscape(v6))
    {
      v10 = UIInterfaceOrientationIsLandscape(v7);
      goto LABEL_15;
    }

    v10 = 0;
    goto LABEL_15;
  }
}

uint64_t sub_1891E4240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FEE8, &qword_18A673F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1891E4324(void *a1, void *a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content;
  v7 = *(v3 + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content + 16);
  if (a3 == -1)
  {
    if (v7 != 255)
    {
      goto LABEL_9;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_21;
  }

  if (v7 == 255)
  {
    goto LABEL_9;
  }

  v9 = *v6;
  v8 = *(v6 + 8);
  v10 = a3;
  if ((a3 & 1) == 0)
  {
    if (v7)
    {
      sub_188CC4D48(*v6, *(v6 + 8), *(v3 + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content + 16));
      sub_188B4C634(v9, v8, v7);
      v14 = 1;
      goto LABEL_20;
    }

    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    sub_188CC4D48(v9, v8, v7);
    sub_188CC4D48(v9, v8, v7);
    sub_188CC4D48(a1, a2, v10);
    if (sub_18A4A7C88())
    {
      v15 = sub_18A4A7C88();

      sub_188B4C634(v9, v8, v7);
      if (v15)
      {
        sub_188CCA578(a1, a2, 0);

        a3 = v10;
        goto LABEL_16;
      }
    }

    else
    {

      sub_188B4C634(v9, v8, v7);
    }

    v14 = 1;
    goto LABEL_20;
  }

  if ((v7 & 1) == 0)
  {
    sub_188CC4D48(*v6, *(v6 + 8), *(v3 + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content + 16));
    sub_188CC4D48(v9, v8, v7);
    sub_188CC4D48(a1, a2, v10);

    sub_188B4C634(a1, a2, v10);
    sub_188B4C634(v9, v8, v7);
    a3 = v10;
    v14 = 1;
    goto LABEL_21;
  }

  v11 = v3;
  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  sub_188CC4D48(v9, v8, v7);
  sub_188CC4D48(a1, a2, v10);
  v12 = sub_18A4A7C88();
  sub_188B4C634(a1, a2, v10);
  sub_188B4C634(v9, v8, v7);
  if (v12)
  {
    v13 = [a1 isDescendantOfView_];
    a3 = v10;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_9:
    v14 = 1;
    goto LABEL_21;
  }

  v14 = 1;
LABEL_20:
  a3 = v10;
LABEL_21:
  v16 = *v6;
  v17 = *(v6 + 8);
  *v6 = a1;
  *(v6 + 8) = a2;
  v18 = *(v6 + 16);
  *(v6 + 16) = a3;
  sub_188CC4D48(a1, a2, a3);
  sub_188B4C634(v16, v17, v18);
  if (v14)
  {
    sub_188CC4D60();
  }

  return v14;
}

void sub_1891E46AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
  if (v4)
  {
    v9 = *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
  }

  else
  {
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = *&v1[v3];
    *&v1[v3] = v5;
    v7 = v5;

    [v7 setNumberOfLines_];
    v9 = v7;
    [v9 setAdjustsFontForContentSizeCategory_];
    [v1 addSubview_];

    v4 = 0;
  }

  v8 = v4;
  [v9 setAttributedText_];
}

void sub_1891E47A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label;
  v3 = *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView;
  v6 = *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 superview];
    if (v8)
    {
      v9 = v8;
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      v10 = v1;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        [v7 removeFromSuperview];
      }
    }
  }

  v12 = *&v1[v5];
  *&v1[v5] = 0;
}

id sub_1891E48A8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -1;
  v4 = &v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView] = 0;
  v5 = type metadata accessor for NavigationBarSubtitleView();
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1, v5);

  if (v7)
  {
  }

  return v7;
}

id sub_1891E4978()
{
  v1 = type metadata accessor for NavigationBarSubtitleView();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t static UICoreViewRepresentable._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PlatformViewRepresentableAdaptor(255, a3, a4, a4);
  v5 = sub_18A4A44E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_18A4A44E8();
    sub_188FB13B8(v4, v10, v4);
    swift_getWitnessTable();
    sub_18A4A5608();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t static UICoreViewRepresentable._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformViewRepresentableAdaptor(0, a3, a4, a4);
  swift_getWitnessTable();
  return sub_18A4A5618();
}

uint64_t UICoreViewRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

unint64_t sub_1891E4CDC@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  result = sub_188FA8F58();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1891E4D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_18A4A5608();
}

void sub_1891E4E3C(uint64_t a1)
{
  swift_getWitnessTable();
  sub_18A4A5658();
  __break(1u);
}

void sub_1891E4E7C(uint64_t a1)
{
  sub_18A4A80E8();

  v1 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](46, 0xE100000000000000);
  sub_18A4A8398();
  __break(1u);
}

uint64_t UITransitionComponentEvent.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF18, &qword_18A674110);
  v9 = swift_dynamicCast();
  v10 = *(*(a2 - 8) + 56);
  if (v9)
  {
    v11 = *(a2 - 8);
    v10(v8, 0, 1, a2);
    (*(v11 + 32))(a3, v8, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
    v10(v8, 1, 1, a2);
    (*(v6 + 8))(v8, v5);
  }

  return (v10)(a3, v12, 1, a2);
}

void sub_1891E51C8(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF18, &qword_18A674110);
  if (swift_dynamicCast())
  {
    v4 = v5;
    *(a3 + 16) = v6 & 1;
  }

  else
  {
    sub_1891E5E50(0, 0, 255);
    v4 = 0uLL;
    *(a3 + 16) = -1;
  }

  *a3 = v4;
}

double sub_1891E5270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_188FA970C(v3, v2, v4);
}

double static UITransitionComponentEvent<>.common(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_188FA970C(v3, v2, v4);
}

uint64_t static UICommonTransitionComponentEvent.OutputModelUpdateInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1891E52E4(*a1, *a2);
  return v4 & ~(v2 ^ v3) & 1;
}

void sub_1891E52E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1891E5E68(&qword_1ED48CEF0, MEMORY[0x1E69695B8]);
        v26 = sub_18A4A7198();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1891E5E68(&qword_1EA930B00, MEMORY[0x1E69695C8]);
          v31 = sub_18A4A7248();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1891E566C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v31 = v9;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_13:
    v14 = *(v3 + 48) + 24 * (v11 | (v4 << 6));
    v34 = *(v14 + 8);
    v35 = *v14;
    v15 = *(v14 + 16);
    sub_18A4A8888();
    if (v15 == 255)
    {
      sub_18A4A88A8();
    }

    else
    {
      sub_18A4A88A8();
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          MEMORY[0x18CFE37E0](3);
          v17 = v35;
          v18 = v34;
          v19 = 3;
        }

        else
        {
          if (v15 != 4)
          {
            v16 = 5;
LABEL_27:
            MEMORY[0x18CFE37E0](v16);
            MEMORY[0x18CFE37E0](v35);
            goto LABEL_28;
          }

          MEMORY[0x18CFE37E0](4);
          v17 = v35;
          v18 = v34;
          v19 = 4;
        }
      }

      else
      {
        if (v15)
        {
          if (v15 == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          goto LABEL_27;
        }

        MEMORY[0x18CFE37E0](0);
        v17 = v35;
        v18 = v34;
        v19 = 0;
      }

      sub_188BB395C(v17, v18, v19);
      sub_18A4A7348();
    }

LABEL_28:
    v20 = sub_18A4A88E8();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v35;
    if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_60:
      sub_188C46874(v23, v34, v15);
      return;
    }

    v24 = ~v21;
    v25 = *(a2 + 48);
    while (1)
    {
      v26 = (v25 + 24 * v22);
      v27 = *(v26 + 16);
      if (v27 == 255)
      {
        if (v15 == 255)
        {
          goto LABEL_57;
        }

        goto LABEL_31;
      }

      if (v15 == 255)
      {
        goto LABEL_31;
      }

      v28 = *v26;
      if (*(v26 + 16) <= 2u)
      {
        if (*(v26 + 16))
        {
          if (v27 == 1)
          {
            if (v15 != 1)
            {
              goto LABEL_31;
            }
          }

          else if (v15 != 2)
          {
            goto LABEL_31;
          }

LABEL_55:
          if (v28 == v23)
          {
            goto LABEL_56;
          }

          goto LABEL_31;
        }

        if (!v15)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }

      if (v27 == 3)
      {
        break;
      }

      if (v27 != 4)
      {
        if (v15 != 5)
        {
          goto LABEL_31;
        }

        goto LABEL_55;
      }

      if (v15 == 4)
      {
        goto LABEL_46;
      }

LABEL_31:
      v22 = (v22 + 1) & v24;
      if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (v15 != 3)
    {
      goto LABEL_31;
    }

LABEL_46:
    if (v28 != v23 || v26[1] != v34)
    {
      v30 = sub_18A4A86C8();
      v23 = v35;
      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_56:
    sub_188C46874(v23, v34, v27);
LABEL_57:
    v9 = v31;
    v3 = a1;
    v8 = v33;
  }

  while (v33);
LABEL_8:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v33 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1891E59A4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1891E5D50(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_188E4059C();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_18A4A7C78();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_18A4A7C88();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_1891E5C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1891E52E4(*a1, *a2);
  return v4 & ~(v2 ^ v3) & 1;
}

uint64_t UICommonTransitionComponentEventHandling.receive(event:responder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (*(a1 + 16) == 1)
  {
    v7 = a1[1];
    v8 = v5;
    return (*(a4 + 16))(&v8, &v7, a3);
  }

  else
  {
    v8 = *a1;
    v9 = v4 & 1;
    return (*(a4 + 8))(&v8, a3, a4);
  }
}

void sub_1891E5D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_18A4A7F68())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_18A4A7FC8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_1891E5E50(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_188FA9700(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1891E5E68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18A4A29D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIView._ManagedContent.init()@<X0>(uint64_t *a1@<X8>)
{
  result = pthread_main_np();
  if (result == 1)
  {
    v3 = qword_1EA93FF20;
    if (qword_1EA93FF20 != -1)
    {
      ++qword_1EA93FF20;
      *a1 = v3;
      return result;
    }

    __break(1u);
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t UIView._ManagedContent.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891E5FD0()
{
  v0 = qword_1EA93FF28;
  if (qword_1EA93FF28 == -1)
  {
    __break(1u);
  }

  else
  {
    ++qword_1EA93FF28;
    sub_188E72CCC(&v2, v0);
    return v0;
  }

  return result;
}

uint64_t sub_1891E6024(uint64_t a1, uint64_t a2)
{
  result = sub_18922277C(a1);
  if (v5)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else if (a2)
  {
    *v2 = 1;
  }

  return result;
}

double sub_1891E60C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & 1) != 0 || *(*&v2[*(a1 + 36)] + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934080, &unk_18A674280);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v5 = *(*(TupleTypeMetadata2 - 8) + 56);

    v5(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v7 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934080, &unk_18A674280);
    v9 = swift_getTupleTypeMetadata2();
    v10 = (a2 + *(v9 + 48));
    (*(*(v7 - 8) + 16))(a2, &v2[*(a1 + 28)], v7);
    v11 = &v2[*(a1 + 32)];
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1891E6270()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A8888();
  if (v2 < 0)
  {
    MEMORY[0x18CFE37E0](1);
    MEMORY[0x18CFE37E0](v1);
    sub_18A4A7E18();
    sub_18A4A71A8();
  }

  else
  {
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](v1);
  }

  return sub_18A4A88E8();
}

uint64_t sub_1891E6318(uint64_t a1)
{
  v2 = *v1;
  if (v1[1] < 0)
  {
    MEMORY[0x18CFE37E0](1);
    MEMORY[0x18CFE37E0](v2);
    sub_18A4A7E18();
    return sub_18A4A71A8();
  }

  else
  {
    MEMORY[0x18CFE37E0](0);
    return MEMORY[0x18CFE37E0](v2);
  }
}

uint64_t sub_1891E63A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A8888();
  if (v2 < 0)
  {
    MEMORY[0x18CFE37E0](1);
    MEMORY[0x18CFE37E0](v1);
    sub_18A4A7E18();
    sub_18A4A71A8();
  }

  else
  {
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](v1);
  }

  return sub_18A4A88E8();
}

unint64_t sub_1891E6448()
{
  result = sub_188E8D310(MEMORY[0x1E69E7CC0]);
  qword_1EA93FF30 = result;
  return result;
}

double sub_1891E6470@<D0>(void *a1@<X8>)
{
  if (qword_1EA932018 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA93FF30;

  return result;
}

void sub_1891E64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (pthread_main_np() != 1)
  {
    goto LABEL_16;
  }

  v10 = [(UIView *)v4 _typedStorage];
  v11 = sub_18902B9E8();

  if (!*(v11 + 16) || (v12 = sub_188E8B718(a3, a4), (v13 & 1) == 0))
  {

    return;
  }

  sub_188A55598(*(v11 + 56) + 32 * v12, v38);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF40, &qword_18A6742B8);
  if (swift_dynamicCast())
  {
    v15 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      v16 = v40;
      v17 = v39;
      v41 = *(&v40 + 1);
      sub_18922277C(a1);
      if ((v18 & 1) == 0)
      {
        v19 = (a2 != 0) | v17;
        v20 = v41;
        if ((v19 & 1) != 0 || *(v41 + 16))
        {
          *(&v40 + 1) = v14;
          v21 = swift_allocObject();
          *&v39 = v21;
          *(v21 + 16) = v19 & 1;
          *(v21 + 24) = v15;
          *(v21 + 32) = v16;
          *(v21 + 40) = v20;

          v22 = [(UIView *)v5 _typedStorage];
          v23 = sub_18902B9E8();

          if (v14)
          {
            sub_188A55538(&v39, v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_188EA209C(v38, a3, a4, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            sub_188A553EC(&v39);
            sub_1891EA2E4(a3, a4, v38);
            sub_188A553EC(v38);
          }

          v25 = [(UIView *)v5 _typedStorage];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
          v26 = swift_allocObject();
          *(v26 + 16) = v23;
          v27 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(&v25->super.isa + v27);
          *(&v25->super.isa + v27) = 0x8000000000000000;
          sub_188A40430(v26, &_s31_ManagedContentStatesStorageKeyVN, v28);
          *(&v25->super.isa + v27) = v36;
          swift_endAccess();
        }

        else
        {

          v15(v29);
          v39 = 0u;
          v40 = 0u;
          v30 = [(UIView *)v5 _typedStorage];
          v31 = sub_18902B9E8();

          sub_188A553EC(&v39);
          sub_1891EA2E4(a3, a4, v38);
          sub_188A553EC(v38);
          v32 = [(UIView *)v5 _typedStorage];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
          v33 = swift_allocObject();
          *(v33 + 16) = v31;
          v34 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(&v32->super.isa + v34);
          *(&v32->super.isa + v34) = 0x8000000000000000;
          sub_188A40430(v33, &_s31_ManagedContentStatesStorageKeyVN, v35);
          *(&v32->super.isa + v34) = v37;
          swift_endAccess();
        }

        return;
      }

      while (1)
      {
LABEL_16:
        sub_18A4A8398();
        __break(1u);
      }
    }
  }
}

uint64_t sub_1891E6948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934080, &unk_18A674280);
  *&v68 = swift_getTupleTypeMetadata2();
  v63 = sub_18A4A7D38();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v60 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v60 - v11;
  v65 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s20_ManagedContentStateVMa(255, a5, v15, v16);
  v18 = sub_18A4A7D38();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - v20;
  v22 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v60 - v24;
  v25 = a3[1];
  v71 = *a3;
  v72 = v25;
  if (pthread_main_np() != 1)
  {
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v69 = v6;
  v26 = [(UIView *)v6 _typedStorage];
  v27 = sub_18902B9E8();

  if (!*(v27 + 16) || (v28 = sub_188E8B718(v71, v72), (v29 & 1) == 0))
  {

    (*(v22 + 56))(v21, 1, 1, v17);
    return (*(v19 + 8))(v21, v18);
  }

  sub_188A55598(*(v27 + 56) + 32 * v28, &v76);

  v30 = swift_dynamicCast();
  v31 = v22;
  (*(v22 + 56))(v21, v30 ^ 1u, 1, v17);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  v32 = v70;
  (*(v22 + 32))(v70, v21, v17);
  sub_1891E6024(v66, v67);
  v33 = sub_1891E60C0(v17, v10);
  v34 = v68;
  if ((*(*(v68 - 8) + 48))(v10, 1, v68, v33) == 1)
  {
    (*(v62 + 8))(v10, v63);
    *(&v77 + 1) = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(v22 + 16))(boxed_opaque_existential_0, v32, v17);
    v36 = [(UIView *)v69 _typedStorage];
    v37 = sub_18902B9E8();

    v75 = v37;
    if (*(&v77 + 1))
    {
      sub_188A55538(&v76, v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v37;
      sub_188EA209C(v74, v71, v72, isUniquelyReferenced_nonNull_native);
      v39 = v73;
      v75 = v73;
    }

    else
    {
      sub_188A553EC(&v76);
      sub_1891EA2E4(v71, v72, v74);
      sub_188A553EC(v74);
      v39 = v75;
    }

    v56 = [(UIView *)v69 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
    v57 = swift_allocObject();
    *(v57 + 16) = v39;
    v58 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(&v56->super.isa + v58);
    *(&v56->super.isa + v58) = 0x8000000000000000;
    sub_188A40430(v57, &_s31_ManagedContentStatesStorageKeyVN, v59);
    *(&v56->super.isa + v58) = v73;
    swift_endAccess();

    return (*(v22 + 8))(v32, v17);
  }

  else
  {
    v41 = *(v34 + 48);
    v42 = TupleTypeMetadata2;
    v43 = *(TupleTypeMetadata2 + 48);
    v44 = v65;
    v45 = *(v65 + 32);
    v68 = *&v10[v41];
    v45(v12, v10, a5);
    *&v12[v43] = v68;
    v46 = *&v12[*(v42 + 48)];
    v47 = v64;
    v45(v64, v12, a5);
    v46(v47);
    v76 = 0u;
    v77 = 0u;
    v48 = v69;
    v49 = [(UIView *)v69 _typedStorage];
    v50 = sub_18902B9E8();

    v75 = v50;
    sub_188A553EC(&v76);
    sub_1891EA2E4(v71, v72, v74);
    sub_188A553EC(v74);
    v51 = v75;
    v52 = [(UIView *)v48 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    v54 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(&v52->super.isa + v54);
    *(&v52->super.isa + v54) = 0x8000000000000000;
    sub_188A40430(v53, &_s31_ManagedContentStatesStorageKeyVN, v55);
    *(&v52->super.isa + v54) = v73;
    swift_endAccess();

    (*(v44 + 8))(v47, a5);
    return (*(v31 + 8))(v70, v17);
  }
}

uint64_t sub_1891E7134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  result = *(a1 + 16);
  if (!result)
  {
    swift_getAtKeyPath();
    swift_beginAccess();
    result = v5;
    *v4 = v5;
  }

  return result;
}

uint64_t sub_1891E7198@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v6 = sub_18A4A7D38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = swift_projectBox();
  (*(v7 + 16))(v12, v13, v6);
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) != 1)
  {
    return (*(v14 + 32))(a4, v12, v5);
  }

  (*(v7 + 8))(v12, v6);
  swift_getAtKeyPath();
  (*(v14 + 16))(v9, a4, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  return (*(v7 + 40))(v13, v9, v6);
}

uint64_t sub_1891E73F8(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v39 = a8;
  v40 = a6;
  v37 = a7;
  v33[1] = a4;
  v33[2] = a2;
  v34 = a1;
  v11 = *a5;
  v35 = _s20_ManagedContentStateVMa(255, a10, a3, a4);
  v38 = sub_18A4A7D38();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = v33 - v12;
  v14 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v19 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v33 - v24;
  sub_1891E7198(a5, v18);
  v34(v18);
  (*(v15 + 8))(v18, v14);
  (*(v19 + 16))(v22, v25, a10);
  *v13 = 1;
  v28 = _s20_ManagedContentStateVMa(0, a10, v26, v27);
  *&v13[v28[9]] = MEMORY[0x1E69E7CD0];
  (*(v19 + 32))(&v13[v28[7]], v22, a10);
  v29 = &v13[v28[8]];
  v30 = v39;
  *v29 = v37;
  v29[1] = v30;
  v31 = *(v19 + 8);

  v31(v25, a10);
  (*(*(v35 - 8) + 56))(v13, 0, 1);
  return (*(v36 + 40))(v40, v13, v38);
}

void sub_1891E7748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1891E64E0(a4, a2, a5, a6);
  }
}

void sub_1891E77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17[0] = a5;
    v17[1] = a6;
    sub_1891E6948(a4, a2, v17, a7, a10);
  }
}

double sub_1891E7864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void UIView.updateManagedContent<A, B, C>(ofType:using:keyPath:neededWhen:update:setUp:tearDown:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(_BYTE *, _BYTE *, uint64_t), uint64_t a6, uint64_t a7, uint64_t (*a8)(double a1), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v139 = a8;
  v130 = a7;
  v132 = a6;
  v133 = a5;
  LODWORD(v150) = a4;
  v135 = a2;
  v145 = a1;
  v13 = (*a3 + *MEMORY[0x1E69E77B0]);
  v149 = v13[1];
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v131 = &v115[-v14];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934080, &unk_18A674280);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v124 = sub_18A4A7D38();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v115[-v15];
  v122 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v115[-v16];
  v126 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v125 = &v115[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = _s20_ManagedContentStateVMa(0, a11, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v115[-v23];
  v134 = *v13;
  v24 = *(v134 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v115[-v27];
  v147 = v28;
  v152 = sub_18A4A7D38();
  v29 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v141 = &v115[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v115[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v153 = &v115[-v35];
  if (pthread_main_np() == 1)
  {

    v137 = v11;
    v36 = [(UIView *)v11 _typedStorage];
    v37 = sub_18902B9E8();

    v38 = *(v37 + 16);
    v138 = a11;
    v136 = a3 | 0x8000000000000000;
    if (v38 && (v39 = sub_188E8B718(v145, a3 | 0x8000000000000000), (v40 & 1) != 0))
    {
      sub_188A55598(*(v37 + 56) + 32 * v39, &aBlock);

      v41 = v153;
      v42 = v147;
      v43 = swift_dynamicCast();
      (*(v22 + 56))(v41, v43 ^ 1u, 1, v42);
    }

    else
    {

      v41 = v153;
      v42 = v147;
      (*(v22 + 56))(v153, 1, 1, v147);
    }

    v143 = v22;
    v148 = *(v22 + 48);
    v44 = v148(v41, 1, v42);
    v144 = a3;
    if (v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = *v41;
    }

    v46 = v149;
    sub_18A4A7D38();
    v151 = swift_allocBox();
    (*(v146 + 56))(v47, 1, 1, v46);
    v48 = *(v29 + 16);
    v140 = v29;
    if ((v150 & 1) == 0)
    {
      v139 = 0;
      v60 = 0;
      goto LABEL_16;
    }

    v49 = v152;
    v120 = v48;
    v48(v33, v41, v152);
    v50 = v148(v33, 1, v42);
    (*(v29 + 8))(v33, v49);
    if (v50 != 1)
    {
      v139 = 0;
      v60 = 0;
      v29 = v140;
      v41 = v153;
      v46 = v149;
      goto LABEL_15;
    }

    v116 = v45;
    v118 = a10;
    v117 = a9;
    v119 = objc_opt_self();
    v51 = v129;
    v52 = v134;
    (*(v24 + 16))(v129, v135, v134);
    v53 = (*(v24 + 80) + 64) & ~*(v24 + 80);
    v54 = (v25 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v149;
    *(v56 + 2) = v52;
    *(v56 + 3) = v57;
    v58 = v130;
    *(v56 + 4) = v138;
    *(v56 + 5) = v58;
    v59 = v151;
    *(v56 + 6) = v139;
    *(v56 + 7) = v59;
    (*(v24 + 32))(&v56[v53], v51, v52);
    *&v56[v54] = v144;
    v60 = v56;
    *&v56[v55] = v153;
    v61 = &v56[(v55 + 15) & 0xFFFFFFFFFFFFFFF8];
    v62 = v118;
    *v61 = v117;
    v61[1] = v62;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1891EA570;
    *(v63 + 24) = v56;
    v156 = sub_188A4B574;
    v157 = v63;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v155 = sub_188A4A968;
    *(&v155 + 1) = &block_descriptor_12_10;
    v64 = _Block_copy(&aBlock);

    [v119 performWithoutAnimation_];
    _Block_release(v64);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v139 = sub_1891EA570;
      v42 = v147;
      v29 = v140;
      v41 = v153;
      v46 = v149;
      LOBYTE(v45) = v116;
LABEL_15:
      v48 = v120;
LABEL_16:
      v66 = v141;
      v67 = v152;
      v48(v141, v41, v152);
      if (v148(v66, 1, v42) == 1)
      {

        (*(v29 + 8))(v66, v67);

LABEL_34:
        (*(v29 + 8))(v41, v67);
        sub_188A55B8C(v139, v60);
        return;
      }

      v149 = v60;
      v68 = v142;
      (*(v143 + 32))(v142, v66, v42);
      *v68 = v150 & 1;
      v69 = objc_opt_self();
      v70 = [v69 _isInAnimationBlockWithAnimationsEnabled];
      v71 = v144;
      if ((v70 & 1) == 0)
      {
        v73 = v127;
        v74 = sub_1891E60C0(v42, v127);
        v75 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v73, 1, TupleTypeMetadata2, v74) != 1)
        {
          v79 = v122;
          v80 = *(v122 + 48);
          v81 = v126;
          v82 = *(v126 + 32);
          v150 = *&v73[*(v75 + 48)];
          v83 = v121;
          v84 = v73;
          v85 = v138;
          v82(v121, v84, v138);
          *&v83[v80] = v150;
          v86 = *&v83[*(v79 + 48)];
          v87 = v125;
          v82(v125, v83, v85);
          v88 = v87;
          v86(v87);
          aBlock = 0u;
          v155 = 0u;

          v89 = v137;
          v90 = [(UIView *)v137 _typedStorage];
          v91 = sub_18902B9E8();

          v160 = v91;
          sub_188A553EC(&aBlock);
          sub_1891EA2E4(v145, v136, &v159);

          sub_188A553EC(&v159);
          v92 = v160;
          v93 = [(UIView *)v89 _typedStorage];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
          v94 = v42;
          v95 = swift_allocObject();
          *(v95 + 16) = v92;
          v96 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(&v93->super.isa + v96);
          *(&v93->super.isa + v96) = 0x8000000000000000;
          sub_188A40430(v95, &_s31_ManagedContentStatesStorageKeyVN, isUniquelyReferenced_nonNull_native);
          *(&v93->super.isa + v96) = v158;
          swift_endAccess();

          (*(v81 + 8))(v88, v138);
          (*(v143 + 8))(v142, v94);

          v29 = v140;
          v67 = v152;
          v41 = v153;
LABEL_33:
          v60 = v149;
          goto LABEL_34;
        }

        (*(v123 + 8))(v73, v124);
        v72 = 0;
        v76 = v46;
        v77 = v68;
        v78 = v137;
LABEL_29:
        v103 = *(v42 + 28);
        v104 = v131;
        sub_1891E7198(v71, v131);
        v133(&v77[v103], v104, v72);
        (*(v146 + 8))(v104, v76);
        *(&v155 + 1) = v42;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        v106 = v143;
        (*(v143 + 16))(boxed_opaque_existential_0, v77, v42);

        v107 = [(UIView *)v78 _typedStorage];
        v108 = sub_18902B9E8();

        v160 = v108;
        if (*(&v155 + 1))
        {
          sub_188A55538(&aBlock, &v159);
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v108;
          sub_188EA209C(&v159, v145, v136, v109);

          v110 = v158;
          v160 = v158;
        }

        else
        {
          sub_188A553EC(&aBlock);
          sub_1891EA2E4(v145, v136, &v159);

          sub_188A553EC(&v159);
          v110 = v160;
        }

        v67 = v152;
        v111 = [(UIView *)v137 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
        v112 = swift_allocObject();
        *(v112 + 16) = v110;
        v113 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v158 = *(&v111->super.isa + v113);
        *(&v111->super.isa + v113) = 0x8000000000000000;
        sub_188A40430(v112, &_s31_ManagedContentStatesStorageKeyVN, v114);
        *(&v111->super.isa + v113) = v158;
        swift_endAccess();

        (*(v106 + 8))(v142, v42);

        v29 = v140;
        v41 = v153;
        goto LABEL_33;
      }

      if (v45)
      {
        if ((v150 & 1) == 0)
        {
          v72 = 3;
LABEL_28:
          v98 = sub_1891E5FD0();
          v99 = swift_allocObject();
          v78 = v137;
          swift_unknownObjectWeakInit();
          v100 = swift_allocObject();
          v100[2] = v134;
          v100[3] = v46;
          v100[4] = v138;
          v100[5] = v99;
          v101 = v145;
          v100[6] = v98;
          v100[7] = v101;
          v100[8] = v136;
          v100[9] = v101;
          v156 = sub_1891EA53C;
          v157 = v100;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v155 = sub_1891E7864;
          *(&v155 + 1) = &block_descriptor_148;
          v102 = _Block_copy(&aBlock);

          v42 = v147;

          [v69 _addCompletionWithPosition_];
          _Block_release(v102);
          v76 = v46;
          v77 = v68;
          goto LABEL_29;
        }
      }

      else if (v150)
      {
        v72 = 2;
        goto LABEL_28;
      }

      v72 = 1;
      goto LABEL_28;
    }

    __break(1u);
  }

  sub_18A4A8398();
  __break(1u);
}

void UIView.updateManagedContent(_:neededWhen:update:setUp:tearDown:)(uint64_t *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = *a1;
  v67 = a5;
  v68 = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  *(v15 + 24) = a8;
  KeyPath = swift_getKeyPath();

  if (pthread_main_np() != 1)
  {
    goto LABEL_35;
  }

  v16 = [(UIView *)v9 _typedStorage];
  v17 = sub_18902B9E8();

  v62 = a3;
  v63 = v9;
  if (!*(v17 + 16) || (v18 = sub_188E8B718(v14, 0), (v19 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_188A55598(*(v17 + 56) + 32 * v18, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF40, &qword_18A6742B8);
  if (!swift_dynamicCast())
  {
LABEL_7:
    v61 = 0;
    v20 = 0;
    v77 = 0u;
    v78 = 0u;
    goto LABEL_8;
  }

  v20 = *(&v77 + 1);
  v61 = v77;
LABEL_8:
  v64 = v14;
  v60 = v20 != 0;
  v21 = swift_allocObject();
  v22 = 0;
  *(v21 + 16) = 0;
  v23 = MEMORY[0x1E69E7CA8];
  v24 = 0;
  if ((a2 & 1) == 0 || v20)
  {
LABEL_12:
    if (!v20)
    {

LABEL_31:
      sub_1891EA618(v77, *(&v77 + 1), v78, *(&v78 + 1));
      sub_188A55B8C(v22, v24);
      return;
    }

    v29 = v23;
    v30 = *(&v78 + 1);
    v76 = *(&v78 + 1);
    v31 = v78;
    v32 = objc_opt_self();

    v58 = v31;
    v59 = v22;
    if (([v32 _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
    {
      if ((a2 & 1) == 0 && !*(v30 + 16))
      {

        v20(v50);
        aBlock = 0u;
        v70 = 0u;
        v51 = [(UIView *)v63 _typedStorage];
        v52 = sub_18902B9E8();

        v75 = v52;
        sub_188A553EC(&aBlock);
        sub_1891EA2E4(v64, 0, v74);
        sub_188A553EC(v74);
        v53 = v75;
        v54 = [(UIView *)v63 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
        v55 = swift_allocObject();
        *(v55 + 16) = v53;
        v56 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = *(&v54->super.isa + v56);
        *(&v54->super.isa + v56) = 0x8000000000000000;
        sub_188A40430(v55, &_s31_ManagedContentStatesStorageKeyVN, isUniquelyReferenced_nonNull_native);
        *(&v54->super.isa + v56) = v73;
        swift_endAccess();

LABEL_30:

        v22 = v59;
        goto LABEL_31;
      }

      v33 = a2;
      v34 = 0;
      v35 = v63;
LABEL_26:
      sub_1891E7134(v21, v29 + 8, KeyPath);
      v62(v34);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF40, &qword_18A6742B8);
      *(&v70 + 1) = v40;
      v41 = swift_allocObject();
      *&aBlock = v41;
      *(v41 + 16) = v33 & 1;
      *(v41 + 24) = v20;
      *(v41 + 32) = v58;
      *(v41 + 40) = v30;

      v42 = [(UIView *)v35 _typedStorage];
      v43 = sub_18902B9E8();

      v75 = v43;
      if (v40)
      {
        sub_188A55538(&aBlock, v74);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v43;
        sub_188EA209C(v74, v64, 0, v44);
        v45 = v73;
      }

      else
      {
        sub_188A553EC(&aBlock);
        sub_1891EA2E4(v64, 0, v74);
        sub_188A553EC(v74);
        v45 = v75;
      }

      v46 = [(UIView *)v35 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FF38, &unk_18A674290);
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      v48 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v73 = *(&v46->super.isa + v48);
      *(&v46->super.isa + v48) = 0x8000000000000000;
      sub_188A40430(v47, &_s31_ManagedContentStatesStorageKeyVN, v49);
      *(&v46->super.isa + v48) = v73;
      swift_endAccess();

      goto LABEL_30;
    }

    v33 = a2;
    if (v60 & v61)
    {
      if ((a2 & 1) == 0)
      {
        v34 = 3;
        goto LABEL_24;
      }
    }

    else if (a2)
    {
      v34 = 2;
      goto LABEL_24;
    }

    v34 = 1;
LABEL_24:
    v36 = qword_1EA93FF28;
    if (qword_1EA93FF28 != -1)
    {
      ++qword_1EA93FF28;
      sub_188E72CCC(&aBlock, v36);
      v37 = swift_allocObject();
      v35 = v63;
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = v36;
      v38[4] = v64;
      v38[5] = 0;
      v38[6] = v29 + 8;
      v71 = sub_1891EA65C;
      v72 = v38;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v70 = sub_1891E7864;
      *(&v70 + 1) = &block_descriptor_28_1;
      v39 = _Block_copy(&aBlock);

      [v32 _addCompletionWithPosition_];
      _Block_release(v39);
      v30 = v76;
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  v25 = a2;
  v26 = objc_opt_self();
  v24 = swift_allocObject();
  v24[2] = sub_188A4A9DC;
  v24[3] = &v66;
  v24[4] = v21;
  v24[5] = v23 + 8;
  v24[6] = KeyPath;
  v24[7] = &v77;
  v24[8] = sub_188A4A9DC;
  v24[9] = v15;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1891EA66C;
  *(v27 + 24) = v24;
  v71 = sub_188E3FE50;
  v72 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v70 = sub_188A4A968;
  *(&v70 + 1) = &block_descriptor_38_5;
  v28 = _Block_copy(&aBlock);

  [v26 performWithoutAnimation_];
  _Block_release(v28);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v22 = sub_1891EA66C;
    v20 = *(&v77 + 1);
    a2 = v25;
    goto LABEL_12;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_18A4A8398();
  __break(1u);
}

uint64_t _UIViewManagedContent.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____UIViewManagedContent_value);
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

BOOL _UIViewManagedContent.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____UIViewManagedContent_value);
      v4 = *&v6[OBJC_IVAR____UIViewManagedContent_value];

      return v3 == v4;
    }
  }

  else
  {
    sub_188A553EC(v7);
  }

  return 0;
}

void __swiftcall _UIViewManagedContent.init()(_UIViewManagedContent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UIViewManagedContent.init()()
{
  if (pthread_main_np() == 1)
  {
    v1 = qword_1EA93FF20;
    if (qword_1EA93FF20 != -1)
    {
      ++qword_1EA93FF20;
      *&v0[OBJC_IVAR____UIViewManagedContent_value] = v1;
      v3.receiver = v0;
      v3.super_class = _UIViewManagedContent;
      return objc_msgSendSuper2(&v3, sel_init);
    }

    __break(1u);
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

double sub_1891E9650@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188E8B7E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA1210();
      v9 = v13;
    }

    v10 = *(v9 + 56) + 40 * v7;
    v11 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v10 + 32);
    sub_188F9C9CC(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1891E9700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188B00858(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA1AB8();
      v9 = v13;
    }

    v10 = *(v9 + 56) + 40 * v7;
    v11 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v10 + 32);
    sub_188F9D054(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1891E97B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_188A82868(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v17 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188D2326C();
      v11 = v17;
    }

    v12 = *(*(v11 + 48) + 24 * v9);

    v13 = (*(v11 + 56) + 80 * v9);
    v14 = v13[3];
    *(a4 + 32) = v13[2];
    *(a4 + 48) = v14;
    *(a4 + 64) = v13[4];
    v15 = v13[1];
    *a4 = *v13;
    *(a4 + 16) = v15;
    sub_188F9D228(v9, v11);
    *v5 = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 1;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
  }

  return result;
}

double sub_1891E988C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_188B0944C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA2E5C();
      v10 = v18;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 33);
    v16 = *(v11 + 40);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 32) = v14;
    *(a3 + 33) = v15;
    *(a3 + 40) = v16;
    sub_188F9D8E8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1891E9960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188E8B92C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA31C8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UITextEffectView.EffectID(0);
    sub_1891EAD90(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for UITextEffectView.EffectID);
    sub_188A8F66C((*(v9 + 56) + 40 * v7), a2);
    sub_188F9DAA4(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1891E9A94(uint64_t a1)
{
  v2 = v1;
  v3 = sub_188E8B9AC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA3878();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_188C09B40(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_1891E9B7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_188B00858(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA357C();
      v9 = v11;
    }

    sub_188A55538((*(v9 + 56) + 32 * v7), a2);
    sub_188F9E614(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1891E9CC4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_188C4585C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA55A4();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_188FA9CDC();
  *v2 = v7;
  return v8;
}

uint64_t sub_1891E9DA0(void *a1, uint64_t (*a2)(void *, uint64_t (*)(void), void (*)(uint64_t, uint64_t), uint64_t, uint64_t (*)(uint64_t, uint64_t)), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v20 = a2(a1, a2, a3, a4, a5);
    if (v21)
    {
      v9 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v5;
      v25 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v19 = *(*(v23 + 56) + 8 * v9);
        a3(v9, v23);
        *v8 = v23;
        return v19;
      }

LABEL_14:
      (v15)();
      v23 = v25;
      goto LABEL_10;
    }

    return 0;
  }

  if (v9 < 0)
  {
    v11 = *v5;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = a1;
  v13 = sub_18A4A8358();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = sub_18A4A7F68();
  v15 = a5(v11, v14);

  v16 = (a2)(v12);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v19;
}

double sub_1891E9F20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188E8BEC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA7190();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
    sub_1891EAD90(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v12 = *(v9 + 56) + 72 * v7;
    v13 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v13;
    *(a2 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    sub_188F9EFCC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = -1;
  }

  return result;
}

uint64_t sub_1891EA018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188E8BEC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA789C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
    sub_1891EAD90(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
    v20 = *(v13 - 8);
    sub_1891EAD2C(v12 + *(v20 + 72) * v7, a2);
    sub_188F9F2FC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1891EA19C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_188B85570(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA7F80();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 32 * v5);
  sub_188F9F7D8(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1891EA24C()
{
  v1 = v0;
  v2 = sub_188E906F4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA8684();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 16 * v4);
  sub_188F9FC8C(v7, v6);
  *v1 = v6;
  return v8;
}

double sub_1891EA2E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_188E8B718(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA8A74();
      v10 = v12;
    }

    sub_188E90548(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    sub_188A55538((*(v10 + 56) + 32 * v8), a3);
    sub_188FA0140(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1891EA388(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v18 = sub_1891E7134(a3, *a4, a5);
  a1(&v18);
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[2];
  v15 = a6[3];
  *a6 = 1;
  a6[1] = a7;
  v16 = MEMORY[0x1E69E7CD0];
  a6[2] = a8;
  a6[3] = v16;

  return sub_1891EA618(v12, v13, v14, v15);
}

BOOL sub_1891EA43C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      sub_188E90548(*a1, v3);
      sub_188E90548(v5, v4);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

LABEL_6:
    v7 = v5;
    v8 = v4;
LABEL_7:
    sub_188E90558(v7, v8);
    sub_188E90548(v2, v3);
    sub_188E90548(v5, v4);
    return 0;
  }

  if (v2 != v5)
  {
    sub_188E90558(*a2, a2[1]);
    v7 = v2;
    v8 = v3;
    goto LABEL_7;
  }

  sub_18A4A7E18();
  sub_188E90558(v2, v4);
  v9 = sub_188E90558(v2, v3);
  v10 = MEMORY[0x18CFE2D50](v3 & 0x7FFFFFFFFFFFFFFFLL, v4 & 0x7FFFFFFFFFFFFFFFLL, v9);
  sub_188E90548(v2, v3);
  sub_188E90548(v2, v4);
  return v10 & 1;
}

uint64_t sub_1891EA570(double a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 64) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1891E73F8(*(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1, *(v1 + 32));
}

double sub_1891EA618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1891EA688()
{
  result = qword_1EA93FF50;
  if (!qword_1EA93FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FF50);
  }

  return result;
}

unint64_t type metadata accessor for _UIViewManagedContent()
{
  result = qword_1EA93FF58[0];
  if (!qword_1EA93FF58[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EA93FF58);
  }

  return result;
}

uint64_t sub_1891EA744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1891EA7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1891EA834(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1891EAC2C();
    if (v2 <= 0x3F)
    {
      sub_1891EAC7C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1891EA8E4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1891EAA44(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 1] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_1891EAC2C()
{
  result = qword_1EA93FFE0;
  if (!qword_1EA93FFE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EA93FFE0);
  }

  return result;
}

void sub_1891EAC7C()
{
  if (!qword_1EA93FFE8)
  {
    v0 = sub_18A4A77E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA93FFE8);
    }
  }
}

unint64_t sub_1891EACD8()
{
  result = qword_1EA93FFF0;
  if (!qword_1EA93FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FFF0);
  }

  return result;
}

uint64_t sub_1891EAD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1891EAD90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1891EADFC()
{
  result = qword_1EA934360;
  if (!qword_1EA934360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA934360);
  }

  return result;
}

uint64_t sub_1891EAE54@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1891EADFC();
  v4 = [swift_getObjCClassFromMetadata() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E8, &qword_18A662C40);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t static UIScene._DestructionCondition.systemDeactivation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() systemDeactivation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E8, &qword_18A662C40);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t UIScene._DestructionCondition.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t UIScene._DestructionCondition.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

unint64_t sub_1891EB02C()
{
  result = qword_1EA93FFF8;
  if (!qword_1EA93FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FFF8);
  }

  return result;
}

void sub_1891EB090(uint64_t *a1@<X8>)
{
  v3 = [v1 viewEffects];
  sub_188A34624(0, &unk_1EA9300F0, off_1E70EC808);
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E49B54(v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      _s18_ContentProxyEntryCMa();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;

        goto LABEL_17;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  _s18_ContentProxyEntryCMa();
  v13 = [objc_allocWithZone(v12) init];
  v14 = v1;
  v11 = v13;
  [v14 addViewEffect_];
LABEL_17:
  *a1 = v11;
}

void sub_1891EB208(char a1)
{
  v3 = [v1 filter];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  swift_dynamicCast();
  v4 = v24;
  v5 = [v1 valueAsRequested_];
  v6 = sub_18A4A70A8();

  v7 = 0;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v14 = v7;
LABEL_16:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v6 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_188A55598(*(v6 + 56) + 32 * v18, v23);
    *&v24 = v21;
    *(&v24 + 1) = v20;
    sub_188A55538(v23, &v25);

LABEL_17:
    v27 = v24;
    v28[0] = v25;
    v28[1] = v26;
    if (!*(&v24 + 1))
    {

      return;
    }

    sub_188A55538(v28, &v24);
    sub_188A55598(&v24, v23);
    sub_188A34624(0, &qword_1EA93B790, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      v13 = sub_18A4A7258();

      [v4 setValue:0 forKeyPath:v13];
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(&v24, *(&v25 + 1));
      v12 = sub_18A4A86A8();
      v13 = sub_18A4A7258();

      [v4 setValue:v12 forKeyPath:v13];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  }

  if (v11 <= v7 + 1)
  {
    v15 = v7 + 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v10 = 0;
      v25 = 0u;
      v26 = 0u;
      v7 = v16;
      v24 = 0u;
      goto LABEL_17;
    }

    v10 = *(v6 + 64 + 8 * v14);
    ++v7;
    if (v10)
    {
      v7 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_1891EB584()
{
  v1 = _s18_ContentProxyEntryCMa();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

unint64_t sub_1891EB604()
{
  result = qword_1EA940008;
  if (!qword_1EA940008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940008);
  }

  return result;
}

void sub_1891EB658(int a1)
{
  *&v4 = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(v4) = 0;
  v5 = 0x7FEFFFFFFFFFFFFFLL;
  LOBYTE(v6) = 0;
  v7 = 0x7FEFFFFFFFFFFFFFLL;
  v8 = 0;
  v9 = 0x7FEFFFFFFFFFFFFFLL;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  UIView.cornerConfiguration.setter(&v4);
  v3 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(&v4);

  if (!v6)
  {
    sub_188A3F5FC(&v4, &unk_1EA933EC0, &qword_18A65E090);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    goto LABEL_9;
  }

  sub_188A53994(&v4, &v12);
  sub_188ACE668(&v4);
  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_188A3F5FC(&v12, &unk_1EA93C9A0, qword_18A6513A0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = &_s27SearchBarBackgroundMaterialVN;
    v7 = &off_1EFADEF28;
    goto LABEL_11;
  }

  if ((v4 & 1) != 0 || ((BYTE1(v4) ^ a1) & 1) != 0 || !BYTE2(v4))
  {
    v6 = &_s27SearchBarBackgroundMaterialVN;
    v7 = &off_1EFADEF28;
LABEL_11:
    LOBYTE(v4) = 0;
    BYTE1(v4) = a1 & 1;
    BYTE2(v4) = 1;
    UIView._background.setter(&v4);
  }
}

void sub_1891EB830(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + 40) presentationValue];
    v4 = v3;
    sub_1891EBD30();
    Height = CGRectGetHeight(v6);
    sub_1891EB8C0(v4 * (Height + *(v2 + 48) + *(v2 + 48)) - *(v2 + 48));
  }
}

void sub_1891EB8C0(double a1)
{
  v2 = v1;
  v3 = [*(v1 + 16) parameters];
  v4 = sub_1891EBB80();

  if (v4)
  {
    sub_1891EBD30();
    v37 = v6;
    v38 = v5;
    v35 = v8;
    v36 = v7;
    v9 = *(v4 + 2);
    if (v9)
    {

      v10 = 0;
      v11 = 56;
      v12 = v4;
      while (1)
      {
        v13 = *&v4[v11 - 16];
        recta = *&v4[v11 - 24];
        v14 = *&v4[v11 - 8];
        v15 = *&v4[v11];
        v43.origin.x = v38;
        v43.origin.y = v37;
        v43.size.width = v36;
        v43.size.height = v35;
        v16 = -CGRectGetMinX(v43);
        v44.origin.x = v38;
        v44.origin.y = v37;
        v44.size.width = v36;
        v44.size.height = v35;
        v17 = -CGRectGetMinY(v44);
        v45.origin.x = recta;
        v45.origin.y = v13;
        v45.size.width = v14;
        v45.size.height = v15;
        v46 = CGRectOffset(v45, v16, v17);
        UIRectGetCenter(v46.origin.x, v46.origin.y, v46.size.width);
        v19 = vabdd_f64(v18, a1);
        v20 = *(v2 + 48);
        v21 = *(v2 + 56);
        v22 = v20 > v19 ? *(v2 + 48) : v19;
        v23 = (v22 - v19) / v20;
        v24 = *(v2 + 64);
        if (v24)
        {
          v25 = *(v2 + 72);

          v27 = v24(v26, v23);
          sub_188A55B8C(v24, v25);
        }

        else
        {
          v28 = v23 + v23;
          v27 = v23 >= 0.5 ? (2.0 - v28) * (2.0 - v28) * -0.5 + 1.0 : v23 * v28;
        }

        if (v10 >= *(v12 + 2))
        {
          break;
        }

        v47 = CGRectOffset(*&v12[v11 - 24], 0.0, v21 * v27);
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_189212BB0(v12);
        }

        if (v10 >= *(v12 + 2))
        {
          goto LABEL_24;
        }

        ++v10;
        v33 = &v12[v11];
        *(v33 - 3) = x;
        *(v33 - 2) = y;
        *(v33 - 1) = width;
        *v33 = height;
        v11 += 32;
        if (v9 == v10)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {
      v12 = v4;
LABEL_20:
      v34 = sub_1891EBE90(v12);
      rect = [*(v2 + 24) layer];
      [rect setMeshTransform_];
    }
  }
}

char *sub_1891EBB80()
{
  v1 = [v0 _textLineRects];
  if (!v1)
  {
    return v1;
  }

  sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
  v2 = sub_18A4A7548();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v19 = MEMORY[0x1E69E7CC0];
  result = sub_188E6D1DC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v19;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E49AE4(v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      [v6 CGRectValue];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v17 = v19[2];
      v16 = v19[3];
      if (v17 >= v16 >> 1)
      {
        sub_188E6D1DC((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      v19[2] = v17 + 1;
      v18 = &v19[4 * v17];
      v18[4] = v9;
      v18[5] = v11;
      v18[6] = v13;
      v18[7] = v15;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

void sub_1891EBD30()
{
  v1 = v0;
  v2 = [*(v0 + 16) parameters];
  v3 = sub_1891EBB80();

  if (v3)
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
    v8 = *(v3 + 2);
    if (v8)
    {
      v9 = v3 + 56;
      do
      {
        *&v4 = CGRectUnion(*&v4, *(v9 - 24));
        v9 += 32;
        --v8;
      }

      while (v8);
    }

    v10 = v4;
    v11 = v5;
    v12 = v7;
    v13 = v6;

    v16.origin.x = v10;
    v16.origin.y = v11;
    v16.size.width = v13;
    v16.size.height = v12;
    Width = CGRectGetWidth(v16);
    v15 = *(v1 + 24);
    [v15 bounds];
    if (vabdd_f64(Width, CGRectGetWidth(v17)) > COERCE_DOUBLE(1))
    {
      [v15 bounds];
      CGRectGetWidth(v18);
    }
  }
}

id sub_1891EBE90(uint64_t a1)
{
  v3 = [*(v1 + 16) parameters];
  v4 = sub_1891EBB80();

  if (!v4)
  {
LABEL_26:
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  sub_1891EBD30();
  v75 = v6;
  v76 = v5;
  v7 = *(v4 + 2);
  if (v7)
  {
    if (v7 <= *(a1 + 16))
    {
      v8 = 0;
      v9 = (v4 + 56);
      v10 = MEMORY[0x1E69E7CC0];
      v11 = (a1 + 56);
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v13 = *(v9 - 3);
        v14 = *(v9 - 2);
        v15 = *(v9 - 1);
        v16 = *v9;
        sub_1891EBD30();
        v17 = -CGRectGetMinX(v103);
        sub_1891EBD30();
        v18 = -CGRectGetMinY(v104);
        v79 = v14;
        v80 = v13;
        v105.origin.x = v13;
        v105.origin.y = v14;
        rect = v16;
        v78 = v15;
        v105.size.width = v15;
        v105.size.height = v16;
        v106 = CGRectOffset(v105, v17, v18);
        x = v106.origin.x;
        y = v106.origin.y;
        width = v106.size.width;
        height = v106.size.height;
        MinX = CGRectGetMinX(v106);
        v107.origin.x = 0.0;
        v107.origin.y = 0.0;
        v107.size.height = v75;
        v107.size.width = v76;
        v96 = CGRectGetWidth(v107);
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        MinY = CGRectGetMinY(v108);
        v109.origin.x = 0.0;
        v109.origin.y = 0.0;
        v109.size.width = v76;
        v109.size.height = v75;
        v90 = CGRectGetHeight(v109);
        v110.origin.x = x;
        v110.origin.y = y;
        v110.size.width = width;
        v110.size.height = height;
        v89 = CGRectGetWidth(v110);
        v111.origin.x = 0.0;
        v111.origin.y = 0.0;
        v111.size.width = v76;
        v111.size.height = v75;
        v88 = CGRectGetWidth(v111);
        v112.origin.x = x;
        v112.origin.y = y;
        v112.size.width = width;
        v112.size.height = height;
        v87 = CGRectGetHeight(v112);
        v113.origin.x = 0.0;
        v113.origin.y = 0.0;
        v113.size.width = v76;
        v113.size.height = v75;
        v86 = CGRectGetHeight(v113);
        v23 = *(v11 - 3);
        v24 = *(v11 - 2);
        v25 = *(v11 - 1);
        v26 = *v11;
        sub_1891EBD30();
        v27 = -CGRectGetMinX(v114);
        sub_1891EBD30();
        v28 = -CGRectGetMinY(v115);
        v116.origin.x = v23;
        v116.origin.y = v24;
        v116.size.width = v25;
        v116.size.height = v26;
        v117 = CGRectOffset(v116, v27, v28);
        v29 = v117.origin.x;
        v30 = v117.origin.y;
        v31 = v117.size.width;
        v32 = v117.size.height;
        v85 = CGRectGetMinX(v117);
        v118.origin.x = 0.0;
        v118.origin.y = 0.0;
        v118.size.width = v76;
        v118.size.height = v75;
        v84 = CGRectGetWidth(v118);
        v119.origin.x = v29;
        v119.origin.y = v30;
        v119.size.width = v31;
        v119.size.height = v32;
        v83 = CGRectGetMinY(v119);
        v120.origin.x = 0.0;
        v120.origin.y = 0.0;
        v120.size.width = v76;
        v120.size.height = v75;
        v33 = CGRectGetHeight(v120);
        v121.origin.x = v29;
        v121.origin.y = v30;
        v121.size.width = v31;
        v121.size.height = v32;
        v82 = CGRectGetWidth(v121);
        v122.origin.x = 0.0;
        v122.origin.y = 0.0;
        v122.size.width = v76;
        v122.size.height = v75;
        v34 = CGRectGetWidth(v122);
        v123.origin.x = v29;
        v123.origin.y = v30;
        v123.size.width = v31;
        v123.size.height = v32;
        v81 = CGRectGetHeight(v123);
        v124.origin.x = 0.0;
        v124.origin.y = 0.0;
        v124.size.width = v76;
        v124.size.height = v75;
        v35 = CGRectGetHeight(v124);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_188E4B8F8(0, *(v12 + 2) + 1, 1, v12);
        }

        v37 = *(v12 + 2);
        v36 = *(v12 + 3);
        if (v37 >= v36 >> 1)
        {
          v12 = sub_188E4B8F8((v36 > 1), v37 + 1, 1, v12);
        }

        v38 = MinX / v96;
        v39 = MinY / v90;
        v40 = v83 / v33;
        v41 = v82 / v34;
        *(v12 + 2) = v37 + 1;
        v42 = &v12[40 * v37];
        *(v42 + 4) = MinX / v96;
        *(v42 + 5) = MinY / v90;
        *(v42 + 6) = v85 / v84;
        *(v42 + 7) = v40;
        *(v42 + 8) = 0;
        v43 = v81 / v35;
        v125.origin.x = MinX / v96;
        v125.origin.y = MinY / v90;
        v125.size.width = v89 / v88;
        v125.size.height = v87 / v86;
        MaxX = CGRectGetMaxX(v125);
        v126.origin.x = v38;
        v126.origin.y = MinY / v90;
        v126.size.width = v89 / v88;
        v126.size.height = v87 / v86;
        v97 = CGRectGetMinY(v126);
        v127.origin.x = v85 / v84;
        v127.origin.y = v40;
        v127.size.width = v41;
        v127.size.height = v43;
        v94 = CGRectGetMaxX(v127);
        v128.origin.x = v85 / v84;
        v128.origin.y = v40;
        v128.size.width = v41;
        v128.size.height = v43;
        v44 = CGRectGetMinY(v128);
        v45 = v44;
        v47 = *(v12 + 2);
        v46 = *(v12 + 3);
        if (v47 >= v46 >> 1)
        {
          v91 = v44;
          v65 = sub_188E4B8F8((v46 > 1), v47 + 1, 1, v12);
          v45 = v91;
          v12 = v65;
        }

        *(v12 + 2) = v47 + 1;
        v48 = &v12[40 * v47];
        v48[4] = MaxX;
        v48[5] = v97;
        v48[6] = v94;
        v48[7] = v45;
        v48[8] = 0.0;
        v129.origin.x = v38;
        v129.origin.y = v39;
        v129.size.width = v89 / v88;
        v129.size.height = v87 / v86;
        v101 = CGRectGetMaxX(v129);
        v130.origin.x = v38;
        v130.origin.y = v39;
        v130.size.width = v89 / v88;
        v130.size.height = v87 / v86;
        MaxY = CGRectGetMaxY(v130);
        v131.origin.x = v85 / v84;
        v131.origin.y = v40;
        v131.size.width = v41;
        v131.size.height = v43;
        v95 = CGRectGetMaxX(v131);
        v132.origin.x = v85 / v84;
        v132.origin.y = v40;
        v132.size.width = v41;
        v132.size.height = v43;
        v49 = CGRectGetMaxY(v132);
        v50 = v49;
        v52 = *(v12 + 2);
        v51 = *(v12 + 3);
        if (v52 >= v51 >> 1)
        {
          v92 = v49;
          v66 = sub_188E4B8F8((v51 > 1), v52 + 1, 1, v12);
          v50 = v92;
          v12 = v66;
        }

        *(v12 + 2) = v52 + 1;
        v53 = &v12[40 * v52];
        v53[4] = v101;
        v53[5] = MaxY;
        v53[6] = v95;
        v53[7] = v50;
        v53[8] = 0.0;
        v133.origin.x = v38;
        v133.origin.y = v39;
        v133.size.width = v89 / v88;
        v133.size.height = v87 / v86;
        v102 = CGRectGetMinX(v133);
        v134.origin.x = v38;
        v134.origin.y = v39;
        v134.size.width = v89 / v88;
        v134.size.height = v87 / v86;
        v54 = CGRectGetMaxY(v134);
        v135.origin.x = v85 / v84;
        v135.origin.y = v40;
        v135.size.width = v41;
        v135.size.height = v43;
        v55 = CGRectGetMinX(v135);
        v136.origin.x = v85 / v84;
        v136.origin.y = v40;
        v136.size.width = v41;
        v136.size.height = v43;
        v56 = CGRectGetMaxY(v136);
        v58 = *(v12 + 2);
        v57 = *(v12 + 3);
        if (v58 >= v57 >> 1)
        {
          v67 = v56;
          v68 = sub_188E4B8F8((v57 > 1), v58 + 1, 1, v12);
          v56 = v67;
          v12 = v68;
        }

        *(v12 + 2) = v58 + 1;
        v59 = &v12[40 * v58];
        *(v59 + 4) = v102;
        *(v59 + 5) = v54;
        *(v59 + 6) = v55;
        *(v59 + 7) = v56;
        *(v59 + 8) = 0;
        if (v8 == 0x100000000)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_188E4B7F4(0, *(v10 + 2) + 1, 1, v10);
        }

        v61 = *(v10 + 2);
        v60 = *(v10 + 3);
        if (v61 >= v60 >> 1)
        {
          v10 = sub_188E4B7F4((v60 > 1), v61 + 1, 1, v10);
        }

        *(v10 + 2) = v61 + 1;
        v62 = &v10[32 * v61];
        *(v62 + 8) = v8;
        *(v62 + 36) = vorr_s8(vdup_n_s32(v8), 0x200000001);
        *(v62 + 11) = v8 + 3;
        *(v62 + 3) = vdupq_n_s32(0x447A0000u);
        sub_1891EBD30();
        v63 = -CGRectGetMinX(v137);
        sub_1891EBD30();
        v64 = -CGRectGetMinY(v138);
        v139.origin.x = v80;
        v139.size.width = v78;
        v139.origin.y = v79;
        v139.size.height = rect;
        CGRectOffset(v139, v63, v64);
        v8 += 4;
        v9 += 4;
        v11 += 4;
        if (!--v7)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v69 = *(v12 + 2);
  v70 = *(v10 + 2);
  sub_18A4A7288();
  v71 = objc_allocWithZone(MEMORY[0x1E69793D8]);
  v72 = sub_18A4A7258();

  v73 = [v71 initWithVertexCount:v69 vertices:v12 + 32 faceCount:v70 faces:v10 + 32 depthNormalization:v72];

  return v73;
}

uint64_t sub_1891EC60C()
{
  sub_188A55B8C(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_5UIKit20TextLineWaveAnimatorC14EasingFunctionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1891EC6CC(void *a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  *(v2 + 48) = xmmword_18A674670;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = a1;
  v6 = [a2 layer];
  v7 = [v5 target];
  v8 = [v7 container];

  v9 = [v8 traitCollection];
  [v9 displayScale];
  v11 = v10;

  [v6 setRasterizationScale_];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64B710;
  v14 = *(v2 + 40);
  *(v13 + 32) = v14;
  sub_188A34624(0, &qword_1ED48F690, off_1E70E9410);
  v15 = v14;
  v16 = sub_18A4A7518();

  v17 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_1891EC928;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188A4A8F0;
  v20[3] = &block_descriptor_149;
  v18 = _Block_copy(v20);

  [v12 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v18);

  return v2;
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.init(id:callbackStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_18A4A29D8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_1891EC9E4()
{
  v0 = type metadata accessor for UILayoutComponentResponse(0);
  __swift_allocate_value_buffer(v0, qword_1EA940010);
  v1 = __swift_project_value_buffer(v0, qword_1EA940010);
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  (*(*(updated - 8) + 56))(v1, 1, 1, updated);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static UILayoutComponentResponse.updateOutputModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA932020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UILayoutComponentResponse(0);
  v3 = __swift_project_value_buffer(v2, qword_1EA940010);

  return sub_189081E2C(v3, a1);
}

uint64_t static UILayoutComponentResponse.updateOutputModel(callbackID:style:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  v7 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v10 = sub_18A4A29D8();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v9[*(updated + 20)] = a2;
  sub_1891ECC60(v9, a3);
  (*(v7 + 56))(a3, 0, 1, updated);
  type metadata accessor for UILayoutComponentResponse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1891ECC60(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A29D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.id.setter(uint64_t a1)
{
  v3 = sub_18A4A29D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.callbackStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.callbackStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static UILayoutComponentResponse.UpdateOutputModelCallbackInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0())
  {
    updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
    v5 = *(a1 + *(updated + 20)) ^ *(a2 + *(updated + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.hash(into:)(uint64_t a1)
{
  sub_18A4A29D8();
  sub_1891ED378(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  return MEMORY[0x18CFE37E0](*(v1 + *(updated + 20)));
}

uint64_t UILayoutComponentResponse.UpdateOutputModelCallbackInfo.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_1891ED378(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  MEMORY[0x18CFE37E0](*(v0 + *(updated + 20)));
  return sub_18A4A88E8();
}

uint64_t sub_1891ED058@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A29D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1891ED0C0(uint64_t a1)
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_1891ED378(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  MEMORY[0x18CFE37E0](*(v1 + *(a1 + 20)));
  return sub_18A4A88E8();
}

uint64_t sub_1891ED164(uint64_t a1, uint64_t a2)
{
  sub_18A4A29D8();
  sub_1891ED378(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  return MEMORY[0x18CFE37E0](*(v2 + *(a2 + 20)));
}

uint64_t sub_1891ED1F0(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_1891ED378(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  MEMORY[0x18CFE37E0](*(v2 + *(a2 + 20)));
  return sub_18A4A88E8();
}

unint64_t sub_1891ED294()
{
  result = qword_1EA940028;
  if (!qword_1EA940028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940028);
  }

  return result;
}

uint64_t sub_1891ED378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1891ED3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1891ED418(uint64_t a1)
{
  sub_1891ED4AC(319);
  if (v1 <= 0x3F)
  {
    sub_18A4A29D8();
    if (v2 <= 0x3F)
    {
      sub_1891ED504();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1891ED4AC(uint64_t a1)
{
  if (!qword_1EA940048)
  {
    type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(255);
    v1 = sub_18A4A7D38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA940048);
    }
  }
}

ValueMetadata *sub_1891ED504()
{
  result = qword_1EA940050;
  if (!qword_1EA940050)
  {
    result = &type metadata for UITransitionEntity;
    atomic_store(&type metadata for UITransitionEntity, &qword_1EA940050);
  }

  return result;
}

uint64_t sub_1891ED56C(uint64_t a1)
{
  result = sub_18A4A29D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1891ED64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a3;
  v7 = sub_18A4A2588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E80, &qword_18A65CE10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88, &qword_18A65CE18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  sub_188C85D28(a1, v28);
  if (v29)
  {
    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v18 = v26;
    (*(v8 + 16))(v10, a5, v7);
    sub_188DFA980(&qword_1EA92FAC0, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_18A4A78F8();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      v19 = &qword_1EA939E80;
      v20 = &qword_18A65CE10;
      v21 = v13;
    }

    else
    {
      sub_18900C434(v13, v17);
      [v18 pointSize];
      v23 = v22;
      sub_18900C4A4();
      v24 = sub_18A4A25E8();
      v26 = v23;
      v27 = 0;
      sub_18A4A39D8();
      sub_188DFA980(&qword_1EA92FA90, MEMORY[0x1E69DBB30], MEMORY[0x1E69DBB28]);
      sub_18A4A26D8();
      v24(v28, 0);

      v19 = &qword_1EA939E88;
      v20 = &qword_18A65CE18;
      v21 = v17;
    }
  }

  else
  {
    v19 = &qword_1EA934050;
    v20 = qword_18A64CA10;
    v21 = v28;
  }

  sub_188A3F5FC(v21, v19, v20);
}

char *sub_1891ED9E0(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_animationKey];
  *v11 = 0xD000000000000010;
  *(v11 + 1) = 0x800000018A6B1330;
  *&v5[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration] = a1;
  v12 = objc_allocWithZone(MEMORY[0x1E6979380]);
  v13 = a1;
  v14 = [v12 init];
  *&v5[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer] = v14;
  type metadata accessor for _UIGradientCarouselView();
  v19.receiver = v5;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a2, a3, a4, a5);
  v17 = [v16 layer];
  [v17 addSublayer_];

  [v16 setClipsToBounds_];
  sub_1891EE938();
  sub_1891EDC60();

  return v16;
}

void sub_1891EDC60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration;
  v3 = [*(v0 + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration) colorPalette];
  v4 = sub_1891EE00C();

  v5 = OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer);
  v7 = [v4 colors];
  sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  v8 = sub_18A4A7548();

  if (v8 >> 62)
  {
    v9 = sub_18A4A7F68();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v34 = MEMORY[0x1E69E7CC0];
  sub_188B221A4(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return;
  }

  v29 = v6;
  v30 = v2;
  v31 = v4;
  v10 = 0;
  v11 = v34;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_188E48DA0(v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 CGColor];
    type metadata accessor for CGColor(0);
    v33 = v15;

    *&v32 = v14;
    v34 = v11;
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_188B221A4((v16 > 1), v17 + 1, 1);
      v11 = v34;
    }

    ++v10;
    *(v11 + 16) = v17 + 1;
    sub_188A55538(&v32, (v11 + 32 * v17 + 32));
  }

  while (v9 != v10);

  v2 = v30;
  v4 = v31;
  v6 = v29;
LABEL_14:
  v18 = sub_18A4A7518();

  [v6 setColors_];

  v19 = *(v1 + v5);
  v20 = [v4 locations];
  [v19 setLocations_];

  [*(v1 + v5) setType_];
  [*(v1 + v5) setStartPoint_];
  [*(v1 + v5) setEndPoint_];
  sub_1891EE638();
  v21 = *(v1 + v5);
  v22 = sub_18A4A7258();
  v23 = [v21 animationForKey_];

  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = v24 != 0;
    if (v24)
    {
      [v24 duration];
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }
  }

  else
  {
    v25 = 0;
    v27 = 0.0;
  }

  [*(v1 + v2) duration];
  if (!v25 || v27 != v28)
  {
    sub_1891EE938();
  }
}

id sub_1891EE00C()
{
  swift_getObjectType();
  v0 = [v30 colors];
  sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  v1 = sub_18A4A7548();

  if (v1 >> 62)
  {
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
LABEL_45:

    return v30;
  }

  v3 = [v30 colors];
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:

    v3 = 0;
    goto LABEL_13;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_58;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  for (i = *(v4 + 32); ; i = sub_188E48DA0(0, v4))
  {
    v3 = i;

LABEL_13:
    v7 = [v30 colors];
    v4 = sub_18A4A7548();

    if (v4 >> 62)
    {
      v8 = sub_18A4A7F68();
      if (!v8)
      {
LABEL_27:

        if (!v3)
        {
          goto LABEL_45;
        }

LABEL_28:
        v11 = v3;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    v9 = __OFSUB__(v8, 1);
    v5 = v8 - 1;
    if (v9)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v10 = sub_188E48DA0(v5, v4);
      goto LABEL_20;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

    v10 = *(v4 + 8 * v5 + 32);
LABEL_20:
    v11 = v10;

    if (!v3)
    {
      if (!v11)
      {
        goto LABEL_45;
      }

      goto LABEL_29;
    }

    if (!v11)
    {
      goto LABEL_28;
    }

    v12 = sub_18A4A7C88();

    if (v12)
    {
      goto LABEL_45;
    }

LABEL_30:
    v13 = [v30 colors];
    v4 = sub_18A4A7548();

    if ((v4 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v4 + 32);
      goto LABEL_33;
    }

    __break(1u);
LABEL_58:
    ;
  }

  sub_188E48DA0(0, v4);
LABEL_33:
  MEMORY[0x18CFE2450]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  sub_1891EEC78();
  v15 = [v30 locations];
  if (!v15)
  {
    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = sub_18A4A7518();
    v25 = [v23 initWithColors_];

    return v25;
  }

  v16 = v15;
  sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v7 = sub_18A4A7548();

  if (!(v7 >> 62))
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_38;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    sub_18A4A7588();
LABEL_52:
    sub_18A4A75F8();
    v26 = [v30 colorSpaceName];
    if (!v26)
    {
      sub_18A4A7288();
      v26 = sub_18A4A7258();
    }

    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v28 = sub_18A4A7518();
    v29 = sub_18A4A7518();

    v25 = [v27 initWithColors:v28 locations:v29 colorSpaceName:v26];

    return v25;
  }

LABEL_64:
  v17 = sub_18A4A7F68();
  if (__OFADD__(v17, 1))
  {
    goto LABEL_66;
  }

LABEL_38:
  if (!v17)
  {

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_51;
  }

  v31 = MEMORY[0x1E69E7CC0];

  result = sub_18A4A8208();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v20 = sub_188E48F84(v19, v7);
      }

      else
      {
        v20 = *(v7 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      [v20 doubleValue];
      sub_18A4A2D28();

      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
    }

    while (v17 != v19);
    swift_bridgeObjectRelease_n();
    v22 = v31;
LABEL_51:
    v32 = v22;
    sub_18A4A7C48();
    MEMORY[0x18CFE2450]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_67;
    }

    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void sub_1891EE638()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer;
  [*&v0[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer] bounds];
  Width = CGRectGetWidth(v35);
  [*&v0[v1] bounds];
  Height = CGRectGetHeight(v36);
  if (Width > Height)
  {
    Height = Width;
  }

  v4 = Height * 0.5;
  if (Height * 0.5 > 0.0)
  {
    v5 = [v0 traitCollection];
    v6 = [v5 layoutDirection];

    v7 = OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration;
    v8 = (v6 != 1) ^ [*&v0[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration] reverse];
    v9 = [*&v0[v7] reverse];
    v10 = [*&v0[v7] direction];
    if (v10 <= 1)
    {
      if (!v10)
      {
        [v0 bounds];
        MidX = CGRectGetMidX(v40);
        v21 = sqrt(v4 * v4 - MidX * MidX);
        [v0 bounds];
        if (v8)
        {
          v26 = v21 + CGRectGetMinY(*&v22);
        }

        else
        {
          v26 = CGRectGetMaxY(*&v22) - v21;
        }

        v33 = *&v0[v1];
        [v0 bounds];
        [v33 setPosition_];
        goto LABEL_28;
      }

      if (v10 == 1)
      {
        [v0 bounds];
        MidY = CGRectGetMidY(v37);
        v12 = sqrt(v4 * v4 - MidY * MidY);
        [v0 bounds];
        if (v9)
        {
          v17 = v12 + CGRectGetMinX(*&v13);
        }

        else
        {
          v17 = CGRectGetMaxX(*&v13) - v12;
        }

        v33 = *&v0[v1];
        goto LABEL_25;
      }

LABEL_13:
      v33 = *&v0[v1];
      [v0 bounds];
      v17 = CGRectGetMidX(v39);
LABEL_25:
      [v0 bounds];
      [v33 setPosition_];
LABEL_28:

      return;
    }

    if (v10 == 2)
    {
      v18 = v4 / 1.41421356;
      [v0 bounds];
      v19 = v4 / 1.41421356 + CGRectGetMinX(v41);
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_13;
      }

      v18 = v4 / 1.41421356;
      [v0 bounds];
      v19 = CGRectGetMaxX(v38) - v4 / 1.41421356;
    }

    [v0 bounds];
    if (v8)
    {
      v31 = v18 + CGRectGetMinY(*&v27);
    }

    else
    {
      v31 = CGRectGetMaxY(*&v27) - v18;
    }

    v32 = *&v0[v1];

    [v32 setPosition_];
  }
}

void sub_1891EE938()
{
  v1 = sub_18A4A7258();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = *MEMORY[0x1E697A078];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 functionWithName_];
  [v5 setValueFunction_];

  v7 = sub_18A4A77F8();
  [v5 setFromValue_];

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v5 setToValue_];

  v9 = *(v0 + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_configuration);
  v10 = v5;
  [v9 duration];
  [v10 setDuration_];
  LODWORD(v11) = 2139095040;
  [v10 setRepeatCount_];
  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];
  sub_18A4A79D8();
  [v10 setPreferredFrameRateRange_];

  v12 = *(v0 + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer);
  v13 = sub_18A4A7258();
  [v12 addAnimation:v10 forKey:v13];
}

id sub_1891EEBC0(uint64_t a1)
{
  v2 = type metadata accessor for _UIGradientCarouselView();
  v5.receiver = v1;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc, v2);
}

void sub_1891EEC78()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_188E48DA0(v4, v1);
          v10 = sub_188E48DA0(v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_188B8AD14(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_188B8AD14(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!sub_18A4A7F68())
      {
        return;
      }

      v2 = sub_18A4A7F68();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

id sub_1891EEE28(void *a1, __int128 *a2, void *a3, char a4)
{
  v7 = a2[1];
  v67 = *a2;
  v68 = v7;
  *v69 = a2[2];
  *&v69[9] = *(a2 + 41);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  swift_unknownObjectWeakInit();
  BYTE8(v61[0]) = 0;
  (*(v9 + 8))(v63, v61, v8, v9);
  sub_189065604(v61);
  v10 = *&v63[0];
  v11 = BYTE10(v63[0]);
  v12 = WORD4(v63[0]) | (BYTE10(v63[0]) << 16);
  v13 = [objc_allocWithZone(UITargetedPreview) initWithView_];
  v14 = v13;
  v15 = (v11 >> 4) & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v18 = v13;
      v17 = 0x800000;
      goto LABEL_7;
    }

LABEL_3:
    v16 = v13;
    v17 = 0x400000;
LABEL_7:
    v52 = v17;
LABEL_8:
    v51 = v14;
    goto LABEL_9;
  }

  if (v15 != 2)
  {
    if (__PAIR128__(3145728, 1) < __PAIR128__(v12 << 40 >> 40, v10))
    {
      if ((v12 & 0xFFFFFF) == 0x300000 && v10 == 2)
      {
        goto LABEL_3;
      }
    }

    else if (v10 | v12 & 0xFFFFFF ^ 0x300000 && (a4 & 1) != 0)
    {
      v45 = v13;
      v52 = 0;
      goto LABEL_8;
    }

    sub_1890655E0(v10, v12);

    sub_1891EF464(&v67);
    v43 = 0;
    goto LABEL_20;
  }

  v52 = v12 & 0xFFCFFFFF;
  sub_1890640F4(v10, v12);
  v51 = v10;
LABEL_9:
  v48 = v12;
  v49 = v10;
  v19 = v69[24];
  v50 = a3;
  v47 = v14;
  if (v69[24] == 255)
  {
    v22 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v23 = 0;
    v24 = 0;
    v28 = -1;
  }

  else
  {
    v54[2] = v67;
    v54[3] = v68;
    v54[4] = *v69;
    v55 = *&v69[16];
    v56 = v69[24];
    v20 = a3;
    v21 = [v20 layer];
    sub_188E83750(v53);

    UIShape.resolve(in:)(v53, v57);
    v61[4] = v53[4];
    v61[5] = v53[5];
    v62[0] = v54[0];
    *(v62 + 9) = *(v54 + 9);
    v61[0] = v53[0];
    v61[1] = v53[1];
    v61[2] = v53[2];
    v61[3] = v53[3];
    sub_188E81DCC(v61);
    v64 = v58;
    v65 = v59;
    *v66 = v60[0];
    *&v66[9] = *(v60 + 9);
    v63[0] = v57[0];
    v63[1] = v57[1];
    v63[2] = v57[2];
    v63[3] = v57[3];
    v22 = v58;
    v23 = *&v60[0];
    if (BYTE8(v60[1]))
    {
      v24 = 1;
      sub_1891EF458(v64, *(&v58 + 1), v59, *(&v59 + 1), *v66, *&v66[8], *&v66[16], 1);
      sub_1891EF464(&v67);
      sub_188E81D2C(v63);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v23 = 0;
      v28 = 0;
    }

    else
    {
      v29 = *(&v64 + 1);
      v30 = v65;
      v31 = [v14 target];
      v32 = [v31 container];

      [v20 convertRect:v32 toCoordinateSpace:{*&v22, v29, v30}];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_1891EF464(&v67);
      sub_188E81D2C(v63);
      v24 = 0;
      v22 = v34;
      v25 = v36;
      v26 = v38;
      v27 = v40;
      v28 = 1;
    }
  }

  *&v63[0] = v51;
  WORD4(v63[0]) = v52;
  BYTE10(v63[0]) = BYTE2(v52);
  sub_1891EF444(v22, v25, v26, v27, v23, v28);
  isa = UIPointerEffect._bridgeToObjectiveC()().super.isa;
  if (v19 == 255)
  {
    v42 = 0;
  }

  else if (v24)
  {
    v42 = [objc_opt_self() shapeWithPath_];
    sub_188FCF97C(v22, v25, v26, v27, v23, v28);
  }

  else
  {
    v42 = [objc_opt_self() shapeWithRoundedRect:*&v22 cornerRadius:{*&v25, *&v26, *&v27, *&v23}];
  }

  v43 = [swift_getObjCClassFromMetadata() styleWithEffect:isa shape:v42];

  sub_1890655E0(v49, v48);
  sub_188FCF97C(v22, v25, v26, v27, v23, v28);

LABEL_20:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v43;
}

id sub_1891EF444(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_188FCFD04(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_1891EF458(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return result;
  }

  return result;
}

uint64_t sub_1891EF464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934C40, &qword_18A64DFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1891EF4CC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = _UISidebarGetPlatformMetrics(v3);
  [(_UISidebarPlatformMetrics *)v4 fallbackCornerRadius];
  v6 = v5;
  v7 = [v1 _shouldReverseLayoutDirection];
  if ([(_UITabOutlineView *)v1 style])
  {
    [(_UISidebarPlatformMetrics *)v4 fallbackCornerRadius];
    *&v18 = v8;
    BYTE8(v18) = 1;
    *&v19 = v8;
    BYTE8(v19) = 1;
    *&v20 = v8;
    BYTE8(v20) = 1;
    *&v21 = v8;
    BYTE8(v21) = 1;
  }

  else
  {
    if (v7)
    {
      *&v18 = 0;
      BYTE8(v18) = -1;
      *&v19 = v6;
      v9 = 1;
      BYTE8(v19) = 1;
      *&v20 = 0;
      BYTE8(v20) = -1;
      *&v21 = v6;
    }

    else
    {
      *&v18 = v6;
      BYTE8(v18) = 1;
      *&v19 = 0;
      v9 = -1;
      BYTE8(v19) = -1;
      *&v20 = v6;
      BYTE8(v20) = 1;
      *&v21 = 0;
    }

    BYTE8(v21) = v9;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v15 = v20;
  v16 = v21;
  v17 = MEMORY[0x1E69E7CC0];
  v13 = v18;
  v14 = v19;
  sub_188E41F80(&v18, v12);
  v10 = [v1 contentView];
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  sub_188E41F80(&v18, v12);
  UIView.cornerConfiguration.setter(&v13);

  v11 = [v1 backgroundView];
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  UIView.cornerConfiguration.setter(&v13);
}

uint64_t UIWindowSceneStandardPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_1891EF7D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() standardPlacement];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940080, &qword_18A674950);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

unint64_t sub_1891EF840(uint64_t a1)
{
  result = sub_1891EF868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891EF868()
{
  result = qword_1EA940088;
  if (!qword_1EA940088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940088);
  }

  return result;
}

unint64_t sub_1891EF8C0()
{
  result = qword_1EA940090;
  if (!qword_1EA940090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940090);
  }

  return result;
}

unint64_t sub_1891EF918()
{
  result = qword_1EA940098;
  if (!qword_1EA940098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940098);
  }

  return result;
}

void sub_1891EFA70(uint64_t a1)
{
  if (a1 == 4)
  {
    v5 = [v1 sidebarMetrics];
    [v5 inspectorWidthMetrics];
  }

  else if (!a1)
  {
    v2 = [v1 splitViewController];
    if (v2)
    {
      v3 = v2;
      if ([v2 _usesExtraWidePrimaryColumn])
      {
        v4 = [v1 sidebarMetrics];
        [v4 wideWidthMetrics];

        return;
      }
    }

    [v1 sidebarWidthMetrics];
  }
}

double sub_1891EFF5C()
{
  v1 = [v0 splitViewController];
  if (v1 && (v2 = v1, v3 = [v1 style], v2, v3 == 2))
  {
    v4 = &selRef_narrowWidthMetrics;
  }

  else
  {
    v4 = &selRef_wideWidthMetrics;
  }

  v5 = [v0 sidebarMetrics];
  [v5 *v4];
  v7 = v6;

  return v7;
}

double *sub_1891F0054()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _lastNotifiedTraitCollection];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = objc_opt_self();
  result = +[(UITraitCollection *)v4];
  if (result)
  {
    v3 = result;
LABEL_5:
    v6 = [v3 userInterfaceIdiom];

    return v6;
  }

  __break(1u);
  return result;
}

_UISplitViewControllerAdaptiveImplStyle __swiftcall _UISplitViewControllerAdaptiveImplStyle.init(splitViewController:)(UISplitViewController *splitViewController)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSplitViewController_];

  v5 = v2;
  result.super._splitViewController = v4;
  result.super.super.isa = v5;
  result.super._showsSeparators = v3;
  return result;
}

id _UISplitViewControllerAdaptiveImplStyle.init(splitViewController:)(void *a1)
{
  v4.super_class = _UISplitViewControllerAdaptiveImplStyle;
  v2 = objc_msgSendSuper2(&v4, sel_initWithSplitViewController_, a1);

  return v2;
}

_UISplitViewControllerAdaptiveImplStyle __swiftcall _UISplitViewControllerAdaptiveImplStyle.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._splitViewController = v3;
  result.super.super.isa = v1;
  result.super._showsSeparators = v2;
  return result;
}

id _UISplitViewControllerAdaptiveImplStyle.init(instance:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v2 initWithInstance_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

void *_UISplitViewControllerAdaptiveImplStyle.init(instance:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_18A4A86A8();
  v6.receiver = v1;
  v6.super_class = _UISplitViewControllerAdaptiveImplStyle;
  v4 = objc_msgSendSuper2(&v6, sel_initWithInstance_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}