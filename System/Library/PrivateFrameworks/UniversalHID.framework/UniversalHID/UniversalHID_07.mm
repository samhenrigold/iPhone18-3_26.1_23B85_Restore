void sub_27077A3AC(uint64_t a1, void (*a2)(void **__return_ptr, void *), uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state;
  v9 = *(v4 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v9)
  {

    sub_270766B80(a1, a2, a3);
    v11 = sub_27070EFB8(v10);

    sub_27077ADF0(v11);
    *(v4 + v8) = v9;

    return;
  }

  v12 = 0;
  v13 = *(a1 + 16);
  v14 = a1 + 32;
  while (1)
  {
    if (v12 == v13)
    {
      v23 = 0;
      v12 = v13;
      v21 = 0u;
      v22 = 0u;
      goto LABEL_10;
    }

    if (v12 >= v13)
    {
      break;
    }

    sub_27077E790(v14 + 40 * v12, &v21);
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    v19[0] = v21;
    v19[1] = v22;
    v20 = v23;
    if (!*(&v22 + 1))
    {
      return;
    }

    sub_27070F8A8(v19, v18);
    a2(&v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v16 = v17;
    sub_27077DCC8(v17, v4);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void HIDVirtualService.dispatch<A>(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v41 = v7;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v12 = sub_2707A8930();
  OUTLINED_FUNCTION_11_5(v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - v15;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v17, v18);
  v26 = MEMORY[0x28223BE20](v19, v20);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state;
  v30 = *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v30)
  {
    (*(v22 + 16))(v28, v5, v23, v26);

    sub_2707A8750();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110, &unk_2707AA4B0);
    v31 = sub_2707A8BE0();

    v43 = v30;
    sub_27077ADF0(v31);
    *(v1 + v29) = v43;
  }

  else
  {
    v40 = v24;
    v42 = v3;
    v32 = v1;
    v33 = v21;
    v34 = v5;
    v35 = v25;
    (*(v22 + 16))(v28, v34, v23, v26);
    v36 = v35;
    sub_2707A86A0();
    v37 = v33;
    swift_getAssociatedConformanceWitness();
    v38 = (v41 + 32);
    for (i = (v41 + 8); ; (*i)(v11, AssociatedTypeWitness))
    {
      sub_2707A8940();
      if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v38)(v11, v16, AssociatedTypeWitness);
      sub_27077DFFC(v11, v32, AssociatedTypeWitness, v42);
    }

    (*(v40 + 8))(v36, v37);
  }

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27077A8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a1 + 16) && (v5 = sub_270721EA0(a2), (v6 & 1) != 0))
  {
    sub_27077E790(*(a1 + 56) + 40 * v5, v8);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829868, &qword_2707AC050);
  a3(0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall HIDVirtualService.activate()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  (*(v2 + 64))();
  v3 = OUTLINED_FUNCTION_4_6();
  v5 = v4(v3);
  swift_beginAccess();
  *(v1 + 48) = v5;
}

Swift::Void __swiftcall HIDVirtualService.cancel()()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v7 << 6);
      v10 = *(*(v1 + 48) + v9);
      sub_27077E790(*(v1 + 56) + 40 * v9, v16);
      LOBYTE(v17) = v10;
      sub_27070F8A8(v16, &v17 + 8);
LABEL_10:
      v20[1] = v18;
      v20[2] = v19;
      v20[0] = v17;
      if (!v19)
      {
        break;
      }

      sub_27070F8A8((v20 + 8), &v17);
      v11 = *(&v18 + 1);
      v12 = v19;
      v13 = __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      sub_27077C02C(v13, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v14 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 72))(ObjectType, v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        v4 = 0;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        goto LABEL_10;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_27077AB9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_2707A8F60();
    MEMORY[0x2743A8500](v4);
    v5 = sub_2707A8FC0();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

BOOL sub_27077AC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2707A8F60();
  sub_2707A8620();
  v6 = sub_2707A8FC0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_2707A8EA0();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_27077AD38(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27077DAC0(v4, 1, MEMORY[0x277D84130]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_27077ADF0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27077DAC0(v4, 1, sub_270713DA0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110, &unk_2707AA4B0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void HIDVirtualService.property(forKey:)(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_modifiedProperties;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = OUTLINED_FUNCTION_4_6(), v7 = sub_270721FD8(v6), (v8 & 1) != 0))
  {
    sub_2707374F8(*(v5 + 56) + 32 * v7, v13);
    sub_270724188(v13, a1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_8_15(v2 + 56, v13);
    v9 = *(v2 + 64);
    v10 = OUTLINED_FUNCTION_4_6();
    HIDServiceProperties.property(forKey:)(v10, v11, v9, v12);
  }
}

uint64_t HIDVirtualService.properties.getter()
{
  OUTLINED_FUNCTION_8_15(v0 + 56, v4);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1;
}

void sub_27077B008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A310, &qword_2707B16A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AFD30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002707B4BB0;
  if (*MEMORY[0x277CD2880])
  {
    v1 = inited;
    v2 = *MEMORY[0x277CD2880];
    v1[6] = sub_2707A85E0();
    v1[7] = v3;
    v1[8] = 0xD00000000000001DLL;
    v1[9] = 0x80000002707B5190;
    sub_27077DB38(v1);
    qword_28082A100 = v4;
  }

  else
  {
    __break(1u);
  }
}

void HIDVirtualService.__allocating_init(logger:properties:queue:absolutePointerGesture:appleVendorKeyboardGesture:appleVendorTopCaseGesture:consumerGesture:genericGestureGesture:keyboardGesture:digitizerGesture:pointerGesture:scrollGesture:touchSensitiveButtonGesture:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11_0();
  v62 = v26;
  v63 = v27;
  v29 = v28;
  v61[1] = v28;
  v61[2] = v30;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v61[3] = v34;
  v64 = v36;
  v65 = v37;
  v39 = v38;
  v66 = v38;
  v68 = a26;
  v70 = a25;
  v61[0] = a21;
  v69 = a22;
  v71 = a24;
  v67 = a23;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120, &qword_2707AEB20);
  OUTLINED_FUNCTION_11_5(v40);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v41, v42);
  v61[4] = v61 - v43;
  sub_27077E440(v39, v61 - v43, &unk_28082A120, &qword_2707AEB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829930, &qword_2707AC2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AC1C0;
  *(inited + 32) = 19;
  *(inited + 64) = type metadata accessor for AbsolutePointerGesture(0);
  *(inited + 72) = &protocol witness table for AbsolutePointerGesture;
  *(inited + 40) = v35;
  *(inited + 80) = 4;
  *(inited + 112) = type metadata accessor for AppleVendorTopCaseGesture(0);
  *(inited + 120) = sub_27073F5C0();
  *(inited + 88) = v31;
  *(inited + 128) = 3;
  *(inited + 160) = type metadata accessor for AppleVendorKeyboardGesture(0);
  *(inited + 168) = sub_27073F710();
  *(inited + 136) = v33;
  *(inited + 176) = 2;
  *(inited + 208) = type metadata accessor for ConsumerGesture(0);
  *(inited + 216) = sub_27073F860();
  *(inited + 184) = v29;
  *(inited + 224) = 9;
  *(inited + 256) = type metadata accessor for DigitizerGesture();
  *(inited + 264) = &protocol witness table for DigitizerGesture;
  *(inited + 232) = v67;
  *(inited + 272) = 1;
  *(inited + 304) = type metadata accessor for KeyboardGesture(0);
  *(inited + 312) = sub_27073FA04();
  *(inited + 280) = a22;
  *(inited + 320) = 20;
  *(inited + 352) = type metadata accessor for GenericGestureGesture();
  *(inited + 360) = &protocol witness table for GenericGestureGesture;
  *(inited + 328) = a21;
  *(inited + 368) = 5;
  *(inited + 400) = type metadata accessor for PointerGesture(0);
  *(inited + 408) = &protocol witness table for PointerGesture;
  *(inited + 376) = v71;
  *(inited + 416) = 7;
  *(inited + 448) = type metadata accessor for ScrollGesture();
  *(inited + 456) = &protocol witness table for ScrollGesture;
  *(inited + 424) = v70;
  *(inited + 464) = 11;
  v45 = type metadata accessor for DockSwipeGesture();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(inited + 496) = v45;
  *(inited + 504) = &protocol witness table for DockSwipeGesture;
  *(inited + 472) = v46;
  *(inited + 512) = 13;
  v47 = type metadata accessor for NavigationSwipeGesture();
  v48 = OUTLINED_FUNCTION_1_37(v47);
  *(v48 + 16) = 0;
  *(inited + 544) = v45;
  *(inited + 552) = &protocol witness table for NavigationSwipeGesture;
  *(inited + 520) = v48;
  *(inited + 560) = 21;
  *(inited + 592) = type metadata accessor for TouchSensitiveButtonGesture();
  *(inited + 600) = &protocol witness table for TouchSensitiveButtonGesture;
  *(inited + 568) = v68;
  *(inited + 608) = 17;
  v49 = type metadata accessor for TranslationGesture();
  v50 = OUTLINED_FUNCTION_1_37(v49);
  *(v50 + 16) = 0;
  *(inited + 640) = v45;
  *(inited + 648) = &protocol witness table for TranslationGesture;
  *(inited + 616) = v50;
  *(inited + 656) = 12;
  v51 = type metadata accessor for FluidTouchGesture();
  v52 = OUTLINED_FUNCTION_1_37(v51);
  *(v52 + 16) = 0;
  *(inited + 688) = v45;
  *(inited + 696) = &protocol witness table for FluidTouchGesture;
  *(inited + 664) = v52;
  *(inited + 704) = 15;
  v53 = type metadata accessor for ScaleGesture();
  v54 = OUTLINED_FUNCTION_1_37(v53);
  *(v54 + 16) = 0;
  *(inited + 736) = v45;
  *(inited + 744) = &protocol witness table for ScaleGesture;
  *(inited + 712) = v54;
  *(inited + 752) = 16;
  v55 = type metadata accessor for RotationGesture();
  v56 = OUTLINED_FUNCTION_1_37(v55);
  *(v56 + 16) = 0;
  *(inited + 784) = v45;
  *(inited + 792) = &protocol witness table for RotationGesture;
  *(inited + 760) = v56;
  *(inited + 800) = 14;
  v57 = type metadata accessor for ZoomToggleGesture();
  v58 = OUTLINED_FUNCTION_25_3(v57);
  *(inited + 832) = v57;
  *(inited + 840) = &protocol witness table for ZoomToggleGesture;
  *(inited + 808) = v58;
  *(inited + 848) = 18;
  v59 = type metadata accessor for GameControllerGesture();
  v60 = OUTLINED_FUNCTION_25_3(v59);
  *(inited + 880) = v59;
  *(inited + 888) = &protocol witness table for GameControllerGesture;
  *(inited + 856) = v60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A1B0, &qword_2707AC2F8);
  sub_2707373D4();
  sub_2707A8520();
  OUTLINED_FUNCTION_33(v62);
  sub_27077B984();

  sub_27077E8F8(v66, &unk_28082A120, &qword_2707AEB20);
  OUTLINED_FUNCTION_12_0();
}

void sub_27077B984()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v50 = v4;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120, &qword_2707AEB20);
  OUTLINED_FUNCTION_11_5(v10);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v11, v12);
  v48 = &v48 - v13;
  v1[6] = 0;
  v14 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_modifiedProperties;
  v15 = MEMORY[0x277D84F90];
  *(v1 + v14) = sub_2707A8520();
  v16 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
  sub_2707A8460();
  *(v1 + v16) = sub_2707A8520();
  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state) = v15;
  v17 = (v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_terminationWasRequestedHandler);
  *v17 = nullsub_1;
  v17[1] = 0;
  v18 = v7;
  v19 = HIDServiceProperties.subscript.getter(0x746375646F7250, 0xE700000000000000);
  if (v20)
  {
    v52 = 11606;
    v53 = 0xE200000000000000;
    MEMORY[0x2743A7BE0](v19);

    v21 = sub_2707A85C0();
  }

  else
  {
    v21 = 0;
  }

  v52 = 0x746375646F7250;
  v53 = 0xE700000000000000;
  [v18 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v22 = sub_2707A8760();
  v52 = 0xD00000000000001ELL;
  v53 = 0x80000002707B4090;
  [v18 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v23 = v18;
  if (HIDDeviceType.init(properties:)(v9, v23) == 3)
  {
    v24 = sub_2707A85C0();
    v52 = 0xD000000000000012;
    v53 = 0x80000002707B4E10;
    [v23 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v25 = v23;
  if (HIDDeviceType.init(properties:)(v9, v25) == 5)
  {
    OUTLINED_FUNCTION_0_47();
    v27 = sub_27077A8D4(v3, 7, v26);
    if (v27)
    {
      v28 = *(v27 + 18);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_shouldDispatchScrollEvents) = v28;
  v29 = sub_27077A8D4(v3, 5, type metadata accessor for PointerGesture);
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_useRemoteAcceleration);

    if (v30 == 1)
    {
      v31 = sub_2707A8760();
      v52 = 0xD00000000000001ELL;
      v53 = 0x80000002707B4ED0;
      v32 = sub_2707A8EC0();
      OUTLINED_FUNCTION_11_15(v32);

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_0_47();
  v49 = v3;
  v34 = sub_27077A8D4(v3, 7, v33);
  if (v34)
  {
    v35 = *(v34 + 17);

    if (v35 == 1)
    {
      v36 = sub_2707A8760();
      v52 = 0xD00000000000001DLL;
      v53 = 0x80000002707B5010;
      v37 = sub_2707A8EC0();
      OUTLINED_FUNCTION_11_15(v37);

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_4_27();
  sub_2707A8520();
  OUTLINED_FUNCTION_4_27();
  v38 = sub_2707A84F0();

  v52 = 0xD000000000000019;
  v53 = 0x80000002707B4DB0;
  [v25 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v1[7] = v9;
  v1[8] = v25;
  v39 = v50;
  v40 = v48;
  sub_27077E440(v50, v48, &unk_28082A120, &qword_2707AEB20);
  v41 = objc_allocWithZone(type metadata accessor for HIDVirtualServiceDelegate(0));
  v42 = sub_27077D360(v40);
  v43 = [objc_allocWithZone(MEMORY[0x277D0EF08]) init];
  v44 = v51;
  [v43 setDispatchQueue_];
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  v56 = nullsub_1;
  v57 = v45;
  v52 = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2707325D0;
  v55 = &block_descriptor_18;
  v46 = _Block_copy(&v52);
  v47 = v43;

  [v47 setCancelHandler_];
  _Block_release(v46);
  [v47 setDelegate_];
  sub_270747C30(v39, v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger);
  v1[2] = v49;
  v1[3] = v42;
  v1[4] = v47;
  v1[5] = &protocol witness table for HIDVirtualEventService;
  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_queue) = v44;
  swift_weakAssign();

  OUTLINED_FUNCTION_12_0();
}

double sub_27077BF90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state) = 0;
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 32;
      do
      {
        sub_27077E790(v3, v8);
        v4 = v9;
        v5 = v10;
        v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
        sub_27077DFFC(v6, v0, v4, v5);
        __swift_destroy_boxed_opaque_existential_1(v8);
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

double sub_27077C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = (*(a3 + 32))(v9, a2, a3);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  if (*(v11 + 16))
  {
    sub_27077A3AC(v11, sub_27077E95C, 0);
  }

  return result;
}

uint64_t HIDVirtualService.deinit()
{

  swift_unknownObjectRelease();
  sub_27077E8F8(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger, &unk_28082A120, &qword_2707AEB20);

  return v0;
}

uint64_t HIDVirtualService.__deallocating_deinit()
{
  HIDVirtualService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t HIDVirtualService.description.getter()
{
  v1 = v0;
  v9 = 91;
  v10 = 0xE100000000000000;
  OUTLINED_FUNCTION_8_15(v0 + 48, v8);
  v7[0] = *(v0 + 48);
  sub_270735074();
  v2 = sub_2707A8680();
  MEMORY[0x2743A7BE0](v2);

  MEMORY[0x2743A7BE0](8285, 0xE200000000000000);
  OUTLINED_FUNCTION_8_15(v0 + 56, v7);
  v3 = *(v0 + 56);
  v4 = *(v1 + 64);
  v5 = HIDServiceProperties.description.getter(v3, v4);
  MEMORY[0x2743A7BE0](v5);

  return v9;
}

void HIDVirtualService.setProperty(_:forKey:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120, &qword_2707AEB20);
  v10 = OUTLINED_FUNCTION_11_5(v9);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - v14;
  if (qword_2808294C8 != -1)
  {
    swift_once();
  }

  v16 = sub_27077AC4C(v6, v4, qword_28082A100);
  if (!v16)
  {
    goto LABEL_33;
  }

  v40 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger;
  sub_27077E440(v2 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger, v15, &unk_28082A120, &qword_2707AEB20);
  v41 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v15, 1, v41) == 1)
  {
    sub_27077E8F8(v15, &unk_28082A120, &qword_2707AEB20);
  }

  else
  {
    sub_27077E440(v8, v44, &qword_280829D68, &qword_2707B1530);

    v17 = sub_2707A8420();
    v18 = sub_2707A8840();

    v39 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v19 = 134218499;
      OUTLINED_FUNCTION_8_15(v2 + 48, &v42);
      *(v19 + 4) = *(v2 + 48);

      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_27073D0F4();
      *(v19 + 22) = 2081;
      sub_27077CA04(v44);
      v36 = v17;
      v38 = v16;
      sub_27077E8F8(v44, &qword_280829D68, &qword_2707B1530);
      v20 = sub_27073D0F4();

      *(v19 + 24) = v20;
      v21 = v36;
      _os_log_impl(&dword_270703000, v36, v39, "%llx: SetProperty %{public}s: %{private}s", v19, 0x20u);
      v22 = v37;
      swift_arrayDestroy();
      MEMORY[0x2743A9010](v22, -1, -1);
      MEMORY[0x2743A9010](v19, -1, -1);
    }

    else
    {

      sub_27077E8F8(v44, &qword_280829D68, &qword_2707B1530);
    }

    OUTLINED_FUNCTION_5_0();
    (*(v23 + 8))(v15);
  }

  sub_27077E440(v8, v44, &qword_280829D68, &qword_2707B1530);
  swift_beginAccess();

  sub_27077A194(v44, v6, v4);
  swift_endAccess();
  if (*MEMORY[0x277CD2880])
  {
    v24 = *MEMORY[0x277CD2880];
    if (sub_2707A85E0() == v6 && v25 == v4)
    {
    }

    else
    {
      v27 = sub_2707A8EA0();

      if ((v27 & 1) == 0)
      {
        v28 = v6 == 0xD00000000000001DLL && 0x80000002707B5190 == v4;
        if (v28 || (sub_2707A8EA0() & 1) != 0)
        {
          sub_27077CAB4(v8);
        }

        goto LABEL_33;
      }
    }

    sub_27077E440(v8, v44, &qword_280829D68, &qword_2707B1530);
    if (v44[3])
    {
      if (swift_dynamicCast() && (v43 & 1) != 0)
      {
        v29 = *(v2 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_terminationWasRequestedHandler);

        v29(v30);

LABEL_33:
        OUTLINED_FUNCTION_12_0();
        return;
      }
    }

    else
    {
      sub_27077E8F8(v44, &qword_280829D68, &qword_2707B1530);
    }

    sub_27077E440(v2 + v40, v1, &unk_28082A120, &qword_2707AEB20);
    if (__swift_getEnumTagSinglePayload(v1, 1, v41) == 1)
    {
      sub_27077E8F8(v1, &unk_28082A120, &qword_2707AEB20);
    }

    else
    {
      v31 = sub_2707A8420();
      v32 = sub_2707A8830();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_270703000, v31, v32, "RequestTerminate set to an unexpected value", v33, 2u);
        MEMORY[0x2743A9010](v33, -1, -1);
      }

      OUTLINED_FUNCTION_5_0();
      (*(v34 + 8))(v1);
    }

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t sub_27077CA04(uint64_t a1)
{
  sub_27077E440(a1, &v3, &qword_280829D68, &qword_2707B1530);
  if (v4)
  {
    sub_270724188(&v3, v5);
    sub_2707374F8(v5, &v3);
    v1 = sub_2707A85F0();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_27077E8F8(&v3, &qword_280829D68, &qword_2707B1530);
    return 7104878;
  }

  return v1;
}

uint64_t sub_27077CAB4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  result = HIDDeviceType.init(properties:)(*(v2 + 56), *(v2 + 64));
  if (result != 5)
  {
    return result;
  }

  sub_27077E440(a1, &v15, &qword_280829D68, &qword_2707B1530);
  if (!v16)
  {
    return sub_27077E8F8(&v15, &qword_280829D68, &qword_2707B1530);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A278, &unk_2707B1680);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_270735984(v13, &v15, 0xD000000000000027);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_27077E8F8(&v15, &qword_280829D68, &qword_2707B1530);
  }

  v5 = 0;
LABEL_10:
  sub_270735984(v13, &v15, 0x4950746E65696C43);

  if (!v16)
  {
    sub_27077E8F8(&v15, &qword_280829D68, &qword_2707B1530);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v6 = v13;
LABEL_15:
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;

    v8 = sub_27077CE50(v6, sub_27077E828, v7);

    v9 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + v9);
    sub_270723728(v8, v6);
    *(v2 + v9) = v14;
    swift_endAccess();
  }

  else
  {
    v10 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    if (sub_2707359E8(v6, *(v2 + v10)))
    {
      swift_endAccess();
      sub_2707A8450();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    sub_270722E1C(v6);
    swift_endAccess();
  }

  result = sub_27077A8D4(*(v2 + 16), 9, type metadata accessor for DigitizerGesture);
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    LOBYTE(v12) = *(*(v2 + v12) + 16) != 0;
    swift_beginAccess();
    *(v11 + 19) = v12;
    sub_27077A3AC(MEMORY[0x277D84F90], sub_27077E95C, 0);
  }

  return result;
}

