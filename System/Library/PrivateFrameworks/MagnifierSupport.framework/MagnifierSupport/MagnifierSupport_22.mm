id sub_257DC5778(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for LiveCameraLayer(uint64_t a1)
{
  result = qword_27F8F9578;
  if (!qword_27F8F9578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257DC59CC(uint64_t a1, __n128 a2)
{
  sub_257DC5B08(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257DC5B08(uint64_t a1, __n128 a2)
{
  if (!qword_27F8F9588)
  {
    type metadata accessor for CapturedImage(255);
    v2 = sub_257ED00C0();
    if (!v3)
    {
      atomic_store(v2, &qword_27F8F9588);
    }
  }
}

uint64_t sub_257DC5B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590, &qword_257EE9A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DC5BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590, &qword_257EE9A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257DC5C44(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CapturedImage(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257DC5CA8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for CapturedImage(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

void sub_257DC5D24(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257DC5DA4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

double sub_257DC5E20@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_257DC5EA0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

void sub_257DC5F1C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257DC5F9C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

uint64_t sub_257DC6058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257DC60A0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
  v3 = *MEMORY[0x277CBF2C0];
  v4 = *(MEMORY[0x277CBF2C0] + 8);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *(MEMORY[0x277CBF2C0] + 24);
  v7 = *(MEMORY[0x277CBF2C0] + 32);
  v8 = *(MEMORY[0x277CBF2C0] + 40);
  *v2 = *MEMORY[0x277CBF2C0];
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v9 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *v9 = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v12 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  *(v1 + v20) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = 0.0;
  v38.size.height = 0.0;
  *(v1 + v22) = CGPathCreateWithRect(v38, 0);
  v23 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize);
  *v23 = 0;
  v23[1] = 0;
  v24 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame);
  *v25 = 0u;
  v25[1] = 0u;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_usingPortalLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_subscribers) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentDragHandle) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = -1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
  v26 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelectionStartPosition);
  *v27 = 0;
  v27[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelection) = 0;
  v28 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_257EDBE40;
  v30 = type metadata accessor for DragHandleLayer();
  *(v29 + 32) = [objc_allocWithZone(v30) init];
  *(v29 + 40) = [objc_allocWithZone(v30) init];
  *(v29 + 48) = [objc_allocWithZone(v30) init];
  v31 = [objc_allocWithZone(v30) init];
  *(v1 + v28) = v29;
  *(v29 + 56) = v31;
  v32 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  *(v32 + 8) = xmmword_257EDC820;
  *v32 = &unk_286905D00;
  sub_257C38808(v31, v33);
  *v32 = v34;

  v35 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
  v36 = type metadata accessor for CapturedImage(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  *(v1 + v37) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DC650C(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 3u)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 - 4 >= 2 && a1 == 6)
  {
LABEL_6:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_257ECF500();
    return v8;
  }

  return result;
}

void sub_257DC6678(uint64_t a1)
{
  if (a1 <= 3u)
  {
    if (a1 < 2u)
    {
      return;
    }

    if (a1 != 2)
    {
      v5 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_49;
      v6 = _Block_copy(v9);
      v7 = AXLocStringForDeviceVariant();
      _Block_release(v6);

      if (v7)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_12:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_257ECF4C0();
    v4 = sub_257ECF4C0();
    v8 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_257ECF500();
    return;
  }

  if (a1 > 5u || a1 == 4 || AXDeviceSupportsBackTap())
  {
    goto LABEL_12;
  }
}

void sub_257DC6B10()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

void sub_257DC6CB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v20[0] = v5[11];
        v20[1] = v6;
        v20[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
        sub_257ECFD50();

        if (*(v19[0] + 16))
        {
          v14 = sub_257C03F6C(v3, v2);
          v16 = v15;

          if (v16)
          {
            v17 = (*(v19[0] + 56) + 296 * v14);
            memcpy(v18, v17, sizeof(v18));
            memmove(v19, v17, 0x128uLL);
            CGSizeMake();
            sub_257C09C58(v18, v20);

            memcpy(v20, v19, sizeof(v20));
LABEL_16:
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), v20, 0x128uLL);
            sub_257BE4084(v19, &unk_27F8F68B0, &unk_257EE22E0);
            return;
          }
        }

        else
        {
        }

        sub_257C10998(v20);
        goto LABEL_16;
      }
    }
  }
}

void sub_257DC6F8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView];
  [v3 setDataSource_];
  [v3 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for UIStepperLengthCell(0);
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_257ECF4C0();
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v9];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_257EB6FD8(v12, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  sub_257DC6CB0();
  v14 = *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController];
  [v14 setSupportsAlpha_];
  v15 = &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
  memcpy(__dst, &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], sizeof(__dst));
  if (sub_257C108C4(__dst) != 1)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v15[17] green:v15[18] blue:v15[19] alpha:1.0];
    [v14 setSelectedColor_];
  }

  [v14 setDelegate_];
  v17 = *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController];
  v20[3] = ObjectType;
  v20[4] = &off_286910FD0;
  v20[0] = v1;
  v18 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate;
  swift_beginAccess();
  v19 = v1;
  sub_257DCB580(v20, v17 + v18);
  swift_endAccess();
}

id sub_257DC7334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286905D80[v7 + 32];
    if (v11 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v27 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v8 + 16) + 1, 1);
        v8 = v27;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF2744((v9 > 1), v10 + 1, 1);
        v8 = v27;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController;
  type metadata accessor for ActivityDoorAttributeCustomizationViewController();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_magnifierModelsManger;
  *&v4[v19] = [objc_opt_self() shared];
  if (a2)
  {
    v20 = sub_257ECF4C0();
  }

  else
  {
    v20 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v20, a3, a1);

  return v21;
}

id sub_257DC7680(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286905DA8[v5 + 32];
    if (v9 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v22 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v6 + 16) + 1, 1);
        v6 = v22;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF2744((v7 > 1), v8 + 1, 1);
        v6 = v22;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v15 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController;
  type metadata accessor for ActivityDoorAttributeCustomizationViewController();
  *&v2[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_magnifierModelsManger;
  *&v2[v17] = [objc_opt_self() shared];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);

  if (v18)
  {
  }

  return v18;
}

id sub_257DC7B54(void *a1, UIImage *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v213 - v12;
  v14 = sub_257ECCEA0();
  v15 = sub_257CA9794(v14);
  v218 = v7;
  if (v15 != 8)
  {
    if (v15 - 6 < 2)
    {
      if (sub_257ECCE60() != 1)
      {
        v23 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v22 = sub_257ECF4C0();
        v19 = [v23 initWithStyle:1 reuseIdentifier:v22];
        goto LABEL_11;
      }
    }

    else if (v15 && v15 != 2)
    {
      goto LABEL_2;
    }

    v20 = v2;
    v21 = sub_257ECF4C0();
    v22 = sub_257ECCE30();
    v19 = [a1 dequeueReusableCellWithIdentifier:v21 forIndexPath:v22];

    v3 = v20;
LABEL_11:

    sub_257DC6CB0();
    goto LABEL_12;
  }

LABEL_2:
  v16 = v2;
  v17 = sub_257ECF4C0();
  v18 = sub_257ECCE30();
  v19 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

  v3 = v16;
  sub_257DC6CB0();
  if (v15 == 8)
  {
    return v19;
  }

LABEL_12:
  if (v15 > 3u)
  {
    if (v15 <= 5u)
    {
      if (v15 == 4)
      {
        v218 = v3;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v215 = objc_opt_self();
        v216 = ObjCClassFromMetadata;
        v39 = [v215 bundleForClass_];
        v217 = "detectionSection.name.backTap";
        v40 = sub_257ECF4C0();
        v41 = sub_257ECF4C0();
        v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

        v43 = v42;
        v44 = v42;
        if (!v42)
        {
          sub_257ECF500();
          v44 = sub_257ECF4C0();

          sub_257ECF500();
          v43 = sub_257ECF4C0();
        }

        v45 = v42;
        v46 = [v19 textLabel];
        if (v46)
        {
          v47 = v46;
          [v46 setText_];
        }

        v48 = [v19 textLabel];
        if (v48)
        {
          v49 = v48;
          [v48 setNumberOfLines_];
        }

        v50 = [v19 textLabel];
        if (v50)
        {
          v51 = v50;
          [v50 setLineBreakMode_];
        }

        [v19 setAccessoryType_];
        [v19 setShowsReorderControl_];
        v52 = objc_opt_self();
        v53 = *MEMORY[0x277D76918];
        v54 = [v52 preferredFontForTextStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0, &qword_257EE4000);
        v55 = swift_allocObject();
        v56 = MEMORY[0x277D740A8];
        *(v55 + 16) = xmmword_257ED6D30;
        v57 = *v56;
        *(v55 + 32) = v57;
        *(v55 + 40) = v54;
        v58 = v57;
        v59 = v54;
        v60 = sub_257BE8D30(v55);
        swift_setDeallocating();
        sub_257BE4084(v55 + 32, &unk_27F8F58D0, &qword_257EDAE80);
        swift_deallocClassInstance();
        sub_257DF2814(v60);

        _s3__C3KeyVMa_0(0);
        sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
        v61 = sub_257ECF3C0();

        [v43 sizeWithAttributes_];

        v62 = [v52 preferredFontForTextStyle_];
        [v62 lineHeight];
        v64 = v63;

        v65 = &v218[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
        memcpy(v225, &v218[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
        if (sub_257C108C4(v225) == 1)
        {

          return v19;
        }

        v218 = v59;
        v108 = v65[17];
        v109 = v65[18];
        v110 = v65[19];
        v111 = sub_257ECF4C0();
        v112 = objc_opt_self();
        v113 = [v112 systemImageNamed_];

        if (v113)
        {
          v114 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v108 green:v109 blue:v110 alpha:1.0];
          v115 = [v113 imageWithTintColor_];
        }

        else
        {
          v115 = 0;
        }

        v121 = sub_257ECF4C0();
        v122 = [v112 systemImageNamed_];

        v123 = 0.0;
        if (v122)
        {
          v124 = [objc_opt_self() systemGrayColor];
          v125 = [v122 imageWithTintColor_];

          v126 = [v52 preferredFontForTextStyle_];
          v127 = [objc_opt_self() configurationWithFont_];

          v128 = [v125 imageWithSymbolConfiguration_];
          if (v128)
          {
            [v128 size];
            v123 = v129;
          }
        }

        else
        {
          v128 = 0;
        }

        v226.width = v64 + v123 + 5.0;
        v226.height = v64;
        UIGraphicsBeginImageContextWithOptions(v226, 0, 0.0);
        v130 = [objc_opt_self() sharedApplication];
        v131 = [v130 userInterfaceLayoutDirection];

        if (v131)
        {
          if (v128)
          {
            v132 = v128;
            [v132 size];
            v134 = (v64 - v133) * 0.5;
            [v132 size];
            v136 = v135;
            [v132 size];
            v137 = 0.0;
            [v132 drawInRect_];

            if (!v115)
            {
              goto LABEL_110;
            }

            v139 = v115;
            [v132 size];
            v141 = v140 + 5.0;
          }

          else
          {
            if (!v115)
            {
              goto LABEL_110;
            }

            v139 = v115;
            v137 = 0.0;
            v141 = 5.0;
          }

          v145 = v64;
        }

        else
        {
          if (v115)
          {
            [v115 drawInRect_];
          }

          if (!v128)
          {
LABEL_110:
            v213 = v128;
            v214 = v115;
            a2 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
            [v19 setAccessoryView_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
            v3 = swift_allocObject();
            *(v3 + 1) = xmmword_257ED9BD0;
            v152 = [v215 bundleForClass_];
            v153 = sub_257ECF4C0();
            v154 = sub_257ECF4C0();
            v155 = [v152 localizedStringForKey:v153 value:0 table:v154];

            v156 = sub_257ECF500();
            v158 = v157;

            *(v3 + 7) = MEMORY[0x277D837D0];
            v6 = sub_257BFB13C();
            *(v3 + 8) = v6;
            *(v3 + 4) = v156;
            *(v3 + 5) = v158;
            if (qword_281544FE0 == -1)
            {
LABEL_111:
              v159 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
              swift_beginAccess();
              v160 = *(v159 + 8);
              v161 = *(v159 + 32);
              v162 = *(v159 + 16);
              *&v219[0] = *v159;
              *(&v219[0] + 1) = v160;
              v219[1] = v162;
              *&v219[2] = v161;
              v163 = qword_2815447E0;

              if (v163 != -1)
              {
                v164 = swift_once();
              }

              MEMORY[0x28223BE20](v164, v165, v166, v167, v168);
              *(&v213 - 2) = v219;
              sub_257ECFD50();

              v169 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v222 green:v223 blue:v224 alpha:1.0];
              v170 = [v169 _accessibilityNameWithLuma];

              v171 = sub_257ECF500();
              v173 = v172;

              *(v3 + 12) = MEMORY[0x277D837D0];
              *(v3 + 13) = v6;
              *(v3 + 9) = v171;
              *(v3 + 10) = v173;
              sub_257ECF540();
              v174 = sub_257ECF4C0();

              [v19 setAccessibilityLabel_];

              return v19;
            }

LABEL_155:
            swift_once();
            goto LABEL_111;
          }

          v141 = v64 + 5.0;
          v139 = v128;
          [v139 size];
          v137 = (v64 - v142) * 0.5;
          [v139 size];
          v64 = v143;
          [v139 size];
          v145 = v144;
        }

        [v139 drawInRect_];

        goto LABEL_110;
      }

      v78 = [v19 textLabel];
      if (v78)
      {
        v79 = v78;
        type metadata accessor for MAGUtilities();
        v80 = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        v82 = sub_257ECF4C0();
        v83 = sub_257ECF4C0();
        v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

        if (!v84)
        {
          sub_257ECF500();
          v84 = sub_257ECF4C0();
        }

        [v79 setText_];
      }

      v35 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v85 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v225) != 1)
      {
        [v35 setOn_];
        [v35 addTarget:v3 action:sel_didToggleBackTapSwitch_ forControlEvents:4096];
        [v19 setAccessoryView_];
        [v19 setAccessoryType_];
      }

LABEL_136:

      return v19;
    }

    if (v15 == 6)
    {
      sub_257DCB00C();
      memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v225) == 1)
      {
        return v19;
      }

      v73 = [objc_opt_self() shared];
      v74 = [v73 doorAttributesClassifierProperties];

      if (v74)
      {
        *&v220 = 0xD000000000000017;
        *(&v220 + 1) = 0x8000000257EF93E0;
        v75 = [v74 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v75)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v220 = 0u;
          v221 = 0u;
        }

        v219[0] = v220;
        v219[1] = v221;
        if (*(&v221 + 1))
        {
          sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
          if (swift_dynamicCast())
          {
            v146 = v222;
            v147 = [v222 count];

            v148 = v147 > 0;
LABEL_118:
            v175 = [v19 textLabel];
            if (v175)
            {
              v176 = v175;
              [v175 setNumberOfLines_];
            }

            v177 = [v19 textLabel];
            if (v177)
            {
              v178 = v177;
              [v177 setLineBreakMode_];
            }

            [v19 setAccessoryType_];
            [v19 setShowsReorderControl_];
            v179 = [v19 textLabel];
            if (v179)
            {
              v180 = v179;
              type metadata accessor for MAGUtilities();
              v181 = swift_getObjCClassFromMetadata();
              v182 = [objc_opt_self() bundleForClass_];
              v183 = sub_257ECF4C0();
              v184 = sub_257ECF4C0();
              v185 = [v182 localizedStringForKey:v183 value:0 table:v184];

              if (!v185)
              {
                sub_257ECF500();
                v185 = sub_257ECF4C0();
              }

              [v180 setText_];
            }

            v186 = [v19 textLabel];
            if (v186)
            {
              v187 = 0.5;
              if (v148)
              {
                v187 = 1.0;
              }

              v188 = v186;
              [v186 setAlpha_];
            }

            v189 = [v19 detailTextLabel];
            if (v189)
            {
              v190 = v189;
              type metadata accessor for MAGUtilities();
              v191 = swift_getObjCClassFromMetadata();
              v192 = [objc_opt_self() bundleForClass_];
              v193 = sub_257ECF4C0();
              v194 = sub_257ECF4C0();
              v195 = [v192 localizedStringForKey:v193 value:0 table:v194];

              sub_257ECF500();
              v196 = sub_257ECF4C0();

              [v190 setText_];
            }

            v197 = [v19 detailTextLabel];
            if (!v197)
            {
              return v19;
            }

            v198 = 0.5;
            if (v148)
            {
              v198 = 1.0;
            }

            v35 = v197;
            [v197 setAlpha_];
            goto LABEL_136;
          }
        }

        else
        {

          sub_257BE4084(v219, &unk_27F8F62F0, &unk_257ED9D30);
        }
      }

      v148 = 0;
      goto LABEL_118;
    }

    sub_257DCB2C0();
    v94 = [v19 textLabel];
    if (v94)
    {
      v95 = v94;
      v96 = v3;
      type metadata accessor for MAGUtilities();
      v97 = swift_getObjCClassFromMetadata();
      v98 = [objc_opt_self() bundleForClass_];
      v99 = sub_257ECF4C0();
      v100 = sub_257ECF4C0();
      v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

      if (!v101)
      {
        sub_257ECF500();
        v101 = sub_257ECF4C0();
      }

      [v95 setText_];

      v3 = v96;
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v102 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
    memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v225) == 1)
    {
      goto LABEL_151;
    }

    v103 = v102[176];
    v104 = [objc_opt_self() shared];
    v105 = [v104 signDetectorProperties];

    if (v105)
    {
      v106 = v3;
      *&v220 = 0xD000000000000013;
      *(&v220 + 1) = 0x8000000257EF9700;
      v107 = [v105 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v107)
      {
        sub_257ED0160();
        swift_unknownObjectRelease();
      }

      else
      {
        v220 = 0u;
        v221 = 0u;
      }

      v219[0] = v220;
      v219[1] = v221;
      if (*(&v221 + 1))
      {
        sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v149 = v222;
          v150 = [v222 count];

          v151 = v150 <= 0;
          v3 = v106;
          v105 = !v151;
          goto LABEL_139;
        }
      }

      else
      {

        sub_257BE4084(v219, &unk_27F8F62F0, &unk_257ED9D30);
      }

      v105 = 0;
    }

