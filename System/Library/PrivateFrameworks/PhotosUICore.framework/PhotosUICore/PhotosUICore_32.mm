void sub_1A40390A4(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1A4038E8C(v4, v3);
  }

  else
  {
    sub_1A4038E8C(v2, a2);
  }
}

id sub_1A403910C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A42F5170(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A40392A4(0);
  v15 = v14;
  sub_1A3EE442C(v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A40392A4(uint64_t a1)
{
  if (!qword_1EB125080)
  {
    v2 = type metadata accessor for PhotosDetailsShazamEventsWidgetView(255);
    v3 = sub_1A4039948(&qword_1EB125E88, type metadata accessor for PhotosDetailsShazamEventsWidgetView, &unk_1A530574C);
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125080);
    }
  }
}

uint64_t sub_1A4039470()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  v3 = (*((*v1 & *v0) + 0x108))();
  v4 = [v3 sizeClass] != 2;

  return 2 * v4;
}

void sub_1A4039528(__int16 a1)
{
  if ((a1 & 0x4000) != 0)
  {
    v2 = v1;
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
    if (v4)
    {
      v15 = v4;
      type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(0);
      if (swift_dynamicCastClass() && (sub_1A4039948(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel, &unk_1A533DFE8), sub_1A52478D4(), sub_1A5247964(), v5 = , v6 = (*((*v3 & *v1) + 0xA8))(v5), v7 = [v6 shazamEventInfo], v6, v8 = sub_1A42F53CC(v7), v9 = (*((*v3 & *v2) + 0x158))(v8), v9, objc_msgSend(v9, sel_setNeedsLayout), objc_msgSend(v9, sel_layoutIfNeeded), v9, (v10 = (*((*v3 & *v2) + 0x78))()) != 0))
      {
        v11 = v10;
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = v2;
        aBlock[4] = sub_1A3E770A4;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_80;
        v13 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v14 = v2;

        [v11 widget:v14 animateChanges:v13 withAnimationOptions:0];

        _Block_release(v13);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1A4039888()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsShazamEventsWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A40398C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsShazamEventsWidget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A4039948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *GenerativeStoryFeatureEligibilityState.processingStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus);
  v2 = v1;
  return v1;
}

id sub_1A4039A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityTitle];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityDescription];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id GenerativeStoryFeatureEligibilityState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A4039C48(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() redColor];
  qword_1EB1EBAB0 = result;
  return result;
}

id sub_1A4039C84()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.8 blue:0.0 alpha:1.0];
  qword_1EB1EBAB8 = result;
  return result;
}

uint64_t sub_1A4039CCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A403AFA8(a1, a2);
}

uint64_t sub_1A4039D80(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1A3DBD9A0();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A4039FFC(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A403A0D8;

  return sub_1A403AFA8(v6, v7);
}

uint64_t sub_1A403A0D8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_1A5240B74();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_1A403A290(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = a2;
    v40 = a3;
    v41 = v12;
    v42 = v11;
    v43 = v8;
    v15 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    v16 = a1;
    v17 = [v15 initWithSize_];
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = v16;
    *(v18 + 32) = xmmword_1A5313D30;
    *(v18 + 48) = xmmword_1A5313D40;
    __asm { FMOV            V0.2D, #4.0 }

    *(v18 + 64) = _Q0;
    *(v18 + 80) = xmmword_1A5313D50;
    __asm { FMOV            V0.2D, #2.0 }

    *(v18 + 96) = _Q0;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1A403C14C;
    *(v25 + 24) = v18;
    v48 = sub_1A3D78DD0;
    v49 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1A3D35A90;
    v47 = &block_descriptor_11;
    v26 = _Block_copy(&aBlock);
    v37 = v16;

    v38 = v17;
    v27 = [v17 imageWithActions_];
    _Block_release(v26);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v28 = sub_1A524D474();
      v29 = swift_allocObject();
      v30 = v40;
      v29[2] = v39;
      v29[3] = v30;
      v29[4] = v27;
      v48 = sub_1A3F37E68;
      v49 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1A3C2E0D0;
      v47 = &block_descriptor_17_0;
      v31 = _Block_copy(&aBlock);

      v32 = v27;

      sub_1A524BF14();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A3C29BC4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C2A224(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v14, v10, v31);
      _Block_release(v31);

      (*(v43 + 8))(v10, v7);
      (*(v41 + 8))(v14, v42);
    }
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v33 = sub_1A524D474();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a3;
    v48 = sub_1A403C120;
    v49 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1A3C2E0D0;
    v47 = &block_descriptor_81;
    v35 = _Block_copy(&aBlock);

    sub_1A524BF14();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C29BC4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C2A224(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v14, v10, v35);
    _Block_release(v35);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }
}

id sub_1A403AA68(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A403AAA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A3CA8098;

  return v6();
}

uint64_t sub_1A403AB8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A3D60150;

  return v7();
}

uint64_t sub_1A403AC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3C2A224(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A3D96FAC(a3, v23 - v10);
  v12 = sub_1A524CCB4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A403E26C(v11, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A524CCA4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A524CBC4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A524C744() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1A403E26C(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

    return v21;
  }

LABEL_8:
  sub_1A403E26C(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1A403AFA8(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v5 = sub_1A5244AD4();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_1A52453A4();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[30] = v7;
  v2[31] = swift_task_alloc();
  type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
  v8 = swift_task_alloc();
  v2[32] = v8;
  *v8 = v2;
  v8[1] = sub_1A403B140;

  return static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(v7, a1, a2);
}

uint64_t sub_1A403B140(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1A403BFD8;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_1A403B268;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A403B268()
{
  receiver = v0[17].receiver;
  (*(v0[14].receiver + 4))(v0[15].super_class, v0[15].receiver, v0[13].super_class);
  if (receiver)
  {
    v0[9].receiver = 0;
    v34 = v0[17].receiver;
    super_class = v0[15].super_class;
    v4 = v0[14].receiver;
    v3 = v0[14].super_class;
    v5 = v0[13].receiver;
    v6 = v0[13].super_class;
    v7 = v0[12].receiver;
    v8 = v0[12].super_class;
    v0[9].super_class = 0xE000000000000000;
    MEMORY[0x1A5907B60](2114381, 0xE300000000000000);
    sub_1A5244B54();
    sub_1A5244AE4();
    sub_1A524E624();
    (*(v8 + 1))(v5, v7);
    v10 = v0[9].receiver;
    v9 = v0[9].super_class;
    v4[2](v3, super_class, v6);
    v11 = (v4[11])(v3, v6);
    if (v11 == *MEMORY[0x1E69C1478])
    {
      v12 = v0[14].super_class;
      (*(v0[14].receiver + 12))(v12, v0[13].super_class);
      sub_1A524E404();

      MEMORY[0x1A5907B60](v10, v9);

      MEMORY[0x1A5907B60](0x6967696C656E4920, 0xEB00000000656C62);
      v32 = 0xA400000000000000;
      v33 = 546086370;
      v13 = sub_1A52452D4();
    }

    else if (v11 == *MEMORY[0x1E69C1480])
    {
      v12 = v0[14].super_class;
      (*(v0[14].receiver + 12))(v12, v0[13].super_class);
      sub_1A524E404();

      MEMORY[0x1A5907B60](v10, v9);

      MEMORY[0x1A5907B60](0x6C696176616E5520, 0xEC000000656C6261);
      v32 = 0xA500000000000000;
      v33 = 0x2084949FF0;
      v13 = sub_1A5245364();
    }

    else
    {
      if (v11 != *MEMORY[0x1E69C1490])
      {
        if (v11 == *MEMORY[0x1E69C1488])
        {
          sub_1A524E404();

          v35 = 0x1000000000000013;
          v36 = 0x80000001A53C46D0;
          MEMORY[0x1A5907B60](v10, v9);

          v29 = 0xED00007974696C69;
          v30 = 0x62616C6961766120;
        }

        else
        {
          if (v11 != *MEMORY[0x1E69C1498])
          {
            return sub_1A524E6E4();
          }

          sub_1A524E404();

          v35 = 545627362;
          v36 = 0xA400000000000000;
          MEMORY[0x1A5907B60](v10, v9);

          v30 = 0x62616C6961764120;
          v29 = 0xEA0000000000656CLL;
        }

        MEMORY[0x1A5907B60](v30, v29);
        v32 = v36;
        v33 = v35;
        goto LABEL_12;
      }

      v12 = v0[14].super_class;
      (*(v0[14].receiver + 12))(v12, v0[13].super_class);
      sub_1A524E404();

      MEMORY[0x1A5907B60](v10, v9);

      MEMORY[0x1A5907B60](0xD000000000000016, 0x80000001A53C46F0);
      v32 = 0xA500000000000000;
      v33 = 0x2084949FF0;
      v13 = sub_1A5245384();
    }

    (*(*(v13 - 8) + 8))(v12, v13);
LABEL_12:
    v17 = v0[15].super_class;
    v18 = v0[14].receiver;
    v19 = v0[13].super_class;
    v20 = sub_1A52452C4();
    v22 = v21;
    v23 = type metadata accessor for GenerativeStoryFeatureEligibilityState(v20, v21);
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityTitle];
    *v25 = v33;
    v25[1] = v32;
    v26 = &v24[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityDescription];
    *v26 = v20;
    v26[1] = v22;
    *&v24[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus] = v34;
    v0[10].receiver = v24;
    v0[10].super_class = v23;
    v27 = objc_msgSendSuper2(v0 + 10, sel_init);
    v18[1](v17, v19);

    v28 = v0->super_class;

    return v28(v27);
  }

  v14 = v0[11].super_class;
  v0[1].receiver = v0;
  v0[3].super_class = &v0[11];
  v0[1].super_class = sub_1A403B920;
  v15 = swift_continuation_init();
  sub_1A403E2DC(0);
  v0[8].super_class = v16;
  v0[5].receiver = MEMORY[0x1E69E9820];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_1A4039D80;
  v0[6].super_class = &block_descriptor_55_0;
  v0[7].receiver = v15;
  [(objc_class *)v14 availabilityForFeature:1 completionHandler:&v0[5]];

  return MEMORY[0x1EEE6DEC8](&v0[1]);
}

uint64_t sub_1A403B920()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1A403C064;
  }

  else
  {
    v2 = sub_1A403BA30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A403BA30()
{
  v0[9].receiver = 0;
  receiver = v0[11].receiver;
  super_class = v0[15].super_class;
  v3 = v0[14].receiver;
  v2 = v0[14].super_class;
  v4 = v0[13].receiver;
  v5 = v0[13].super_class;
  v6 = v0[12].receiver;
  v7 = v0[12].super_class;
  v0[9].super_class = 0xE000000000000000;
  MEMORY[0x1A5907B60](2114381, 0xE300000000000000);
  sub_1A5244B54();
  sub_1A5244AE4();
  sub_1A524E624();
  (*(v7 + 1))(v4, v6);
  v9 = v0[9].receiver;
  v8 = v0[9].super_class;
  v3[2](v2, super_class, v5);
  v10 = (v3[11])(v2, v5);
  if (v10 == *MEMORY[0x1E69C1478])
  {
    v11 = v0[14].super_class;
    (*(v0[14].receiver + 12))(v11, v0[13].super_class);
    sub_1A524E404();

    MEMORY[0x1A5907B60](v9, v8);

    MEMORY[0x1A5907B60](0x6967696C656E4920, 0xEB00000000656C62);
    v28 = 0xA400000000000000;
    v29 = 546086370;
    v12 = sub_1A52452D4();
LABEL_7:
    (*(*(v12 - 8) + 8))(v11, v12);
    goto LABEL_8;
  }

  if (v10 == *MEMORY[0x1E69C1480])
  {
    v11 = v0[14].super_class;
    (*(v0[14].receiver + 12))(v11, v0[13].super_class);
    sub_1A524E404();

    MEMORY[0x1A5907B60](v9, v8);

    MEMORY[0x1A5907B60](0x6C696176616E5520, 0xEC000000656C6261);
    v28 = 0xA500000000000000;
    v29 = 0x2084949FF0;
    v12 = sub_1A5245364();
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x1E69C1490])
  {
    v11 = v0[14].super_class;
    (*(v0[14].receiver + 12))(v11, v0[13].super_class);
    sub_1A524E404();

    MEMORY[0x1A5907B60](v9, v8);

    MEMORY[0x1A5907B60](0xD000000000000016, 0x80000001A53C46F0);
    v28 = 0xA500000000000000;
    v29 = 0x2084949FF0;
    v12 = sub_1A5245384();
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x1E69C1488])
  {
    sub_1A524E404();

    v31 = 0x1000000000000013;
    v32 = 0x80000001A53C46D0;
    MEMORY[0x1A5907B60](v9, v8);

    v26 = 0xED00007974696C69;
    v27 = 0x62616C6961766120;
  }

  else
  {
    if (v10 != *MEMORY[0x1E69C1498])
    {
      return sub_1A524E6E4();
    }

    sub_1A524E404();

    v31 = 545627362;
    v32 = 0xA400000000000000;
    MEMORY[0x1A5907B60](v9, v8);

    v27 = 0x62616C6961764120;
    v26 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1A5907B60](v27, v26);
  v28 = v32;
  v29 = v31;
LABEL_8:
  v13 = v0[15].super_class;
  v14 = v0[14].receiver;
  v15 = v0[13].super_class;
  v16 = sub_1A52452C4();
  v18 = v17;
  v19 = type metadata accessor for GenerativeStoryFeatureEligibilityState(v16, v17);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityTitle];
  *v21 = v29;
  v21[1] = v28;
  v22 = &v20[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_featureEligibilityDescription];
  *v22 = v16;
  v22[1] = v18;
  *&v20[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus] = receiver;
  v0[10].receiver = v20;
  v0[10].super_class = v19;
  v23 = objc_msgSendSuper2(v0 + 10, sel_init);
  v14[1](v13, v15);

  v24 = v0->super_class;

  return v24(v23);
}

uint64_t sub_1A403BFD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A403C064(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[27];
  v4 = v1[28];
  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v5 = v1[1];

  return v5();
}