uint64_t sub_27077CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v3 = a1;
  v4 = sub_2707A8480();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2707A84B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2707A88B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 1)
  {
    sub_27073FB54(0, &qword_28082A280, 0x277D85CA0);
    v24 = v4;
    sub_2707A88A0();
    v19 = sub_2707A88C0();
    (*(v15 + 8))(v18, v14);
    swift_getObjectType();
    v20 = swift_allocObject();
    v21 = v26;
    *(v20 + 16) = v25;
    *(v20 + 24) = v21;
    aBlock[4] = sub_27073516C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2707325D0;
    aBlock[3] = &block_descriptor_3;
    v22 = _Block_copy(aBlock);

    sub_2707A8490();
    sub_27077D1F8();
    sub_2707A88D0();
    _Block_release(v22);
    (*(v5 + 8))(v8, v24);
    (*(v10 + 8))(v13, v9);

    sub_2707A88F0();
    *(swift_allocObject() + 16) = v19;
  }

  sub_2707A8460();
  swift_allocObject();
  return sub_2707A8470();
}

uint64_t sub_27077D1F8()
{
  sub_2707A8480();
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0, &unk_2707B1690);
  sub_270732684();
  return sub_2707A8A90();
}

uint64_t sub_27077D2A8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
  swift_beginAccess();
  if (sub_2707359E8(a2, *(a1 + v4)))
  {
    swift_endAccess();
    sub_2707A8450();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  sub_270722E1C(a2);
  swift_endAccess();
}

id sub_27077D360(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  sub_27077E440(a1, v1 + OBJC_IVAR____TtC12UniversalHIDP33_77F0A1D2252CCF67CE1080DE620C755225HIDVirtualServiceDelegate_logger, &unk_28082A120, &qword_2707AEB20);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_27077E8F8(a1, &unk_28082A120, &qword_2707AEB20);
  return v4;
}

uint64_t sub_27077D410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = a2 == 0xD000000000000019 && 0x80000002707B5340 == a3;
    if (v6 || (sub_2707A8EA0() & 1) != 0)
    {
      sub_27077BF90();
    }

    HIDVirtualService.setProperty(_:forKey:)();
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