LABEL_139:
    [v37 setOn_];
    v37 = v37;
    [v37 setUserInteractionEnabled_];
    [v37 addTarget:v3 action:sel_didToggleDecorationsSwitch_ forControlEvents:4096];
    [v19 setUserInteractionEnabled_];
    [v19 setAccessoryView_];
    [v19 setAccessoryType_];
    v199 = [v19 imageView];
    if (v199)
    {
      v200 = v199;
      [v199 setImage_];
    }

    v201 = [v19 textLabel];
    if (v201)
    {
      v202 = v201;
      v203 = [objc_opt_self() labelColor];
      [v202 setTextColor_];
    }

    v204 = [v19 textLabel];
    if (v105)
    {
      v205 = 1.0;
    }

    else
    {
      v205 = 0.5;
    }

    if (v204)
    {
      v206 = v204;
      [v204 setAlpha_];
    }

    [v37 setAlpha_];

    type metadata accessor for MAGUtilities();
    v207 = swift_getObjCClassFromMetadata();
    v208 = [objc_opt_self() bundleForClass_];
    v209 = sub_257ECF4C0();
    v210 = sub_257ECF4C0();
    v211 = [v208 localizedStringForKey:v209 value:0 table:v210];

    if (!v211)
    {
      sub_257ECF500();
      v211 = sub_257ECF4C0();
    }

    [v19 setAccessibilityLabel_];

    goto LABEL_151;
  }

  if (v15 > 1u)
  {
    if (v15 == 2)
    {
      type metadata accessor for UIStepperLengthCell(0);
      if (swift_dynamicCastClass())
      {
        v66 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
        memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
        if (sub_257C108C4(v225) != 1)
        {
          v67 = v66[78];
          memcpy(v219, v66, 0x128uLL);
          if (sub_257C108C4(v219) != 1)
          {
            v68 = objc_opt_self();
            v19 = v19;
            v69 = &selRef_feet;
            if (!v67)
            {
              v69 = &selRef_meters;
            }

            v70 = [v68 *v69];
            sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
            sub_257ECC740();
            v71 = swift_allocObject();
            *(v71 + 16) = v3;
            v72 = v3;
            sub_257D3DB54(v13, sub_257DCB578, v71);

            (*(v218 + 1))(v13, v6);
          }
        }
      }

      return v19;
    }

    v86 = *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks];
    v87 = sub_257ECCE60();
    if ((v87 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v87 < *(v86 + 16))
    {
      v88 = *(v86 + v87 + 32);
      v89 = [v19 textLabel];
      if (v89)
      {
        v90 = v89;
        sub_257BF3B74(v88);
        v91 = sub_257ECF4C0();

        [v90 setText_];
      }

      v92 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v93 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v225) != 1)
      {
        [v92 setOn_];
        v92 = v92;
        [v92 setTag_];
        [v92 addTarget:v3 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
        [v19 setAccessoryView_];

        [v19 setAccessoryType_];
      }

      return v19;
    }

    __break(1u);
    goto LABEL_155;
  }

  if (!v15)
  {
    v24 = [v19 textLabel];
    if (v24)
    {
      v25 = v24;
      v218 = v3;
      type metadata accessor for MAGUtilities();
      v26 = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      v28 = sub_257ECF4C0();
      v29 = sub_257ECF4C0();
      v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

      if (!v30)
      {
        sub_257ECF500();
        v30 = sub_257ECF4C0();
      }

      [v25 setText_];

      v3 = v218;
    }

    v31 = [v19 textLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setNumberOfLines_];
    }

    v33 = [v19 textLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setLineBreakMode_];
    }

    v35 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v36 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
    memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v225) != 1)
    {
      [v35 setOn_];
      v37 = v35;
      [v37 setTag_];
      [v37 addTarget:v3 action:sel_toggleDoorDetectionSwitchChanged_ forControlEvents:4096];
      [v19 setAccessoryView_];

LABEL_151:
      return v19;
    }

    goto LABEL_136;
  }

  v76 = sub_257ECCE60();
  if (v76)
  {
    if (v76 != 1)
    {
      return v19;
    }

    v77 = 1;
  }

  else
  {
    v77 = 0;
  }

  v116 = [v19 textLabel];
  if (v116)
  {
    v117 = v116;
    sub_257C69A6C(v77);
    v118 = sub_257ECF4C0();

    [v117 setText_];
  }

  v119 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
  memcpy(v225, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
  if (sub_257C108C4(v225) != 1)
  {
    if ((v77 ^ v119[78]))
    {
      v120 = 0;
    }

    else
    {
      v120 = 3;
    }

    [v19 setAccessoryType_];
    [v19 setAccessoryView_];
  }

  return v19;
}

uint64_t sub_257DC9A60(uint64_t a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE0E2C(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_257DC9BE0(void *a1)
{
  v2 = v1;
  sub_257DC6CB0();
  v4 = sub_257BBD7B8([a1 tag]);
  if (v4 != 4)
  {
    v6 = v4;
    v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(__dst) != 1)
    {
      v8 = *(v7 + 112);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9600, &unk_257EDB1D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v6;
        sub_257EB0610(inited);
        sub_257DC9DB0(v8);
      }

      else
      {
        v10 = *(v8 + 16);
        if (v10)
        {
          v11 = (v8 + 32);
          v12 = MEMORY[0x277D84F90];
          do
          {
            v16 = *v11++;
            v15 = v16;
            if (v16 != v6)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF2744(0, *(v12 + 16) + 1, 1);
              }

              v14 = *(v12 + 16);
              v13 = *(v12 + 24);
              if (v14 >= v13 >> 1)
              {
                sub_257BF2744((v13 > 1), v14 + 1, 1);
              }

              *(v12 + 16) = v14 + 1;
              *(v12 + v14 + 32) = v15;
            }

            --v10;
          }

          while (v10);
        }

        else
        {
          v12 = MEMORY[0x277D84F90];
        }

        sub_257DC9DB0(v12);
      }
    }
  }

  return result;
}

double sub_257DC9DB0(uint64_t a1)
{
  sub_257DC6CB0();
  v7 = a1;

  sub_257D6D198(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE1094(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_257DC9F28(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v8 = a1;
    a4([v7 isOn]);
    swift_unknownObjectRelease();
  }
}

id sub_257DCA004(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (sub_257CA9794(a4) == 8 || (a5(), !v6))
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_257ECF4C0();

    v8 = v7;
  }

  return v8;
}

void sub_257DCA158(void *a1)
{
  v3 = sub_257ECCDF0();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECDA30();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECCEB0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v1;
  sub_257DC6CB0();
  v24 = sub_257ECCE30();
  v61 = [a1 cellForRowAtIndexPath_];

  if (!v61)
  {
    return;
  }

  v25 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v25 animated:1];

  v26 = sub_257ECCEA0();
  v27 = sub_257CA9794(v26);
  if (v27 <= 3)
  {
    if (v27 <= 1 && v27)
    {
      v28 = sub_257ECCE60();
      if (v28)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }

        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      v34 = &v60[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v65, &v60[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v65) != 1 && v29 != v34[78])
      {
        v53 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257CE11D4(v29);
          swift_unknownObjectRelease();
        }

        v54 = v29;
        v55 = (v17 + 8);
        MEMORY[0x259C6F970](byte_286905DF0, 1);
        v35 = sub_257ECCE30();
        v36 = [a1 cellForRowAtIndexPath_];

        if (v36)
        {
          [v36 setAccessoryType_];
        }

        v37 = *v55;
        (*v55)(v23, v16);
        MEMORY[0x259C6F970](byte_286905DF1, 1);
        v38 = sub_257ECCE30();
        v39 = [a1 cellForRowAtIndexPath_];

        if (v39)
        {
          [v39 setAccessoryType_];
        }

        v37(v23, v16);
        [v61 setAccessoryType_];
        sub_257ECD420();
        v40 = sub_257ECDA20();
        v41 = sub_257ECFBD0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v54;
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = v42;
          _os_log_impl(&dword_257BAC000, v40, v41, "New door detection unit: %ld", v43, 0xCu);
          MEMORY[0x259C74820](v43, -1, -1);
        }

        (*(v56 + 8))(v15, v9);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = 2.0;
          if (v54)
          {
            v44 = 6.0;
          }

          sub_257CE0E2C(v44);
          swift_unknownObjectRelease();
        }

        [a1 beginUpdates];
        *&v63 = &unk_286905DF8;
        sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
        sub_257C10934();
        v45 = v57;
        v46 = v59;
        sub_257ED0180();
        v47 = sub_257ECCDE0();
        (*(v58 + 8))(v45, v46);
        [a1 reloadSections:v47 withRowAnimation:100];

        [a1 endUpdates];
      }

      goto LABEL_45;
    }

LABEL_17:
    v33 = v61;

    return;
  }

  if (v27 <= 5)
  {
    if (v27 == 4)
    {
      [v60 presentViewController:*&v60[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController] animated:1 completion:0];
    }

    goto LABEL_17;
  }

  if (v27 != 6)
  {
    goto LABEL_17;
  }

  v30 = [objc_opt_self() shared];
  v31 = [v30 doorAttributesClassifierProperties];

  if (!v31)
  {
    goto LABEL_17;
  }

  *&v63 = 0xD000000000000017;
  *(&v63 + 1) = 0x8000000257EF93E0;
  v32 = [v31 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v32)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65[0] = v63;
  v65[1] = v64;
  if (!*(&v64 + 1))
  {

    sub_257BE4084(v65, &unk_27F8F62F0, &unk_257ED9D30);
    return;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_45:
    return;
  }

  v48 = v62;
  if ([v62 count] >= 1)
  {
    v49 = v60;
    v50 = [v60 navigationController];
    if (v50)
    {
      v51 = *&v49[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController];
      v52 = v50;
      [v50 pushViewController:v51 animated:1];
    }
  }
}

void sub_257DCAA34(void *a1)
{
  v2 = v1;
  v3 = [a1 selectedColor];
  v4 = [v3 CGColor];

  v5 = sub_257ECFB30();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286905E20;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_10;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  sub_257CE11EC(v8, v9, v10);
  swift_unknownObjectRelease();
LABEL_10:
  sub_257DC6CB0();
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 4);
  v12 = sub_257ECF7F0();

  [v11 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
}

uint64_t sub_257DCAC9C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
    if (v3)
    {
      v4 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

      sub_257CE0C0C(__src);

      __src[21] = a1;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      memcpy(__dst, __src, sizeof(__dst));
      v5 = __dst[0];
      memcpy(v6, __src, sizeof(v6));
      sub_257C09C58(__dst, v9);
      sub_257D58DA0(v4, v3, v6, 0);

      memcpy(v9, v6, sizeof(v9));
      sub_257C63C04(v9);
      if (v5 == 1)
      {
        sub_257D52CC8(a1);
      }

      swift_unknownObjectRelease();
      memcpy(v6, __src, sizeof(v6));
      return sub_257C63C04(v6);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_257DCAE38()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 6);
  v2 = sub_257ECF7F0();

  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:5];
}

double block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257DCAF74(unint64_t a1)
{
  v2 = sub_257CA9794(a1);
  if (v2 > 4)
  {
    if ((v2 - 6) < 2)
    {
      return 1;
    }

    if (v2 == 5)
    {
      return AXDeviceSupportsBackTap();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        return *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks) + 16);
      }

      return 1;
    }

    if (!v2)
    {
      return 1;
    }

    return 2;
  }
}

void sub_257DCB00C()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() shared];
  v9 = [v8 downloadManager];

  v10 = sub_257ECF4C0();
  [v9 totalDownloadedWithName_];
  v12 = v11;

  if (v12 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v19 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    *(v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    swift_beginAccess();
    v21 = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v14 = sub_257ECF110();
    MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
    *&v20[-16] = &v21;
    *&v20[-8] = v13;
    sub_257ECFD40();
    (*(v1 + 8))(v7, v0);
    swift_endAccess();
  }
}

void sub_257DCB2C0()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() shared];
  v9 = [v8 downloadManager];

  v10 = sub_257ECF4C0();
  [v9 totalDownloadedWithName_];
  v12 = v11;

  if (v12 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v19 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
    *(v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v21 = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v14 = sub_257ECF110();
    MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
    *&v20[-16] = &v21;
    *&v20[-8] = v13;
    sub_257ECFD40();
    (*(v1 + 8))(v7, v0);
    swift_endAccess();
  }
}

uint64_t sub_257DCB580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9608, &qword_257EEEBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DCB5F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v4 = sub_257ECCCF0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_257DCB6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_257DCB7E0(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v6 = MEMORY[0x28223BE20](v2, v3, v2, v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return sub_257DCB8AC(v8);
}

uint64_t sub_257DCB8AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v2 + v12, v4);
  sub_257DCDF4C(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v22[0] = a1;
  LOBYTE(a1) = sub_257ECF450();
  v14 = *(v5 + 8);
  v14(v11, v4);
  if (a1)
  {
    v13(v11, v22[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v12, v11, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v16, v17, v18, v19);
    v20 = v22[0];
    v22[-2] = v2;
    v22[-1] = v20;
    v22[1] = v2;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  return (v14)(v22[0], v4);
}

double sub_257DCBB4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  swift_endAccess();
  return result;
}

uint64_t sub_257DCBBE8()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection);
}

void sub_257DCBC90(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection);
}

void sub_257DCBD68(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3, v4, v5, v6);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }
}

uint64_t sub_257DCBE90()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
}

__n128 sub_257DCBF40@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16);
  result = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_257DCC030(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if ((*(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0)
  {
    if ((a3 & 1) != 0 || (*v4 ^ a1) >> 14 || (*(v4 + 8) ^ a2) >= 0x4000)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v6, v7, v8, v9);
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCED0();

  return result;
}

uint64_t sub_257DCC194(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = result + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  return result;
}

double sub_257DCC1B0()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  return result;
}

double sub_257DCC25C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges);

  return result;
}

double sub_257DCC33C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges;
  if (sub_257D5675C(*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6, v7, v8, v9);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  return result;
}

void sub_257DCC488(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges) = a2;
}

void sub_257DCC4CC(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  *a1 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
}

void sub_257DCC57C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
}

void sub_257DCC664(_BYTE *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 == 4)
        {
          goto LABEL_13;
        }
      }

      else if (v3 == 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v3 != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*a1)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v3 == 2)
      {
        goto LABEL_13;
      }

LABEL_11:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v5, v6, v7, v8);
      sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
      sub_257ECCED0();

      return;
    }

    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed))
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed) = v2;
}

double sub_257DCC7E4@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_257ECD1A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = v28 - v19;
  v21 = a1[1];
  v22 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock_blockText + 8);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock_blockText) & 0xFFFFFFFFFFFFLL;
  }

  if (v21 >> 14 <= 4 * v23 && v21 >> 14 >= *a1 >> 14)
  {
    v28[1] = a3;
    v25 = sub_257ECF720();
    MEMORY[0x259C720C0](v25);

    sub_257ECD1B0();
    sub_257ECC3F0();
    sub_257ECD190();

    v26 = *(v7 + 8);
    v26(v13, v6);
    sub_257ECCFA0();
    v26(v20, v6);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    swift_getKeyPath();
    *&v31[0] = a2;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCEE0();

    LOBYTE(v31[0]) = 0;
    sub_257ECCF90();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_257ECCF80();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v29);
    __swift_destroy_boxed_opaque_existential_0(v30);
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_257ECD130();
    sub_257C024BC(v30, v29);
    sub_257ECD180();
    sub_257DCDFB8(v29);
    __swift_destroy_boxed_opaque_existential_0(v30);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_257ECD180();
    sub_257DCDFB8(v31);
  }

  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v33);
}

