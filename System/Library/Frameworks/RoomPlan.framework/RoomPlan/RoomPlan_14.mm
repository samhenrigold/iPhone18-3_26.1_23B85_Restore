void sub_23A9B286C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation);
    v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize);
    v4 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize + 8);
    v5 = a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters;
    swift_beginAccess();
    v6 = v1;
    sub_23AA0A630(v6, v2, v3, v4);
    swift_endAccess();
    if (sub_23A9ADCC0())
    {
      v7 = *(v5 + 152);
      v8[0] = *(v5 + 136);
      v8[1] = v7;
      v8[2] = *(v5 + 168);
      sub_23A94473C(v6, v8);
    }
  }
}

uint64_t sub_23A9B2950(double a1)
{
  v2 = v1;
  sub_23A9B2CA0();
  sub_23AA0C984();
  sub_23AA0C5B4();
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23AA0C714();

  sub_23A8D50D0(v5, &qword_27DFB0DC0, &unk_23AA1A7B0);
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A999018(v7, v2 + v3);
  return swift_endAccess();
}

void sub_23A9B2A5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_23AA0C5A4();
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v4 = &v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
    swift_beginAccess();
    sub_23A8D4778(*v4, v4[1], v4[2], v4[3]);
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_8;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v5 = off_27DFB17B0;
    swift_beginAccess();
    if (v5[144] == 1)
    {
LABEL_8:
      v6 = *&v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
      if (v6)
      {
        v7 = *&v6[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
        if (v7 && (*(v7 + qword_27DFC09E0) & 1) == 0)
        {
          v9 = qword_27DFAE360;
          v10 = v6;
          if (v9 != -1)
          {
            swift_once();
          }
        }

        else
        {
          v8 = v6;
        }

        if (*&v6[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8] || *&v6[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8])
        {

          v11 = sub_23AA0D104();
        }

        else
        {
          v11 = sub_23AA0D104();
        }

        [v6 setAccessibilityLabel_];

        v3 = v6;
      }
    }
  }
}

uint64_t sub_23A9B2CA0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A8D5194(v0 + v1, &v4, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v5 + 1))
  {
    sub_23A8CA9D8(&v4, v3);
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_23A999018(&v4, v0 + v1);
  return swift_endAccess();
}

void sub_23A9B2DB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer))
    {

      sub_23A953064();
    }
  }
}

id RoomCaptureView.__deallocating_deinit()
{
  *(sub_23A9ADC0C() + 3) = 0;
  swift_unknownObjectWeakAssign();

  sub_23A9AFE24();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomCaptureView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_23A9B2E98@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_23A9B2EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A9B2F54(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_23A9B2FB8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_23A9B3430(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  v7 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  v9 = *(v8 + 56);
  sub_23A963878(v9);

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  sub_23A8CC56C(a2, a3);
  v10 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
  if (v10)
  {
    v10[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
    v11 = v10;
    sub_23A8E1850(a2);
  }

  v12 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (!v12)
  {
    goto LABEL_12;
  }

  if (!*&v12[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
  {
LABEL_21:
    __break(1u);
    return;
  }

  v13 = v12;

  sub_23A8C63CC();
  sub_23A8E1850(a2);

LABEL_12:
  if (UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_24;
  }

  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v14 = off_27DFB17B0;
  swift_beginAccess();
  if (v14[144] == 1)
  {
LABEL_24:
    if (*&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager])
    {

      sub_23A9BDE1C(a2);
    }
  }
}

double sub_23A9B36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22 = a1;
  v23 = a3;
  v6 = sub_23AA0CEC4();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF24();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v15 = REEngineConfigurationGetEngineQueue();
  if (!v15)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v15 = sub_23AA0D534();
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(v22, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_23A9BAC8C(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CapturedRoom);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = v24;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v29 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v11, v8, v19);
  _Block_release(v19);

  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v11, v27);

  return result;
}

void sub_23A9B3AE8(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    sub_23A8CD540(a2, a3);
    v7 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
    if (v7)
    {
      v7[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
      v8 = v7;
      sub_23A8E259C(a2);
    }

    v9 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v9)
    {
      if (*&v9[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        v10 = v9;

        sub_23A8C63CC();
        sub_23A8E259C(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

double sub_23A9B3C44(uint64_t a1)
{
  v17 = a1;
  v1 = sub_23AA0CEC4();
  v20 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CF24();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CapturedRoom(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v10 = REEngineConfigurationGetEngineQueue();
  if (!v10)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v10 = sub_23AA0D534();
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(v17, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_23A9BAC8C(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CapturedRoom);
  aBlock[4] = sub_23A9BA720;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_163_0;
  v14 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v21 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v6, v3, v14);
  _Block_release(v14);

  (*(v20 + 8))(v3, v1);
  (*(v18 + 8))(v6, v19);

  return result;
}

void sub_23A9B4064(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    sub_23A8CF430(a2);
    v5 = *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
    if (v5)
    {
      v5[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
      v6 = v5;
      sub_23A8E2914(a2);
    }

    v7 = *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v7)
    {
      if (*&v7[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        v8 = v7;

        sub_23A8C63CC();
        sub_23A8E2914(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

double sub_23A9B41B8(uint64_t *a1)
{
  v2 = sub_23AA0CE84();
  v19[6] = *(v2 - 8);
  v19[7] = v2;
  MEMORY[0x28223BE20](v2);
  v3 = sub_23AA0CEC4();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CF24();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapturedRoom(0);
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_23A9ADC0C();
  swift_beginAccess();
  v12 = v11[256];

  if (v12 == 1)
  {
    sub_23A8EE70C(a1);
  }

  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v13 = REEngineConfigurationGetEngineQueue();
  if (!v13)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v13 = sub_23AA0D534();
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(a1, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_23A9BAC8C(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CapturedRoom);
  aBlock[4] = sub_23A9BA5BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_156;
  v17 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v24 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v23 + 8))(v5, v3);
  (*(v21 + 8))(v8, v22);

  return result;
}

void sub_23A9B4884(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v5)
    {
      if (!*&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        __break(1u);
        return;
      }

      v6 = v5;

      sub_23A8C6CB8(a2);

      sub_23A9C6E84(0);
    }
  }
}

void sub_23A9B493C(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = sub_23AA0CEC4();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23AA0CF24();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CED4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v43 = a1[2];
  v44 = v14;
  v45 = a1[4];
  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  if (v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] == 1)
  {
    v16 = &v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v17 = *(v16 + 1), ObjectType = swift_getObjectType(), v40[2] = v43, v40[3] = v44, v40[4] = v45, v40[0] = v41, v40[1] = v42, LOBYTE(v17) = (*(v17 + 8))(v40, a2, ObjectType, v17), swift_unknownObjectRelease(), (v17 & 1) == 0))
    {
      sub_23A9AFBE8();
    }

    else if (!a2 || (*&v40[0] = a2, v19 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0), (swift_dynamicCast() & 1) == 0) || LOBYTE(v39[0]) != 2)
    {
      v20 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
      swift_beginAccess();
      if (v3[v20])
      {
        goto LABEL_12;
      }

      v21 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
      v22 = *&v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
      if (!v22)
      {
        goto LABEL_12;
      }

      *(v22 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
      v23 = *(v22 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (v23)
      {
        [v23 setHidden_];
        v24 = *&v3[v21];
        if (v24)
        {
          [v24 setAlpha_];
        }

LABEL_12:
        sub_23A9AF980();
        sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
        (*(v11 + 104))(v13, *MEMORY[0x277D851C0], v10);
        v25 = sub_23AA0D564();
        (*(v11 + 8))(v13, v10);
        v26 = swift_allocObject();
        *(v26 + 16) = v3;
        v27 = v44;
        *(v26 + 64) = v43;
        *(v26 + 80) = v27;
        *(v26 + 96) = v45;
        v28 = v42;
        *(v26 + 32) = v41;
        *(v26 + 48) = v28;
        *(v26 + 112) = a2;
        v39[4] = sub_23A9BA178;
        v39[5] = v26;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 1107296256;
        v39[2] = sub_23A9AD0B8;
        v39[3] = &block_descriptor_115;
        v29 = _Block_copy(v39);
        v30 = a2;
        v31 = v3;
        sub_23A9ACA9C(&v41, v40);
        sub_23AA0CEE4();
        *&v40[0] = MEMORY[0x277D84F90];
        sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
        sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
        v32 = v35;
        v33 = v38;
        sub_23AA0D764();
        MEMORY[0x23EE8FFE0](0, v9, v32, v29);
        _Block_release(v29);

        (*(v37 + 8))(v32, v33);
        (*(v34 + 8))(v9, v36);

        return;
      }

      __break(1u);
    }
  }
}

double sub_23A9B4EBC(char *a1, _OWORD *a2, void *a3)
{
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CF24();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] == 1)
  {
    v29 = v12;
    v30 = v7;
    v16 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder;
    if (!*&a1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder])
    {
      type metadata accessor for RoomBuilder(0);
      v17 = swift_allocObject();
      v17[1].i8[8] = 0;
      v17[2] = vdupq_n_s64(1uLL);
      v18 = a3;
      v19 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
      v21 = &v17->i8[v19];
      a3 = v18;
      (*(*(v20 - 8) + 56))(v21, 1, 1, v20);
      v17[1].i64[0] = 1;
      v17[1].i8[8] = 1;
      *&a1[v16] = v17;
    }

    sub_23AA0C594();
    sub_23AA0C584();
    sub_23AA0C574();

    sub_23AA0CB04();

    REEngineConfigurationCreateFromEngine();
    v22 = REEngineConfigurationGetEngineQueue();
    if (!v22)
    {
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v22 = sub_23AA0D534();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    v24 = a2[3];
    *(v23 + 64) = a2[2];
    *(v23 + 80) = v24;
    *(v23 + 96) = a2[4];
    v25 = a2[1];
    *(v23 + 32) = *a2;
    *(v23 + 48) = v25;
    *(v23 + 112) = a3;
    aBlock[4] = sub_23A9BA1D8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_121;
    v26 = _Block_copy(aBlock);
    v27 = a1;
    sub_23A9ACA9C(a2, v31);
    v28 = a3;
    sub_23AA0CEE4();
    v31[0] = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v15, v9, v26);
    _Block_release(v26);

    (*(v30 + 8))(v9, v6);
    (*(v11 + 8))(v15, v29);
  }

  return result;
}

double sub_23A9B52E4(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB0, &qword_23AA1A768);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = sub_23AA0D3B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23AA0D394();

  sub_23A9ACA9C(a2, v17);
  v10 = a3;
  v11 = sub_23AA0D384();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v9;
  v14 = a2[3];
  *(v12 + 80) = a2[2];
  *(v12 + 96) = v14;
  *(v12 + 112) = a2[4];
  v15 = a2[1];
  *(v12 + 48) = *a2;
  *(v12 + 64) = v15;
  *(v12 + 128) = a3;

  sub_23A9B6C28(0, 0, v7, &unk_23AA1A778, v12);

  return result;
}

uint64_t sub_23A9B547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[49] = a5;
  v6[50] = a6;
  v6[48] = a4;
  v7 = sub_23AA0CEC4();
  v6[51] = v7;
  v6[52] = *(v7 - 8);
  v6[53] = swift_task_alloc();
  v8 = sub_23AA0CF24();
  v6[54] = v8;
  v6[55] = *(v8 - 8);
  v6[56] = swift_task_alloc();
  v9 = sub_23AA0CF44();
  v6[57] = v9;
  v6[58] = *(v9 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB8, &qword_23AA1A798);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v10 = type metadata accessor for CapturedRoom(0);
  v6[70] = v10;
  v6[71] = *(v10 - 8);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  sub_23AA0D394();
  v6[77] = sub_23AA0D384();
  v12 = sub_23AA0D354();
  v6[78] = v12;
  v6[79] = v11;

  return MEMORY[0x2822009F8](sub_23A9B5784, v12, v11);
}

uint64_t sub_23A9B5784()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession))
    {
      v3 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder);
      *(v0 + 648) = v3;
      if (v3)
      {
        v4 = *(v0 + 392);
        *(v0 + 16) = *v4;
        v5 = v4[4];
        v7 = v4[1];
        v6 = v4[2];
        *(v0 + 64) = v4[3];
        *(v0 + 80) = v5;
        *(v0 + 32) = v7;
        *(v0 + 48) = v6;

        v8 = swift_task_alloc();
        *(v0 + 656) = v8;
        *v8 = v0;
        v8[1] = sub_23A9B5A2C;
        v9 = *(v0 + 552);

        return sub_23A9A98DC(v9, (v0 + 16));
      }

      v11 = *(v0 + 552);
      (*(*(v0 + 568) + 56))(v11, 1, 1, *(v0 + 560));
      sub_23A8D50D0(v11, &unk_27DFB13A0, &unk_23AA1A7A0);
    }

    else
    {
    }
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23A9B5A2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 632);
    v4 = *(v2 + 624);
    v5 = sub_23A9B6A90;
  }

  else
  {

    v3 = *(v2 + 632);
    v4 = *(v2 + 624);
    v5 = sub_23A9B5B6C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23A9B5B6C()
{
  v115 = v0;
  v1 = v0[80];
  v2 = v0[76];
  v3 = v0[69];
  v4 = *(v0[71] + 56);
  v4(v3, 0, 1, v0[70]);
  sub_23A9BAC8C(v3, v2, type metadata accessor for CapturedRoom);
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!v6)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v7 = v0[76];
  v8 = v0[49];
  v9 = v8[3];
  v114[2] = v8[2];
  v114[3] = v9;
  v114[4] = v8[4];
  v10 = v8[1];
  v114[0] = *v8;
  v114[1] = v10;

  sub_23A9CF53C(v114, v7);

  if (qword_27DFAE478 != -1)
  {
    swift_once();
  }

  v6 = qword_27DFC0720;
  sub_23A95DE00();
  sub_23A95E120();
  v11 = *(v1 + v5);
  if (!v11)
  {
    goto LABEL_55;
  }

  v6 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate);
  if (!v6)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_23A8D5194(v0[76] + *(v0[70] + 60), (v0 + 24), &unk_27DFB1140, &qword_23AA19C10);
  if (!v0[27])
  {
LABEL_57:
    v95 = v6;
    result = sub_23A8D50D0((v0 + 24), &unk_27DFB1140, &qword_23AA19C10);
    __break(1u);
    goto LABEL_58;
  }

  v109 = v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
  sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v14 = v0[76];

  v15 = v0[46];
  v16 = sub_23A9D2114(v15, v14, 1);
  v18 = v17;
  v20 = v19;
  v21 = sub_23A9DF1BC(v15, v14);
  v106 = v22;
  v24 = v23;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v98 = v24;
  v100 = v20;
  v103 = v15;
  v25 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = MEMORY[0x277D84F90];
  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = MEMORY[0x277D84F90];

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v27;

  if (*(v16 + 16) || *(v21 + 16))
  {
    sub_23A9D62B8(v16, v21, MEMORY[0x277D84F90], v0[68]);

    v28 = 0;
  }

  else
  {

    v28 = 1;
  }

  v109(v0[68], v28, 1, v0[70]);
  if (*(v18 + 16) || *(v106 + 16) || *(v25 + 16))
  {
    sub_23A9D62B8(v18, v106, v25, v0[67]);

    v29 = 0;
  }

  else
  {

    v29 = 1;
  }

  v109(v0[67], v29, 1, v0[70]);
  if (*(v100 + 16) || *(v98 + 16) || *(v26 + 16))
  {
    sub_23A9D62B8(v100, v98, v26, v0[66]);

    v30 = 0;
  }

  else
  {

    v30 = 1;
  }

  v31 = v0[70];
  v32 = v0[68];
  v33 = v0[67];
  v34 = v0[66];
  v35 = v0[65];
  v36 = v0[61];

  v109(v34, v30, 1, v31);
  v37 = *(v36 + 48);
  v38 = *(v36 + 64);
  sub_23A9BA4B0(v33, v35);
  v104 = v37;
  sub_23A9BA4B0(v34, v35 + v37);
  v107 = v35;
  v101 = v38;
  sub_23A9BA4B0(v32, v35 + v38);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  v39 = v0[75];
  v40 = v0[71];
  v41 = v0[70];
  v42 = v0[65];
  v43 = v0[64];
  sub_23A9BABC4(v0[76], v39, type metadata accessor for CapturedRoom);
  v44 = sub_23A9B7AF0(v39, 3);
  sub_23A9BAC2C(v39, type metadata accessor for CapturedRoom);
  v45 = sub_23A9E427C(v44);

  sub_23A8D5194(v42, v43, &qword_27DFB0DB8, &qword_23AA1A798);
  v46 = *(v36 + 48);
  v47 = *(v36 + 64);
  v110 = *(v40 + 48);
  v112 = v45;
  if (v110(v43, 1, v41) == 1)
  {
    v48 = v0[64];
    sub_23A8D50D0(v43 + v47, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v43 + v46, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v48, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    sub_23A9BAC8C(v0[64], v0[74], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v43 + v47, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v43 + v46, &unk_27DFB13A0, &unk_23AA1A7A0);
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v49 = v0[74];
    sub_23A8CC56C(v49, v45);
    sub_23A9BAC2C(v49, type metadata accessor for CapturedRoom);
  }

  v50 = v0[70];
  v51 = v0[63];
  sub_23A8D5194(v0[65], v51, &qword_27DFB0DB8, &qword_23AA1A798);
  v52 = *(v36 + 48);
  v53 = *(v36 + 64);
  if (v110(v51 + v52, 1, v50) == 1)
  {
    v54 = v0[63];
    sub_23A8D50D0(v51 + v53, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v51 + v52, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v54, &unk_27DFB13A0, &unk_23AA1A7A0);
    v55 = 0x27DFAE000;
  }

  else
  {
    v56 = v0[63];
    sub_23A9BAC8C(v51 + v52, v0[73], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v51 + v53, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v56, &unk_27DFB13A0, &unk_23AA1A7A0);
    v55 = 0x27DFAE000uLL;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v57 = v0[73];
    sub_23A8CF430(v57);
    sub_23A9BAC2C(v57, type metadata accessor for CapturedRoom);
  }

  v58 = v0[70];
  v59 = v0[62];
  sub_23A8D5194(v0[65], v59, &qword_27DFB0DB8, &qword_23AA1A798);
  v60 = *(v36 + 48);
  v61 = *(v36 + 64);
  if (v110(v59 + v61, 1, v58) == 1)
  {
    v62 = v0[62];

    sub_23A8D50D0(v59 + v61, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v59 + v60, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v62, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    v63 = v0[62];
    sub_23A9BAC8C(v59 + v61, v0[72], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v59 + v60, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v63, &unk_27DFB13A0, &unk_23AA1A7A0);
    if (*(v55 + 872) != -1)
    {
      swift_once();
    }

    v64 = v0[72];
    sub_23A8CD540(v64, v112);

    sub_23A9BAC2C(v64, type metadata accessor for CapturedRoom);
  }

  v65 = v0[80];
  v66 = *(v65 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v66)
  {
    v67 = v0[76];
    v68 = v0[65];
    v69 = v66;
    sub_23A9C4680(v67, v68, v107 + v104, v107 + v101);

    v65 = v0[80];
  }

  v70 = v65 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = v0[76];
    v72 = v0[50];
    v73 = *(v70 + 8);
    ObjectType = swift_getObjectType();
    (*(v73 + 16))(v71, v72, ObjectType, v73);
    swift_unknownObjectRelease();
  }

  v75 = v0[80];
  v76 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  if ((*(v75 + v76) & 1) == 0)
  {
    v77 = objc_opt_self();
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v78 = v0[80];
    v79 = off_27DFB17B0;
    swift_beginAccess();
    v80 = v79[19] + 0.5;
    v81 = swift_allocObject();
    *(v81 + 16) = v78;
    v0[16] = sub_23A9BA558;
    v0[17] = v81;
    v0[12] = MEMORY[0x277D85DD0];
    v0[13] = 1107296256;
    v0[14] = sub_23A9AD0B8;
    v0[15] = &block_descriptor_143;
    v82 = _Block_copy(v0 + 12);
    v83 = v78;

    [v77 animateWithDuration:v82 animations:v80];
    _Block_release(v82);
  }

  v84 = v0[80];
  v111 = v0[65];
  v113 = v0[76];
  v85 = v0[59];
  v96 = v0[60];
  v87 = v0[57];
  v86 = v0[58];
  v88 = v0[56];
  v89 = v0[53];
  v105 = v0[55];
  v108 = v0[54];
  v102 = v0[52];
  v99 = v0[51];
  sub_23A9ADC0C();
  swift_beginAccess();

  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v97 = sub_23AA0D534();
  sub_23AA0CF34();
  sub_23AA0CF54();
  v90 = *(v86 + 8);
  v90(v85, v87);
  v91 = swift_allocObject();
  *(v91 + 16) = v84;
  v0[22] = sub_23A9BA580;
  v0[23] = v91;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23A9AD0B8;
  v0[21] = &block_descriptor_149;
  v92 = _Block_copy(v0 + 18);
  v93 = v84;
  sub_23AA0CEE4();
  v0[47] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFB0](v96, v88, v89, v92);
  _Block_release(v92);

  (*(v102 + 8))(v89, v99);
  (*(v105 + 8))(v88, v108);
  v90(v96, v87);
  sub_23A8D50D0(v111, &qword_27DFB0DB8, &qword_23AA1A798);
  sub_23A9BAC2C(v113, type metadata accessor for CapturedRoom);

  v94 = v0[1];

  return v94();
}