double sub_27077D5B8@<D0>(_OWORD *a1@<X8>)
{
  if (swift_weakLoadStrong())
  {
    HIDVirtualService.property(forKey:)(a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_27077DA2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27077DAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_27077DB38(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A318, &qword_2707B16A8), v2 = sub_2707A8AE0(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_2707A8F60();

      sub_2707A8620();
      v10 = sub_2707A8FC0();
      v11 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v6 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 16 * v12);
        v17 = *v16 == v9 && v16[1] == v8;
        if (v17 || (sub_2707A8EA0() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v12 + 1;
      }

      *(v6 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v9;
      v18[1] = v8;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v21;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_27077DCC8(void *a1, void *a2)
{
  if (IOHIDEventGetType() != 17)
  {
    goto LABEL_6;
  }

  v4 = a2[2];
  v5 = a1;
  v6 = sub_27077A8D4(v4, 5, type metadata accessor for PointerGesture);
  if (!v6)
  {

LABEL_6:
    v13 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v13 + 80))(a1, ObjectType, v13);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
  swift_beginAccess();
  v30 = *(v7 + v8);
  IOHIDEventSetIntegerValue();
  v9 = [v5 children];
  if (v9)
  {
    v10 = v9;
    sub_27073FB54(0, &qword_28082A300, 0x277CD2858);
    v11 = sub_2707A8710();

    v12 = sub_27070EE70(v11);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = 0;
  v16 = *(v12 + 16);
  for (i = v12 + 32; ; i += 40)
  {
    if (v16 == v15)
    {

LABEL_17:
      v27 = a2[5];
      swift_getObjectType();
      v28 = *(v27 + 80);
      v29 = v5;
      v28();

      return;
    }

    if (v15 >= *(v12 + 16))
    {
      break;
    }

    sub_27077E790(i, &v31);
    v18 = v32;
    v19 = v33;
    __swift_project_boxed_opaque_existential_1(&v31, v32);
    if ((*(v19 + 24))(v18, v19) == 17)
    {

      sub_27070F8A8(&v31, v34);
      sub_27077E790(v34, &v31);
      v20 = v32;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v32);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24, v22);
      v26 = sub_27075DFC0(v24, v20);
      __swift_destroy_boxed_opaque_existential_1(&v31);
      if (v26)
      {
        IOHIDEventSetIntegerValue();
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      goto LABEL_17;
    }

    ++v15;
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  __break(1u);
}

void sub_27077DFFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v42 - v13;
  v15 = *(v7 + 16);
  v15(v42 - v13, v12);
  (v15)(v9, v14, a3);
  v16 = sub_27075DFC0(v9, a3);
  if (!v16)
  {
LABEL_6:
    v25 = a2[5];
    ObjectType = swift_getObjectType();
    v27 = (*(a4 + 352))(a3, a4);
    (*(v25 + 80))(v27, ObjectType, v25);
LABEL_18:

    (*(v7 + 8))(v14, a3);
    return;
  }

  v17 = v16;
  v18 = sub_27077A8D4(a2[2], 5, type metadata accessor for PointerGesture);
  if (!v18)
  {

    goto LABEL_6;
  }

  v19 = v18;
  v45 = v7;
  v20 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
  swift_beginAccess();
  v42[1] = *(v19 + v20);
  IOHIDEventSetIntegerValue();
  v21 = [v17 children];
  v43 = a2;
  v44 = v19;
  if (v21)
  {
    v22 = v21;
    sub_27073FB54(0, &qword_28082A300, 0x277CD2858);
    v23 = sub_2707A8710();

    v24 = sub_27070EE70(v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v28 = 0;
  v29 = *(v24 + 16);
  for (i = v24 + 32; ; i += 40)
  {
    if (v29 == v28)
    {

LABEL_17:
      v40 = v43[5];
      swift_getObjectType();
      v41 = *(v40 + 80);
      v27 = v17;
      v41();

      v7 = v45;
      goto LABEL_18;
    }

    if (v28 >= *(v24 + 16))
    {
      break;
    }

    sub_27077E790(i, &v46);
    v32 = v47;
    v31 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    if ((*(v31 + 24))(v32, v31) == 17)
    {

      sub_27070F8A8(&v46, v49);
      sub_27077E790(v49, &v46);
      v33 = v47;
      v34 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
      v35 = MEMORY[0x28223BE20](v34, v34);
      v37 = v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37, v35);
      v39 = sub_27075DFC0(v37, v33);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      if (v39)
      {
        IOHIDEventSetIntegerValue();
      }

      __swift_destroy_boxed_opaque_existential_1(v49);
      goto LABEL_17;
    }

    ++v28;
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  __break(1u);
}

uint64_t sub_27077E440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_27077E4CC(uint64_t a1)
{
  sub_27073E600(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27077E600(uint64_t a1)
{
  sub_27073E600(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27077E6A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27077E6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_27077E748(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_27077E760(void *result, int a2)
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

uint64_t sub_27077E790(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_27077E7F0()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_27077E834()
{

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27077E880()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27077E8C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27077E8F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_11_15(uint64_t a1)
{

  return [v3 (v2 + 3624)];
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_27077E440(v0, v3, v1, v2);
}

uint64_t AbsolutePointerGesture.__allocating_init(logger:pointerGesture:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AbsolutePointerGesture.init(logger:pointerGesture:)(a1, a2);
  return v4;
}

uint64_t AbsolutePointerGesture.buttonMask.getter()
{
  v1 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AbsolutePointerGesture.init(logger:pointerGesture:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y) = 0;
  sub_270747C30(a1, v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_pointerGesture) = a2;
  return v2;
}

uint64_t AbsolutePointerGesture.dispatch(report:)()
{
  v1 = v0;
  v27[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  mach_absolute_time();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  OUTLINED_FUNCTION_0_0();
  v3 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  if (v3)
  {
    v26 = v3;
    v4 = sub_27070E734(&v26, v27);
    v6 = v5;
    sub_270706C38(v4, v5);
    v7 = mach_absolute_time();
    v9 = sub_270718460(v7, 16973568, 0, v4, v6, 0, v8);
    IOHIDEventAppendEvent();

    sub_270708D74(v4, v6);
  }

  OUTLINED_FUNCTION_0_0();
  v10 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v12 = sub_270747158(v10, v11);
  OUTLINED_FUNCTION_0_0();
  v13 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  v14 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  v15 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x;
  OUTLINED_FUNCTION_1_38(vcvtd_n_f64_s32(v14, 0x10uLL), *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x));
  if (v17 ^ v18 | v16 && (OUTLINED_FUNCTION_0_0(), v19 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_1_38(vcvtd_n_f64_s32(v19, 0x10uLL), *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y)), v17 ^ v18 | v16) && (v20 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask, swift_beginAccess(), *(v1 + v20) == v12) && *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) == v13)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    *(v1 + v15) = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
    OUTLINED_FUNCTION_0_0();
    *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y) = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
    v22 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask;
    swift_beginAccess();
    *(v1 + v22) = v12;
    *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) = v13;
    OUTLINED_FUNCTION_0_0();
    v23 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    v24 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    v21 = sub_2707474BC(RelativePointerEvent, v23, v24, 0.0, 0.0, 0.0);
  }

  return v21;
}

uint64_t AbsolutePointerGesture.deinit()
{
  sub_270747CA0(v0 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);

  return v0;
}

uint64_t AbsolutePointerGesture.__deallocating_deinit()
{
  sub_270747CA0(v0 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AbsolutePointerGesture(uint64_t a1)
{
  result = qword_28082A418;
  if (!qword_28082A418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27077EF30(uint64_t a1)
{
  sub_27073E600(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_27077F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x277D837D0];
  sub_2707A8520();
  if (a5)
  {
    v10 = sub_2707A85D0();
    v12 = v11;
    v29 = v9;
    *&v28 = a4;
    *(&v28 + 1) = a5;
    sub_270724188(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2707231E8(v25, v10, v12);
  }

  if (a6)
  {
    v13 = sub_2707A85D0();
    v15 = v14;
    swift_getErrorValue();
    v16 = v26;
    v17 = v27;
    v29 = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
    sub_270724188(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2707231E8(v25, v13, v15);
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2707A85C0();

  v21 = sub_2707A84F0();

  v22 = [v19 initWithDomain:v20 code:a3 userInfo:v21];

  return v22;
}

Swift::Double __swiftcall HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(Swift::Double logicalMinimum, Swift::Double logicalMaximum, Swift::Double_optional physicalMinimum, Swift::Double_optional physicalMaximum, Swift::Double_optional exponent)
{
  v10 = logicalMaximum;
  v11 = logicalMinimum;
  if (!physicalMaximum.is_nil)
  {
    v10 = logicalMaximum;
    v11 = logicalMinimum;
    if ((v5 & 1) == 0)
    {
      v11 = *&physicalMinimum.is_nil;
      if (*&physicalMinimum.is_nil == 0.0)
      {
        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *&exponent.is_nil;
        }

        else
        {
          v10 = logicalMaximum;
        }

        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v11 = logicalMinimum;
        }
      }

      else
      {
        v10 = *&exponent.is_nil;
      }
    }
  }

  v12 = 1.0;
  if ((v7 & 1) == 0 && v6 != 0.0)
  {
    v12 = __exp10(v6);
  }

  return (logicalMaximum - logicalMinimum) / ((v10 - v11) * v12);
}

uint64_t HIDReport.loadValue<A>(from:at:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v70 = a1;
  v72 = a6;
  v81 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  OUTLINED_FUNCTION_1_11();
  v73 = v11;
  MEMORY[0x28223BE20](v12, v13);
  v71 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v69 = &v48 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v68 = &v48 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v48 - v23;
  swift_getAssociatedConformanceWitness();
  sub_2707A8EB0();
  sub_2707A8E80();
  v25 = sub_2707A8C00();
  if (v25 < -7)
  {
    goto LABEL_32;
  }

  if ((v25 + 7) >= 0xF)
  {
    v28 = 0;
    v29 = 0;
    v30 = a2;
    v61 = a2 >> 32;
    v60 = BYTE6(a3);
    v67 = (v73 + 8);
    v59 = a2 >> 8;
    v58 = a2 >> 16;
    v57 = a2 >> 24;
    v56 = HIDWORD(a2);
    v55 = a2 >> 40;
    v54 = HIWORD(a2);
    v53 = HIBYTE(a2);
    v52 = a3 >> 8;
    v51 = a3 >> 16;
    v50 = a3 >> 24;
    v49 = HIDWORD(a3);
    v48 = a3 >> 40;
    v31 = a3 >> 62;
    v32 = v25 / 8;
    while (2)
    {
      v33 = 0;
      v34 = v30;
      switch(v31)
      {
        case 1uLL:
          goto LABEL_12;
        case 2uLL:
          v34 = *(a2 + 16);
LABEL_12:
          if ((v34 - 0x1000000000000000) >> 61 == 7)
          {
            v33 = 8 * v34;
LABEL_6:
            v35 = v70 + v29;
            if (!__OFADD__(v70, v29))
            {
              v36 = v33 + v35;
              if (!__OFADD__(v33, v35))
              {
                v65 = v31;
                v66 = v30;
                v63 = v29 + 1;
                v64 = v32;
                switch(v31)
                {
                  case 1uLL:
                    if (v36 < v30 || v36 >= v61)
                    {
                      goto LABEL_37;
                    }

                    v43 = sub_2707A81F0();
                    if (!v43)
                    {
                      __break(1u);
LABEL_43:
                      __break(1u);
LABEL_44:
                      __break(1u);
                      JUMPOUT(0x27077F99CLL);
                    }

                    v39 = v43;
                    v44 = sub_2707A8210();
                    v41 = v36 - v44;
                    if (!__OFSUB__(v36, v44))
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_39;
                  case 2uLL:
                    if (v36 < *(a2 + 16))
                    {
                      goto LABEL_38;
                    }

                    if (v36 >= *(a2 + 24))
                    {
                      goto LABEL_40;
                    }

                    v38 = sub_2707A81F0();
                    if (!v38)
                    {
                      goto LABEL_44;
                    }

                    v39 = v38;
                    v40 = sub_2707A8210();
                    v41 = v36 - v40;
                    if (__OFSUB__(v36, v40))
                    {
                      goto LABEL_41;
                    }

LABEL_27:
                    v37 = *(v39 + v41);
LABEL_28:
                    v45 = v69;
                    LOBYTE(v74) = v37;
                    sub_27074A898();
                    sub_2707A8A10();
                    if (v29 == 0x1000000000000000)
                    {
                      goto LABEL_35;
                    }

                    v74 = v28;
                    sub_270710EEC();
                    v46 = v68;
                    sub_2707A89A0();
                    v62 = a2;
                    v47 = *v67;
                    (*v67)(v45, a4);
                    sub_2707A89B0();
                    v47(v46, a4);
                    a2 = v62;
                    v28 += 8;
                    v29 = v63;
                    v32 = v64;
                    v31 = v65;
                    v30 = v66;
                    if (v64 == v63)
                    {
                      goto LABEL_3;
                    }

                    continue;
                  case 3uLL:
                    goto LABEL_43;
                  default:
                    if (v36 >= v60)
                    {
                      goto LABEL_36;
                    }

                    LOBYTE(v74) = v30;
                    BYTE1(v74) = v59;
                    BYTE2(v74) = v58;
                    BYTE3(v74) = v57;
                    BYTE4(v74) = v56;
                    BYTE5(v74) = v55;
                    BYTE6(v74) = v54;
                    HIBYTE(v74) = v53;
                    v75 = a3;
                    v76 = v52;
                    v77 = v51;
                    v78 = v50;
                    v79 = v49;
                    v80 = v48;
                    v37 = *(&v74 + v36);
                    goto LABEL_28;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          __break(1u);
          break;
        default:
          goto LABEL_6;
      }

      break;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_3:
  v26 = v73;
  (*(v73 + 16))(v71, v24, a4);
  sub_2707A8A10();
  return (*(v26 + 8))(v24, a4);
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_1_11();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_30_1();
  v23 = v22 - v21;
  HIDReport.loadValue<A>(from:at:)(v24, v25, v26, v27, v22 - v21);
  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_2_27();
    v29 = sub_2707A89F0();
    OUTLINED_FUNCTION_2_27();
    v30 = sub_2707A89D0();
    (*(v18 + 8))(v23, a10);
    if (v29)
    {
      v28 = v30;
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    sub_2707A84E0();
    (*(v18 + 8))(v23, a10);
    v28 = v38;
  }

  if (v28 > a2 || v28 < a1)
  {
    *&result = 0.0;
  }

  else
  {
    v33 = __exp10(a5);
    if (a5 == 0.0)
    {
      v33 = 1.0;
    }

    v34 = a3 == 0.0;
    v35 = a4 == 0.0;
    if (v34 && v35)
    {
      v36 = a1;
    }

    else
    {
      v36 = a3;
    }

    if (v34 && v35)
    {
      v37 = a2;
    }

    else
    {
      v37 = a4;
    }

    *&result = v28 / ((a2 - a1) / (v33 * (v37 - v36)));
  }

  return result;
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a7, a8, -1.0, 1.0, 0.0, a1, a2, a3, a4, a5, a6);
}

{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a7, a8, 0.0, 1.0, 0.0, a1, a2, a3, a4, a5, a6);
}

uint64_t HIDReport.storeValue<A>(_:to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_11();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_30_1();
  v13 = v12 - v11;
  result = sub_2707A8C00();
  if (result < -7)
  {
    goto LABEL_44;
  }

  if ((result + 7) < 0xF)
  {
    return result;
  }

  v49 = a3;
  v15 = 0;
  v16 = 0;
  v45 = v4;
  v18 = *v4;
  v17 = v4[1];
  v48 = (v8 + 8);
  v19 = result / 8;
  while (2)
  {
    if (v19 == v16)
    {
      goto LABEL_45;
    }

    v20 = v16;
    v21 = v16 + 1;
    v22 = 0;
    switch(v17 >> 62)
    {
      case 1uLL:
        v27 = v18;
        goto LABEL_13;
      case 2uLL:
        v27 = *(v18 + 16);
LABEL_13:
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
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
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        v22 = 8 * v27;
LABEL_6:
        v23 = __OFADD__(v49, v20);
        v24 = v49 + v20;
        if (v23)
        {
          goto LABEL_46;
        }

        v46 = v19;
        v47 = v21;
        v25 = v22 + v24;
        if (__OFADD__(v22, v24))
        {
          goto LABEL_47;
        }

        v50 = v15;
        sub_270710EEC();
        sub_2707A8990();
        v26 = sub_2707A89D0();
        result = (*v48)(v13, a4);
        switch(v17 >> 62)
        {
          case 1uLL:
            v44 = v26;
            if (v25 < v18 || v25 >= v18 >> 32)
            {
              goto LABEL_50;
            }

            v32 = v17 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_30;
            }

            if (sub_2707A81F0() && __OFSUB__(v18, sub_2707A8210()))
            {
              goto LABEL_55;
            }

            sub_2707A8220();
            swift_allocObject();
            OUTLINED_FUNCTION_2_33();
            v33 = sub_2707A81D0();

            v32 = v33;
LABEL_30:
            sub_2707A81C0();
            v34 = sub_2707A81F0();
            if (!v34)
            {
LABEL_58:
              *v45 = xmmword_2707A9D20;
              __break(1u);
LABEL_59:
              *v45 = xmmword_2707A9D20;
              __break(1u);
              JUMPOUT(0x27078015CLL);
            }

            v35 = v34;
            result = sub_2707A8210();
            if (__OFSUB__(v25, result))
            {
              goto LABEL_52;
            }

            *(v35 + v25 - result) = v44;
            v17 = v32 | 0x4000000000000000;
            break;
          case 2uLL:
            if (v25 < *(v18 + 16))
            {
              goto LABEL_49;
            }

            if (v25 >= *(v18 + 24))
            {
              goto LABEL_51;
            }

            v28 = v17 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_35;
            }

            v30 = *(v18 + 16);
            v29 = *(v18 + 24);
            if (sub_2707A81F0() && __OFSUB__(v30, sub_2707A8210()))
            {
              goto LABEL_56;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_54;
            }

            sub_2707A8220();
            swift_allocObject();
            OUTLINED_FUNCTION_2_33();
            v36 = sub_2707A81D0();

            v28 = v36;
LABEL_35:
            v37 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = *(v18 + 16);
              v39 = *(v18 + 24);
              sub_2707A82B0();
              v40 = swift_allocObject();
              *(v40 + 16) = v38;
              *(v40 + 24) = v39;

              v18 = v40;
            }

            sub_2707A81C0();
            v41 = sub_2707A81F0();
            if (!v41)
            {
              goto LABEL_59;
            }

            v42 = v41;
            result = sub_2707A8210();
            if (__OFSUB__(v25, result))
            {
              goto LABEL_53;
            }

            *(v42 + v25 - result) = v37;
            v17 = v28 | 0x8000000000000000;
            break;
          case 3uLL:
            *v45 = v18;
            v45[1] = v17;
            __break(1u);
            goto LABEL_58;
          default:
            v50 = v18;
            LOWORD(v51) = v17;
            BYTE2(v51) = BYTE2(v17);
            HIBYTE(v51) = BYTE3(v17);
            LOBYTE(v52) = BYTE4(v17);
            HIBYTE(v52) = BYTE5(v17);
            v53 = BYTE6(v17);
            if (v25 >= BYTE6(v17))
            {
              goto LABEL_48;
            }

            *(&v50 + v25) = v26;
            v18 = v50;
            v17 = v43 & 0xF00000000000000 | v51 | ((v52 | (v53 << 16)) << 32);
            v43 = v17;
            v16 = v47;
            goto LABEL_41;
        }

        v16 = v47;
LABEL_41:
        v19 = v46;
        v15 += 8;
        if (v46 != v16)
        {
          continue;
        }

        *v45 = v18;
        v45[1] = v17;
        return result;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_1_11();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_30_1();
  v21 = v20 - v19;
  if ((v22 & 1) != 0 || (v18 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v24 = OUTLINED_FUNCTION_2_27();
    sub_270780320(v24, v25, v26, v27);
  }

  else
  {
    __exp10(a5);
    sub_270715DBC();
    sub_2707A8A00();
  }

  HIDReport.storeValue<A>(_:to:at:)(v21, v23, a9, a10);
  return (*(v15 + 8))(v21, a10);
}

uint64_t sub_270780320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a5@<D1>)
{
  v19[1] = a3;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v19 - v13;
  v20 = v12;
  sub_270715DBC();
  sub_2707A8A00();
  sub_2707A8C30();
  v15 = sub_2707A8560();
  v16 = *(v7 + 8);
  v16(v9, a1);
  v16(v14, a1);
  if (v15)
  {
    return sub_2707A8C30();
  }

  v20 = a5;
  sub_2707A8A00();
  sub_2707A8C20();
  v18 = sub_2707A8570();
  v16(v9, a1);
  v16(v14, a1);
  if (v18)
  {
    return sub_2707A8C20();
  }

  v20 = 0.0;
  v21 = 0xE000000000000000;
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD000000000000031, 0x80000002707B5470);
  sub_2707A8790();
  MEMORY[0x2743A7BE0](45, 0xE100000000000000);
  sub_2707A8790();
  result = sub_2707A8C70();
  __break(1u);
  return result;
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:)(__n128 a1, __n128 a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return OUTLINED_FUNCTION_0_48(a3, a4, a5, a6, a7, a8, a1.n128_f64[0], a2.n128_f64[0], -1.0);
}

{
  return OUTLINED_FUNCTION_0_48(a3, a4, a5, a6, a7, a8, a1.n128_f64[0], a2.n128_f64[0], 0.0);
}

uint64_t PointerFilter.debugState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295C0, &qword_2707AA498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 32) = 0x7265746E696F50;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A428, &qword_2707B1710);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_2707AFD30;
  *(v1 + 32) = 0x614D6E6F74747542;
  *(v1 + 40) = 0xEA00000000006B73;
  *(v1 + 48) = sub_2707A8950();
  strcpy((v1 + 56), "DeadButtonMask");
  *(v1 + 71) = -18;
  *(v1 + 72) = sub_2707A8950();
  *(v1 + 80) = 0xD000000000000010;
  *(v1 + 88) = 0x80000002707B54B0;
  *(v1 + 96) = sub_2707A8950();
  sub_27073FB54(0, &qword_28082A430, 0x277CCABB0);
  v2 = sub_2707A8520();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A438, &qword_2707B1718);
  *(inited + 48) = v2;
  return sub_2707A8520();
}

uint64_t PointerFilter.__allocating_init(logger:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PointerFilter.init(logger:service:)(a1, a2, a3);
  return v6;
}

char *PointerFilter.init(logger:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask] = 0;
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask] = 0;
  v6 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  v7 = sub_2707A8440();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a1, v7);
  ObjectType = swift_getObjectType();
  v10 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  (*(v8 + 8))(a1, v7);
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_serviceID] = v10;
  return v3;
}

BOOL sub_27078093C(uint64_t a1)
{
  IOHIDEventGetFloatValue();
  if (v2 != 0.0)
  {
    return 1;
  }

  IOHIDEventGetFloatValue();
  if (v3 != 0.0 || IOHIDEventIsAbsolute())
  {
    return 1;
  }

  v5 = *(v1 + 16);
  return (IOHIDEventGetIntegerValue() & ~v5) != 0;
}

uint64_t sub_2707809C0(char *a1)
{
  if (IOHIDEventIsAbsolute())
  {
    if (qword_280829450 == -1)
    {
LABEL_3:
      v45 = qword_280829A78;
      v46 = qword_280829A80;
      sub_270706C38(qword_280829A78, qword_280829A80);
      v2 = HIDReportDescriptor.reportBitCount(for:)(0x13u);
      sub_270708D74(v45, v46);
      v45 = HIDReport.init(bitCount:id:)(v2, 19);
      v46 = v3;
      IOHIDEventGetTimeStamp();
      _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v4);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v5);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8, &qword_2707AA4C0);
      v6 = swift_allocObject();
      v7 = v6;
      *(v6 + 16) = xmmword_2707A9CF0;
      v8 = v45;
      v9 = v46;
      goto LABEL_30;
    }

LABEL_32:
    swift_once();
    goto LABEL_3;
  }

  if (qword_2808294F8 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_2808294F8);
  }

  v45 = qword_28082A808;
  v46 = qword_28082A810;
  sub_270706C38(qword_28082A808, qword_28082A810);
  v10 = HIDReportDescriptor.reportBitCount(for:)(5u);
  sub_270708D74(v45, v46);
  v11 = HIDReport.init(bitCount:id:)(v10, 5);
  v13 = v12;
  v47 = v11;
  v48 = v12;
  IOHIDEventGetTimeStamp();
  switch(v13 >> 62)
  {
    case 1uLL:
      LODWORD(v14) = HIDWORD(v11) - v11;
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        JUMPOUT(0x270780F78);
      }

      v14 = v14;
LABEL_11:
      if ((v14 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= 25)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

LABEL_14:
      IOHIDEventGetFloatValue();
      while (2)
      {
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        IOHIDEventGetFloatValue();
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        if ((IOHIDEventGetEventFlags() & 0x10000) != 0)
        {
          *(&v43 + 1) = &type metadata for PointerEvent;
          v44 = &protocol witness table for PointerEvent;
          *&v42 = a1;
          v22 = a1;
          goto LABEL_27;
        }

        v18 = [a1 children];
        if (v18)
        {
          v19 = v18;
          sub_27073FB54(0, &qword_28082A300, 0x277CD2858);
          v20 = sub_2707A8710();

          v21 = sub_27070EE70(v20);
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v23 = 0;
        v24 = *(v21 + 16);
        for (i = v21 + 32; ; i += 40)
        {
          if (v24 == v23)
          {

            v42 = 0u;
            v43 = 0u;
            v44 = 0;
            sub_27071445C(&v42);
            goto LABEL_29;
          }

          if (v23 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_27070F5BC(i, v39);
          v26 = v40;
          v27 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          HIDEventProtocol.first(where:)(sub_27075C678, v26, v27, &v36);
          __swift_destroy_boxed_opaque_existential_1(v39);
          if (v37)
          {
            break;
          }

          ++v23;
          sub_27071445C(&v36);
        }

        sub_27070F8A8(&v36, v38);
        sub_27070F8A8(v38, &v42);
LABEL_27:
        sub_27070F8A8(&v42, &v45);
        sub_27070F5BC(&v45, &v42);
        a1 = v44;
        __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        v28 = OUTLINED_FUNCTION_28();
        if (v29(v28) != 17)
        {
LABEL_34:
          __break(1u);
          continue;
        }

        break;
      }

      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v30 = OUTLINED_FUNCTION_28();
      v32 = v31(v30);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v33);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v34);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8, &qword_2707AA4C0);
      v6 = swift_allocObject();
      v7 = v6;
      *(v6 + 16) = xmmword_2707A9CF0;
      v8 = v47;
      v9 = v48;
LABEL_30:
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      sub_270706C38(v8, v9);
      sub_270708D74(v8, v9);
      return v7;
    case 2uLL:
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (!v17)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    case 3uLL:
      goto LABEL_14;
    default:
      v14 = BYTE6(v13);
      goto LABEL_11;
  }
}

uint64_t sub_270780F88(uint64_t a1, uint64_t a2)
{
  result = IOHIDEventGetIntegerValue();
  if (result && (result & a2) == 0)
  {
    IOHIDEventSetIntegerValue();

    return IOHIDEventSetFloatValue();
  }

  return result;
}

uint64_t sub_270781000(uint64_t a1, unint64_t a2)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & a2) != result)
  {
    if ((result & a2) - 0xFFFFFFFF < 0xFFFFFFFF00000002)
    {
      __break(1u);
    }

    else
    {

      return IOHIDEventSetIntegerValue();
    }
  }

  return result;
}