double sub_257DCCB38(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if ((*(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0 && (!((*v6 ^ a1) >> 14) ? (v7 = (*(v6 + 8) ^ a2) >> 14 == 0) : (v7 = 0), v7))
  {
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 16) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9, v10, v11, v12);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  if (*(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection))
  {
    *(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 1;
  }

  else
  {
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  return result;
}

void sub_257DCCD64(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = a1 >> 14;
    v11 = a2 >> 14;
    v12 = -v8;
    v13 = v7 + 56;
    v14 = MEMORY[0x277D84F90];
    v32 = a3;
    do
    {
      v15 = *(v7 + 16);
      if (v9 > v15)
      {
        v15 = v9;
      }

      v16 = -v15;
      v17 = (v13 + 32 * v9++);
      while (1)
      {
        if (v16 + v9 == 1)
        {
          __break(1u);
          return;
        }

        v18 = *(v17 - 3);
        v19 = *(v17 - 2);
        if (v18 >> 14 >= v10)
        {
          break;
        }

        v20 = v18 >> 14 >= v11 || v10 == v11;
        if (!v20 && v10 < v19 >> 14)
        {
          break;
        }

        ++v9;
        v17 += 4;
        if (v12 + v9 == 1)
        {
          goto LABEL_23;
        }
      }

      v33 = *(v17 - 1);
      v34 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2924(0, *(v14 + 16) + 1, 1);
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      v13 = v7 + 56;
      if (v23 >= v22 >> 1)
      {
        sub_257BF2924((v22 > 1), v23 + 1, 1);
        v13 = v7 + 56;
      }

      *(v14 + 16) = v23 + 1;
      v24 = (v14 + 32 * v23);
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v33;
      v24[7] = v34;
      a3 = v32;
    }

    while (v12 + v9);
  }

LABEL_23:

  v25 = sub_257ECF6C0();
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v30 = sub_257ECD1C0();
  v31 = MEMORY[0x277D703A0];
  a3[3] = v30;
  a3[4] = v31;
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_257ECD1D0();
}

void sub_257DCD004(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = sub_257ECD1A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = v32 - v23;
  v25 = *a1;
  v26 = a1[2];
  v27 = a2 >> 14;
  v28 = a1[1] >> 14;
  if (*a1 >> 14 < a2 >> 14)
  {
    if (v28 >= v27)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v27 = v25 >> 14;
LABEL_5:
  if (v28 < v27)
  {
    __break(1u);
  }

  else
  {
    v32[1] = v26;
    v29 = sub_257ECF720();
    MEMORY[0x259C720C0](v29);
    v32[2] = a5;

    sub_257ECD1B0();
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    sub_257ECC3F0();
    sub_257ECD190();

    v31 = *(v11 + 8);
    v31(v17, v10);
    sub_257ECCFA0();
    v31(v24, v10);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    swift_getKeyPath();
    v36[0] = a3;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCEE0();

    LOBYTE(v36[0]) = 0;
    sub_257ECCF90();
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_257ECCF80();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(v34);
    __swift_destroy_boxed_opaque_existential_0(v35);
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v36);
  }
}

void sub_257DCD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_257ECF610();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = sub_257ECF610();
    if ((v10 & 1) == 0)
    {
      if (v9 >> 14 < v8 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_257DCC030(v8, v9, 0);
      }
    }
  }
}

void sub_257DCD40C()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) == 1)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3, v4, v5, v6);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
    sub_257ECCED0();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 0;
  }
}

uint64_t sub_257DCD608()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  v2 = sub_257ECCCF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock___observationRegistrar;
  v4 = sub_257ECCF20();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MFReaderTextBlock(uint64_t a1)
{
  result = qword_27F8F9640;
  if (!qword_27F8F9640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DCD75C(uint64_t a1)
{
  result = sub_257ECCCF0();
  if (v2 <= 0x3F)
  {
    result = sub_257ECCF20();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_257DCD858@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_257DCD950(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  type metadata accessor for MFReaderTextBlock(0);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DCD9B0(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  swift_getKeyPath();
  v13[1] = v10;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v11 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  (*(v3 + 16))(v9, v10 + v11, v2);
  sub_257DCDF4C(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_257DCDB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257ED07B0();
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DCDC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = v24 - v17;
  swift_getKeyPath();
  v24[3] = a1;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
  sub_257ECCEE0();

  v19 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v20 = *(v5 + 16);
  v20(v18, a1 + v19, v4);
  swift_getKeyPath();
  v24[0] = a2;
  sub_257ECCEE0();

  v21 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v20(v11, a2 + v21, v4);
  LOBYTE(v21) = sub_257ECCCC0();
  v22 = *(v5 + 8);
  v22(v11, v4);
  v22(v18, v4);
  return v21 & 1;
}

__n128 sub_257DCDEB8()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_257DCDF08(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 16) + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges) = *(v2 + 24);
}

uint64_t sub_257DCDF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257DCDFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E68, &qword_257EDF540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257DCE050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC16MagnifierSupport24OnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a5)
  {
    v8 = objc_opt_self();
    v9 = a5;
    v10 = [v8 systemYellowColor];
    v11 = [v9 imageWithTintColor_];
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_257ECF4C0();
  if (a4)
  {

    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = v5;
  v19.super_class = type metadata accessor for OnboardingViewController();
  v14 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, v11, 2);

  v15 = v14;
  result = [v15 view];
  if (result)
  {
    v17 = result;

    v18 = [objc_opt_self() systemYellowColor];
    [v17 setTintColor_];

    sub_257DCE2AC();
    sub_257DCF180();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257DCE2AC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v6 = [v1 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = v1;
  v10 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  v11 = sub_257ECF4C0();

  v12 = sub_257ECF4C0();
  v13 = objc_opt_self();
  v14 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v5 description:v11 symbolName:v12 tintColor:v14];

  v15 = [v9 &selRef:ObjCClassFromMetadata setValues:? + 3];
  v16 = sub_257ECF4C0();
  v17 = sub_257ECF4C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_257ECF500();
    v18 = sub_257ECF4C0();
  }

  v19 = [v9 &selRef:ObjCClassFromMetadata setValues:0xD00000000000001ALL + 3];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_257ECF500();
  v23 = sub_257ECF4C0();

  v24 = sub_257ECF4C0();
  v79 = v13;
  v25 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v18 description:v23 symbolName:v24 tintColor:v25];

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v26 = v9;
  if (byte_27F8F78A0 == 1)
  {
    v27 = [v9 bundleForClass_];
    v28 = sub_257ECF4C0();
    v29 = sub_257ECF4C0();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    if (!v30)
    {
      sub_257ECF500();
      v30 = sub_257ECF4C0();
    }

    v31 = [v9 bundleForClass_];
    v32 = sub_257ECF4C0();
    v33 = sub_257ECF4C0();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

    sub_257ECF500();
    v35 = sub_257ECF4C0();

    v36 = sub_257ECF4C0();
    v37 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v30 description:v35 symbolName:v36 tintColor:v37];

    v38 = [v9 bundleForClass_];
    v39 = sub_257ECF4C0();
    v40 = sub_257ECF4C0();
    v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

    if (!v41)
    {
      sub_257ECF500();
      v41 = sub_257ECF4C0();
    }

    v42 = [v9 &selRef:ObjCClassFromMetadata setValues:? + 3];
    v43 = sub_257ECF4C0();
    v44 = sub_257ECF4C0();
    v26 = v9;
    v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

    sub_257ECF500();
    v46 = sub_257ECF4C0();

    v47 = sub_257ECF4C0();
    v48 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v41 description:v46 symbolName:v47 tintColor:v48];

    v49 = [v9 bundleForClass_];
    v50 = sub_257ECF4C0();
    v51 = sub_257ECF4C0();
    v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

    if (!v52)
    {
      sub_257ECF500();
      v52 = sub_257ECF4C0();
    }

    v53 = [v9 bundleForClass_];
    v54 = sub_257ECF4C0();
    v55 = sub_257ECF4C0();
    v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

    sub_257ECF500();
    v57 = sub_257ECF4C0();

    v58 = sub_257ECF4C0();
    v59 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v52 description:v57 symbolName:v58 tintColor:v59];
  }

  v60 = [v26 bundleForClass_];
  v61 = sub_257ECF4C0();
  v62 = sub_257ECF4C0();
  v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

  if (!v63)
  {
    sub_257ECF500();
    v63 = sub_257ECF4C0();
  }

  v64 = [v26 bundleForClass_];
  v65 = sub_257ECF4C0();
  v66 = sub_257ECF4C0();
  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

  if (!v67)
  {
    sub_257ECF500();
    v67 = sub_257ECF4C0();
  }

  v68 = sub_257ECF4C0();
  v69 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v63 description:v67 symbolName:v68 tintColor:v69];

  v70 = [v26 bundleForClass_];
  v71 = sub_257ECF4C0();
  v72 = sub_257ECF4C0();
  v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

  if (!v73)
  {
    sub_257ECF500();
    v73 = sub_257ECF4C0();
  }

  v74 = [v26 bundleForClass_];
  v75 = sub_257ECF4C0();
  v76 = sub_257ECF4C0();
  v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

  if (!v77)
  {
    sub_257ECF500();
    v77 = sub_257ECF4C0();
  }

  v78 = sub_257ECF4C0();
  v80 = [v79 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v73 description:v77 symbolName:v78 tintColor:v80];
}

void sub_257DCF180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v28 - v14;
  v16 = [objc_opt_self() boldButton];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = v16;
  v20 = [v18 bundleForClass_];
  v21 = sub_257ECF4C0();
  v22 = sub_257ECF4C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_257ECF500();
    v23 = sub_257ECF4C0();
  }

  [v19 setTitle:v23 forState:0];

  sub_257ED0040();
  v24 = sub_257ED0030();
  if ((*(*(v24 - 8) + 48))(v15, 1, v24))
  {
    sub_257C3366C(v15, v8);
    sub_257ED0050();

    sub_257C336DC(v15);
  }

  else
  {
    v25 = [objc_opt_self() blackColor];
    sub_257ED0000();
    sub_257ED0050();
  }

  [v19 addTarget:v1 action:sel_didTapStart forControlEvents:64];
  v26 = [objc_opt_self() systemYellowColor];
  [v19 setTintColor_];

  v27 = [v1 buttonTray];
  [v27 addButton_];
}

id sub_257DCF728(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnboardingViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MAGActionHandler.send(_:)(uint64_t a1)
{
  *(v2 + 176) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;
  *(v2 + 81) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 240) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  *(v2 + 248) = v6;
  *(v2 + 256) = v5;

  return MEMORY[0x2822009F8](sub_257DCF8BC, v6, v5);
}

uint64_t sub_257DCF8BC()
{
  v40 = v0;
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 272) = v6;
    *(v0 + 280) = v7;
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v2 + 48);
    v12 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = *(v11 + v12);
    *(v0 + 288) = v13;
    v14 = *(v11 + v12 + 8);
    *(v0 + 296) = v14;
    v15 = (*(v2 + 56) + v12);
    v38 = *v15;
    *(v0 + 304) = v15[1];
    v16 = *(v0 + 81);

    sub_257ECC3F0();
    sub_257ECD4F0();

    sub_257CCE9D4(v10, v9, v16);
    v17 = sub_257ECDA20();
    v18 = sub_257ECFBC0();
    sub_257C6DA74(v10, v9, v16);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 81);
      v20 = *(v0 + 224);
      v21 = *(v0 + 232);
      v34 = *(v0 + 192);
      v35 = *(v0 + 184);
      v36 = *(v0 + 216);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315394;
      *(v0 + 152) = 0x203A6E6F69746341;
      *(v0 + 160) = 0xE800000000000000;
      *(v0 + 112) = v20;
      *(v0 + 120) = v21;
      *(v0 + 128) = v19;
      v24 = MAGAction.ActionType.description.getter();
      MEMORY[0x259C72150](v24);

      v25 = sub_257BF1FC8(*(v0 + 152), *(v0 + 160), &v39);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_257BF1FC8(v13, v14, &v39);
      _os_log_impl(&dword_257BAC000, v17, v18, "Will dispatch action=%s to handler=%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v23, -1, -1);
      MEMORY[0x259C74820](v22, -1, -1);

      v26 = *(v34 + 8);
      v26(v36, v35);
    }

    else
    {
      v27 = *(v0 + 216);
      v29 = *(v0 + 184);
      v28 = *(v0 + 192);

      v26 = *(v28 + 8);
      v26(v27, v29);
    }

    *(v0 + 312) = v26;
    v30 = *(v0 + 81);
    *(v0 + 64) = *(v0 + 224);
    *(v0 + 80) = v30;
    v37 = (v38 + *v38);
    v31 = swift_task_alloc();
    *(v0 + 320) = v31;
    *v31 = v0;
    v31[1] = sub_257DCFD00;

    return v37();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_257DCFD00()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_257DD0430;
  }

  else
  {
    v5 = sub_257DCFE24;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257DCFE24(__n128 a1)
{
  v58 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 81);
  sub_257ECD4F0();

  sub_257CCE9D4(v3, v2, v4);
  v5 = sub_257ECDA20();
  v6 = sub_257ECFBC0();

  sub_257C6DA74(v3, v2, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v1 + 288);
    v7 = *(v1 + 296);
    v9 = *(v1 + 81);
    v11 = *(v1 + 224);
    v10 = *(v1 + 232);
    v54 = *(v1 + 208);
    v56 = *(v1 + 312);
    v51 = *(v1 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v57 = v13;
    *v12 = 136315394;
    v14 = sub_257BF1FC8(v8, v7, &v57);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    *(v1 + 88) = v11;
    *(v1 + 136) = 0x203A6E6F69746341;
    *(v1 + 144) = 0xE800000000000000;
    *(v1 + 96) = v10;
    *(v1 + 104) = v9;
    v15 = MAGAction.ActionType.description.getter();
    MEMORY[0x259C72150](v15);

    v16 = sub_257BF1FC8(*(v1 + 136), *(v1 + 144), &v57);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_257BAC000, v5, v6, "Handler=%s did handle action=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);

    result = v56(v54, v51);
  }

  else
  {
    v18 = *(v1 + 312);
    v19 = *(v1 + 208);
    v20 = *(v1 + 184);

    result = v18(v19, v20);
  }

  v21 = *(v1 + 280);
  v22 = (*(v1 + 272) - 1) & *(v1 + 272);
  if (v22)
  {
    v23 = *(v1 + 264);
LABEL_10:
    *(v1 + 272) = v22;
    *(v1 + 280) = v21;
    v26 = *(v1 + 224);
    v25 = *(v1 + 232);
    v27 = *(v23 + 48);
    v28 = (v21 << 10) | (16 * __clz(__rbit64(v22)));
    v29 = *(v27 + v28);
    *(v1 + 288) = v29;
    v30 = *(v27 + v28 + 8);
    *(v1 + 296) = v30;
    v31 = (*(v23 + 56) + v28);
    v55 = *v31;
    *(v1 + 304) = v31[1];
    v32 = *(v1 + 81);

    sub_257ECC3F0();
    sub_257ECD4F0();

    sub_257CCE9D4(v26, v25, v32);
    v33 = sub_257ECDA20();
    v34 = sub_257ECFBC0();
    sub_257C6DA74(v26, v25, v32);

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v1 + 81);
      v36 = *(v1 + 224);
      v37 = *(v1 + 232);
      v49 = *(v1 + 192);
      v50 = *(v1 + 184);
      v52 = *(v1 + 216);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v38 = 136315394;
      *(v1 + 152) = 0x203A6E6F69746341;
      *(v1 + 160) = 0xE800000000000000;
      *(v1 + 112) = v36;
      *(v1 + 120) = v37;
      *(v1 + 128) = v35;
      v40 = MAGAction.ActionType.description.getter();
      MEMORY[0x259C72150](v40);

      v41 = sub_257BF1FC8(*(v1 + 152), *(v1 + 160), &v57);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_257BF1FC8(v29, v30, &v57);
      _os_log_impl(&dword_257BAC000, v33, v34, "Will dispatch action=%s to handler=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v39, -1, -1);
      MEMORY[0x259C74820](v38, -1, -1);

      v42 = *(v49 + 8);
      v42(v52, v50);
    }

    else
    {
      v43 = *(v1 + 216);
      v45 = *(v1 + 184);
      v44 = *(v1 + 192);

      v42 = *(v44 + 8);
      v42(v43, v45);
    }

    *(v1 + 312) = v42;
    v46 = *(v1 + 81);
    *(v1 + 64) = *(v1 + 224);
    *(v1 + 80) = v46;
    v53 = (v55 + *v55);
    v47 = swift_task_alloc();
    *(v1 + 320) = v47;
    *v47 = v1;
    v47[1] = sub_257DCFD00;

    return v53();
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(v1 + 264);
      if (v24 >= (((1 << *(v1 + 82)) + 63) >> 6))
      {
        break;
      }

      v22 = *(v23 + 8 * v24 + 64);
      ++v21;
      if (v22)
      {
        v21 = v24;
        goto LABEL_10;
      }
    }

    v48 = *(v1 + 8);

    return v48();
  }
}

uint64_t sub_257DD0430()
{
  v35 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 81);

  sub_257ECD4F0();

  sub_257CCE9D4(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257C6DA74(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 81);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v27 = *(v0 + 200);
    v28 = *(v0 + 312);
    v26 = *(v0 + 184);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = sub_257BF1FC8(v9, v8, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v30 = 0x203A6E6F69746341;
    v31 = 0xE800000000000000;
    v32 = v12;
    v33 = v11;
    v34 = v10;
    v16 = MAGAction.ActionType.description.getter();
    MEMORY[0x259C72150](v16);

    v17 = sub_257BF1FC8(v30, v31, &v29);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling action=%s. Error=%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);

    v28(v27, v26);
  }

  else
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);

    v21(v22, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

double MAGActionHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  swift_endAccess();
  return result;
}

uint64_t MAGActionHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE96D4(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall MAGActionHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_257C03F6C(countAndFlagsBits, object);
  v6 = v5;

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C093D4();
    }

    sub_257C09E7C();
    *(v2 + 16) = v8;
  }

  swift_endAccess();
}

uint64_t MAGActionHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DD0A00()
{
  if (qword_281543D70 != -1)
  {
    result = swift_once();
  }

  if (byte_281548078)
  {
    v0 = 73.0;
  }

  else
  {
    if (qword_27F8F4668 != -1)
    {
      result = swift_once();
    }

    v0 = 100.0;
    if (byte_27F8F8D88)
    {
      v0 = 73.0;
    }
  }

  qword_2815480C8 = *&v0;
  return result;
}