uint64_t sub_23A9B6A90()
{
  v1 = v0[80];

  v2 = v0[69];
  (*(v0[71] + 56))(v2, 1, 1, v0[70]);
  sub_23A8D50D0(v2, &unk_27DFB13A0, &unk_23AA1A7A0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A9B6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB0, &qword_23AA1A768);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23A8D5194(a3, v25 - v10, &qword_27DFB0DB0, &qword_23AA1A768);
  v12 = sub_23AA0D3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23A8D50D0(v11, &qword_27DFB0DB0, &qword_23AA1A768);
  }

  else
  {
    sub_23AA0D3A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23AA0D354();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23AA0D1B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23A8D50D0(a3, &qword_27DFB0DB0, &qword_23AA1A768);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23A8D50D0(a3, &qword_27DFB0DB0, &qword_23AA1A768);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_23A9B6F28(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession) = 0;
  sub_23A9AFBE8();
  if (!*(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
  {
    sub_23A9B07A0();
    sub_23A9B0FE4();
    v3 = sub_23A9B1654();
  }

  result = [a1 currentFrame];
  if (result)
  {
    v5 = result;
    v6 = [result camera];

    [v6 transform];
    v11 = v7;

    v8 = *MEMORY[0x277D860B8];
    v9 = *(MEMORY[0x277D860B8] + 16);
    v10 = *(MEMORY[0x277D860B8] + 32);

    return [a1 setWorldOrigin_];
  }

  return result;
}

void sub_23A9B7024(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame);
    *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

void sub_23A9B7098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v2)
  {
    v3 = a2;
    v5 = v2;
    sub_23A9C4D10(v3, v4);
  }
}

void sub_23A9B7100(char *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3)
  {

    *(v3 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = &off_284D85FC0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9B71AC(uint64_t a1, __int128 *a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23A9B493C(a2, a3);
  }
}

double sub_23A9B7250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  v9 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel;
  swift_beginAccess();
  sub_23A9BABC4(a1 + v9, v8, type metadata accessor for CapturedRoom);
  v10 = sub_23A9B7AF0(v8, 3);
  sub_23A9BAC2C(v8, type metadata accessor for CapturedRoom);
  v11 = sub_23A9E427C(v10);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    a3(a2, v11);
  }

  return result;
}

void sub_23A9B73AC(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v4)
    {
      v7 = a2;
      v6 = Strong;
      v5 = v4;
      sub_23A9C4A34(&v7);
    }

    else
    {
    }
  }
}

uint64_t sub_23A9B7434()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_23A9B74C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a5(a2);
  }
}

uint64_t sub_23A9B755C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A9B7654;

  return v6(a1);
}

uint64_t sub_23A9B7654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A9B774C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_23A9AD568(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_23A975C88(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A9B7AF0(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v66 = sub_23AA0C0E4();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CapturedRoom.Surface(0);
  v9 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A9BABC4(a1, v14, type metadata accessor for CapturedRoom);
  v73 = MEMORY[0x277D84F90];
  v15 = *v14;

  result = sub_23A9BAC2C(v14, type metadata accessor for CapturedRoom);
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = 0;
    v63 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v71 = (v7 + 16);
    v19 = MEMORY[0x277D84F90];
    v20 = (v7 + 32);
    v64 = xmmword_23AA11BB0;
    v58 = a2;
    v57 = v9;
    v56 = v15;
    v55 = v17;
    while (v18 < *(v15 + 16))
    {
      sub_23A9BABC4(v63 + *(v9 + 72) * v18, v11, type metadata accessor for CapturedRoom.Surface);
      v21 = *(v11 + 1);
      v22 = COERCE_FLOAT(*(v11 + 3));
      v23 = v22 > 0.0 && (a2 & 2) == 0;
      if (v23 || (v22 == 0.0 ? (v24 = (a2 & 1) == 0) : (v24 = 0), v24))
      {
        result = sub_23A9BAC2C(v11, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        v62 = v18;
        v70 = v22 > 0.0;
        v25 = *(v11 + 2);
        v67 = *(v11 + 3);
        v68 = v25;
        v69 = *(v11 + 5);
        *(&v26 + 1) = v69.i64[1];
        *&v26 = vmul_f32(*&v21, COERCE_FLOAT32X2_T(-0.0000305175853));
        v61 = v26;
        v27 = vextq_s8(v67, v67, 8uLL);
        *v27.i8 = vmul_f32(*&v26, vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *v27.i8));
        v60 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v28 = swift_allocObject();
        v29 = 0;
        v30 = 0;
        v31 = *&v69.i32[2];
        v32 = *v60.i32;
        v33 = vmul_lane_f32(*v67.i8, *&v61, 1);
        v34 = vmul_n_f32(*v68.i8, *&v61);
        v35 = *v69.i8;
        *&v36 = vadd_f32(v33, vsub_f32(*v69.i8, v34));
        v37 = *&v60.i32[1];
        *(&v36 + 2) = *&v60.i32[1] + (*&v69.i32[2] - *v60.i32);
        HIDWORD(v36) = 0;
        *(v28 + 32) = v36;
        v38 = v28 + 32;
        *&v39 = vadd_f32(v33, vadd_f32(v34, v35));
        *(&v39 + 1) = COERCE_UNSIGNED_INT(v37 + (v32 + v31));
        *&v61 = v28;
        *(v28 + 48) = v39;
        v69.i64[0] = *(v59 + 44);
        v68.i64[0] = *(v59 + 52);
        v67.i64[0] = *v71;
        do
        {
          v40 = v29;
          v41 = (v38 + 16 * v30);
          v42 = *vld2_f32(v41).val;
          v43 = v65;
          v44 = v66;
          (v67.i64[0])(v65, &v11[v69.i64[0]], v66);
          sub_23A8D5194(&v11[v68.i64[0]], v6, &qword_27DFAEB38, &unk_23AA11B60);
          v45 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v46 = (*(*(v45 - 8) + 48))(v6, 1, v45) != 1;
          sub_23A8D50D0(v6, &qword_27DFAEB38, &unk_23AA11B60);
          type metadata accessor for HullPointUUID(0);
          v47 = swift_allocObject();
          (*v20)(v47 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v43, v44);
          *(v47 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v46;
          *(v47 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          inited = swift_initStackObject();
          *(inited + 16) = v64;
          *(inited + 32) = v47;

          sub_23A9A6B4C(inited);
          v50 = v49;
          swift_setDeallocating();
          swift_arrayDestroy();
          v51 = type metadata accessor for HullPoint();
          v52 = objc_allocWithZone(v51);
          *&v52[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v42;
          *&v52[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v50;
          v72.receiver = v52;
          v72.super_class = v51;
          v53 = objc_msgSendSuper2(&v72, sel_init);
          MEMORY[0x23EE8FD70]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v29 = 1;
          v30 = 1;
        }

        while ((v40 & 1) == 0);
        v19 = v73;
        sub_23A9BAC2C(v11, type metadata accessor for CapturedRoom.Surface);
        swift_setDeallocating();
        result = swift_deallocClassInstance();
        LOBYTE(a2) = v58;
        v9 = v57;
        v15 = v56;
        v17 = v55;
        v18 = v62;
      }

      if (++v18 == v17)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_23A9B81E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, float a7, __n128 a8)
{
  v9 = v8;
  v120 = a6;
  v124 = a5;
  v140 = a8;
  v139 = a3;
  v13 = type metadata accessor for CapturedRoom.Object(0);
  v119 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v118 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v115 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v117 = &v112 - v18;
  v19 = type metadata accessor for CapturedRoom.Surface(0);
  v123 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v122 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v112 - v22;
  MEMORY[0x28223BE20](v23);
  v121 = &v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DC8, &unk_23AA1AA50);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v112 - v26;
  v137 = sub_23AA0C464();
  v150 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_23AA0C634();
  v146 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23AA0C184();
  v147 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v148 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_23AA0C0E4();
  v31 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v114 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v112 - v34;
  v36 = a1;
  v37 = *(a1 + 16);
  v38 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  v126 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  swift_beginAccess();
  v127 = a4;
  v125 = v38;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v37)
  {
    return;
  }

  v151 = v37;
  ++v147;
  v132 = *MEMORY[0x277CDAE48];
  v131 = (v146 + 104);
  v130 = (v150 + 1);
  v129 = (v146 + 8);
  v113 = (v31 + 16);
  v112 = v31 + 32;
  v144 = (v31 + 8);
  v39 = (v36 + 40);
  v128 = a2;
  v133 = v31;
  v146 = v35;
  v145 = v29;
  while (1)
  {
    v40 = v9;
    v42 = *(v39 - 1);
    v41 = *v39;
    v150 = v39;
    v43 = *v42;
    v44 = *(v41 + 8);

    v44(v43, v41);
    v45 = v148;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*v147)(v45, v29);
    if (!RECheckEntityInsideCustomMatrixCameraFrustumAnyViewWithCustomViewport())
    {
      break;
    }

    sub_23AA0C284();
    v143 = v46;
    v47 = v134;
    v48 = v135;
    (*v131)(v134, v132, v135);
    v49 = v136;
    sub_23AA0C454();
    v50 = sub_23AA0C6F4();
    (*v130)(v49, v137);
    v51 = v47;
    v35 = v146;
    v52 = (*v129)(v51, v48);
    MEMORY[0x28223BE20](v52);
    *(&v112 - 4) = v35;
    *(&v112 - 3) = a2;
    *(&v112 - 2) = v50;
    v53 = v138;
    sub_23A9AD220(sub_23A9BABA0, v50, v138);
    v9 = v40;

    v54 = sub_23AA0C514();
    LODWORD(v50) = (*(*(v54 - 8) + 48))(v53, 1, v54);
    sub_23A8D50D0(v53, &qword_27DFB0DC8, &unk_23AA1AA50);
    if (v50 != 1)
    {
      goto LABEL_4;
    }

    v55 = *(v127 + v126);
    if (*(v55 + 16))
    {

      v56 = sub_23A9EDD28(v35);
      if (v57)
      {
        v58 = *(v123 + 72);
        v59 = v116;
        sub_23A9BABC4(*(v55 + 56) + v58 * v56, v116, type metadata accessor for CapturedRoom.Surface);

        v60 = v121;
        sub_23A9BAC8C(v59, v121, type metadata accessor for CapturedRoom.Surface);
        sub_23A9BABC4(v60, v122, type metadata accessor for CapturedRoom.Surface);
        v61 = v124;
        v62 = *v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v61 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_23A938A00(0, v62[2] + 1, 1, v62);
          *v124 = v62;
        }

        v65 = v62[2];
        v64 = v62[3];
        if (v65 >= v64 >> 1)
        {
          v110 = sub_23A938A00((v64 > 1), v65 + 1, 1, v62);
          *v124 = v110;
        }

        sub_23A9BAC2C(v121, type metadata accessor for CapturedRoom.Surface);
        v66 = *v124;
        *(v66 + 16) = v65 + 1;
        v67 = v66 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + v65 * v58;
        v68 = type metadata accessor for CapturedRoom.Surface;
        v69 = &v151;
LABEL_41:
        sub_23A9BAC8C(*(v69 - 32), v67, v68);
LABEL_42:
        if ((*(a2 + 96) & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_4;
      }
    }

    v87 = *(v127 + v125);
    if (!*(v87 + 16))
    {
      goto LABEL_42;
    }

    v88 = sub_23A9EDD28(v35);
    if (v89)
    {
      v90 = *(v119 + 72);
      v91 = v115;
      sub_23A9BABC4(*(v87 + 56) + v90 * v88, v115, type metadata accessor for CapturedRoom.Object);

      v92 = v117;
      sub_23A9BAC8C(v91, v117, type metadata accessor for CapturedRoom.Object);
      sub_23A9BABC4(v92, v118, type metadata accessor for CapturedRoom.Object);
      v93 = v120;
      v94 = *v120;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *v93 = v94;
      if ((v95 & 1) == 0)
      {
        v94 = sub_23A93A178(0, v94[2] + 1, 1, v94);
        *v120 = v94;
      }

      v97 = v94[2];
      v96 = v94[3];
      if (v97 >= v96 >> 1)
      {
        v111 = sub_23A93A178((v96 > 1), v97 + 1, 1, v94);
        *v120 = v111;
      }

      sub_23A9BAC2C(v117, type metadata accessor for CapturedRoom.Object);
      v98 = *v120;
      *(v98 + 16) = v97 + 1;
      v67 = v98 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + v97 * v90;
      v68 = type metadata accessor for CapturedRoom.Object;
      v69 = &v147;
      goto LABEL_41;
    }

    if ((*(a2 + 96) & 1) == 0)
    {
LABEL_43:
      v99 = *(a2 + 48);
      v29 = v145;
      if (*(v99 + 16))
      {

        v100 = sub_23A9EDD28(v35);
        if (v101)
        {
          v102 = *(*(v99 + 56) + v100);

          if ((v102 & 1) == 0)
          {
            swift_beginAccess();
            v103 = swift_isUniquelyReferenced_nonNull_native();
            v152 = *(a2 + 48);
            *(a2 + 48) = 0x8000000000000000;
            sub_23A9DB1E4(1, v35, v103);
            *(a2 + 48) = v152;
            swift_endAccess();
            v104 = *(a2 + 56);

            v105 = sub_23A9AD45C(v35, v104);

            if (!v105)
            {
              (*v113)(v114, v35, v149);
              v106 = *(a2 + 56);
              v107 = swift_isUniquelyReferenced_nonNull_native();
              *(a2 + 56) = v106;
              if ((v107 & 1) == 0)
              {
                v106 = sub_23A9391E0(0, v106[2] + 1, 1, v106);
                *(a2 + 56) = v106;
              }

              v109 = v106[2];
              v108 = v106[3];
              if (v109 >= v108 >> 1)
              {
                v106 = sub_23A9391E0((v108 > 1), v109 + 1, 1, v106);
              }

              v106[2] = v109 + 1;
              (*(v133 + 32))(v106 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v109, v114, v149);
              *(a2 + 56) = v106;
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_5;
    }

LABEL_4:
    v29 = v145;
LABEL_5:
    (*v144)(v35, v149);

    v39 = v150 + 2;
    if (!--v151)
    {
      return;
    }
  }

  *&v143 = v42;
  swift_beginAccess();
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  sub_23A9DB1E4(0, v35, v70);
  *(a2 + 48) = v152;
  v71 = swift_endAccess();
  MEMORY[0x28223BE20](v71);
  *(&v112 - 2) = v35;
  swift_beginAccess();
  v72 = sub_23A9B774C(sub_23A9BAB80, (&v112 - 4));
  v73 = *(a2 + 56);
  v74 = v73[2];
  v75 = v74 - v72;
  if (v74 >= v72)
  {
    v76 = v72;
    if (v72 < 0)
    {
      goto LABEL_57;
    }

    v142 = &v112;
    v77 = v72 - v74;
    v78 = v72;
    if (__OFADD__(v74, v72 - v74))
    {
      goto LABEL_58;
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 56) = v73;
    v141 = v40;
    if (!v79 || v78 > v73[3] >> 1)
    {
      if (v74 <= v78)
      {
        v80 = v74 - v75;
      }

      else
      {
        v80 = v74;
      }

      v73 = sub_23A9391E0(v79, v80, 1, v73);
      *(a2 + 56) = v73;
    }

    v81 = v73 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v82 = *(v133 + 72);
    v83 = v82 * v76;
    swift_arrayDestroy();
    v35 = v146;
    if (v74 != v76)
    {
      if (v83 < v82 * v74 || &v81[v82 * v76] >= &v81[v82 * v74 + (v73[2] - v74) * v82])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v83 != v82 * v74)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v84 = v73[2];
      v85 = __OFADD__(v84, v77);
      v86 = v84 + v77;
      if (v85)
      {
        goto LABEL_59;
      }

      v73[2] = v86;
    }

    a2 = v128;
    *(v128 + 56) = v73;
    swift_endAccess();
    v9 = v141;
    goto LABEL_4;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_23A9B9164(uint64_t a1, __n128 *a2)
{
  v3 = sub_23AA0C184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v4 + 8))(v6, v3);
  RECustomMatrixCameraComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    RECustomMatrixCameraComponentSetProjectionFromMatrix();
    v8 = *a2;
    v20 = a2[1];
    v21 = v8;
    v9 = a2[3];
    v19 = a2[2];
    v22 = v9;
    sub_23AA0CAB4();
    v10 = sub_23AA0C2A4();
    v12 = v11;
    sub_23AA0DCD4();
    v18 = v13;
    sub_23AA0D4D4();
    v17 = v14;
    sub_23AA0D4C4();
    *v12 = v15;
    v16 = v18;
    v12[1] = v17;
    v12[2] = v16;
    return v10(v23, 0);
  }

  return result;
}

void sub_23A9B9314(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23AA0CF24();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_23A9BA16C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_109;
  v12 = _Block_copy(aBlock);

  v18[0] = a1;
  sub_23AA0CEE4();
  v21 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v20 + 8))(v6, v4);
  (*(v7 + 8))(v9, v19);

  v13 = *(v18[2] + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v13)
  {
    v14 = v13;
    sub_23AA0C934();
    v16 = v15;
    if (sub_23AA0C954())
    {
      v16 = [v18[0] renderFramesPerSecond];
    }

    sub_23AA0C594();
    sub_23AA0C584();
    sub_23AA0C574();

    v17 = sub_23AA0CB04();

    MEMORY[0x23EE90BD0](v17, v16);
  }
}

uint64_t sub_23A9B96B4(char a1)
{
  v3 = sub_23AA0CEC4();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CF24();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v9 = sub_23AA0D534();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_23A9BA0E8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_100;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_23AA0CEE4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_23A9B999C(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = sub_23AA0CEC4();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23AA0CF24();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v28 = a1[2];
  v29 = v12;
  v30 = a1[4];
  v13 = a1[1];
  v26 = *a1;
  v27 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 1;
  }

  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v15 = sub_23AA0D534();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v17 = v29;
  *(v16 + 64) = v28;
  *(v16 + 80) = v17;
  *(v16 + 96) = v30;
  v18 = v27;
  *(v16 + 32) = v26;
  *(v16 + 48) = v18;
  *(v16 + 112) = a2;
  aBlock[4] = sub_23A9B9D54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_23A9ACA9C(&v26, v24);
  v20 = a2;

  sub_23AA0CEE4();
  v24[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v11, v8, v19);
  _Block_release(v19);

  (*(v23 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v22);
}

uint64_t sub_23A9B9D04()
{

  return MEMORY[0x2821FE8E8](v0, 120, 15);
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A9B9D7C(char *a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23AA0CF24();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v11 = sub_23AA0D534();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v10;
  aBlock[4] = sub_23A9BA0A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_94;
  v13 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_23A9BA06C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A9BA0B0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A9BA0F4()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9BA12C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_111Tm()
{

  return MEMORY[0x2821FE8E8](v0, 120, 15);
}

uint64_t sub_23A9BA1E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 15);
}

uint64_t sub_23A9BA240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A9AC2A0;

  return sub_23A9B547C(a1, v4, v5, v6, (v1 + 6), v7);
}

uint64_t sub_23A9BA308()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9BA340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A9ACFF4;

  return sub_23A9B755C(a1, v4);
}

uint64_t sub_23A9BA3F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A9AC2A0;

  return sub_23A9B755C(a1, v4);
}

uint64_t sub_23A9BA4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9BA520()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23A9BA558()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_23A9BA580()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession) == 1)
  {
    return sub_23A9B2CA0();
  }

  return result;
}

uint64_t objectdestroy_152Tm()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_23AA0C0E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[17]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A9BA738(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CapturedRoom(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_166Tm()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_23AA0C0E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[17]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23A9BA944(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CapturedRoom(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

double sub_23A9BA9F0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager) = 0;

  return result;
}

uint64_t sub_23A9BAA08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9BAA74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_23A9BAAAC()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager);

  return result;
}