void sub_1A403C14C(void *a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = [a1 CGContext];
  if (qword_1EB1A1ED0 != -1)
  {
    swift_once();
  }

  v9 = [qword_1EB1EBAB8 CGColor];
  CGContextSetFillColorWithColor(v8, v9);

  [v3 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
  v11 = v10;
  v12 = v4 * v10;
  [a1 fillRect_];
  if (qword_1EB1A1EC8 != -1)
  {
    swift_once();
  }

  v13 = 1.0 - v11;
  if (1.0 - v11 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = v4 * v13;
  v15 = [qword_1EB1EBAB0 CGColor];
  CGContextSetFillColorWithColor(v8, v15);

  [a1 fillRect_];
  v16 = [objc_opt_self() grayColor];
  v17 = [v16 CGColor];

  CGContextSetStrokeColorWithColor(v8, v17);
  PXDisplayCollectionDetailedCountsMake();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  path = CGPathCreateMutable();
  sub_1A524D324();
  v32.origin.x = v19;
  v32.origin.y = v21;
  v32.size.width = v23;
  v32.size.height = v25;
  v33 = CGRectInset(v32, 0.5, 0.5);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  sub_1A524D324();
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectInset(v34, 0.5, 0.5);
  CGContextBeginPath(v8);
  CGContextAddPath(v8, path);
  CGContextClosePath(v8);
  CGContextStrokePath(v8);
  CGPathCloseSubpath(path);
}

id sub_1A403C474(char *a1, void *a2)
{
  v177 = a2;
  v180 = a1;
  sub_1A3C2A224(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v173 = &v166 - v3;
  v176 = sub_1A5240E64();
  v171 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1A5241144();
  v174 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v169 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v166 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v167 = &v166 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v166 - v11;
  v12 = sub_1A5241284();
  v179 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v166 - v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1A524C634();
  v20 = [v18 initWithString_];

  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = sub_1A524C634();
  v23 = [v21 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1A524C634();
  v26 = [v24 &selRef:v25 initWithTileView:?];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_1A524E404();

  v182 = 0xD000000000000013;
  v183 = 0x80000001A53C41F0;
  sub_1A5241234();
  sub_1A52411F4();
  v27 = *(v179 + 8);
  v27(v14, v12);
  v28 = v178;
  sub_1A52411E4();
  sub_1A3C29BC4(&qword_1EB130AD8, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
  v29 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v29);

  v178 = v12;
  v27(v28, v12);
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1A524C634();

  v32 = [v30 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_1A524E404();

  v186 = 0xD000000000000025;
  v187 = 0x80000001A53C4210;
  v33 = sub_1A5241C44();
  v184 = v33;
  v185 = sub_1A3C29BC4(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  v34 = __swift_allocate_boxed_opaque_existential_1(&v182);
  (*(*(v33 - 8) + 104))(v34, *MEMORY[0x1E69BDD40], v33);
  v35 = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v182);
  if (v35)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x1A5907B60](v36, v37);

  v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v39 = sub_1A524C634();

  v40 = [v38 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v181 = v20;
  [v17 appendAttributedString_];
  v41 = *&v180[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus];
  if (v41)
  {
    v42 = objc_allocWithZone(MEMORY[0x1E69BE420]);
    v43 = v41;
    v44 = [v42 initWithFeature_];
    v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v46 = sub_1A524C634();
    v47 = [v45 initWithString_];

    [v17 appendAttributedString_];
    LOBYTE(v47) = [v43 wasComputed];
    [v17 appendAttributedString_];
    v180 = v44;
    if (v47)
    {
      [v44 fractionOfCuratedAssetsWithCaptionsThreshold];
      v49 = v48;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithCaptions];
      if (v49 <= v50)
      {
        v51 = 8756450;
      }

      else
      {
        v51 = 9215458;
      }

      MEMORY[0x1A5907B60](v51, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000002CLL, 0x80000001A53C4610);
      [v43 fractionOfCuratedAssetsWithCaptions];
      sub_1A524CEF4();
      v52 = 0xE200000000000000;
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithCaptions];
      if (v49 > v53)
      {
        v54 = 60;
      }

      else
      {
        v54 = 15678;
      }

      if (v49 > v53)
      {
        v52 = 0xE100000000000000;
      }

      MEMORY[0x1A5907B60](v54, v52);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v55 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v56 = sub_1A524C634();

      v57 = [v55 &selRef:v56 initWithTileView:?];

      [v17 appendAttributedString_];
      v58 = v181;
      [v17 appendAttributedString_];
      [v44 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
      v60 = v59;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      if (v60 <= v61)
      {
        v62 = 8756450;
      }

      else
      {
        v62 = 9215458;
      }

      MEMORY[0x1A5907B60](v62, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000042, 0x80000001A53C45C0);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      if (v60 > v63)
      {
        v64 = 60;
      }

      else
      {
        v64 = 15678;
      }

      if (v60 > v63)
      {
        v65 = 0xE100000000000000;
      }

      else
      {
        v65 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v64, v65);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v66 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v67 = sub_1A524C634();

      v68 = [v66 &selRef:v67 initWithTileView:?];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      [v44 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
      v70 = v69;
      [v43 fractionOfCuratedAssetsIndexedInVUClustering];
      if (v71 == *MEMORY[0x1E69BF150])
      {
        v72 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v73 = sub_1A524C634();
        v74 = [v72 &selRef:v73 initWithTileView:?];
      }

      else
      {
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53C4500);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        sub_1A524CEF4();
        MEMORY[0x1A5907B60](8229, 0xE200000000000000);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        if (v70 <= v79)
        {
          v80 = 15678;
        }

        else
        {
          v80 = 60;
        }

        if (v70 <= v79)
        {
          v81 = 0xE200000000000000;
        }

        else
        {
          v81 = 0xE100000000000000;
        }

        MEMORY[0x1A5907B60](v80, v81);

        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        sub_1A524CEF4();
        MEMORY[0x1A5907B60](5972005, 0xE300000000000000);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        if (v70 <= v82)
        {
          v83 = 8756450;
        }

        else
        {
          v83 = 9215458;
        }

        MEMORY[0x1A5907B60](v83, 0xA300000000000000);

        MEMORY[0x1A5907B60](93, 0xE100000000000000);
        v84 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v73 = sub_1A524C634();

        v74 = [v84 &selRef:v73 initWithTileView:?];
      }

      v85 = v74;

      [v17 appendAttributedString_];
      v86 = v181;
      [v17 appendAttributedString_];
      v87 = v180;
      [v180 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold];
      v89 = v88;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      if (v89 <= v90)
      {
        v91 = 8756450;
      }

      else
      {
        v91 = 9215458;
      }

      MEMORY[0x1A5907B60](v91, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53C44B0);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      if (v89 > v92)
      {
        v93 = 60;
      }

      else
      {
        v93 = 15678;
      }

      if (v89 > v92)
      {
        v94 = 0xE100000000000000;
      }

      else
      {
        v94 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v93, v94);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v95 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v96 = sub_1A524C634();

      v97 = [v95 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v98 = [v87 minimumNumberOfCuratedAssets];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 numberOfCuratedAssets] >= v98)
      {
        v99 = 8756450;
      }

      else
      {
        v99 = 9215458;
      }

      MEMORY[0x1A5907B60](v99, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000001DLL, 0x80000001A53C4490);
      v186 = [v43 numberOfCuratedAssets];
      v100 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v100);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      v101 = [v43 numberOfCuratedAssets];
      v102 = v101 < v98;
      if (v101 >= v98)
      {
        v103 = 15678;
      }

      else
      {
        v103 = 60;
      }

      if (v102)
      {
        v104 = 0xE100000000000000;
      }

      else
      {
        v104 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v103, v104);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      v186 = v98;
      v105 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v105);

      v106 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v107 = sub_1A524C634();

      v108 = [v106 initWithString_];

      [v17 appendAttributedString_];
      v109 = v181;
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 photosKnowledgeGraphIsReady])
      {
        v110 = 8756450;
      }

      else
      {
        v110 = 9215458;
      }

      MEMORY[0x1A5907B60](v110, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000021, 0x80000001A53C4320);
      v111 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v112 = sub_1A524C634();

      v113 = [v111 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 vuIndexIsFullClustered])
      {
        v114 = 8756450;
      }

      else
      {
        v114 = 9215458;
      }

      MEMORY[0x1A5907B60](v114, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53C4350);
      v115 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v116 = sub_1A524C634();

      v117 = [v115 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      v166 = v43;
      if ([v43 hasConsistentMediaAnalysisImageVersion])
      {
        v118 = 8756450;
      }

      else
      {
        v118 = 9215458;
      }

      MEMORY[0x1A5907B60](v118, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000004BLL, 0x80000001A53C4370);
      v119 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v120 = sub_1A524C634();

      v121 = [v119 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v122 = objc_opt_self();
      v123 = &selRef_owner;
      v124 = [v177 photoLibraryURL];
      v125 = v175;
      sub_1A5240DE4();

      v126 = sub_1A5240D44();
      v127 = v171[1];
      v127(v125, v176);
      v128 = [v122 fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL_];

      if (v128)
      {
        v129 = v167;
        sub_1A52410F4();

        v130 = *(v174 + 32);
        v171 = v122;
        v131 = v168;
        v132 = v172;
        v130(v168, v129, v172);
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();

        v182 = 0xD000000000000025;
        v183 = 0x80000001A53C4460;
        v133 = v173;
        sub_1A52411E4();
        (*(v179 + 56))(v133, 0, 1, v178);
        v134 = sub_1A5241014();
        v136 = v135;
        sub_1A403E26C(v133, &qword_1EB126008, MEMORY[0x1E6969770]);
        MEMORY[0x1A5907B60](v134, v136);

        v137 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v138 = sub_1A524C634();

        v123 = &selRef_owner;
        v139 = [v137 initWithString_];

        [v17 &selRef_allowsTimelineRecombination + 3];
        v140 = v131;
        v122 = v171;
        (*(v174 + 8))(v140, v132);
      }

      else
      {
        v141 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v142 = sub_1A524C634();
        v143 = [v141 initWithString_];

        [v17 appendAttributedString_];
        v132 = v172;
      }

      [v17 appendAttributedString_];
      v144 = [v177 v123[414]];
      v145 = v175;
      sub_1A5240DE4();

      v146 = sub_1A5240D44();
      v127(v145, v176);
      v147 = [v122 fetchImagePriority1MCEnableDateWithPhotoLibraryURL_];

      if (v147)
      {
        v148 = v169;
        sub_1A52410F4();

        v149 = v174;
        v150 = v170;
        (*(v174 + 32))(v170, v148, v132);
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();

        v182 = 0xD00000000000001DLL;
        v183 = 0x80000001A53C4440;
        v151 = v173;
        sub_1A52411E4();
        (*(v179 + 56))(v151, 0, 1, v178);
        v152 = sub_1A5241014();
        v154 = v153;
        sub_1A403E26C(v151, &qword_1EB126008, MEMORY[0x1E6969770]);
        MEMORY[0x1A5907B60](v152, v154);

        v155 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v156 = sub_1A524C634();

        v157 = [v155 initWithString_];

        [v17 &selRef_allowsTimelineRecombination + 3];
        (*(v149 + 8))(v150, v132);
      }

      else
      {
        v158 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v159 = sub_1A524C634();
        v160 = [v158 initWithString_];

        [v17 appendAttributedString_];
      }

      v43 = v166;
      [v17 appendAttributedString_];
      v161 = *MEMORY[0x1E69DB688];
      v162 = [objc_opt_self() defaultParagraphStyle];
      v163 = v17;
      [v163 addAttribute:v161 value:v162 range:{0, objc_msgSend(v163, sel_length)}];

      v164 = *MEMORY[0x1E69DB648];
      v78 = [objc_opt_self() boldSystemFontOfSize_];
      [v163 addAttribute:v164 value:v78 range:{0, objc_msgSend(v163, sel_length)}];
    }

    else
    {
      v76 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v77 = sub_1A524C634();
      v78 = [v76 initWithString_];

      [v17 appendAttributedString_];
    }

    v75 = v180;
  }

  else
  {
    v75 = v181;
  }

  return v17;
}

uint64_t sub_1A403DE70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4039FFC(v2, v3, v4);
}

uint64_t sub_1A403DF30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A403AAA4(v2, v3, v4);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A403E030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A403AB8C(a1, v4, v5, v6);
}

uint64_t sub_1A403E0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A403E1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A403E26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2A224(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A403E2DC(uint64_t a1)
{
  if (!qword_1EB120B78)
  {
    sub_1A3C52C70(255, &qword_1EB120868, 0x1E6978820);
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B78);
    }
  }
}

id LemonadeDetailsViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDetailsViewFactory.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeDetailsViewFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id LemonadeDetailsViewFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeDetailsViewFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s12PhotosUICore26LemonadeDetailsViewFactoryC04makedE10Controller06photosE13ConfigurationSo06UIViewH0CSo08PXPhotoseJ0C_tFZ_0()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = 2;
  v1 = 3;
  v0 = sub_1A3C6E9EC();
  PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v3, &v2, 0, &v1, v0, 0);
}

uint64_t sub_1A403E594(uint64_t a1)
{
  sub_1A403E5F0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A403E5F0(uint64_t a1)
{
  if (!qword_1EB128C80)
  {
    sub_1A3D8F9B8();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128C80);
    }
  }
}

void *sub_1A403E648()
{
  v0 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  v1 = v0;
  return v0;
}

void sub_1A403E684()
{
  sub_1A40412DC();
  v0 = sub_1A4043D50();
  sub_1A403E6FC(v0, v1);

  v2 = sub_1A4043D50();
  sub_1A403ED50(v2);
}

uint64_t sub_1A403E6FC(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = [a1 px_localizedName];
  v7 = sub_1A524C674();
  v9 = v8;

  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (![a1 px_isHuman])
  {
    goto LABEL_11;
  }

  v11 = v2 + qword_1EB130BF8;
  v12 = *(v2 + qword_1EB130BF8 + 8);
  v77 = v5;
  if (v12)
  {
    v13 = [v12 name];
    if (v13)
    {
      v14 = v7;
      v15 = ObjectType;
      v16 = v10;
      v17 = v13;
      sub_1A524C674();

      v18 = sub_1A524C7A4();

      v19 = v18 < 1;
      v10 = v16;
      ObjectType = v15;
      v7 = v14;
      v5 = v77;
      if (!v19)
      {
LABEL_8:
        v20 = v11[16] ^ 1;
        if ((sub_1A4044B90() & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        v76 = v10;
        v30 = sub_1A3C38BD4(0xD000000000000037);
        v74 = v31;
        v75 = v30;
        v32 = v5;
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        v24[2] = *(v32 + 80);
        v24[3] = v33;
        v24[4] = a1;
        v24[5] = ObjectType;
        v34 = a1;
        v25 = sub_1A404A1A0;
LABEL_16:
        v35 = v25;

        v36 = sub_1A3C47918();
        v38 = v37;
        v39 = sub_1A3C47918();
        v41 = v40;
        v42 = sub_1A3D8D2BC();
        sub_1A479BE9C(v36, v38, v39, v41, v35, v24, v75, v74, &v79, v42, v43);
        v26 = sub_1A4047AC4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v45 = *(v26 + 2);
        v44 = *(v26 + 3);
        if (v45 >= v44 >> 1)
        {
          v26 = sub_1A4047AC4((v44 > 1), v45 + 1, 1, v26);
        }

        v5 = v77;

        *(v26 + 2) = v45 + 1;
        v46 = &v26[96 * v45];
        *(v46 + 4) = v81;
        *(v46 + 5) = v82;
        *(v46 + 6) = v83;
        *(v46 + 7) = v84;
        *(v46 + 2) = v79;
        *(v46 + 3) = v80;
        if (!v76)
        {
          goto LABEL_19;
        }

LABEL_12:
        sub_1A3C38BD4(0xD000000000000036);
        sub_1A3C68B24(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1A52F8E10;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = sub_1A3D710E8();
        *(v27 + 32) = v7;
        *(v27 + 40) = v9;
        v28 = sub_1A524C6C4();
        goto LABEL_20;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_8;
  }

  v20 = 0;
  if (sub_1A4044B90())
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v20)
  {
    v76 = v10;
    v21 = sub_1A3C38BD4(0xD000000000000034);
    v74 = v22;
    v75 = v21;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = *(v5 + 80);
    v24[3] = v23;
    v25 = sub_1A404A0FC;
    goto LABEL_16;
  }

LABEL_11:
  v26 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_19:

  v47 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  v48 = objc_opt_self();
  v49 = v47;
  v50 = sub_1A524C634();
  v51 = [v48 locKeyForPersonOrPet:v49 key:v50];

  v52 = sub_1A524C674();
  v28 = sub_1A3C38BD4(v52);
LABEL_20:
  v53 = v28;
  v54 = v29;

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  v56[2] = *(v5 + 80);
  v56[3] = v55;
  v56[4] = a1;
  v57 = a1;

  v58 = sub_1A3C47918();
  v60 = v59;
  v61 = sub_1A3C47918();
  v63 = v62;
  v64 = sub_1A3D8D2BC();
  sub_1A479BE9C(v58, v60, v61, v63, sub_1A4049F48, v56, v53, v54, &v79, v64, v65);

  sub_1A404A04C(&v79, v78);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1A4047AC4(0, *(v26 + 2) + 1, 1, v26);
  }

  v67 = *(v26 + 2);
  v66 = *(v26 + 3);
  if (v67 >= v66 >> 1)
  {
    v26 = sub_1A4047AC4((v66 > 1), v67 + 1, 1, v26);
  }

  *(v26 + 2) = v67 + 1;
  v68 = &v26[96 * v67];
  v69 = v80;
  *(v68 + 2) = v79;
  *(v68 + 3) = v69;
  v70 = v81;
  v71 = v82;
  v72 = v84;
  *(v68 + 6) = v83;
  *(v68 + 7) = v72;
  *(v68 + 4) = v70;
  *(v68 + 5) = v71;
  sub_1A4042EFC(v26, &unk_1A53140C8, sub_1A40485A0);
  return sub_1A404A0A8(&v79);
}

void sub_1A403ED50(id a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = v1 + qword_1EB130BF8;
  v5 = *(v4 + 1);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 fullName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A524C674();
      v11 = v10;

      goto LABEL_11;
    }
  }

  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v9 = sub_1A524C674();
    v11 = v14;

    v15 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v15 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
LABEL_11:
      v16 = v4[16];
      if (v16 == 2 || (v16 & 1) == 0)
      {
        if (v11)
        {
          v17 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v17 = v9 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
LABEL_19:
            sub_1A3C489FC(0, &qword_1EB130C28, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E6F90]);
            *(swift_allocObject() + 16) = xmmword_1A52F8E10;
            v22 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v23 = swift_allocObject();
            *(v23 + 16) = *(v3 + 80);
            *(v23 + 24) = v22;

            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }
      }

      else
      {
      }

      v18 = objc_opt_self();
      v19 = sub_1A524C634();
      v20 = [v18 locKeyForPersonOrPet:a1 key:v19];

      v21 = sub_1A524C674();
      sub_1A3C38BD4(v21);

      goto LABEL_19;
    }
  }

  v9 = 0;
  v11 = 0;
  goto LABEL_11;
}