BOOL PointerFilter.filterEvent(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_27070F5BC(a2, v44);
  v6 = v45;
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  OUTLINED_FUNCTION_2_34();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_27075DFC0(v11, v6);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v13)
  {
    v14 = *(v3 + 16);
    IntegerValue = IOHIDEventGetIntegerValue();
    if (v14 != IntegerValue)
    {
      *(v3 + 16) = IntegerValue;
    }

    if ((*(v3 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask + 2) & 2) != 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v16 = *(v3 + 24);
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = *(v3 + 16) & v16;
      if (v16 != v17)
      {
        *(v3 + 24) = v17;
      }

      sub_270780F88(v13, ~v16);
      v18 = [v13 children];
      if (v18)
      {
        v19 = v18;
        sub_27073FB54(0, &qword_28082A300, 0x277CD2858);
        v20 = sub_2707A8710();

        v21 = sub_27070EE70(v20);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v23 = *(v21 + 16);
      if (v23)
      {
        v39 = v21;
        v40 = a1;
        v24 = v21 + 32;
        while (1)
        {
          sub_27070F5BC(v24, v44);
          sub_27070F5BC(v44, v41);
          v25 = v42;
          __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
          OUTLINED_FUNCTION_2_34();
          v28 = MEMORY[0x28223BE20](v26, v27);
          v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v31 + 16))(v30, v28);
          v32 = sub_27075DFC0(v30, v25);
          __swift_destroy_boxed_opaque_existential_1(v41);
          if (v32)
          {
            sub_270780F88(v32, ~v16);
          }

          else
          {
            sub_27070F5BC(v44, v41);
            v33 = v42;
            v34 = v43;
            __swift_project_boxed_opaque_existential_1(v41, v42);
            if ((*(v34 + 24))(v33, v34) != 2)
            {
              __swift_destroy_boxed_opaque_existential_1(v44);
              v37 = v41;
              goto LABEL_20;
            }

            v35 = v42;
            v36 = v43;
            __swift_project_boxed_opaque_existential_1(v41, v42);
            v32 = (*(v36 + 352))(v35, v36);
            __swift_destroy_boxed_opaque_existential_1(v41);
            sub_270781000(v32, ~v16);
          }

          v37 = v44;
LABEL_20:
          __swift_destroy_boxed_opaque_existential_1(v37);
          v24 += 40;
          if (!--v23)
          {

            a1 = v40;
            goto LABEL_24;
          }
        }
      }

LABEL_24:
      sub_27070F5BC(a2, a1);
    }

    v22 = sub_27078093C(v13);
    if ((*(v3 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask + 2) & 2) != 0)
    {
      sub_2707809C0(v13);
    }
  }

  else
  {
    sub_27070F5BC(a2, a1);
    return 0;
  }

  return v22;
}

uint64_t PointerFilter.updateCopyMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask) = a2;
  v4 = MEMORY[0x277D84F90];
  if ((a1 & 0x20000) == 0 && (a2 & 0x20000) != 0 && *(v3 + 16))
  {
    if (qword_2808294F8 != -1)
    {
      OUTLINED_FUNCTION_0_49(&qword_2808294F8);
    }

    v12 = qword_28082A808;
    v14 = qword_28082A810;
    sub_270706C38(qword_28082A808, qword_28082A810);
    v5 = HIDReportDescriptor.reportBitCount(for:)(5u);
    sub_270708D74(v12, v14);
    v13 = HIDReport.init(bitCount:id:)(v5, 5);
    v15 = v6;
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8, &qword_2707AA4C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707A9CF0;
    *(v4 + 32) = v13;
    *(v4 + 40) = v15;
    v7 = OUTLINED_FUNCTION_28();
    sub_270706C38(v7, v8);
    v9 = OUTLINED_FUNCTION_28();
    sub_270708D74(v9, v10);
  }

  return v4;
}

uint64_t PointerFilter.updateFilterMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask) = a2;
  if ((a1 & 0x20000) == 0)
  {
    if ((a2 & 0x20000) != 0)
    {
      v2[4] = v2[2];
    }

    return MEMORY[0x277D84F90];
  }

  if ((a2 & 0x20000) != 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2[4];
  v4 = v2[2];
  v2[3] = v4 & ~v3;
  v2[4] = 0;
  if ((v3 & ~v4) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  result = mach_absolute_time();
  if (!HIDWORD(v3))
  {
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    ButtonEventWithPressure = IOHIDEventCreateButtonEventWithPressure();
    IOHIDEventAppendEvent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295B0, &qword_2707AA488);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2707B1700;
    *(v8 + 32) = RelativePointerEvent;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t PointerFilter.deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  sub_2707A8440();
  OUTLINED_FUNCTION_6_8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PointerFilter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  sub_2707A8440();
  OUTLINED_FUNCTION_6_8();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PointerFilter(uint64_t a1)
{
  result = qword_28082A460;
  if (!qword_28082A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27078187C(uint64_t a1)
{
  result = sub_2707A8440();
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

uint64_t OUTLINED_FUNCTION_0_49(uint64_t a1)
{

  return swift_once();
}

uint64_t NavigationSwipeGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t static NavigationSwipeEvent.dispatch(report:platform:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  type metadata accessor for NavigationSwipeGesture();
  *(swift_initStackObject() + 16) = v3;
  return NavigationSwipeGesture.dispatch(report:)();
}

uint64_t NavigationSwipeGesture.dispatch(report:)()
{
  if (*(v0 + 16) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  IOHIDEventSetIntegerValue();
  OUTLINED_FUNCTION_0_0();
  v2 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  if (v2 != 0.0 || (OUTLINED_FUNCTION_0_0(), _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_0_0(), vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL) != 0.0))
  {
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    mach_absolute_time();
    VelocityEvent = IOHIDEventCreateVelocityEvent();
    IOHIDEventAppendEvent();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528, &qword_2707A9F30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  v5 = *(v0 + 16);
  v6 = NavigationSwipeEvent;
  mach_absolute_time();
  if (v5 == 1)
  {
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v8 = &protocol witness table for DigitizerEvent;
    v9 = &type metadata for DigitizerEvent;
  }

  else
  {
    DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
    v8 = &protocol witness table for PointerEvent;
    v9 = &type metadata for PointerEvent;
  }

  IOHIDEventAppendEvent();

  *(v4 + 56) = v9;
  *(v4 + 64) = v8;
  *(v4 + 32) = DigitizerEvent;

  return v4;
}

uint64_t sub_270781D94(uint64_t a1)
{
  OUTLINED_FUNCTION_97(a1);
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781DE4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781E20(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_97(a1);
  MEMORY[0x2743A8500](v1);
  return sub_2707A8FC0();
}

uint64_t sub_270781E60(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_95();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781E9C(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_95();
  sub_2707A8F90();
  return sub_2707A8FC0();
}

uint64_t sub_270781ED8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97(a1);
  sub_2707A8620();
  return sub_2707A8FC0();
}

uint64_t sub_270781F20(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_95();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_270782038(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_142(a1, a2);
  OUTLINED_FUNCTION_95();
  sub_2707A8F90();
  return sub_2707A8FC0();
}

uint64_t sub_270782070(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_142(a1, a2);
  OUTLINED_FUNCTION_95();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_2707820A8(uint64_t a1, unsigned __int8 a2)
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](a2);
  return sub_2707A8FC0();
}

uint64_t sub_2707820EC(uint64_t a1, char a2)
{
  sub_2707A8F60();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270782140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2707A8F60();
  sub_2707A8620();
  return sub_2707A8FC0();
}

uint64_t sub_270782190(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_142(a1, a2);
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_2707821CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_142(a1, a2);
  OUTLINED_FUNCTION_95();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t HIDServiceProperties.primaryUsagePair.getter()
{
  v0 = OUTLINED_FUNCTION_1_34();
  v2 = HIDServiceProperties.subscript.getter(v0, v1);
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    v5 = HIDServiceProperties.subscript.getter(0x557972616D697250, 0xEC00000065676173);
    if ((v6 & 1) == 0)
    {
      return v4 | (v5 << 16);
    }
  }

  result = sub_2707A8C70();
  __break(1u);
  return result;
}

uint64_t HIDServiceProperties.dictionaryRepresentation.getter(uint64_t a1, uint64_t a2)
{
  sub_27078282C();
  OUTLINED_FUNCTION_84();
  return sub_270782764(v2, v3, v4, v5);
}

void HIDServiceProperties.init(serviceID:properties:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_99();
  v3 = v2;
  v5 = v4;
  v30[5] = v6;
  v31 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v32 = v5;
  v7 = 0;
  v10 = *(v5 + 64);
  v9 = v5 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = v7;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*(v32 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_2707374F8(*(v32 + 56) + 32 * v17, v33);
      *&v34 = v19;
      *(&v34 + 1) = v20;
      sub_270724188(v33, &v35);

LABEL_10:
      v37 = v34;
      v38[0] = v35;
      v38[1] = v36;
      v21 = *(&v34 + 1);
      if (!*(&v34 + 1))
      {
        break;
      }

      v22 = v37;
      sub_270724188(v38, &v34);

      v23 = static HIDServicePropertyKey.allCases.getter();
      *&v33[0] = v22;
      *(&v33[0] + 1) = v21;
      MEMORY[0x28223BE20](v23, v24);
      v30[2] = v33;
      v25 = v3;
      v26 = sub_27074FFF4(sub_270777858, v30, v23);

      if (v26)
      {
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        v27 = sub_2707A8E90();
        *&v33[0] = v22;
        *(&v33[0] + 1) = v21;
        [v31 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v34);
      v3 = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v28 = v31;
    v29 = OUTLINED_FUNCTION_2_27();
    sub_27078D214(v29);

    if (v3)
    {
    }

    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_98();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        v13 = 0;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        goto LABEL_10;
      }

      v13 = *(v9 + 8 * v15);
      ++v7;
      if (v13)
      {
        v7 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_270782764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v5 = OUTLINED_FUNCTION_107(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = sub_2707A8CE0();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;

  a4(v8, 1, &v10);

  return v10;
}

uint64_t sub_27078282C()
{
  v27 = sub_2707A87F0();
  sub_2707A8810();
  sub_27078FC58(&unk_28082A610);
  v0 = MEMORY[0x277D84F90];
  while (1)
  {
    v1 = sub_2707A8940();
    if (!*(&v24 + 1))
    {
      break;
    }

    *v23 = *&v23[9];
    *&v23[2] = v24;
    *&v23[4] = v25;
    *&v23[6] = v26;
    OUTLINED_FUNCTION_137(v1, v2, v3, v4);
    if (swift_dynamicCast())
    {
      v5 = __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v16;
      OUTLINED_FUNCTION_137(v5, v6, v7, v8);
      sub_270724188(v19, &v21);
      __swift_destroy_boxed_opaque_existential_1(&v17);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
    }

    sub_27078FD04(v23, &unk_28082A618);
    if (*(&v20 + 1))
    {
      v17 = v20;
      v18 = v21;
      v19[0] = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_102();
        sub_270714068();
        v0 = v13;
      }

      v9 = *(v0 + 16);
      if (v9 >= *(v0 + 24) >> 1)
      {
        sub_270714068();
        v0 = v14;
      }

      *(v0 + 16) = v9 + 1;
      v10 = (v0 + 48 * v9);
      v11 = v17;
      v12 = v19[0];
      v10[3] = v18;
      v10[4] = v12;
      v10[2] = v11;
    }

    else
    {
      sub_27078FD04(&v20, &unk_28082A620);
    }
  }

  return v0;
}

void sub_270782A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_99();
  v20 = sub_2707A8250();
  OUTLINED_FUNCTION_0_1();
  v37 = v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8900();
  OUTLINED_FUNCTION_61_0();
  sub_27078FC58(v26);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2707A8940();
    if (!v41)
    {
      break;
    }

    sub_270724188(&v40, v39);
    sub_2707374F8(v39, &v38);
    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    if (swift_dynamicCast() && (v28 = sub_27078556C(a10), (v30 & 1) == 0))
    {
      v31 = v28;
      v32 = v29;
      __swift_destroy_boxed_opaque_existential_1(v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_102();
        sub_27071413C();
        v27 = v35;
      }

      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        sub_27071413C();
        v27 = v36;
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 4 * v33;
      *(v34 + 32) = v32;
      *(v34 + 34) = v31;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  (*(v37 + 8))(v25, v20);
  OUTLINED_FUNCTION_98();
}

void sub_270782C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSDictionary a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_99();
  v20 = sub_2707A8250();
  OUTLINED_FUNCTION_0_1();
  v32 = v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8900();
  OUTLINED_FUNCTION_61_0();
  sub_27078FC58(v26);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2707A8940();
    if (!v38)
    {
      break;
    }

    sub_270724188(&v37, v36);
    sub_2707374F8(v36, &v35);
    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    if (swift_dynamicCast())
    {
      HIDServiceProperties.HIDAccelCurve.init(dictionaryRepresentation:)(&v39, a10);
      memcpy(v34, &v39, sizeof(v34));
      __swift_destroy_boxed_opaque_existential_1(v36);
      memcpy(v40, &v39, 0x8AuLL);
      if (sub_27078FC3C(v40) != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_102();
          sub_270714200();
          v27 = v29;
        }

        v28 = *(v27 + 16);
        if (v28 >= *(v27 + 24) >> 1)
        {
          sub_270714200();
          v27 = v30;
        }

        memcpy(v33, v34, sizeof(v33));
        *(v27 + 16) = v28 + 1;
        memcpy((v27 + 144 * v28 + 32), v33, 0x89uLL);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }

  (*(v32 + 8))(v25, v20);
  OUTLINED_FUNCTION_98();
}

double HIDServiceProperties.property(forKey:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, unsigned __int128 *a4@<X8>)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  *&v9 = HIDServicePropertyKey.init(stringValue:)(v8);
  if (v10)
  {
    v13 = __PAIR128__(v10, v9);
    v11 = [a3 __swift_objectForKeyedSubscript_];
    OUTLINED_FUNCTION_93();
    swift_unknownObjectRelease();
    if (a3)
    {
      sub_2707A8A20();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    result = *&v13;
    *a4 = v13;
    a4[1] = v14;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t HIDServiceProperties.subscript.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_77(a1, a2);
  sub_2707A8EC0();
  v3 = OUTLINED_FUNCTION_65_0();
  v5 = [v3 v4];
  OUTLINED_FUNCTION_121();
  if (v2)
  {
    OUTLINED_FUNCTION_122();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  *&v18 = OUTLINED_FUNCTION_31_3(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22[0], v22[1], v22[2], v23).n128_u64[0];
  if (v19)
  {
    if (OUTLINED_FUNCTION_72(v22 + 7, v14, v15, MEMORY[0x277D839B0], v16, v17, v18))
    {
      return HIBYTE(v22[0]);
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_27078FD04(v24, &qword_280829D68);
    return 2;
  }
}

{
  OUTLINED_FUNCTION_77(a1, a2);
  sub_2707A8EC0();
  v3 = OUTLINED_FUNCTION_65_0();
  v5 = [v3 v4];
  OUTLINED_FUNCTION_121();
  if (v2)
  {
    OUTLINED_FUNCTION_122();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  *&v18 = OUTLINED_FUNCTION_31_3(v6, v7, v8, v9, v10, v11, v12, v13, v22[0], v22[1], v22[2], v22[3], v23).n128_u64[0];
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_72(v22, v14, v15, MEMORY[0x277CC9318], v16, v17, v18);
    return OUTLINED_FUNCTION_135(v20, v22[0]);
  }

  else
  {
    sub_27078FD04(v24, &qword_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77(a1, a2);
  sub_2707A8EC0();
  v3 = OUTLINED_FUNCTION_65_0();
  v5 = [v3 v4];
  OUTLINED_FUNCTION_121();
  if (v2)
  {
    OUTLINED_FUNCTION_122();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  *&v18 = OUTLINED_FUNCTION_31_3(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22[0], v22[1], v22[2], *&v22[3]).n128_u64[0];
  if (v19)
  {
    if (OUTLINED_FUNCTION_72(v22, v14, v15, MEMORY[0x277D83B88], v16, v17, v18))
    {
      return v22[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_27078FD04(v23, &qword_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77(a1, a2);
  sub_2707A8EC0();
  v3 = OUTLINED_FUNCTION_65_0();
  v5 = [v3 v4];
  OUTLINED_FUNCTION_121();
  if (v2)
  {
    OUTLINED_FUNCTION_122();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  *&v18 = OUTLINED_FUNCTION_31_3(v6, v7, v8, v9, v10, v11, v12, v13, v22[0], v22[1], v22[2], v22[3], v23).n128_u64[0];
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_72(v22, v14, v15, MEMORY[0x277D837D0], v16, v17, v18);
    return OUTLINED_FUNCTION_135(v20, v22[0]);
  }

  else
  {
    sub_27078FD04(v24, &qword_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77(a1, a2);
  sub_2707A8EC0();
  v3 = OUTLINED_FUNCTION_65_0();
  v5 = [v3 v4];
  OUTLINED_FUNCTION_121();
  if (v2)
  {
    OUTLINED_FUNCTION_122();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v6, v7, v8, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], *&v23[3]);
  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480, &qword_2707B17C8);
    v20 = OUTLINED_FUNCTION_72(v23, v16, v17, v15, v18, v19);
    return OUTLINED_FUNCTION_135(v20, v23[0]);
  }

  else
  {
    sub_27078FD04(v24, &qword_280829D68);
    return 0;
  }
}

uint64_t sub_2707831E4@<X0>(_BYTE *a1@<X8>, uint64_t *a2@<X1>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1]);
  *a1 = result;
  return result;
}

uint64_t sub_270783214(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return HIDServiceProperties.subscript.setter(v5, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2707A8760();
  }

  sub_2707A8EC0();
  v6 = OUTLINED_FUNCTION_65_0();
  [v6 v7];

  return swift_unknownObjectRelease();
}

uint64_t (*HIDServiceProperties.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = OUTLINED_FUNCTION_107(a1, a2);
  *(a1 + 24) = HIDServiceProperties.subscript.getter(v5, v6);
  return sub_270783340;
}

uint64_t sub_270783340(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);

  return HIDServiceProperties.subscript.setter(v3, v2, v1);
}

uint64_t sub_27078344C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  sub_270762A5C(v5, v6);
  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2707A8310();
  }

  sub_2707A8EC0();
  OUTLINED_FUNCTION_78();
  [v9 v10];
  sub_2707629B4(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.subscript.modify()
{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter(v2, v3);
  v0[1] = v4;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter(v2, v3);
  *(v0 + 8) = v4 & 1;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter(v2, v3);
  v0[1] = v4;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  v2 = OUTLINED_FUNCTION_79(v1);
  *(v0 + 16) = HIDServiceProperties.subscript.getter(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  v2 = OUTLINED_FUNCTION_79(v1);
  *(v0 + 16) = HIDServiceProperties.subscript.getter(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_105();
}

void sub_2707835C4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  if (a2)
  {
    sub_270762A5C(v4, v5);
    v6 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v6, v7, v8, v9);
    sub_2707629B4(*v3, v3[1]);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v10, v11, v12, v13);
  }

  free(v3);
}

uint64_t sub_270783720@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X1>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1]);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_270783758(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);

  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2707A87C0();
  }

  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void sub_27078389C(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[2];
  v4 = **a1;
  v5 = *(*a1 + 8);

  HIDServiceProperties.subscript.setter(v4, v5, v3, v2);

  free(v1);
}

uint64_t sub_2707839CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, uint64_t, void)@<X3>, uint64_t *a5@<X8>)
{
  result = a4(*a2, a2[1], a3, *(a1 + 8));
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_270783A04(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_2707A85C0();
  }

  else
  {
    v6 = 0;
  }

  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void sub_270783B58(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v3, v4, v5, v6);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v7, v8, v9, v10);
  }

  free(v2);
}

uint64_t HIDServiceProperties.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return sub_270783C98(a1, a2, a3, a4, &qword_28082A470, 0x277CBEA60);
}

{
  return sub_270783C98(a1, a2, a3, a4, &qword_28082A478, 0x277CBEAC0);
}

uint64_t sub_270783BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1], a3, *(a1 + 8));
  *a4 = result;
  return result;
}

uint64_t sub_270783C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v29[0] = a1;
  v29[1] = a2;

  v9 = [a4 __swift_objectForKeyedSubscript_];
  OUTLINED_FUNCTION_96();
  if (a4)
  {
    sub_2707A8A20();
    v10 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27[0], v27[1], v27[2], v28);
  if (v18)
  {
    v19 = sub_27073FB54(0, a5, a6);
    v24 = OUTLINED_FUNCTION_72(v27, v20, v21, v19, v22, v23);
    return OUTLINED_FUNCTION_135(v24, v27[0]);
  }

  else
  {
    sub_27078FD04(v29, &qword_280829D68);
    return 0;
  }
}

uint64_t sub_270783D84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1], a3, *(a1 + 8));
  *a4 = result;
  return result;
}