uint64_t sub_23A9BAAF8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23A9BAB3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9BABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9BAC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9BAC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9BACF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23A9BAD94(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_23A9BADA4(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_23A9BAE80(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v1 = swift_allocObject();
  *&v2 = -0.5 * *&a1;
  v3 = COERCE_UNSIGNED_INT(-0.5 * *&a1);
  DWORD1(v3) = vmuls_lane_f32(0.5, *&a1, 1);
  v1[1] = xmmword_23AA11C20;
  v1[2] = v3;
  *&v4 = 0.5 * *&a1;
  v5 = COERCE_UNSIGNED_INT(0.5 * *&a1);
  DWORD1(v5) = DWORD1(v3);
  HIDWORD(v4) = vmuls_lane_f32(-0.5, *&a1, 1);
  v1[3] = v5;
  v1[4] = v4;
  HIDWORD(v2) = HIDWORD(v4);
  v1[5] = v2;
  return *&v5;
}

char *sub_23A9BAF1C(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 16 * (v3 - 1) + 32);

  if (v3 == 1)
  {
    return a1;
  }

  v7 = a2 * a2;
  v8 = vsubq_f32(v19, *(a1 + 16 * v3));
  v9 = vmulq_f32(v8, v8);
  v5 = a1;
  if ((v9.f32[2] + vaddv_f32(*v9.f32)) < v7)
  {
    v5 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_23A975CD8(a1);
    }

    v10 = *(v5 + 2);
    if (v10 >= v3)
    {
      v11 = v10 - 1;
      memmove(&v5[16 * v3 + 16], &v5[16 * v3 + 32], 16 * (v10 - v3));
      *(v5 + 2) = v11;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:

    return a1;
  }

LABEL_10:
  v12 = 16 * v3 + 16;
  v13 = 1 - v3;
  do
  {
    v14 = v3 - 1;
    if ((v3 - 1) < 2)
    {
      break;
    }

    if (v3 - 3 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v15 = vsubq_f32(*(a1 + 16 * v3), *&v5[16 * v3 - 16]);
    v16 = vmulq_f32(v15, v15);
    if ((v16.f32[2] + vaddv_f32(*v16.f32)) < v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23A975CD8(v5);
      }

      v17 = *(v5 + 2);
      if (v14 > v17)
      {
        goto LABEL_20;
      }

      v18 = v17 - 1;
      memmove(&v5[v12 - 16], &v5[v12], 16 * (v13 + v17));
      *(v5 + 2) = v18;
    }

    v12 -= 16;
    ++v13;
    v3 = v14;
  }

  while (v14 != 1);
  return v5;
}

char *sub_23A9BB0CC(uint64_t a1, float a2)
{
  v2 = a1;
  v3 = a1 + 16;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 32 + 8 * (v4 - 1));

  if (v4 == 1)
  {
    return v2;
  }

  v8 = a2 * a2;
  v9 = vsub_f32(v6, *&v2[8 * v4 + 16]);
  if (vaddv_f32(vmul_f32(v9, v9)) < v8)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23A975C20(v2);
    }

    v10 = *(v2 + 2);
    if (v10 >= v4)
    {
      v11 = v10 - 1;
      memmove(&v2[8 * v4 + 24], &v2[8 * v4 + 32], 8 * (v10 - v4));
      *(v2 + 2) = v11;
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:

    return v2;
  }

LABEL_9:
  v12 = 1 - v4;
  do
  {
    v13 = v4 - 1;
    if ((v4 - 1) < 2)
    {
      break;
    }

    if (v4 - 3 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = vsub_f32(*(v3 + 8 * v4), *&v2[8 * v4 + 8]);
    if (vaddv_f32(vmul_f32(v14, v14)) < v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_23A975C20(v2);
      }

      v15 = *(v2 + 2);
      if (v13 > v15)
      {
        goto LABEL_19;
      }

      v16 = v15 - 1;
      memmove(&v2[8 * v4 + 16], &v2[8 * v4 + 24], 8 * (v12 + v15));
      *(v2 + 2) = v16;
    }

    ++v12;
    --v4;
  }

  while (v13 != 1);
  return v2;
}

uint64_t type metadata accessor for DollHouseCamera(uint64_t a1)
{
  result = qword_27DFB0F30;
  if (!qword_27DFB0F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9BB29C(uint64_t a1)
{
  sub_23A8ECAC8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_23A9BB400()
{
  v1 = (v0 + qword_27DFB0DF8);
  v2 = *(v0 + qword_27DFB0DF8);
  *(v0 + qword_27DFB0DF8) = 0;

  v3 = (v0 + qword_27DFB0DE8);
  v4 = *(v0 + qword_27DFB0DE8);
  *(v0 + qword_27DFB0DE8) = 0;

  v5 = *(v0 + qword_27DFC09D8);
  if (v5 == 4)
  {
    v31 = *(v0 + qword_27DFB0EB0);
    v32 = *(v0 + qword_27DFB0EB8);
    v33 = objc_opt_self();
    v34 = *MEMORY[0x277CEEF50];
    [v33 floatForKey_];
    v36 = v35;
    v37 = *MEMORY[0x277CEEF40];
    [v33 floatForKey_];
    v39 = v38;
    v40 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v41) = v36;
    LODWORD(v42) = v31;
    LODWORD(v43) = v32;
    LODWORD(v44) = v39;
    v45 = [v40 initWithRubberBandFactor:v41 minOffset:v42 maxOffset:v43 overshoot:v44];
    v46 = *v1;
    *v1 = v45;

    v19 = *(v0 + qword_27DFB0EA0);
    v20 = *(v0 + qword_27DFB0EA8);
    [v33 floatForKey_];
    v23 = v47;
    [v33 floatForKey_];
    v25 = v48;
    v26 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v19 = *(v0 + qword_27DFB0EA0);
    v20 = *(v0 + qword_27DFB0EA8);
    v21 = objc_opt_self();
    [v21 floatForKey_];
    v23 = v22;
    [v21 floatForKey_];
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277CEEF78]);
LABEL_7:
    LODWORD(v27) = v23;
    LODWORD(v28) = v19;
    LODWORD(v29) = v20;
    LODWORD(v30) = v25;
    v18 = [v26 initWithRubberBandFactor:v27 minOffset:v28 maxOffset:v29 overshoot:v30];
    v1 = v3;
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    return;
  }

  v6 = *(v0 + qword_27DFB0EB0);
  v7 = *(v0 + qword_27DFB0EB8);
  v8 = objc_opt_self();
  [v8 floatForKey_];
  v10 = v9;
  [v8 floatForKey_];
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CEEF78]);
  LODWORD(v14) = v10;
  LODWORD(v15) = v6;
  LODWORD(v16) = v7;
  LODWORD(v17) = v12;
  v18 = [v13 initWithRubberBandFactor:v14 minOffset:v15 maxOffset:v16 overshoot:v17];
LABEL_8:
  *v1 = v18;

  MEMORY[0x2821F96F8]();
}

void sub_23A9BB708()
{
  v1 = v0;
  v2 = (v0 + qword_27DFB0DD0);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + qword_27DFB0DD8);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + qword_27DFB0DE0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + qword_27DFB0DE8) = 0;
  *(v0 + qword_27DFB0DF0) = 0;
  *(v0 + qword_27DFB0DF8) = 0;
  *(v0 + qword_27DFB0E00) = 0;
  *(v0 + qword_27DFB0E08) = 0;
  *(v0 + qword_27DFB0E10) = 0;
  *(v0 + qword_27DFB0E18) = 1065353216;
  *(v0 + qword_27DFB0E20) = 1084227584;
  *(v0 + qword_27DFB0E28) = 1065353216;
  *(v0 + qword_27DFB0E30) = 1084227584;
  *(v0 + qword_27DFB0E38) = 1084227584;
  v5 = (v0 + qword_27DFB0E40);
  v6 = *(MEMORY[0x277D860B8] + 16);
  v7 = *(MEMORY[0x277D860B8] + 32);
  v8 = *(MEMORY[0x277D860B8] + 48);
  *v5 = *MEMORY[0x277D860B8];
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  *(v0 + qword_27DFB0E50) = 1065353216;
  *(v0 + qword_27DFB0E58) = 0;
  *(v0 + qword_27DFB0E60) = 0;
  *(v0 + qword_27DFB0E68) = 0;
  *(v0 + qword_27DFB0E70) = 0;
  *(v0 + qword_27DFB0E78) = 0;
  *(v0 + qword_27DFB0E80) = 1065353216;
  *(v0 + qword_27DFB0E88) = 1065353216;
  *(v0 + qword_27DFB0E90) = 1065353216;
  *(v0 + qword_27DFB0E98) = -1085730854;
  *(v0 + qword_27DFB0EA0) = -1080452710;
  *(v0 + qword_27DFB0EA8) = -1098907648;
  *(v0 + qword_27DFB0EB0) = -1082130432;
  *(v0 + qword_27DFB0EB8) = 1065353216;
  v9 = qword_27DFC09A8;
  v10 = sub_23AA0C064();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + qword_27DFC09B0) = 0;
  *(v1 + qword_27DFC09B8) = 0;
  *(v1 + qword_27DFC09C0) = 0;
  *(v1 + qword_27DFC09C8) = 0;
  *(v1 + qword_27DFC09D0) = 0;
  *(v1 + qword_27DFC09D8) = 2;
  *(v1 + qword_27DFC09E0) = 1;
  *(v1 + qword_27DFC09E8) = 1;
  *(v1 + qword_27DFC09F0) = 1;
  v11 = qword_27DFB0EC8;
  sub_23AA0CAB4();
  swift_allocObject();
  *(v1 + v11) = sub_23AA0C1A4();
  v12 = qword_27DFB0ED0;
  swift_allocObject();
  *(v1 + v12) = sub_23AA0C1A4();
  v13 = qword_27DFB0ED8;
  swift_allocObject();
  *(v1 + v13) = sub_23AA0C1A4();
  v14 = qword_27DFB0EE0;
  swift_allocObject();
  *(v1 + v14) = sub_23AA0C1A4();
  *(v1 + qword_27DFB0EE8) = xmmword_23AA11AF0;
  *(v1 + qword_27DFB0EF0) = 0;
  *(v1 + qword_27DFB0EF8) = 0;
  *(v1 + qword_27DFB0F00) = 1;
  v15 = (v1 + qword_27DFB0F08);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + qword_27DFB0F10) = 0;
  *(v1 + qword_27DFB0F18) = xmmword_23AA12240;
  *(v1 + qword_27DFB0F20) = 0;
  *(v1 + qword_27DFB0F28) = 0;
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A9BBAEC(void *a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = (v4 + qword_27DFB0DD0);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + qword_27DFB0DD8);
  *v11 = 0;
  v11[1] = 0;
  v12 = v4 + qword_27DFB0DE0;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v4 + qword_27DFB0DE8) = 0;
  *(v4 + qword_27DFB0DF0) = 0;
  *(v4 + qword_27DFB0DF8) = 0;
  *(v4 + qword_27DFB0E00) = 0;
  *(v4 + qword_27DFB0E08) = 0;
  *(v4 + qword_27DFB0E10) = 0;
  *(v4 + qword_27DFB0E18) = 1065353216;
  *(v4 + qword_27DFB0E20) = 1084227584;
  *(v4 + qword_27DFB0E28) = 1065353216;
  *(v4 + qword_27DFB0E30) = 1084227584;
  *(v4 + qword_27DFB0E38) = 1084227584;
  v13 = (v4 + qword_27DFB0E40);
  v14 = *(MEMORY[0x277D860B8] + 16);
  v15 = *(MEMORY[0x277D860B8] + 32);
  v16 = *(MEMORY[0x277D860B8] + 48);
  *v13 = *MEMORY[0x277D860B8];
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  *(v4 + qword_27DFB0E50) = 1065353216;
  *(v4 + qword_27DFB0E58) = 0;
  *(v4 + qword_27DFB0E60) = 0;
  *(v4 + qword_27DFB0E68) = 0;
  *(v4 + qword_27DFB0E70) = 0;
  *(v4 + qword_27DFB0E78) = 0;
  *(v4 + qword_27DFB0E80) = 1065353216;
  *(v4 + qword_27DFB0E88) = 1065353216;
  *(v4 + qword_27DFB0E90) = 1065353216;
  *(v4 + qword_27DFB0E98) = -1085730854;
  *(v4 + qword_27DFB0EA0) = -1080452710;
  *(v4 + qword_27DFB0EA8) = -1098907648;
  *(v4 + qword_27DFB0EB0) = -1082130432;
  *(v4 + qword_27DFB0EB8) = 1065353216;
  v17 = qword_27DFC09A8;
  v18 = sub_23AA0C064();
  (*(*(v18 - 8) + 56))(v5 + v17, 1, 1, v18);
  *(v5 + qword_27DFC09B0) = 0;
  *(v5 + qword_27DFC09B8) = 0;
  *(v5 + qword_27DFC09C0) = 0;
  *(v5 + qword_27DFC09C8) = 0;
  *(v5 + qword_27DFC09D0) = 0;
  *(v5 + qword_27DFC09D8) = 2;
  *(v5 + qword_27DFC09E0) = 1;
  *(v5 + qword_27DFC09E8) = 1;
  *(v5 + qword_27DFC09F0) = 1;
  v19 = qword_27DFB0EC8;
  sub_23AA0CAB4();
  swift_allocObject();
  *(v5 + v19) = sub_23AA0C1A4();
  v20 = qword_27DFB0ED0;
  swift_allocObject();
  *(v5 + v20) = sub_23AA0C1A4();
  v21 = qword_27DFB0ED8;
  swift_allocObject();
  *(v5 + v21) = sub_23AA0C1A4();
  v22 = qword_27DFB0EE0;
  swift_allocObject();
  *(v5 + v22) = sub_23AA0C1A4();
  *(v5 + qword_27DFB0EE8) = xmmword_23AA11AF0;
  *(v5 + qword_27DFB0EF0) = 0;
  *(v5 + qword_27DFB0EF8) = 0;
  *(v5 + qword_27DFB0F00) = 1;
  v23 = (v5 + qword_27DFB0F08);
  *v23 = 0;
  v23[1] = 0;
  *(v5 + qword_27DFB0F10) = 0;
  *(v5 + qword_27DFB0F18) = xmmword_23AA12240;
  *(v5 + qword_27DFB0F20) = 0;
  *(v5 + qword_27DFB0F28) = 0;
  *(v5 + qword_27DFB0E48) = a4;
  *(v5 + qword_27DFC09F8) = a2;
  *(v5 + qword_27DFB0EC0) = a3 & 1;

  v24 = sub_23AA0C1A4();

  [a1 bounds];
  Width = CGRectGetWidth(v33);
  [a1 bounds];
  v26 = Width / CGRectGetHeight(v34);
  *(v24 + qword_27DFB0E18) = v26;
  REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
  v27 = (v24 + qword_27DFB0E40);
  *v27 = v28;
  v27[1] = v29;
  v27[2] = v30;
  v27[3] = v31;
  sub_23A9BBF80();

  return v24;
}

void sub_23A9BBF80()
{
  type metadata accessor for DollHouseCamera(0);

  sub_23AA0C214();

  sub_23AA0C214();

  sub_23AA0CAB4();

  sub_23AA0C214();

  sub_23AA0C214();

  sub_23AA0C214();

  sub_23A9BB400();
}

BOOL sub_23A9BC0F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_23AA0C064();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = qword_27DFC09A8;
  swift_beginAccess();
  sub_23A8ED91C(v1 + v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23A8ED8B4(v4);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_23AA0C044();
    sub_23AA0C014();
    v14 = v13;
    v15 = *(v6 + 8);
    v15(v8, v5);
    v15(v11, v5);
    if (v14 < 0.1)
    {
      return 1;
    }
  }

  if (*(v1 + qword_27DFB0E10) || *(v1 + qword_27DFB0E08))
  {
    return 1;
  }

  return *(v1 + qword_27DFB0E00) != 0;
}

uint64_t sub_23A9BC32C(__n128 a1, float a2)
{
  v34 = a1;
  v4 = sub_23AA0C184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __sincosf_stret(*(v2 + qword_27DFB0E58) * 0.5);
  *&v8 = v9.__cosval;
  v33 = v8;
  v32 = vmulq_n_f32(xmmword_23AA12220, v9.__sinval);
  v10 = __sincosf_stret(*(v2 + qword_27DFB0E60) * 0.5);
  v11 = vmulq_n_f32(xmmword_23AA12200, v10.__sinval);
  v11.i32[3] = LODWORD(v10.__cosval);
  v30 = v11;
  sub_23AA0CAB4();

  sub_23AA0C244();
  v31 = v12;

  v13 = vnegq_f32(v30);
  v14 = vtrn2q_s32(v30, vtrn1q_s32(v30, v13));
  v15 = vrev64q_s32(v30);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  simd_slerp(v31, vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v30, *&v33), v15, v32, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v30, v13, 8uLL), *v32.f32, 1), vextq_s8(v14, v14, 8uLL), v32.f32[0])), a2);
  v33 = v16;

  sub_23AA0C254();

  type metadata accessor for DollHouseCamera(0);
  sub_23AA0C284();
  sub_23AA0C294();
  type metadata accessor for ARViewCameraEntity(0);
  sub_23AA0C284();
  v18 = v17;
  v19 = qword_27DFB0E78;
  v20 = v17 + ((*(v2 + qword_27DFB0E78) - v17) * v34.n128_f32[0]);
  v21 = sub_23AA0C274();
  *(v22 + 8) = v20;
  v21(v35, 0);
  v23 = v34.n128_f32[0];
  *(v2 + qword_27DFB0E28) = *(v2 + qword_27DFB0E28) + ((*(v2 + qword_27DFB0E50) - *(v2 + qword_27DFB0E28)) * v34.n128_f32[0]);
  *(v2 + qword_27DFB0E20) = *(v2 + qword_27DFB0E20) + ((*(v2 + qword_27DFB0E38) - *(v2 + qword_27DFB0E20)) * v23);
  if (*(v2 + qword_27DFB0EC0))
  {
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v5 + 8))(v7, v4);
    REOrthographicCameraComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    return REOrthographicCameraComponentSetScale();
  }

  else
  {
    v25 = *(v2 + qword_27DFB0E40 + 48);
    v33 = *(v2 + qword_27DFB0E40 + 32);
    v34 = v25;
    v26 = *(v2 + qword_27DFB0E40 + 16);
    v31 = *(v2 + qword_27DFB0E40);
    v32 = v26;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v5 + 8))(v7, v4);
    RECustomMatrixCameraComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RECustomMatrixCameraComponentSetProjectionFromMatrix();
    v27 = v18 + (*(v2 + qword_27DFB0EF0) * ((*(v2 + v19) * *(v2 + qword_27DFB0E80)) - v18));
    v28 = sub_23AA0C274();
    *(v29 + 8) = v27;
    return v28(v35, 0);
  }
}

void sub_23A9BC788(double a1, double a2, float32x4_t a3)
{
  if (*(v3 + qword_27DFC09E0) == 1 && (*(v3 + qword_27DFB0F10) & 1) == 0)
  {
    v4 = vnegq_f32(a3);
    v4.i32[1] = 0;
    v5 = *(v3 + qword_27DFB0F18);
    v6 = vmulq_f32(v5, v5);
    v7 = vaddv_f32(*v6.f32);
    *v6.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7));
    *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32)));
    v8 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32))).f32[0]);
    v9 = vmulq_f32(v4, v4);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v13 = v8;
    v14 = vmulq_n_f32(v4, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v11 = vmulq_f32(v8, v14);
    v12 = acosf(v11.f32[2] + vaddv_f32(*v11.f32));
    if (vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v13)), v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL)).f32[0] < 0.0)
    {
      v12 = -v12;
    }

    *(v3 + qword_27DFB0E60) = *(v3 + qword_27DFB0E98);
    *(v3 + qword_27DFB0E68) = v12;
    *(v3 + qword_27DFB0E58) = v12;
    *(v3 + qword_27DFB0E50) = 1065353216;
  }
}

double sub_23A9BC8D4()
{
  sub_23A8ED8B4(v0 + qword_27DFC09A8);

  return result;
}

uint64_t sub_23A9BC9D4(__n128 a1)
{
  v1 = sub_23AA0CAC4();

  sub_23A8ED8B4(v1 + qword_27DFC09A8);

  return v1;
}

uint64_t sub_23A9BCADC(__n128 a1)
{
  sub_23A9BC9D4(a1);

  return swift_deallocClassInstance();
}