void sub_1A403F094(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  if (sub_1A4044B90())
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = *(v5 + 80);
    v7[3] = v6;
    v7[4] = a1;
    v7[5] = ObjectType;

    v8 = a1;
    sub_1A4040338(sub_1A4049BE4, v7);
  }

  else
  {

    sub_1A4040338(0, 0);
  }
}

double sub_1A403F1C0(void *a1)
{
  if (sub_1A4044B90())
  {
    v3 = *(v1 + qword_1EB130BF8 + 8);
    if (v3 && (v4 = [v3 contact]) != 0)
    {
      v5 = v4;
      v6 = [v4 identifier];
      v7 = sub_1A524C674();
      v9 = v8;
    }

    else
    {
      v10 = [a1 personUri];
      if (!v10)
      {
        goto LABEL_12;
      }

      v6 = v10;
      v7 = sub_1A524C674();
      v9 = v11;
    }

    v12 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v12 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1A4044D38(v7, v9, 1);
    }
  }

LABEL_12:
  sub_1A4041034(0, &qword_1EB130B30, &unk_1A5313F40, sub_1A404814C);
  return result;
}

id sub_1A403F654@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  *a1 = v2;

  return v2;
}

void sub_1A403F6A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A403F6D0(v1);
}

void sub_1A403F6D0(void *a1)
{
  v3 = *(v1 + qword_1EB130AE8);
  v7[6] = a1;
  v7[7] = v3;
  sub_1A524DF24();
  v7[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1A524C594();
  if (v4)
  {
    sub_1A4047C1C(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v1;
    v7[3] = a1;
    sub_1A403F8D0(v6, sub_1A4047FF8, v7, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A403F85C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415D4();
}

uint64_t sub_1A403F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415C4();
}

double (*sub_1A403F97C(void *a1, uint64_t a2))(void **a1, char a2)
{
  a1[1] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v6 = *(v2 + qword_1EB130AE8);
  *a1 = v6;
  v7 = v6;
  return sub_1A403FAA8;
}

double sub_1A403FAA8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4047C1C(v2);

    v2 = v3;
  }

  else
  {
    sub_1A4047C1C(*a1);
  }

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A403FB94()
{
  v0 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (!v0)
  {
    return 0;
  }

  v1 = [v0 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A403FC6C()
{
  v1 = qword_1EB130AF8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A403FCB0(char a1)
{
  v3 = qword_1EB130AF8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A403FDC0()
{
  v1 = qword_1EB130B08;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A403FE04(char a1)
{
  v3 = qword_1EB130B08;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A403FEB4(_BYTE *a1@<X8>)
{
  v3 = qword_1EB130B18;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A403FF08(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB130B18;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_1A403FFB8()
{
  sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A403FFF0(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double (*sub_1A4040084(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40401B4;
}

uint64_t sub_1A40401C0()
{
  v0 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

double sub_1A4040204@<D0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_1A3DDBE10;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_1A3C66EE8(v2, v3);
}

double sub_1A40402A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A3E30F88;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A3C66EE8(v1, v2);
  return sub_1A4040338(v4, v3);
}

double sub_1A4040338(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB130B28);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  sub_1A403F8D0(v14, sub_1A4048060, v16, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C33378(a1, a2);

  return result;
}

double (*sub_1A4040534(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4040664;
}

void *sub_1A4040670()
{
  v0 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  v1 = v0;
  return v0;
}

id sub_1A40406AC@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  *a1 = v2;

  return v2;
}

void sub_1A40406F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4041034(v1, &qword_1EB130B30, &unk_1A5313F40, sub_1A404814C);
}

double (*sub_1A404074C(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A404087C;
}

uint64_t sub_1A4040888()
{
  v1 = qword_1EB130B38;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40408CC(char a1)
{
  v3 = qword_1EB130B38;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A404097C()
{
  v0 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);

  return v0;
}

double sub_1A40409C4@<D0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *a1 = sub_1A3DDBE10;
  a1[1] = v5;

  return result;
}

double sub_1A4040A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1A4040ABC(sub_1A3D6069C, v3);
}

double sub_1A4040ABC(uint64_t a1, uint64_t a2)
{
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1A403F8D0(KeyPath, sub_1A40481FC, &v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double (*sub_1A4040B70(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4040CA0;
}

uint64_t sub_1A4040D0C()
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v2);

  v3 = (v0 + qword_1EB130B50);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A4040DC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A4040D0C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

double sub_1A4040DF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);

  return sub_1A4040E48(v1, v2, v3);
}

double sub_1A4040E48(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  KeyPath = swift_getKeyPath();
  v10 = v3;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  sub_1A403F8D0(KeyPath, sub_1A4048270, &v9, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A4040F14()
{
  v1 = qword_1EB130B58;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A4040F58()
{
  v0 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  v1 = v0;
  return v0;
}

id sub_1A4040F94@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  *a1 = v2;

  return v2;
}

void sub_1A4040FE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4041034(v1, &qword_1EB130B60, &unk_1A5313FE8, sub_1A4048304);
}

void sub_1A4041034(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v13[5] = a1;
  v13[6] = v8;
  sub_1A3C4B7E8(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8);
  sub_1A3EBA4B8();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = *(v4 + v7);
    *(v4 + v7) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[2] = v4;
    v13[3] = a1;
    sub_1A403F8D0(v12, a4, v13, MEMORY[0x1E69E7CA8] + 8);
  }
}

double (*sub_1A40411A0(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40412D0;
}

void sub_1A40412DC()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  *&v3 = COERCE_DOUBLE(sub_1A40415C0());
  if ((v5 & 1) == 0)
  {
    v6 = *&v3;
    v7 = v4;
    v8 = sub_1A4043D50();
    swift_getObjectType();
    v9 = [objc_allocWithZone(PXPeopleFaceCropFetchOptions) initWithPerson:v8 targetSize:v6 displayScale:{v7, sub_1A4943D64()}];

    v10 = *(v1 + qword_1EB130BF8);
    if (v10)
    {
      v11 = v10;
      [v9 setAsset_];
      [v9 setShouldCacheResult_];
    }

    [v9 setCornerStyle_];
    [v9 setDeliveryMode_];
    v12 = [objc_opt_self() sharedManager];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v2 + 80);
    *(v14 + 24) = v13;
    v16[4] = sub_1A404A544;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1A4044608;
    v16[3] = &block_descriptor_125_0;
    v15 = _Block_copy(v16);

    [v12 requestFaceCropForOptions:v9 resultHandler:v15];
    _Block_release(v15);
  }
}

void (*sub_1A4041528(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A404158C;
}

void sub_1A404158C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A40412DC();
  }
}

uint64_t sub_1A40415C0()
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v2);

  v3 = v0 + qword_1EB130B68;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A4041654@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A40415C0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

double sub_1A40416BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = (v4 + qword_1EB130B68);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v21 = *v8;
  v22 = v9;
  v18 = a1;
  v19 = a2;
  v10 = a3 & 1;
  v20 = a3 & 1;
  sub_1A3C68B24(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v11 = sub_1A524C594();
  if (v11)
  {
    v12 = v4 + qword_1EB130B68;
    swift_beginAccess();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = v10;
    sub_1A40412DC();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v17 = a3 & 1;
    sub_1A403F8D0(v15, sub_1A4048324, v16, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t (*sub_1A404189C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v7);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v8);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4041528(v4);
  return sub_1A4041A1C;
}

void sub_1A4041A1C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

void sub_1A4041B00(_BYTE *a1@<X8>)
{
  v3 = qword_1EB130B80;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A4041B54(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB130B80;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A4041C04()
{
  v1 = qword_1EB130B88;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4041C48(char a1)
{
  v3 = qword_1EB130B88;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4041D0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4041CF8();
  *a1 = result & 1;
  return result;
}

double (*sub_1A4041D88(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4041EB8;
}

double sub_1A4041EB8(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();

  return sub_1A4041EF0(v1, v2);
}

double sub_1A4041EF0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A4041FA8()
{
  v1 = qword_1EB130B98;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4041FEC(uint64_t a1)
{
  v3 = qword_1EB130B98;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1A404209C(uint64_t a1)
{
  v3 = qword_1EB130BA0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1A4042154(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v7;
  if (*(a1 + 16))
  {
    v10 = *(v3 + 16);
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10(&v21 - v7, a1 + v11, v2, v8);
    v12 = sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);
    if (*(v12 + 16))
    {
      (v10)(v5, v12 + v11, v2);
      v13 = sub_1A523FB64();
      v15 = v14;
      v16 = *(v3 + 8);
      v16(v5, v2);
      v17 = sub_1A523FB64();
      if (v15)
      {
        if (v18)
        {
          if (v13 == v17 && v15 == v18)
          {

LABEL_17:

            v16(v9, v2);
            return;
          }

          v20 = sub_1A524EAB4();

          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_14:
        sub_1A40423D4(v13, v15);
      }
    }

    else
    {
      sub_1A523FB64();
      v13 = 0;
    }

    if (!v18)
    {
      (*(v3 + 8))(v9, v2);
      return;
    }

    v15 = 0;
    goto LABEL_14;
  }
}

void sub_1A404239C()
{
  sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40423D4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = *v2;
  v12 = *MEMORY[0x1E69E7D40];
  v3 = sub_1A524BEE4();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v16 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v16);
  v4 = sub_1A524BEF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F88], v4);
  sub_1A524D4C4();
  (*(v5 + 8))(v7, v4);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = *((v12 & v13) + 0x50);
  v9[3] = v8;
  v10 = v15;
  v9[4] = v14;
  v9[5] = v10;
  aBlock[4] = sub_1A404AA9C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_193_0;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40427F0(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4042868(uint64_t a1)
{
  v3 = *(v1 + qword_1EB130BA8);
  v9[6] = a1;
  v9[7] = v3;
  sub_1A3C68B24(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    v5 = *(v1 + qword_1EB130BA8);
    *(v1 + qword_1EB130BA8) = a1;
    sub_1A4042154(v5);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1A403F8D0(v8, sub_1A40484BC, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

void sub_1A40429F8(void *a1, uint64_t a2)
{
  a1[1] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  *a1 = *(v2 + qword_1EB130BA8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4042B24(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + qword_1EB130BA8);
  *(v2 + qword_1EB130BA8) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4042154(v3);

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A4042C20()
{
  v1 = qword_1EB130BB8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4042C64(char a1)
{
  v3 = qword_1EB130BB8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1A4042D74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

void sub_1A4042E30()
{
  sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4042E68(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4042EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  sub_1A403F8D0(KeyPath, a3, &v8, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double (*sub_1A4042FA4(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40430D4;
}

uint64_t sub_1A40430F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40430E0();
  *a1 = result;
  return result;
}

double sub_1A4043148(uint64_t a1)
{
  v3 = qword_1EB130BD8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v9[5] = a1;
  v9[6] = v4;
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1A403F8D0(v8, sub_1A40485C0, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double (*sub_1A4043294(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40433C4;
}

uint64_t sub_1A40433E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40433D0();
  *a1 = result & 1;
  return result;
}

double sub_1A4043460(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *a2;
  swift_beginAccess();
  v16 = *(v6 + v8);
  v15 = a1;
  v9 = sub_1A524C594();
  if (v9)
  {
    *(v6 + v8) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[2] = v6;
    v14 = a1 & 1;
    sub_1A403F8D0(v12, a4, v13, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double (*sub_1A40435B0(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40436E0;
}

uint64_t sub_1A40436EC()
{
  v1 = qword_1EB130BE8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4043730(char a1)
{
  v3 = qword_1EB130BE8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4043854(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A40438E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4043840();
  *a1 = result & 1;
  return result;
}

double (*sub_1A404395C(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  a1[3] = v2;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  *a1 = v2;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4043A8C;
}

double sub_1A4043A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_endAccess();
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

void sub_1A4043B58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_1A4043BD0(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = v1 + qword_1EB130BF8;
  v5 = *(v1 + qword_1EB130BF8 + 8);
  v6 = *(v1 + qword_1EB130BF8 + 16);
  v24 = *(v1 + qword_1EB130BF8);
  v25 = v5;
  v26 = v6;
  v7 = v5;
  v8 = v24;
  v9 = sub_1A4043D50();
  v10 = static LemonadeCollectionCustomizationPeopleModelUtilities.initialResultItem(for:person:)(&v24, v9);

  v11 = v25;
  v12 = *(v4 + 1);
  v14 = v4[16];
  v24 = *v4;
  v13 = v24;
  v25 = v12;
  v26 = v14;
  v15 = v12;
  v16 = v13;
  static LemonadeCollectionCustomizationPeopleModelUtilities.initialString(for:changeToBeMade:)(v10, &v24);
  v17 = v25;

  v18 = sub_1A4043D50();
  v19 = *v4;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = *((v3 & v2) + 0x50);
  *(v21 + 24) = v20;
  v22 = v19;

  LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(v18, v10, v19, sub_1A40489B0, v21, a1);
}

id sub_1A4043D50()
{
  v1 = *(v0 + qword_1EB130BF8 + 8);
  if (v1 && [v1 person])
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v3 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v3)
  {

    return v3;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A4043E74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + qword_1EB130BF8;
  v4 = *(v1 + qword_1EB130BF8);
  v5 = *(v1 + qword_1EB130BF8 + 8);
  *v3 = *a1;
  *(v3 + 16) = v2;

  v6 = *(v1 + qword_1EB130BF8) != 0 || *(v1 + qword_1EB130BF8 + 16) != 2;
  sub_1A4043460(v6, &qword_1EB130BE0, &unk_1A5314138, sub_1A4048618);

  sub_1A403E684();
}

uint64_t sub_1A4043F24()
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v2);

  return *(v0 + qword_1EB130C20);
}

uint64_t sub_1A4043F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4043F24();
  *a1 = result & 1;
  return result;
}

double sub_1A4043FF4(char a1)
{
  v2 = qword_1EB130C20;
  v11 = *(v1 + qword_1EB130C20);
  v3 = a1 & 1;
  v10 = a1;
  v4 = sub_1A524C594();
  if (v4)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v9 = v3;
    sub_1A403F8D0(v7, sub_1A4049F30, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1A4044134(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A4048A4C(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

void sub_1A404418C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    KeyPath = swift_getKeyPath();
    sub_1A403F85C(KeyPath, v6);

    MEMORY[0x1EEE9AC00](v7);
    swift_getKeyPath();
    type metadata accessor for LemonadeCollectionCustomizationPeopleModel(255, a2, v8, v9);
    swift_getWitnessTable();
    sub_1A52415F4();

    v10 = qword_1EB130B90;
    swift_beginAccess();
    v4[v10] = (v4[v10] & 1) == 0;
    sub_1A4041EF0(v4, v11);
  }
}

void sub_1A40442FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v11);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524D474();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = a2;
  aBlock[4] = sub_1A404A54C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_131_2;
  _Block_copy(aBlock);
  v10 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4044608(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1A524C3E4();

  v6 = a2;
  v4(a2, v5);
}

void sub_1A40446AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v8 = sub_1A524D244();
  v9 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Not changing person key asset because self or localIdentifier is nil", 68, 2, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A4044B90()
{
  v1 = *(v0 + qword_1EB130BF8 + 16);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *(v0 + qword_1EB130BF8 + 8);
  v4 = v3;
  v5 = [v4 contact];
  if (v5)
  {
  }

  else
  {
    v7 = sub_1A4043D50();
    v8 = [v7 personUri];

    if (!v8 || (sub_1A524C674(), v8, v9 = sub_1A524C7A4(), , !v9))
    {

      return 0;
    }
  }

  v6 = [v4 person];

  if (v6)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    if (v3)
    {
      v10 = [v4 name];
      if (v10)
      {

        v11 = [v4 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1A524C674();
          v15 = v14;

          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        else
        {

          v16 = 0;
          v15 = 0xE000000000000000;
        }

        v17 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v17 = v16;
        }

        if (v17)
        {
          return 0;
        }
      }

      else
      {
      }
    }

    return 1;
  }
}

void sub_1A4044D38(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  sub_1A3C489FC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40451B8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = v15;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v18 = a1;
    v19 = sub_1A524D474();
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a4;
    v20[4] = v18;
    aBlock[4] = sub_1A4049AB0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_88;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v17, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v32);
  }

  else
  {
    v23 = sub_1A524D244();
    v24 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = [a2 identifier];
      v28 = sub_1A524C674();
      v30 = v29;

      sub_1A3C2EF94(v28, v30, aBlock);
    }
  }
}

void sub_1A404562C()
{
  v1 = v0;
  v2 = qword_1EB130C08;
  v3 = *(v0 + qword_1EB130C08);
  if (v3)
  {
    v3 = [v3 navigationController];
  }

  v17 = v3;
  v4 = [v3 topViewController];
  v5 = *(v0 + v2);
  if (v4)
  {
    v6 = v4;
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
      v7 = v5;
      v8 = sub_1A524DBF4();

      if (v8)
      {
        v9 = v17;
        if (!v17)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else if (!v5)
  {
    v10 = 0;
    v9 = v17;
    if (!v17)
    {
LABEL_13:
      v13 = *(v1 + v2);
      *(v1 + v2) = 0;
      goto LABEL_16;
    }

LABEL_10:
    v11 = [v9 presentingViewController];
    if (v11)
    {
      v12 = v11;
      [v11 dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_13;
  }

  v15 = sub_1A524D244();
  v16 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Contact details view controller is not the top most, which is unexpected. Will not dismiss", 90, 2, MEMORY[0x1E69E7CC0]);

  v13 = v17;
LABEL_16:
}

void sub_1A40457B8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1A404902C();
  swift_unknownObjectRelease();
}

void sub_1A4045818(void *a1)
{
  v1 = a1;
  sub_1A404562C();
}

id sub_1A4045860(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_1A524BEE4();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A524BF64();
  v8 = *(v30 - 8);
  v9 = MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 objectAfterChanges];
  v13 = v12;
  v29 = v8;
  if (!v12)
  {
    v22 = 0;
LABEL_10:
    v23 = v13;
    goto LABEL_11;
  }

  v14 = v12;
  if ([v14 verifiedType] != -2)
  {

    v22 = v13;
    goto LABEL_10;
  }

  v15 = v14;
  result = [v15 photoLibrary];
  if (result)
  {
    v17 = result;
    v18 = [result librarySpecificFetchOptions];

    v19 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v19)
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      sub_1A524CA34();
      v19 = sub_1A524CA14();
    }

    [v18 setIncludedDetectionTypes_];

    result = [v15 uuid];
    if (result)
    {
      v20 = result;

      v21 = [objc_opt_self() fetchFinalMergeTargetPersonsForPersonWithUUID:v20 options:v18];
      v22 = [v21 firstObject];

LABEL_11:
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v24 = v22;
      v25 = sub_1A524D474();
      v26 = swift_allocObject();
      v26[2] = v28;
      v26[3] = a2;
      v26[4] = v22;
      aBlock[4] = sub_1A404A788;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_160;
      v27 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v11, v7, v27);
      _Block_release(v27);

      (*(v31 + 8))(v7, v5);
      return (*(v29 + 8))(v11, v30);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1A4045D08(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A524C3E4();
  }

  v6 = a3;
  v7 = a1;
  sub_1A404909C();

  return result;
}

void sub_1A4045DA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_1A4049538(v5);
}

void sub_1A4045E00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1;
  sub_1A4049674(v7, v8);
}

uint64_t sub_1A4045EA0(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB130B28), *(a1 + qword_1EB130B28 + 8));

  sub_1A3C33378(*(a1 + qword_1EB130BC0), *(a1 + qword_1EB130BC0 + 8));

  sub_1A3C33378(*(a1 + qword_1EB130BF0), *(a1 + qword_1EB130BF0 + 8));
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1EB130BF8 + 8);
  v3 = qword_1EB1A1EE0;
  v4 = sub_1A5241614();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

id sub_1A4046094@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  *a1 = v2;

  return v2;
}

void (*sub_1A4046108(void *a1))(void *a1)
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
  v2[4] = sub_1A403F97C(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A4046224(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A403FC0C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40462E4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A403FD00(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40463C8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A403FD60(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A404643C()
{
  v0 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);

  return v0;
}

void (*sub_1A40464AC(void *a1))(void *a1)
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
  v2[4] = sub_1A4040B70(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A404656C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A403FE54(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046694(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4040CAC(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046764(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A403FF58(v2);
  return sub_1A3E658B0;
}

void sub_1A40467D8()
{
  sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A404685C(void *a1))(void *a1)
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
  v2[4] = sub_1A4040084(v2, v3);
  return sub_1A3E658B0;
}

uint64_t sub_1A40468D0()
{
  v0 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A404693C(void *a1))(void *a1)
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
  v2[4] = sub_1A4040534(v2, v3);
  return sub_1A3E658B0;
}

void *sub_1A40469B0()
{
  v0 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  v1 = v0;
  return v0;
}

void (*sub_1A4046A38(void *a1))(void *a1)
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
  v2[4] = sub_1A404074C(v2, v3);
  return sub_1A3E658B0;
}

void *sub_1A4046B00()
{
  v0 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  v1 = v0;
  return v0;
}

void (*sub_1A4046B88(void *a1))(void *a1)
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
  v2[4] = sub_1A40411A0(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A4046C4C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A404189C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046D1C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4041BA4(v2);
  return sub_1A3E658B0;
}

void sub_1A4046D90()
{
  sub_1A404839C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4046E10(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4041C98(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046EF4(void *a1))(void *a1)
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
  v2[4] = sub_1A4041D88(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A4046FB4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A404091C(v2);
  return sub_1A3E658B0;
}

void sub_1A4047028()
{
  sub_1A4048400();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4047080(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A40420F4(v2);
  return sub_1A3E658B0;
}

void sub_1A40470F4()
{
  sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A404715C(void *a1)
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
  sub_1A40429F8(v2, v3);
}

void (*sub_1A4047218(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A404203C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40472D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4042CB4(v2);
  return sub_1A3E62A10;
}

uint64_t sub_1A404734C()
{
  v0 = sub_1A4048638(&qword_1EB130BC0);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A40473B8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4042D14(v2);
  return sub_1A3E658B0;
}

void (*sub_1A404749C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4042DD0(v2);
  return sub_1A3E658B0;
}

void sub_1A4047510()
{
  sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4047594(void *a1))(void *a1)
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
  v2[4] = sub_1A4042FA4(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A4047668(void *a1))(void *a1)
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
  v2[4] = sub_1A4043294(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A404774C(void *a1))(void *a1)
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
  v2[4] = sub_1A40435B0(v2, v3);
  return sub_1A3E658B0;
}

void (*sub_1A404780C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A4043780(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A4047880()
{
  v0 = sub_1A4048638(&qword_1EB130BF0);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A40478EC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A40437E0(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40479D0(void *a1))(void *a1)
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
  v2[4] = sub_1A404395C(v2, v3);
  return sub_1A3E658B0;
}

uint64_t sub_1A4047A98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A403FB90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_1A4047AC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C489FC(0, &qword_1EB130C28, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4047C1C(void *a1)
{
  v41 = *(v1 + qword_1EB130AE8);
  *(v1 + qword_1EB130AE8) = a1;
  v2 = a1;
  v3 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (!v3)
  {
    v9 = sub_1A524D264();
    v10 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Nil person set in the person customization model. Dismissing.", 61, 2, MEMORY[0x1E69E7CC0]);

    sub_1A4043460(1, &qword_1EB130AE0, &unk_1A5313E60, sub_1A4047BFC);
    goto LABEL_48;
  }

  v4 = v3;
  if (v41)
  {
    v5 = [v41 localIdentifier];
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v11 = v3;
  v12 = [v11 localIdentifier];
  v13 = sub_1A524C674();
  v15 = v14;

  if (!v8)
  {

    goto LABEL_14;
  }

  if (v6 != v13 || v8 != v15)
  {
    v17 = sub_1A524EAB4();

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_14:

    sub_1A403E684();
  }

LABEL_16:
  if (v41 && (v18 = [v41 name]) != 0)
  {
    v19 = v18;
    v20 = sub_1A524C674();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [v11 name];
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v24 = v23;
  v25 = sub_1A524C674();
  v27 = v26;

  if (!v22)
  {
    if (!v27)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (!v27)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v20 != v25 || v22 != v27)
  {
    v29 = sub_1A524EAB4();

    if (v29)
    {
      goto LABEL_32;
    }

LABEL_30:
    sub_1A403E6FC(v11, v28);
    sub_1A403ED50(v11);
  }

LABEL_32:
  if (v41 && (v30 = [v41 personUri]) != 0)
  {
    v31 = v30;
    v32 = sub_1A524C674();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v11 personUri];

  if (!v35)
  {
    if (!v34)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v36 = sub_1A524C674();
  v38 = v37;

  if (!v34)
  {
    if (!v38)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (!v38)
  {
LABEL_45:

LABEL_46:
    sub_1A403F094(v11, v39);
    sub_1A403F1C0(v11);
    goto LABEL_47;
  }

  if (v32 != v36 || v34 != v38)
  {
    v40 = sub_1A524EAB4();

    if (v40)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_47:

LABEL_48:
}

void sub_1A4047FF8()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1A4047C1C(v1);
}

uint64_t sub_1A4048060()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB130B28);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2, v3);
  return sub_1A3C33378(v5, v6);
}

unint64_t sub_1A40480E4()
{
  result = qword_1EB12DB80;
  if (!qword_1EB12DB80)
  {
    sub_1A3C52C70(255, &qword_1EB126630, 0x1E69DCAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DB80);
  }

  return result;
}

uint64_t sub_1A404816C(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  v6 = v2 + *a2;
  swift_beginAccess();
  return *v6;
}

void sub_1A40481FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB130B40);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

void sub_1A4048270()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB130B50;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

void sub_1A4048324()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB130B68;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_1A40412DC();
}

uint64_t sub_1A404839C()
{
  v1 = qword_1EB130B78;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4048400()
{
  v1 = qword_1EB130BA0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4048444(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  return *(v2 + *a2);
}

uint64_t sub_1A4048514(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A403F85C(KeyPath, v5);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

void sub_1A40485C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB130BD8;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A4048638(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_1A404867C(void (*a1)(void, void), uint64_t a2)
{
  v4 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 contextWithPerson:v7 type:1];
    v9 = v2 + qword_1EB130BF8;
    [v8 setKeyAsset_];
    [v8 setNameSelection_];
    [v8 setWantsContactUnlinkage_];
    v10 = [v7 type];
    if (v10 == -1)
    {
      v10 = [v8 setWantsToBeAddedToPeopleAlbum_];
    }

    v12 = sub_1A3D75D6C(v10, v11);
    v14 = v13;
    v15 = sub_1A3D75DEC();
    static PeopleLogging.peopleBootstrapCallerInfo(processName:file:function:line:)(v12, v14, v15, v16, 0xD00000000000003ALL, 0x80000001A53C4D60);
  }

  v17 = sub_1A524D244();
  v18 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "There isn't a collection in the people model, so customization can't be completed.", 82, 2, MEMORY[0x1E69E7CC0]);

  if (a1)
  {
    a1(0, 0);
  }
}

void sub_1A40489B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1EB130BF8);
    v5 = v4;
    v6 = a1;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v4, a1, 2, &v9);
    v7 = v9;
    v8 = v10;
    sub_1A4043E74(&v7);
  }
}

uint64_t sub_1A4048A4C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = qword_1EB130AE8;
  *&v2[qword_1EB130AE8] = 0;
  v7 = &v2[qword_1EB130AF0];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v2[qword_1EB130AF8] = 1;
  v8 = &v2[qword_1EB130B00];
  *v8 = sub_1A3C38BD4(0xD00000000000003CLL);
  v8[1] = v9;
  v2[qword_1EB130B08] = 1;
  v10 = &v2[qword_1EB130B10];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v2[qword_1EB130B18] = 1;
  v11 = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EB130B20] = MEMORY[0x1E69E7CC0];
  v12 = &v2[qword_1EB130B28];
  *v12 = 0;
  v12[1] = 0;
  *&v2[qword_1EB130B30] = 0;
  v2[qword_1EB130B38] = 1;
  v13 = &v2[qword_1EB130B40];
  *v13 = PXDisplayCollectionDetailedCountsMake;
  v13[1] = 0;
  v14 = &v2[qword_1EB130B48];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1A524B944();
  v17 = *(&v36 + 1);
  v18 = v37;
  v19 = &v2[qword_1EB130B50];
  *v19 = v36;
  *(v19 + 1) = v17;
  v19[16] = v18;
  v2[qword_1EB130B58] = 1;
  *&v2[qword_1EB130B60] = 0;
  v20 = &v2[qword_1EB130B68];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *&v2[qword_1EB130B78] = 0;
  v2[qword_1EB130B80] = 0;
  v2[qword_1EB130B88] = 0;
  v2[qword_1EB130B90] = 0;
  *&v2[qword_1EB130B98] = 0;
  *&v2[qword_1EB130BA0] = v11;
  *&v2[qword_1EB130BA8] = v11;
  v2[qword_1EB130BB8] = 1;
  v21 = &v2[qword_1EB130BC0];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v2[qword_1EB130BC8];
  *v22 = sub_1A3C38BD4(0xD00000000000002DLL);
  v22[1] = v23;
  *&v2[qword_1EB130BD0] = v11;
  v2[qword_1EB130BE0] = 0;
  v2[qword_1EB130BE8] = 0;
  v24 = &v2[qword_1EB130BF0];
  *v24 = 0;
  v24[1] = 0;
  v2[qword_1EB130AE0] = 0;
  v2[qword_1EB130C20] = 0;
  *&v2[qword_1EB130C08] = 0;
  sub_1A5241604();
  if (a2)
  {
    v25 = *&v2[v6];
    v26 = a1;
    swift_unknownObjectRetain();

    *&v2[v6] = a1;
    *&v2[qword_1EB130C00] = a2;
    swift_unknownObjectRetain();
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(0, 0, 2, &v36);
    v27 = v37;
    v28 = &v2[qword_1EB130BF8];
    *v28 = v36;
    v28[16] = v27;
    v29 = [v26 faceCount];
    *&v2[qword_1EB130BD8] = v29;
    v35.receiver = v2;
    v35.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v35, sel_init);
    v31 = [v26 photoLibrary];
    if (v31)
    {
      v32 = v31;
      [v31 px:v30 registerChangeObserver:?];

      sub_1A403E6FC(v26, v33);
      sub_1A403ED50(v26);
    }

    __break(1u);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A404902C()
{
  v1 = *(v0 + qword_1EB130BF8);
  v2 = v1;
  LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v1, 0, 1, &v5);
  v3 = v5;
  v4 = v6;
  sub_1A4043E74(&v3);

  sub_1A404562C();
}

void sub_1A404909C()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1A524BEE4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v12)
  {
    v23 = v2;
    v13 = *(v1 + 80);
    v24 = v12;
    v14 = sub_1A524DC34();
    if (v14)
    {
      v15 = v14;
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
      v16 = sub_1A524D4C4();
      (*(v9 + 8))(v11, v8);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v13;
      v18[3] = v15;
      v18[4] = v17;
      aBlock[4] = sub_1A404A77C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_154_0;
      v19 = _Block_copy(aBlock);
      v20 = v15;

      sub_1A524BF14();
      v28 = MEMORY[0x1E69E7CC0];
      sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v21 = v23;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v7, v4, v19);

      _Block_release(v19);
      (*(v27 + 8))(v4, v21);
      (*(v25 + 8))(v7, v26);
    }

    else
    {
      v22 = v24;
    }
  }
}

void sub_1A4049538(__n128 a1)
{
  v1 = sub_1A524D264();
  v2 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_1A4043D50();
    v6 = [v5 localIdentifier];

    v7 = sub_1A524C674();
    v9 = v8;

    sub_1A3C2EF94(v7, v9, &v10);
  }
}

void sub_1A4049674(void *a1, __n128 a2)
{
  v4 = sub_1A524D264();
  v5 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    *&v17 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [a1 identifier];
    v9 = sub_1A524C674();
    v11 = v10;

    sub_1A3C2EF94(v9, v11, &v17);
  }

  v12 = *(v2 + qword_1EB130BF8);
  v13 = objc_allocWithZone(PXPeopleNameSelection);
  v14 = v12;
  LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v12, [v13 initWithContact_], 0, &v17);
  v15 = v17;
  v16 = v18;
  sub_1A4043E74(&v15);
}

uint64_t sub_1A40498F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4049950(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1A4049AB0()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1A4041034(v1, &qword_1EB130B30, &unk_1A5313F40, sub_1A404814C);
  }
}

uint64_t sub_1A4049B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4049B80()
{
  result = qword_1EB126BA0;
  if (!qword_1EB126BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126BA0);
  }

  return result;
}

void sub_1A4049BE4()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 personUri];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A524C674();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        sub_1A4044D38(v6, v8, 2);
      }
    }

    v10 = *&v3[qword_1EB130BF8 + 8];
    if (v10)
    {
      v11 = [v10 contact];
      if (v11)
      {
        v12 = [v11 identifier];
        v13 = sub_1A524C674();
        v15 = v14;

        sub_1A4044D38(v13, v15, 2);
      }
    }

    v16 = sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = [v1 localIdentifier];
      v21 = sub_1A524C674();
      v23 = v22;

      sub_1A3C2EF94(v21, v23, &v24);
    }
  }
}

void sub_1A4049ED8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A4043FF4(1);
  }
}

void sub_1A4049F48()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_1EB130C00);
    v4 = Strong;
    swift_unknownObjectRetain();

    v5 = [objc_opt_self() recoControllerForPerson_];
    [v3 presentViewController:v5 animated:1 completionHandler:0];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_1A524D244();
    v5 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v6, &dword_1A3C1C000, v5, "Not presenting the people reco view because presentationEnvironment is nil", 74, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1A404A0FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
    [v2 setDelegate_];
    [*&v1[qword_1EB130C00] presentViewController:v2 animated:1 completionHandler:0];
  }
}

void sub_1A404A1A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v2 personUri];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1A524C674();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_1A4044D38(v7, v9, 0);
      }
    }

    v11 = *&v4[qword_1EB130BF8 + 8];
    if (v11 && (v12 = [v11 contact]) != 0)
    {
      v13 = v12;
      v14 = objc_opt_self();
      v15 = *&v4[qword_1EB130C00];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v16;
      aBlock[4] = sub_1A404A4B8;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_118_0;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v14 handleUnlinkContact:v13 person:v2 presentationEnvironment:v15 sourceItem:0 handleUnlinkageInternally:0 completion:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = sub_1A524D244();
      v20 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = v20;
        v22 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v22 = 136315138;
        v23 = [v2 localIdentifier];
        v24 = sub_1A524C674();
        v26 = v25;

        sub_1A3C2EF94(v24, v26, aBlock);
      }
    }
  }
}

void sub_1A404A4B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1EB130BF8);
    v3 = v2;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v2, 0, 1, &v6);
    v4 = v6;
    v5 = v7;
    sub_1A4043E74(&v4);
  }
}