uint64_t sub_270783DB4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;

  v7 = OUTLINED_FUNCTION_101();
  return a5(v7);
}

uint64_t sub_270783E0C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v4 v5];

  return swift_unknownObjectRelease();
}

void sub_270783EDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  *v2 = *(*a1 + 24);
  v2[1] = v5;
  if (a2)
  {
    v6 = v3;

    [v4 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();

    v3 = v2[2];
  }

  else
  {

    [v4 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_270784088@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X1>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1]);
  *a1 = result;
  return result;
}

uint64_t sub_2707840B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return HIDServiceProperties.subscript.setter(v5, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_2707A84F0();
  }

  sub_2707A8EC0();
  v5 = OUTLINED_FUNCTION_125();
  [v5 v6];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = OUTLINED_FUNCTION_107(a1, a2);
  *a1 = HIDServiceProperties.subscript.getter(v5, v6);
  return OUTLINED_FUNCTION_20();
}

void sub_27078420C(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_2_27();
    HIDServiceProperties.subscript.setter(v3, v4, v2);
  }

  else
  {

    v5 = OUTLINED_FUNCTION_2_27();
    HIDServiceProperties.subscript.setter(v5, v6, v2);
  }
}

uint64_t sub_2707842E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.accelParametricCurves.getter(a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t HIDServiceProperties.accelParametricCurves.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v10[0] = MEMORY[0x277D84F90];
      sub_2707A8B80();
      v4 = 32;
      do
      {
        memcpy(__dst, (a1 + v4), sizeof(__dst));
        HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter();
        sub_2707A8B50();
        OUTLINED_FUNCTION_128();
        sub_2707A8B90();
        OUTLINED_FUNCTION_128();
        sub_2707A8BA0();
        v1 = v10;
        sub_2707A8B60();
        v4 += 144;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    sub_2707A8700();
    OUTLINED_FUNCTION_93();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_123();
  v10[0] = v5;
  v10[1] = v6;
  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void __swiftcall HIDServiceProperties.HIDAccelCurve.init(dictionaryRepresentation:)(UniversalHID::HIDServiceProperties::HIDAccelCurve_optional *__return_ptr retstr, NSDictionary dictionaryRepresentation)
{
  OUTLINED_FUNCTION_7_18();
  *&__src[0] = 0xD000000000000011;
  *(&__src[0] + 1) = v4;
  v5 = [(objc_class *)dictionaryRepresentation.super.isa __swift_objectForKeyedSubscript:sub_2707A8EC0()];
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v13 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v14)
  {
    OUTLINED_FUNCTION_40_1(v6, v7, v8, MEMORY[0x277D83B88], v9, v10, v11, v12, v122, v123, v125, v13);
    OUTLINED_FUNCTION_44_1();
    v129 = v15;
    v17 = v16 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v129 = 0;
    v17 = 1;
  }

  v141 = v17;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000012;
  *(&__src[0] + 1) = v18;
  v19 = sub_2707A8EC0();
  v20 = OUTLINED_FUNCTION_35_2(v19);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v28 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v29)
  {
    OUTLINED_FUNCTION_40_1(v21, v22, v23, MEMORY[0x277D83B88], v24, v25, v26, v27, v122, v123, v125, v28);
    OUTLINED_FUNCTION_44_1();
    v128 = v30;
    v32 = v31 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v128 = 0;
    v32 = 1;
  }

  v140 = v32;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000015;
  *(&__src[0] + 1) = v33;
  v34 = sub_2707A8EC0();
  v35 = OUTLINED_FUNCTION_35_2(v34);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v43 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v44)
  {
    OUTLINED_FUNCTION_40_1(v36, v37, v38, MEMORY[0x277D83B88], v39, v40, v41, v42, v122, v123, v125, v43);
    OUTLINED_FUNCTION_44_1();
    v127 = v45;
    v47 = v46 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v127 = 0;
    v47 = 1;
  }

  v139 = v47;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000013;
  *(&__src[0] + 1) = v48;
  v49 = sub_2707A8EC0();
  v50 = OUTLINED_FUNCTION_35_2(v49);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v58 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v59)
  {
    OUTLINED_FUNCTION_40_1(v51, v52, v53, MEMORY[0x277D83B88], v54, v55, v56, v57, v122, v123, v125, v58);
    OUTLINED_FUNCTION_44_1();
    v126 = v60;
    v62 = v61 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v126 = 0;
    v62 = 1;
  }

  v138 = v62;
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_71();
  *&__src[0] = v63;
  *(&__src[0] + 1) = v64;
  v65 = sub_2707A8EC0();
  v66 = OUTLINED_FUNCTION_35_2(v65);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v74 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v75)
  {
    OUTLINED_FUNCTION_40_1(v67, v68, v69, MEMORY[0x277D83B88], v70, v71, v72, v73, v122, v123, v126, v74);
    OUTLINED_FUNCTION_44_1();
    v124 = v76;
    v78 = v77 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v124 = 0;
    v78 = 1;
  }

  v137 = v78;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001DLL;
  *(&__src[0] + 1) = v79;
  v80 = sub_2707A8EC0();
  v81 = OUTLINED_FUNCTION_35_2(v80);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v89 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v90)
  {
    v91 = OUTLINED_FUNCTION_40_1(v82, v83, v84, MEMORY[0x277D83B88], v85, v86, v87, v88, v122, v124, v126, v89);
    if (v91)
    {
      v92 = v131;
    }

    else
    {
      v92 = 0;
    }

    v93 = v91 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v92 = 0;
    v93 = 1;
  }

  v136 = v93;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001ALL;
  *(&__src[0] + 1) = v94;
  v95 = sub_2707A8EC0();
  v96 = OUTLINED_FUNCTION_35_2(v95);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  *&v104 = OUTLINED_FUNCTION_30_3().n128_u64[0];
  if (v105)
  {
    v106 = OUTLINED_FUNCTION_40_1(v97, v98, v99, MEMORY[0x277D83B88], v100, v101, v102, v103, v122, v124, v126, v104);
    if (v106)
    {
      v107 = v131;
    }

    else
    {
      v107 = 0;
    }

    v108 = v106 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v107 = 0;
    v108 = 1;
  }

  v135 = v108;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000021;
  *(&__src[0] + 1) = v109;
  v110 = sub_2707A8EC0();
  v111 = OUTLINED_FUNCTION_35_2(v110);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v112)
  {
    v113 = swift_dynamicCast();
    if (v113)
    {
      v114 = v131;
    }

    else
    {
      v114 = 0;
    }

    v115 = v113 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v114 = 0;
    v115 = 1;
  }

  v134 = v115;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001FLL;
  *(&__src[0] + 1) = v116;
  v117 = sub_2707A8EC0();
  v118 = OUTLINED_FUNCTION_35_2(v117);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    sub_2707A8A20();

    swift_unknownObjectRelease();
  }

  else
  {

    memset(__src, 0, 32);
  }

  v133[0] = __src[0];
  v133[1] = __src[1];
  if (*(&__src[1] + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_44_1();
    v121 = v120 ^ 1;
  }

  else
  {
    sub_27078FD04(v133, &qword_280829D68);
    v119 = 0;
    v121 = 1;
  }

  *&__src[0] = v129;
  BYTE8(__src[0]) = v141;
  *&__src[1] = v128;
  BYTE8(__src[1]) = v140;
  *&__src[2] = v127;
  BYTE8(__src[2]) = v139;
  *&__src[3] = v126;
  BYTE8(__src[3]) = v138;
  *&__src[4] = v124;
  BYTE8(__src[4]) = v137;
  *&__src[5] = v92;
  BYTE8(__src[5]) = v136;
  *&__src[6] = v107;
  BYTE8(__src[6]) = v135;
  *&__src[7] = v114;
  BYTE8(__src[7]) = v134;
  *&__src[8] = v119;
  BYTE8(__src[8]) = v121;
  sub_27078EB40(__src);
  memcpy(retstr, __src, 0x8AuLL);
}

uint64_t HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A488, &qword_2707B17D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AEF70;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000002707B3F80;
  *(inited + 48) = *v0;
  *(inited + 56) = *(v0 + 8);
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000002707B3FA0;
  *(inited + 80) = *(v0 + 16);
  *(inited + 88) = *(v0 + 24);
  OUTLINED_FUNCTION_11_13();
  *(v3 + 96) = v2 | 4;
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v0 + 32);
  *(v3 + 120) = *(v0 + 40);
  OUTLINED_FUNCTION_11_13();
  *(v6 + 128) = v5 | 2;
  *(v6 + 136) = v7;
  *(v6 + 152) = *(v0 + 56);
  *(v6 + 144) = *(v0 + 48);
  strcpy((v6 + 160), "HIDAccelIndex");
  *(v6 + 174) = -4864;
  *(v6 + 184) = *(v0 + 72);
  *(v6 + 176) = *(v0 + 64);
  OUTLINED_FUNCTION_11_13();
  *(v9 + 192) = v8 | 0xC;
  *(v9 + 200) = v10;
  *(v9 + 216) = *(v0 + 88);
  *(v9 + 208) = *(v0 + 80);
  OUTLINED_FUNCTION_11_13();
  *(v12 + 224) = v11 + 9;
  *(v12 + 232) = v13;
  v14 = *(v0 + 96);
  *(v12 + 248) = *(v0 + 104);
  *(v12 + 240) = v14;
  OUTLINED_FUNCTION_11_13();
  *(v16 + 256) = v15 + 16;
  *(v16 + 264) = v17;
  v18 = *(v0 + 112);
  *(v16 + 280) = *(v0 + 120);
  *(v16 + 272) = v18;
  OUTLINED_FUNCTION_11_13();
  *(v20 + 288) = v19 | 0xE;
  *(v20 + 296) = v21;
  v22 = *(v0 + 128);
  *(v20 + 312) = *(v0 + 136);
  *(v20 + 304) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A490, &qword_2707B17D8);
  sub_2707A8520();
  OUTLINED_FUNCTION_133();
  sub_270789138(v23);

  v24 = sub_2707A84F0();

  return v24;
}

uint64_t sub_270784DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.appleVendorSupported.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.appleVendorSupported.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270784E78;
}

uint64_t sub_270784ECC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDServiceProperties.authenticatedDevice.getter(a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t (*HIDServiceProperties.authenticatedDevice.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_111();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270784F54;
}

uint64_t sub_270784F9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDServiceProperties.builtIn.getter(a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t (*HIDServiceProperties.builtIn.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_85();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270785024;
}

uint64_t sub_270785080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.capsLockDelay.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.capsLockDelay.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27078513C()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_115();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270785184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.capsLockLanguageSwitch.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.capsLockLanguageSwitch.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter(0xD000000000000016, 0x80000002707B4D40);
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270785220;
}

uint64_t sub_270785258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.deviceTypeHint.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t HIDServiceProperties.deviceTypeHint.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_112();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707852FC@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.deviceUsagePairs.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.deviceUsagePairs.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2707A8B80();
    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    v3 = (a1 + 34);
    v4 = MEMORY[0x277D837D0];
    v5 = MEMORY[0x277D83B88];
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A498, &qword_2707B17E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2707ADD30;
      *(v8 + 32) = 0x7355656369766544;
      *(v8 + 40) = 0xEB00000000656761;
      *(v8 + 56) = v4;
      *(v8 + 64) = v7;
      *(v8 + 88) = v5;
      *(v8 + 96) = 0x7355656369766544;
      *(v8 + 104) = 0xEF65676150656761;
      *(v8 + 152) = v5;
      *(v8 + 120) = v4;
      *(v8 + 128) = v6;
      sub_2707A8800();
      sub_2707A8B50();
      sub_2707A8B90();
      sub_2707A8BA0();
      sub_2707A8B60();
      --v2;
    }

    while (v2);
  }

  sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
  v9 = sub_2707A8700();

  sub_2707A8EC0();
  v10 = OUTLINED_FUNCTION_125();
  [v10 v11];

  return swift_unknownObjectRelease();
}

uint64_t sub_27078556C(void *a1)
{
  *&v7 = 0x7355656369766544;
  *(&v7 + 1) = 0xEB00000000656761;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v9 = 0u;
  }

  v10 = v7;
  v11 = v9;
  if (!*(&v9 + 1))
  {

LABEL_14:
    sub_27078FD04(&v10, &qword_280829D68);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v6;
    *&v8 = 0x7355656369766544;
    *(&v8 + 1) = 0xEF65676150656761;
    v4 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_2707A8A20();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v3;
      }

      return 0;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t HIDServiceProperties.deviceUsagePairs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_134(a1);
  *v1 = HIDServiceProperties.deviceUsagePairs.getter();
  return OUTLINED_FUNCTION_20();
}

void sub_270785790(uint64_t *a1, char a2)
{
  if (a2)
  {

    HIDServiceProperties.deviceUsagePairs.setter(v2);
  }

  else
  {
    HIDServiceProperties.deviceUsagePairs.setter(*a1);
  }
}

uint64_t sub_270785804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.disableAccessibilityEventTranslation.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.disableAccessibilityEventTranslation.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter(0xD000000000000024, 0x80000002707B4D60);
  OUTLINED_FUNCTION_18_5(v1);
  return sub_2707858A0;
}

uint64_t sub_2707858D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.dispatchScrollEvents.getter(*a1, a1[1], a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.dispatchScrollEvents.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_27078596C;
}

uint64_t sub_2707859C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.displayIdentifier.getter(a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t HIDServiceProperties.displayIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_120();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.displayIntegrated.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.displayIntegrated.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_52_1();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270785B1C;
}

uint64_t sub_270785B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.eventServiceProperties.getter(a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t HIDServiceProperties.eventServiceProperties.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_134(a1);
  v2 = OUTLINED_FUNCTION_114();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  return OUTLINED_FUNCTION_20();
}

void sub_270785C20(uint64_t *a1, char a2)
{
  if (a2)
  {

    HIDServiceProperties.subscript.setter(v2, 0xD000000000000019, 0x80000002707B4DB0);
  }

  else
  {
    HIDServiceProperties.subscript.setter(*a1, 0xD000000000000019, 0x80000002707B4DB0);
  }
}

uint64_t sub_270785CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.exclusivityIdentifier.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.exclusivityIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_62_0();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_270785D54()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000015, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v4, v5, 0xD000000000000015, v6);
  }
}

uint64_t sub_270785E04@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.faceTimeRemoteControlSessionID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.faceTimeRemoteControlSessionID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_2_29();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.fnKeyboardUsageMap.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.fnKeyboardUsageMap.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  *v1 = HIDServiceProperties.subscript.getter(0xD000000000000012, 0x80000002707B4E10);
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

void sub_270785FA8()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000012, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v4, v5, 0xD000000000000012, v6);
  }
}

uint64_t sub_270786048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.ignoresNaturalScrollingPreference.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.ignoresNaturalScrollingPreference.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter(0xD000000000000021, 0x80000002707B4E30);
  OUTLINED_FUNCTION_18_5(v1);
  return sub_2707860E4;
}

uint64_t sub_27078613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.keyboardCountryCode.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.keyboardCountryCode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707861F8()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_119();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270786240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.keyboardLanguage.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.keyboardLanguage.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_1_34();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_2707862D0()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000010, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v4, v5, 0xD000000000000010, v6);
  }
}