void sub_23A9BCB38(double a1, double a2, __n128 a3, __n128 a4)
{
  sub_23A98DF14(a1, a2, a3, a4);
  __asm { FMOV            V2.2S, #1.0 }
}

uint64_t sub_23A9BCBEC(unsigned __int8 *a1)
{
  v2 = *a1;
  *(v1 + 16) = v2;
  v3 = *(v1 + 24);
  *(v3 + 136) = v2;
  if (v2 == 1)
  {
    v4 = type metadata accessor for DebugMaterialFactory();
    v5 = &off_284D82570;
  }

  else
  {
    v4 = type metadata accessor for OcclusionMaterialFactory();
    v5 = &off_284D82600;
  }

  v8 = v4;
  v9 = v5;

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 32));
  sub_23A8CAA3C(&v7, v3 + 32);
  return swift_endAccess();
}

uint64_t sub_23A9BCCA4(uint64_t a1, float a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  sub_23AA0C1E4();
  swift_allocObject();
  *(v2 + 40) = sub_23AA0C1A4();
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v5 = sub_23A93BFA4();
  v6 = type metadata accessor for OcclusionMaterialFactory();
  swift_allocObject();
  v7 = sub_23A900BF8(v5);
  swift_unknownObjectRelease();
  *(v3 + 48) = v7;
  v8 = sub_23A93BFA4();
  v9 = type metadata accessor for DebugMaterialFactory();
  swift_allocObject();
  v10 = sub_23A900E38(v8);
  swift_unknownObjectRelease();
  *(v3 + 56) = v10;

  sub_23AA0C704();

  type metadata accessor for EdgeEntityFactory();
  v11 = swift_allocObject();
  *(v3 + 32) = v11;
  if (*(v3 + 16) == 1)
  {
    v6 = v9;
    v12 = &off_284D82570;
  }

  else
  {
    v12 = &off_284D82600;
  }

  v22[3] = v6;
  v22[4] = v12;

  v13 = type metadata accessor for EntityManager();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v6);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22[-1] - v16;
  (*(v18 + 16))(&v22[-1] - v16, v15);

  v19 = sub_23A8E90FC(v17, v11, 0, a2, v13, v6, v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *(v3 + 24) = v19;
  *(v19 + 72) = *(v3 + 40);
  swift_retain_n();

  if (*(v19 + 72))
  {
    sub_23AA0CAB4();

    sub_23AA0C214();
  }

  *(*(v3 + 24) + 24) = &off_284D86BC8;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_23A9BCFB8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A9BD044()
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v0 = off_27DFB17B0;
  swift_beginAccess();
  if (v0[40])
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_23A9BD1C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v24 = a7;
  v29 = a6;
  v31 = a1;
  v32 = a2;
  v10 = a4(0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v27 = *(a3 + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v25 = a5;
    v26 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v18 = *(v30 + 72);
      sub_23A8D52B8(a3 + v17 + v18 * v15, v14, a5);
      v19 = v31(v14);
      if (v7)
      {
        sub_23A8D5320(v14, a5);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_23A9C25A8(v14, v28, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24(0, *(v16 + 16) + 1, 1);
          v16 = v33;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v24(v21 > 1, v22 + 1, 1);
          v16 = v33;
        }

        *(v16 + 16) = v22 + 1;
        sub_23A9C25A8(v28, v16 + v17 + v22 * v18, v29);
        a5 = v25;
        a3 = v26;
      }

      else
      {
        sub_23A8D5320(v14, a5);
      }

      if (v27 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

int64x2_t *sub_23A9BD410(uint64_t a1, uint64_t a2)
{
  v2[1] = vdupq_n_s64(0x1EuLL);
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  v3 = MEMORY[0x277D84F90];
  v2[3].i64[0] = MEMORY[0x277D84F98];
  v2[3].i64[1] = v3;
  v2[5].i64[0] = 0;
  v2[5].i64[1] = 0xE000000000000000;
  v2[6].i8[0] = 0;
  v2[4].i64[0] = a1;
  v2[4].i64[1] = a2;
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v2 selector:sel_announcementFinished_ name:*MEMORY[0x277D76420] object:0];

  return v2;
}

double sub_23A9BD4B4(uint64_t a1)
{
  v3 = type metadata accessor for CapturedRoom.Object(0);
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = v75 - v6;
  MEMORY[0x28223BE20](v7);
  v80 = v75 - v8;
  v9 = type metadata accessor for CapturedRoom.Surface(0);
  v87 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = v75 - v12;
  MEMORY[0x28223BE20](v13);
  v85 = v75 - v14;
  v15 = sub_23AA0C0E4();
  v16 = *(v15 - 8);
  result = MEMORY[0x28223BE20](v15);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 96) & 1) == 0)
  {
    v20 = *(v1 + 32);
    if (v20 < 30)
    {
      *(v1 + 32) = v20 + 1;
      return result;
    }

    *(v1 + 32) = 0;
    swift_beginAccess();
    v21 = *(v1 + 56);
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      v55 = MEMORY[0x277D84F90];
      v56 = MEMORY[0x277D84F90];
LABEL_29:
      sub_23A9C18EC(v56, v55);
      v58 = v57;
      v60 = v59;

      v61 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v61 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23AA11C10;
        v63 = *MEMORY[0x277D76510];
        *(inited + 32) = *MEMORY[0x277D76510];
        v64 = MEMORY[0x277D839B0];
        *(inited + 40) = 1;
        v65 = *MEMORY[0x277D764E8];
        *(inited + 64) = v64;
        *(inited + 72) = v65;
        v66 = *MEMORY[0x277D764B8];
        type metadata accessor for UIAccessibilityPriority(0);
        *(inited + 104) = v67;
        *(inited + 80) = v66;
        v68 = v63;
        v69 = v65;
        v70 = v66;
        sub_23A9DD720(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB10B0, &unk_23AA1AA30);
        swift_arrayDestroy();
        v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v72 = sub_23AA0D104();

        type metadata accessor for Key(0);
        sub_23A9C288C(&qword_27DFAE970, type metadata accessor for Key, &unk_23AA11A24);
        v73 = sub_23AA0D024();

        v74 = [v71 initWithString:v72 attributes:v73];

        *(v1 + 96) = 1;
        UIAccessibilityPostNotification(*MEMORY[0x277D76438], v74);

        *(v1 + 56) = v23;
      }

      goto LABEL_33;
    }

    v76 = v1;
    v24 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
    v25 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
    v26 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v75[1] = v21;

    v91 = v24;
    swift_beginAccess();
    v84 = v25;
    swift_beginAccess();
    v28 = *(v16 + 16);
    v27 = v16 + 16;
    v90 = v28;
    v89 = *(v27 + 56);
    v29 = (v27 - 8);
    v83 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v79 = v27;
    v28(v19, v26, v15);
    while (1)
    {
      v30 = *(a1 + v91);
      if (*(v30 + 16))
      {

        v31 = sub_23A9EDD28(v19);
        if (v32)
        {
          v33 = *(v87 + 72);
          v34 = v78;
          sub_23A8D52B8(*(v30 + 56) + v33 * v31, v78, type metadata accessor for CapturedRoom.Surface);

          v35 = v34;
          v36 = v85;
          sub_23A9C25A8(v35, v85, type metadata accessor for CapturedRoom.Surface);
          sub_23A8D52B8(v36, v86, type metadata accessor for CapturedRoom.Surface);
          v37 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_23A938A00(0, v37[2] + 1, 1, v37);
          }

          v88 = v37;
          v39 = v37[2];
          v38 = v37[3];
          if (v39 >= v38 >> 1)
          {
            v88 = sub_23A938A00((v38 > 1), v39 + 1, 1, v88);
          }

          sub_23A8D5320(v85, type metadata accessor for CapturedRoom.Surface);
          (*v29)(v19, v15);
          v40 = v88;
          v88[2] = v39 + 1;
          v41 = v40 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + v39 * v33;
          v42 = type metadata accessor for CapturedRoom.Surface;
          v43 = &v93;
          goto LABEL_26;
        }
      }

      v44 = *(a1 + v84);
      if (!*(v44 + 16))
      {
        goto LABEL_8;
      }

      v45 = sub_23A9EDD28(v19);
      if ((v46 & 1) == 0)
      {

LABEL_8:
        (*v29)(v19, v15);
        goto LABEL_9;
      }

      v47 = a1;
      v48 = *(v82 + 72);
      v49 = v77;
      sub_23A8D52B8(*(v44 + 56) + v48 * v45, v77, type metadata accessor for CapturedRoom.Object);

      v50 = v80;
      sub_23A9C25A8(v49, v80, type metadata accessor for CapturedRoom.Object);
      sub_23A8D52B8(v50, v81, type metadata accessor for CapturedRoom.Object);
      v51 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_23A93A178(0, v51[2] + 1, 1, v51);
      }

      v83 = v51;
      v53 = v51[2];
      v52 = v51[3];
      a1 = v47;
      if (v53 >= v52 >> 1)
      {
        v83 = sub_23A93A178((v52 > 1), v53 + 1, 1, v83);
      }

      sub_23A8D5320(v80, type metadata accessor for CapturedRoom.Object);
      (*v29)(v19, v15);
      v54 = v83;
      v83[2] = v53 + 1;
      v41 = v54 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + v53 * v48;
      v42 = type metadata accessor for CapturedRoom.Object;
      v43 = &v92;
LABEL_26:
      sub_23A9C25A8(*(v43 - 32), v41, v42);
LABEL_9:
      v26 += v89;
      if (!--v22)
      {

        v1 = v76;
        v23 = MEMORY[0x277D84F90];
        v55 = v83;
        v56 = v88;
        goto LABEL_29;
      }

      v90(v19, v26, v15);
    }
  }

  swift_beginAccess();
  *(v1 + 56) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v1 + 48) = MEMORY[0x277D84F98];
LABEL_33:

  return result;
}

void sub_23A9BDE1C(void *a1)
{
  v2 = v1;
  v145 = type metadata accessor for CapturedRoom.Object(0);
  v150 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v148 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_23AA0C0E4();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v152 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v154 = &v144 - v7;
  MEMORY[0x28223BE20](v8);
  v158 = &v144 - v9;
  MEMORY[0x28223BE20](v10);
  v161 = &v144 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v144 - v13;
  v146 = type metadata accessor for CapturedRoom.Surface(0);
  v163 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v149 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v151 = &v144 - v17;
  MEMORY[0x28223BE20](v18);
  v153 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v144 - v21;
  v147 = a1;
  v160 = *a1;
  v159 = v160[2];
  if (!v159)
  {
LABEL_17:
    v43 = v147[1];
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = 0;
      v46 = v43 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v47 = *(v146 + 44);
      v160 = (v162 + 16);
      v157 = (v162 + 8);
      while (1)
      {
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_80;
        }

        v48 = v153;
        sub_23A8D52B8(v46 + *(v163 + 72) * v45, v153, type metadata accessor for CapturedRoom.Surface);
        v49 = v161;
        v159 = *v160;
        (v159)(v161, v48 + v47, v164);
        sub_23A8D5320(v48, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v2 + 48);
        v51 = v165;
        *(v2 + 48) = 0x8000000000000000;
        v52 = sub_23A9EDD28(v49);
        v54 = v51[2];
        v55 = (v53 & 1) == 0;
        v41 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v41)
        {
          goto LABEL_81;
        }

        v57 = v53;
        if (v51[3] < v56)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v71 = v52;
        sub_23A90F36C();
        v52 = v71;
        v59 = v165;
        if (v57)
        {
LABEL_19:
          *(v59[7] + v52) = 0;
          (*v157)(v161, v164);
          goto LABEL_20;
        }

LABEL_28:
        v60 = v47;
        v61 = v2;
        v62 = v46;
        v63 = v44;
        v64 = v43;
        v59[(v52 >> 6) + 8] |= 1 << v52;
        v65 = v161;
        v66 = v162;
        v67 = v59[6] + *(v162 + 72) * v52;
        v156 = v52;
        v68 = v164;
        (v159)(v67, v161, v164);
        *(v59[7] + v156) = 0;
        (*(v66 + 8))(v65, v68);
        v69 = v59[2];
        v41 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v41)
        {
          goto LABEL_89;
        }

        v59[2] = v70;
        v43 = v64;
        v44 = v63;
        v46 = v62;
        v2 = v61;
        v47 = v60;
LABEL_20:
        ++v45;
        *(v2 + 48) = v59;

        swift_endAccess();
        if (v44 == v45)
        {
          goto LABEL_32;
        }
      }

      sub_23A90A548(v56, isUniquelyReferenced_nonNull_native);
      v52 = sub_23A9EDD28(v161);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_93;
      }

LABEL_27:
      v59 = v165;
      if (v57)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_32:
    v72 = v147[3];
    v73 = v158;
    v161 = *(v72 + 16);
    if (v161)
    {
      v74 = 0;
      v160 = (v72 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
      v159 = *(v146 + 44);
      v75 = (v162 + 16);
      v76 = (v162 + 8);
      while (1)
      {
        if (v74 >= *(v72 + 16))
        {
          goto LABEL_82;
        }

        v77 = v151;
        sub_23A8D52B8(v160 + *(v163 + 72) * v74, v151, type metadata accessor for CapturedRoom.Surface);
        v78 = *v75;
        (*v75)(v73, (v77 + v159), v164);
        sub_23A8D5320(v77, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v2 + 48);
        v80 = v165;
        *(v2 + 48) = 0x8000000000000000;
        v81 = sub_23A9EDD28(v73);
        v83 = v80[2];
        v84 = (v82 & 1) == 0;
        v41 = __OFADD__(v83, v84);
        v85 = v83 + v84;
        if (v41)
        {
          goto LABEL_83;
        }

        v86 = v82;
        if (v80[3] < v85)
        {
          break;
        }

        if (v79)
        {
          goto LABEL_42;
        }

        v95 = v81;
        sub_23A90F36C();
        v81 = v95;
        v88 = v165;
        if (v86)
        {
LABEL_34:
          *(v88[7] + v81) = 0;
          (*v76)(v73, v164);
          goto LABEL_35;
        }

LABEL_43:
        v88[(v81 >> 6) + 8] |= 1 << v81;
        v89 = v162;
        v90 = v81;
        v91 = v164;
        v78(v88[6] + *(v162 + 72) * v81, v158, v164);
        *(v88[7] + v90) = 0;
        v92 = *(v89 + 8);
        v73 = v158;
        v92(v158, v91);
        v93 = v88[2];
        v41 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v41)
        {
          goto LABEL_90;
        }

        v88[2] = v94;
LABEL_35:
        ++v74;
        *(v2 + 48) = v88;

        swift_endAccess();
        if (v161 == v74)
        {
          goto LABEL_47;
        }
      }

      sub_23A90A548(v85, v79);
      v81 = sub_23A9EDD28(v73);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_93;
      }

LABEL_42:
      v88 = v165;
      if (v86)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }

LABEL_47:
    v96 = v147[2];
    v97 = v154;
    v161 = *(v96 + 16);
    if (v161)
    {
      v98 = 0;
      v160 = (v96 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
      v159 = *(v146 + 44);
      v99 = (v162 + 16);
      v100 = (v162 + 8);
      while (1)
      {
        if (v98 >= *(v96 + 16))
        {
          goto LABEL_84;
        }

        v101 = v149;
        sub_23A8D52B8(v160 + *(v163 + 72) * v98, v149, type metadata accessor for CapturedRoom.Surface);
        v102 = *v99;
        (*v99)(v97, (v101 + v159), v164);
        sub_23A8D5320(v101, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v2 + 48);
        v104 = v165;
        *(v2 + 48) = 0x8000000000000000;
        v105 = sub_23A9EDD28(v97);
        v107 = v104[2];
        v108 = (v106 & 1) == 0;
        v41 = __OFADD__(v107, v108);
        v109 = v107 + v108;
        if (v41)
        {
          goto LABEL_85;
        }

        v110 = v106;
        if (v104[3] < v109)
        {
          break;
        }

        if (v103)
        {
          goto LABEL_57;
        }

        v119 = v105;
        sub_23A90F36C();
        v105 = v119;
        v112 = v165;
        if (v110)
        {
LABEL_49:
          *(v112[7] + v105) = 0;
          (*v100)(v97, v164);
          goto LABEL_50;
        }

LABEL_58:
        v112[(v105 >> 6) + 8] |= 1 << v105;
        v113 = v162;
        v114 = v105;
        v115 = v164;
        v102(v112[6] + *(v162 + 72) * v105, v154, v164);
        *(v112[7] + v114) = 0;
        v116 = *(v113 + 8);
        v97 = v154;
        v116(v154, v115);
        v117 = v112[2];
        v41 = __OFADD__(v117, 1);
        v118 = v117 + 1;
        if (v41)
        {
          goto LABEL_91;
        }

        v112[2] = v118;
LABEL_50:
        ++v98;
        *(v2 + 48) = v112;

        swift_endAccess();
        if (v161 == v98)
        {
          goto LABEL_62;
        }
      }

      sub_23A90A548(v109, v103);
      v105 = sub_23A9EDD28(v97);
      if ((v110 & 1) != (v111 & 1))
      {
        goto LABEL_93;
      }

LABEL_57:
      v112 = v165;
      if (v110)
      {
        goto LABEL_49;
      }

      goto LABEL_58;
    }

LABEL_62:
    v120 = v147[5];
    v121 = v152;
    v163 = *(v120 + 16);
    if (!v163)
    {
      return;
    }

    v122 = 0;
    v161 = v120 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v160 = *(v145 + 32);
    v123 = (v162 + 16);
    v124 = (v162 + 8);
    while (1)
    {
      if (v122 >= *(v120 + 16))
      {
        goto LABEL_86;
      }

      v125 = v148;
      sub_23A8D52B8(v161 + *(v150 + 72) * v122, v148, type metadata accessor for CapturedRoom.Object);
      v126 = *v123;
      (*v123)(v121, v160 + v125, v164);
      sub_23A8D5320(v125, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v165 = *(v2 + 48);
      v128 = v165;
      *(v2 + 48) = 0x8000000000000000;
      v129 = sub_23A9EDD28(v121);
      v131 = v128[2];
      v132 = (v130 & 1) == 0;
      v41 = __OFADD__(v131, v132);
      v133 = v131 + v132;
      if (v41)
      {
        goto LABEL_87;
      }

      v134 = v130;
      if (v128[3] < v133)
      {
        break;
      }

      if (v127)
      {
        goto LABEL_72;
      }

      v143 = v129;
      sub_23A90F36C();
      v129 = v143;
      v136 = v165;
      if (v134)
      {
LABEL_64:
        *(v136[7] + v129) = 0;
        (*v124)(v121, v164);
        goto LABEL_65;
      }

LABEL_73:
      v136[(v129 >> 6) + 8] |= 1 << v129;
      v137 = v162;
      v138 = v129;
      v139 = v164;
      v126(v136[6] + *(v162 + 72) * v129, v152, v164);
      *(v136[7] + v138) = 0;
      v140 = *(v137 + 8);
      v121 = v152;
      v140(v152, v139);
      v141 = v136[2];
      v41 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v41)
      {
        goto LABEL_92;
      }

      v136[2] = v142;
LABEL_65:
      ++v122;
      *(v2 + 48) = v136;

      swift_endAccess();
      if (v163 == v122)
      {
        return;
      }
    }

    sub_23A90A548(v133, v127);
    v129 = sub_23A9EDD28(v121);
    if ((v134 & 1) != (v135 & 1))
    {
      goto LABEL_93;
    }

LABEL_72:
    v136 = v165;
    if (v134)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  v23 = 0;
  v157 = (v160 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
  v24 = *(v146 + 44);
  v25 = (v162 + 16);
  v155 = (v162 + 8);
  v156 = v24;
  while (v23 < v160[2])
  {
    sub_23A8D52B8(v157 + *(v163 + 72) * v23, v22, type metadata accessor for CapturedRoom.Surface);
    v26 = *v25;
    (*v25)(v14, &v22[v156], v164);
    sub_23A8D5320(v22, type metadata accessor for CapturedRoom.Surface);
    swift_beginAccess();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v165 = *(v2 + 48);
    v28 = v165;
    *(v2 + 48) = 0x8000000000000000;
    v30 = sub_23A9EDD28(v14);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_79;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (v27)
      {
        v37 = v165;
        if (v29)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A90F36C();
        v37 = v165;
        if (v34)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A90A548(v33, v27);
      v35 = sub_23A9EDD28(v14);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_93;
      }

      v30 = v35;
      v37 = v165;
      if (v34)
      {
LABEL_3:
        *(v37[7] + v30) = 0;
        (*v155)(v14, v164);
        goto LABEL_4;
      }
    }

    v37[(v30 >> 6) + 8] |= 1 << v30;
    v38 = v162;
    v39 = v164;
    v26((v37[6] + *(v162 + 72) * v30), v14, v164);
    *(v37[7] + v30) = 0;
    (*(v38 + 8))(v14, v39);
    v40 = v37[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_88;
    }

    v37[2] = v42;
LABEL_4:
    ++v23;
    *(v2 + 48) = v37;

    swift_endAccess();
    if (v159 == v23)
    {
      goto LABEL_17;
    }
  }

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
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_23AA0DC24();
  __break(1u);
}