void sub_257DD0ABC(uint64_t a1)
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v1 = sub_257DD1C7C();
  }

  else
  {
    v2 = sub_257ECF030();
    v1 = 50.0;
    if (v2)
    {
      v1 = 24.0;
    }
  }

  qword_2815480C0 = *&v1;
}

uint64_t sub_257DD0B38(uint64_t a1)
{
  result = sub_257ECF030();
  v2 = 16.0;
  if (result)
  {
    v2 = 24.0;
  }

  qword_2815480B8 = *&v2;
  return result;
}

void sub_257DD0B68()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  [*(*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView] + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) bounds];
  [v0 convertRect:*(*&v0[v1] + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) fromCoordinateSpace:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] bounds];
  [v0 convertRect:*&v0[v10] fromCoordinateSpace:?];
  CGRectGetMinY(v17);
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  CGRectGetMinY(v18);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();
}

void sub_257DD0E2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EDBE40;
  v6 = [*&v1[v2] leadingAnchor];
  v7 = [v1 leadingAnchor];
  if (qword_2815447F0 != -1)
  {
    swift_once();
  }

  v8 = *&qword_2815480B8;
  v9 = [v6 constraintEqualToAnchor:v7 constant:*&qword_2815480B8];

  *(v5 + 32) = v9;
  v10 = [*&v1[v3] leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v8];

  *(v5 + 40) = v12;
  v13 = [*&v1[v2] trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = -v8;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  *(v5 + 48) = v16;
  v17 = [*&v1[v3] trailingAnchor];
  v18 = [v1 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v15];

  *(v5 + 56) = v19;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v20 = sub_257ECF7F0();

  [v4 activateConstraints_];
}

uint64_t sub_257DD1100()
{
  v1 = sub_257ECF120();
  v97 = *(v1 - 8);
  v98 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v95 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_257ECF190();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v7, v8, v9, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v91 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_dynamicConstraints;
  v13 = sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);

  v90 = v13;
  v14 = sub_257ECF7F0();

  v92 = v12;
  [v12 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  v87[0] = v0;
  v17 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView);
  v99 = v15;
  *(v15 + 16) = xmmword_257EE8210;
  v18 = [*(v17 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) heightAnchor];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v19 = qword_281548348;
  v20 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v21 = v20[1];
  v22 = v20[2];
  aBlock = *v20;
  v101 = v21;
  v102 = v22;
  v23 = qword_2815447E0;

  if (v23 != -1)
  {
    v24 = swift_once();
  }

  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v87[-2] = &aBlock;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v30 = *(v107 + 16);

  if (v30)
  {
    v31 = 68.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = [v18 constraintEqualToConstant_];

  v33 = v99;
  v99[4] = v32;
  v34 = v87[0];
  v88 = [*(*(v87[0] + v16) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) heightAnchor];
  v35 = (v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  v36 = swift_beginAccess();
  v89 = v16;
  v37 = v34;
  v38 = v35[1];
  v39 = v35[2];
  aBlock = *v35;
  v101 = v38;
  v102 = v39;
  MEMORY[0x28223BE20](v36, v40, v41, v42, v43);
  v87[-2] = &aBlock;

  v87[2] = v29;
  sub_257ECFD50();
  v87[1] = 0;

  v44 = *(v106 + 16);

  if (v44)
  {
    v45 = 68.0;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = v88;
  v47 = [v88 constraintEqualToConstant_];

  v33[5] = v47;
  v88 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  v48 = [*(v37 + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) heightAnchor];
  if (qword_281544800 != -1)
  {
    swift_once();
  }

  v49 = [v48 constraintEqualToConstant_];

  v33[6] = v49;
  v50 = v89;
  v51 = [*(v37 + v89) topAnchor];
  v52 = [v37 &selRef_dataForKey_];
  v53 = [v51 constraintEqualToAnchor:v52 constant:sub_257DD1C7C()];

  v99[7] = v53;
  v54 = [*(*(v37 + v50) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) &selRef_dataForKey_];
  v55 = [*(*(v37 + v50) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) bottomAnchor];
  v56 = v35[1];
  v57 = v35[2];
  aBlock = *v35;
  v101 = v56;
  v102 = v57;
  MEMORY[0x28223BE20](v55, v58, v59, v60, v61);
  v87[-2] = &aBlock;

  sub_257ECFD50();

  v62 = *(v106 + 16);

  v63 = 10.0;
  if (!v62)
  {
    v63 = 0.0;
  }

  v64 = [v54 &selRef_CIImage + 6];

  v99[8] = v64;
  v65 = v88;
  v66 = [*&v88[v37] topAnchor];
  v67 = [*(*(v37 + v50) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) bottomAnchor];
  v68 = [v66 constraintGreaterThanOrEqualToAnchor:v67 constant:12.0];

  v99[9] = v68;
  v69 = [*&v65[v37] topAnchor];
  v70 = v99;
  v71 = [*(*(v37 + v50) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) bottomAnchor];
  v72 = [v69 &selRef_CIImage + 6];

  LODWORD(v73) = 1148813312;
  [v72 setPriority_];
  v70[10] = v72;
  v74 = [*&v65[v37] bottomAnchor];
  v75 = [v37 bottomAnchor];
  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  v76 = [v74 &selRef_CIImage + 6];

  LODWORD(v77) = 1148829696;
  [v76 setPriority_];
  v70[11] = v76;
  *(v37 + v91) = v70;

  v78 = sub_257ECF7F0();

  [v92 activateConstraints_];

  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v79 = sub_257ECFD30();
  v80 = swift_allocObject();
  *(v80 + 16) = v37;
  v104 = sub_257C1C6EC;
  v105 = v80;
  aBlock = MEMORY[0x277D85DD0];
  v101 = 1107296256;
  v102 = sub_257D231C0;
  v103 = &block_descriptor_50;
  v81 = _Block_copy(&aBlock);
  v82 = v37;

  v83 = v93;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  v84 = v95;
  v85 = v98;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v83, v84, v81);
  _Block_release(v81);

  (*(v97 + 8))(v84, v85);
  return (*(v94 + 8))(v83, v96);
}

id sub_257DD1BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFContainedCardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_257DD1C7C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v6 = *(v8 + 16);

  if (v6)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    result = 34.0;
    if (byte_27F8F8D88)
    {
      return 44.0;
    }
  }

  else
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    result = 34.0;
    if (!byte_27F8F8D88)
    {
      return 24.0;
    }
  }

  return result;
}

void sub_257DD1E80(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v1 = qword_2815447E0;

      if (v1 != -1)
      {
        v2 = swift_once();
      }

      MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
      sub_257ECFD50();

      if (qword_281544800 != -1)
      {
        swift_once();
      }

      if (qword_2815447F8 == -1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v23 = qword_2815447E0;

      if (v23 != -1)
      {
        v24 = swift_once();
      }

      MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
      sub_257ECFD50();

      if (qword_2815447F8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    sub_257DD1C7C();
    return;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_2815447E0;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v13 = swift_beginAccess();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);

  sub_257ECFD50();

  if (qword_281544800 != -1)
  {
    swift_once();
  }

  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  sub_257DD1C7C();
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);

  sub_257ECFD50();
}

void sub_257DD257C(double a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v8 = *(v28 + 16);

  if (v8)
  {
    v9 = 68.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  v10 = v9 + *&qword_2815480C0;
  v11 = v10 + sub_257DD1C7C();
  if (qword_281544800 != -1)
  {
    swift_once();
  }

  v12 = *&qword_2815480C8 + 12.0;
  v13 = swift_beginAccess();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);

  sub_257ECFD50();

  v18 = *(v29 + 16);

  if (v18)
  {
    v24 = 68.0;
  }

  else
  {
    v24 = 0.0;
  }

  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);

  sub_257ECFD50();

  v25 = *(v29 + 16);

  if (v25)
  {
    v26 = 10.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = v11 + v12 * 0.4;
  if (v27 < a1 && v27 > v11 + v12 + (v24 + v26) * 0.4)
  {
    __break(1u);
    __break(1u);
  }
}

double block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257DD2A10(uint64_t a1, double a2, double a3)
{
  if (v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] == 1)
  {
    v7 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
    swift_beginAccess();
    v8 = *&v3[v7];
    if (v8 >> 62)
    {
LABEL_19:
      v9 = sub_257ED0210();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return 0;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C72E20](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      [v3 convertPoint:v11 toCoordinateSpace:{a2, a3}];
      v14 = v13;
      v16 = v15;
      type metadata accessor for MFPassthroughView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      [v12 bounds];
      v24.x = v14;
      v24.y = v16;
      v18 = CGRectContainsPoint(v25, v24);

      if (v18)
      {

        return 1;
      }
    }

    v19 = v17;

    v20 = [v19 pointInside:a1 withEvent:{v14, v16}];

    return v20;
  }

  else
  {
    v23.receiver = v3;
    v23.super_class = type metadata accessor for MFPassthroughView();
    return objc_msgSendSuper2(&v23, sel_pointInside_withEvent_, a1, a2, a3);
  }
}

id sub_257DD2C74(unint64_t a1, double a2, double a3)
{
  v26.receiver = v3;
  v26.super_class = type metadata accessor for MFPassthroughView();
  v7 = objc_msgSendSuper2(&v26, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = v7;
  if (v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] != 1 || v7 != 0)
  {
    return v8;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (v11 >> 62)
  {
LABEL_25:
    v12 = sub_257ED0210();
    if (v12)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v25 = a1;

  for (a1 = 0; ; ++a1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x259C72E20](a1, v11);
    }

    else
    {
      if (a1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v13 = *(v11 + 8 * a1 + 32);
    }

    v14 = v13;
    v15 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for MFContainedCardView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      break;
    }

LABEL_9:

    if (v15 == v12)
    {

      return 0;
    }
  }

  v8 = v16;
  [v3 convertPoint:v16 toCoordinateSpace:{a2, a3}];
  v18 = v17;
  v20 = v19;
  v21 = v14;
  [v8 bounds];
  v28.origin.x = UIEdgeInsetsInsetRect(v22);
  v27.x = v18;
  v27.y = v20;
  if (!CGRectContainsPoint(v28, v27))
  {

    goto LABEL_9;
  }

  v24 = [v8 hitTest:v25 withEvent:{a2, a3}];

  if (v24)
  {

    return v24;
  }

  return v8;
}

id sub_257DD2F4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MFPassthroughView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_257DD2FD0()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v32 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_257ECF4C0();
    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = v14;
    if (!v14)
    {
      sub_257ECF500();
      v15 = sub_257ECF4C0();
    }

    v32 = sub_257ECF500();
    v33 = v16;
    sub_257BDAB08();
    v17 = sub_257ED0100();
    v19 = v18;

    v20 = sub_257E003E8();
    v21 = sub_257E00504();
    sub_257DFD370(v17, v19, v20, v21);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  sub_257DD33B8();
  v22 = qword_281548350 + 16;
  swift_beginAccess();
  v31 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v23 = sub_257ECF110();
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  *&v30[-16] = &v31;
  *&v30[-8] = v22;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  *(swift_allocObject() + 16) = v1;
  sub_257ECC3F0();
  v28 = v1;
  sub_257ECD2A0();

  return result;
}

void sub_257DD33B8()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257ECD480();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "Starting People Detection ARSession Utilities", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v13)
  {
    v14 = qword_281544FE0;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v17[15] == 1)
    {
      v16 = *&v15[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
      if (v16)
      {
        [v16 setHidden_];
      }

      sub_257DD3EB0();
      sub_257D1A130();
    }
  }
}

uint64_t sub_257DD35E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DD36A0, 0, 0);
}

uint64_t sub_257DD36A0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_257DD3760;

  return sub_257CD6110();
}

uint64_t sub_257DD3760()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DD389C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257DD389C(__n128 a1)
{
  sub_257ECD4B0();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Could not reset video captioning state", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 24);

  (*(v6 + 8))(v5, v7);

  v8 = *(v1 + 8);

  return v8();
}

void sub_257DD39A4()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView))
  {
    v16 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v17 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
    swift_beginAccess();
    [*(v16 + v17) setUseSoundFeedback_];
    [*(v16 + v17) setUseHapticFeedback_];
    v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning;
    if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning) & 1) == 0)
    {
      v34[0] = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v21 = sub_257ECF4C0();
      v22 = sub_257ECF4C0();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      v24 = v23;
      if (!v23)
      {
        sub_257ECF500();
        v24 = sub_257ECF4C0();
      }

      v25 = sub_257ECF500();
      v27 = v26;
      UIAccessibilitySpeakAndDoNotBeInterrupted();

      v34[1] = v25;
      v34[2] = v27;
      sub_257BDAB08();
      v28 = sub_257ED0100();
      v30 = v29;

      v31 = sub_257E003E8();
      v32 = sub_257E00504();
      sub_257DFD370(v28, v30, v31, v32);

      v18 = v34[0];
    }

    *v8 = 0;
    *(v8 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v8, &v15[v9[5]]);
    v15[v9[6]] = 1;
    v15[v9[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v33 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
    *&v15[v9[8]] = v33;
    sub_257CBBC80(v15);
    sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
    sub_257DD3D48();
    *(v1 + v18) = 0;
  }
}

double sub_257DD3D48()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7 == 1)
  {
    sub_257BD2C2C(0, &qword_27F8F8060, 0x277CE53B0);
    if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
    {
      v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
      v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4)
      {
        v5 = [v4 configuration];
        if (v5)
        {
          v6 = v5;
          [v5 setFrameSemantics_];
        }
      }
    }

    return sub_257D1A130();
  }

  return result;
}

double sub_257DD3EB0()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  *&result = MEMORY[0x28223BE20](v10, v11, v12, v13, v14).n128_u64[0];
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
  if (v20)
  {
    v50 = v16;
    v51 = v15;
    v52 = v3;
    v21 = qword_281544FE0;
    v49 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_281548348;
    v23 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v24 = v23[1];
    v25 = v23[2];
    aBlock = *v23;
    v55 = v24;
    v56 = v25;
    v26 = qword_2815447E0;

    if (v26 != -1)
    {
      v27 = swift_once();
    }

    MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
    *(&v49 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
    sub_257ECFD50();

    v32 = v61;
    v33 = v22 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionCenterDetection;
    v34 = swift_beginAccess();
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    aBlock = *v33;
    v55 = v35;
    LOBYTE(v56) = v36;
    MEMORY[0x28223BE20](v34, v37, v38, v39, v40);
    *(&v49 - 2) = &aBlock;

    sub_257ECFD50();

    v41 = v60;
    LOBYTE(v35) = sub_257C592D0(2u, v32);
    LOBYTE(v33) = sub_257C592D0(3u, v32);
    v42 = sub_257C592D0(1u, v32);

    v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback] = v42;
    v43 = sub_257E0131C();
    [v43 setIsCenterDetectionEnabled_];

    v44 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
    v45 = v49;
    swift_beginAccess();
    v45[v44] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = v1;
    *(v46 + 24) = v35 & 1;
    *(v46 + 25) = v33 & 1;
    v58 = sub_257DD52E0;
    v59 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_257D231C0;
    v57 = &block_descriptor_51;
    v47 = _Block_copy(&aBlock);
    v48 = v1;
    sub_257ECF150();
    v53 = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v19, v9, v47);
    _Block_release(v47);

    (*(v52 + 8))(v9, v2);
    (*(v50 + 8))(v19, v51);
  }

  return result;
}

id sub_257DD43C0(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  return [*(v5 + v6) setUseHapticFeedback_];
}

double sub_257DD444C(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v7 = sub_257E0131C();
  [v7 computePersonDetectionFromFrame:a2 interfaceOrientation:a3];

  sub_257E013B4();
  v8 = [a2 capturedImage];
  v9 = sub_257BEA9CC(v8);

  v10 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  sub_257ECC3F0();
  v11 = [v10 detectedPersonArray];
  sub_257BD2C2C(0, &qword_27F8F5938, off_279852418);
  v12 = sub_257ECF810();

  v13 = [a2 capturedImage];
  sub_257BEB4A0(v12, v9, v13);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v25 == 1)
  {
    swift_beginAccess();
    v15 = qword_2815447E0;

    if (v15 != -1)
    {
      v16 = swift_once();
    }

    MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
    sub_257ECFD50();

    if (v24 == 1)
    {
      v21 = [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager) detectedPersonArray];
      sub_257BD2C2C(0, &qword_27F8F5938, off_279852418);
      v22 = sub_257ECF810();

      v23 = static SpatialPersonDetection.spatialize(_:frame:orientation:)(v22, a2, a3);

      sub_257C4662C(v23);
    }
  }

  return result;
}

uint64_t sub_257DD47B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 + 196) = a5;
  *(v5 + 192) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 64) = swift_task_alloc();
  v6 = sub_257ECDA30();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DD48EC, 0, 0);
}