uint64_t sub_270786374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.keyboardStandardType.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.keyboardStandardType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786430()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_118();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270786478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.manufacturer.getter(a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t HIDServiceProperties.manufacturer.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_57_0();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.mouseAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.mouseScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_60_0();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707866DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.platformInputModeConfiguration.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_270786708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.platformInputModeConfiguration.setter(v1, v2);
}

uint64_t HIDServiceProperties.platformInputModeConfiguration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_2_29();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_2707867B0()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001ELL, v5);
    v6 = OUTLINED_FUNCTION_28();

    sub_2707629B4(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v8, v9, 0xD00000000000001ELL, v10);
  }
}

void *sub_27078685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationMultiplier.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerAccelerationMultiplier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_138("HIDPointerAccelerationMultiplier");
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationTable.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2707869A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.pointerAccelerationTable.setter(v1, v2);
}

uint64_t HIDServiceProperties.pointerAccelerationTable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  *v1 = HIDServiceProperties.subscript.getter(0xD00000000000001BLL, 0x80000002707B4EF0);
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

void sub_270786A58()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001BLL, v5);
    v6 = OUTLINED_FUNCTION_28();

    sub_2707629B4(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v8, v9, 0xD00000000000001BLL, v10);
  }
}

uint64_t sub_270786AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationType.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.pointerAccelerationType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_60_0();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_270786B88()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD00000000000001ALL, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v4, v5, 0xD00000000000001ALL, v6);
  }
}

uint64_t sub_270786C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = HIDServiceProperties.pointerButtonCount.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerButtonCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_62_0();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.pointerButtonMode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786E30@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerResolution.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerResolution.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786F58@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerReportRate.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerReportRate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_0_42();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787054@<X0>(_DWORD *a1@<X8>)
{
  result = HIDServiceProperties.primaryUsagePair.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.primaryUsagePair.setter(unsigned int a1)
{
  v2 = *(v1 + 8);
  v3 = sub_2707A87C0();
  [v2 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v4 = sub_2707A87C0();
  OUTLINED_FUNCTION_126();
  v9 = v5;
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v6 v7];

  return swift_unknownObjectRelease();
}

uint64_t (*HIDServiceProperties.primaryUsagePair.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HIDServiceProperties.primaryUsagePair.getter();
  return sub_2707871BC;
}

uint64_t sub_2707871E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.product.getter(*a1, a1[1], a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.product.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_86();
  *v1 = HIDServiceProperties.subscript.getter(v2 & 0xFFFFFFFFFFFFLL | 0x74000000000000, 0xE700000000000000);
  v1[1] = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707872A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.productID.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.productID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_86();
  v2 = HIDServiceProperties.subscript.getter(v1 & 0xFFFFFFFFFFFFLL | 0x4974000000000000, 0xE900000000000044);
  OUTLINED_FUNCTION_11_16(v2, v3);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707873D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.reportDescriptor.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_270787404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.reportDescriptor.setter(v1, v2);
}

uint64_t HIDServiceProperties.reportDescriptor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_1_34();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_2707874AC()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD000000000000010, v5);
    v6 = OUTLINED_FUNCTION_28();

    sub_2707629B4(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v8, v9, 0xD000000000000010, v10);
  }
}

uint64_t sub_27078754C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationTable.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_270787578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.scrollAccelerationTable.setter(v1, v2);
}

uint64_t HIDServiceProperties.scrollAccelerationTable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_60_0();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_270787620()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001ALL, v5);
    v6 = OUTLINED_FUNCTION_28();

    sub_2707629B4(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v8, v9, 0xD00000000000001ALL, v10);
  }
}

uint64_t sub_2707876C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationType.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t HIDServiceProperties.scrollAccelerationType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_114();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_270787750()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000019, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v4, v5, 0xD000000000000019, v6);
  }
}

uint64_t sub_270787834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.scrollAccelParametricCurves.getter(a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t HIDServiceProperties.scrollAccelParametricCurves.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v9[0] = MEMORY[0x277D84F90];
      sub_2707A8B80();
      v4 = 32;
      do
      {
        memcpy(__dst, (a1 + v4), sizeof(__dst));
        HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter();
        sub_2707A8B50();
        OUTLINED_FUNCTION_128();
        sub_2707A8B90();
        OUTLINED_FUNCTION_128();
        sub_2707A8BA0();
        v1 = v9;
        sub_2707A8B60();
        v4 += 144;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    sub_2707A8700();
    OUTLINED_FUNCTION_93();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_7_18();
  v9[0] = 0xD000000000000014;
  v9[1] = v5;
  sub_2707A8EC0();
  v6 = OUTLINED_FUNCTION_65_0();
  [v6 v7];

  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.scrollAccelParametricCurves.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134(a1);
  *v1 = HIDServiceProperties.scrollAccelParametricCurves.getter(v3, *(v2 + 8));
  return OUTLINED_FUNCTION_20();
}

void sub_270787A4C(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

void *sub_270787AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.scrollReportRate.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.scrollReportRate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_66_0("HIDScrollReportRate");
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

void *sub_270787C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.scrollResolution.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.scrollResolution.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_66_0("HIDScrollResolution");
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.supportsGestureScrolling.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.supportsGestureScrolling.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter(0xD000000000000018, 0x80000002707B50B0);
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270787DC4;
}

uint64_t HIDServiceProperties.trackpadAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_76();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.trackpadScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_75();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDServiceProperties.transport.getter(a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_270788018(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t HIDServiceProperties.transport.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v2 = OUTLINED_FUNCTION_143();
  *v1 = HIDServiceProperties.subscript.getter(v2, v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_20();
}

void sub_2707880DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_101();
    HIDServiceProperties.subscript.setter(v5, v6, v7, a4);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_101();
    HIDServiceProperties.subscript.setter(v8, v9, v10, a4);
  }
}

uint64_t sub_270788180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.universalControlBuiltIn.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.universalControlBuiltIn.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_76();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270788210;
}

uint64_t sub_270788264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.universalControlVirtualService.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.universalControlVirtualService.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_2_29();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_2707882DC;
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.getter()
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2808294C0);
  }

  v0 = qword_28082A058;
  v1 = unk_28082A060;

  return HIDServiceProperties.subscript.getter(v0, v1);
}

uint64_t sub_270788374@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.userDeviceCreateInactive.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.setter(char a1)
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2808294C0);
  }

  v2 = qword_28082A058;
  v3 = unk_28082A060;

  return HIDServiceProperties.subscript.setter(a1, v2, v3);
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.modify(uint64_t a1)
{
  *a1 = v1;
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2808294C0);
  }

  v3 = qword_28082A058;
  v4 = unk_28082A060;
  *(a1 + 8) = qword_28082A058;
  *(a1 + 16) = v4;
  *(a1 + 24) = HIDServiceProperties.subscript.getter(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707884A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);

  return HIDServiceProperties.subscript.setter(v3, v2, v1);
}

uint64_t sub_2707884E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.useRemoteAcceleration.getter(*a1, a1[1], a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.useRemoteAcceleration.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_62_0();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270788564;
}

uint64_t sub_2707885BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.vendorID.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.vendorID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707886D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = HIDServiceProperties.reportInterval.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.reportInterval.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270788794()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_113();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_2707887EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = HIDServiceProperties.subinterfaceID.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t HIDServiceProperties.subinterfaceID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_52_1();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_11_16(v3, v4);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.surfaceDimensions.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_52_1();
  result = HIDServiceProperties.subscript.getter(v1, v2, v3, v4);
  if (result)
  {
    *(&result - 2) = HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(result);
  }

  return result;
}

uint64_t sub_270788930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = HIDServiceProperties.surfaceDimensions.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t HIDServiceProperties.surfaceDimensions.setter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter();
  }

  OUTLINED_FUNCTION_7_18();
  v8 = v4;
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v5 v6];

  return swift_unknownObjectRelease();
}

UniversalHID::HIDServiceProperties::HIDSurfaceDimensions_optional __swiftcall HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(NSDictionary dictionaryRepresentation)
{
  OUTLINED_FUNCTION_70();
  v57 = v3;
  v61 = v4;
  sub_2707A8EC0();
  v5 = OUTLINED_FUNCTION_125();
  v7 = [v5 v6];
  OUTLINED_FUNCTION_93();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_2707A8A20();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v8, v9, v10, v11, v12, v13, v14, v15, v48, v52, v57, v61, v64);
  if (!v23)
  {

    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_136(v16, v17, v18, MEMORY[0x277D849A8], v19, v20, v21, v22, v49, *v53, v53[4], v58, v62, v65, v68, v70[0]) & 1) == 0)
  {

LABEL_15:
    v47 = 0;
    goto LABEL_16;
  }

  v24 = HIDWORD(v54);
  OUTLINED_FUNCTION_69();
  v59 = v25;
  sub_2707A8EC0();
  v26 = OUTLINED_FUNCTION_125();
  v28 = [v26 v27];
  OUTLINED_FUNCTION_93();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {

    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v29, v30, v31, v32, v33, v34, v35, v36, v50, v54, v59, 0xE500000000000000, v66);
  if (!v46)
  {
LABEL_14:
    sub_27078FD04(v70, &qword_280829D68);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_136(v39, v40, v41, MEMORY[0x277D849A8], v42, v43, v44, v45, v51, *v55, v55[4], v60, v63, v67, v69, v70[0]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v37 = vcvtd_n_f64_s32(v24, 0x10uLL);
  v38 = vcvtd_n_f64_s32(v56, 0x10uLL);
  v47 = LOBYTE(v38);
LABEL_16:
  result.value.height = v38;
  result.value.width = v37;
  result.is_nil = v47;
  return result;
}

id HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter()
{
  HIDFixed.init(doubleValue:)();
  if ((v0 & 0x100000000) != 0 || (v1 = v0, HIDFixed.init(doubleValue:)(), (v2 & 0x100000000) != 0))
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBEAC0]);

    return [v10 init];
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A498, &qword_2707B17E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707ADD30;
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 32) = 0x746867696548;
    *(v4 + 40) = 0xE600000000000000;
    *(v4 + 64) = v1;
    *(v4 + 120) = v5;
    OUTLINED_FUNCTION_69();
    *(v6 + 88) = v8;
    *(v6 + 96) = v7;
    *(v6 + 104) = 0xE500000000000000;
    *(v6 + 152) = v8;
    *(v6 + 128) = v3;
    sub_27073FB54(0, &qword_28082A478, 0x277CBEAC0);
    OUTLINED_FUNCTION_93();
    return sub_2707A8800();
  }
}

uint64_t HIDServiceProperties.surfaceDimensions.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = HIDServiceProperties.surfaceDimensions.getter(a1);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270788D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationSupport.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.scrollAccelerationSupport.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_75();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270788DE4;
}

uint64_t sub_270788E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationSupport.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t (*HIDServiceProperties.pointerAccelerationSupport.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = OUTLINED_FUNCTION_2_29();
  v3 = HIDServiceProperties.subscript.getter(v1, v2);
  OUTLINED_FUNCTION_18_5(v3);
  return sub_270788EB0;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainCubic.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainLinear.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainParabolic.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainQuartic.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.index.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedCubicRoot.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedLinear.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedParabolicRoot.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedQuarticRoot.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t sub_270789138(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 56) + 16 * v12;
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v28 = v14[1];
      v29 = *v14;
      v27 = *v13;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_27078E148(v15 + 1, 1);
        v2 = v30;
      }

      else
      {
      }

      sub_2707A8F60();
      sub_2707A8620();
      result = sub_2707A8FC0();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v17) >> 6;
        v21 = v28;
        while (++v19 != v23 || (v22 & 1) == 0)
        {
          v24 = v19 == v23;
          if (v19 == v23)
          {
            v19 = 0;
          }

          v22 |= v24;
          v25 = *(v16 + 8 * v19);
          if (v25 != -1)
          {
            v20 = __clz(__rbit64(~v25)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v28;
LABEL_23:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (*(v2 + 48) + 16 * v20);
      *v26 = v29;
      v26[1] = v21;
      *(*(v2 + 56) + 8 * v20) = v27;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_270789374(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v5[0] = a1;
  v5[1] = a2;
  v4[2] = v5;
  if (!sub_27074FFF4(sub_27078FBC8, v4, &unk_288076A50))
  {

    return 0;
  }

  return v2;
}

void *sub_270789428@<X0>(void *a1@<X8>)
{
  result = sub_2707893F8();
  *a1 = result;
  return result;
}

uint64_t sub_270789458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270789374(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2707894A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270789404();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270789500(uint64_t a1)
{
  v2 = sub_27078EB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078953C(uint64_t a1)
{
  v2 = sub_27078EB48();

  return MEMORY[0x2821FE720](a1, v2);
}

void HIDServiceProperties.HIDAccelCurve.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4A0, &qword_2707B17E8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v8, v9);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_27078EB48();
  sub_2707A8FD0();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_18();
    v10 = OUTLINED_FUNCTION_32_3();
    v45 = v11 & 1;
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_26_3(v12);
    v44 = v13 & 1;
    OUTLINED_FUNCTION_56_0();
    v37 = v14;
    v36 = OUTLINED_FUNCTION_32_3();
    v43 = v15 & 1;
    OUTLINED_FUNCTION_56_0();
    v35 = OUTLINED_FUNCTION_26_3(v16);
    v42 = v17 & 1;
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_71();
    v34 = OUTLINED_FUNCTION_32_3();
    v41 = v18 & 1;
    OUTLINED_FUNCTION_56_0();
    v33 = OUTLINED_FUNCTION_26_3(v19);
    v40 = v20 & 1;
    OUTLINED_FUNCTION_56_0();
    v32 = OUTLINED_FUNCTION_26_3(v21);
    v39 = v22 & 1;
    OUTLINED_FUNCTION_56_0();
    v31 = OUTLINED_FUNCTION_26_3(v23);
    v38 = v24 & 1;
    OUTLINED_FUNCTION_56_0();
    v30 = OUTLINED_FUNCTION_26_3(v25);
    v27 = v26;
    v28 = OUTLINED_FUNCTION_100();
    v29(v28);
    __swift_destroy_boxed_opaque_existential_1(v5);
    *v7 = v10;
    *(v7 + 8) = v45;
    *(v7 + 16) = v37;
    *(v7 + 24) = v44;
    *(v7 + 32) = v36;
    *(v7 + 40) = v43;
    *(v7 + 48) = v35;
    *(v7 + 56) = v42;
    *(v7 + 64) = v34;
    *(v7 + 72) = v41;
    *(v7 + 80) = v33;
    *(v7 + 88) = v40;
    *(v7 + 96) = v32;
    *(v7 + 104) = v39;
    *(v7 + 112) = v31;
    *(v7 + 120) = v38;
    *(v7 + 128) = v30;
    *(v7 + 136) = v27 & 1;
  }

  OUTLINED_FUNCTION_98();
}

void HIDServiceProperties.HIDAccelCurve.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4B0, &qword_2707B17F0);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_27078EB48();
  sub_2707A8FE0();
  OUTLINED_FUNCTION_7_18();
  v25 = 0xD000000000000011;
  v26 = v13;
  OUTLINED_FUNCTION_33_3(v14);
  if (!v3)
  {
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v15);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v16);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v17);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_71();
    v25 = v18;
    v26 = v19;
    OUTLINED_FUNCTION_33_3(v20);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v21);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v22);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v23);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v24);
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_98();
}

uint64_t static HIDServiceProperties.HIDAccelCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t HIDServiceProperties.HIDAccelCurve.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v1 = *v0;
    sub_2707A8F80();
    MEMORY[0x2743A8500](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v2 = v0[2];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v3 = v0[4];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v4 = v0[6];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v4);
  }

  if (*(v0 + 72) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v5 = v0[8];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v5);
  }

  if (*(v0 + 88) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v6 = v0[10];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v6);
  }

  if (*(v0 + 104) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v7 = v0[12];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v7);
  }

  if (*(v0 + 120) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v8 = v0[14];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v8);
  }

  if (*(v0 + 136) == 1)
  {
    return sub_2707A8F80();
  }

  v10 = v0[16];
  sub_2707A8F80();
  return MEMORY[0x2743A8500](v10);
}

uint64_t HIDServiceProperties.HIDAccelCurve.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_97(a1);
  HIDServiceProperties.HIDAccelCurve.hash(into:)();
  return sub_2707A8FC0();
}

void sub_270789E78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  HIDServiceProperties.HIDAccelCurve.init(from:)(a1, a2, a3);
  if (!v4)
  {
    memcpy(a4, v6, 0x89uLL);
  }
}

uint64_t sub_270789EE4(uint64_t a1)
{
  sub_2707A8F60();
  HIDServiceProperties.HIDAccelCurve.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t sub_270789F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5D8, &qword_2707B1FD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_27078FBE8();
  sub_2707A8FD0();
  if (!v1)
  {
    v10 = 0x7355656369766544;
    v11 = 0xEB00000000656761;
    v8 = sub_2707A8D70();
    v10 = 0x7355656369766544;
    v11 = 0xEF65676150656761;
    sub_2707A8D70();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_27078A0F4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5E8, &qword_2707B1FE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078FBE8();
  sub_2707A8FE0();
  v11 = 0x7355656369766544;
  v12 = 0xEB00000000656761;
  sub_2707A8E20();
  if (!v3)
  {
    v11 = 0x7355656369766544;
    v12 = 0xEF65676150656761;
    sub_2707A8E20();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27078A28C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A650, &qword_2707B21B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 32) = 0x7355656369766544;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = 0x7355656369766544;
  *(inited + 56) = 0xEF65676150656761;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_27074FFF4(sub_27078FBC8, v7, inited);
  swift_setDeallocating();
  sub_27078DA6C();
  if (!v5)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_27078A3CC(uint64_t a1, uint64_t a2)
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](a1);
  MEMORY[0x2743A8500](a2);
  return sub_2707A8FC0();
}