double sub_1A404A54C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1;
    sub_1A4041034(v1, &qword_1EB130B60, &unk_1A5313FE8, sub_1A4048304);
  }

  sub_1A524C674();
  sub_1A524E384();
  if (*(v2 + 16) && (v6 = sub_1A3D5C0BC(v12), (v7 & 1) != 0))
  {
    sub_1A3C2F0BC(*(v2 + 56) + 32 * v6, v13);
    sub_1A3D5FAFC(v12);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_1A3C68B24(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
        sub_1A523FBB4();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1A52F8E10;
        sub_1A523FB54();
        sub_1A4042868(v11);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A3D5FAFC(v12);
  }

  return result;
}

void sub_1A404A788()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = swift_dynamicCastUnknownClass();
      if (v4)
      {
        v5 = v4;
        v6 = v1;
        v4 = v5;
      }
    }

    else
    {
      v4 = 0;
    }

    sub_1A403F6D0(v4);
  }
}

void sub_1A404A818(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A4043F24();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_1A404A88C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A4043FF4(v1);
  }
}

void sub_1A404A8E8(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(v2 + 32);
  if ((a1 & 1) == 0)
  {
    v5 = *(v2 + 24);
    v6 = sub_1A524D244();
    v7 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v7, v6))
    {
      v7;
      v8 = swift_slowAlloc();
      swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = [v5 localIdentifier];
      v10 = sub_1A524C674();
      v12 = v11;

      sub_1A3C2EF94(v10, v12, &v13);
    }
  }

  if (v4)
  {
    v4(v3 & 1, 0);
  }
}