id sub_257DD48EC(__n128 a1)
{
  v2 = *(v1 + 16);
  sub_257ECD4B0();
  v3 = v2;
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 16);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    [v6 timestamp];
    *(v7 + 4) = v8;
    _os_log_impl(&dword_257BAC000, v4, v5, "Timestamp for frame: %f before generating caption", v7, 0xCu);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  v9 = *(v1 + 96);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = *(v1 + 16);

  v14 = *(v11 + 8);
  *(v1 + 104) = v14;
  *(v1 + 112) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v10);
  result = [v13 capturedImage];
  *(v1 + 120) = result;
  if (v12)
  {
    v16 = result;
    [*(v1 + 32) screenRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = swift_task_alloc();
    *(v1 + 128) = v25;
    *v25 = v1;
    v25[1] = sub_257DD4AE8;

    return sub_257CD6414(v16, v18, v20, v22, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DD4AE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_257DD5118;
  }

  else
  {
    v6 = sub_257DD4C1C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_257DD4C1C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = (*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
    v3 = *v2 == *(v0 + 136) && v1 == v2[1];
    if (v3 || (sub_257ED0640() & 1) != 0)
    {

LABEL_12:

      v18 = *(v0 + 8);

      return v18();
    }

    v20 = *(v0 + 136);
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 48);
    v32 = *(v0 + 192);
    v25 = *(v0 + 24);
    v24 = *(v0 + 32);
    *v2 = v20;
    v2[1] = v1;

    *(v0 + 160) = *(v25 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine);
    *v23 = v24;
    *(v23 + 8) = v32;
    *(v23 + 16) = v20;
    *(v23 + 24) = v1;
    swift_storeEnumTagMultiPayload();
    v26 = v24;
    sub_257ECCCE0();
    sub_257C15EC0(v23, v21 + v22[5]);
    *(v21 + v22[6]) = 1;
    *(v21 + v22[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v29, type metadata accessor for MAGOutputEvent.EventType);
    *(v27 + *(v28 + 32)) = v30;
    sub_257ECF900();
    *(v0 + 168) = sub_257ECF8F0();
    v14 = sub_257ECF8B0();
    v16 = v31;
    v17 = sub_257DD4FA8;
  }

  else
  {
    if ((*(v0 + 196) & 1) == 0)
    {
      goto LABEL_12;
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 192);
    v8 = *(v0 + 32);
    *(v0 + 176) = *(*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine);
    *v6 = v8;
    *(v6 + 8) = v7;
    swift_storeEnumTagMultiPayload();
    v9 = v8;
    sub_257ECCCE0();
    sub_257C15EC0(v6, v4 + v5[5]);
    *(v4 + v5[6]) = 1;
    *(v4 + v5[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v12, type metadata accessor for MAGOutputEvent.EventType);
    *(v10 + *(v11 + 32)) = v13;
    sub_257ECF900();
    *(v0 + 184) = sub_257ECF8F0();
    v14 = sub_257ECF8B0();
    v16 = v15;
    v17 = sub_257DD5060;
  }

  return MEMORY[0x2822009F8](v17, v14, v16);
}

uint64_t sub_257DD4FA8()
{
  v1 = *(v0 + 64);

  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DD5060()
{
  v1 = *(v0 + 64);

  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DD5118(__n128 a1)
{
  sub_257ECD4B0();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBE0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[13];
  v7 = v1[11];
  v8 = v1[9];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Could not update people detection state", v9, 2u);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  v6(v7, v8);

  v10 = v1[1];

  return v10();
}

uint64_t sub_257DD524C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257BE3DE0;

  return sub_257DD35E0(v2);
}

double block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

void sub_257DD5308(void *a1)
{
  v2 = v1;
  v122 = a1;
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v118, v10, v11, v12, v13);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECF120();
  *&v121 = *(v16 - 1);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_257ECF190();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v23, v24, v25, v26);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v29 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v123 = v29;
  if (aBlock)
  {
    goto LABEL_54;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v117 = v3;
    v37 = v9;
    v38 = v15;
    v39 = v123 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    aBlock = *v39;
    v129 = v40;
    LOBYTE(v130) = v41;
    v42 = qword_2815447E0;

    if (v42 != -1)
    {
      v43 = swift_once();
    }

    MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
    *(&v113 - 2) = &aBlock;
    sub_257ECFD50();

    v15 = v38;
    v9 = v37;
    v3 = v117;
    if (v134 == 1)
    {
LABEL_54:
      v30 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
      if (*(v30 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
      {
        v31 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
        if (v31)
        {
          v115 = 0;
          v113 = v9;
          v114 = v15;
          v32 = v31;
          v33 = v122;
          [v122 timestamp];
          v35 = v34;
          v36 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
          swift_beginAccess();
          if (v35 - *(v30 + v36) < 0.1)
          {

            return;
          }

          v116 = v32;
          [v33 timestamp];
          *(v30 + v36) = v48;
          v49 = [objc_opt_self() currentDevice];
          v50 = [v49 orientation];

          v117 = v3;
          if ((v50 - 2) > 2)
          {
            v51 = 1;
          }

          else
          {
            v51 = qword_257EEA110[(v50 - 2)];
          }

          v52 = *(v30 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
          v53 = swift_allocObject();
          v54 = v122;
          v53[2] = v2;
          v53[3] = v54;
          v53[4] = v51;
          v132 = sub_257DD6040;
          v133 = v53;
          aBlock = MEMORY[0x277D85DD0];
          v129 = 1107296256;
          v130 = sub_257D231C0;
          v131 = &block_descriptor_26_1;
          v55 = _Block_copy(&aBlock);
          v56 = v52;
          v57 = v2;
          v122 = v54;
          sub_257ECF150();
          v127[0] = MEMORY[0x277D84F90];
          sub_257BD5668();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
          sub_257BD56C0();
          sub_257ED0180();
          MEMORY[0x259C72880](0, v28, v22, v55);
          _Block_release(v55);

          (*(v121 + 8))(v22, v16);
          (*(v119 + 8))(v28, v120);

          swift_getKeyPath();
          swift_getKeyPath();
          v58 = v123;
          sub_257ECDD60();

          if (aBlock != 1)
          {

            return;
          }

          v59 = sub_257E0131C();
          v60 = [v59 detectedPersonArray];

          sub_257BD2C2C(0, &qword_27F8F5938, off_279852418);
          v61 = sub_257ECF810();

          v62 = v116;
          if (v61 >> 62)
          {
            if (sub_257ED0210())
            {
              goto LABEL_19;
            }
          }

          else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_19:
            if ((v61 & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x259C72E20](0, v61);
            }

            else
            {
              if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_49;
              }

              v63 = *(v61 + 32);
            }

            v64 = v63;

            if ([v64 isEnabled] && objc_msgSend(v64, sel_isValid))
            {
              v61 = v64;
              goto LABEL_30;
            }

LABEL_29:
            v65 = [objc_opt_self() InvalidPersonData];
            LOBYTE(aBlock) = 1;
            v61 = v65;
            sub_257CC6340(&aBlock);
            if (!v61)
            {
              __break(1u);
              goto LABEL_51;
            }

LABEL_30:
            v16 = v61;
            [v16 position];
            v121 = v66;

            LODWORD(v61) = DWORD2(v121);
            sub_257DE1F00(v16, DWORD2(v121));

            v67 = [v122 capturedImage];
            sub_257DE6E3C(v67);

            if (!*&v57[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView])
            {
              goto LABEL_42;
            }

            [v16 screenRect];
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v75 = v74;
            v76 = [v57 view];
            if (v76)
            {
              v77 = v76;
              v78 = [v76 window];
              if (v78 && (v79 = v78, v80 = [v78 windowScene], v79, v80))
              {
                v81 = [v80 interfaceOrientation];
              }

              else
              {
                v81 = 0;
              }

              if (sub_257DE711C(v81, v61, v69, v71, v73, v75))
              {
                v62 = v57;
                v2 = v58;
                v82 = &v58[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks];
                swift_beginAccess();
                v83 = *(v82 + 1);
                v84 = *(v82 + 2);
                v127[0] = *v82;
                v127[1] = v83;
                v127[2] = v84;
                v85 = qword_2815447E0;

                if (v85 == -1)
                {
LABEL_38:
                  MEMORY[0x28223BE20](v86, v87, v88, v89, v90);
                  *(&v113 - 2) = v127;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
                  sub_257ECFD50();

                  v91 = 1;
                  v92 = sub_257C592D0(1u, v124[0]);

                  if (v92)
                  {
                    v93 = sub_257CC211C();
                    v94 = [v93 isSpeaking];

                    v91 = v94 ^ 1;
                  }

                  v95 = &v2[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled];
                  v96 = swift_beginAccess();
                  v97 = *(v95 + 1);
                  v98 = v95[16];
                  v124[0] = *v95;
                  v124[1] = v97;
                  v125 = v98;
                  MEMORY[0x28223BE20](v96, v99, v100, v101, v102);
                  *(&v113 - 2) = v124;

                  sub_257ECFD50();

                  if (v126 == 1)
                  {
                    v103 = swift_allocObject();
                    v104 = v122;
                    *(v103 + 16) = v122;
                    *(v103 + 24) = v62;
                    *(v103 + 32) = v16;
                    *(v103 + 40) = v61;
                    *(v103 + 44) = v91;
                    v105 = v62;
                    v106 = v104;
                    sub_257ECC3F0();
                    v107 = v16;
                    sub_257ECD2A0();
                  }

                  else
                  {
                    v108 = v116;
                    if (v91)
                    {
                      v109 = v113;
                      *v113 = v16;
                      *(v109 + 8) = v61;
                      swift_storeEnumTagMultiPayload();
                      v110 = v16;
                      v111 = v114;
                      sub_257ECCCE0();
                      v112 = v118;
                      sub_257C15EC0(v109, v111 + *(v118 + 20));
                      *(v111 + v112[6]) = 1;
                      *(v111 + v112[7]) = 0;
                      sub_257ECC3F0();
                      sub_257C15F24(v109, type metadata accessor for MAGOutputEvent.EventType);
                      *(v111 + v112[8]) = v2;
                      sub_257CBBC80(v111);

                      sub_257C15F24(v111, type metadata accessor for MAGOutputEvent);
                    }

                    else
                    {
                    }
                  }

                  return;
                }

LABEL_49:
                v86 = swift_once();
                goto LABEL_38;
              }

LABEL_42:

              return;
            }

LABEL_51:
            __break(1u);
            return;
          }

          goto LABEL_29;
        }
      }
    }
  }
}

uint64_t sub_257DD604C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257C167C4;

  return sub_257DD47B4(v2, v3, v4, v5, v6);
}

void sub_257DD6114()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v35 - v15;
  sub_257ECD4D0();
  v17 = sub_257ECDA20();
  v18 = sub_257ECFBD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v17, v18, "restoreZoomFromUserSettings", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  v20 = *(v3 + 8);
  v20(v16, v2);
  v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v21 contentSize];
  if (v23 == 0.0 && v22 == 0.0)
  {
    sub_257ECD4D0();
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_257BAC000, v24, v25, "Tried restoring zoom from user settings on scrollView with contentSize zero.", v26, 2u);
      MEMORY[0x259C74820](v26, -1, -1);
    }

    v20(v9, v2);
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    v27 = *&v35[1];
    [v21 minimumZoomScale];
    v29 = v28;
    v30 = 1.0;
    if (v27 <= 1.0)
    {
      v30 = v27;
    }

    if (v27 > 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    [v21 maximumZoomScale];
    v33 = v32;
    [v21 minimumZoomScale];
    sub_257DDDFE4(0, v29 + v31 * (v33 - v34));
    sub_257DDB720();
  }
}

_OWORD *sub_257DD643C()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "resetImageCentering", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result center];
    v17 = v16;
    v19 = v18;

    return sub_257DDD9A0(v13, v17, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_257DD65E0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v4)
  {
    v1 = sub_257ED0640();

    if ((v1 & 1) == 0)
    {
      v3 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView) panGestureRecognizer];
      [v3 setEnabled_];
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_257DD6750()
{
  v1[45] = v0;
  v2 = sub_257ECD900();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = sub_257ECDA30();
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  sub_257ECF900();
  v1[58] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[59] = v6;
  v1[60] = v5;

  return MEMORY[0x2822009F8](sub_257DD6920, v6, v5);
}

uint64_t sub_257DD6920()
{
  v43 = v0;
  v1 = *(v0 + 360);
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  *(v0 + 488) = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  if (*(v1 + v2) || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument), (*(v0 + 496) = v5) == 0))
  {

    goto LABEL_3;
  }

  v6 = v5;
  v7 = sub_257EB69B8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257E1BA40();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

LABEL_3:

    v3 = *(v0 + 8);

    return v3();
  }

  v11 = *(v0 + 360);
  type metadata accessor for AppViewController(0);
  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    while (1)
    {

      v14 = [v12 parentViewController];
      if (!v14)
      {
        break;
      }

      v12 = v14;
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        goto LABEL_13;
      }
    }

    sub_257ECD3F0();
    v31 = sub_257ECDA20();
    v32 = sub_257ECFBE0();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 432);
    v34 = *(v0 + 440);
    v36 = *(v0 + 424);
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_257BAC000, v31, v32, "Could not present reader mode from freeze frame. AppViewController not found", v37, 2u);
      MEMORY[0x259C74820](v37, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v34, v36);
    goto LABEL_3;
  }

LABEL_13:
  *(v0 + 504) = v12;
  *(v0 + 512) = v13;

  if (!AXDeviceSupportsAccessibilityReader())
  {
    v41 = (v0 + 242);

    type metadata accessor for MFReaderSpeechFormatterModel(0);
    v17 = swift_allocObject();
    sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v17 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v42[0] = *(v0 + 241);
    v18 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager(0));
    v19 = v6;
    v39 = sub_257CD4C68(v5, v42);
    v40 = v19;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v20 = qword_281548350 + 184;
    swift_beginAccess();
    *v41 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 408);
    v22 = *(v0 + 416);
    v23 = *(v0 + 400);
    v38 = *(v0 + 360);
    sub_257ECF110();
    v24 = swift_task_alloc();
    *(v24 + 16) = v41;
    *(v24 + 24) = v20;
    sub_257ECFD40();

    (*(v21 + 8))(v22, v23);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 243) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v25 = swift_allocObject();
    *(v25 + 16) = v38;
    v26 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController(0));
    v27 = v38;
    v28 = v39;
    sub_257ECC3F0();
    sub_257CCAC60(v28, sub_257DE0AD0, v25, (v0 + 80));
    v29 = sub_257ECE620();

    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 1;
    sub_257ECA76C(v29, v0 + 208, 0x3FD0000000000000, 1u);

    v30 = *(v1 + v2);
    *(v1 + v2) = v29;

    goto LABEL_3;
  }

  v15 = v6;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_257DD6F78;

  return sub_257DFCB40(v5);
}

uint64_t sub_257DD6F78(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  *(*v1 + 247) = a1;

  v4 = *(v2 + 480);
  v5 = *(v2 + 472);

  return MEMORY[0x2822009F8](sub_257DD70C0, v5, v4);
}

void sub_257DD70C0()
{
  if (*(v0 + 247) == 1)
  {
    v1 = (v0 + 246);

    sub_257ECD8C0();
    v2 = sub_257ECDA20();
    v3 = sub_257ECFBD0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_257BAC000, v2, v3, "Successfully opened Accessibility Reader from Magnifier", v4, 2u);
      MEMORY[0x259C74820](v4, -1, -1);
    }

    v5 = *(v0 + 456);
    v6 = *(v0 + 424);
    v7 = *(v0 + 432);

    (*(v7 + 8))(v5, v6);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v8 = qword_281548350 + 184;
    swift_beginAccess();
    *v1 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v13 = *(v0 + 400);
    sub_257ECF110();
    v14 = swift_task_alloc();
    *(v14 + 16) = v1;
    *(v14 + 24) = v8;
    sub_257ECFD40();

    (*(v12 + 8))(v11, v13);
    swift_endAccess();
  }

  else
  {
    v53 = (v0 + 244);
    sub_257ECD8C0();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Failed to open Accessibility Reader from Magnifier - Falling back to in-app mode.", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    v18 = *(v0 + 496);
    v19 = *(v0 + 448);
    v20 = *(v0 + 424);
    v21 = *(v0 + 432);
    v22 = *(v0 + 384);
    v23 = *(v0 + 392);
    v24 = *(v0 + 368);
    v25 = *(v0 + 376);

    (*(v21 + 8))(v19, v20);
    sub_257ECD930();
    swift_allocObject();
    sub_257ECD920();
    sub_257ECD910();

    (*(v25 + 16))(v22, v23, v24);
    v26 = objc_allocWithZone(sub_257ECD8F0());
    v27 = v18;
    v51 = sub_257ECD8E0();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v28 = qword_281548350 + 184;
    swift_beginAccess();
    *v53 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 488);
    v29 = *(v0 + 408);
    v30 = *(v0 + 416);
    v31 = *(v0 + 400);
    v32 = *(v0 + 360);
    sub_257ECF110();
    v33 = swift_task_alloc();
    *(v33 + 16) = v53;
    *(v33 + 24) = v28;
    sub_257ECFD40();

    (*(v29 + 8))(v30, v31);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 245) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController(0));
    v36 = v32;
    v37 = v51;
    sub_257ECC3F0();
    sub_257CCAAAC(v37, sub_257DE0AD8, v34, (v0 + 16));

    v38 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v38;
    v39 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v39;
    v40 = sub_257ECE620();

    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 1;
    v41 = v40;
    sub_257ECA76C(v41, v0 + 248, 0x3FD0000000000000, 1u);
    v42 = *&v32[v52];
    *&v32[v52] = v41;
    v43 = v41;

    v44 = [v43 view];
    if (!v44)
    {
      __break(1u);
      return;
    }

    v46 = *(v0 + 496);
    v45 = *(v0 + 504);
    v47 = *(v0 + 392);
    v48 = *(v0 + 368);
    v49 = *(v0 + 376);

    [v44 setAccessibilityViewIsModal_];

    (*(v49 + 8))(v47, v48);
  }

  v50 = *(v0 + 8);

  v50();
}