uint64_t sub_23A9BEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v59);
  v61 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = sub_23AA0C0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v21 = sub_23AA0C504();
  type metadata accessor for ScanEntity(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_16;
  }

  v56 = v17;
  v57 = a2;
  v63 = v4;
  if (qword_27DFAE368 != -1)
  {
    v51 = v22;
    swift_once();
    v22 = v51;
  }

  v23 = qword_27DFC04B0;
  v24 = *(v13 + 16);
  v24(v20, v22 + qword_27DFC0620, v12);
  swift_beginAccess();
  v25 = *(v23 + 24);
  if (*(v25 + 16))
  {

    v26 = sub_23A9EDD28(v20);
    if (v27)
    {
      v55 = v21;
      v52 = v11;
      v28 = *(*(v25 + 56) + 8 * v26);
      v29 = *(v13 + 8);

      v53 = v29;
      v29(v20, v12);

      v30 = *(v23 + 24);
      if (!*(v30 + 16))
      {
LABEL_14:

LABEL_16:

        v35 = 0;
        return v35 & 1;
      }

      v54 = v28;

      v31 = sub_23A9EDD28(v57);
      if ((v32 & 1) == 0)
      {

        goto LABEL_16;
      }

      v33 = *(*(v30 + 56) + 8 * v31);

      v34 = v54;
      if (sub_23A9C2610(v54, v62))
      {

        goto LABEL_14;
      }

      v62 = v33;
      v37 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v24(v56, v34 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v12);
      if (*(v34 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 2)
      {
        v45 = 0;
        v46 = v56;
        v44 = v53;
LABEL_28:
        sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v50 = sub_23AA0D084();

        v44(v46, v12);
        v35 = (v50 ^ 1) & v45;
        return v35 & 1;
      }

      v38 = v52;
      v24(v52, v34 + v37, v12);
      (*(v13 + 56))(v38, 0, 1, v12);
      v39 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
      v40 = *(v59 + 48);
      v41 = v61;
      sub_23A8EA9A4(v38, v61);
      sub_23A8EA9A4(v62 + v39, v41 + v40);
      v42 = *(v13 + 48);
      if (v42(v41, 1, v12) == 1)
      {
        sub_23A8D50D0(v38, &unk_27DFB0970, &qword_23AA14E00);
        v43 = v42(v41 + v40, 1, v12);
        v44 = v53;
        if (v43 == 1)
        {
          sub_23A8D50D0(v41, &unk_27DFB0970, &qword_23AA14E00);
          v45 = 0;
LABEL_27:
          v46 = v56;
          goto LABEL_28;
        }
      }

      else
      {
        sub_23A8EA9A4(v41, v60);
        if (v42(v41 + v40, 1, v12) != 1)
        {
          v47 = v58;
          (*(v13 + 32))(v58, v41 + v40, v12);
          sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v48 = v60;
          v49 = sub_23AA0D084();
          v44 = v53;
          v53(v47, v12);
          sub_23A8D50D0(v52, &unk_27DFB0970, &qword_23AA14E00);
          v44(v48, v12);
          sub_23A8D50D0(v41, &unk_27DFB0970, &qword_23AA14E00);
          v45 = v49 ^ 1;
          goto LABEL_27;
        }

        sub_23A8D50D0(v52, &unk_27DFB0970, &qword_23AA14E00);
        v44 = v53;
        v53(v60, v12);
      }

      sub_23A8D50D0(v41, &qword_27DFAEC28, &unk_23AA1AA40);
      v45 = 1;
      goto LABEL_27;
    }
  }

  else
  {
  }

  (*(v13 + 8))(v20, v12);
  v35 = 0;
  return v35 & 1;
}

BOOL sub_23A9BF4B8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v2);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v33 - v8;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  v15 = sub_23AA0C504();
  v16 = swift_conformsToProtocol2();
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v35 = v4;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v18 = qword_27DFC04B0;
  (*(v17 + 8))(*v15, v17);
  swift_beginAccess();
  v19 = *(v18 + 24);
  if (!*(v19 + 16))
  {

LABEL_13:
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  v20 = sub_23A9EDD28(v14);
  if ((v21 & 1) == 0)
  {

    goto LABEL_13;
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  v23 = *(v10 + 8);

  v34 = v23;
  v23(v14, v9);

  if (*(v22 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 1)
  {

LABEL_15:

    return 0;
  }

  v24 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
  v25 = v39;
  (*(v10 + 16))(v39, v38 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v9);
  (*(v10 + 56))(v25, 0, 1, v9);
  v26 = *(v2 + 48);
  v33[1] = v22;
  v27 = v35;
  sub_23A8EA9A4(v22 + v24, v35);
  v38 = v26;
  sub_23A8EA9A4(v25, v27 + v26);
  v28 = *(v10 + 48);
  if (v28(v27, 1, v9) == 1)
  {

    sub_23A8D50D0(v25, &unk_27DFB0970, &qword_23AA14E00);
    if (v28(v27 + v38, 1, v9) == 1)
    {
      sub_23A8D50D0(v27, &unk_27DFB0970, &qword_23AA14E00);
      return 1;
    }

    goto LABEL_19;
  }

  v30 = v37;
  sub_23A8EA9A4(v27, v37);
  if (v28(v27 + v38, 1, v9) == 1)
  {

    sub_23A8D50D0(v39, &unk_27DFB0970, &qword_23AA14E00);
    v34(v30, v9);
LABEL_19:
    sub_23A8D50D0(v27, &qword_27DFAEC28, &unk_23AA1AA40);
    return 0;
  }

  v31 = v36;
  (*(v10 + 32))(v36, v27 + v38, v9);
  sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LODWORD(v38) = sub_23AA0D084();

  v32 = v34;
  v34(v31, v9);
  sub_23A8D50D0(v39, &unk_27DFB0970, &qword_23AA14E00);
  v32(v30, v9);
  sub_23A8D50D0(v27, &unk_27DFB0970, &qword_23AA14E00);
  return (v38 & 1) != 0;
}

uint64_t sub_23A9BFAD4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A9BFB40(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_23AA0C104();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23AA0D0F4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23AA0D0D4();
  MEMORY[0x28223BE20](v5 - 8);
  if (*a1 == 5)
  {
    return 0;
  }

  sub_23AA0D0C4();
  sub_23AA0D0B4();
  sub_23AA0D0A4();
  sub_23AA0D0B4();
  sub_23AA0D0E4();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9BFF84(_BYTE *a1)
{
  v1 = sub_23AA0C104();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23AA0D0F4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_23AA0D094();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9C0824(_BYTE *a1, uint64_t a2)
{
  v2 = sub_23AA0C104();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23AA0D0F4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23AA0D0D4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_23AA0D0C4();
  sub_23AA0D0B4();
  sub_23AA0D0A4();
  sub_23AA0D0B4();
  sub_23AA0D0E4();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9C159C(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Object(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = 0;
  v31 = a1;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  v32 = v9;
  do
  {
    v33 = v8;
    v34 = v10;
    v12 = *(&unk_284D805E0 + v8 + 32);
    if (v9)
    {
      v13 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v14 = *(v30 + 72);
      v15 = v31 + v13;
      v16 = MEMORY[0x277D84F90];
      do
      {
        sub_23A8D52B8(v15, v7, type metadata accessor for CapturedRoom.Object);
        if (*v7 == v12)
        {
          sub_23A9C25A8(v7, v4, type metadata accessor for CapturedRoom.Object);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A9760CC(0, *(v16 + 2) + 1, 1);
            v16 = v35;
          }

          v19 = *(v16 + 2);
          v18 = *(v16 + 3);
          if (v19 >= v18 >> 1)
          {
            sub_23A9760CC((v18 > 1), v19 + 1, 1);
            v16 = v35;
          }

          *(v16 + 2) = v19 + 1;
          sub_23A9C25A8(v4, &v16[v13 + v19 * v14], type metadata accessor for CapturedRoom.Object);
        }

        else
        {
          sub_23A8D5320(v7, type metadata accessor for CapturedRoom.Object);
        }

        v15 += v14;
        --v9;
      }

      while (v9);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v20 = *(v16 + 2);

    v10 = v34;
    if (v20)
    {
      v9 = v32;
      LOBYTE(v35) = v12;
      if (v20 == 1)
      {
        v21 = sub_23A9BFF84(&v35);
      }

      else
      {
        v21 = sub_23A9C0824(&v35, v20);
      }

      v23 = v21;
      v24 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23A9388F4(0, *(v10 + 2) + 1, 1, v10);
      }

      v26 = *(v10 + 2);
      v25 = *(v10 + 3);
      if (v26 >= v25 >> 1)
      {
        v10 = sub_23A9388F4((v25 > 1), v26 + 1, 1, v10);
      }

      *(v10 + 2) = v26 + 1;
      v27 = &v10[16 * v26];
      *(v27 + 4) = v23;
      *(v27 + 5) = v24;
      v11 = v33;
    }

    else
    {
      v9 = v32;
      v11 = v33;
    }

    v8 = v11 + 1;
  }

  while (v8 != 16);
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v28 = sub_23AA0D074();

  return v28;
}

void sub_23A9C18EC(uint64_t a1, uint64_t a2)
{
  v102[0] = a2;
  v3 = sub_23AA0C104();
  MEMORY[0x28223BE20](v3 - 8);
  v102[2] = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D0F4();
  MEMORY[0x28223BE20](v5 - 8);
  v102[1] = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CapturedRoom.Surface(0) - 8;
  MEMORY[0x28223BE20](v7);
  v106 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v105 = v102 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v110 = v102 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v102 - v16);
  v109 = v102 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v102 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v102 - v22;
  MEMORY[0x28223BE20](v24);
  v30 = v102 - v29;
  v31 = *(a1 + 16);
  if (v31)
  {
    v107 = v25;
    v108 = v28;
    v103 = v27;
    v32 = *(v26 + 72);
    v112 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v33 = a1 + v112;
    v111 = MEMORY[0x277D84F90];
    v34 = a1 + v112;
    v35 = v31;
    v104 = v23;
    do
    {
      sub_23A8D52B8(v34, v30, type metadata accessor for CapturedRoom.Surface);
      if (*v30 == 2)
      {
        sub_23A9C25A8(v30, v23, type metadata accessor for CapturedRoom.Surface);
        v36 = v111;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23A976018(0, *(v36 + 16) + 1, 1);
          v36 = v113[0];
        }

        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_23A976018((v38 > 1), v39 + 1, 1);
          v36 = v113[0];
        }

        *(v36 + 16) = v39 + 1;
        v111 = v36;
        v40 = v36 + v112 + v39 * v32;
        v23 = v104;
        sub_23A9C25A8(v104, v40, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v30, type metadata accessor for CapturedRoom.Surface);
      }

      v34 += v32;
      --v35;
    }

    while (v35);
    v41 = MEMORY[0x277D84F90];
    v42 = v33;
    v43 = v31;
    v44 = v103;
    do
    {
      sub_23A8D52B8(v42, v20, type metadata accessor for CapturedRoom.Surface);
      if (*v20 == 4)
      {
        sub_23A9C25A8(v20, v109, type metadata accessor for CapturedRoom.Surface);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v41;
        if ((v45 & 1) == 0)
        {
          sub_23A976018(0, *(v41 + 16) + 1, 1);
          v41 = v113[0];
        }

        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_23A976018((v46 > 1), v47 + 1, 1);
          v41 = v113[0];
        }

        *(v41 + 16) = v47 + 1;
        sub_23A9C25A8(v109, v41 + v112 + v47 * v32, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v20, type metadata accessor for CapturedRoom.Surface);
      }

      v42 += v32;
      --v43;
    }

    while (v43);
    v109 = v41;
    v48 = MEMORY[0x277D84F90];
    v49 = v33;
    v50 = v31;
    v52 = v107;
    v51 = v108;
    do
    {
      sub_23A8D52B8(v49, v52, type metadata accessor for CapturedRoom.Surface);
      if (*v52 == 3)
      {
        sub_23A9C25A8(v52, v110, type metadata accessor for CapturedRoom.Surface);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v48;
        if ((v53 & 1) == 0)
        {
          sub_23A976018(0, *(v48 + 16) + 1, 1);
          v48 = v113[0];
        }

        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_23A976018((v54 > 1), v55 + 1, 1);
          v48 = v113[0];
        }

        *(v48 + 16) = v55 + 1;
        sub_23A9C25A8(v110, v48 + v112 + v55 * v32, type metadata accessor for CapturedRoom.Surface);
        v52 = v107;
        v51 = v108;
      }

      else
      {
        sub_23A8D5320(v52, type metadata accessor for CapturedRoom.Surface);
      }

      v49 += v32;
      --v50;
    }

    while (v50);
    v56 = MEMORY[0x277D84F90];
    v57 = v33;
    v58 = v31;
    do
    {
      sub_23A8D52B8(v57, v51, type metadata accessor for CapturedRoom.Surface);
      if (*v51 - 2) < 4u || (*v51)
      {
        sub_23A8D5320(v51, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A9C25A8(v51, v105, type metadata accessor for CapturedRoom.Surface);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v56;
        if ((v59 & 1) == 0)
        {
          sub_23A976018(0, *(v56 + 16) + 1, 1);
          v56 = v113[0];
        }

        v61 = *(v56 + 16);
        v60 = *(v56 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_23A976018((v60 > 1), v61 + 1, 1);
          v56 = v113[0];
        }

        *(v56 + 16) = v61 + 1;
        sub_23A9C25A8(v105, v56 + v112 + v61 * v32, type metadata accessor for CapturedRoom.Surface);
        v44 = v103;
        v51 = v108;
      }

      v57 += v32;
      --v58;
    }

    while (v58);
    v62 = MEMORY[0x277D84F90];
    do
    {
      sub_23A8D52B8(v33, v44, type metadata accessor for CapturedRoom.Surface);
      if (*v44 - 2) >= 4u && (*v44)
      {
        sub_23A9C25A8(v44, v106, type metadata accessor for CapturedRoom.Surface);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v62;
        if ((v63 & 1) == 0)
        {
          sub_23A976018(0, *(v62 + 16) + 1, 1);
          v62 = v113[0];
        }

        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_23A976018((v64 > 1), v65 + 1, 1);
          v62 = v113[0];
        }

        *(v62 + 16) = v65 + 1;
        sub_23A9C25A8(v106, v62 + v112 + v65 * v32, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v44, type metadata accessor for CapturedRoom.Surface);
      }

      v33 += v32;
      --v31;
    }

    while (v31);
    v66 = v111;
    v67 = v109;
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
  }

  v113[0] = v56;
  sub_23A911B78(v62);
  v68 = v113[0];
  v69 = *(v66 + 16);

  v70 = *(v67 + 16);

  v71 = v69 + v70;
  if (__OFADD__(v69, v70))
  {
    __break(1u);
    goto LABEL_81;
  }

  v72 = *(v48 + 16);

  v73 = v71 + v72;
  if (__OFADD__(v71, v72))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v74 = *(v68 + 16);

  if (__OFADD__(v73, v74))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (!v69)
  {
    v112 = 0xE000000000000000;
    if (v70)
    {
      goto LABEL_63;
    }

LABEL_58:
    v111 = 0xE000000000000000;
    v79 = v73 + v74;
    if (v72)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  if (v69 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v76 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v77 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v113[0]) = 2;
    v77 = sub_23A9BFB40(v113, v69);
  }

  v69 = v77;
  v112 = v78;
  if (!v70)
  {
    goto LABEL_58;
  }

LABEL_63:
  if (v70 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    v82 = swift_getObjCClassFromMetadata();
    v83 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v84 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v113[0]) = 4;
    v84 = sub_23A9BFB40(v113, v70);
  }

  v70 = v84;
  v111 = v85;
  v79 = v73 + v74;
  if (v72)
  {
LABEL_67:
    if (v72 == 1)
    {
      sub_23AA0D094();
      type metadata accessor for VoiceOverManager();
      v86 = swift_getObjCClassFromMetadata();
      v87 = [objc_opt_self() bundleForClass_];
      sub_23AA0C0F4();
      v88 = sub_23AA0D194();
    }

    else
    {
      LOBYTE(v113[0]) = 3;
      v88 = sub_23A9BFB40(v113, v72);
    }

    v72 = v88;
    v80 = v89;
    if (v74)
    {
      goto LABEL_71;
    }

LABEL_60:
    v81 = 0xE000000000000000;
    goto LABEL_75;
  }

LABEL_59:
  v80 = 0xE000000000000000;
  if (!v74)
  {
    goto LABEL_60;
  }

LABEL_71:
  if (v74 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    v90 = swift_getObjCClassFromMetadata();
    v91 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v92 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v113[0]) = 0;
    v92 = sub_23A9BFB40(v113, v74);
  }

  v74 = v92;
  v81 = v93;
LABEL_75:
  v94 = v102[0];
  v95 = sub_23A9C159C(v102[0]);
  v97 = *(v94 + 16);
  v98 = __OFADD__(v79, v97);
  v99 = v79 + v97;
  if (v98)
  {
LABEL_83:
    __break(1u);
    return;
  }

  v100 = v96;
  if (v99 <= 0)
  {
  }

  else
  {
    v101 = v95;
    v113[0] = v69;
    v113[1] = v112;
    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v74, v81);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v70, v111);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v72, v80);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v101, v100);
  }
}

uint64_t sub_23A9C25A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9C2610(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA0C514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DC8, &unk_23AA1AA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_23A8D7CF0();
  if (v11 >> 62)
  {
    v21 = sub_23AA0D7F4();

    if (v21)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v12)
  {
    return 0;
  }

LABEL_3:
  v13 = *(a2 + 16);
  if (v13)
  {
    v24 = v10;
    v25 = v5;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    while (1)
    {
      v14(v7, v17, v4);
      if (sub_23A9BF4B8(v7, a1))
      {
        break;
      }

      (*(v15 - 8))(v7, v4);
      v17 += v18;
      if (!--v13)
      {
        v19 = 0;
        v20 = 1;
        v10 = v24;
        v5 = v25;
        goto LABEL_10;
      }
    }

    v10 = v24;
    v5 = v25;
    (*(v25 + 32))(v24, v7, v4);
    v20 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 1;
  }

LABEL_10:
  (*(v5 + 56))(v10, v20, 1, v4);
  sub_23A8D50D0(v10, &qword_27DFB0DC8, &unk_23AA1AA50);
  return v19;
}