void sub_1A404AAA8()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1EB130BF8 + 8);
    v5 = *(Strong + qword_1EB130BF8 + 16);
    v6 = v4;
    v7 = v1;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v1, v4, v5, &v10);
    v8 = v10;
    v9 = v11;
    sub_1A4043E74(&v8);
    sub_1A40412DC();
  }
}

uint64_t sub_1A404AB98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524C634();
  v5 = PXLemonadeLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = a1;
  LOBYTE(v10) = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  return sub_1A425463C(v14, v10 & 1, v15 & 1, v16 & 1, v17 & 1, v18 & 1, 0x332E6E6F73726570, 0xED00006C6C69662ELL, a2, v6, v8, v11, v13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

unint64_t sub_1A404AD30()
{
  result = qword_1EB129988;
  if (!qword_1EB129988)
  {
    type metadata accessor for LemonadeShelfPlaceholderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129988);
  }

  return result;
}

void sub_1A404ADBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A404AE20(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A404AE80(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  v9 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A404AF14(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);

  return result;
}

void sub_1A404B008(void *a1, uint64_t a2)
{
  v3 = [a1 dismissViewControllerAnimated:1 completion:0];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v4, v3);
  v6 = v4[4];
  v7 = v4[2];
  sub_1A3DB8180(&v7, &v5);

  sub_1A404B754(&v6, &v5, sub_1A404AD88);
  sub_1A404ADBC(0, &qword_1EB130C30, sub_1A404AD88, MEMORY[0x1E6981948]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A404B1C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A404B29C(uint64_t x0_0, uint64_t a2)
{
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator(x0_0, a2);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker];
  *v11 = v5;
  *(v11 + 1) = v4;
  *(v11 + 2) = v6;
  *(v11 + 3) = v7;
  *(v11 + 4) = v8;
  v13 = v10;
  v14 = v9;
  v12 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A404B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A404B8EC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A404B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A404B8EC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A404B414(uint64_t a1)
{
  sub_1A404B8EC();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A404B43C(uint64_t a1, void *a2, unint64_t a3)
{
  v36 = a1;
  v5 = sub_1A524C2C4();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = a2;
  sub_1A524C244();
  sub_1A524C234();
  v35 = v9;
  sub_1A524C254();
  if (a3 >> 62)
  {
LABEL_21:
    v11 = sub_1A524E2B4();
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1A59097F0](v14, a3);
      }

      else
      {
        if (v14 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = [v15 uuid];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        goto LABEL_22;
      }
    }

    v18 = v17;
    v19 = sub_1A524C674();
    v33 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A3D3D914(0, *(v13 + 2) + 1, 1, v13);
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[16 * v22];
    v24 = v33;
    *(v23 + 4) = v19;
    *(v23 + 5) = v24;
  }

  while (v12 != v11);
LABEL_22:
  v25 = v35;
  sub_1A524C284();
  sub_1A3C52C70(0, &qword_1EB130C58, 0x1E69790F8);
  v27 = v37;
  v26 = v38;
  (*(v37 + 16))(v34, v25, v38);
  v28 = sub_1A524D754();
  sub_1A404B940(0);
  v29 = sub_1A5249FD4();
  sub_1A404B99C(v29, v30);
  sub_1A524D764();
  (*(v27 + 8))(v25, v26);
  return v28;
}

uint64_t sub_1A404B754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A404B7BC(uint64_t a1)
{
  if (!qword_1EB120C10)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120C10);
    }
  }
}

uint64_t sub_1A404B824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A404B888()
{
  result = qword_1EB130C48;
  if (!qword_1EB130C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C48);
  }

  return result;
}

unint64_t sub_1A404B8EC()
{
  result = qword_1EB130C50;
  if (!qword_1EB130C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C50);
  }

  return result;
}

void sub_1A404B940(uint64_t a1)
{
  if (!qword_1EB130C60)
  {
    sub_1A404B8EC();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130C60);
    }
  }
}

unint64_t sub_1A404B99C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB130C68;
  if (!qword_1EB130C68)
  {
    type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C68);
  }

  return result;
}

void sub_1A404BB18()
{
  v1 = v0;
  v2 = [v0 assets];
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for OneUpAlchemistViewController(0, v6);
  if (sub_1A3F47EB8(v5))
  {
    v7 = v5;
    v8 = sub_1A3F480F4(v7);
    [v1 presentViewController_];
    [v1 completeUserInteractionTaskWithSuccess:1 error:0];

    return;
  }

LABEL_13:

  [v1 completeUserInteractionTaskWithSuccess:0 error:0];
}

id sub_1A404BD5C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPhotoKitInternalAlchemistActionPerformer(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id CarouselSinglePageLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CarouselSinglePageLayout.init()(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets];
  v4 = *(off_1E7721FA8 + 1);
  *v3 = *off_1E7721FA8;
  *(v3 + 1) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_edgeClippingMaskEffects] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects] = v5;
  *&v2[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater] = 0;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CarouselSinglePageLayout(a1, a2);
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = objc_allocWithZone(off_1E7721940);
  v8 = v6;
  v9 = [v7 initWithTarget:v8 needsUpdateSelector:sel_setNeedsUpdate];
  v10 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater;
  v11 = *&v8[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater];
  *&v8[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater] = v9;
  v12 = v9;

  if (v12)
  {
    [v12 addUpdateSelector:sel_updateContent needsUpdate:1];

    v13 = *&v8[v10];
    if (v13)
    {
      [v13 addUpdateSelector_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A404BF3C(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A404BFF8()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A404C044(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8.f64[0] = a1;
  v5->f64[0] = a1;
  v5->f64[1] = a2;
  v9.f64[0] = a3;
  v5[1].f64[0] = a3;
  v5[1].f64[1] = a4;
  v8.f64[1] = a2;
  v9.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v8), vceqq_f64(v7, v9)))) & 1) == 0)
  {
    v10 = *(v4 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (v10)
    {
      [v10 setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*sub_1A404C0F0(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  v4[1] = v7;
  return sub_1A404C188;
}

void sub_1A404C188(double **a1, char a2)
{
  v2 = *a1;
  v11 = (*(*a1 + 7) + *(*a1 + 8));
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = *v11;
  v8 = v11[1];
  v9 = v11[2];
  v10 = v11[3];
  *v11 = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  LOBYTE(v11) = v3 == v7;
  if (v4 != v8)
  {
    LOBYTE(v11) = 0;
  }

  if (v5 != v9)
  {
    LOBYTE(v11) = 0;
  }

  if (v6 != v10)
  {
    LOBYTE(v11) = 0;
  }

  if (a2)
  {
    if (v11)
    {
      goto LABEL_14;
    }

    v11 = *(v2 + 7);
    v12 = *(v11 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (v12)
    {
LABEL_13:
      [v12 setNeedsUpdateOf_];
      goto LABEL_14;
    }

    __break(1u);
  }

  if ((v11 & 1) == 0)
  {
    v12 = *(*(v2 + 7) + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (!v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_14:

  free(v2);
}

id sub_1A404C24C()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

void sub_1A404C278()
{
  v1 = [v0 localNumberOfSprites] << 32;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A404CBAC;
  *(v3 + 24) = v2;
  v6[4] = sub_1A3FCBD58;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3FCBD80;
  v6[3] = &block_descriptor_83;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v5 modifySpritesInRange:v1 fullState:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void sub_1A404C528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for CarouselSinglePageLayout(a1, a2);
  objc_msgSendSuper2(&v27, sel_entityManagerDidChange);
  v26 = [v2 entityManager];
  if (v26)
  {
    v4 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_edgeClippingMaskEffects;
    swift_beginAccess();
    v5 = MEMORY[0x1E69E7CC0];
    *(v3 + v4) = MEMORY[0x1E69E7CC0];

    v6 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects;
    swift_beginAccess();
    *(v3 + v6) = v5;

    v7 = [v3 localNumberOfSprites];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = objc_allocWithZone(off_1E7721688);
        v10 = v26;
        v11 = [v9 initWithEntityManager_];
        v12 = [objc_allocWithZone(off_1E7721688) initWithEntityManager_];

        swift_beginAccess();
        v13 = *(v3 + v4);
        v14 = v11;
        v15 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v4) = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_1A404C974(0, v13[2] + 1, 1, v13);
          *(v3 + v4) = v13;
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_1A404C974((v17 > 1), v18 + 1, 1, v13);
        }

        v13[2] = v18 + 1;
        v19 = &v13[2 * v18];
        v19[4] = v14;
        v19[5] = v15;
        *(v3 + v4) = v13;
        swift_endAccess();
        sub_1A3C699DC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1A52F9DE0;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        v21 = objc_allocWithZone(off_1E77215A8);
        sub_1A3C52C70(0, &qword_1EB130C90, &off_1E77215D0);
        v22 = v14;
        v23 = v15;
        v24 = sub_1A524CA14();

        [v21 initWithEffects_];

        v25 = swift_beginAccess();
        MEMORY[0x1A5907D70](v25);
        if (*(*(v3 + v6) + 16) >= *(*(v3 + v6) + 24) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();

        --v8;
      }

      while (v8);
    }

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0xD0))();
  }
}

id CarouselSinglePageLayout.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CarouselSinglePageLayout(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1A404C974(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A404D404(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A404D45C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A404D30C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 localNumberOfSprites];
  v5 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects;
  swift_beginAccess();
  if (v4)
  {
    v6 = 0;
    v7 = v4;
    while (1)
    {
      v8 = *&v3[v5];
      if (*(v8 + 16) <= v6)
      {
        break;
      }

      v9 = *(v8 + 8 * v6 + 32);
      if (v9)
      {
        v10 = v6 + 1;
        v11 = *(*(v1 + 32) + 4 * v6);
        v12 = v9;
        v13 = [a1 mutableEffectIds];
        v13[v11] = [v12 effectId];

        v6 = v10;
        if (v7 != v10)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1A404D404(uint64_t a1)
{
  if (!qword_1EB130CF8)
  {
    sub_1A404D45C(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130CF8);
    }
  }
}

void sub_1A404D45C(uint64_t a1)
{
  if (!qword_1EB130D00)
  {
    sub_1A404D4C0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130D00);
    }
  }
}

void sub_1A404D4C0(uint64_t a1)
{
  if (!qword_1EB130D08)
  {
    sub_1A3C52C70(255, &qword_1EB130D10, &off_1E7721688);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130D08);
    }
  }
}

id ImportAssetActionManager.__allocating_init(importItem:importController:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXImportAssetActionManager_importItem] = a1;
  *&v5[OBJC_IVAR___PXImportAssetActionManager_importController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithSelectionManager_, 0);
}

id ImportAssetActionManager.init(importItem:importController:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PXImportAssetActionManager_importItem] = a1;
  *&v2[OBJC_IVAR___PXImportAssetActionManager_importController] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportAssetActionManager(a1, a2);
  return objc_msgSendSuper2(&v4, sel_initWithSelectionManager_, 0);
}

id sub_1A404D77C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (sub_1A524C674() == a1 && v5 == a2)
  {

    goto LABEL_8;
  }

  v7 = sub_1A524EAB4();

  if (v7)
  {
LABEL_8:
    type metadata accessor for ImportAssetDeleteActionPerformer();
    v8 = sub_1A42F2774(*&v2[OBJC_IVAR___PXImportAssetActionManager_importItem], *&v2[OBJC_IVAR___PXImportAssetActionManager_importController]);
    [v8 setDelegate_];
    swift_unknownObjectRelease();

    return v8;
  }

  return 0;
}