id sub_257DD7744()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_257ECF3B0()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_257DD77B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v58 - v6;
  v8 = sub_257ECF370();
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF120();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECF190();
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image;
  v32 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
  if (v32)
  {
    v65 = v8;
    v33 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
    v62 = v29;
    v63 = v28;
    v66 = v32;
    [v33 setImage_];
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v64 = v14;
    v61 = v0;
    v60 = sub_257ECFD30();
    v34 = swift_allocObject();
    *(v34 + 16) = v0;
    aBlock[4] = sub_257DE0664;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33_3;
    v35 = _Block_copy(aBlock);
    v58 = v0;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    v59 = MEMORY[0x277D83970];
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    v36 = v7;
    v37 = v58;
    sub_257ED0180();
    v38 = v60;
    MEMORY[0x259C72880](0, v31, v22, v35);
    _Block_release(v35);

    (*(v16 + 8))(v22, v15);
    (*(v62 + 8))(v31, v63);
    v39 = sub_257DD7744();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_27F8F97B8, MEMORY[0x277CE30A0], MEMORY[0x277CE30A8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97C0, &qword_257EEA2A0);
    sub_257BD2D4C(&qword_27F8F97C8, &qword_27F8F97C0, &qword_257EEA2A0, v59);
    sub_257ED0180();
    sub_257ECF350();

    v40 = *&v37[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction];
    sub_257ECF3A0();

    v41 = *&v61[v67];
    if (v41)
    {
      v42 = v61;
      v43 = sub_257ECF930();
      v44 = *(*(v43 - 8) + 56);
      v44(v36, 1, 1, v43);
      sub_257ECF900();
      v45 = v41;
      v46 = v37;
      v47 = v45;
      v48 = sub_257ECF8F0();
      v49 = swift_allocObject();
      v50 = MEMORY[0x277D85700];
      v49[2] = v48;
      v49[3] = v50;
      v51 = v50;
      v49[4] = v46;
      v49[5] = v47;
      sub_257C3FBD4(0, 0, v36, &unk_257EEA2C0, v49);

      v52 = *&v42[v67];
      if (v52)
      {
        v44(v36, 1, 1, v43);
        v53 = v52;
        v54 = v46;
        v55 = v53;
        v56 = sub_257ECF8F0();
        v57 = swift_allocObject();
        v57[2] = v56;
        v57[3] = v51;
        v57[4] = v54;
        v57[5] = v55;
        sub_257C3FBD4(0, 0, v36, &unk_257EEA2B0, v57);
      }
    }

    sub_257DD7E4C();
  }
}

void sub_257DD7DF8(void *a1)
{
  v1 = [a1 viewIfLoaded];
  [v1 setNeedsLayout];
}

void sub_257DD7E4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 getBlocks];
    if (v3)
    {
      v4 = v3;
      sub_257BD2C2C(0, &qword_27F8F5FA8, 0x277CE2D70);
      v5 = sub_257ECF810();

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      if (v5 >> 62)
      {
        sub_257ED0210();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    sub_257ECDD70();
  }
}

uint64_t sub_257DD8000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_257ECDA30();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_257ECF370();
  v5[8] = swift_task_alloc();
  v7 = sub_257ECF2F0();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_257ECF300();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  sub_257ECF900();
  v5[15] = sub_257ECF8F0();
  v10 = sub_257ECF8B0();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x2822009F8](sub_257DD81D8, v10, v9);
}

uint64_t sub_257DD81D8()
{
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97D0, &qword_257EEA2C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  sub_257ECF2E0();
  v0[2] = v1;
  sub_257DE066C(&qword_27F8F97D8, MEMORY[0x277CE3078], MEMORY[0x277CE3080]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97E0, &qword_257EEA2D0);
  sub_257BD2D4C(&qword_27F8F97E8, &qword_27F8F97E0, &qword_257EEA2D0, MEMORY[0x277D83970]);
  sub_257ED0180();
  sub_257ECF310();
  v2 = [v7 imageOrientation];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_257DD83C4;
  v4 = v0[14];
  v5 = v0[4];

  return MEMORY[0x2821350E0](v5, v2, v4);
}

uint64_t sub_257DD83C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_257DD8624;
  }

  else
  {
    v4[20] = a1;
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_257DD84EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257DD84EC()
{
  v1 = v0[3];

  v2 = sub_257DD7744();
  sub_257ECC3F0();
  sub_257ECF3A0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  sub_257ECF360();
  sub_257ECF350();

  v5 = *(v1 + v3);
  sub_257ECF390();

  v6 = *(v1 + v3);
  sub_257ECF380();

  (*(v0[13] + 8))(v0[14], v0[12]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_257DD8624()
{
  v1 = v0[19];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle ImageAnalyzer Text Request. Error : %@", v6, 0xCu);
    sub_257BE4084(v7, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v7, -1, -1);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  v10 = v0[19];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  (*(v12 + 8))(v11, v13);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_257DD87E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v1 bounds];
  MidX = CGRectGetMidX(v10);
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView);
  [v3 frame];
  if (vabdd_f64(MidX, CGRectGetMidX(v11)) >= 3.0)
  {
    v5 = 0;
  }

  else
  {
    [v1 bounds];
    MidY = CGRectGetMidY(v12);
    [v3 frame];
    v5 = vabdd_f64(MidY, CGRectGetMidY(v13)) < 3.0;
  }

  [v1 zoomScale];
  v7 = v6;
  [v1 minimumZoomScale];
  return (vabdd_f64(v7, v8) < 0.001) & v5;
}

uint64_t sub_257DD88DC()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9, v10, v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_257DE083C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_55_0;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);

  (*(v21 + 8))(v7, v1);
  return (*(v8 + 8))(v14, v20);
}

double sub_257DD8BD0()
{
  v0 = sub_257ECF130();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_257ECFD10();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v8, v9, v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v15, v16, v17, v18);
  v20 = &v35 - v19;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8, &qword_257EEC8D0);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v21, v22, v23, v24);
  v26 = &v35 - v25;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  (*(v1 + 104))(v7, *MEMORY[0x277D851C0], v0);
  v27 = sub_257ECFD90();
  v28 = v0;
  v29 = v27;
  (*(v1 + 8))(v7, v28);
  v42 = v29;
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v30 = v36;
  sub_257ECDE00();

  (*(v37 + 8))(v13, v39);
  (*(v14 + 8))(v20, v30);
  swift_allocObject();
  v31 = v41;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8, &qword_257EEC8D0, MEMORY[0x277CBCD20]);
  v32 = v40;
  v33 = sub_257ECDE50();

  (*(v38 + 8))(v26, v32);
  *(v31 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription) = v33;

  return result;
}

uint64_t sub_257DD909C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  v2 = [v1 isZooming];
  v3 = [v1 isDecelerating];
  v4 = [v1 isTracking];
  v5 = [v1 isDragging];
  v6 = [v1 isZoomBouncing];
  result = 1;
  if ((v2 & 1) == 0 && (v3 & 1) == 0 && (v4 & 1) == 0 && (v5 & 1) == 0 && (v6 & 1) == 0)
  {
    result = [v1 pinchGestureRecognizer];
    if (result)
    {
      v8 = result;
      v9 = [result state];

      return qword_286905E80 == v9 || unk_286905E88 == v9 || qword_286905E90 == v9;
    }
  }

  return result;
}

id sub_257DD91A4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_longPress_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257DD9228(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v3 action:*a2];
    [v8 setNumberOfTapsRequired_];
    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_257DD92BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257DD93AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_257ECCB70();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, sel_description, v9);
  v13 = sub_257ECF500();
  v15 = v14;

  v24 = v13;
  v25 = v15;
  MEMORY[0x259C72150](2128928, 0xE300000000000000);
  v16 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
  swift_beginAccess();
  if ((*(v4 + 48))(&v1[v16], 1, v3))
  {
    v17 = 0xE100000000000000;
    v18 = 63;
  }

  else
  {
    (*(v4 + 16))(v11, &v1[v16], v3);
    v19 = sub_257ECCB50();
    v17 = v20;
    (*(v4 + 8))(v11, v3);
    v18 = v19;
  }

  MEMORY[0x259C72150](v18, v17);

  return v24;
}

id sub_257DD9568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_257ECFD20();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v15 = sub_257ECF190();
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v21 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *&v2[v21] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument] = 0;
  v22 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *&v2[v22] = sub_257ECF330();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction] = 0;
  v23 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = 0;
  v29 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v37 = v23;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  *&v2[v29] = sub_257ECFD80();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction] = 0;
  v24 = &v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
  *v24 = 0u;
  v24[1] = 0u;
  v25 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *&v2[v25] = sub_257DDA774();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController] = 0;
  v26 = v33;
  sub_257BE3098(v33, &v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset]);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService] = v35;
  v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension] = 0;
  v36.receiver = v3;
  v36.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  sub_257BE30FC(v26);
  return v27;
}

id sub_257DD99DC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v38 = a3;
  v37 = a2;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_257ECFD20();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v16 = sub_257ECF190();
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *&v3[v21] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v22 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *&v3[v22] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument] = 0;
  v23 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *&v3[v23] = sub_257ECF330();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction] = 0;
  v24 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = 0;
  v31 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v40 = v24;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *&v3[v31] = sub_257ECFD80();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction] = 0;
  v25 = &v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
  *v25 = 0u;
  v25[1] = 0u;
  v26 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *&v3[v26] = sub_257DDA774();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController] = 0;
  v27 = v35;
  sub_257BE3098(v35, &v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset]);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService] = v37;
  v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension] = v38;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
  sub_257BE30FC(v27);
  return v28;
}

void sub_257DD9E80()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  sub_257DDA164();
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v1 setImage_];
  v2 = sub_257DD7744();
  [v1 addInteraction_];

  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet];

  v4 = [v1 layer];
  sub_257D18590(v3);
  sub_257EB7394(v5);

  v6 = sub_257ECF7F0();

  [v4 setFilters_];

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_257DD9228(&OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer, &selRef_singleTap_, 1);
  [v8 addGestureRecognizer_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_257DD91A4();
  [v11 addGestureRecognizer_];

  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    v15 = sub_257DD92BC();
    [v14 addInteraction_];

    v16 = sub_257DD9228(&OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer, &selRef_doubleTap_, 2);
    [v1 addGestureRecognizer_];

    [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] requireGestureRecognizerToFail_];
    [v1 setUserInteractionEnabled_];
    v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
    sub_257DD88DC();
    v17 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_labelTapped_];
    v18 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
    [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel] setUserInteractionEnabled_];
    [*&v0[v18] addGestureRecognizer_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_257DDA164()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  [v1 setAlpha_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 setAutoresizesSubviews_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 setAutoresizingMask_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  [v10 setClearsContextBeforeDrawing_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  [v12 setContentMode_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  [v14 setHidden_];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  [v16 setMultipleTouchEnabled_];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  [v18 setOpaque_];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  [v20 setUserInteractionEnabled_];

  v22 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  [v22 setAlpha_];
  [v22 setAlwaysBounceHorizontal_];
  [v22 setAlwaysBounceVertical_];
  [v22 &selRef:0 contextMenuInteraction:? willEndForConfiguration:? animator:? + 6];
  [v22 &selRef:18 objectForKey:?];
  [v22 setBounces_];
  [v22 setBouncesHorizontally_];
  [v22 setBouncesZoom_];
  [v22 setCanCancelContentTouches_];
  [v22 setClearsContextBeforeDrawing_];
  [v22 setContentMode_];
  [v22 setDelaysContentTouches_];
  [v22 setDirectionalLockEnabled_];
  [v22 setHidden_];
  [v22 setIndicatorStyle_];
  [v22 setMultipleTouchEnabled_];
  [v22 setOpaque_];
  [v22 setPagingEnabled_];
  [v22 setScrollEnabled_];
  [v22 setShowsHorizontalScrollIndicator_];
  [v22 setShowsVerticalScrollIndicator_];
  [v22 setUserInteractionEnabled_];
  [v22 setMinimumZoomScale_];
  [v22 setMaximumZoomScale_];
  [v22 setDecelerationRate_];
  [v22 setDelegate_];
  [v22 setPreservesCenterDuringRotation_];
  [v22 setContentInsetAdjustmentBehavior_];
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v23 setAlpha_];
  [v23 setAutoresizesSubviews_];
  [v23 setAutoresizingMask_];
  [v23 setClearsContextBeforeDrawing_];
  [v23 setContentMode_];
  [v23 setHidden_];
  [v23 setHighlighted_];
  [v23 &selRef:0 setPaused:? + 6];
  [v23 setOpaque_];
  [v23 setUserInteractionEnabled_];
  [v22 addSubview_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 addSubview_];
}

id sub_257DDA774()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v1 = sub_257ECF4C0();
  [v0 setText_];

  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  [v0 setTextColor_];

  v4 = v0;
  v5 = [v2 whiteColor];
  [v4 setBackgroundColor_];

  [v4 setUserInteractionEnabled_];
  v6 = [objc_opt_self() systemFontOfSize_];
  [v4 setFont_];

  return v4;
}

void sub_257DDA8E8(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257BEE444;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_131;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257BEE44C;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_137;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

void sub_257DDAB34(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257DA0018;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_144_0;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257DA0038;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_151_1;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

void sub_257DDADE0(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9800, &qword_257EDBFA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9808, &qword_257EEA320);
  v13 = *(v12 - 8);
  *&v18 = MEMORY[0x28223BE20](v12, v14, v15, v16, v17).n128_u64[0];
  v20 = &v28[-v19];
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewWillAppear_, a1 & 1, v18);
  if ((v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v28[24])
    {
      v21 = sub_257ED0640();

      if ((v21 & 1) == 0)
      {
LABEL_10:
        sub_257DDB9B8();
        return;
      }
    }

    else
    {
    }

    v22 = &v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset];
    swift_beginAccess();
    v23 = *&v22[*(type metadata accessor for Asset(0) + 20)];
    if (v23)
    {
      v24 = *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = v23;
      v25 = v23;

      v26 = v1;
      sub_257DD77B8();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECCB70();
      sub_257BD2D4C(&qword_2815441A0, &qword_27F8F9800, &qword_257EDBFA8, MEMORY[0x277CBCEC8]);
      sub_257ECDDA0();
      (*(v5 + 8))(v11, v4);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_27F8F9810, &qword_27F8F9808, &qword_257EEA320, MEMORY[0x277CBCB10]);
      v27 = sub_257ECDE50();

      (*(v13 + 8))(v20, v12);
      *&v26[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = v27;

      return;
    }

    goto LABEL_10;
  }
}

double sub_257DDB248(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECCB70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13, v14, v15, v16);
  v17 = sub_257ECF190();
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v24 - 8, v25, v26, v27, v28);
  v30 = v42 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v42[0] = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42[1] = v23;
    v42[3] = v9;
    v34 = *(v11 + 16);
    v34(v30, a1, v10);
    (*(v11 + 56))(v30, 0, 1, v10);
    v42[2] = v3;
    v35 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    sub_257CB4B80(v30, &v33[v35]);
    swift_endAccess();
    sub_257ECF140();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v42[0];
    v34(v42[0], a1, v10);
    v38 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    (*(v11 + 32))(v39 + v38, v37, v10);
    aBlock[4] = sub_257DE0890;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_72_0;
    _Block_copy(aBlock);
    v42[4] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v40 = sub_257ECF1C0();

    *&v33[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = v40;
    sub_257ECC3F0();

    v41 = *&v33[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue];
    sub_257ECFD70();
  }

  return result;
}

void sub_257DDB6C0(uint64_t a1, void *a2)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 1;
  sub_257DD88DC();
  v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = a2;
  v5 = a2;

  sub_257DD77B8();
  sub_257DDB720();
}

void sub_257DDB720()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  *&v7 = MEMORY[0x28223BE20](v1, v3, v4, v5, v6).n128_u64[0];
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  [v10 minimumZoomScale];
  v12 = v11;
  [v10 maximumZoomScale];
  if (v12 <= v13)
  {
    sub_257ECD4D0();
    v14 = v0;
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      [v10 zoomScale];
      *(v17 + 4) = v18;
      _os_log_impl(&dword_257BAC000, v15, v16, "%f", v17, 0xCu);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    (*(v2 + 8))(v9, v1);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    [v10 zoomScale];
    v20 = v19;
    [v10 minimumZoomScale];
    if (v20 <= v21)
    {
      v20 = v21;
    }

    [v10 maximumZoomScale];
    if (v22 < v20)
    {
      v20 = v22;
    }

    [v10 minimumZoomScale];
    v24 = v20 - v23;
    [v10 maximumZoomScale];
    v26 = v25;
    [v10 minimumZoomScale];
    v28 = v24 / (v26 - v27);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v29[1] = v28;
    sub_257ECDD70();
  }
}