uint64_t sub_23A9C288C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_23A9C28D4()
{
  v0 = sub_23A9C2A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F48, qword_23AA1AA70);
  result = swift_allocObject();
  result[1] = xmmword_23AA1AA60;
  v2 = *(v0 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = *(v0 + 32);
  result[2] = v4;
  if (v2 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v0 + 48);
  result[3] = v5;
  result[4] = v5;
  if (v2 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v0 + 64);
  result[5] = v6;
  result[6] = v6;
  if (v2 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 80);
  result[7] = v7;
  result[8] = v7;
  result[9] = v4;
  if (v2 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v0 + 96);
  result[10] = v8;
  if (v2 == 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v0 + 112);
  result[11] = v9;
  result[12] = v9;
  if (v2 < 7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v0 + 128);
  result[13] = v10;
  result[14] = v10;
  if (v2 != 7)
  {
    v12 = v4;
    v13 = *(v0 + 144);
    v15 = v5;
    v17 = v6;
    v18 = v7;
    v11 = v8;
    v14 = v9;
    v16 = v10;

    v3[15] = v13;
    v3[16] = v13;
    v3[17] = v11;
    v3[18] = v12;
    v3[19] = v11;
    v3[20] = v15;
    v3[21] = v14;
    v3[22] = v17;
    v3[23] = v16;
    v3[24] = v18;
    v3[25] = v13;
    return v3;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23A9C2A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  *&v34 = 0.5 * v1.f32[0];
  LODWORD(v2) = HIDWORD(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions));
  v36 = vmuls_lane_f32(0.5, *v1.f32, 1);
  v38 = v1.f32[0];
  v3 = COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 8));
  v40 = vmuls_lane_f32(0.5, v1, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  LODWORD(v5) = v34;
  v6 = v34;
  *(&v6 + 1) = -(v2 * 0.5);
  v7 = v6;
  *(&v7 + 2) = -(v3 * 0.5);
  *(&v5 + 1) = v36;
  v8 = v5;
  *(&v8 + 2) = *(&v7 + 2);
  *&v9 = -(v38 * 0.5);
  v10 = v9;
  *(&v10 + 1) = v36;
  v11 = v10;
  *(&v11 + 2) = *(&v7 + 2);
  *(&v9 + 1) = *(&v6 + 1);
  v12 = v9;
  *(&v12 + 2) = *(&v7 + 2);
  v4[2] = v7;
  v4[3] = v8;
  *(&v6 + 2) = v40;
  *(&v5 + 1) = LODWORD(v40);
  v4[4] = v11;
  v4[5] = v12;
  *(&v10 + 2) = v40;
  *(&v9 + 1) = LODWORD(v40);
  v4[6] = v6;
  v4[7] = v5;
  v4[8] = v10;
  v4[9] = v9;
  v13 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v14 = sub_23A975F34(0, 8, 0);
  v15 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  v16 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  for (i = 2; i != 10; ++i)
  {
    v41 = v4[i];
    v14 = MEMORY[0x23EE8FF80](v14, *(v0 + v15), *(v0 + v16), xmmword_23AA11AF0);
    v23 = *(v43 + 16);
    v22 = *(v43 + 24);
    if (v23 >= v22 >> 1)
    {
      v35 = v21;
      v37 = v20;
      v32 = v18;
      v33 = v19;
      v14 = sub_23A975F34((v22 > 1), v23 + 1, 1);
      v18 = v32;
      v19 = v33;
      v21 = v35;
      v20 = v37;
    }

    *(v43 + 16) = v23 + 1;
    *(v43 + 16 * v23 + 32) = vaddq_f32(v21, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v41.f32[0]), v19, *v41.f32, 1), v20, v41, 2));
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v24 = *(v43 + 16);
  if (v24)
  {
    sub_23A975DC0(0, v24, 0);
    v26 = v13;
    v27 = *(v13 + 16);
    v28 = 32;
    do
    {
      v29 = *(v43 + v28);
      v30 = *(v26 + 24);
      if (v27 >= v30 >> 1)
      {
        v39 = *(v43 + v28);
        v42 = v25;
        sub_23A975DC0((v30 > 1), v27 + 1, 1);
        v29 = v39;
        v25 = v42;
      }

      HIDWORD(v29) = v25;
      *(v26 + 16) = v27 + 1;
      *(v26 + 16 * v27 + 32) = v29;
      v28 += 16;
      ++v27;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v26;
}

unint64_t sub_23A9C2CF0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000014, 0x800000023AA22B30);
    v5 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v5);

    v4 = ") doesn't match texture vertex count (";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000014, 0x800000023AA22AE0);
    v3 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v3);

    v4 = ") doesn't match texture normal count (";
LABEL_5:
    MEMORY[0x23EE8FCA0](0xD000000000000026, (v4 - 32) | 0x8000000000000000);
    v6 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v6);

    MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
    return 0;
  }

  v8 = 0xD00000000000003ELL;
  if (!(a1 ^ 1 | a2))
  {
    v8 = 0xD000000000000023;
  }

  if (a1 | a2)
  {
    return v8;
  }

  else
  {
    return 0xD000000000000025;
  }
}

void sub_23A9C2F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount);
  if (v3 != v4)
  {
    sub_23A901114();
    swift_allocError();
    v15 = 0;
    v16 = v3;
    v3 = v4;
    goto LABEL_12;
  }

  v5 = 0;
  v33 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture);
  v27 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow);
  v29 = (a1 + 32);
  do
  {
    if (v3)
    {
      v32.i64[0] = MEMORY[0x277D84F90];
      sub_23A975DF0(0, v3, 0);
      v7 = v32.i64[0];
      v8 = *(v32.i64[0] + 16);
      v9 = v29;
      v10 = v3;
      do
      {
        v11 = *v9;
        v32.i64[0] = v7;
        v12 = *(v7 + 24);
        if (v8 >= v12 >> 1)
        {
          v25 = v11;
          sub_23A975DF0((v12 > 1), v8 + 1, 1);
          v11 = v25;
          v7 = v32.i64[0];
        }

        v31 = v11;
        v13 = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        *(v7 + 16) = v8 + 1;
        *(v7 + 4 * v8 + 32) = v13;
        ++v9;
        ++v8;
        --v10;
      }

      while (v10);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    MTLRegionMake2D(v5, v3, &v32);
    [v33 replaceRegion:&v32 mipmapLevel:0 withBytes:v7 + 32 bytesPerRow:v6];

    ++v5;
  }

  while (v5 != 3);
  if (*(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) == 1)
  {
    v16 = *(a2 + 16);
    if (v16 == v3)
    {
      for (i = 0; i != 3; ++i)
      {
        if (v3)
        {
          v32.i64[0] = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v3, 0);
          v18 = v32.i64[0];
          v19 = *(v32.i64[0] + 16);
          v20 = (a2 + 32);
          v21 = v3;
          do
          {
            v22 = *v20;
            v32.i64[0] = v18;
            v23 = *(v18 + 24);
            if (v19 >= v23 >> 1)
            {
              v28 = v22;
              sub_23A975DF0((v23 > 1), v19 + 1, 1);
              v22 = v28;
              v18 = v32.i64[0];
            }

            v30 = v22;
            v24 = *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
            *(v18 + 16) = v19 + 1;
            *(v18 + 4 * v19 + 32) = v24;
            ++v20;
            ++v19;
            --v21;
          }

          while (v21);
        }

        else
        {
          v18 = MEMORY[0x277D84F90];
        }

        MTLRegionMake2D(i + 3, v3, &v32);
        [v33 replaceRegion:&v32 mipmapLevel:0 withBytes:v18 + 32 bytesPerRow:v6];
      }

      return;
    }

    sub_23A901114();
    swift_allocError();
    v15 = 1;
LABEL_12:
    *v14 = v16;
    *(v14 + 8) = v3;
    *(v14 + 16) = v15;
    swift_willThrow();
  }
}

uint64_t sub_23A9C325C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture;
  v2 = sub_23AA0CBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeshParamTexture(uint64_t a1)
{
  result = qword_27DFB0F68;
  if (!qword_27DFB0F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9C335C(uint64_t a1)
{
  result = sub_23AA0CBB4();
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

int64x2_t MTLRegionMake2D@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  a3->i64[0] = 0;
  *(a3 + 8) = a1;
  a3[1].i64[1] = a2;
  result = vdupq_n_s64(1uLL);
  a3[2] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshParamTextureError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshParamTextureError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23A9C34B4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23A9C34CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

float32x2_t *sub_23A9C34F8(double a1, double a2, double a3, float a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA15450;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  v4[2] = v9;
  __asm { FMOV            V1.2S, #3.0 }

  v4[3] = vdiv_f32(vadd_f32(vadd_f32(*&a1, *&a2), *&a3), _D1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA12130;
  type metadata accessor for CDTEdge();
  swift_allocObject();
  *(v15 + 32) = sub_23A947224(a1, a2);
  swift_allocObject();
  *(v15 + 40) = sub_23A947224(a2, a3);
  swift_allocObject();
  *(v15 + 48) = sub_23A947224(a3, a1);
  v4[4] = sub_23A9C8B2C(v15);
  v16 = vsub_f32(*&a2, *&a1);
  v17 = vrev64_s32(v16);
  v18 = vsub_f32(*&a3, *&a2);
  v19 = vmul_f32(v17, v18);
  v18.f32[0] = fabsf(vsub_f32(v19, vdup_lane_s32(v19, 1)).f32[0] / sqrtf(vaddv_f32(vmul_f32(v18, v18))));
  v20 = vsub_f32(*&a3, *&a1);
  v21 = vmul_f32(vsub_f32(*&a1, *&a2), vrev64_s32(v20));
  v22 = vmul_f32(v20, v20);
  v23 = vmul_f32(v17, vsub_f32(*&a1, *&a3));
  v24 = vmul_f32(v16, v16);
  v25 = vabs_f32(vdiv_f32(vsub_f32(vzip2_s32(v23, v21), vzip1_s32(v23, v21)), vsqrt_f32(vadd_f32(vzip1_s32(v24, v22), vzip2_s32(v24, v22)))));
  v26 = vcgt_f32(0x3400000034000000, v25);
  v4[5].i8[0] = (v18.f32[0] < 0.00000011921) | (v26.i8[4] | v26.i8[0]) & 1;
  v4[5].i8[1] = fminf(fminf(v18.f32[0], v25.f32[1]), v25.f32[0]) < a4;
  v28 = v4[2];
  swift_bridgeObjectRetain_n();
  sub_23A946A58(&v28);

  v4[6] = v28;
  return v4;
}

void sub_23A9C3768()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[4];
    v4 = *&v2 - 1;
    if (*&v2 != 1)
    {
      v5 = v1 + 5;
      v6 = v1[4];
      do
      {
        v7 = *v5++;
        v8 = v7;
        v20 = vcgt_f32(v6, v7);
        if (*(&v20 | (4 * (fabsf(vsub_f32(v7, v6).f32[0]) < 0.00000011921))))
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        v10 = vdup_n_s32(v9);
        v3 = vbsl_s8(v10, v8, v3);
        v6 = vbsl_s8(v10, v8, v6);
        --v4;
      }

      while (v4);
    }

    v11 = 0;
    v12 = v1;
    while (v11 < *&v1[2])
    {
      v13 = vceq_f32(v1[v11 + 4], v3);
      if (v13.i32[0] & v13.i32[1])
      {
        return;
      }

      v14 = *(v12 + 2);
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v17 = *(v12 + 3), v18 = v17 >> 1, v17 >> 1 < v14 - 1))
      {
        v12 = sub_23A938A28(isUniquelyReferenced_nonNull_native, v14, 1, v12);
        v17 = *(v12 + 3);
        v18 = v17 >> 1;
      }

      v19 = *(v12 + 2);
      memmove(v12 + 32, v12 + 40, 8 * v19 - 8);
      *(v12 + 2) = v19 - 1;
      if (v18 < v19)
      {
        v12 = sub_23A938A28((v17 > 1), v19, 1, v12);
      }

      ++v11;
      *(v12 + 2) = v19;
      *&v12[8 * v19 + 24] = v15;
      if (*&v2 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_23A9C3918()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A9C3984()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v4 = sub_23AA0DC84();
      result = MEMORY[0x23EE907C0](v4);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23A9C3A08()
{
  sub_23AA0DD14();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v4 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_23AA0DD54();
}

uint64_t sub_23A9C3AC0()
{
  v1 = *(*v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v4 = sub_23AA0DC84();
      result = MEMORY[0x23EE907C0](v4);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23A9C3B48()
{
  sub_23AA0DD14();
  sub_23A9C3984();
  return sub_23AA0DD54();
}

unint64_t sub_23A9C3BA0()
{
  result = qword_27DFB0F78;
  if (!qword_27DFB0F78)
  {
    type metadata accessor for CDTTriangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0F78);
  }

  return result;
}

uint64_t sub_23A9C3BF4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1110, &qword_23AA1ACB8);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_23AA0C7C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x277CDB5F0];
  v26 = sub_23A9C8A24(&qword_27DFB1118, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
  sub_23AA0D714();
  v18 = v17;
  v19 = v29;
  sub_23A9C8A24(&unk_27DFB1120, v18, MEMORY[0x277CDB5F8]);
  v27 = a2;
  v20 = sub_23AA0D084();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_23AA0D744();
  }

  v23 = v30;
  sub_23A930208(v7, v30, &qword_27DFB1110, &qword_23AA1ACB8);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t sub_23A9C3EF8(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10F8, &qword_23AA1ACB0);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_23AA0C864();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x277CDB620];
  v26 = sub_23A9C8A24(&qword_27DFB1100, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
  sub_23AA0D714();
  v18 = v17;
  v19 = v29;
  sub_23A9C8A24(&qword_27DFB1108, v18, MEMORY[0x277CDB628]);
  v27 = a2;
  v20 = sub_23AA0D084();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_23AA0D744();
  }

  v23 = v30;
  sub_23A930208(v7, v30, &qword_27DFB10F8, &qword_23AA1ACB0);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

void sub_23A9C41FC(__n128 a1)
{
  v2 = v1;
  sub_23A9C7480();
  v3 = &v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
  *v3 = 0;
  *(v3 + 1) = 0;

  v4 = &v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  *v4 = 0;
  *(v4 + 1) = 0;

  v5 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse;
  v6 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v6 + qword_27DFAE5F8) = 0;

  sub_23A8C6668();

  v7 = *&v2[v5];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v7 + qword_27DFAE5C8) = 0;
  v8 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v9 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  sub_23AA08908();

  v11 = *&v2[v8];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_23AA07DB0();
  sub_23AA08688(v2, v13, v14, v15, v16);

  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v45.origin.x = v19;
  v45.origin.y = v21;
  v45.size.width = v23;
  v45.size.height = v25;
  Width = CGRectGetWidth(v45);
  v27 = *&v2[v8];
  if (v27)
  {
    v28 = Width;
    [v27 bounds];
    v29 = v28 / CGRectGetWidth(v46);
    v30 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment;
    *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = v29 * 1.075;
    sub_23A9C6E84(1);
    v31 = v28 / (v28 + -40.0);
    *&v2[v30] = v31;
    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = v2;
    v43 = sub_23A9C89D4;
    v44 = v33;
    v39 = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_23A9AD0B8;
    v42 = &block_descriptor_37;
    v34 = _Block_copy(&v39);
    v35 = v2;

    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v43 = sub_23A9C89DC;
    v44 = v36;
    v39 = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_23A8CBE48;
    v42 = &block_descriptor_43;
    v37 = _Block_copy(&v39);
    v38 = v35;

    [v32 animateWithDuration:v34 animations:v37 completion:1.5];
    _Block_release(v37);
    _Block_release(v34);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_23A9C4518(__n128 a1)
{
  sub_23A9C7480();
  *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = 1065982362;
  v2 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v2)
  {
    *(v2 + qword_27DFB0E50) = 1065353216;
    *(v2 + qword_27DFB0E80) = 1065353216;
    *(v2 + qword_27DFB0E58) = 0;
    *(v2 + qword_27DFB0F00) = 1;
    *(v2 + qword_27DFC09E0) = 1;
  }

  sub_23A9C77D0();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_23A9C89CC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23A9AD0B8;
  v7[3] = &block_descriptor_31;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:1.5];
  _Block_release(v5);
}

void sub_23A9C4680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v32 = a3;
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for CapturedRoom(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v29 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v29 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v29 - v23);
  sub_23A9C8908(a2, v15);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    sub_23A8D50D0(v15, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    sub_23A9ACCDC(v15, v24);
    if (!*(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_23A8C63CC();
    sub_23A8E1850(v24);

    sub_23A8CA970(v24);
  }

  sub_23A9C8908(v32, v12);
  v26 = v5;
  if (v25(v12, 1, v16) == 1)
  {
    sub_23A8D50D0(v12, &unk_27DFB13A0, &unk_23AA1A7A0);
    v27 = &qword_27DFB0000;
  }

  else
  {
    sub_23A9ACCDC(v12, v21);
    v27 = &qword_27DFB0000;
    if (!*(v26 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_23A8C63CC();
    sub_23A8E2914(v21);

    sub_23A8CA970(v21);
  }

  sub_23A9C8908(v31, v9);
  if (v25(v9, 1, v16) == 1)
  {
    sub_23A8D50D0(v9, &unk_27DFB13A0, &unk_23AA1A7A0);
LABEL_13:
    if (*(v26 + v27[498]))
    {

      sub_23A8C6CB8(v30);

      sub_23A9C6E84(0);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v28 = v29;
  sub_23A9ACCDC(v9, v29);
  if (*(v26 + v27[498]))
  {

    sub_23A8C63CC();
    sub_23A8E259C(v28);

    sub_23A8CA970(v28);
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
}

void sub_23A9C4A34(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction];
  if (v2 == 6)
  {
    if (v3 == 6)
    {
      return;
    }

    v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = 6;
    goto LABEL_8;
  }

  if (v2 == v3)
  {
    return;
  }

  if ((v2 & 0xFE) == 4)
  {
    v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = v2;
LABEL_9:
    v8 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
    v7 = 0.0;
    if (v8 && (v9 = [v8 text]) != 0)
    {
      v10 = v9;
      v4 = sub_23AA0D134();
      v6 = v11;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    goto LABEL_13;
  }

  v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_8:
  LOBYTE(v23) = v2;
  v4 = sub_23A9C70EC(&v23);
  v6 = v5;
  v7 = 1.0;
LABEL_13:
  v12 = &v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  *v12 = v4;
  v12[1] = v6;

  v13 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
  if (v13)
  {
    v14 = v13;
    if (v6)
    {

      v15 = sub_23AA0D104();
    }

    else
    {
      v15 = 0;
    }

    [v14 setText_];
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v7;
  v27 = sub_23A9C81F8;
  v28 = v17;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_23A9AD0B8;
  v26 = &block_descriptor_7;
  v18 = _Block_copy(&v23);
  v19 = v1;

  v20 = swift_allocObject();
  v20[2] = v7;
  *(v20 + 3) = v19;
  *(v20 + 4) = v4;
  *(v20 + 5) = v6;
  v27 = sub_23A9C8278;
  v28 = v20;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_23A8CBE48;
  v26 = &block_descriptor_13;
  v21 = _Block_copy(&v23);
  v22 = v19;

  [v16 animateWithDuration:4 delay:v18 options:v21 animations:1.0 completion:0.0];
  _Block_release(v21);
  _Block_release(v18);
}

double sub_23A9C4D10(unsigned __int8 a1, __n128 a2)
{
  v3 = v2;
  v4 = a1;
  v5 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView;
  if (!*(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView))
  {
    sub_23A9C75A4();
    v7 = *(v2 + v5);
    if (v7)
    {
      v8 = v7;

      sub_23A954560();

      sub_23A8CBCA0(0, 0, 1.0);
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState);
  if (v9 == 5 || v9 != v4)
  {
    *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = v4;
    if (v4 <= 1)
    {
      if (v4)
      {
        v27 = *(v2 + v5);
        v12 = &qword_27DFC0470;
        if (v27)
        {
          v28 = qword_27DFAE348;
          v29 = *(v27 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
          if (v28 != -1)
          {
            swift_once();
          }

          v30 = sub_23AA0D104();
          [v29 setText_];
        }

        if (qword_27DFAE348 == -1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v16 = *(v2 + v5);
        v12 = &qword_27DFC0460;
        if (v16)
        {
          v17 = qword_27DFAE340;
          v18 = *(v16 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
          if (v17 != -1)
          {
            swift_once();
          }

          v19 = sub_23AA0D104();
          [v18 setText_];
        }

        if (qword_27DFAE340 == -1)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v4 == 2)
    {
      v20 = *(v2 + v5);
      v12 = &qword_27DFC0480;
      if (v20)
      {
        v21 = qword_27DFAE350;
        v22 = *(v20 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
        if (v21 != -1)
        {
          swift_once();
        }

        v23 = sub_23AA0D104();
        [v22 setText_];
      }

      if (qword_27DFAE350 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v4 != 3)
      {
        sub_23A9C7480();
        v24 = 0;
        v25 = 0;
        v26 = (v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
        *v26 = 0;
        v26[1] = 0;
LABEL_38:

        sub_23A9C8288(v24, v25);

        return result;
      }

      v11 = *(v2 + v5);
      v12 = &qword_27DFC0490;
      if (v11)
      {
        v13 = qword_27DFAE358;
        v14 = *(v11 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = sub_23AA0D104();
        [v14 setText_];
      }

      if (qword_27DFAE358 == -1)
      {
LABEL_37:
        v24 = *v12;
        v25 = v12[1];
        v31 = (v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
        *v31 = *v12;
        v31[1] = v25;
        swift_bridgeObjectRetain_n();
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_37;
  }

  return result;
}

float sub_23A9C50FC()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment);
  if ((*(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment + 4) & 1) == 0)
  {
    return *v1;
  }

  sub_23AA0D3E4();
  result = -v2;
  *v1 = result;
  v1[4] = 0;
  return result;
}

id sub_23A9C5170(double a1, double a2, double a3, double a4, float a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection] = 0u;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse] = 0;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled] = 1;
  v12 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment];
  *v12 = 0;
  v12[4] = 1;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment] = 1065982362;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity] = 0;
  v13 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform];
  v21 = 1;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[64] = 1;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = 6;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState] = 5;
  v16 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight] = 0;
  v17 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *&v5[v17] = MEMORY[0x23EE8EC60](0);
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = 1065982362;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23A9C53B8();
  sub_23A9C5B38();
  sub_23A9C5C5C();
  sub_23A9C5E58(a5);
  sub_23A9C5F60();
  sub_23A9C62D8();

  return v18;
}

void sub_23A9C53B8()
{
  v1 = v0;
  v2 = sub_23AA0C864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v67 - v7;
  MEMORY[0x28223BE20](v8);
  v70 = &v67 - v9;
  MEMORY[0x28223BE20](v10);
  v71 = &v67 - v11;
  MEMORY[0x28223BE20](v12);
  v72 = &v67 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = &v67 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v19);
  v74 = &v67 - v20;
  v21 = sub_23AA0C754();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_23AA0C724();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  (*(v23 + 104))(v26, *MEMORY[0x277CDB598], v22);
  v27 = objc_allocWithZone(sub_23AA0C994());
  v28 = sub_23AA0C974();
  v29 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v30 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView] = v28;
  v31 = v28;

  [v1 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = *&v1[v29];
  if (!v32)
  {
    __break(1u);
    goto LABEL_12;
  }

  v68 = v5;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = *&v1[v29];
  if (!v33)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 clearColor];
  sub_23AA0C744();

  v37 = sub_23AA0C7A4();
  sub_23AA0C764();
  v37(v75, 0);

  v38 = *&v1[v29];
  if (!v38)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = v38;
  sub_23AA0C7E4();
  v40 = sub_23AA0C874();
  v41 = v74;
  sub_23A9C3EF8(v74, v18);
  v42 = *(v3 + 8);
  v42(v18, v2);
  v42(v41, v2);
  v40(v75, 0);

  v43 = *&v1[v29];
  if (!v43)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v44 = v43;
  sub_23AA0C7F4();
  v45 = sub_23AA0C874();
  v46 = v73;
  sub_23A9C3EF8(v73, v18);
  v42(v18, v2);
  v42(v46, v2);
  v45(v75, 0);

  v47 = *&v1[v29];
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = v47;
  sub_23AA0C804();
  v49 = sub_23AA0C874();
  v50 = v72;
  sub_23A9C3EF8(v72, v18);
  v42(v18, v2);
  v42(v50, v2);
  v49(v75, 0);

  v51 = *&v1[v29];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v51;
  sub_23AA0C814();
  v53 = sub_23AA0C874();
  v54 = v71;
  sub_23A9C3EF8(v71, v18);
  v42(v18, v2);
  v42(v54, v2);
  v53(v75, 0);

  v55 = *&v1[v29];
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v55;
  sub_23AA0C824();
  v57 = sub_23AA0C874();
  v58 = v70;
  sub_23A9C3EF8(v70, v18);
  v42(v18, v2);
  v42(v58, v2);
  v57(v75, 0);

  v59 = *&v1[v29];
  if (!v59)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = v59;
  sub_23AA0C834();
  v61 = sub_23AA0C874();
  v62 = v69;
  sub_23A9C3EF8(v69, v18);
  v42(v18, v2);
  v42(v62, v2);
  v61(v75, 0);

  v63 = *&v1[v29];
  if (v63)
  {
    v64 = v63;
    sub_23AA0C854();
    v65 = sub_23AA0C874();
    v66 = v68;
    sub_23A9C3EF8(v68, v18);
    v42(v18, v2);
    v42(v66, v2);
    v65(v75, 0);

    sub_23A9C77D0();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_23A9C5B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_23AA0C984();

    sub_23AA0C5B4();
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_23AA0C714();

    sub_23A8D50D0(v5, &qword_27DFB0DC0, &unk_23AA1A7B0);
    v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
    swift_beginAccess();
    sub_23A999018(v7, v2 + v4);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9C5C5C()
{
  v1 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:sel_didPanWithPanGesture_];
  v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer;
  v5 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer] = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v6 setDelegate_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v2 action:sel_didPinchWithPinchGesture_];
  v8 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer;
  v9 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer] = v7;
  v10 = v7;

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v10 setDelegate_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_didTouchDownWithLongPressGesture_];
  v12 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer;
  v13 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer] = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 setMinimumPressDuration_];

  v15 = *&v2[v12];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setDelegate_];
  v16 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v17 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!*&v2[v4])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v17 addGestureRecognizer_];
  v18 = *&v2[v16];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*&v2[v8])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v18 addGestureRecognizer_];
  v19 = *&v2[v16];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v2[v12])
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v19 addGestureRecognizer_];
}