id ImportAssetActionManager.__allocating_init(selectionManager:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSelectionManager_];

  return v3;
}

id ImportAssetActionManager.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportAssetActionManager(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A404DA50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A404DC4C(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A4051530(v2, &v15 - v10, &qword_1EB128A38, sub_1A3EBE398, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A404DCB0(v11, a1);
  }

  v13 = sub_1A524D254();
  v14 = sub_1A524A014();
  sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A404DC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A404DCB0(uint64_t a1, uint64_t a2)
{
  sub_1A3EBE398(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A404DD34()
{
  v1 = v0;
  sub_1A404DF78(0);
  sub_1A5249FD4();
  v2 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x1A8))(v3);

  if (v5)
  {

    v6 = sub_1A524B6A4();
    v7 = (*((*v4 & *v13) + 0x1A8))(v6);

    if (v7)
    {
      v8 = [objc_opt_self() sharedAlbumIsOwned_];

      if (v8)
      {
        v9 = sel_resendInvitation;
        v7 = sel_displayConfirmationForSubscriberRemoval;
        goto LABEL_8;
      }

      v7 = 0;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v7 = sel_removeSubscriber;
  }

LABEL_8:
  result = [objc_opt_self() contactsViewControllerForParticipant:*(v1 + *(v2 + 24)) resendInvitationSelector:v9 removeSubscriberSelector:v7 target:v14];
  if (result)
  {
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A404DF78(uint64_t a1)
{
  if (!qword_1EB130D28)
  {
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    sub_1A40511FC(&qword_1EB130D30, &unk_1A5314680);
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130D28);
    }
  }
}

uint64_t sub_1A404DFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A404E05C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A404DFF8(a1, v3 + OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A4051048(a1, type metadata accessor for SharedAlbumSubscriberDetailsView);
  return v4;
}

uint64_t sub_1A404E104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView;
  swift_beginAccess();
  return sub_1A404DFF8(v1 + v3, a1);
}

uint64_t sub_1A404E15C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView;
  swift_beginAccess();
  sub_1A404E21C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A404E21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A404E280()
{
  sub_1A404DC4C(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v62 = v61 - v2;
  v64 = sub_1A5240A24();
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v61 - v10;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v14 = (*MEMORY[0x1E69E7D40] & *v0) + 88;
  v67 = v0;
  v13(v9);
  v15 = &v11[*(v5 + 20)];
  v17 = *v15;
  v16 = *(v15 + 1);
  aBlock = v17;
  v69 = v16;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v19 = v18;
  sub_1A524B6A4();
  v20 = v70;
  v21 = sub_1A4051048(v11, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v22 = (*((*v12 & *v20) + 0x1A8))(v21);

  if (v22)
  {
    v61[15] = v19;
    (v13)();
    v23 = *&v7[*(v5 + 24)];
    sub_1A4051048(v7, type metadata accessor for SharedAlbumSubscriberDetailsView);
    v24 = sub_1A524C634();
    v25 = PLServicesLocalizedFrameworkString();

    if (v25)
    {
      v61[10] = sub_1A524C674();
      v66 = v26;

      v27 = [v22 localizedTitle];
      v61[12] = v13;
      if (v27)
      {
        v28 = v27;
        v29 = sub_1A524C674();
        v65 = v30;
      }

      else
      {
        v29 = 0;
        v65 = 0xE000000000000000;
      }

      v61[9] = v22;
      v31 = [v23 matchingContact];
      v61[13] = v5;
      v61[14] = v7;
      v61[8] = v23;
      v61[11] = v14;
      if (v31)
      {
        v32 = v31;
        v33 = [v31 namePrefix];
        v61[7] = sub_1A524C674();
        v61[6] = v34;

        v35 = [v32 givenName];
        v61[5] = sub_1A524C674();
        v61[4] = v36;

        v37 = [v32 middleName];
        v61[3] = sub_1A524C674();
        v61[2] = v38;

        v39 = v29;
        v40 = [v32 familyName];
        v61[1] = sub_1A524C674();

        v41 = [v32 nameSuffix];
        sub_1A524C674();

        v42 = [v32 nickname];
        sub_1A524C674();

        v43 = v64;
        (*(v3 + 56))(v62, 1, 1, v64);
        v29 = v39;
        v44 = v63;
        sub_1A52409F4();
        v45 = objc_opt_self();
        v46 = sub_1A5240A04();
        v47 = [v45 localizedStringFromPersonNameComponents:v46 style:2 options:0];

        v48 = sub_1A524C674();
        v50 = v49;

        (*(v3 + 8))(v44, v43);
        goto LABEL_14;
      }

      v51 = [v23 displayName];
      if (v51)
      {
        v52 = v51;
        v48 = sub_1A524C674();
        v50 = v53;

        v54 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v54 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
LABEL_14:
          sub_1A3E072BC(0);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1A52FC9F0;
          v58 = MEMORY[0x1E69E6158];
          *(v57 + 56) = MEMORY[0x1E69E6158];
          v59 = sub_1A3D710E8();
          v60 = v65;
          *(v57 + 32) = v29;
          *(v57 + 40) = v60;
          *(v57 + 96) = v58;
          *(v57 + 104) = v59;
          *(v57 + 64) = v59;
          *(v57 + 72) = v48;
          *(v57 + 80) = v50;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v55 = [v23 displayAddress];
      v48 = sub_1A524C674();
      v50 = v56;

      goto LABEL_14;
    }

    __break(1u);
    __break(1u);
  }
}

void sub_1A404ECE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();
  }
}

void sub_1A404EDBC()
{
  v1 = sub_1A5246F24();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DC4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v16(v12);
  v37 = *&v14[*(v8 + 32)];
  v17 = sub_1A4051048(v14, type metadata accessor for SharedAlbumSubscriberDetailsView);
  (v16)(v17);
  v18 = &v10[*(v8 + 28)];
  v20 = *v18;
  v19 = *(v18 + 1);
  v39 = v20;
  v40 = v19;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v21 = v38;
  v22 = sub_1A4051048(v10, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v23 = (*((*v15 & *v21) + 0x1A8))(v22);

  if (v23)
  {
    sub_1A524CC74();
    v24 = sub_1A524CCB4();
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v37;
    v25[5] = v23;
    sub_1A3D4D930(0, 0, v6, &unk_1A5314668, v25);
  }

  else
  {
    v26 = sub_1A3C56D80();
    v28 = v35;
    v27 = v36;
    (*(v35 + 16))(v3, v26, v36);
    v29 = v37;
    v30 = sub_1A5246F04();
    v31 = sub_1A524D244();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_1A3C1C000, v30, v31, "Not resending invitation to participant (%@) because supplied shared album is nil", v32, 0xCu);
      sub_1A3CB65E4(v33);
      MEMORY[0x1A590EEC0](v33, -1, -1);
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    else
    {
      v34 = v30;
      v30 = v29;
    }

    (*(v28 + 8))(v3, v27);
  }
}

uint64_t sub_1A404F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1A5246F24();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A404F2DC, 0, 0);
}

uint64_t sub_1A404F2DC(uint64_t a1, uint64_t a2)
{
  v4 = v2[18];
  v3 = v2[19];
  v5 = objc_opt_self();
  v2[2] = v2;
  v2[7] = v2 + 24;
  v2[3] = sub_1A404F40C;
  v6 = swift_continuation_init();
  sub_1A3FA4F7C(0);
  v2[17] = v7;
  v2[10] = MEMORY[0x1E69E9820];
  v2[11] = 1107296256;
  v2[12] = sub_1A3FA485C;
  v2[13] = &block_descriptor_30_0;
  v2[14] = v6;
  [v5 resendInvitationToParticipant:v4 inSharedAlbum:v3 completionHandler:v2 + 10];

  return MEMORY[0x1EEE6DEC8](v2 + 2);
}

uint64_t sub_1A404F40C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A404F57C;
  }

  else
  {
    v2 = sub_1A404F51C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A404F51C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A404F57C(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[18];
  swift_willThrow();
  v7 = sub_1A3C56D80();
  (*(v5 + 16))(v3, v7, v4);
  v8 = v6;
  v9 = v2;
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[23];
  if (v12)
  {
    v14 = v1[18];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2112;
    v17 = v14;
    v18 = v13;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Failed to resend invitation to subscriber (%@): %@", v15, 0x16u);
    sub_1A3CB67E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    MEMORY[0x1A590EEC0](v16, -1, -1);
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  else
  {
  }

  (*(v1[21] + 8))(v1[22], v1[20]);

  v20 = v1[1];

  return v20();
}

uint64_t sub_1A404F7C8()
{
  v1 = sub_1A5246F24();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EBE398(0);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DC4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v8;
  v9 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v18(v14);
  v19 = *&v16[*(v10 + 32)];
  v20 = sub_1A4051048(v16, type metadata accessor for SharedAlbumSubscriberDetailsView);
  (v18)(v20);
  v21 = &v12[*(v10 + 28)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v58 = v23;
  v59 = v22;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v24 = v57;
  v25 = sub_1A4051048(v12, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v26 = (*((*v17 & *v24) + 0x1A8))(v25);

  if (v26)
  {
    v27 = [v19 localizedName];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1A524C674();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v42 = v53;
    sub_1A524CC74();
    v43 = sub_1A524CCB4();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v29;
    v44[5] = v31;
    v44[6] = v26;
    v44[7] = v19;
    v45 = v19;
    v46 = v26;
    sub_1A3D4D930(0, 0, v42, &unk_1A5314678, v44);

    (v18)(v47);
    v48 = v55;
    sub_1A404DA50(v55);
    sub_1A4051048(v16, type metadata accessor for SharedAlbumSubscriberDetailsView);
    MEMORY[0x1A5906C60](v54);
    sub_1A52489B4();
    sub_1A524B904();

    return sub_1A4051048(v48, sub_1A3EBE398);
  }

  else
  {
    v32 = sub_1A3C56D80();
    v34 = v50;
    v33 = v51;
    v35 = v52;
    (*(v51 + 16))(v50, v32, v52);
    v36 = v19;
    v37 = sub_1A5246F04();
    v38 = sub_1A524D244();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_1A3C1C000, v37, v38, "Not removing participant (%@) because supplied shared album is nil", v39, 0xCu);
      sub_1A3CB65E4(v40);
      MEMORY[0x1A590EEC0](v40, -1, -1);
      MEMORY[0x1A590EEC0](v39, -1, -1);
    }

    else
    {
      v41 = v37;
      v37 = v36;
    }

    return (*(v33 + 8))(v34, v35);
  }
}

uint64_t sub_1A404FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_1A5246F24();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A404FE84, 0, 0);
}