void *sub_27078A42C@<X0>(void *a1@<X8>)
{
  result = sub_27078A37C();
  *a1 = result;
  return result;
}

uint64_t sub_27078A454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27078A28C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_27078A484(uint64_t a1)
{
  v2 = sub_27078FBE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078A4C0(uint64_t a1)
{
  v2 = sub_27078FBE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27078A4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270789F24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_27078A554(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2707A8F60();
  MEMORY[0x2743A8500](v2);
  MEMORY[0x2743A8500](v3);
  return sub_2707A8FC0();
}

double HIDServiceProperties.HIDSurfaceDimensions.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4B8, &qword_2707B17F8);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078EB9C();
  sub_2707A8FD0();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_116(v9);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_116(v10);
  v12 = v11;
  (*(v4 + 8))(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.encode(to:)(void *a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4C8, &qword_2707B1800);
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078EB9C();
  sub_2707A8FE0();
  OUTLINED_FUNCTION_70();
  v16 = v12;
  v17 = v13;
  sub_2707A8E10();
  if (!v3)
  {
    OUTLINED_FUNCTION_69();
    v16 = v14;
    v17 = 0xE500000000000000;
    sub_2707A8E10();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_27078A908(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5D0, &qword_2707B1FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 32) = 0x746867696548;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6874646957;
  *(inited + 56) = 0xE500000000000000;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_27074FFF4(sub_27078FBC8, v7, inited);
  swift_setDeallocating();
  sub_27078DAB0();
  if (!v5)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_27078A9F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_27078AA2C@<X0>(void *a1@<X8>)
{
  result = sub_27078A9EC();
  *a1 = result;
  return result;
}

uint64_t sub_27078AA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27078A908(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_27078AA7C(uint64_t a1)
{
  v2 = sub_27078EB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078AAB8(uint64_t a1)
{
  v2 = sub_27078EB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x2743A8540](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x2743A8540](*&v3);
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.hashValue.getter(double a1, double a2, uint64_t a3)
{
  OUTLINED_FUNCTION_97(a3);
  HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(a1, a2);
  return sub_2707A8FC0();
}

void sub_27078ABA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = HIDServiceProperties.HIDSurfaceDimensions.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_27078AC00(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2707A8F60();
  HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(v2, v3);
  return sub_2707A8FC0();
}

void HIDServiceProperties.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D0, &qword_2707B1808);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v6, v7);
  v8 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v201 = v8;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2707779F8();
  sub_2707A8FD0();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    OUTLINED_FUNCTION_87();
    *&v196 = v9;
    *(&v196 + 1) = v10;
    OUTLINED_FUNCTION_3_21();
    v11 = sub_2707A8D50();
    v202 = v8;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v200 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D8, &qword_2707B1810);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_123();
    sub_27078EDA4(&unk_28082A4E0);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    HIDServiceProperties.accelParametricCurves.setter(v198);
    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = 0x80000002707B4D20;
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v16;
    *(&v196 + 1) = 0x80000002707B4D20;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v8, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    strcpy(&v196, "Authenticated");
    HIWORD(v196) = -4864;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_2707A8760();
    }

    strcpy(&v196, "Authenticated");
    HIWORD(v196) = -4864;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v8, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    strcpy(&v196, "CapsLockDelay");
    HIWORD(v196) = -4864;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_2707A87C0();
    }

    strcpy(&v196, "CapsLockDelay");
    HIWORD(v196) = -4864;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v8, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v20 + 2;
    *(&v196 + 1) = &unk_279E08000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v22 + 2;
    *(&v196 + 1) = &unk_279E08000;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v8, sel___swift_setObject_forKeyedSubscript_);

    v23 = 0x7954656369766544;
    swift_unknownObjectRelease();
    strcpy(&v196, "DeviceTypeHint");
    HIBYTE(v196) = -18;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v24)
    {
      v25 = sub_2707A85C0();
    }

    else
    {
      v25 = 0;
    }

    strcpy(&v196, "DeviceTypeHint");
    HIBYTE(v196) = -18;
    [v8 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4F0, &qword_2707B1818);
    OUTLINED_FUNCTION_7_18();
    *&v196 = 0xD000000000000010;
    *(&v196 + 1) = v26;
    sub_27078EC44(&unk_28082A4F8);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    v27 = v198;
    if (v198)
    {
      v28 = v198[2];
      if (v28)
      {
        *&v196 = MEMORY[0x277D84F90];
        sub_27071AA28(0, v28, 0);
        v29 = v28;
        v30 = v196;
        v31 = *(v196 + 16);
        v32 = 4 * v31;
        v23 = (v27 + 5);
        do
        {
          v33 = *v23;
          v34 = *(v23 - 8);
          *&v196 = v30;
          v35 = v30[3];
          v36 = v31 + 1;
          if (v31 >= v35 >> 1)
          {
            v194 = v29;
            v195 = v31 + 1;
            v192 = v34;
            v193 = v33;
            sub_27071AA28((v35 > 1), v31 + 1, 1);
            v34 = v192;
            v33 = v193;
            v29 = v194;
            v36 = v195;
            v30 = v196;
          }

          v23 += 16;
          v30[2] = v36;
          v37 = v30 + v32;
          *(v37 + 16) = v33;
          *(v37 + 17) = v34;
          v32 += 4;
          v31 = v36;
          --v29;
        }

        while (v29);
        v25 = v30;
      }

      else
      {

        v25 = MEMORY[0x277D84F90];
      }

      HIDServiceProperties.deviceUsagePairs.setter(v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480, &qword_2707B17C8);
    OUTLINED_FUNCTION_8_19();
    *&v196 = v38 + 5;
    *(&v196 + 1) = v25;
    sub_27078EEB0(&unk_28082A508);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    if (v198)
    {
      sub_2707A84F0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v196 = v23 + 5;
    *(&v196 + 1) = v25;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v39 v40];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v41 = v23 - 2;
    *&v196 = v41;
    *(&v196 + 1) = v25;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v42)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v27 = 0;
    }

    *&v196 = v41;
    *(&v196 + 1) = v25;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v43 v44];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_39_1();
    *&v196 = v45 + 13;
    *(&v196 + 1) = 0x80000002707B4E30;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v47 + 13;
    *(&v196 + 1) = 0x80000002707B4E30;
    sub_2707A8EC0();
    v48 = OUTLINED_FUNCTION_49_2();
    [v48 v49];

    swift_unknownObjectRelease();
    *&v196 = 0x437972746E756F43;
    *(&v196 + 1) = 0xEB0000000065646FLL;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_2707A87C0();
    }

    *&v196 = 0x437972746E756F43;
    *(&v196 + 1) = 0xEB0000000065646FLL;
    sub_2707A8EC0();
    v52 = OUTLINED_FUNCTION_49_2();
    [v52 v53];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = 0xD000000000000010;
    *(&v196 + 1) = 0x437972746E756F43;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v54)
    {
      v55 = sub_2707A85C0();
    }

    else
    {
      v55 = 0;
    }

    *&v196 = 0xD000000000000010;
    *(&v196 + 1) = 0x437972746E756F43;
    [v202 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    strcpy(&v196, "StandardType");
    BYTE13(v196) = 0;
    HIWORD(v196) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_2707A87C0();
    }

    strcpy(&v196, "StandardType");
    BYTE13(v196) = 0;
    HIWORD(v196) = -5120;
    sub_2707A8EC0();
    v58 = OUTLINED_FUNCTION_49_2();
    [v58 v59];

    swift_unknownObjectRelease();
    strcpy(&v196, "Manufacturer");
    BYTE13(v196) = 0;
    HIWORD(v196) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v60)
    {
      v61 = sub_2707A85C0();
    }

    else
    {
      v61 = 0;
    }

    strcpy(&v196, "Manufacturer");
    BYTE13(v196) = 0;
    HIWORD(v196) = -5120;
    [v202 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v62;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v63)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v65 = OUTLINED_FUNCTION_49_2();
    [v65 v66];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = 0xD00000000000001ALL;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v67)
    {
      v68 = 0;
    }

    else
    {
      v68 = sub_2707A87C0();
    }

    *&v196 = 0xD00000000000001ALL;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v69 = OUTLINED_FUNCTION_49_2();
    [v69 v70];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v198 = 0xD00000000000001ELL;
    v199 = v61;
    sub_27078ECFC();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    OUTLINED_FUNCTION_130();
    if (!v14 & v71)
    {
      v72 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_129();
      v72 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v198 = (v73 + 10);
    v199 = v61;
    [v202 __swift_setObject_forKeyedSubscript_];
    v74 = OUTLINED_FUNCTION_129();
    sub_2707629B4(v74, v75);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v76 + 12;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000020;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v79 = OUTLINED_FUNCTION_49_2();
    [v79 v80];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v198 = 0xD00000000000001BLL;
    v199 = v61;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    OUTLINED_FUNCTION_130();
    if (!v14 & v71)
    {
      v81 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_129();
      v81 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v198 = (v82 + 7);
    v199 = v61;
    v83 = sub_2707A8EC0();
    [v202 __swift_setObject_forKeyedSubscript_];
    v84 = OUTLINED_FUNCTION_129();
    sub_2707629B4(v84, v85);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v86 + 6;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v87)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v81 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v196 = v83 + 6;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v88 v89];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = v83 + 1;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v90)
    {
      v91 = 0;
    }

    else
    {
      v91 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000015;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v92 = OUTLINED_FUNCTION_49_2();
    [v92 v93];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v94)
    {
      v95 = 0;
    }

    else
    {
      v95 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v96 = OUTLINED_FUNCTION_49_2();
    [v96 v97];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = v61;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v98)
    {
      v99 = 0;
    }

    else
    {
      v99 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = v61;
    sub_2707A8EC0();
    v100 = OUTLINED_FUNCTION_49_2();
    [v100 v101];

    swift_unknownObjectRelease();
    *&v196 = 0xD000000000000014;
    *(&v196 + 1) = 0x80000002707B4F70;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v102)
    {
      v103 = 0;
    }

    else
    {
      v103 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v104;
    *(&v196 + 1) = 0x80000002707B4F70;
    sub_2707A8EC0();
    v105 = OUTLINED_FUNCTION_49_2();
    [v105 v106];

    swift_unknownObjectRelease();
    strcpy(&v196, "PrimaryUsage");
    BYTE13(v196) = 0;
    HIWORD(v196) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v107)
    {
      v108 = 0;
    }

    else
    {
      v108 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_126();
    *&v196 = v109;
    *(&v196 + 1) = 0xEC00000065676173;
    sub_2707A8EC0();
    v110 = OUTLINED_FUNCTION_49_2();
    [v110 v111];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = 0xD000000000000010;
    *(&v196 + 1) = 0x557972616D697250;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v112)
    {
      v113 = 0;
    }

    else
    {
      v113 = sub_2707A87C0();
    }

    *&v196 = 0xD000000000000010;
    *(&v196 + 1) = 0x557972616D697250;
    sub_2707A8EC0();
    v114 = OUTLINED_FUNCTION_49_2();
    [v114 v115];

    swift_unknownObjectRelease();
    *&v196 = 0x746375646F7250;
    *(&v196 + 1) = 0xE700000000000000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v116)
    {
      v117 = sub_2707A85C0();
    }

    else
    {
      v117 = 0;
    }

    *&v196 = 0x746375646F7250;
    *(&v196 + 1) = 0xE700000000000000;
    [v202 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    *&v196 = 0x49746375646F7250;
    *(&v196 + 1) = 0xE900000000000044;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v118)
    {
      v119 = 0;
    }

    else
    {
      v119 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_104();
    *&v196 = 0x49746375646F7250;
    *(&v196 + 1) = v120;
    sub_2707A8EC0();
    v121 = OUTLINED_FUNCTION_49_2();
    [v121 v122];

    swift_unknownObjectRelease();
    strcpy(&v196, "ReportInterval");
    HIBYTE(v196) = -18;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v123)
    {
      v124 = 0;
    }

    else
    {
      v124 = sub_2707A87C0();
    }

    strcpy(&v196, "ReportInterval");
    HIBYTE(v196) = -18;
    sub_2707A8EC0();
    v125 = OUTLINED_FUNCTION_49_2();
    [v125 v126];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    v198 = (v127 + 6);
    v199 = 0xEE006C6176726574;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    v128 = *(&v196 + 1);
    v129 = v196;
    if (*(&v196 + 1) >> 60 == 15)
    {
      v130 = 0;
    }

    else
    {
      v130 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v198 = (v131 + 6);
    v199 = 0xEE006C6176726574;
    v132 = sub_2707A8EC0();
    [v202 __swift_setObject_forKeyedSubscript_];
    sub_2707629B4(v129, v128);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v133 + 5;
    *(&v196 + 1) = 0xEE006C6176726574;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v134)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v129 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v196 = v132 + 5;
    *(&v196 + 1) = 0xEE006C6176726574;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v135 v136];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_18();
    *&v196 = v132;
    *(&v196 + 1) = v137;
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    HIDServiceProperties.scrollAccelParametricCurves.setter(v198);
    OUTLINED_FUNCTION_8_19();
    v139 = v138 - 1;
    *&v196 = v138 - 1;
    *(&v196 + 1) = 0xEE006C6176726574;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v140)
    {
      v141 = 0;
    }

    else
    {
      v141 = sub_2707A87C0();
    }

    *&v196 = v139;
    *(&v196 + 1) = 0xEE006C6176726574;
    v142 = sub_2707A8EC0();
    v143 = OUTLINED_FUNCTION_49_2();
    [v143 v144];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = v139;
    *(&v196 + 1) = v142;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v145)
    {
      v146 = 0;
    }

    else
    {
      v146 = sub_2707A87C0();
    }

    *&v196 = v139;
    *(&v196 + 1) = v142;
    v147 = sub_2707A8EC0();
    v148 = OUTLINED_FUNCTION_49_2();
    [v148 v149];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    v151 = v150 - 3;
    *&v196 = v150 - 3;
    *(&v196 + 1) = v147;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v152)
    {
      v153 = 0;
    }

    else
    {
      v153 = sub_2707A87C0();
    }

    *&v196 = v151;
    *(&v196 + 1) = v147;
    v154 = sub_2707A8EC0();
    v155 = OUTLINED_FUNCTION_49_2();
    [v155 v156];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v157 + 4;
    *(&v196 + 1) = v154;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v158 = 0;
    }

    else
    {
      v158 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v159 + 4;
    *(&v196 + 1) = v154;
    v160 = sub_2707A8EC0();
    v161 = OUTLINED_FUNCTION_49_2();
    [v161 v162];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v198 = v151;
    v199 = v160;
    sub_27078ED50();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    if (v197)
    {
      v163 = 0;
    }

    else
    {
      v163 = HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter();
    }

    v198 = v151;
    v199 = v160;
    sub_2707A8EC0();
    v164 = OUTLINED_FUNCTION_49_2();
    [v164 v165];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_104();
    *&v196 = 0x726F70736E617254;
    *(&v196 + 1) = v166 + 48;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v167)
    {
      v168 = sub_2707A85C0();
    }

    else
    {
      v168 = 0;
    }

    OUTLINED_FUNCTION_104();
    *&v196 = 0x726F70736E617254;
    *(&v196 + 1) = v169 + 48;
    v170 = sub_2707A8EC0();
    v171 = OUTLINED_FUNCTION_49_2();
    [v171 v172];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v196 = v173 + 3;
    *(&v196 + 1) = v170;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v174)
    {
      v175 = 0;
    }

    else
    {
      v175 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_132();
    *&v196 = v151 + 3;
    *(&v196 + 1) = v170;
    v176 = sub_2707A8EC0();
    v177 = OUTLINED_FUNCTION_49_2();
    [v177 v178];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = v151 + 9;
    *(&v196 + 1) = v176;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v179)
    {
      v180 = 0;
    }

    else
    {
      v180 = sub_2707A87C0();
    }

    *&v196 = v151 + 9;
    *(&v196 + 1) = v176;
    v181 = sub_2707A8EC0();
    v182 = OUTLINED_FUNCTION_49_2();
    [v182 v183];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v196 = v151 + 3;
    *(&v196 + 1) = v181;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v14)
    {
      v184 = 0;
    }

    else
    {
      v184 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v196 = v185 + 3;
    *(&v196 + 1) = v181;
    sub_2707A8EC0();
    v186 = OUTLINED_FUNCTION_49_2();
    [v186 v187];

    swift_unknownObjectRelease();
    *&v196 = 0x4449726F646E6556;
    *(&v196 + 1) = 0xE800000000000000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v188)
    {
      v189 = 0;
    }

    else
    {
      v189 = sub_2707A87C0();
    }

    *&v196 = 0x4449726F646E6556;
    *(&v196 + 1) = 0xE800000000000000;
    [v202 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v190 = OUTLINED_FUNCTION_67_0();
    v191(v190);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  OUTLINED_FUNCTION_98();
}