void sub_23A9C5E58(float a1)
{
  type metadata accessor for DollHouse(0);
  swift_allocObject();
  v3 = sub_23A8C69D0(a1);
  v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse;
  *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = v3;

  v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  sub_23AA0C984();

  if (!*(v1 + v4))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_23A9C8A24(&unk_27DFB10E0, type metadata accessor for DollHouse, &unk_23AA1156C);

  sub_23AA0C704();
}

void sub_23A9C5F60()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v0;
  v4 = v2;
  v5 = sub_23AA0C7A4();
  v6 = sub_23AA0C794();
  sub_23AA0C774();
  v6(v22, 0);
  v5(v23, 0);

  v7 = *(v0 + v1);
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_23AA0C7A4();
  v10 = sub_23AA0C794();
  sub_23AA0C784();
  v10(v22, 0);
  v9(v23, 0);

  sub_23AA0C1B4();
  swift_allocObject();
  v11 = sub_23AA0C1A4();
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  v15 = sub_23AA0CD94();
  sub_23AA0C644();
  v15(v23, 0);
  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = v11;

  sub_23AA0C1E4();
  sub_23AA0C214();

  sub_23AA0C534();
  swift_allocObject();
  v16 = sub_23AA0C1A4();
  v17 = [v12 whiteColor];
  v18 = sub_23AA0C614();
  sub_23AA0C684();
  v18(v23, 0);
  v19 = sub_23AA0C614();
  sub_23AA0C674();
  v19(v23, 0);
  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = v16;

  sub_23AA0C214();

  v20 = *(v3 + v1);
  if (v20)
  {
    v21 = v20;
    sub_23AA0C984();

    sub_23AA0C704();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_23A9C62D8()
{
  [v0 setIsAccessibilityElement_];
  [v0 setAccessibilityFrame_];
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel;
  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
  *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  [v4 setNumberOfLines_];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 whiteColor];
  [v7 setTextColor_];

  v9 = *&v0[v2];
  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v9 setTextAlignment_];
  v10 = *&v0[v2];
  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v10 setLineBreakMode_];
  v11 = *&v0[v2];
  if (!v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76988];
  v14 = v11;
  v15 = [v12 preferredFontForTextStyle_];
  [v14 setFont_];

  v16 = *&v0[v2];
  if (!v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v16 setAdjustsFontSizeToFitWidth_];
  v17 = *&v0[v2];
  if (!v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer;
  v20 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer];
  *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer] = v18;
  v21 = v18;

  if (!v21)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = *&v0[v19];
  if (!v22)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v23 = v22;
  v24 = [v6 blackColor];
  v25 = [v24 colorWithAlphaComponent_];

  [v23 setBackgroundColor_];
  v26 = *&v0[v19];
  if (!v26)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = [v26 layer];
  [v27 setCornerRadius_];

  v28 = *&v0[v19];
  if (!v28)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v28 setAlpha_];
  v29 = *&v0[v19];
  if (!v29)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!*&v0[v2])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v29 addSubview_];
  if (!*&v0[v19])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v0 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23AA1AC40;
  v31 = *&v0[v19];
  if (!v31)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v30 + 32) = v33;
  v34 = *&v0[v19];
  if (!v34)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v35 = [v34 centerXAnchor];
  v36 = [v0 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v30 + 40) = v37;
  v38 = *&v0[v19];
  if (!v38)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v39 = [v38 topAnchor];
  v40 = [v0 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:100.0];

  *(v30 + 48) = v41;
  v42 = *&v0[v19];
  if (!v42)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = [v42 leadingAnchor];
  v44 = [v0 leadingAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor_];

  *(v30 + 56) = v45;
  v46 = *&v0[v19];
  if (!v46)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v47 = [v46 trailingAnchor];
  v48 = [v0 trailingAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor_];

  *(v30 + 64) = v49;
  v50 = *&v0[v2];
  if (!v50)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v51 = [v50 topAnchor];
  v52 = *&v0[v19];
  if (!v52)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v53 = [v52 topAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:12.0];

  *(v30 + 72) = v54;
  v55 = *&v0[v2];
  if (!v55)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = [v55 leadingAnchor];
  v57 = *&v0[v19];
  if (!v57)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v58 = [v57 leadingAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:12.0];

  *(v30 + 80) = v59;
  v60 = *&v0[v2];
  if (!v60)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v61 = [v60 bottomAnchor];
  v62 = *&v0[v19];
  if (!v62)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v63 = [v62 bottomAnchor];
  v64 = [v61 constraintEqualToAnchor:v63 constant:-12.0];

  *(v30 + 88) = v64;
  v65 = *&v0[v2];
  if (!v65)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v66 = [v65 trailingAnchor];
  v67 = *&v0[v19];
  if (!v67)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v68 = [v67 trailingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:-12.0];

  *(v30 + 96) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23AA11BB0;
  v71 = *&v0[v2];
  if (!v71)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v72 = [v71 centerXAnchor];
  v73 = *&v0[v19];
  if (!v73)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v74 = [v73 centerXAnchor];
  v75 = [v72 constraintEqualToAnchor_];

  *(v70 + 32) = v75;
  v76 = objc_opt_self();
  sub_23A9C8978();
  v77 = sub_23AA0D2E4();

  [v76 activateConstraints_];

  v78 = sub_23AA0D2E4();

  [v76 activateConstraints_];
}

void sub_23A9C6B6C(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform + 64))
  {
    return;
  }

  v3 = v1;
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera;
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) || (v14 = *(v2 + 16), v15 = *v2, v13 = *(v2 + 32), sub_23A9C6CFC(), v7 = v13, v6 = v14, v5 = v15, *(v1 + v8)))
  {
    sub_23A9BC788(v5, v6, v7);
    v9 = *(v1 + v8);
    if (v9)
    {
      if (!*(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView))
      {
LABEL_12:
        __break(1u);
        return;
      }

      sub_23A9E81E0();
      v10.n128_f32[0] = fminf(*(v9 + qword_27DFB0EF0) + 0.01, 1.0);
      *(v9 + qword_27DFB0EF0) = v10.n128_u32[0];
      v11 = fminf(*(v9 + qword_27DFB0EF8) + 0.01, 1.0);
      *(v9 + qword_27DFB0EF8) = v11;
      sub_23A9BC32C(v10, v11);
    }
  }

  if (!*(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v3 + v8);

  sub_23A8CA57C(v12, a1);
}

void sub_23A9C6CFC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v0;
  type metadata accessor for ARViewCameraEntity(0);
  swift_allocObject();
  v4 = v2;
  v5 = sub_23AA0C1A4();
  sub_23A94E7E8();

  v6 = *(v0 + v1);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for DollHouseCamera(0);
  swift_allocObject();

  v7 = sub_23A9BBAEC(v6, v5, 1, 0.9273);
  sub_23AA0CB24();
  sub_23AA0C2B4();
  v8 = *(v0 + v1);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_23AA0C984();

  sub_23A9C8A24(&qword_27DFB10F0, type metadata accessor for DollHouseCamera, &unk_23AA1A910);

  sub_23AA0C704();

  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = v7;
}

void sub_23A9C6E84(char a1)
{
  if (qword_27DFAE398 != -1)
  {
    swift_once();
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_23A8EAB50(v3);
  v13 = v4;
  v14 = v5;

  v6 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v6)
  {

    v7 = sub_23A9C50FC();
    v8 = v14.u32[2];
    v9 = *(v6 + qword_27DFB0EE8);
    if (v14.f32[0] != 0.0 || v14.f32[1] != 0.0 || v14.f32[2] != 0.0)
    {
      if (v14.f32[2] <= v9.n128_f32[2])
      {
        v8 = *(v6 + qword_27DFB0EE8 + 8);
      }

      v9.n128_u64[0] = vbslq_s8(vcgeq_f32(v9, v14), v9, v14).u64[0];
      v9.n128_u64[1] = v8;
    }

    v10 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment);
    if (*(v6 + qword_27DFB0F10) != 1 || (v11 = qword_27DFB0F00, *(v6 + qword_27DFB0F00) == 1))
    {
      *(v6 + qword_27DFB0EF0) = 0;
      *(v6 + qword_27DFB0F08) = v13;
      v12 = vmulq_f32(v9, v9);
      *(v6 + qword_27DFB0E38) = v10 * sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
      sub_23A9BCB38(*(v6 + qword_27DFB0E40), *(v6 + qword_27DFB0E40 + 16), *(v6 + qword_27DFB0E40 + 32), *(v6 + qword_27DFB0E40 + 48));
      if (v9.n128_f32[0] <= *(v6 + qword_27DFB0E30))
      {
        v9.n128_u32[0] = *(v6 + qword_27DFB0E30);
      }

      *(v6 + qword_27DFB0E78) = v9.n128_u32[0];
      if ((*(v6 + qword_27DFC09E0) & 1) != 0 || (v11 = qword_27DFB0F00, *(v6 + qword_27DFB0F00) == 1))
      {
        *(v6 + qword_27DFB0E70) = v7;
        *(v6 + qword_27DFB0E60) = v7;
        v11 = qword_27DFB0F00;
        if (*(v6 + qword_27DFB0F00))
        {
          goto LABEL_20;
        }
      }
    }

    if (a1)
    {
LABEL_20:
      *(v6 + v11) = 0;
      v9.n128_u32[0] = 1.0;
      sub_23A9BC32C(v9, 1.0);
    }
  }
}

uint64_t sub_23A9C70EC(unsigned __int8 *a1)
{
  swift_getObjectType();
  v2 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = v4;
  if (v2 <= 2)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_5:

    return 0;
  }

  if ((v2 - 4) < 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = sub_23AA0BE14();

  return v7;
}

void sub_23A9C7268(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0.0)
  {
    v6 = (a3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
    *v6 = 0;
    v6[1] = 0;
  }

  else if (a5)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_10;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v7 = off_27DFB17B0;
    swift_beginAccess();
    if (v7[144] == 1)
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
      inited = swift_initStackObject();
      v9 = *MEMORY[0x277D76510];
      *(inited + 32) = *MEMORY[0x277D76510];
      *(inited + 16) = xmmword_23AA10FC0;
      *(inited + 64) = MEMORY[0x277D839B0];
      *(inited + 40) = 1;
      v10 = v9;
      sub_23A9DD720(inited);
      swift_setDeallocating();
      sub_23A8D50D0(inited + 32, &unk_27DFB10B0, &unk_23AA1AA30);
      v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v12 = sub_23AA0D104();
      type metadata accessor for Key(0);
      sub_23A9C8A24(&qword_27DFAE970, type metadata accessor for Key, &unk_23AA11A24);
      v13 = sub_23AA0D024();

      v14 = [v11 initWithString:v12 attributes:v13];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v14);
    }
  }
}

double sub_23A9C7480()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = sub_23A9C84AC;
    v4[4] = v2;
    v5 = v1;

    sub_23A8CBCA0(sub_23A9C853C, v4, 0.0);
  }

  return result;
}

void sub_23A9C75A4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView;
  if (!*&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView])
  {
    type metadata accessor for ARGlyphView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    [v0 addSubview_];
    v5 = *&v0[v1];
    if (v5)
    {
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = *&v0[v1];
      if (v6)
      {
        v11 = v6;
        v7 = sub_23AA07DB0();
        sub_23AA08688(v0, v7, v8, v9, v10);
      }
    }
  }
}

id sub_23A9C7688(char *a1)
{
  result = [a1 layoutIfNeeded];
  v3 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v5 = v4;
    [v5 bounds];
    Width = CGRectGetWidth(v18);
    [v5 bounds];
    v7 = Width / CGRectGetHeight(v19);
    *(v3 + qword_27DFB0E18) = v7;
    REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
    v15 = v9;
    v16 = v8;
    v13 = v11;
    v14 = v10;

    v12 = (v3 + qword_27DFB0E40);
    *v12 = v16;
    v12[1] = v15;
    v12[2] = v14;
    v12[3] = v13;
  }

  result = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer];
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_23A9C77D0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0;
  v4 = v2;
  sub_23AA08908();

  [v3 bounds];
  v6 = v5;
  [v3 bounds];
  if (v7 < v6)
  {
    v6 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA12120;
  v9 = *&v3[v1];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v6 * 0.45;
  v11 = [v9 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v8 + 32) = v12;
  v13 = *&v3[v1];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v8 + 40) = v15;
  v16 = *&v3[v1];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = [v16 centerXAnchor];
  v18 = [v3 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v8 + 48) = v19;
  v20 = *&v3[v1];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v21 = [v20 bottomAnchor];
  v22 = [v3 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-40.0];

  *(v8 + 56) = v23;
  v24 = objc_opt_self();
  sub_23A9C8978();
  v25 = sub_23AA0D2E4();

  [v24 activateConstraints_];
}

void sub_23A9C7A54(char *a1)
{
  [a1 layoutIfNeeded];
  v2 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v2)
  {
    v3 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
    if (v3)
    {

      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v17);
      [v4 bounds];
      v6 = Width / CGRectGetHeight(v18);
      *(v2 + qword_27DFB0E18) = v6;
      REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
      v14 = v8;
      v15 = v7;
      v12 = v10;
      v13 = v9;

      v11 = (v2 + qword_27DFB0E40);
      *v11 = v15;
      v11[1] = v14;
      v11[2] = v13;
      v11[3] = v12;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23A9C7B84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) == 1)
    {
      sub_23AA0C5A4();
      sub_23A9C6B6C(v4);
    }
  }
}

double sub_23A9C7C90(void *a1, double result)
{
  v3 = *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v3)
  {

    [a1 scale];
    v6 = 1.0 / v5;
    if (v6 != 0.0)
    {
      v7 = v6;
      *(v3 + qword_27DFB0E50) = fminf(fmaxf(*(v3 + qword_27DFB0E50) / v7, 0.1), 100.0);
      *(v3 + qword_27DFB0E80) = *(v3 + qword_27DFB0E80) * v7;
      [a1 setScale_];
    }
  }

  return result;
}

void sub_23A9C7DE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  [a1 locationInView_];
  v4 = [a1 state];
  if (v4 != 3)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
    if (!v5)
    {
      return;
    }

    if (*(v1 + v3))
    {
      *(v5 + qword_27DFB0F10) = 1;
      v6 = *(v5 + qword_27DFB0E10);
      *(v5 + qword_27DFB0E10) = 0;

      v7 = *(v5 + qword_27DFB0E08);
      *(v5 + qword_27DFB0E08) = 0;

      v10 = *(v5 + qword_27DFB0E00);
      *(v5 + qword_27DFB0E00) = 0;

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (!v8)
  {
    return;
  }

  if (!*(v1 + v3))
  {
    goto LABEL_15;
  }

  *(v8 + qword_27DFB0F10) = 0;
  v9 = 1.0;
  if (*(v8 + qword_27DFC09E0))
  {
    v9 = 0.0;
  }

  *(v8 + qword_27DFB0EF0) = v9;
  *(v8 + qword_27DFB0EF8) = v9;
}

id sub_23A9C7FBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A9C815C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A9C81C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_23A9C81F8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A9C8238()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_23A9C8288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_6;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v2 = off_27DFB17B0;
    swift_beginAccess();
    if (v2[144] == 1)
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
      inited = swift_initStackObject();
      v4 = *MEMORY[0x277D76510];
      *(inited + 32) = *MEMORY[0x277D76510];
      *(inited + 16) = xmmword_23AA10FC0;
      *(inited + 64) = MEMORY[0x277D839B0];
      *(inited + 40) = 1;
      v5 = v4;
      sub_23A9DD720(inited);
      swift_setDeallocating();
      sub_23A8D50D0(inited + 32, &unk_27DFB10B0, &unk_23AA1AA30);
      v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v7 = sub_23AA0D104();
      type metadata accessor for Key(0);
      sub_23A9C8A24(&qword_27DFAE970, type metadata accessor for Key, &unk_23AA11A24);
      v8 = sub_23AA0D024();

      v9 = [v6 initWithString:v7 attributes:v8];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v9);
    }
  }
}

uint64_t sub_23A9C8474()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9C84BC()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9C84F4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23A9C8548()
{
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment;
  *v1 = 0;
  *(v1 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment) = 1065982362;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 64) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction) = 6;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = 5;
  v5 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = 0;
  v6 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *(v0 + v6) = MEMORY[0x23EE8EC60](0);
  sub_23AA0D9E4();
  __break(1u);
}

void sub_23A9C8728()
{
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment;
  *v1 = 0;
  *(v1 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment) = 1065982362;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 64) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction) = 6;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = 5;
  v5 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = 0;
  v6 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *(v0 + v6) = MEMORY[0x23EE8EC60](0);
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A9C8908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A9C8978()
{
  result = qword_27DFB10D8;
  if (!qword_27DFB10D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFB10D8);
  }

  return result;
}

void sub_23A9C89DC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v1)
  {
    *(v1 + qword_27DFC09E0) = 0;
  }

  sub_23A9C6E84(0);
}