uint64_t sub_257DDB9B8()
{
  v1 = v0;
  v2 = sub_257ECF1B0();
  v107 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v106 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = v96 - v13;
  v15 = sub_257ECF190();
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v110 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_257ECF120();
  MEMORY[0x28223BE20](v104, v21, v22, v23, v24);
  v108 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29, v30);
  v32 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = v96 - v38;
  v40 = sub_257ECCB70();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43, v44, v45, v46);
  v103 = v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
  v111 = v96 - v52;
  MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
  v59 = v96 - v58;
  v60 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
  swift_beginAccess();
  sub_257C1C614(v1 + v60, v39);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    return sub_257BE4084(v39, &qword_27F8F5F30, &qword_257EDA9E0);
  }

  v105 = v41;
  v64 = *(v41 + 32);
  v63 = v41 + 32;
  v62 = v64;
  v64(v59, v39, v40);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v99 = v62;
  v100 = v63;
  v97 = v14;
  v98 = v2;
  v65 = v111;
  v109 = v59;
  sub_257ECCA60();
  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  v66 = v105;
  v101 = *(v105 + 16);
  v102 = v105 + 16;
  v101(v32, v65, v40);
  v67 = *(v66 + 56);
  v67(v32, 0, 1, v40);
  v68 = sub_257C746A0(v32);
  sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
  if (v68)
  {
    v69 = v109;
    v70 = sub_257C76CCC(v109);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 1;
    sub_257DD88DC();
    v71 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = v70;
    v72 = v70;

    sub_257DD77B8();
    v73 = *(v66 + 8);
    v73(v65, v40);
    return (v73)(v69, v40);
  }

  else
  {
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v101(v32, v111, v40);
    v67(v32, 0, 1, v40);
    v74 = sub_257C746A0(v32);
    sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
    v75 = MEMORY[0x277D84F90];
    v76 = v105;
    if (v74)
    {
      v77 = sub_257C76CCC(v109);
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 0;
      sub_257DD88DC();
      v78 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = v77;
      v79 = v77;

      sub_257DD77B8();
      v80 = v76;
      v81 = v103;
    }

    else
    {
      v82 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v81 = v103;
      v101(v103, v109, v40);
      v83 = (*(v76 + 80) + 24) & ~*(v76 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = v82;
      v99(v84 + v83, v81, v40);
      v117 = sub_257DE08C0;
      v118 = v84;
      aBlock = MEMORY[0x277D85DD0];
      v114 = 1107296256;
      v115 = sub_257D231C0;
      v116 = &block_descriptor_85;
      v96[1] = _Block_copy(&aBlock);
      v112 = v75;
      v96[0] = sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      v80 = v76;
      sub_257ED0180();
      sub_257ECF1F0();
      swift_allocObject();
      v85 = sub_257ECF1D0();

      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem) = v85;
      sub_257ECC3F0();

      sub_257ECFD70();
    }

    sub_257ECF140();
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101(v81, v109, v40);
    v87 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v86;
    v99(v88 + v87, v81, v40);
    v117 = sub_257DE09E8;
    v118 = v88;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_257D231C0;
    v116 = &block_descriptor_92_0;
    _Block_copy(&aBlock);
    v112 = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v89 = sub_257ECF1C0();

    v90 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem) = v89;

    v91 = v106;
    sub_257ECF1A0();
    v92 = v97;
    sub_257ECF220();
    v93 = *(v107 + 8);
    v94 = v98;
    result = v93(v91, v98);
    if (*(v1 + v90))
    {
      sub_257ECC3F0();
      sub_257ECFCD0();

      v93(v92, v94);
      v95 = *(v80 + 8);
      v95(v111, v40);
      return (v95)(v109, v40);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_257DDC4C8(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v6 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  v7 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  *&v2[v6] = 0;

  *&v2[v7] = 0;

  *&v2[v4] = 0;

  *&v2[v5] = 0;

  v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  sub_257DD88DC();
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;

  sub_257DD77B8();
  return [*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] setImage_];
}

void sub_257DDC680()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
    v12 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image;
    v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
    v14 = v13;
    LOBYTE(v13) = sub_257DDC7EC(v13);

    if (v13)
    {
      v15 = *&v0[v12];
      if (v15)
      {
        v16 = v15;
        [v16 size];
        if (v18 != 0.0 || v17 != 0.0)
        {
          [v16 size];
          [v1 setContentSize_];
        }
      }

      [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] sizeToFit];
      sub_257DDC90C();
      sub_257DD643C();
      sub_257DD6114();
      sub_257DD65E0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257DDC7EC(void *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = a1;
  [v2 size];
  if (v4 == 0.0 && v3 == 0.0 || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView), [v5 bounds], v7 = v6, objc_msgSend(v2, sel_size), vabdd_f64(v7, v8) >= 3.0) || (objc_msgSend(v5, sel_bounds), v10 = v9, objc_msgSend(v2, sel_size), vabdd_f64(v10, v11) >= 3.0) || (v12 = objc_msgSend(v5, sel_image)) == 0)
  {

LABEL_9:
    v15 = 1;
    return v15 & 1;
  }

  v13 = v12;
  sub_257BD2C2C(0, &qword_281543DF0, 0x277D755B8);
  v14 = sub_257ECFF50();

  v15 = v14 ^ 1;
  return v15 & 1;
}

void sub_257DDC90C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  if (v1)
  {
    v17 = v1;
    [v17 size];
    if (v3 != 0.0 || v2 != 0.0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
      [v17 size];
      [v4 setContentSize_];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      [v4 contentSize];
      v10 = v6 / v9;
      [v4 contentSize];
      v12 = v8 / v11;
      if (v8 / v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v8 / v11;
      }

      if (v10 > v12)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension))
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      [v4 setMinimumZoomScale_];
      sub_257D15BB4();
      [v4 setMaximumZoomScale_];
      sub_257DDDFE4(0, v15);
    }
  }
}

void *sub_257DDCB3C(uint64_t a1, char *a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v30 = v4;
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v28 = v12;
    v29 = v11;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v21 = sub_257C76CCC(a2);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v22 = sub_257ECFD30();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v21;
    aBlock[4] = sub_257DE0AB0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_104_0;
    v24 = _Block_copy(aBlock);
    v27 = v21;
    v25 = v20;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v18, v10, v24);
    _Block_release(v24);

    (*(v30 + 8))(v10, v3);
    return (*(v28 + 8))(v18, v29);
  }

  return result;
}

void *sub_257DDCEEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v32 = a5;
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF190();
  v33 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v31 = v8;
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    v30 = v15;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v24 = sub_257C76CCC(a2);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v25 = sub_257ECFD30();
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    aBlock[4] = a4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = v32;
    v27 = _Block_copy(aBlock);
    v32 = v24;
    v28 = v23;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v21, v14, v27);
    _Block_release(v27);

    (*(v31 + 8))(v14, v7);
    return (*(v33 + 8))(v21, v30);
  }

  return result;
}

void sub_257DDD294(uint64_t a1, void *a2, char a3)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = a3;
  sub_257DD88DC();
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = a2;
  v6 = a2;

  sub_257DD77B8();
}

void *sub_257DDD2EC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v28 = sub_257ECFD30();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v19;
    aBlock[4] = sub_257DE087C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_64;
    v23 = _Block_copy(aBlock);
    v27 = v11;
    v24 = v23;
    v26 = v21;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v25 = v28;
    MEMORY[0x259C72880](0, v18, v10, v24);
    _Block_release(v24);

    (*(v4 + 8))(v10, v3);
    return (*(v12 + 8))(v18, v27);
  }

  return result;
}

void sub_257DDD624(char *a1, double a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v8)
  {

LABEL_10:
    sub_257DDD7C4(a2);
    return;
  }

  v4 = sub_257ED0640();

  if (v4)
  {
    goto LABEL_10;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_257BDB730();
    swift_unknownObjectRelease();
    if (v5)
    {
      type metadata accessor for FreezeFramePageContentViewController(0);
      v6 = a1;
      v7 = sub_257ECFF50();

      if (v7)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_257DDD7C4(double a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_257BAC000, v12, v13, "zoomCenter to percentage: %f", v14, 0xCu);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  result = sub_257DD909C();
  if ((result & 1) == 0)
  {
    v16 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
    [v16 minimumZoomScale];
    v18 = v17;
    v19 = 1.0;
    if (a1 <= 1.0)
    {
      v19 = a1;
    }

    if (a1 > 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    [v16 maximumZoomScale];
    v22 = v21;
    [v16 minimumZoomScale];
    return sub_257DDDFE4(0, v18 + v20 * (v22 - v23));
  }

  return result;
}

_OWORD *sub_257DDD9A0(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v16 = a1;
  v17 = sub_257ECDA20();
  v18 = sub_257ECFBD0();
  if (!os_log_type_enabled(v17, v18))
  {

    result = (*(v9 + 8))(v15, v8);
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v46 = v8;
  v47 = v4;
  v19 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v48 = v44;
  v45 = v19;
  *v19 = 136315138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  result = swift_allocObject();
  result[1] = xmmword_257ED9BD0;
  if (!a1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = result;
  v43 = "n";
  *(result + 7) = sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v22 = MEMORY[0x277D85388];
  v21[8] = sub_257CA64A0(&unk_27F8F97A0, &unk_281543E00, 0x277D75D18, MEMORY[0x277D85388]);
  v21[4] = v16;
  v23 = sub_257ECFEB0();
  v21[12] = sub_257BD2C2C(0, &qword_27F8F93A0, 0x277CCAE60);
  v21[13] = sub_257CA64A0(&qword_27F8F97B0, &qword_27F8F93A0, 0x277CCAE60, v22);
  v21[9] = v23;
  v24 = sub_257ECF540();
  v26 = sub_257BF1FC8(v24, v25, &v48);

  v27 = v45;
  *(v45 + 1) = v26;
  _os_log_impl(&dword_257BAC000, v17, v18, "%s", v27, 0xCu);
  v28 = v44;
  v29 = __swift_destroy_boxed_opaque_existential_0(v44);
  MEMORY[0x259C74820](v28, -1, -1, v29);
  MEMORY[0x259C74820](v27, -1, -1);

  (*(v9 + 8))(v15, v46);
  v4 = v47;
LABEL_5:
  [v16 frame];
  v31 = v30;
  v33 = v32;
  v34 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v34 contentOffset];
  v37 = a2 - v31 * 0.5;
  v38 = a3 - v33 * 0.5;
  if (v37 >= 0.0)
  {
    v39 = a2 - v31 * 0.5;
  }

  else
  {
    v39 = 0.0;
  }

  if (v37 >= 0.0)
  {
    v40 = v35;
  }

  else
  {
    v40 = -v37;
  }

  if (v38 >= 0.0)
  {
    v41 = v38;
  }

  else
  {
    v41 = 0.0;
  }

  if (v38 >= 0.0)
  {
    v42 = v36;
  }

  else
  {
    v42 = -v38;
  }

  [v16 setFrame_];
  return [v34 setContentOffset_];
}

void sub_257DDDD60(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v15 = [v3 viewForZoomingInScrollView_];
      swift_unknownObjectRelease();
      if (v15)
      {
        [v15 frame];
        v5 = v4;
        v7 = v6;
        [a1 bounds];
        v8 = 0.0;
        v9 = 0.0;
        if (v5 < v10)
        {
          [a1 bounds];
          v9 = (v11 - v5) * 0.5;
        }

        [a1 bounds];
        if (v7 < v12)
        {
          [a1 bounds];
          v8 = (v13 - v7) * 0.5;
        }

        [v15 setFrame_];
        if (sub_257DD909C())
        {
          sub_257DDB720();
          v14 = [objc_opt_self() defaultCenter];
          if (qword_281543EE8 != -1)
          {
            swift_once();
          }

          [v14 postNotificationName:qword_281548098 object:0];
        }

        sub_257DD65E0();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_257DDDFE4(int a1, double a2)
{
  LODWORD(v3) = a1;
  v5 = sub_257ECCB70();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_257ECDA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257ECD4D0();
  v20 = v2;
  v21 = sub_257ECDA20();
  LODWORD(v22) = sub_257ECFBD0();
  if (os_log_type_enabled(v21, v22))
  {
    v35 = v12;
    v36 = v3;
    v23 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v23 = 136315650;
    v24 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    if ((*(v37 + 48))(&v20[v24], 1, v5))
    {
      v25 = 0xE100000000000000;
      v26 = 63;
    }

    else
    {
      v33 = v22;
      v22 = v37;
      (*(v37 + 16))(v11, &v20[v24], v5);
      v26 = sub_257ECCAD0();
      v25 = v27;
      (*(v22 + 8))(v11, v5);
      LOBYTE(v22) = v33;
    }

    v3 = sub_257BF1FC8(v26, v25, &v38);

    *(v23 + 4) = v3;
    *(v23 + 12) = 2048;
    *(v23 + 14) = a2;
    *(v23 + 22) = 1024;
    v28 = v20[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage];

    *(v23 + 24) = v28;
    _os_log_impl(&dword_257BAC000, v21, v22, "%s scale: %f, isShowingFullSizeImage? %{BOOL}d", v23, 0x1Cu);
    v29 = v34;
    v30 = __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x259C74820](v29, -1, -1, v30);
    MEMORY[0x259C74820](v23, -1, -1);

    (*(v13 + 8))(v19, v35);
    LOBYTE(v3) = v36;
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  return [*&v20[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView] setZoomScale:v3 & 1 animated:a2];
}

double sub_257DDE33C(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v16 = sub_257ECDA20();
  v17 = sub_257ECFBD0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315394;
    v20 = sub_257ECFA30();
    v22 = sub_257BF1FC8(v20, v21, &v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_257DDE5D8(a2, a3);
    v25 = sub_257BF1FC8(v23, v24, &v35);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_257BAC000, v16, v17, "zoomRect forScale: %s, center: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v19, -1, -1);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  if (a1 == 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = a1;
  }

  v27 = *&v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v27 frame];
  [v27 frame];
  v29 = v28 / v26;
  v30 = [v4 view];
  [v27 convertPoint:v30 fromView:{a2, a3}];
  v32 = v31;

  return v32 - v29 * 0.5;
}

void sub_257DDE5D8(double a1, double a2)
{
  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_257ED0600();
  MEMORY[0x259C72150](v4);

  MEMORY[0x259C72150](2128160, 0xE300000000000000);
  v5 = round(a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = sub_257ED0600();
    MEMORY[0x259C72150](v6);

    MEMORY[0x259C72150](125, 0xE100000000000000);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_257DDE73C(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v10 = a1;
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_257BAC000, v11, v12, "singleTap sender: %@", v13, 0xCu);
    sub_257BE4084(v14, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = [objc_opt_self() defaultCenter];
    if (qword_281543EE0 != -1)
    {
      swift_once();
    }

    [v17 postNotificationName:qword_281548090 object:0];

    sub_257BDB830();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257DDE9E0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v12 = a1;
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_257BAC000, v13, v14, "singleTap gestureRecognizer: %@", v15, 0xCu);
    sub_257BE4084(v16, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v16, -1, -1);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  if ([v12 numberOfTouches] >= 1)
  {
    v18 = sub_257DD87E8();
    v19 = [v2 view];
    v20 = v19;
    if (v18)
    {
      [v12 locationInView_];
      v22 = v21;
      v24 = v23;

      v25 = *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
      [v25 maximumZoomScale];
      [v25 zoomToRect:1 animated:{sub_257DDE33C(v26 * 0.6, v22, v24)}];
      sub_257DDB720();
      sub_257DD65E0();
      return;
    }

    if (v19)
    {
      [v19 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v60.origin.x = v28;
      v60.origin.y = v30;
      v60.size.width = v32;
      v60.size.height = v34;
      MidX = CGRectGetMidX(v60);
      v36 = [v2 view];
      if (v36)
      {
        v37 = v36;
        [v36 bounds];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v61.origin.x = v39;
        v61.origin.y = v41;
        v61.size.width = v43;
        v61.size.height = v45;
        MidY = CGRectGetMidY(v61);
        v47 = objc_opt_self();
        v48 = swift_allocObject();
        *(v48 + 2) = v2;
        v48[3] = MidX;
        v48[4] = MidY;
        v58 = sub_257DE05D8;
        v59 = v48;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_257D231C0;
        v57 = &block_descriptor_52;
        v49 = _Block_copy(&aBlock);
        v50 = v2;

        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        v58 = sub_257DE063C;
        v59 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_257DFE438;
        v57 = &block_descriptor_19_1;
        v52 = _Block_copy(&aBlock);
        v53 = v50;

        [v47 animateWithDuration:v49 animations:v52 completion:0.2];
        _Block_release(v52);
        _Block_release(v49);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_257DDEE48()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v28 - v15;
  sub_257ECD4D0();
  v17 = sub_257ECDA20();
  v18 = sub_257ECFBD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v17, v18, "resetZoom", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  v20 = *(v3 + 8);
  v20(v16, v2);
  v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v21 contentSize];
  if (v23 == 0.0 && v22 == 0.0)
  {
    sub_257ECD4D0();
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_257BAC000, v24, v25, "Tried resetting zoom on scrollView with contentSize zero.", v26, 2u);
      MEMORY[0x259C74820](v26, -1, -1);
    }

    v20(v9, v2);
  }

  else
  {
    [v21 minimumZoomScale];
    sub_257DDDFE4(0, v27);
    sub_257DDB720();
  }
}

void sub_257DDF0EC(void *a1)
{
  if ([a1 state] == 1)
  {
    [v1 becomeFirstResponder];
    v3 = [a1 view];
    [a1 locationInView_];
    v5 = v4;
    v7 = v6;

    v8 = &v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
    *v8 = v5;
    *(v8 + 1) = v7;
    sub_257BD2C2C(0, &unk_27F8F9790, 0x277D754C0);
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v9 = sub_257ECFE50();
    v10 = sub_257DD92BC();
    [v10 presentEditMenuWithConfiguration_];
  }
}

uint64_t sub_257DDF290(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257BDF858(*(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 8), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 16), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 24));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257DDF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_257ECDA30();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_257ECF900();
  v5[8] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_257DDF51C, v8, v7);
}

uint64_t sub_257DDF51C()
{
  *(v0 + 88) = *(*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService);
  sub_257ECC3F0();

  return MEMORY[0x2822009F8](sub_257DDF598, 0, 0);
}

uint64_t sub_257DDF598()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  *v4 = v0;
  v4[1] = sub_257DDF6A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x8000000257EFD680, sub_257DE0834, v3, v5);
}

uint64_t sub_257DDF6A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_257DDF8B8;
  }

  else
  {

    v2 = sub_257DDF7C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DDF7C4()
{

  v0[15] = v0[2];
  v1 = v0[9];
  v2 = v0[10];

  return MEMORY[0x2822009F8](sub_257DDF830, v1, v2);
}

uint64_t sub_257DDF830()
{
  v1 = v0[15];
  v2 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument) = v1;

  sub_257DD7E4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_257DDF8B8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_257DDF924, v1, v2);
}