void HIDServiceProperties.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A520, &qword_2707B1820);
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v191 - v16;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2707779F8();
  sub_2707A8FE0();
  if (!v8 || (OUTLINED_FUNCTION_87(), *&v198 = v18, *(&v198 + 1) = v19, OUTLINED_FUNCTION_28_2(), sub_2707A8E50(), (v4 = v3) == 0))
  {
    OUTLINED_FUNCTION_41_2();
    v24 = HIDServiceProperties.subscript.getter(v20, v21, v22, v23);
    if (v24)
    {
      v32 = v24;
      v3 = v4;
      sub_270782C64(v24, v25, v26, v27, v28, v29, v30, v31, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, v200, v201);
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v200 = v34;
    strcpy(&v198, "HIDAccelCurves");
    HIBYTE(v198) = -18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D8, &qword_2707B1810);
    sub_27078EDA4(&unk_28082A528);
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_37_0();
    sub_2707A8E00();
    if (v3)
    {
    }

    else
    {

      v35 = OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter(v35, v36);
      *&v198 = 0xD000000000000014;
      *(&v198 + 1) = 0xEE00736576727543;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      v37 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v37, v38);
      strcpy(&v198, "Authenticated");
      HIWORD(v198) = -4864;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      v39 = OUTLINED_FUNCTION_85();
      HIDServiceProperties.subscript.getter(v39, v40);
      OUTLINED_FUNCTION_7_18();
      *&v198 = 0xD000000000000017;
      *(&v198 + 1) = v41;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      v42 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v42, v43);
      strcpy(&v198, "CapsLockDelay");
      HIWORD(v198) = -4864;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      v44 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v44, v45);
      *&v198 = 0xD000000000000016;
      *(&v198 + 1) = 0x6B636F4C73706143;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      HIDServiceProperties.subscript.getter(0x7954656369766544, 0xEE00746E69486570);
      strcpy(&v198, "DeviceTypeHint");
      HIBYTE(v198) = -18;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v46 = 0xD000000000000010;
      v197 = 0x80000002707B4710;
      v48 = HIDServiceProperties.subscript.getter(0xD000000000000010, 0x80000002707B4710, v47, v6);
      v56 = MEMORY[0x277D84F90];
      if (v48)
      {
        v57 = v48;
        sub_270782A48(v48, v49, v50, v51, v52, v53, v54, v55, v191, v192.super.isa, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, v200, v201);
        v59 = v58;

        v56 = MEMORY[0x277D84F90];
        v60 = v59;
      }

      else
      {
        v60 = MEMORY[0x277D84F90];
      }

      v61 = *(v60 + 16);
      v196 = 0xD000000000000010;
      if (v61)
      {
        *&v198 = v56;
        v195 = v60;
        sub_27071AA48(0, v61, 0);
        v62 = v61;
        v63 = v198;
        v64 = *(v198 + 16);
        v65 = 16 * v64;
        v66 = (v195 + 34);
        do
        {
          isa = *(v66 - 1);
          v68 = *v66;
          *&v198 = v63;
          v69 = *(v63 + 24);
          v70 = v64 + 1;
          if (v64 >= v69 >> 1)
          {
            v193 = v62;
            v194 = v64 + 1;
            v191 = v68;
            v192.super.isa = isa;
            sub_27071AA48((v69 > 1), v64 + 1, 1);
            v68 = v191;
            isa = v192.super.isa;
            v62 = v193;
            v70 = v194;
            v63 = v198;
          }

          v66 += 2;
          *(v63 + 16) = v70;
          v71 = v63 + v65;
          *(v71 + 32) = v68;
          *(v71 + 40) = isa;
          v65 += 16;
          v64 = v70;
          --v62;
        }

        while (v62);

        v46 = v196;
      }

      else
      {

        v63 = MEMORY[0x277D84F90];
      }

      v200 = v63;
      *&v198 = v46;
      *(&v198 + 1) = v197;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4F0, &qword_2707B1818);
      sub_27078EC44(&unk_28082A538);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_43_1();
      v73 = OUTLINED_FUNCTION_14_11();
      v200 = HIDServiceProperties.subscript.getter(v73, v74);
      *&v198 = 0xD000000000000019;
      *(&v198 + 1) = v72;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480, &qword_2707B17C8);
      sub_27078EEB0(&unk_28082A548);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_43_1();
      v76 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v76, v77);
      *&v198 = 0xD000000000000012;
      *(&v198 + 1) = v75;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_43_1();
      v78 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v78, v79);
      *&v198 = 0xD000000000000021;
      *(&v198 + 1) = v75;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      v80 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v80, v81);
      *&v198 = 0x437972746E756F43;
      *(&v198 + 1) = 0xEB0000000065646FLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      v82 = v196;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v83, v84);
      *&v198 = v82;
      *(&v198 + 1) = 0x437972746E756F43;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v85 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v85, v86);
      strcpy(&v198, "StandardType");
      BYTE13(v198) = 0;
      HIWORD(v198) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter(0x74636166756E614DLL, 0xEC00000072657275);
      strcpy(&v198, "Manufacturer");
      BYTE13(v198) = 0;
      HIWORD(v198) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v87 = OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter(v87, v88);
      OUTLINED_FUNCTION_39_1();
      *&v198 = v89;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v91 = v90 + 6;
      v92 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v92, v93);
      *&v198 = v91;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v95 = v94 + 10;
      v96 = OUTLINED_FUNCTION_14_11();
      *&v198 = HIDServiceProperties.subscript.getter(v96, v97);
      *(&v198 + 1) = v98;
      v200 = v95;
      v201 = 0x74636166756E614DLL;
      sub_27078EF1C();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v198, *(&v198 + 1));
      OUTLINED_FUNCTION_6_22();
      v100 = v99 + 12;
      v101 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v101, v102);
      *&v198 = v100;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v104 = v103 + 7;
      v105 = OUTLINED_FUNCTION_14_11();
      *&v198 = HIDServiceProperties.subscript.getter(v105, v106);
      *(&v198 + 1) = v107;
      v200 = v104;
      v201 = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v198, *(&v198 + 1));
      OUTLINED_FUNCTION_6_22();
      v109 = v108 + 6;
      v110 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v110, v111);
      *&v198 = v109;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_37_0();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_6_22();
      v113 = v112 + 1;
      v114 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v114, v115);
      *&v198 = v113;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      v116 = OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter(v116, v117);
      OUTLINED_FUNCTION_39_1();
      *&v198 = v118;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      v119 = OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter(v119, v120);
      OUTLINED_FUNCTION_39_1();
      *&v198 = v121;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      v122 = OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter(v122, v123);
      OUTLINED_FUNCTION_39_1();
      *&v198 = v124;
      *(&v198 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      v125 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v125, v126);
      strcpy(&v198, "PrimaryUsage");
      BYTE13(v198) = 0;
      HIWORD(v198) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      v127 = v196;
      v128 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v128, v129);
      *&v198 = v127;
      *(&v198 + 1) = 0x557972616D697250;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter(0x746375646F7250, 0xE700000000000000);
      *&v198 = 0x746375646F7250;
      *(&v198 + 1) = 0xE700000000000000;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      HIDServiceProperties.subscript.getter(0x49746375646F7250, 0xE900000000000044);
      OUTLINED_FUNCTION_104();
      *&v198 = 0x49746375646F7250;
      *(&v198 + 1) = v130;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      v131 = OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter(v131, v132);
      strcpy(&v198, "ReportInterval");
      HIBYTE(v198) = -18;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v134 = v133 + 6;
      v135 = OUTLINED_FUNCTION_14_11();
      *&v198 = HIDServiceProperties.subscript.getter(v135, v136);
      *(&v198 + 1) = v137;
      v200 = v134;
      v201 = 0x6E4974726F706552;
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v198, *(&v198 + 1));
      OUTLINED_FUNCTION_6_22();
      v139 = v138 + 5;
      v140 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v140, v141);
      *&v198 = v139;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v142 = OUTLINED_FUNCTION_7_19();
      v146 = HIDServiceProperties.subscript.getter(v142, v143, v144, v145);
      if (v146)
      {
        v154 = v146;
        sub_270782C64(v146, v147, v148, v149, v150, v151, v152, v153, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, v200, v201);
        v156 = v155;
      }

      else
      {
        v156 = 0;
      }

      v200 = v156;
      OUTLINED_FUNCTION_39_1();
      *&v198 = v157;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_6_22();
      v159 = v158 - 1;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v160, v161);
      *&v198 = v159;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v162, v163);
      *&v198 = v159;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v165 = v164 - 3;
      v166 = OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter(v166, v167);
      *&v198 = v165;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v169 = v168 + 4;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v170, v171);
      *&v198 = v169;
      *(&v198 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_43_1();
      v172 = OUTLINED_FUNCTION_14_11();
      v176 = HIDServiceProperties.subscript.getter(v172, v173, v174, v175);
      if (v176)
      {
        *(&v176 - 2) = HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(v176);
      }

      else
      {
        v177 = 0;
        v178 = 1;
      }

      *&v198 = v176;
      *(&v198 + 1) = v177;
      LOBYTE(v199) = v178 & 1;
      v200 = v165;
      v201 = 0x6E4974726F706552;
      sub_27078EF70();
      OUTLINED_FUNCTION_28_2();
      sub_2707A8E00();
      OUTLINED_FUNCTION_104();
      v180 = v179 + 48;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v181, v182);
      *&v198 = 0x726F70736E617254;
      *(&v198 + 1) = v180;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_6_22();
      v184 = v183 + 3;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v185, v186);
      *&v198 = v184;
      *(&v198 + 1) = v180;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v188 = v187 + 9;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter(v189, v190);
      *&v198 = v188;
      *(&v198 + 1) = v180;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter(0x4449726F646E6556, 0xE800000000000000);
      *&v198 = 0x4449726F646E6556;
      *(&v198 + 1) = 0xE800000000000000;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
    }
  }

  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_98();
}

uint64_t HIDServiceProperties.init(service:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v22 = ObjectType;
  v7 = v6(ObjectType, a2);
  v8 = static HIDServicePropertyKey.allCases.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(a2 + 48);
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v10(&v18, v13, v12, v22, a2);
      if (v19)
      {
        sub_270724188(&v18, &v20);
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        v14 = sub_2707A8E90();
        *&v18 = v13;
        *(&v18 + 1) = v12;
        [v17 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {

        sub_27078FD04(&v18, &qword_280829D68);
      }

      v11 += 2;
      --v9;
    }

    while (v9);

    v3 = v2;
  }

  else
  {
  }

  v15 = v17;
  sub_27078D214(v7);
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v7;
}

void HIDServiceProperties.init(usages:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  if (*(a1 + 16))
  {
    HIDServiceProperties.primaryUsagePair.setter(*(a1 + 32));
    HIDServiceProperties.deviceUsagePairs.setter(a1);
  }

  else
  {

    sub_27073FB54(0, &qword_280829E48, 0x277CCA9B8);
    sub_27077F25C(22, 0xD000000000000022, 0x80000002707B55B0, "/Library/Caches/com.apple.xbs/Sources/UniversalHID/UniversalHID/HIDUtils/HIDServiceProperties.swift", 99, 2, 849);
    swift_willThrow();
  }
}

void sub_27078D6B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  HIDServiceProperties.init(from:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
    a4[1] = v7;
  }
}

uint64_t static HIDServiceProperties.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  sub_27073FB54(0, &qword_280829960, 0x277D82BB8);
  return sub_2707A8910() & 1;
}

uint64_t HIDServiceProperties.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_97(a1);
  MEMORY[0x2743A8540](a1);
  sub_2707A8920();
  return sub_2707A8FC0();
}

uint64_t sub_27078D818(uint64_t a1)
{
  v2 = *v1;
  sub_2707A8F60();
  HIDServiceProperties.hash(into:)(v4, v2);
  return sub_2707A8FC0();
}

uint64_t sub_27078D86C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MEMORY[0x2743A7BE0](a1);
  MEMORY[0x2743A7BE0](10322146, 0xA300000000000000);
  return 2625692192;
}

unint64_t HIDServiceProperties.description.getter(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = OUTLINED_FUNCTION_28();
  v5 = HIDDeviceType.init(properties:)(v3, v4);
  v19 = HIDDeviceType.description.getter(v5);
  MEMORY[0x2743A7BE0](91, 0xE100000000000000);
  sub_270735074();
  v6 = sub_2707A8680();
  MEMORY[0x2743A7BE0](v6);

  MEMORY[0x2743A7BE0](93, 0xE100000000000000);
  v7 = OUTLINED_FUNCTION_86();
  HIDServiceProperties.subscript.getter(v7 & 0xFFFFFFFFFFFFLL | 0x74000000000000, 0xE700000000000000);
  OUTLINED_FUNCTION_109();
  v10 = sub_27078D86C(v8, v9);
  v12 = v11;

  MEMORY[0x2743A7BE0](v10, v12);

  v13 = OUTLINED_FUNCTION_57_0();
  HIDServiceProperties.subscript.getter(v13, v14);
  OUTLINED_FUNCTION_109();
  sub_27078D86C(v15, v16);

  v17 = OUTLINED_FUNCTION_28();
  MEMORY[0x2743A7BE0](v17);

  return v19;
}

uint64_t sub_27078DA0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829978, &qword_2707AC310);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DA6C()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DAB0()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DAF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A608, &qword_2707B2008);
  v33 = v4;
  result = sub_2707A8CD0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2707961C0(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_270724188(v22, v34);
    }

    else
    {
      sub_2707374F8(v22, v34);
    }

    sub_2707A8F60();
    sub_2707A8620();
    result = sub_2707A8FC0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_270724188(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_27078DDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventReportSenderID(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829908, &unk_2707AC2E0);
  v40 = v4;
  result = sub_2707A8CD0();
  v11 = v9;
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v36 = v3;
  v37 = v9;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v11 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      sub_2707961C0(0, (v34 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v11 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v38 + 72);
    v25 = *(v11 + 48) + v24 * v23;
    if (v40)
    {
      sub_270723128(v25, v8);
      v41 = *(*(v11 + 56) + 8 * v23);
    }

    else
    {
      sub_2707230C4(v25, v8);
      v41 = *(*(v11 + 56) + 8 * v23);
    }

    sub_2707A8F60();
    sub_2707A8410();
    sub_27078FC58(&qword_280829710);
    sub_2707A8540();
    MEMORY[0x2743A8540](*&v8[*(v39 + 20)]);
    result = sub_2707A8FC0();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v11 = v37;
LABEL_24:
    *(v19 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_270723128(v8, *(v12 + 48) + v24 * v29);
    *(*(v12 + 56) + 8 * v29) = v41;
    ++*(v12 + 16);
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  v11 = v37;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v19 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_27078E148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5F8, &qword_2707B1FE8);
  v34 = v4;
  result = sub_2707A8CD0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2707961C0(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_2707A8F60();
    sub_2707A8620();
    result = sub_2707A8FC0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_27078E3E4(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2707A8EF0();
      __break(1u);
      goto LABEL_22;
    }

    sub_27078FC9C(i, &v30, &qword_2808295C8, &unk_2707AA4A0);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_270724188(&v32, v27);
    v9 = *a3;
    v11 = sub_270721FD8(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829720, &qword_2707AB160);
      sub_2707A8C50();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_270724188(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_27078DAF4(v14, a2 & 1);
  v16 = sub_270721FD8(v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A600, &qword_2707B2000);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v27);

    return;
  }

LABEL_22:
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD00000000000001BLL, 0x80000002707B56B0);
  sub_2707A8BF0();
  MEMORY[0x2743A7BE0](39, 0xE100000000000000);
  sub_2707A8C70();
  __break(1u);
}

void sub_27078E6FC(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v6 = type metadata accessor for EventReportSenderID(0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0, &unk_2707B1FF0);
  MEMORY[0x28223BE20](v9, v10);
  v14 = v36 - v13;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_13:

    return;
  }

  v36[0] = v6;
  v36[1] = v3;
  v15 = 0;
  v16 = *(v11 + 48);
  v37 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v38 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2707A8EF0();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v12;
    sub_27078FC9C(v37 + *(v12 + 72) * v15, v14, &qword_2808296C0, &unk_2707B1FF0);
    v18 = v42;
    sub_270723128(v14, v42);
    v19 = *&v14[v38];
    v20 = *v41;
    v22 = sub_270721F0C(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829740, &unk_2707AB180);
      sub_2707A8C50();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v42;
    v30 = *v41;
    *(*v41 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    sub_270723128(v29, v30[6] + *(v40 + 72) * v22);
    *(v30[7] + 8 * v22) = v19;
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v15;
    v30[2] = v33;
    a2 = 1;
    v12 = v17;
    if (v39 == v15)
    {
      goto LABEL_13;
    }
  }

  sub_27078DDA8(v25, a2 & 1);
  v27 = sub_270721F0C(v42);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();
  v45 = v34;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A600, &qword_2707B2000);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_27072318C(v42);

    return;
  }

LABEL_22:
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD00000000000001BLL, 0x80000002707B56B0);
  sub_2707A8BF0();
  MEMORY[0x2743A7BE0](39, 0xE100000000000000);
  sub_2707A8C70();
  __break(1u);
}

unint64_t sub_27078EB48()
{
  result = qword_28082A4A8;
  if (!qword_28082A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4A8);
  }

  return result;
}

unint64_t sub_27078EB9C()
{
  result = qword_28082A4C0;
  if (!qword_28082A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4C0);
  }

  return result;
}

unint64_t sub_27078EBF0()
{
  result = qword_28082A4E8;
  if (!qword_28082A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4E8);
  }

  return result;
}

unint64_t sub_27078EC44(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A4F0, &qword_2707B1818);
    v4();
    result = OUTLINED_FUNCTION_139();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078ECA8()
{
  result = qword_28082A500;
  if (!qword_28082A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A500);
  }

  return result;
}

unint64_t sub_27078ECFC()
{
  result = qword_28082A510;
  if (!qword_28082A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A510);
  }

  return result;
}

unint64_t sub_27078ED50()
{
  result = qword_28082A518;
  if (!qword_28082A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A518);
  }

  return result;
}

unint64_t sub_27078EDA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A4D8, &qword_2707B1810);
    v4();
    result = OUTLINED_FUNCTION_139();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078EE08()
{
  result = qword_28082A530;
  if (!qword_28082A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A530);
  }

  return result;
}