uint64_t sub_23A9C8A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A9C8A9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23A9F5738();
  v4 = sub_23A9F409C(&v6, (v3 + 32), v2, a1);
  sub_23A8CA904(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_23A9C8B84(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23AA0D7F4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9C8C28(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1);
  sub_23A8CA904(v12);
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void static RoomCaptureSession.isSupported.getter()
{
  v0 = sub_23AA0D104();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

id sub_23A9C8DDC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ARRoomCaptureConfiguration();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t RoomCaptureSession.__allocating_init()()
{
  v0 = swift_allocObject();
  RoomCaptureSession.init()();
  return v0;
}

uint64_t RoomCaptureSession.init()()
{
  v1 = v0;
  v2 = sub_23AA0D524();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v43 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  MEMORY[0x28223BE20](v5);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 1;
  v8 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl;
  v9 = sub_23AA0BFB4();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v10(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_23AA0CE74();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) = 1;
  v12 = v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v12 = 0x100010101010101;
  *(v12 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRunOption) = 8;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;
  v13 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  v14 = MEMORY[0x277D84F90];
  *(v1 + v13) = sub_23A9DD100(MEMORY[0x277D84F90]);
  v15 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel);
  v16 = *MEMORY[0x277D860B8];
  v40 = *(MEMORY[0x277D860B8] + 16);
  v41 = v16;
  v17 = *(MEMORY[0x277D860B8] + 32);
  v38 = *(MEMORY[0x277D860B8] + 48);
  v39 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
  v19 = type metadata accessor for CapturedRoom(0);
  v20 = v19[12];
  *(v15 + v20) = 0;
  *(v15 + v19[13]) = 2;
  v21 = (v15 + v19[15]);
  *v21 = 0u;
  v21[1] = 0u;
  *v15 = v14;
  v15[1] = v14;
  v15[2] = v14;
  v15[3] = v14;
  v15[4] = v14;
  v15[5] = v14;
  *(v15 + v19[14]) = v14;
  sub_23AA0C0D4();
  *(v15 + v19[11]) = v14;
  *(v15 + v20) = 0;
  v22 = (v15 + v19[16]);
  v23 = v40;
  *v22 = v41;
  v22[1] = v23;
  v24 = v38;
  v22[2] = v39;
  v22[3] = v24;
  v46[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  v46[0] = v18;
  sub_23A8D5068(v46, v21, &unk_27DFB1140, &qword_23AA19C10);
  v25 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  *(v1 + v25) = sub_23A9DD2E8(v14);
  v26 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  *(v1 + v26) = sub_23A9DD504(v14);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects) = v14;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls) = v14;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v14;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v14;
  *&v41 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue;
  *&v40 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  *&v39 = "plemented for this class";
  sub_23AA0CF04();
  v46[0] = v14;
  v37[1] = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  *&v38 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v27 = *MEMORY[0x277D85260];
  v28 = v44;
  v29 = *(v45 + 104);
  v45 += 104;
  v30 = v43;
  v29(v43, v27, v44);
  *(v1 + v41) = sub_23AA0D554();
  *&v41 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue;
  *&v39 = "an.FloorPlanCaptureSession";
  sub_23AA0CF14();
  v46[0] = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v29(v30, v27, v28);
  *(v1 + v41) = sub_23AA0D554();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = 0;
  v31 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  *v31 = xmmword_23AA12250;
  v31[1] = xmmword_23AA12220;
  v31[2] = xmmword_23AA12230;
  v31[3] = xmmword_23AA11AE0;
  v32 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter;
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v33 setNumberStyle_];
  *(v1 + v32) = v33;
  v34 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  v35 = sub_23AA0D5F4();
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 2, v35);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportThreshold) = 600;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  sub_23A9C965C(1);
  return v1;
}

uint64_t RoomCaptureSession.__allocating_init(arSession:)(void *a1)
{
  swift_allocObject();
  v2 = sub_23A9DD848(a1);

  return v2;
}

uint64_t RoomCaptureSession.init(arSession:)(void *a1)
{
  v2 = sub_23A9DD848(a1);

  return v2;
}

void sub_23A9C965C(char a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CE84();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0D104();
  v15 = MGCopyAnswer();

  if (!v15)
  {
    goto LABEL_67;
  }

  swift_unknownObjectRetain();
  aBlock[0] = v15;
  if ((swift_dynamicCast() & 1) == 0 || v83 != 1)
  {
    return;
  }

  v16 = &off_278B65000;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v17 = [*(v2 + 56) configuration];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
        *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = v19;
        goto LABEL_11;
      }
    }
  }

  v21 = v11;
  v22 = [objc_allocWithZone(type metadata accessor for ARRoomCaptureConfiguration()) init];
  v23 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration;
  v24 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = v22;
  v25 = v22;

  [v25 setLightEstimationEnabled_];
  v26 = *(v2 + v23);
  if (!v26)
  {
    goto LABEL_72;
  }

  v27 = v26;
  v20 = sub_23AA0D104();
  [v27 setSlamConfiguration_];

  v11 = v21;
  v16 = 0x278B65000;
LABEL_11:

  if (qword_27DFAE518 != -1)
  {
LABEL_61:
    swift_once();
  }

  v71 = v11;
  sub_23AA00900(aBlock);
  v75 = v5;
  v74 = v8;
  v73 = v7;
  v72 = v9;
  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_49;
  }

  type metadata accessor for ARRoomCaptureConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [ObjCClassFromMetadata supportedVideoFormats];
  sub_23A8D6C58(0, &unk_27DFB14D8, 0x277CE5398);
  v30 = sub_23AA0D2F4();

  if (v30 >> 62)
  {
    if (!sub_23AA0D7F4())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    v51 = v77;
    sub_23AA0CE94();
    v52 = sub_23AA0CE54();
    v53 = sub_23AA0D494();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23A8B4000, v52, v53, "Cannot set framerate to 30 fps", v54, 2u);
      MEMORY[0x23EE91710](v54, -1, -1);
    }

    (*(v78 + 8))(v51, v79);
    goto LABEL_48;
  }

  if ((v30 & 0xC000000000000001) == 0)
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v30 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v31 = MEMORY[0x23EE90360](0, v30);
LABEL_18:
  v70 = v31;
  v68 = v2;

  v32 = [ObjCClassFromMetadata supportedVideoFormats];
  v33 = sub_23AA0D2F4();

  v67 = v4;
  if (v33 >> 62)
  {
    v34 = sub_23AA0D7F4();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v70;
  if (!v34)
  {
LABEL_42:

    v2 = v68;
    v4 = v67;
    goto LABEL_43;
  }

  v16 = 0;
  v2 = v33 & 0xC000000000000001;
  v76 = v33 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_initWithDevice_;
  v80 = v34;
  v69 = v33 & 0xC000000000000001;
  while (1)
  {
    if (v2)
    {
      v35 = MEMORY[0x23EE90360](v16, v33);
    }

    else
    {
      if (v16 >= *(v76 + 16))
      {
        goto LABEL_60;
      }

      v35 = *(v33 + 8 * v16 + 32);
    }

    v36 = v35;
    v11 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if ([v35 v5[260]] == 30)
    {
      v4 = &selRef_initWithDevice_;
      [v36 imageResolution];
      v38 = v37;
      v40 = v39;
      [v7 imageResolution];
      v43 = v38 == v42 && v40 == v41;
      if (v43)
      {
        v4 = &selRef_initWithDevice_;
        v9 = v5;
        v44 = [v36 captureDevicePosition];
        v43 = v44 == [v7 captureDevicePosition];
        v5 = v9;
        if (v43)
        {
          break;
        }
      }
    }

LABEL_23:

    ++v16;
    if (v11 == v80)
    {
      goto LABEL_42;
    }
  }

  v45 = [v36 captureDeviceType];
  v8 = [v7 captureDeviceType];
  v46 = sub_23AA0D134();
  v48 = v47;
  if (v46 != sub_23AA0D134() || v48 != v49)
  {
    v4 = sub_23AA0DBD4();

    v7 = v70;
    v2 = v69;
    v5 = v9;
    if (v4)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  v7 = v70;
LABEL_40:

  v2 = v68;
  v50 = *(v68 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (!v50)
  {
    goto LABEL_73;
  }

  [v50 setVideoFormat_];

  v4 = v67;
LABEL_48:
  v16 = &off_278B65000;
LABEL_49:
  v55 = [objc_allocWithZone(type metadata accessor for ARInternalSessionObserverWrapper()) *(v16 + 3224)];
  v56 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver;
  v57 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = v55;

  v58 = [objc_allocWithZone(type metadata accessor for RSSessionDelegateWrapper()) *(v16 + 3224)];
  v59 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate;
  v60 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = v58;

  v61 = [objc_allocWithZone(type metadata accessor for OUSessionDelegateWrapper()) *(v16 + 3224)];
  v62 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate;
  v63 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = v61;

  if (!*(v2 + v56))
  {
    goto LABEL_68;
  }

  swift_weakAssign();
  if (!*(v2 + v59))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  swift_weakAssign();
  if (!*(v2 + v62))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  swift_weakAssign();
  swift_beginAccess();
  if (*(v2 + v56))
  {
    [*(v2 + 56) _addObserver_];
    aBlock[4] = sub_23A9E36DC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_300;
    v64 = _Block_copy(aBlock);

    v65 = v71;
    sub_23AA0CEE4();
    v81 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v66 = v73;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v65, v66, v64);
    _Block_release(v64);
    (v75[1])(v66, v4);
    (v72[1])(v65, v74);

    if (qword_27DFAE498 != -1)
    {
      swift_once();
    }

    *(qword_27DFC07E8 + 24) = &off_284D86F50;
    swift_unknownObjectWeakAssign();
    if (qword_27DFAE410 != -1)
    {
      swift_once();
    }

    *(qword_27DFC0670 + 24) = &off_284D86F60;
    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_23A9CA1A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D46C80]) init];
  v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setDelegate_];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D36D00]) init_];
  v6 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = v5;
  v7 = v5;

  if (v7)
  {
    [v7 setDelegate_];
  }
}

void sub_23A9CA2AC(int8x8_t *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1].i8[0];
  v13 = sub_23AA0D104();
  v14 = MGCopyAnswer();

  if (v14)
  {
    swift_unknownObjectRetain();
    aBlock[0] = v14;
    if ((swift_dynamicCast() & 1) != 0 && v20 == 1)
    {
      v19 = *(*&v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
      v15 = swift_allocObject();
      v15[2] = v1;
      v15[3] = vand_s8(v11, 0x101010101010101);
      v15[4].i8[0] = v12 & 1;
      aBlock[4] = sub_23A9DE024;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_8;
      v18 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v20 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      v16 = v18;
      MEMORY[0x23EE8FFE0](0, v10, v6, v18);
      _Block_release(v16);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9CA60C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v113 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23AA0CF24();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  v16 = sub_23AA0BFB4();
  MEMORY[0x28223BE20](v16);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig;
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) || *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) != 1 || !*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) || !*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet))
  {
    return;
  }

  v101 = v6;
  v102 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet;
  v99 = &v99 - v21;
  v100 = v7;
  v107 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed;
  v108 = v22;
  v109 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator;
  v110 = v20;
  v24 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v24 = a2;
  v103 = HIDWORD(a2);
  *(v24 + 2) = BYTE2(a2);
  *(v24 + 3) = BYTE3(a2);
  *(v24 + 4) = BYTE4(a2);
  v105 = a2 >> 40;
  v106 = HIWORD(a2);
  LODWORD(v104) = a3 & 1;
  *(v24 + 5) = BYTE5(a2);
  *(v24 + 6) = BYTE6(a2);
  *(v24 + 7) = HIBYTE(a2);
  *(v24 + 8) = a3 & 1;
  v25 = sub_23A9DD100(MEMORY[0x277D84F90]);
  v26 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  swift_beginAccess();
  *(a1 + v26) = v25;

  v27 = [objc_allocWithZone(MEMORY[0x277D46C78]) init];
  [v27 setWindowDoorDetectionEnabled_];
  [v27 setLiveResultEnabled_];
  [v27 setTextCoachingEnabled_];
  [v27 setOnboardingEnabled_];
  [v27 setNonUniformHeightEnabled_];
  [v27 setBoundaryRefinementEnabled_];
  [v27 setBayWindowRecessedAreaEnabled_];
  v28 = *(a1 + v109);
  if (!v28)
  {
    __break(1u);
    goto LABEL_63;
  }

  v106 = v27;
  [v28 runWithConfiguration_];
  v29 = *(a1 + v102);
  if (!v29)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_beginAccess();
  v30 = *(a1 + 64);
  v31 = objc_allocWithZone(MEMORY[0x277D36CF0]);
  v32 = v29;
  LODWORD(v33) = 2.0;
  v34 = [v31 initWithframerate:1 enable3DOR:v30 rgbRefinemnt:0 mlRefinement:v33];
  [v32 runWithConfiguration_];

  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = BYTE1(a2) & 1;
  v35 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration;
  v36 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (!v36)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v37 = [v36 frameSemantics];
  swift_beginAccess();
  if (*(a1 + 65) != 1)
  {
    swift_beginAccess();
    v43 = [*(a1 + 56) configuration];
    if (!v43)
    {
      goto LABEL_18;
    }

    v42 = v43;
    objc_opt_self();
    goto LABEL_15;
  }

  swift_beginAccess();
  v38 = [*(a1 + 56) configuration];
  if (!v38)
  {
    goto LABEL_21;
  }

  v39 = v38;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = [v40 templateConfiguration];

    if (!v41)
    {
      goto LABEL_18;
    }

    objc_opt_self();
    v42 = v41;
LABEL_15:
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v45 = v44;
      v39 = *(a1 + v35);
LABEL_19:
      *(a1 + v35) = v45;
      goto LABEL_20;
    }

LABEL_18:
    v45 = *(a1 + v35);
    v39 = v45;
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  v46 = *(a1 + v35);
  if (!v46)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v46 setFrameSemantics_];
  v47 = *(a1 + v35);
  if (!v47)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v48 = *MEMORY[0x277CE51B0];
  v49 = v47;
  v50 = [v49 sceneReconstruction];
  if ((v48 & ~v50) != 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = 0;
  }

  [v49 setSceneReconstruction_];

  swift_beginAccess();
  [*(a1 + 56) setForceAddSceneReconstructionKeyframePointCloudWithColor_];
  v52 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl;
  swift_beginAccess();
  sub_23A8D5194(a1 + v52, v15, &qword_27DFAF210, &qword_23AA12EE8);
  v53 = v108;
  v105 = *(v108 + 48);
  if ((v105)(v15, 1, v110) == 1)
  {
    sub_23A8D50D0(v15, &qword_27DFAF210, &qword_23AA12EE8);
  }

  else
  {
    v104 = v35;
    v54 = v99;
    (*(v53 + 32))(v99, v15, v110);
    if (*(a1 + 65) == 2)
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v55 = off_27DFB17B0;
      swift_beginAccess();
      v56 = *(a1 + v104);
      if (!v56)
      {
        goto LABEL_71;
      }

      if (v55[32])
      {
        v57 = 2;
      }

      else
      {
        v57 = 0;
      }

      v58 = v108;
      v59 = v99;
      (*(v108 + 16))(v18, v99, v110);
      v60 = objc_allocWithZone(MEMORY[0x277CE5360]);
      v61 = v56;
      v70 = sub_23A9E1664(v61, v18, v57);

      [v70 setDelegate_];
      (*(v58 + 8))(v59, v110);
      v71 = v107;
      v35 = v104;
      goto LABEL_47;
    }

    (*(v53 + 8))(v54, v110);
    v35 = v104;
  }

  v71 = v107;
  if (*(a1 + 65) == 1)
  {
    v62 = *(a1 + v35);
    if (!v62)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    sub_23A8D5194(a1 + v52, v12, &qword_27DFAF210, &qword_23AA12EE8);
    v63 = (v105)(v12, 1, v110);
    v64 = v62;
    if (v63 == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = sub_23AA0BF14();
      (*(v108 + 8))(v12, v110);
    }

    v66 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v64 fileURL:v65];

    v67 = *(a1 + v23);
    *(a1 + v23) = v66;
    v68 = v66;

    if (!v68)
    {
      goto LABEL_70;
    }

    [v68 startRecording];

    v70 = *(a1 + v23);
    if (v70)
    {
      v69 = v70;
    }

    v71 = v107;
  }

  else
  {
    v70 = 0;
  }

LABEL_47:
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 1;
  *(a1 + v71) = 0;
  sub_23A9CD9A8();
  v72 = v70;
  if (!v70)
  {
    v72 = *(a1 + v35);
    if (v72)
    {
      v73 = v72;
    }
  }

  v74 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = v72;
  v75 = v72;
  v76 = v70;

  if (!v72)
  {
    goto LABEL_67;
  }

  v77 = *(a1 + 56);
  [v77 runWithConfiguration:v75 options:8];

  v78 = MEMORY[0x277D84F90];
  v79 = sub_23A9DD2E8(MEMORY[0x277D84F90]);
  v80 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  swift_beginAccess();
  *(a1 + v80) = v79;

  v81 = sub_23A9DD504(v78);
  v82 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  swift_beginAccess();
  *(a1 + v82) = v81;

  v83 = (a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  *v83 = 0;
  v83[1] = 0;

  v84 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v85 = *(v84 + 8);
    ObjectType = swift_getObjectType();
    v87 = (*(v85 + 8))(ObjectType, v85);
    v89 = v88;
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  *v83 = v87;
  v83[1] = v89;

  sub_23A9CE91C();
  v90 = *(a1 + v109);
  if (!v90)
  {
    goto LABEL_68;
  }

  if (v83[1])
  {
    v91 = v90;

    v92 = sub_23AA0D104();
  }

  else
  {
    v93 = v90;
    v92 = 0;
  }

  [v90 setUpInternalDumpWithLogDir:v92 enable:*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump)];

  if (qword_27DFAE460 != -1)
  {
    swift_once();
  }

  sub_23A95517C();
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v94 = sub_23AA0D534();
  v115[4] = sub_23A9E36D4;
  v115[5] = a1;
  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 1107296256;
  v115[2] = sub_23A9AD0B8;
  v115[3] = &block_descriptor_297;
  v95 = _Block_copy(v115);

  v96 = v111;
  sub_23AA0CEE4();
  v115[0] = v78;
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  v97 = v113;
  v98 = v101;
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v96, v97, v95);
  _Block_release(v95);

  (*(v100 + 8))(v97, v98);
  (*(v112 + 8))(v96, v114);
}

uint64_t sub_23A9CB48C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    v2 = *(a1 + 56);
    sub_23A9B6F28(v2);

    swift_unknownObjectRelease();
  }

  v3 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration);
    v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 8);
    (*(v4 + 48))(a1, &v11, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = swift_getObjectType();
    v9 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration);
    v10 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 8);
    (*(v7 + 48))(a1, &v9, v8, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23A9CB5E0(char a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0D104();
  v12 = MGCopyAnswer();

  if (v12)
  {
    swift_unknownObjectRetain();
    aBlock[0] = v12;
    if ((swift_dynamicCast() & 1) != 0 && v22 == 1)
    {
      swift_beginAccess();
      v13 = [*(v1 + 56) configuration];
      v19 = v4;
      if (v13)
      {
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          [*(v1 + 56) setForceAddSceneReconstructionKeyframePointCloudWithColor_];
          [v16 setSceneReconstruction_];
          [*(v1 + 56) runWithConfiguration:v16 options:8];
        }
      }

      if (a1)
      {
        [*(v1 + 56) pause];
      }

      v18 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
      aBlock[4] = sub_23A9DE0D8;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_3;
      v17 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v20 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v10, v6, v17);
      _Block_release(v17);
      (*(v19 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_23A9CB9D4(uint64_t a1)
{
  v2 = sub_23AA0CEC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23AA0CF24();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig);
  if (v9)
  {
    v25 = sub_23A9E36C0;
    v26 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_23A9CBDF4;
    v24 = &block_descriptor_294;
    v10 = _Block_copy(&aBlock);
    v11 = v9;

    [v11 finishRecordingWithHandler_];
    _Block_release(v10);
  }

  v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;

  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  sub_23A9D036C();
  v13 = (a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v14 = v13[1];
  qword_27DFC0980 = *v13;
  qword_27DFC0988 = v14;

  result = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (result)
  {
    v19 = v3;
    [result stop];
    result = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (result)
    {
      [result stop];
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v16 = sub_23AA0D534();
      v25 = sub_23A9E3688;
      v26 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_23A9AD0B8;
      v24 = &block_descriptor_291;
      v17 = _Block_copy(&aBlock);

      sub_23AA0CEE4();
      aBlock = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v8, v5, v17);
      _Block_release(v17);

      (*(v19 + 8))(v5, v2);
      return (*(v6 + 8))(v8, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}