uint64_t sub_257DDF924()
{
  v1 = v0[14];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle Text Detection Request. Error : %@", v7, 0xCu);
    sub_257BE4084(v8, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t type metadata accessor for FreezeFramePageContentViewController(uint64_t a1)
{
  result = qword_27F8F9778;
  if (!qword_27F8F9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DDFCB0(uint64_t a1)
{
  result = type metadata accessor for Asset(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_257DDFDB0()
{
  v1 = v0;
  v2 = sub_257ECFD20();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v27 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v26[1] = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  MEMORY[0x28223BE20](v14 - 8, v15, v16, v17, v18);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *(v1 + v19) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v20 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *(v1 + v20) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument) = 0;
  v21 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *(v1 + v21) = sub_257ECF330();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem) = 0;
  v23 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v30 = v22;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *(v1 + v23) = sub_257ECFD80();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction) = 0;
  v24 = (v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *(v1 + v25) = sub_257DDA774();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController) = 0;
  sub_257ED0410();
  __break(1u);
}

void sub_257DE01E4()
{
  v11 = [objc_allocWithZone(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v1 = [v11 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blackColor];
    [v2 setBackgroundColor_];

    v4 = [v11 presentationController];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_257ED9BE0;
        v9 = objc_opt_self();
        *(v8 + 32) = [v9 mediumDetent];
        *(v8 + 40) = [v9 largeDetent];
        sub_257BD2C2C(0, &unk_27F8F9820, 0x277D75A28);
        v10 = sub_257ECF7F0();

        [v7 setDetents_];

        [v7 setPrefersGrabberVisible_];
      }
    }

    [v0 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257DE03E0()
{
  sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  *(swift_allocObject() + 16) = v0;
  v6 = v0;
  v7 = sub_257ECFF90();
  sub_257BD2C2C(0, qword_281543E10, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257ED9BF0;
  *(v8 + 32) = v7;
  return sub_257ECFEA0();
}

_OWORD *sub_257DE05D8()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  sub_257DDEE48();
  return sub_257DDD9A0(*(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView), v2, v3);
}

double block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257DE066C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257DE06B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DDF428(a1, v4, v5, v7, v6);
}

uint64_t sub_257DE0774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257DD8000(a1, v4, v5, v7, v6);
}

double sub_257DE083C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) == 1)
  {
    return sub_257DD8BD0();
  }

  return result;
}

void *sub_257DE08C0()
{
  v1 = *(sub_257ECCB70() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_257DDCB3C(v2, v3);
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_257ECCB70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_257DE0B50()
{
  v1 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v2 = [v0 imageByApplyingSymbolConfiguration_];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode_];

    v4 = [objc_opt_self() whiteColor];
    v2 = [v3 imageWithTintColor_];
  }

  return v2;
}

id sub_257DE0CCC(SEL *a1)
{
  v2 = sub_257ECF4C0();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v5 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 imageWithRenderingMode_];

  v7 = [objc_opt_self() *a1];
  v8 = [v6 imageWithTintColor_];

  return v8;
}

id sub_257DE0E18()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE0F64()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE10B0()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1234()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:19.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1380()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() systemYellowColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1504()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() systemYellowColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1680(uint64_t a1, uint64_t a2, SEL *a3, double a4)
{
  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() systemImageNamed_];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:a4];
  v9 = [v7 imageByApplyingSymbolConfiguration_];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 imageWithRenderingMode_];

  v11 = [objc_opt_self() *a3];
  v12 = [v10 imageWithTintColor_];

  return v12;
}

id MAGPulseFeedbackProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_257DE17F4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1900()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1A0C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1A60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1B18()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1B6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1C24()
{
  result = [objc_allocWithZone(ToneGenerator) init];
  qword_27F913140 = result;
  return result;
}

id MAGPulseFeedbackProcessor.init()()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  *&v0[v1] = [objc_allocWithZone(ToneGenerator) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  *&v0[v2] = [objc_allocWithZone(ToneGenerator) init];
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  *&v0[v3] = [objc_allocWithZone(ToneGenerator) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  *&v0[v4] = [objc_allocWithZone(ToneGenerator) init];
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakFrequencyGenerator;
  if (qword_27F8F46B8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F913140;
  [qword_27F913140 minPulseFrequency];
  v8 = v7;
  [v6 maxPulseFrequency];
  v10 = v9;
  type metadata accessor for PulseFrequencyGenerator();
  v11 = swift_allocObject();
  v12 = (v10 - v8) / -0.87;
  *(v11 + 16) = v12;
  *(v11 + 24) = v8 + v12 * -0.95;
  *&v0[v5] = v11;
  v13 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakVolumeGenerator;
  type metadata accessor for VolumeGenerator();
  *&v0[v13] = swift_allocObject();
  v14 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakPitchGenerator;
  *&v0[v14] = sub_257E592E4(0.25);
  swift_beginAccess();
  [*&v0[v1] setUseSoundFeedback_];
  [*&v0[v1] setUseHapticFeedback_];
  swift_beginAccess();
  [*&v0[v2] setUseSoundFeedback_];
  [*&v0[v2] setUseHapticFeedback_];
  swift_beginAccess();
  [*&v0[v3] setUseHapticFeedback_];
  [*&v0[v3] setUseSoundFeedback_];
  swift_beginAccess();
  [*&v0[v4] setUseSoundFeedback_];
  [*&v0[v4] setUseHapticFeedback_];
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MAGPulseFeedbackProcessor();
  return objc_msgSendSuper2(&v16, sel_init);
}

void sub_257DE1F00(void *a1, unsigned int a2)
{
  v3 = v2;
  v76 = sub_257ECCB70();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v6, v7, v8, v9);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v11, v12, v13, v14);
  v16 = &v70 - v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v2 + v17) minPulseFrequency];
  v19 = v18;
  [*(v2 + v17) maxPulseFrequency];
  v21 = *(v2 + v17);
  if ((a2 & 0x80000000) != 0)
  {
    [v21 setPulseFrequency_];
    v22 = 0.0;
  }

  else
  {
    [v21 setPulseFrequency_];
    LODWORD(v22) = 1.0;
    if (a2 >= 0x726)
    {
      v22 = 0.0;
      if (a2 <= 0x1770)
      {
        *&v22 = (a2 - 6000) / -4170.0;
      }
    }
  }

  [*(v2 + v17) setVolume_];
  type metadata accessor for AudioBalanceGenerator();
  swift_initStackObject();
  v23 = sub_257DA3484();
  [a1 minPosition];
  v77 = v24;
  [a1 maxPosition];
  v26 = v25;
  v27 = v77;
  v77.n128_u32[0] = a2;
  v72 = v23;
  *&v28 = sub_257DA30F8(a2, v27, v26);
  v70 = v28;
  [*(v3 + v17) setLeftBalance_];
  HIDWORD(v29) = DWORD1(v70);
  LODWORD(v29) = DWORD1(v70);
  [*(v3 + v17) setRightBalance_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v30 = qword_281548348;
  v31 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
  swift_beginAccess();
  v32 = v31[1];
  v33 = v31[2];
  v81[0] = *v31;
  v81[1] = v32;
  v81[2] = v33;
  v34 = qword_2815447E0;

  if (v34 != -1)
  {
    v35 = swift_once();
  }

  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  *(&v70 - 2) = v81;
  sub_257ECFD50();

  sub_257E592DC(v78[0]);
  v40 = v30 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v41 = swift_beginAccess();
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v78[0] = *v40;
  v78[1] = v42;
  v79 = v43;
  MEMORY[0x28223BE20](v41, v44, v45, v46, v47);
  *(&v70 - 2) = v78;
  sub_257ECC3F0();

  sub_257ECFD50();

  v48 = v80;
  v49 = v77.n128_u32[0];
  v50 = objc_opt_self();
  v51 = [v50 millimeters];
  sub_257DE3BF4();
  sub_257ECC740();
  if (v48)
  {
    v52 = [v50 feet];
    v53 = v73;
    sub_257ECC770();

    sub_257ECC750();
    v55 = round(v54);
    (*(v71 + 8))(v16, v53);
  }

  else
  {
    v56 = [v50 meters];
    v57 = v73;
    sub_257ECC770();

    sub_257ECC750();
    v59 = round(v58 + v58);
    (*(v71 + 8))(v16, v57);
    v55 = v59 * 0.5;
  }

  v60 = *(v3 + v17);
  sub_257ECC3F0();
  v61 = v60;
  v62 = v74;
  sub_257E58CF0(v74, v55);

  v63 = sub_257ECCAE0();
  (*(v75 + 8))(v62, v76);
  [v61 setAudioFileURL_];

  v64 = *(v3 + v17);
  v65 = sub_257E58C8C(v49);
  v66 = v64;

  *&v67 = v65;
  [v66 setPitchFactor_];

  v68 = &selRef_startPulse;
  if (([*(v3 + v17) useSoundFeedback] & 1) == 0 && !objc_msgSend(*(v3 + v17), sel_useHapticFeedback))
  {
    v68 = &selRef_stopPulse;
  }

  v69 = *(v3 + v17);
  [v69 *v68];
}

void sub_257DE25DC(unsigned int a1)
{
  v2 = v1;
  v86 = sub_257ECCB70();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v4, v5, v6, v7);
  v84 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v9, v10, v11, v12);
  v14 = &v78[-v13];
  v15 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v1 + v15) minPulseFrequency];
  v17 = v16;
  [*(v1 + v15) maxPulseFrequency];
  v19 = *(v1 + v15);
  if ((a1 & 0x80000000) != 0)
  {
    [v19 setPulseFrequency_];
    v20 = 0.0;
  }

  else
  {
    [v19 setPulseFrequency_];
    LODWORD(v20) = 1.0;
    if (a1 >= 0x726)
    {
      v20 = 0.0;
      if (a1 <= 0x1770)
      {
        *&v20 = (a1 - 6000) / -4170.0;
      }
    }
  }

  [*(v1 + v15) setVolume_];
  type metadata accessor for AudioBalanceGenerator();
  swift_initStackObject();
  v21 = sub_257DA3484();
  v79 = a1;
  v87 = v21;
  *&v22 = sub_257DA30F8(a1, xmmword_257ED6C30, 0);
  v88 = v22;
  [*(v1 + v15) setLeftBalance_];
  HIDWORD(v23) = DWORD1(v88);
  LODWORD(v23) = DWORD1(v88);
  [*(v1 + v15) setRightBalance_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v24 = qword_281548348;
  v25 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
  swift_beginAccess();
  v26 = v25[1];
  v27 = v25[2];
  v95[0] = *v25;
  v95[1] = v26;
  v95[2] = v27;
  v28 = qword_2815447E0;

  if (v28 != -1)
  {
    v29 = swift_once();
  }

  v34 = qword_2815447E8;
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  *&v78[-16] = v95;
  sub_257ECFD50();

  *&v88 = sub_257E592D4(v93[0]);
  v80 = v24;
  v35 = v24 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v36 = swift_beginAccess();
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  v93[0] = *v35;
  v93[1] = v37;
  v94 = v38;
  MEMORY[0x28223BE20](v36, v39, v40, v41, v42);
  *&v78[-16] = v93;

  v81 = v34;
  sub_257ECFD50();

  v43 = v89;
  v44 = v79;
  v45 = objc_opt_self();
  v46 = [v45 millimeters];
  sub_257DE3BF4();
  sub_257ECC740();
  if (v43)
  {
    v47 = [v45 feet];
    v48 = v83;
    sub_257ECC770();

    sub_257ECC750();
    v50 = round(v49);
    (*(v82 + 8))(v14, v48);
  }

  else
  {
    v51 = [v45 meters];
    v52 = v83;
    sub_257ECC770();

    sub_257ECC750();
    v54 = round(v53 + v53);
    (*(v82 + 8))(v14, v52);
    v50 = v54 * 0.5;
  }

  v55 = *(v2 + v15);
  v56 = v84;
  sub_257E58CF0(v84, v50);
  v57 = sub_257ECCAE0();
  (*(v85 + 8))(v56, v86);
  [v55 setAudioFileURL_];

  v58 = *(v2 + v15);
  *&v59 = sub_257E58C8C(v44);
  [v58 setPitchFactor_];
  v60 = (v80 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  v61 = swift_beginAccess();
  v62 = v60[1];
  v63 = v60[2];
  v89 = *v60;
  v90 = v62;
  v91 = v63;
  MEMORY[0x28223BE20](v61, v64, v65, v66, v67);
  *&v78[-16] = &v89;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
  sub_257ECFD50();

  LOBYTE(v62) = sub_257C592D0(2u, v92);

  v73 = &selRef_startPulse;
  if ((v62 & 1) == 0)
  {
    v74 = *v60;
    v75 = v60[1];
    v76 = v60[2];
    v89 = v74;
    v90 = v75;
    v91 = v76;
    MEMORY[0x28223BE20](v68, v69, v70, v71, v72);
    *&v78[-16] = &v89;

    sub_257ECFD50();

    v77 = sub_257C592D0(3u, v92);

    if (!v77)
    {
      v73 = &selRef_stopPulse;
    }
  }

  [*(v2 + v15) *v73];
}

void sub_257DE2E10(float a1)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v2, v3, v4, v5);
  v7 = v80 - v6;
  v84 = sub_257ECCB70();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v8, v9, v10, v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  v15 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v94[0] = *v15;
  v94[1] = v16;
  v94[2] = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v24 = qword_2815447E8;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v80[-2] = v94;
  sub_257ECFD50();

  v86 = sub_257E592DC(v93);
  v25 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  v26 = v88;
  swift_beginAccess();
  v27 = *(v26 + v25);
  v81 = v14;
  v28 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v29 = swift_beginAccess();
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v91[0] = *v28;
  v91[1] = v30;
  v92 = v31;
  MEMORY[0x28223BE20](v29, v32, v33, v34, v35);
  v80[-2] = v91;
  v36 = v27;

  v82 = v24;
  sub_257ECFD50();
  v80[1] = 0;

  v37 = a1;
  v38 = v85;
  if (LOBYTE(v89[0]) == 1)
  {
    v39 = objc_opt_self();
    v40 = [v39 meters];
    sub_257DE3BF4();
    sub_257ECC740();
    v41 = [v39 feet];
    sub_257ECC770();

    sub_257ECC750();
    v37 = round(v42);
    (*(v87 + 8))(v7, v38);
  }

  sub_257E58CF0(v13, v37);
  v43 = sub_257ECCAE0();
  (*(v83 + 8))(v13, v84);
  [v36 setAudioFileURL_];

  v44 = *(v88 + v25);
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 meters];
  sub_257DE3BF4();
  sub_257ECC740();
  v48 = [v45 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v50 = round(v49);
  v51 = *(v87 + 8);
  v87 += 8;
  v51(v7, v38);
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v50 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v50 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  *&v52 = sub_257E58C8C(v50);
  [v46 setPitchFactor_];

  v53 = v88;
  v54 = *(v88 + v25);
  [v54 minPulseFrequency];
  v56 = v55;
  [*(v53 + v25) maxPulseFrequency];
  v58 = v57;
  v59 = 0.0;
  if (a1 >= 0.0)
  {
    v60 = (v58 - v56) / -1830.0;
    v58 = v56 + v60 * -3660.0;
    v59 = v60 * a1 + v58;
  }

  [v54 setPulseFrequency_];

  v61 = *(v88 + v25);
  v62 = [v45 meters];
  sub_257ECC740();
  v63 = [v45 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v65 = round(v64);
  v51(v7, v38);
  v66 = 0.0;
  v67 = v81;
  if (v65 >= 0.0)
  {
    LODWORD(v66) = 1.0;
    if (v65 >= 1830.0)
    {
      v66 = 0.0;
      if (v65 <= 6000.0)
      {
        v66 = v65 + -6000.0;
        *&v66 = v65 + -6000.0;
        *&v66 = *&v66 / -4170.0;
      }
    }
  }

  [v61 setVolume_];

  v68 = (v67 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  v69 = swift_beginAccess();
  v70 = v68[1];
  v71 = v68[2];
  v89[0] = *v68;
  v89[1] = v70;
  v89[2] = v71;
  MEMORY[0x28223BE20](v69, v72, v73, v74, v75);
  v80[-2] = v89;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
  sub_257ECFD50();

  v76 = v90;
  if (sub_257C592D0(3u, v90))
  {

    v77 = &selRef_startPulse;
  }

  else
  {
    v78 = sub_257C592D0(2u, v76);

    if (v78)
    {
      v77 = &selRef_startPulse;
    }

    else
    {
      v77 = &selRef_stopPulse;
    }
  }

  v79 = *(v88 + v25);
  [v79 *v77];
}