void sub_1A404FE84()
{
  v6 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = sub_1A3C56D80();
  v0[26] = v4;
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40501E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1A4050368;
  }

  else
  {
    v2 = sub_1A40502F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40502F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4050368(uint64_t a1)
{
  v7 = v1;
  v2 = v1[30];
  v3 = v1[27];
  v4 = v1[26];
  v5 = v1[24];
  v6 = v1[22];
  swift_willThrow();

  v3(v5, v4, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4050624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAlbumSubscriberDetailsView.SharedAlbumSubscriberDetailsViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4050698@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A404DC4C(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void *sub_1A405071C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1A40510A8(a1, a7);
  v12 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v13 = (a7 + v12[5]);
  type metadata accessor for SharedAlbumActionViewModel(0);
  result = sub_1A524B694();
  *v13 = v16;
  v13[1] = v17;
  *(a7 + v12[6]) = a3;
  v15 = (a7 + v12[7]);
  *v15 = a4;
  v15[1] = a5;
  v15[2] = a6;
  return result;
}

uint64_t sub_1A40507CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DFF8(v2, v5);
  v6 = type metadata accessor for SharedAlbumSubscriberDetailsView.SharedAlbumSubscriberDetailsViewCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A404DFF8(v5, v7 + OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A4051048(v5, type metadata accessor for SharedAlbumSubscriberDetailsView);
  *a2 = v8;
  return result;
}

uint64_t sub_1A40508A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40511FC(&qword_1EB130D30, &unk_1A5314680);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4050924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40511FC(&qword_1EB130D30, &unk_1A5314680);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A40509A4(uint64_t a1)
{
  sub_1A40511FC(&qword_1EB130D30, &unk_1A5314680);
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A40509E8()
{
  sub_1A404DC4C(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v12 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v13 = sub_1A5240D44();
  v14 = [v12 initWithPhotoLibraryURL_];

  (*(v8 + 8))(v10, v7);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  type metadata accessor for LemonadePhotoLibraryContext(0, v16);
  v17 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v14, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v21);
  v18 = sub_1A3C799F0(v6, 0, 0, 0, v3, &v21, v17, 2);
  type metadata accessor for SharedAlbumActionViewModel(0);

  v19 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v18, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v19 & 1, 0, 0, 0, 0);
}

uint64_t sub_1A4050E6C(uint64_t a1)
{
  v2 = sub_1A40514C4();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4050EB8(uint64_t a1)
{
  v2 = sub_1A40514C4();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4050F04()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A404F21C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4050F9C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A404FDB4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A4051048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A40510A8(uint64_t a1, uint64_t a2)
{
  sub_1A404DC4C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A405113C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3CB67E8(255, &qword_1EB13AE60, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A40511FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4051244()
{
  result = qword_1EB130D40;
  if (!qword_1EB130D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D40);
  }

  return result;
}

void sub_1A40512DC(uint64_t a1)
{
  sub_1A404DC4C(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A404DC4C(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB12C1B0, off_1E771F698);
      if (v3 <= 0x3F)
      {
        sub_1A405113C(319, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A4051424(uint64_t a1)
{
  result = type metadata accessor for SharedAlbumSubscriberDetailsView(319);
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

unint64_t sub_1A40514C4()
{
  result = qword_1EB130D48;
  if (!qword_1EB130D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D48);
  }

  return result;
}

uint64_t sub_1A4051530(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A404DC4C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1A40515AC(CVImageBufferRef imageBuffer@<X2>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X8>, __n128 a5@<Q0>, double a6@<D1>, CGFloat a7@<D2>, uint64_t a8@<D3>, double a9@<D4>, float64_t a10@<D5>)
{
  v267.f64[0] = a10;
  v265 = a5.n128_u64[0];
  if (imageBuffer)
  {
    *a5.n128_u64 = CVImageBufferGetCleanRect(imageBuffer);
    v11 = a5.n128_f64[0];
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
    v17 = 0.0;
  }

  v18 = sub_1A4054E7C(MEMORY[0x1E69E7CC0], a5);
  v19 = [a2 scores];
  type metadata accessor for PFPosterScoreKey(0);
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  sub_1A40555F8(&qword_1EB139D00, type metadata accessor for PFPosterScoreKey, &unk_1A5314C00);
  v20 = sub_1A524C3E4();

  if (*(v20 + 16) && (v21 = sub_1A3C8BF74(*MEMORY[0x1E69C0CD0]), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    v24 = v23;
    [v24 doubleValue];
    v26 = v25;

    v27 = round(v26 * 1000.0) / 1000.0;
  }

  else
  {

    v27 = 0.0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v281 = v18;
  sub_1A40548A0(0x74756F79616CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native, v27);
  v29 = v18;
  v30 = [a2 scores];
  v31 = sub_1A524C3E4();

  v32 = *MEMORY[0x1E69C0D10];
  if (*(v31 + 16) && (v33 = sub_1A3C8BF74(*MEMORY[0x1E69C0D10]), (v34 & 1) != 0))
  {
    v35 = *(*(v31 + 56) + 8 * v33);

    v36 = v35;
    [v36 doubleValue];
    v38 = v37;

    v39 = round(v38 * 1000.0) / 1000.0;
  }

  else
  {

    v39 = 0.0;
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&v281 = v29;
  sub_1A40548A0(1886351971, 0xE400000000000000, v40, v39);
  v41 = [a2 scores];
  v42 = sub_1A524C3E4();

  if (*(v42 + 16) && (v43 = sub_1A3C8BF74(v32), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + 8 * v43);

    v46 = v45;
    [v46 doubleValue];
    v48 = v47;

    v49 = round(v48 * 1000.0) / 1000.0;
  }

  else
  {

    v49 = 0.0;
  }

  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v281 = v29;
  sub_1A40548A0(0x61746E656D676573, 0xEC0000006E6F6974, v50, v49);
  v51 = [a2 scores];
  v52 = sub_1A524C3E4();

  if (*(v52 + 16) && (v53 = sub_1A3C8BF74(*MEMORY[0x1E69C0C78]), (v54 & 1) != 0))
  {
    v55 = *(*(v52 + 56) + 8 * v53);

    v56 = v55;
    [v56 doubleValue];
    v58 = v57;

    v59 = round(v58 * 1000.0) / 1000.0;
  }

  else
  {

    v59 = 0.0;
  }

  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40548A0(0xD000000000000016, 0x80000001A53C51F0, v60, v59);
  v262 = v29;
  v61 = MEMORY[0x1E69E7CC0];
  v63 = sub_1A4054F90(MEMORY[0x1E69E7CC0], v62);
  v64 = [a2 regions];
  [v64 acceptableCropRect];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40549FC(0x6261747065636361, 0xEE00706F7243656CLL, v73, v66, v68, v70, v72);
  [v64 preferredCropRect];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40549FC(0x6572726566657270, 0xED0000706F724364, v82, v75, v77, v79, v81);
  [v64 gazeAreaRect];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  *&v281 = v63;
  sub_1A40549FC(0x61657241657A6167, 0xE800000000000000, v91, v84, v86, v88, v90);
  v92 = v63;
  v93 = [v64 faceRegions];
  v94 = MEMORY[0x1E69E7CA0];
  if (v93)
  {
    v95 = v93;
    v61 = sub_1A524CA34();
  }

  v96 = *(v61 + 16);
  if (v96)
  {
    v97 = 0;
    v98 = v61 + 32;
    *&v272 = v61 + 32;
    do
    {
      v99 = v98 + 32 * v97;
      v100 = v97;
      while (1)
      {
        if (v100 >= *(v61 + 16))
        {
          goto LABEL_102;
        }

        *&v278 = v100;
        sub_1A3C2F0BC(v99, &v278 + 8);
        v281 = v278;
        v282 = v279;
        v283 = v280;
        if (!v280)
        {
          goto LABEL_44;
        }

        v274 = *&v278;
        sub_1A3C57128((&v281 + 8), &v278);
        type metadata accessor for CGRect(0);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v100;
        v99 += 32;
        if (v96 == v100)
        {
          goto LABEL_43;
        }
      }

      v257 = v64;
      v269 = v276;
      *&v278 = 1701011814;
      *(&v278 + 1) = 0xE400000000000000;
      *&v276 = v274;
      v101 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v101);

      v102 = v278;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v278 = v92;
      v274 = *&v102;
      v105 = sub_1A3C5DCA4(v102, *(&v102 + 1));
      v107 = v92;
      v108 = *(v92 + 16);
      v109 = (v104 & 1) == 0;
      v110 = v108 + v109;
      if (__OFADD__(v108, v109))
      {
        goto LABEL_124;
      }

      v111 = v104;
      if (*(v107 + 24) >= v110)
      {
        v94 = MEMORY[0x1E69E7CA0];
        if (v103)
        {
          goto LABEL_36;
        }

        sub_1A4054CF8(v106);
      }

      else
      {
        sub_1A405408C(v110, v103, v106);
        v112 = sub_1A3C5DCA4(v102, *(&v102 + 1));
        if ((v111 & 1) != (v113 & 1))
        {
          goto LABEL_127;
        }

        v105 = v112;
      }

      v94 = MEMORY[0x1E69E7CA0];
LABEL_36:
      if (v111)
      {

        v92 = v278;
        v114 = (*(v278 + 56) + 32 * v105);
        *v114 = v269;
        v114[1] = v277;
      }

      else
      {
        v92 = v278;
        *(v278 + 8 * (v105 >> 6) + 64) |= 1 << v105;
        *(*(v92 + 48) + 16 * v105) = v102;
        v115 = (*(v92 + 56) + 32 * v105);
        *v115 = v269;
        v115[1] = v277;
        v116 = *(v92 + 16);
        v117 = __OFADD__(v116, 1);
        v118 = v116 + 1;
        if (v117)
        {
          goto LABEL_125;
        }

        *(v92 + 16) = v118;
      }

      v64 = v257;
      v98 = v61 + 32;
      v97 = v100 + 1;
    }

    while (v96 - 1 != v100);
  }

LABEL_43:
  v283 = 0;
  v281 = 0u;
  v282 = 0u;
LABEL_44:

  v119 = [v64 petRegions];
  if (!v119)
  {
    goto LABEL_48;
  }

  v120 = v119;
  v121 = sub_1A524CA34();

  if (!*(v121 + 16))
  {
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  sub_1A3C2F0BC(v121 + 32, &v281);

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v122 = v278;
    v123 = v279;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *&v281 = v92;
    sub_1A40549FC(7628144, 0xE300000000000000, v124, *&v122, *(&v122 + 1), *&v123, *(&v123 + 1));
    swift_unknownObjectRelease();
    v92 = v281;
  }

  else
  {
LABEL_48:
    swift_unknownObjectRelease();
  }

LABEL_50:
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v270 = v125;
  v126 = sub_1A524E764();
  v127 = v126;
  v94 = 0;
  v128 = 1 << *(v92 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & *(v92 + 64);
  v131 = (v128 + 63) >> 6;
  v132 = v126 + 64;
  if (v130)
  {
    v133 = __clz(__rbit64(v130));
    goto LABEL_59;
  }

  v134 = 0;
  while (1)
  {
    v94 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v94 >= v131)
    {
      break;
    }

    v135 = *(v92 + 64 + 8 * v94);
    ++v134;
    if (v135)
    {
      v133 = __clz(__rbit64(v135));
LABEL_59:
      v136 = v133 | (v94 << 6);
      v137 = (*(v92 + 48) + 16 * v136);
      v139 = *v137;
      v138 = v137[1];
      v140 = 32 * v136;
      v141 = (*(v92 + 56) + 32 * v136);
      v142 = v11 + *v141 * v15;
      v143 = v13 + v141[1] * v17;
      v144 = v15 * v141[2];
      v145 = v17 * v141[3];
      *(v132 + ((v136 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v136;
      v146 = (*(v127 + 48) + 16 * v136);
      *v146 = v139;
      v146[1] = v138;
      v147 = (*(v127 + 56) + v140);
      *v147 = v142;
      v147[1] = v143;
      v147[2] = v144;
      v147[3] = v145;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v94 = v270;
  v274 = COERCE_DOUBLE(sub_1A524E764());
  v148 = 1 << *(v127 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = (v148 + 63) >> 6;
  v272 = v15;
  if ((v149 & *(v127 + 64)) != 0)
  {
LABEL_67:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v151 = 0;
  while (1)
  {
    v152 = v151 + 1;
    if (__OFADD__(v151, 1))
    {
      goto LABEL_101;
    }

    if (v152 >= v150)
    {
      break;
    }

    ++v151;
    if (*(v132 + 8 * v152))
    {
      goto LABEL_67;
    }
  }

  v153 = [a3 layers];
  sub_1A3C52C70(0, &qword_1EB130D58, 0x1E69C0770);
  v94 = sub_1A524CA34();

  if (v94 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v155 = 0;
    while (1)
    {
      if ((v94 & 0xC000000000000001) != 0)
      {
        v156 = MEMORY[0x1A59097F0](v155, v94);
      }

      else
      {
        if (v155 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v156 = *(v94 + 8 * v155 + 32);
      }

      v157 = v156;
      v158 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        break;
      }

      if ([v156 isBackground])
      {
        v255 = v17;

        [v157 frame];
        v160 = v159;
        v15 = v161;
        v163 = v162;
        v165 = v164;

        v166 = swift_isUniquelyReferenced_nonNull_native();
        *&v281 = v274;
        sub_1A40549FC(0x52656C6269736976, 0xEB00000000746365, v166, v160, v15, v163, v165);
        v258 = v281;
        sub_1A40553E4(0, &qword_1EB130D60, sub_1A40550B0, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        v168.n128_u64[1] = 2;
        *(inited + 32) = 0x5670616C7265766FLL;
        v169 = inited + 32;
        *(inited + 16) = xmmword_1A52F8E10;
        *(inited + 40) = 0xEF74636552776569;
        *(inited + 48) = a7;
        *(inited + 56) = *&a8;
        v168.n128_u64[0] = *&v267.f64[0];
        *(inited + 64) = a9;
        *(inited + 72) = v267.f64[0];
        v170 = COERCE_DOUBLE(sub_1A4054F90(inited, v168));
        swift_setDeallocating();
        sub_1A4055118(v169);
        v284.origin.x = v160;
        v284.origin.y = v15;
        v284.size.width = v163;
        v284.size.height = v165;
        CGRectGetWidth(v284);
        a7 = v160;
        v285.origin.x = v160;
        v256 = v15;
        v285.origin.y = v15;
        v17 = v163;
        v285.size.width = v163;
        v285.size.height = v165;
        CGRectGetHeight(v285);
        PXDisplayCollectionDetailedCountsMake();
        v172 = v171;
        v174 = v173;
        v274 = v175;
        rect = v176;
        v177 = sub_1A524E764();
        v178 = v177;
        v94 = 0;
        a9 = v170;
        v179 = 1 << *(*&v170 + 32);
        v180 = -1;
        if (v179 < 64)
        {
          v180 = ~(-1 << v179);
        }

        v181 = *&v170 + 64;
        v182 = v180 & *(*&v170 + 64);
        v183 = (v179 + 63) >> 6;
        v184 = v177 + 64;
        v185.f64[0] = v274;
        v185.f64[1] = rect;
        v267 = v185;
        if (v182)
        {
          v186 = __clz(__rbit64(v182));
          goto LABEL_88;
        }

        v187 = 0;
        while (1)
        {
          v94 = v187 + 1;
          if (__OFADD__(v187, 1))
          {
            goto LABEL_105;
          }

          if (v94 >= v183)
          {
            break;
          }

          v188 = *(v181 + 8 * v94);
          ++v187;
          if (v188)
          {
            v186 = __clz(__rbit64(v188));
LABEL_88:
            v189 = v186 | (v94 << 6);
            v190 = (*(*&a9 + 48) + 16 * v189);
            v192 = *v190;
            v191 = v190[1];
            v193 = (*(*&a9 + 56) + 32 * v189);
            v194 = v172 + v193->f64[0] * v274;
            v195 = v174 + v193->f64[1] * rect;
            v196 = (*(v178 + 48) + 16 * v189);
            v197 = vmulq_f64(v267, v193[1]);
            *(v184 + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v189;
            *v196 = v192;
            v196[1] = v191;
            v198 = *(v178 + 56) + 32 * v189;
            *v198 = v194;
            *(v198 + 8) = v195;
            *(v198 + 16) = v197;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        v199 = sub_1A524E764();
        v94 = v199;
        v200 = 1 << *(v178 + 32);
        v201 = -1;
        if (v200 < 64)
        {
          v201 = ~(-1 << v200);
        }

        v202 = (v200 + 63) >> 6;
        a8 = v199 + 64;
        v254 = v11;
        *&v267.f64[0] = v178;
        if ((v201 & *(v178 + 64)) != 0)
        {
LABEL_96:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v203 = 0;
        while (1)
        {
          v204 = v203 + 1;
          if (__OFADD__(v203, 1))
          {
            goto LABEL_106;
          }

          if (v204 >= v202)
          {
            break;
          }

          ++v203;
          if (*(v184 + 8 * v204))
          {
            goto LABEL_96;
          }
        }

        if (*(v94 + 16))
        {
          v205 = sub_1A3C5DCA4(0x5670616C7265766FLL, 0xEF74636552776569);
          if (v206)
          {
            v207 = v205;

            v208 = *(v94 + 56) + 32 * v207;
            v209 = *v208;
            v210 = *(v208 + 8);
            v211 = *(v208 + 16);
            v212 = *(v208 + 24);

            v286.origin.x = a7;
            v286.origin.y = v256;
            v286.size.width = v163;
            v286.size.height = v165;
            CGRectGetMinX(v286);
            v287.origin.x = v209;
            v287.origin.y = v210;
            v287.size.width = v211;
            v287.size.height = v212;
            CGRectGetMinX(v287);
            v288.origin.x = a7;
            v288.origin.y = v256;
            v288.size.width = v163;
            v288.size.height = v165;
            CGRectGetMinY(v288);
            v289.origin.x = v209;
            v289.origin.y = v210;
            v289.size.width = v211;
            v289.size.height = v212;
            CGRectGetMinY(v289);
            v290.origin.x = v209;
            v290.origin.y = v210;
            v290.size.width = v211;
            v290.size.height = v212;
            CGRectGetWidth(v290);
            v291.origin.x = v209;
            v291.origin.y = v210;
            v291.size.width = v211;
            v291.size.height = v212;
            CGRectGetHeight(v291);
            PXDisplayCollectionDetailedCountsMake();
            v214 = v213;
            v216 = v215;
            v218 = v217;
            v220 = v219;
            v221 = swift_isUniquelyReferenced_nonNull_native();
            *&v281 = v258;
            sub_1A40549FC(0x5670616C7265766FLL, 0xEF74636552776569, v221, v214, v216, v218, v220);
            v222 = *&v281;
            v11 = v254;
            v15 = v272;
            v17 = v255;
            goto LABEL_109;
          }
        }

        goto LABEL_126;
      }

      ++v155;
      if (v158 == i)
      {
        goto LABEL_108;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_107:
    ;
  }

LABEL_108:

  v222 = v274;
LABEL_109:
  v292.origin.x = v11;
  v292.origin.y = v13;
  v292.size.width = v15;
  v292.size.height = v17;
  Width = CGRectGetWidth(v292);
  v293.origin.x = v11;
  v293.origin.y = v13;
  v293.size.width = v15;
  v293.size.height = v17;
  if (CGRectGetHeight(v293) >= Width)
  {
    v296.origin.x = v11;
    v296.origin.y = v13;
    v296.size.width = v15;
    v296.size.height = v17;
    CGRectGetHeight(v296);
    v297.size.width = v15;
    v297.origin.x = v11;
    v297.origin.y = v13;
    v297.size.height = v17;
    CGRectGetWidth(v297);
  }

  else
  {
    v294.origin.x = v11;
    v294.origin.y = v13;
    v294.size.width = v15;
    v294.size.height = v17;
    CGRectGetWidth(v294);
    v295.size.width = v15;
    v295.origin.x = v11;
    v295.origin.y = v13;
    v295.size.height = v17;
    CGRectGetHeight(v295);
  }

  LOBYTE(v281) = 0;
  v224 = sub_1A524E764();
  v225 = v224;
  v226 = 0;
  v227 = 1 << *(*&v222 + 32);
  v228 = -1;
  if (v227 < 64)
  {
    v228 = ~(-1 << v227);
  }

  v229 = v228 & *(*&v222 + 64);
  v230 = (v227 + 63) >> 6;
  v273 = v224 + 64;
  v275 = v224;
  if (v229)
  {
    v231 = __clz(__rbit64(v229));
    goto LABEL_121;
  }

  v232 = 0;
  while (1)
  {
    v226 = v232 + 1;
    if (__OFADD__(v232, 1))
    {
      break;
    }

    if (v226 >= v230)
    {
      PXDisplayCollectionDetailedCountsMake();
      v245 = v244;
      v247 = v246;
      v249 = v248;
      v251 = v250;
      v252 = sub_1A4054348(v225);

      swift_unknownObjectRelease();

      v253 = v281;
      *a4 = v252;
      *(a4 + 8) = v262;
      *(a4 + 16) = imageBuffer;
      *(a4 + 24) = v245;
      *(a4 + 32) = v247;
      *(a4 + 40) = v249;
      *(a4 + 48) = v251;
      *(a4 + 56) = v253;
      *(a4 + 64) = v265;
      *(a4 + 72) = a6;
      *(a4 + 80) = 0;
      return;
    }

    v233 = *(*&v222 + 64 + 8 * v226);
    ++v232;
    if (v233)
    {
      v231 = __clz(__rbit64(v233));
LABEL_121:
      v234 = v231 | (v226 << 6);
      v235 = (*(*&v222 + 48) + 16 * v234);
      v237 = *v235;
      v236 = v235[1];
      PXDisplayCollectionDetailedCountsMake();
      *(v273 + ((v234 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v234;
      v238 = (*(v275 + 48) + 16 * v234);
      *v238 = v237;
      v238[1] = v236;
      v239 = (*(v275 + 56) + 32 * v234);
      *v239 = v240;
      v239[1] = v241;
      v239[2] = v242;
      v239[3] = v243;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  __break(1u);
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:

  __break(1u);
LABEL_127:
  sub_1A524EB84();
  __break(1u);
}

uint64_t sub_1A4052AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737463;
  v3 = 0x655264656C616373;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x657A695377656976;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001A53C51C0;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7365726F6373;
    }

    else
    {
      v5 = 0x655264656C616373;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000737463;
    }
  }

  v7 = 0xD000000000000017;
  v8 = 0x80000001A53C51C0;
  if (a2 != 2)
  {
    v7 = 0x657A695377656976;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x7365726F6373;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4052C34()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4052D00(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4052DB8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A4052E80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A4055174(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A4052EB0(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737463;
  v3 = 0x655264656C616373;
  v4 = 0x80000001A53C51C0;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x657A695377656976;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x7365726F6373;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1A4052F38()
{
  v1 = 0x655264656C616373;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x657A695377656976;
  }

  if (*v0)
  {
    v1 = 0x7365726F6373;
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

unint64_t sub_1A4052FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4055174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A4052FE4(uint64_t a1)
{
  v2 = sub_1A40551C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4053020(uint64_t a1)
{
  v2 = sub_1A40551C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParallaxAssetDebugInfo.encode(to:)(void *a1)
{
  sub_1A4055640(0, &qword_1EB130D70, MEMORY[0x1E69E6F58]);
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40551C0();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void ParallaxAssetDebugInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4055640(0, &qword_1EB130DB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40551C0();
  sub_1A524ED14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_1A4055214(0, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
    LOBYTE(v26) = 0;
    sub_1A40556A4();
    sub_1A524E8E4();
    v10 = v32;
    sub_1A4055C20(0, &qword_1EB130D98, MEMORY[0x1E69E5E28]);
    LOBYTE(v26) = 1;
    sub_1A4055350(&qword_1EB130DD0, sub_1A3E57CB4, v11, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A524E8E4();
    v49 = v32;
    type metadata accessor for CGRect(0);
    LOBYTE(v26) = 2;
    sub_1A40555F8(&qword_1EB130DC8, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1A524E8E4();
    v25 = v32;
    v24 = v33;
    v23 = v34;
    v22 = v35;
    v48 = 0;
    type metadata accessor for CGSize(0);
    v44 = 3;
    sub_1A40555F8(&qword_1EB138800, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1A524E8E4();
    (*(v7 + 8))(v9, v6);
    v20 = *(&v45 + 1);
    v21 = v45;
    v46 = 0;
    *&v26 = v10;
    *(&v26 + 1) = v49;
    *&v27 = 0;
    v12 = v25;
    *(&v27 + 1) = v25;
    v13 = v24;
    *&v28 = v24;
    v14 = v23;
    v15 = v22;
    *(&v28 + 1) = v23;
    *&v29 = v22;
    v16 = v48;
    BYTE8(v29) = v48;
    HIDWORD(v29) = *&v47[3];
    *(&v29 + 9) = *v47;
    v30 = v45;
    v31 = 0;
    *(a2 + 80) = 0;
    v17 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v17;
    *(a2 + 64) = v30;
    v18 = v27;
    *a2 = v26;
    *(a2 + 16) = v18;
    sub_1A4055770(&v26, &v32);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v32 = v10;
    v33 = v49;
    v34 = 0;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    *v40 = *v47;
    *&v40[3] = *&v47[3];
    v41 = v21;
    v42 = v20;
    v43 = 0;
    sub_1A40557A8(&v32);
  }
}

uint64_t sub_1A40538D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 64)) != 0)
  {
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 64 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1A4053A34(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A4053BA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1A5241714();
}

uint64_t sub_1A4053C10(uint64_t a1)
{
  sub_1A40555F8(&qword_1EB139D00, type metadata accessor for PFPosterScoreKey, &unk_1A5314C00);
  sub_1A40555F8(&qword_1EB130E10, type metadata accessor for PFPosterScoreKey, &unk_1A5314B60);

  return sub_1A524E7E4();
}

uint64_t sub_1A4053D70(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  swift_getWitnessTable();
  sub_1A5241724();
  return sub_1A524ECE4();
}

void sub_1A4053DD8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
  v35 = v5;
  v7 = sub_1A524E774();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v26 = sub_1A524ECE4();
      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero((v6 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1A405408C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v36 = v5;
  v7 = sub_1A524E774();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v6 + 56) + 32 * v22);
      v37 = v26[1];
      v38 = *v26;
      if ((v36 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v27 = sub_1A524ECE4();
      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v38;
      v18[1] = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v35 = 1 << *(v6 + 32);
    v4 = v3;
    if (v35 >= 64)
    {
      bzero((v6 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void *sub_1A4054348(uint64_t a1)
{
  v2 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v12 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A40544A8(v6, v4, v2, v7);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v9 = swift_slowAlloc();
  v11 = sub_1A40545D4(v9, v4, v2, v10);
  result = MEMORY[0x1A590EEC0](v9, -1, -1);
  if (!v1)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1A40544A8(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = CGRectIsEmpty(*(*(a3 + 56) + 32 * v17));
    if ((result & 1) == 0)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return sub_1A405464C(v6, a2, v7, a3, a4);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return sub_1A405464C(v6, a2, v7, a3, a4);
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A40545D4(void *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    v7 = sub_1A40544A8(result, a2, a3, a4);

    return v7;
  }

  return result;
}

uint64_t sub_1A405464C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = a4;
  if (*(a4 + 16) == a3)
  {

    return v5;
  }

  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  if (v9)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return result;
    }

    ++v10;
    if (a1[v11])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_1A40548A0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a1, a2);
  v14 = *(v10 + 16);
  v15 = (v12 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v12;
  v19 = *(v10 + 24);
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_8:
    v22 = *v5;
    if (v18)
    {
      *(v22[7] + 8 * v11) = a4;
      return;
    }

    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    *(v22[7] + 8 * v11) = a4;
    v24 = v22[2];
    v16 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v16)
    {
      v22[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    v20 = v11;
    sub_1A4054B80(v13);
    v11 = v20;
    goto LABEL_8;
  }

  sub_1A4053DD8(v17, a3 & 1, v13);
  v11 = sub_1A3C5DCA4(a1, a2);
  if ((v18 & 1) == (v21 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1A524EB84();
  __break(1u);
}

void sub_1A40549FC(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1A3C5DCA4(a1, a2);
  v20 = *(v16 + 16);
  v21 = (v18 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v18;
  v25 = *(v16 + 24);
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_8:
    v28 = *v8;
    if (v24)
    {
      v29 = (v28[7] + 32 * v17);
      *v29 = a4;
      v29[1] = a5;
      v29[2] = a6;
      v29[3] = a7;
      return;
    }

    v28[(v17 >> 6) + 8] |= 1 << v17;
    v30 = (v28[6] + 16 * v17);
    *v30 = a1;
    v30[1] = a2;
    v31 = (v28[7] + 32 * v17);
    *v31 = a4;
    v31[1] = a5;
    v31[2] = a6;
    v31[3] = a7;
    v32 = v28[2];
    v22 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v22)
    {
      v28[2] = v33;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    v26 = v17;
    sub_1A4054CF8(v19);
    v17 = v26;
    goto LABEL_8;
  }

  sub_1A405408C(v23, a3 & 1, v19);
  v17 = sub_1A3C5DCA4(a1, a2);
  if ((v24 & 1) == (v27 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1A524EB84();
  __break(1u);
}

void sub_1A4054B80(__n128 a1)
{
  v2 = v1;
  sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
  v3 = *v1;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      v14 = __clz(__rbit64(v12 & v11));
      goto LABEL_17;
    }

    v15 = 0;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
LABEL_17:
        v17 = v14 | (v9 << 6);
        v18 = (*(v3 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v3 + 56) + 8 * v17);
        v21 = (*(v5 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v5 + 56) + 8 * v17) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v2 = v5;
  }
}

void sub_1A4054CF8(__n128 a1)
{
  v2 = v1;
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v3 = *v1;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      v14 = __clz(__rbit64(v12 & v11));
      goto LABEL_17;
    }

    v15 = 0;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
LABEL_17:
        v17 = v14 | (v9 << 6);
        v18 = 16 * v17;
        v19 = (*(v3 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v3 + 56) + v17);
        v23 = (*(v5 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v5 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v2 = v5;
  }
}

unint64_t sub_1A4054E7C(uint64_t a1, __n128 a2)
{
  if (*(a1 + 16))
  {
    sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A4054F90(uint64_t a1, __n128 a2)
{
  if (*(a1 + 16))
  {
    sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A40550B0(uint64_t a1)
{
  if (!qword_1EB130D68)
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130D68);
    }
  }
}

uint64_t sub_1A4055118(uint64_t a1)
{
  sub_1A40550B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4055174(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A40551C0()
{
  result = qword_1EB130D78;
  if (!qword_1EB130D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D78);
  }

  return result;
}

void sub_1A4055214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4055284()
{
  result = qword_1EB130D88;
  if (!qword_1EB130D88)
  {
    sub_1A4055214(255, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
    sub_1A40555F8(&qword_1EB130D90, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D88);
  }

  return result;
}

uint64_t sub_1A4055350(unint64_t *a1, void (*a2)(void), __n128 a3, uint64_t a4, uint64_t a5)
{
  result = *a1;
  if (!result)
  {
    sub_1A4055C20(255, &qword_1EB130D98, MEMORY[0x1E69E5E28]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40553E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4055448()
{
  result = qword_1EB130DA8;
  if (!qword_1EB130DA8)
  {
    sub_1A40553E4(255, &qword_1EB126718, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    sub_1A40555F8(&qword_1EB130D90, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DA8);
  }

  return result;
}

unint64_t sub_1A4055520()
{
  result = qword_1EB130DB0;
  if (!qword_1EB130DB0)
  {
    sub_1A40553E4(255, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    sub_1A40555F8(&qword_1EB1387E0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DB0);
  }

  return result;
}

uint64_t sub_1A40555F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4055640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A40551C0();
    v7 = a3(a1, &type metadata for ParallaxAssetDebugInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A40556A4()
{
  result = qword_1EB130DC0;
  if (!qword_1EB130DC0)
  {
    sub_1A4055214(255, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
    sub_1A40555F8(&qword_1EB130DC8, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DC0);
  }

  return result;
}

BOOL _s12PhotosUICore22ParallaxAssetDebugInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a1 + 64);
  v22 = *(a2 + 72);
  v23 = *(a1 + 72);
  v17 = *(a2 + 80);
  if ((sub_1A40538D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1A4053A34(v2, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    type metadata accessor for CVBuffer(0);
    sub_1A40555F8(&qword_1EB13FED0, type metadata accessor for CVBuffer, &unk_1A5337BB0);
    v19 = v11;
    v20 = sub_1A5241714();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v8)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    v26.origin.x = v4;
    v26.origin.y = v5;
    v26.size.width = v6;
    v26.size.height = v7;
    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = v14;
    v27.size.height = v15;
    result = CGRectEqualToRect(v26, v27);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 1) == 0)
  {
    return (v17 & 1) == 0 && v25 == v24 && v23 == v22;
  }

  return (v17 & 1) != 0;
}

unint64_t sub_1A4055980()
{
  result = qword_1EB130DD8;
  if (!qword_1EB130DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DD8);
  }

  return result;
}

unint64_t sub_1A40559D8()
{
  result = qword_1EB130DE0;
  if (!qword_1EB130DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DE0);
  }

  return result;
}

unint64_t sub_1A4055A30()
{
  result = qword_1EB130DE8;
  if (!qword_1EB130DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DE8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A4055AA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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