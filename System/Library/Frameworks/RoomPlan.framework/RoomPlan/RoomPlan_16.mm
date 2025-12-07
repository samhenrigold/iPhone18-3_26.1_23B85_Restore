id sub_23A9E1664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23AA0BF14();
  v17[0] = 0;
  v9 = [v4 initWithBaseConfiguration:a1 fileURL:v8 replayMode:a3 outError:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_23AA0BFB4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a2, v11);
  }

  else
  {
    v14 = v17[0];
    sub_23AA0BE74();

    swift_willThrow();
    v15 = sub_23AA0BFB4();
    (*(*(v15 - 8) + 8))(a2, v15);
  }

  return v9;
}

void sub_23A9E17C0(unint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    sub_23A9553B4();
    if (a1 >> 62)
    {
      v2 = sub_23AA0D7F4();
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v11 = MEMORY[0x277D84F90];
      sub_23AA0D964();
      if (v2 < 0)
      {
        __break(1u);
        return;
      }

      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EE90360](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        type metadata accessor for RoomScanKeyframeWrapper();
        v7 = swift_allocObject();
        *(v7 + 24) = 0;
        objc_allocWithZone(type metadata accessor for RoomScanKeyframe(0));
        v8 = v6;
        v9 = sub_23A9A6F68(v8);

        v10 = *(v7 + 24);
        *(v7 + 16) = v9;
        *(v7 + 24) = v8;

        sub_23AA0D944();
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
      }

      while (v2 != v4);
      v3 = v11;
    }

    sub_23A9CCF78(v3);
  }
}

double sub_23A9E19B4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_23A9E1A6C(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) == 1)
    {
      v20 = Strong;
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v21 = v4;
      v19 = sub_23AA0D534();
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = a1;
      aBlock[4] = sub_23A9E2FF0;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_252;
      v14 = _Block_copy(aBlock);
      v15 = v1;
      v16 = a1;

      sub_23AA0CEE4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      v17 = v19;
      MEMORY[0x23EE8FFE0](0, v10, v6, v14);
      _Block_release(v14);

      (*(v21 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }
  }

  return result;
}

void sub_23A9E1DBC(void *a1)
{
  if (qword_27DFAE520 != -1)
  {
    swift_once();
  }

  sub_23AA08EAC();
  if (qword_27DFAE530 != -1)
  {
    swift_once();
  }

  v2 = qword_27DFC0BB0;
  swift_beginAccess();
  *(v2 + 48) = MEMORY[0x277D84F90];

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) != 1)
    {
      goto LABEL_17;
    }

    if ([a1 worldAlignment])
    {
      v6 = sub_23AA0CE54();
      v7 = sub_23AA0D4A4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_23A8B4000, v6, v7, "Invalid ARConfiguration.WorldAlignment: only gravity is supported", v8, 2u);
        MEMORY[0x23EE91710](v8, -1, -1);
      }

      sub_23A9DE13C();
      v9 = swift_allocError();
      *v10 = 2;
      v11 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v9;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v12 = sub_23AA0D1A4();
      sub_23A955B84(v12, v13);

      sub_23A9CB5E0(0);
      goto LABEL_17;
    }

    if (*(v4 + v5) != 1 || (v14 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration)) == 0)
    {
LABEL_17:

      return;
    }

    sub_23A8D6C58(0, &qword_27DFB1418, 0x277CE5240);
    v15 = v14;
    if (sub_23AA0D634())
    {

      goto LABEL_17;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v16 = sub_23AA0CE54();
      v17 = sub_23AA0D4A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23A8B4000, v16, v17, "Invalid ARConfiguration: only ARWorldTrackingConfiguration is supported", v18, 2u);
        MEMORY[0x23EE91710](v18, -1, -1);
      }

      sub_23A9DE13C();
      v19 = swift_allocError();
      *v20 = 2;
      v21 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v19;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v22 = sub_23AA0D1A4();
      sub_23A955B84(v22, v23);

      sub_23A9CB5E0(0);
    }
  }
}

double sub_23A9E2194(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
    {
      v5 = a1;
      v6 = sub_23AA0CE54();
      v7 = sub_23AA0D494();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v18 = v9;
        *v8 = 136315138;
        swift_getErrorValue();
        v10 = sub_23AA0DC34();
        v12 = sub_23A9A65A4(v10, v11, &v18);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_23A8B4000, v6, v7, "[ARSession didFailWithError] ARSession failure with error: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x23EE91710](v9, -1, -1);
        MEMORY[0x23EE91710](v8, -1, -1);
      }

      sub_23A9DE13C();
      v13 = swift_allocError();
      *v14 = 1;
      v15 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v13;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      LOBYTE(v18) = 1;
      v16 = sub_23AA0D1A4();
      sub_23A955B84(v16, v17);

      sub_23A9CB5E0(1);
    }

    else
    {
    }
  }

  return result;
}

double sub_23A9E23D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_23AA0CEC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23AA0CF24();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = a1;
    aBlock[4] = a3;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = v22;
    v17 = _Block_copy(aBlock);
    v18 = v4;
    v19 = a1;
    sub_23AA0CEE4();
    v24 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v20 = v21;
    MEMORY[0x23EE8FFE0](0, v13, v10, v17);
    _Block_release(v17);

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v23);
  }

  return result;
}

void sub_23A9E26B0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = sub_23AA0D7F4();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v35 = v8;
  v36 = v5;
  v33 = v9;
  v34 = v7;
  if (v11)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23A976130(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v30 = v2;
    v31 = v4;
    v13 = 0;
    v14 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EE90360](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 dictionaryRepresentation];
      if (v17)
      {
        v18 = v17;
        v19 = sub_23AA0D034();
      }

      else
      {

        v19 = 0;
      }

      aBlock[0] = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23A976130((v20 > 1), v21 + 1, 1);
        v14 = aBlock[0];
      }

      ++v13;
      *(v14 + 16) = v21 + 1;
      *(v14 + 8 * v21 + 32) = v19;
    }

    while (v11 != v13);
    v2 = v30;
    v4 = v31;
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v14;
    v25[4] = v2;
    aBlock[4] = sub_23A9E2EC4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_207_0;
    v26 = _Block_copy(aBlock);

    v27 = v2;
    v28 = v32;
    sub_23AA0CEE4();
    v37 = v12;
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v29 = v34;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v28, v29, v26);
    _Block_release(v26);

    (*(v36 + 8))(v29, v4);
    (*(v33 + 8))(v28, v35);

    return;
  }

LABEL_21:
  __break(1u);
}

double sub_23A9E2B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v8 = sub_23AA0CEC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23AA0CF24();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *(v17 + 24) = a1;
    aBlock[4] = a4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = v22;
    v18 = _Block_copy(aBlock);
    v19 = v5;
    sub_23AA0CEE4();
    v24 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v20 = v21;
    MEMORY[0x23EE8FFE0](0, v14, v11, v18);
    _Block_release(v18);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_23A9E2E04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9E2E44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9E2E7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E2ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9E2F30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9E2F98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E2FF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E3044()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_23AA0C0E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[17]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 0xF);
}

void sub_23A9E31C0()
{
  v1 = *(type metadata accessor for CapturedRoom(0) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_23A9CF9EC((v0 + 16), v0 + v2, v4, v6, v7);
}

uint64_t sub_23A9E3260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E32C8()
{
  v1 = *(sub_23AA0D604() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_23AA0D5F4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 2, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_23A9E33E8()
{
  v1 = *(sub_23AA0D604() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23A9CDEC0(v0 + v2, v3);
}

void sub_23A9E34AC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (v2)
    {
      [v2 updateWithFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_272Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

id sub_23A9E3534()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (result)
  {
    return [result updateWithFrame_];
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9E355C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E35C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E3688()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23A9E36C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig);
  *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
}

void sub_23A9E37D0(unint64_t a1)
{
  v3 = sub_23A989220(a1, 0.1);
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    if ((v1[4].i8[0] & 1) == 0)
    {
      v6 = v1[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23AA11C20;
      *(v7 + 32) = v5;
      *v8.i32 = -*(&v5 + 1);
      v9 = vsub_f32(0, v5);
      *(v7 + 40) = v9;
      *(v7 + 48) = vzip1_s32(v8, v5);
      *v10.i32 = *(&v5 + 1) + 0.0;
      *(v7 + 56) = vzip1_s32(v10, v9);
      v11 = v7;
      sub_23A9E38F4(&v11, v6);
      if (!*(v11 + 2))
      {
        __break(1u);
        return;
      }

      v5 = *(v11 + 4);
    }

    v1[3] = v5;
    v1[4].i8[0] = 0;

    sub_23A989EB4(a1, v5, 0);
  }
}

void sub_23A9E38F4(char **a1, float32x2_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A975C20(v4);
  }

  v5 = *(v4 + 2);
  v22[0] = (v4 + 32);
  v22[1] = v5;
  v6 = sub_23AA0DBA4();
  if (v6 >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v4 + 32);
      do
      {
        v13 = *&v4[8 * v11 + 32];
        v14 = vmul_f32(v13, a2);
        v15 = vadd_f32(v14, vdup_lane_s32(v14, 1));
        v16 = v10;
        v17 = v12;
        do
        {
          v18 = *v17;
          v19 = vmul_f32(*v17, a2);
          if ((vcgt_f32(v15, vadd_f32(v19, vdup_lane_s32(v19, 1))).u8[0] & 1) == 0)
          {
            break;
          }

          *v17 = v13;
          v17[1] = v18;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = v6;
    v8 = (v5 >> 1);
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v9 = sub_23AA0D324();
      v9[2] = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v21[0] = v9 + 4;
    v21[1] = v8;
    sub_23A9E3A8C(v21, a2, v23, v22, v7);
    v9[2] = 0;
  }

  *a1 = v4;
}

void sub_23A9E3A8C(float32x2_t **a1, float32x2_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = a4[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v12 = sub_23A977E20(v12);
    }

    v87 = *(v12 + 2);
    if (v87 >= 2)
    {
      while (*a4)
      {
        v88 = *&v12[16 * v87];
        v89 = *&v12[16 * v87 + 24];
        sub_23A9E4044((*a4 + 8 * v88), (*a4 + 8 * *&v12[16 * v87 + 16]), (*a4 + 8 * v89), v6, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v89 < v88)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_23A977E20(v12);
        }

        if (v87 - 2 >= *(v12 + 2))
        {
          goto LABEL_114;
        }

        v90 = &v12[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        sub_23A977D94(v87 - 1);
        v87 = *(v12 + 2);
        if (v87 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v10 = a5;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11++;
    if (v11 < v9)
    {
      v14 = *(*a4 + 8 * v11);
      v15 = vmul_f32(v14, a2);
      v16 = vmul_f32(*(*a4 + 8 * v13), a2);
      v17 = vadd_f32(vzip1_s32(v16, v15), vzip2_s32(v16, v15));
      v18 = vcgt_f32(vdup_lane_s32(v17, 1), v17);
      v19 = v13 + 2;
      while (v9 != v19)
      {
        v20 = vmul_f32(v14, a2);
        v21 = *(*a4 + 8 * v19);
        v22 = vmul_f32(v21, a2);
        v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
        v24 = vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v23, 1), v23), v18)).u8[0];
        ++v19;
        v14 = v21;
        if ((v24 & 1) == 0)
        {
          v11 = v19 - 1;
          if ((v18.i8[0] & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v9;
      if ((v18.i8[0] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_117;
      }

      if (v13 < v11)
      {
        v25 = 8 * v11 - 8;
        v26 = 8 * v13;
        v27 = v11;
        v28 = v13;
        do
        {
          if (v28 != --v27)
          {
            v30 = *a4;
            if (!*a4)
            {
              goto LABEL_123;
            }

            v29 = *(v30 + v26);
            *(v30 + v26) = *(v30 + v25);
            *(v30 + v25) = v29;
          }

          ++v28;
          v25 -= 8;
          v26 += 8;
        }

        while (v28 < v27);
        v9 = a4[1];
      }
    }

LABEL_20:
    if (v11 < v9)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_116;
      }

      if (v11 - v13 < v10)
      {
        if (__OFADD__(v13, v10))
        {
          goto LABEL_118;
        }

        if (v13 + v10 < v9)
        {
          v9 = v13 + v10;
        }

        if (v9 < v13)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v9)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23A938B2C(0, *(v12 + 2) + 1, 1, v12);
    }

    v6 = *(v12 + 2);
    v42 = *(v12 + 3);
    v43 = v6 + 1;
    if (v6 >= v42 >> 1)
    {
      v12 = sub_23A938B2C((v42 > 1), v6 + 1, 1, v12);
    }

    *(v12 + 2) = v43;
    v44 = &v12[16 * v6];
    *(v44 + 4) = v13;
    *(v44 + 5) = v11;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v6)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v12 + 4);
          v48 = *(v12 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v12[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = &v12[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v12[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = &v12[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
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
          goto LABEL_119;
        }

        if (!*a4)
        {
          goto LABEL_122;
        }

        v85 = *&v12[16 * v84 + 32];
        v6 = *&v12[16 * v46 + 40];
        sub_23A9E4044((*a4 + 8 * v85), (*a4 + 8 * *&v12[16 * v46 + 32]), (*a4 + 8 * v6), v45, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v6 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_23A977E20(v12);
        }

        if (v84 >= *(v12 + 2))
        {
          goto LABEL_101;
        }

        v86 = &v12[16 * v84];
        *(v86 + 4) = v85;
        *(v86 + 5) = v6;
        sub_23A977D94(v46);
        v43 = *(v12 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v12[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v12[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
      }

      if (v62 >= v54)
      {
        v80 = &v12[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = a4[1];
    v10 = a5;
    if (v11 >= v9)
    {
      goto LABEL_88;
    }
  }

  v31 = *a4;
  v32 = *a4 + 8 * v11 - 8;
  v33 = v13 - v11;
LABEL_30:
  v34 = *(v31 + 8 * v11);
  v35 = vmul_f32(v34, a2);
  v36 = vadd_f32(v35, vdup_lane_s32(v35, 1));
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38;
    v40 = vmul_f32(*v38, a2);
    if ((vcgt_f32(v36, vadd_f32(v40, vdup_lane_s32(v40, 1))).u8[0] & 1) == 0)
    {
LABEL_29:
      ++v11;
      v32 += 8;
      --v33;
      if (v11 != v9)
      {
        goto LABEL_30;
      }

      v11 = v9;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    *v38 = v34;
    v38[1] = v39;
    --v38;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_23A9E4044(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t a5)
{
  v5 = a4;
  v6 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v5[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = vmul_f32(*v8, a5);
      v20 = vmul_f32(*v5, a5);
      v21 = vadd_f32(vzip1_s32(v20, v19), vzip2_s32(v20, v19));
      if (vcgt_f32(vdup_lane_s32(v21, 1), v21).u8[0])
      {
        break;
      }

      v17 = *v5;
      v18 = v9 == v5++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v5[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_24:
    v22 = v8 - 1;
    --v6;
    v23 = v16;
    do
    {
      v24 = v6 + 1;
      v25 = *(v23 - 8);
      v23 -= 8;
      v26 = v25;
      v27 = vmul_f32(v25, a5);
      v28 = vmul_f32(*v22, a5);
      v29 = vadd_f32(vzip1_s32(v28, v27), vzip2_s32(v28, v27));
      if (vcgt_f32(vdup_lane_s32(v29, 1), v29).u8[0])
      {
        if (v24 != v8)
        {
          *v6 = *v22;
        }

        if (v16 <= v5 || (--v8, v22 <= v9))
        {
          v8 = v22;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v16)
      {
        *v6 = v26;
      }

      --v6;
      v16 = v23;
    }

    while (v23 > v5);
    v16 = v23;
  }

LABEL_35:
  v30 = v16 - v5 + (v16 - v5 < 0 ? 7uLL : 0);
  if (v8 != v5 || v8 >= (v5 + (v30 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v5, 8 * (v30 >> 3));
  }

  return 1;
}

unint64_t sub_23A9E427C(unint64_t a1)
{
  v2 = sub_23AA0C0E4();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v137[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v137[-v7];
  v9 = sub_23A9888E0(a1);
  v10 = sub_23A988E44(v9);
  v11.n128_u32[0] = 1032805417;
  result = sub_23A98B0B0(a1, v11);
  v13 = result;
  v161 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_107;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    do
    {
      if (v14 < 1)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        return result;
      }

      v157 = v10;
      v150 = v8;
      v151 = v5;
      v148 = v2;
      v15 = 0;
      v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      v159 = v13 & 0xC000000000000001;
      v147 = (v3 + 16);
      v146 = (v3 + 32);
      v149 = xmmword_23AA12220;
      *&v154 = MEMORY[0x277D84F90];
      v156 = v9;
      while (1)
      {
        v16 = v159 ? MEMORY[0x23EE90360](v15, v13) : *(v13 + 8 * v15 + 32);
        v8 = v16;
        v10 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v17 = *&v8[v10];
        if ((v17 & 0xC000000000000001) != 0)
        {

          v18 = sub_23AA0D7F4();
          if (!v18)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v18 = *(v17 + 16);

          if (!v18)
          {
LABEL_17:

            v5 = MEMORY[0x277D84F90];
            goto LABEL_20;
          }
        }

        if (v18 < 1)
        {
          v5 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v5 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v5);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 25;
          }

          *(v5 + 16) = v18;
          *(v5 + 24) = (2 * (v20 >> 3)) | 1;
        }

        sub_23A9F3C70(&v160, (v5 + 32), v18, v17);
        v3 = v21;
        sub_23A8CA904(v160);
        if (v3 != v18)
        {
          break;
        }

LABEL_20:
        v3 = *&v8[v10];
        if ((v3 & 0xC000000000000001) != 0)
        {

          v22 = sub_23AA0D7F4();

          if (v22 >= 2)
          {
            goto LABEL_24;
          }
        }

        else if (*(v3 + 16) >= 2)
        {
LABEL_24:
          if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
          {
            v10 = *(v5 + 16);
            if (v10)
            {
              goto LABEL_27;
            }

LABEL_87:

            goto LABEL_6;
          }

          v10 = sub_23AA0D7F4();
          if (!v10)
          {
            goto LABEL_87;
          }

LABEL_27:
          v2 = (v5 & 0xC000000000000001);
          if ((v5 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x23EE90360](0, v5);
            if (!*(v9 + 16))
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (!*(v5 + 16))
            {
              goto LABEL_106;
            }

            v23 = *(v5 + 32);

            if (!*(v9 + 16))
            {
LABEL_102:

              goto LABEL_103;
            }
          }

          v24 = sub_23A9EDE74(v23);
          if ((v25 & 1) == 0)
          {
            goto LABEL_102;
          }

          v158 = v23;
          v26 = v13;
          v27 = v14;
          v28 = *(v9 + 56) + 16 * v24;
          v29 = *(v28 + 8);
          v30 = *(v157 + 16);
          v31 = *v28;
          if (!v30)
          {

            goto LABEL_39;
          }

          v155 = v31;
          v32 = v29;
          v33 = sub_23A9EDE74(v158);
          if ((v35 & 1) == 0)
          {

LABEL_39:

            v9 = v156;
            v14 = v27;
            v13 = v26;
LABEL_103:
            v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
            goto LABEL_6;
          }

          v36 = v33;
          v153 = v32;
          result = v10 - 1;
          v9 = v156;
          if (__OFSUB__(v10, 1))
          {
            goto LABEL_111;
          }

          v14 = v27;
          v34.i64[0] = *(*(v157 + 56) + 8 * v36);
          v152 = v34;
          if (v2)
          {
            v37 = MEMORY[0x23EE90360](result, v5);

            v13 = v26;
            v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
            if (!*(v9 + 16))
            {
LABEL_54:

              goto LABEL_87;
            }
          }

          else
          {
            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_112;
            }

            v13 = v26;
            v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
            if (result >= *(v5 + 16))
            {
              goto LABEL_113;
            }

            v37 = *(v5 + 8 * result + 32);

            if (!*(v9 + 16))
            {
              goto LABEL_54;
            }
          }

          v38 = sub_23A9EDE74(v37);
          if (v39)
          {
            v40 = *(v9 + 56) + 16 * v38;
            v41 = *(v40 + 8);
            v42 = v157;
            v43 = *(v157 + 16);
            v44 = *v40;
            v45 = v44;
            if (v43)
            {
              v145 = v44;
              v46 = v41;
              v47 = sub_23A9EDE74(v37);
              if (v54)
              {
                v53.i64[0] = *(*(v42 + 56) + 8 * v47);
                v55 = v158;
                v56 = *(v37 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);
                v57 = *&v8[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                if (*(v158 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness))
                {
                  v142 = v46;
                  if (v56)
                  {
                    v58 = vadd_f32(v57, vmul_f32(vadd_f32(*&v155[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0xBF000000BF000000));
                    v59 = vmul_f32(v58, v58);
                    *&v51 = 1065353216;
                    if (vaddv_f32(v59) >= 0.0001)
                    {
                      v60 = vadd_f32(v59, vdup_lane_s32(v59, 1)).u32[0];
                      v61 = vrsqrte_f32(v60);
                      v62 = vmul_f32(v61, vrsqrts_f32(v60, vmul_f32(v61, v61)));
                      *v50.i8 = vmul_f32(v62, v62);
                      *&v51 = vmul_n_f32(v58, vmul_f32(v62, vrsqrts_f32(v60, *v50.i8)).f32[0]);
                    }

                    v63 = vsub_f32(vmul_f32(vadd_f32(*&v145[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v46[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000), v57);
                    *v48.i8 = vmul_f32(v63, v63);
                    *&v49 = 3212836864;
                    if (vaddv_f32(*v48.i8) >= 0.0001)
                    {
                      v64 = vadd_f32(*v48.i8, vdup_lane_s32(*v48.i8, 1)).u32[0];
                      v65 = vrsqrte_f32(v64);
                      v66 = vmul_f32(v65, vrsqrts_f32(v64, vmul_f32(v65, v65)));
                      *v50.i8 = vmul_f32(v66, v66);
                      *v48.i8 = vmul_f32(v66, vrsqrts_f32(v64, *v50.i8));
                      *&v49 = vmul_n_f32(v63, *v48.i32);
                    }

                    v154 = v49;
                    v67 = *(&v51 + 1);
                    *v48.i32 = -*(&v51 + 1);
                    v68 = *(&v49 + 1);
                    v69.i32[1] = 0;
                    v152 = v48;
                    v69.f32[0] = -*(&v51 + 1);
                    v69.i64[1] = v51;
                    *v50.i32 = -*(&v49 + 1);
                    v70.i32[1] = 0;
                    v143 = v50;
                    v70.f32[0] = -*(&v49 + 1);
                    v70.i64[1] = v49;
                    v144 = v51;
                    if (_simd_orient_vf3(v69, v70, v149) > 0.0)
                    {
                      *(&v52 + 1) = *(&v144 + 1);
                      *&v52 = vsub_f32(0, *&v144);
                      *v50.i8 = vext_s8(vadd_f32(*&v144, 0), *&v52, 4uLL);
                      *(&v52 + 1) = 0.0 - v67;
                      *(&v51 + 1) = *(&v154 + 1);
                      *&v51 = vsub_f32(0, *&v154);
                      *v53.i8 = vzip1_s32(COERCE_UNSIGNED_INT(v68 + 0.0), *&v51);
                      goto LABEL_97;
                    }

                    v52 = v144;
                    *v50.i8 = vzip1_s32(*v152.i8, *&v144);
                    v51 = v154;
                    *v53.i8 = vzip1_s32(*v143.i8, *&v154);
LABEL_92:
                    v112 = v55;
                    v113 = v37;
LABEL_98:
                    v144 = v52;
                    v152 = v50;
                    v154 = v51;
                    v139 = v53;
                    v128 = _simd_orient_vf3(vextq_s8(vzip1q_s32(0, v50), 0, 4uLL), vextq_s8(vzip1q_s32(0, v53), 0, 4uLL), v149);
                    v129 = *v147;
                    v143.i64[0] = v37;
                    v130 = v148;
                    v129(v150, v112 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v148);
                    v140 = v112;
                    v131 = *(v112 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
                    v129(v151, v113 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v130);
                    v141 = v113;
                    v132 = *(v113 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
                    v138 = v128 >= 0.0;
                    LOBYTE(v129) = v132 == 1;
                    type metadata accessor for JunctionPoint(0);
                    v133 = swift_allocObject();
                    *(v133 + 16) = v57;
                    v134 = *v146;
                    (*v146)(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID, v150, v130);
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isLeftCurved) = v131 == 1;
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection) = v144;
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal) = v152.i64[0];
                    v134(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v151, v130);
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isRightCurved) = v129;
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection) = v154;
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal) = v139.i64[0];
                    *(v133 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration) = v138;

                    MEMORY[0x23EE8FD70](v135);
                    if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_23AA0D314();
                    }

                    sub_23AA0D334();

                    *&v154 = v161;
                    v9 = v156;
                    goto LABEL_103;
                  }

                  v78 = *&v145[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                  v79 = *&v46[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                  v80 = vsub_f32(v79, v78);
                  v81 = vmul_f32(v80, v80);
                  if (vaddv_f32(v81) >= 0.0001)
                  {
                    v89 = vadd_f32(v81, vdup_lane_s32(v81, 1)).u32[0];
                    v90 = vrsqrte_f32(v89);
                    v91 = vmul_f32(v90, vrsqrts_f32(v89, vmul_f32(v90, v90)));
                    *&v51 = vmul_n_f32(v80, vmul_f32(v91, vrsqrts_f32(v89, vmul_f32(v91, v91))).f32[0]);
                  }

                  else
                  {
                    *&v51 = 3212836864;
                  }

                  v92 = vaddv_f32(vmul_f32(vadd_f32(v57, vmul_f32(vadd_f32(v78, v79), 0xBF000000BF000000)), *&v51));
                  v93 = vmul_f32(vadd_f32(*&v155[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000);
                  if (v92 < 0.0)
                  {
                    v94 = vsub_f32(v57, v93);
                    v95 = vmul_f32(v94, v94);
                    if (vaddv_f32(v95) >= 0.0001)
                    {
                      v117 = vadd_f32(v95, vdup_lane_s32(v95, 1)).u32[0];
                      v118 = vrsqrte_f32(v117);
                      v119 = vmul_f32(v118, vrsqrts_f32(v117, vmul_f32(v118, v118)));
                      *&v52 = vmul_n_f32(v94, vmul_f32(v119, vrsqrts_f32(v117, vmul_f32(v119, v119))).f32[0]);
                    }

                    else
                    {
                      *&v52 = 1065353216;
                    }

                    v94.f32[0] = -*(&v52 + 1);
                    *v50.i8 = vzip1_s32(v94, *&v52);
                    goto LABEL_92;
                  }

                  v104 = vsub_f32(v93, v57);
                  v105 = vmul_f32(v104, v104);
                  if (vaddv_f32(v105) >= 0.0001)
                  {
                    v123 = vadd_f32(v105, vdup_lane_s32(v105, 1)).u32[0];
                    v124 = vrsqrte_f32(v123);
                    v125 = vmul_f32(v124, vrsqrts_f32(v123, vmul_f32(v124, v124)));
                    *&v52 = vmul_n_f32(v104, vmul_f32(v125, vrsqrts_f32(v123, vmul_f32(v125, v125))).f32[0]);
                  }

                  else
                  {
                    *&v52 = 1065353216;
                  }

                  v104.f32[0] = -*(&v52 + 1);
                  *v50.i8 = vzip1_s32(v104, *&v52);
                }

                else
                {
                  v71 = *&v155[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                  v72 = *&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                  v73 = vadd_f32(v57, vmul_f32(vadd_f32(v71, v72), 0xBF000000BF000000));
                  v74 = vsub_f32(v72, v71);
                  v75 = vmul_f32(v74, v74);
                  v76 = vadd_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
                  v77 = vaddv_f32(v75);
                  if (*(v37 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness))
                  {
                    if (v77 >= 0.0001)
                    {
                      v83 = vrsqrte_f32(v76);
                      v84 = vmul_f32(v83, vrsqrts_f32(v76, vmul_f32(v83, v83)));
                      *&v52 = vmul_n_f32(v74, vmul_f32(v84, vrsqrts_f32(v76, vmul_f32(v84, v84))).f32[0]);
                    }

                    else
                    {
                      *&v52 = 1065353216;
                    }

                    v85 = vaddv_f32(vmul_f32(v73, *&v52));
                    v86 = vmul_f32(vadd_f32(*&v145[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v46[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000);
                    v142 = v46;
                    if (v85 > 0.0)
                    {
                      v87 = vsub_f32(v86, v57);
                      v88 = vmul_f32(v87, v87);
                      if (vaddv_f32(v88) >= 0.0001)
                      {
                        v114 = vadd_f32(v88, vdup_lane_s32(v88, 1)).u32[0];
                        v115 = vrsqrte_f32(v114);
                        v116 = vmul_f32(v115, vrsqrts_f32(v114, vmul_f32(v115, v115)));
                        *&v51 = vmul_n_f32(v87, vmul_f32(v116, vrsqrts_f32(v114, vmul_f32(v116, v116))).f32[0]);
                      }

                      else
                      {
                        *&v51 = 3212836864;
                      }

                      v50 = v152;
                      v87.f32[0] = -*(&v51 + 1);
                      *v53.i8 = vzip1_s32(v87, *&v51);
                      goto LABEL_92;
                    }

                    v102 = vsub_f32(v57, v86);
                    v103 = vmul_f32(v102, v102);
                    if (vaddv_f32(v103) >= 0.0001)
                    {
                      v120 = vadd_f32(v103, vdup_lane_s32(v103, 1)).u32[0];
                      v121 = vrsqrte_f32(v120);
                      v122 = vmul_f32(v121, vrsqrts_f32(v120, vmul_f32(v121, v121)));
                      *&v51 = vmul_n_f32(v102, vmul_f32(v122, vrsqrts_f32(v120, vmul_f32(v122, v122))).f32[0]);
                    }

                    else
                    {
                      *&v51 = 3212836864;
                    }

                    v50 = v152;
                    v102.f32[0] = -*(&v51 + 1);
                    *v53.i8 = vzip1_s32(v102, *&v51);
                  }

                  else
                  {
                    v82 = v145;
                    if (v77 >= 0.0001)
                    {
                      v96 = vrsqrte_f32(v76);
                      v97 = vmul_f32(v96, vrsqrts_f32(v76, vmul_f32(v96, v96)));
                      *&v52 = vmul_n_f32(v74, vmul_f32(v97, vrsqrts_f32(v76, vmul_f32(v97, v97))).f32[0]);
                    }

                    else
                    {
                      *&v52 = 1065353216;
                    }

                    v98 = *&v145[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v99 = *&v46[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v100 = vsub_f32(v99, v98);
                    v101 = vmul_f32(v100, v100);
                    if (vaddv_f32(v101) >= 0.0001)
                    {
                      v106 = vadd_f32(v101, vdup_lane_s32(v101, 1)).u32[0];
                      v107 = vrsqrte_f32(v106);
                      v108 = vmul_f32(v107, vrsqrts_f32(v106, vmul_f32(v107, v107)));
                      *&v51 = vmul_n_f32(v100, vmul_f32(v108, vrsqrts_f32(v106, vmul_f32(v108, v108))).f32[0]);
                    }

                    else
                    {
                      *&v51 = 3212836864;
                    }

                    v50 = v152;
                    v109 = vmul_f32(v73, *&v52);
                    v110 = vmul_f32(vadd_f32(v57, vmul_f32(vadd_f32(v98, v99), 0xBF000000BF000000)), *&v51);
                    v111 = vadd_f32(vzip1_s32(v109, v110), vzip2_s32(v109, v110));
                    if (vmul_lane_f32(v111, v111, 1).f32[0] >= 0.0)
                    {

                      goto LABEL_103;
                    }

                    v142 = v46;
                    v55 = v158;
                    v112 = v158;
                    v113 = v37;
                    if (v111.f32[0] > 0.0)
                    {
                      goto LABEL_98;
                    }
                  }
                }

LABEL_97:
                v126 = v52;
                v127 = v50.i64[0];
                *&v52 = v51;
                v50.i64[0] = v53.i64[0];
                v112 = v37;
                *&v51 = v126;
                v53.i64[0] = v127;
                v113 = v55;
                goto LABEL_98;
              }
            }

            else
            {
            }

            goto LABEL_103;
          }

          goto LABEL_54;
        }

LABEL_6:
        if (v14 == ++v15)
        {

          v136 = v154;
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      result = sub_23AA0D7F4();
      v14 = result;
    }

    while (result);
  }

  v136 = MEMORY[0x277D84F90];
LABEL_109:

  return v136;
}

float32x4_t sub_23A9E5210()
{
  v1 = vdupq_lane_s32(0, 0);
  v2 = v1;
  v2.i32[0] = *(v0 + 144);
  v3 = v1;
  v3.i32[1] = HIDWORD(*(v0 + 144));
  v1.i32[2] = *(v0 + 152);
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*MEMORY[0x277D860B8])), v3, *MEMORY[0x277D860B8], 1), v1, *MEMORY[0x277D860B8], 2), xmmword_23AA11AE0, *MEMORY[0x277D860B8], 3);
  v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), v3, *(MEMORY[0x277D860B8] + 16), 1), v1, *(MEMORY[0x277D860B8] + 16), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 16), 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 32))), v3, *(MEMORY[0x277D860B8] + 32), 1), v1, *(MEMORY[0x277D860B8] + 32), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 32), 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(v0 + 192))), v3, *(v0 + 192), 1), v1, *(v0 + 192), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 48), 3);
  v8 = *(v0 + 64);
  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 32))), v5, *(v0 + 32), 1), v6, *(v0 + 32), 2), v7, *(v0 + 32), 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 48))), v5, *(v0 + 48), 1), v6, *(v0 + 48), 2), v7, *(v0 + 48), 3);
  *(v0 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 16))), v5, *(v0 + 16), 1), v6, *(v0 + 16), 2), v7, *(v0 + 16), 3);
  *(v0 + 96) = result;
  *(v0 + 112) = v10;
  *(v0 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v8.f32[0]), v5, *v8.f32, 1), v6, v8, 2), v7, v8, 3);
  return result;
}

void sub_23A9E5314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12120;
  v3 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v205 = v4;
  v217 = v3;
  v186 = v6;
  v194 = v5;
  type metadata accessor for SplineCorner();
  v7 = swift_allocObject();
  v8.n128_u64[0] = 0;
  *(inited + 32) = sub_23A8CC080(1.0, 0.93, v8, 0.6, 0.98, v217, v205, v194, v7, v9, v10, v11, v12, v13, v14, v15, v186);
  v16 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v206 = v17;
  v218 = v16;
  v187 = v19;
  v195 = v18;
  v20 = swift_allocObject();
  v21.n128_u64[0] = 0;
  *(inited + 40) = sub_23A8CC080(1.0, 0.93, v21, 0.6, 0.98, v218, v206, v195, v20, v22, v23, v24, v25, v26, v27, v28, v187);
  v29 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v207 = v30;
  v219 = v29;
  v188 = v32;
  v196 = v31;
  v33 = swift_allocObject();
  v34.n128_u64[0] = 0;
  *(inited + 48) = sub_23A8CC080(1.0, 0.93, v34, 0.6, 0.98, v219, v207, v196, v33, v35, v36, v37, v38, v39, v40, v41, v188);
  v42 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v208 = v43;
  v220 = v42;
  v189 = v45;
  v197 = v44;
  v46 = swift_allocObject();
  v47.n128_u64[0] = 0;
  *(inited + 56) = sub_23A8CC080(1.0, 0.93, v47, 0.6, 0.98, v220, v208, v197, v46, v48, v49, v50, v51, v52, v53, v54, v189);
  type metadata accessor for SplineGroup();
  swift_allocObject();
  v55 = sub_23A913D30(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_23AA12120;
  v57 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v58 = vmulq_f32(v57, 0);
  v221 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v57, 0, v59), 0, v60), 0, v61);
  v209 = vmlaq_f32(vmlaq_f32(vaddq_f32(v59, v58), 0, v60), 0, v61);
  v62 = vmlaq_f32(v58, 0, v59);
  v198 = vmlaq_f32(vaddq_f32(v60, v62), 0, v61);
  v190 = vaddq_f32(v61, vmlaq_f32(v62, 0, v60));
  v63 = swift_allocObject();
  v64.n128_u64[0] = 0;
  *(v56 + 32) = sub_23A8CC080(1.0, 1.0, v64, 0.4, 0.98, v221, v209, v198, v63, v65, v66, v67, v68, v69, v70, v71, v190);
  v72 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v73 = vmulq_f32(v72, 0);
  v222 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v72, 0, v74), 0, v75), 0, v76);
  v210 = vmlaq_f32(vmlaq_f32(vaddq_f32(v74, v73), 0, v75), 0, v76);
  v77 = vmlaq_f32(v73, 0, v74);
  v199 = vmlaq_f32(vaddq_f32(v75, v77), 0, v76);
  v191 = vaddq_f32(v76, vmlaq_f32(v77, 0, v75));
  v78 = swift_allocObject();
  v79.n128_u64[0] = 0;
  *(v56 + 40) = sub_23A8CC080(1.0, 1.0, v79, 0.4, 0.98, v222, v210, v199, v78, v80, v81, v82, v83, v84, v85, v86, v191);
  v87 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v88 = vmulq_f32(v87, 0);
  v223 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v87, 0, v89), 0, v90), 0, v91);
  v211 = vmlaq_f32(vmlaq_f32(vaddq_f32(v89, v88), 0, v90), 0, v91);
  v92 = vmlaq_f32(v88, 0, v89);
  v200 = vmlaq_f32(vaddq_f32(v90, v92), 0, v91);
  v192 = vaddq_f32(v91, vmlaq_f32(v92, 0, v90));
  v93 = swift_allocObject();
  v94.n128_u64[0] = 0;
  *(v56 + 48) = sub_23A8CC080(1.0, 1.0, v94, 0.4, 0.98, v223, v211, v200, v93, v95, v96, v97, v98, v99, v100, v101, v192);
  v102 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v103 = vmulq_f32(v102, 0);
  v224 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v102, 0, v104), 0, v105), 0, v106);
  v212 = vmlaq_f32(vmlaq_f32(vaddq_f32(v104, v103), 0, v105), 0, v106);
  v107 = vmlaq_f32(v103, 0, v104);
  v201 = vmlaq_f32(vaddq_f32(v105, v107), 0, v106);
  v193 = vaddq_f32(v106, vmlaq_f32(v107, 0, v105));
  v108 = swift_allocObject();
  v109.n128_u64[0] = 0;
  *(v56 + 56) = sub_23A8CC080(1.0, 1.0, v109, 0.4, 0.98, v224, v212, v201, v108, v110, v111, v112, v113, v114, v115, v116, v193);
  swift_allocObject();
  v117 = sub_23A913D30(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_23AA12120;
  v119 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v120 = vmulq_f32(v119, 0);
  v229 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v119, 0, v121), 0, v122), 0, v123);
  v225 = vmlaq_f32(vmlaq_f32(vaddq_f32(v121, v120), 0, v122), 0, v123);
  v124 = vmlaq_f32(v120, 0, v121);
  v213 = vmlaq_f32(vaddq_f32(v122, v124), 0, v123);
  v202 = vaddq_f32(v123, vmlaq_f32(v124, 0, v122));
  v125 = swift_allocObject();
  v126.n128_u32[0] = -1.0;
  *(v118 + 32) = sub_23A8CC080(1.0, 0.3, v126, 0.0, 0.999, v229, v225, v213, v125, v127, v128, v129, v130, v131, v132, v133, v202);
  v134 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v135 = vmulq_f32(v134, 0);
  v230 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v134, 0, v136), 0, v137), 0, v138);
  v226 = vmlaq_f32(vmlaq_f32(vaddq_f32(v136, v135), 0, v137), 0, v138);
  v139 = vmlaq_f32(v135, 0, v136);
  v214 = vmlaq_f32(vaddq_f32(v137, v139), 0, v138);
  v203 = vaddq_f32(v138, vmlaq_f32(v139, 0, v137));
  v140 = swift_allocObject();
  v141.n128_u32[0] = -1.0;
  *(v118 + 40) = sub_23A8CC080(1.0, 0.3, v141, 0.0, 0.999, v230, v226, v214, v140, v142, v143, v144, v145, v146, v147, v148, v203);
  v149 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v150 = vmulq_f32(v149, 0);
  v231 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v149, 0, v151), 0, v152), 0, v153);
  v227 = vmlaq_f32(vmlaq_f32(vaddq_f32(v151, v150), 0, v152), 0, v153);
  v154 = vmlaq_f32(v150, 0, v151);
  v215 = vmlaq_f32(vaddq_f32(v152, v154), 0, v153);
  v204 = vaddq_f32(v153, vmlaq_f32(v154, 0, v152));
  v155 = swift_allocObject();
  v156.n128_u32[0] = -1.0;
  *(v118 + 48) = sub_23A8CC080(1.0, 0.3, v156, 0.0, 0.999, v231, v227, v215, v155, v157, v158, v159, v160, v161, v162, v163, v204);
  v164 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v165 = vmulq_f32(v164, 0);
  v233 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v164, 0, v166), 0, v167), 0, v168);
  v232 = vmlaq_f32(vmlaq_f32(vaddq_f32(v166, v165), 0, v167), 0, v168);
  v169 = vmlaq_f32(v165, 0, v166);
  v228 = vmlaq_f32(vaddq_f32(v167, v169), 0, v168);
  v216 = vaddq_f32(v168, vmlaq_f32(v169, 0, v167));
  v170 = swift_allocObject();
  v171.n128_u32[0] = -1.0;
  *(v118 + 56) = sub_23A8CC080(1.0, 0.3, v171, 0.0, 0.999, v233, v232, v228, v170, v172, v173, v174, v175, v176, v177, v178, v216);
  swift_allocObject();
  v179 = sub_23A913D30(v118);
  swift_setDeallocating();
  swift_arrayDestroy();
  v180 = swift_initStackObject();
  *(v180 + 16) = xmmword_23AA12130;
  *(v180 + 32) = v55;
  *(v180 + 40) = v117;
  *(v180 + 48) = v179;
  type metadata accessor for BlendableSplineGroup();
  swift_allocObject();

  sub_23A9129A8(v181);
  v183 = v182;
  *(v0 + 72) = v182;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_beginAccess();
  v184 = *(v183 + 16);

  if (*(v184 + 16))
  {
    v185 = *(v184 + 32);

    swift_beginAccess();
    *(v1 + 80) = v185;
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9E5BC8(void *a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v5 = MEMORY[0x277D84F90];
  *(v1 + 64) = MEMORY[0x277D84F90];
  *(v1 + 72) = 0;
  *(v1 + 80) = v5;
  *(v1 + 96) = xmmword_23AA11AF0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  sub_23A9E5314();
  v6 = *(v1 + 72);
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = *(*(v6 + 32) + 16);
  *(v1 + 56) = v7;
  if (v7 >> 55)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = [a1 newBufferWithLength:v7 << 8 options:32];
  *(v1 + 40) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v9 = sub_23AA0D104();
  v3 = &selRef_initWithDevice_;
  [v8 setLabel_];
  swift_unknownObjectRelease();

  v10 = *(v1 + 72);
  if (!v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  swift_beginAccess();
  v11 = *(v10 + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_28;
  }

  v2 = *(v11 + 32);
  v12 = *(v2 + 16);
  if (v12 >> 58)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = 32 * v12;

  v14 = [a1 newBufferWithBytes:v2 + 32 length:v13 options:0];
  *(v1 + 16) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v15 = sub_23AA0D104();
  [v14 setLabel_];
  swift_unknownObjectRelease();

  v16 = *(v1 + 72);
  if (!v16)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *(v16 + 24);
  v18 = *(v17 + 16);
  if (v18 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v19 = 2 * v18;

  v20 = [a1 newBufferWithBytes:v17 + 32 length:v19 options:0];
  *(v1 + 24) = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v20)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v21 = sub_23AA0D104();
  [v20 setLabel_];
  swift_unknownObjectRelease();

  v22 = *(v1 + 72);
  if (!v22)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v23 = *(v22 + 32);
  v24 = *(v23 + 16);
  if (v24 >> 60)
  {
    goto LABEL_31;
  }

  v25 = 8 * v24;

  v26 = [a1 newBufferWithBytes:v23 + 32 length:v25 options:0];
  *(v1 + 32) = v26;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v26)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v27 = sub_23AA0D104();
  [v26 setLabel_];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23AA1B380;
  v120 = *MEMORY[0x277D860B8];
  v122 = *(MEMORY[0x277D860B8] + 16);
  v124 = *(MEMORY[0x277D860B8] + 32);
  v93 = *(MEMORY[0x277D860B8] + 48);
  v29 = v93;
  v29.i32[0] = 0;
  v110 = v29;
  v30 = xmmword_23AA12210;
  LODWORD(v30) = 0;
  HIDWORD(v30) = v93.i32[3];
  v82 = v30;
  v31 = sub_23A9E759C(90.0, xmmword_23AA12200);
  v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v32.f32[0]), v122, *v32.f32, 1), v124, v32, 2), v82, v32, 3);
  v103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v31.n128_f32[0]), v122, v31.n128_u64[0], 1), v124, v31, 2), v82, v31, 3);
  v88 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v33.f32[0]), v122, *v33.f32, 1), v124, v33, 2), v82, v33, 3);
  v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v34.f32[0]), v122, *v34.f32, 1), v124, v34, 2), v82, v34, 3);
  type metadata accessor for InstanceTransform();
  v35 = swift_allocObject();
  *(v35 + 144) = 0;
  *(v35 + 152) = 0;
  *(v35 + 160) = xmmword_23AA11AF0;
  *(v35 + 176) = 0u;
  *(v35 + 192) = 0u;
  *(v35 + 208) = 0u;
  *(v35 + 16) = v103;
  *(v35 + 32) = v95;
  *(v35 + 48) = v88;
  *(v35 + 64) = v83;
  *(v35 + 80) = v103;
  *(v35 + 96) = v95;
  *(v35 + 112) = v88;
  *(v35 + 128) = v83;
  *(v28 + 32) = v35;
  v36 = xmmword_23AA12220;
  LODWORD(v36) = 0;
  HIDWORD(v36) = v93.i32[3];
  v84 = v36;
  v37 = sub_23A9E759C(90.0, xmmword_23AA12200);
  v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v38.f32[0]), v122, *v38.f32, 1), v124, v38, 2), v84, v38, 3);
  v104 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v37.n128_f32[0]), v122, v37.n128_u64[0], 1), v124, v37, 2), v84, v37, 3);
  v89 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v39.f32[0]), v122, *v39.f32, 1), v124, v39, 2), v84, v39, 3);
  v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v40.f32[0]), v122, *v40.f32, 1), v124, v40, 2), v84, v40, 3);
  v41 = swift_allocObject();
  *(v41 + 144) = 0;
  *(v41 + 152) = 0;
  *(v41 + 160) = xmmword_23AA11AF0;
  *(v41 + 176) = 0u;
  *(v41 + 192) = 0u;
  *(v41 + 208) = 0u;
  *(v41 + 16) = v104;
  *(v41 + 32) = v96;
  *(v41 + 48) = v89;
  *(v41 + 64) = v85;
  *(v41 + 80) = v104;
  *(v41 + 96) = v96;
  *(v41 + 112) = v89;
  *(v41 + 128) = v85;
  *(v28 + 40) = v41;
  v42 = v110;
  v42.i32[1] = 0;
  v111 = v42;
  v42.i32[2] = 1.0;
  v86 = v42;
  v43 = sub_23A9E759C(0.0, xmmword_23AA12200);
  v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v44.f32[0]), v122, *v44.f32, 1), v124, v44, 2), v86, v44, 3);
  v105 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v43.n128_f32[0]), v122, v43.n128_u64[0], 1), v124, v43, 2), v86, v43, 3);
  v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v45.f32[0]), v122, *v45.f32, 1), v124, v45, 2), v86, v45, 3);
  v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v46.f32[0]), v122, *v46.f32, 1), v124, v46, 2), v86, v46, 3);
  v47 = swift_allocObject();
  *(v47 + 144) = 0;
  *(v47 + 152) = 0;
  *(v47 + 160) = xmmword_23AA11AF0;
  *(v47 + 176) = 0u;
  *(v47 + 192) = 0u;
  *(v47 + 208) = 0u;
  *(v47 + 16) = v105;
  *(v47 + 32) = v97;
  *(v47 + 48) = v90;
  *(v47 + 64) = v87;
  *(v47 + 80) = v105;
  *(v47 + 96) = v97;
  *(v47 + 112) = v90;
  *(v47 + 128) = v87;
  *(v28 + 48) = v47;
  v48 = v111;
  v48.i32[2] = -1.0;
  v112 = v48;
  v49 = sub_23A9E759C(0.0, xmmword_23AA12200);
  v98 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v50.f32[0]), v122, *v50.f32, 1), v124, v50, 2), v112, v50, 3);
  v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v49.n128_f32[0]), v122, v49.n128_u64[0], 1), v124, v49, 2), v112, v49, 3);
  v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v51.f32[0]), v122, *v51.f32, 1), v124, v51, 2), v112, v51, 3);
  v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v52.f32[0]), v122, *v52.f32, 1), v124, v52, 2), v112, v52, 3);
  v53 = swift_allocObject();
  *(v53 + 144) = 0;
  *(v53 + 152) = 0;
  *(v53 + 160) = xmmword_23AA11AF0;
  *(v53 + 176) = 0u;
  *(v53 + 192) = 0u;
  *(v53 + 208) = 0u;
  *(v53 + 16) = v106;
  *(v53 + 32) = v98;
  *(v53 + 48) = v91;
  *(v53 + 64) = v113;
  *(v53 + 80) = v106;
  *(v53 + 96) = v98;
  *(v53 + 112) = v91;
  *(v53 + 128) = v113;
  *(v28 + 56) = v53;
  v54.i64[0] = 1065353216;
  v54.i32[2] = 0;
  v54.i32[3] = v93.i32[3];
  v115 = v54;
  v55 = sub_23A9E759C(90.0, xmmword_23AA12220);
  v99 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v56.f32[0]), v122, *v56.f32, 1), v124, v56, 2), v115, v56, 3);
  v107 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v55.n128_f32[0]), v122, v55.n128_u64[0], 1), v124, v55, 2), v115, v55, 3);
  v92 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v57.f32[0]), v122, *v57.f32, 1), v124, v57, 2), v115, v57, 3);
  v116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v58.f32[0]), v122, *v58.f32, 1), v124, v58, 2), v115, v58, 3);
  v59 = swift_allocObject();
  *(v59 + 144) = 0;
  *(v59 + 152) = 0;
  *(v59 + 160) = xmmword_23AA11AF0;
  *(v59 + 176) = 0u;
  *(v59 + 192) = 0u;
  *(v59 + 208) = 0u;
  *(v59 + 16) = v107;
  *(v59 + 32) = v99;
  *(v59 + 48) = v92;
  *(v59 + 64) = v116;
  *(v59 + 80) = v107;
  *(v59 + 96) = v99;
  *(v59 + 112) = v92;
  *(v59 + 128) = v116;
  *(v28 + 64) = v59;
  v60.i64[0] = 3212836864;
  v60.i32[2] = 0;
  v60.i32[3] = v93.i32[3];
  v100 = v60;
  v61 = sub_23A9E759C(90.0, xmmword_23AA12220);
  v114 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v62.f32[0]), v122, *v62.f32, 1), v124, v62, 2), v100, v62, 3);
  v117 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v61.n128_f32[0]), v122, v61.n128_u64[0], 1), v124, v61, 2), v100, v61, 3);
  v108 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v63.f32[0]), v122, *v63.f32, 1), v124, v63, 2), v100, v63, 3);
  v101 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v64.f32[0]), v122, *v64.f32, 1), v124, v64, 2), v100, v64, 3);
  v65 = swift_allocObject();
  *(v65 + 144) = 0;
  *(v65 + 152) = 0;
  *(v65 + 160) = xmmword_23AA11AF0;
  *(v65 + 176) = 0u;
  *(v65 + 192) = 0u;
  *(v65 + 208) = 0u;
  *(v65 + 16) = v117;
  *(v65 + 32) = v114;
  *(v65 + 48) = v108;
  *(v65 + 64) = v101;
  *(v65 + 80) = v117;
  *(v65 + 96) = v114;
  *(v65 + 112) = v108;
  *(v65 + 128) = v101;
  *(v28 + 72) = v65;
  *(v1 + 64) = v28;

  v2 = *(v1 + 64);
  if (v2 >> 62)
  {
LABEL_32:
    v66 = sub_23AA0D7F4();
    if (v66)
    {
      goto LABEL_16;
    }

LABEL_33:
    v68 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v66 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_33;
  }

LABEL_16:
  if (v66 < 1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v118 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v120, 0), 0), 0, *v120.f32, 1), 0, v120, 2), xmmword_23AA11AE0, v120, 3);
  v109 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v122, 0), 0), 0, *v122.f32, 1), 0, v122, 2), xmmword_23AA11AE0, v122, 3);
  v102 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v124, 0), 0), 0, *v124.f32, 1), 0, v124, 2), xmmword_23AA11AE0, v124, 3);
  v94 = vdupq_laneq_s32(v93, 3);

  v67 = 0;
  v68 = MEMORY[0x277D84F90];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x23EE90360](v67, v2);
    }

    else
    {
      v69 = *(v2 + 8 * v67 + 32);
    }

    *(v69 + 144) = 0u;
    v70 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(*(v69 + 192), 0), 0), 0, *(v69 + 192), 1), 0, *(v69 + 192), 2), xmmword_23AA11AE0, v94);
    v71 = *(v69 + 64);
    v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, COERCE_FLOAT(*(v69 + 32))), v109, *(v69 + 32), 1), v102, *(v69 + 32), 2), v70, *(v69 + 32), 3);
    v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, COERCE_FLOAT(*(v69 + 48))), v109, *(v69 + 48), 1), v102, *(v69 + 48), 2), v70, *(v69 + 48), 3);
    v125 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, COERCE_FLOAT(*(v69 + 16))), v109, *(v69 + 16), 1), v102, *(v69 + 16), 2), v70, *(v69 + 16), 3);
    *(v69 + 80) = v125;
    *(v69 + 96) = v72;
    v121 = v73;
    v123 = v72;
    v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, v71.f32[0]), v109, *v71.f32, 1), v102, v71, 2), v70, v71, 3);
    *(v69 + 112) = v73;
    *(v69 + 128) = v74;
    v119 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_23A939440(0, *(v68 + 2) + 1, 1, v68);
    }

    v76 = *(v68 + 2);
    v75 = *(v68 + 3);
    if (v76 >= v75 >> 1)
    {
      v68 = sub_23A939440((v75 > 1), v76 + 1, 1, v68);
    }

    ++v67;

    *(v68 + 2) = v76 + 1;
    v77 = &v68[64 * v76];
    *(v77 + 2) = v125;
    *(v77 + 3) = v123;
    *(v77 + 4) = v121;
    *(v77 + 5) = v119;
  }

  while (v66 != v67);

  v3 = &selRef_initWithDevice_;
LABEL_34:
  v78 = *(v1 + 64);
  if (v78 >> 62)
  {
    v79 = sub_23AA0D7F4();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v79 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_41;
  }

  v80 = [a1 newBufferWithBytes:v68 + 32 length:v79 << 6 options:0];
  *(v1 + 48) = v80;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v80)
  {

    v81 = sub_23AA0D104();
    [v80 v3[61]];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_50:
  __break(1u);
}

void sub_23A9E66F0()
{
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = [swift_unknownObjectRetain() contents];
  v3 = v1;
  swift_beginAccess();
  v0[10] = MEMORY[0x277D84F90];

  v4 = v0[9];
  if (!v4)
  {
LABEL_27:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v5 = *(v4 + 16);
  if (*(v5 + 16))
  {
    v6 = *(*(v5 + 32) + 16);
    if (v6)
    {
      swift_beginAccess();
      v7 = v0[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_23A939408(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = (v2 + 16);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v0[10] = v7;
        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v20 = v10;
          v15 = sub_23A939408((v12 > 1), v13 + 1, 1, v7);
          v10 = v20;
          v7 = v15;
        }

        *(v7 + 2) = v13 + 1;
        v14 = &v7[32 * v13];
        *(v14 + 2) = v10;
        *(v14 + 12) = v11;
        v0[10] = v7;
        v9 += 8;
        --v6;
      }

      while (v6);
      swift_endAccess();
    }

    v2 = v0[8];
    if (!(v2 >> 62))
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  v16 = sub_23AA0D7F4();
  if (!v16)
  {
    return;
  }

LABEL_14:
  if (v16 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x23EE90360](v17, v2);
    }

    else
    {
    }

    ++v17;
    v19 = v18[12];
    v18[10] = v18[9];
    v18[11] = v19;
  }

  while (v16 != v17);
}

float32x4_t *sub_23A9E6910(float32x4_t *result, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = result;
  v7 = [swift_unknownObjectRetain() contents];
  result = v4;
  v9 = v6[1].u64[0];
  if (!v9)
  {
    return result;
  }

  if (v9 > *(a2 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v10 = vdupq_lane_s32(*&a3, 0);
  v11 = v6 + 3;
  v12 = (a2 + 48);
  v13 = (v7 + 16);
  do
  {
    v14 = vmlaq_f32(v11[-1], vsubq_f32(*(v12 - 4), v11[-1]), v10);
    v14.i32[3] = v8;
    *(v13 - 1) = v14;
    v15 = v11->f32[0];
    v11 += 2;
    v16 = v15;
    v17 = *v12;
    v12 += 8;
    *v13 = v16 + (*&a3 * (v17 - v16));
    v13 += 8;
    --v9;
  }

  while (v9);
  return result;
}

void sub_23A9E69E0(uint64_t a1, __n128 a2)
{
  v4 = *(v2 + 48);
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = [swift_unknownObjectRetain() contents];
  v5 = v4;
  v6 = *(v2 + 64);
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = vdupq_lane_s32(0, 0);
      v9 = v8;
      v9.i32[0] = a2.n128_u32[0];
      v10 = v8;
      v8.i32[2] = a2.n128_i32[2];
      v10.i32[1] = a2.n128_i32[1];
      v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*MEMORY[0x277D860B8])), v10, *MEMORY[0x277D860B8], 1), v8, *MEMORY[0x277D860B8], 2), xmmword_23AA11AE0, *MEMORY[0x277D860B8], 3);
      v25 = v10;
      v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), v10, *(MEMORY[0x277D860B8] + 16), 1), v8, *(MEMORY[0x277D860B8] + 16), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 16), 3);
      v26 = v9;
      v27 = v8;
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 32))), v10, *(MEMORY[0x277D860B8] + 32), 1), v8, *(MEMORY[0x277D860B8] + 32), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 32), 3);
      v21 = vdupq_laneq_s32(*(MEMORY[0x277D860B8] + 48), 3);
      v11 = v3 + 32;
      v12 = 4;
      while (1)
      {
        v3 = (v12 - 4);
        v13 = *(v2 + 64);
        if ((v13 & 0xC000000000000001) == 0)
        {
          break;
        }

        v14 = MEMORY[0x23EE90360](v12 - 4, v13);

LABEL_8:
        *(v14 + 144) = a2;
        v15 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(v14 + 192))), v25, *(v14 + 192), 1), v27, *(v14 + 192), 2), xmmword_23AA11AE0, v21);
        v16 = *(v14 + 64);
        v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(v14 + 32))), v23, *(v14 + 32), 1), v22, *(v14 + 32), 2), v15, *(v14 + 32), 3);
        v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(v14 + 48))), v23, *(v14 + 48), 1), v22, *(v14 + 48), 2), v15, *(v14 + 48), 3);
        *(v14 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(v14 + 16))), v23, *(v14 + 16), 1), v22, *(v14 + 16), 2), v15, *(v14 + 16), 3);
        *(v14 + 96) = v17;
        *(v14 + 112) = v18;
        *(v14 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v16.f32[0]), v23, *v16.f32, 1), v22, v16, 2), v15, v16, 3);

        v19 = *(v2 + 64);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = MEMORY[0x23EE90360](v12 - 4, v19);
        }

        else
        {
          if (v3 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v20 = *(v19 + 8 * v12);
        }

        v29 = v20[6];
        v30 = v20[5];
        v31 = v20[8];
        v32 = v20[7];

        *(v11 - 2) = v30;
        *(v11 - 1) = v29;
        ++v12;
        *v11 = v32;
        v11[1] = v31;
        v11 += 4;
        if (!--v7)
        {
          return;
        }
      }

      if (v3 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      a1 = sub_23AA0D7F4();
      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_19;
      }

LABEL_20:
      v7 = a1;
      if (!a1)
      {
        return;
      }
    }

    v14 = *(v13 + 8 * v12);

    goto LABEL_8;
  }
}

void sub_23A9E6C70(unint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *(v2 + 48);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = [swift_unknownObjectRetain() contents];
  v7 = v4;
  v8 = *(v3 + 64);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x23EE90360](a1, v8);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = *(v8 + 8 * a1 + 32);
  }

  v9[12] = a2;
  sub_23A9E5210();

  v8 = *(v3 + 64);
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v10 = MEMORY[0x23EE90360](a1, v8);

    goto LABEL_10;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v10 = *(v8 + 8 * a1 + 32);

LABEL_10:
      v14 = v10[6];
      v16 = v10[5];
      v12 = v10[8];
      v13 = v10[7];

      v11 = &v6[64 * a1];
      *v11 = v16;
      *(v11 + 1) = v14;
      *(v11 + 2) = v13;
      *(v11 + 3) = v12;
      return;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void *sub_23A9E6DD8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A9E6E30()
{
  sub_23A9E6DD8();

  return swift_deallocClassInstance();
}

unint64_t sub_23A9E6ED8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A9E7218(*a1);
  *a2 = result;
  return result;
}

double sub_23A9E6F04()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9DBC();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 32) - 1 >= 2)
  {
    if (*(v0 + 32))
    {
      v1 = xmmword_23AA1B3B0;
      v2 = xmmword_23AA1B3C0;
    }

    else
    {
      v1 = xmmword_23AA1B390;
      v2 = xmmword_23AA1B3A0;
    }
  }

  else
  {
    v1 = xmmword_23AA1B3D0;
    v2 = xmmword_23AA1B3E0;
  }

  *(v0 + 48) = v2;
  *(v0 + 64) = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9F0C();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 32) - 1 >= 2)
  {
    if (*(v0 + 32))
    {
      v3 = xmmword_23AA1B400;
      v9 = 0x3FD3333333333333;
    }

    else
    {
      v3 = xmmword_23AA1B3F0;
      v9 = 0x3FC3333333333333;
    }

    _Q1 = vdupq_n_s64(v9);
  }

  else
  {
    v3 = xmmword_23AA10F20;
    __asm { FMOV            V1.2D, #1.0 }
  }

  *(v0 + 80) = _Q1;
  *(v0 + 96) = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9FDC();
    swift_unknownObjectRelease();
  }

  v10.i32[0] = 2;
  v11.i32[0] = *(v0 + 32) - 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 112) = vandq_s8(xmmword_23AA10F30, vdupq_lane_s32(*&vcgtq_u32(v10, v11), 0));
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9FA17C();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23A9E707C()
{
  if (*(v0 + 32) - 1 < 2)
  {
    return -0.5;
  }

  if (*(v0 + 32))
  {
    return -0.454519478;
  }

  return 0.0499502113;
}

uint64_t sub_23A9E70CC()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

float sub_23A9E7128()
{
  v1 = v0[4];
  v2 = v1 - v0[5];
  v3 = fminf(fmaxf(v2 / v0[6], 0.0), 1.0);
  v0[8] = v2;
  v0[9] = v3;
  result = (sinf(v1 * 5.0) * 0.5) + 0.5;
  v0[7] = result;
  return result;
}

unint64_t sub_23A9E71C4()
{
  result = qword_27DFB15E0;
  if (!qword_27DFB15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15E0);
  }

  return result;
}

unint64_t sub_23A9E7218(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

char *sub_23A9E7228(char *result, uint64_t a2, double a3)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  if (v3 <= *(a2 + 16))
  {
    v5 = result;
    v6 = sub_23A939408(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *&a3;
    v9 = v6;
    v10 = 0;
    v11 = *(v6 + 2);
    v12 = vdupq_lane_s32(*&a3, 0);
    v13 = 32 * v11;
    do
    {
      v14 = *(v5 + v10 + 32);
      v15 = *(a2 + v10 + 32);
      v16 = *(v5 + v10 + 48);
      v17 = *(a2 + v10 + 48);
      v18 = *(v9 + 3);
      v19 = v11 + 1;
      if (v11 >= v18 >> 1)
      {
        v25 = *(v5 + v10 + 32);
        v26 = v12;
        v23 = *(a2 + v10 + 32);
        v24 = v7;
        v22 = sub_23A939408((v18 > 1), v11 + 1, 1, v9);
        v15 = v23;
        v7 = v24;
        v14 = v25;
        v12 = v26;
        v8 = *&a3;
        v9 = v22;
      }

      v20 = vmlaq_f32(v14, vsubq_f32(v15, v14), v12);
      v20.i32[3] = v7;
      *(v9 + 2) = v19;
      v21 = &v9[v13 + v10];
      v21[2] = v20;
      v21[3].f32[0] = v16 + (v8 * (v17 - v16));
      v10 += 32;
      v11 = v19;
      --v3;
    }

    while (v3);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ScanItemCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A9E74C0()
{
  result = qword_27DFB15E8;
  if (!qword_27DFB15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15E8);
  }

  return result;
}

unint64_t sub_23A9E7524()
{
  result = qword_27DFB15F0;
  if (!qword_27DFB15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15F0);
  }

  return result;
}

__n128 sub_23A9E759C(float a1, float32x4_t a2)
{
  v2 = __sincospif_stret(a1 * 0.0055556);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = vmuls_lane_f32(v2.__sinval, *v5.f32, 1);
  v7 = vmuls_lane_f32(v2.__sinval, v5, 2);
  v8 = (1.0 - v2.__cosval) * v5.f32[0];
  v9 = vmuls_lane_f32(1.0 - v2.__cosval, *v5.f32, 1);
  v10 = v2.__cosval + (v8 * v5.f32[0]);
  v11 = vmuls_lane_f32(v8, *v5.f32, 1);
  v12 = vmuls_lane_f32(v8, v5, 2);
  HIDWORD(v13) = 0;
  *&v13 = v10;
  *(&v13 + 1) = v7 + v11;
  *(&v13 + 2) = v12 - v6;
  v14 = v2.__cosval + vmuls_lane_f32(v9, *v5.f32, 1);
  v15 = vmuls_lane_f32(v9, v5, 2);
  HIDWORD(v16) = 0;
  *&v16 = v11 - v7;
  *(&v16 + 1) = v14;
  *(&v16 + 2) = (v2.__sinval * v5.f32[0]) + v15;
  v20 = v16;
  v21 = v13;
  *&v17 = v6 + v12;
  *(&v17 + 1) = v15 - (v2.__sinval * v5.f32[0]);
  *(&v17 + 1) = COERCE_UNSIGNED_INT(v2.__cosval + vmuls_lane_f32(vmuls_lane_f32(1.0 - v2.__cosval, v5, 2), v5, 2));
  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = v20;
  v18[4] = v23;
  v18[5] = xmmword_23AA11AE0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v21;
}

float32x2_t sub_23A9E7734(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  __asm { FMOV            V6.2S, #3.0 }

  v10 = vmul_f32(a1, _D6);
  v11 = vmul_f32(a2, _D6);
  v12 = vmul_f32(a3, _D6);
  __asm
  {
    FMOV            V17.2S, #4.0
    FMOV            V18.2S, #6.0
  }

  return vdiv_f32(vadd_f32(vadd_f32(a1, vadd_f32(a3, vmul_f32(a2, _D17))), vmul_n_f32(vadd_f32(vsub_f32(v12, v10), vmul_n_f32(vadd_f32(vadd_f32(v10, vsub_f32(v12, vmul_f32(a2, _D18))), vmul_n_f32(vsub_f32(vadd_f32(v11, vsub_f32(a4, v12)), a1), a5)), a5)), a5)), _D18);
}

float32x2_t sub_23A9E7804(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  __asm { FMOV            V16.2S, #3.0 }

  v10 = vmul_f32(a1, _D16);
  v11 = vmul_f32(a2, _D16);
  v12 = vmul_f32(a3, _D16);
  __asm { FMOV            V16.2S, #6.0 }

  v14 = vsub_f32(vadd_f32(v11, vsub_f32(a4, v12)), a1);
  v15 = vadd_f32(v10, vsub_f32(v12, vmul_f32(a2, _D16)));
  return vdiv_f32(vadd_f32(vmul_n_f32(vadd_f32(v15, vmul_n_f32(vadd_f32(v14, v14), a5)), a5), vadd_f32(vsub_f32(v12, v10), vmul_n_f32(vadd_f32(v15, vmul_n_f32(v14, a5)), a5))), _D16);
}

__n128 sub_23A9E78D4(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v6)), v12, v7);
  v14 = v12.u32[1];
  LODWORD(v15) = v12.i32[2];
  LODWORD(v16) = v12.i32[0];
  DWORD1(v16) = vdupq_laneq_s32(v13, 2).u32[0];
  v17 = vextq_s8(a1, v13, 0xCuLL);
  *(&v16 + 1) = v6.u32[0];
  v29 = v16;
  DWORD1(v14) = v17.i32[1];
  DWORD2(v14) = v6.i32[1];
  DWORD1(v15) = v17.i32[2];
  *(&v15 + 1) = v6.u32[2];
  v27 = v15;
  v28 = v14;
  *v12.i32 = -(vmuls_lane_f32(a1.f32[2], v12, 2) + vaddv_f32(vmul_f32(*a1.f32, *v12.i8)));
  *v13.i32 = -(vmuls_lane_f32(a1.f32[2], *v13.i8, 1) + (vmuls_lane_f32(a1.f32[0], v13, 2) + vmuls_lane_f32(*v13.i32, *a1.f32, 1)));
  v18 = -(vmuls_lane_f32(a1.f32[2], v6, 2) + vaddv_f32(vmul_f32(*a1.f32, *v6.i8)));
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = __PAIR64__(v13.u32[0], v12.u32[0]);
  *(&_Q1 + 2) = v18;
  v26 = _Q1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = v28;
  v24[4] = v27;
  v24[5] = v26;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v29;
}

void sub_23A9E7A9C(char a1)
{
  if (a1)
  {
    type metadata accessor for DebugFrameEntity(0);
    v2 = swift_allocObject();
    *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = sub_23A9FD708(v2);

    if (!*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
    {
      __break(1u);
      return;
    }

    sub_23AA0C534();

    sub_23AA0C214();
  }

  else
  {
    v3 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity;
    if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity))
    {
      type metadata accessor for DebugFrameEntity(0);

      sub_23AA0C204();
    }

    *(v1 + v3) = 0;
  }
}

void sub_23A9E7C50(uint64_t (*a1)(void), uint64_t *a2, void (*a3)(uint64_t, float), void (*a4)(char *), float a5)
{
  v42 = a3;
  v43 = a4;
  v8 = a1(0);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_23AA0CD84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);
  if (!v17)
  {
    goto LABEL_21;
  }

  v40 = *a2;
  *(v17 + v40) = a5;

  sub_23A8C63CC();
  v18 = sub_23A9FC870();

  v19 = v18;
  if (v18 >> 62)
  {
    v35 = sub_23AA0D7F4();
    v19 = v18;
    v20 = v35;
    if (v35)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_4:
      if (v20 >= 1)
      {
        v21 = 0;
        v44 = v17;
        v45 = v19 & 0xC000000000000001;
        v22 = (v14 + 56);
        v39 = (v14 + 32);
        v38 = (v14 + 8);
        v37 = (v14 + 16);
        v36 = xmmword_23AA10FC0;
        v46 = v19;
        do
        {
          if (v45)
          {
            v23 = MEMORY[0x23EE90360](v21);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = qword_27DFC0628;
          swift_beginAccess();
          sub_23A8CA9D8(v23 + v24, v48);
          v26 = v49;
          v25 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          (*(v25 + 8))(v47, v26, v25);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
          if (swift_dynamicCast())
          {
            (*v22)(v12, 0, 1, v13);
            (*v39)(v16, v12, v13);
            v27 = __swift_destroy_boxed_opaque_existential_1(v48);
            v28 = v41;
            v42(v27, *(v44 + v40));
            v43(v28);
            type metadata accessor for ScanEntity(0);
            sub_23A9E8188();
            v29 = sub_23AA0CAD4();
            v31 = v30;
            v32 = sub_23AA0C4A4();
            if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
              v33 = swift_allocObject();
              *(v33 + 16) = v36;
              *(v33 + 56) = v13;
              *(v33 + 64) = MEMORY[0x277CDB298];
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
              (*v37)(boxed_opaque_existential_1, v16, v13);
              sub_23AA0C494();
            }

            v29(v48, 0);

            (*v38)(v16, v13);
          }

          else
          {

            (*v22)(v12, 1, 1, v13);
            sub_23A8CA7EC(v12);
            __swift_destroy_boxed_opaque_existential_1(v48);
          }

          v19 = v46;
          ++v21;
        }

        while (v20 != v21);

        return;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }
  }
}

unint64_t sub_23A9E8188()
{
  result = qword_27DFAE8B0;
  if (!qword_27DFAE8B0)
  {
    type metadata accessor for ScanEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAE8B0);
  }

  return result;
}

void sub_23A9E81E0()
{
  v1 = qword_27DFB0E00;
  v2 = *(v0 + qword_27DFB0E10);
  if (*(v0 + qword_27DFB0E00))
  {
    if (!v2)
    {
      v3 = *(v0 + qword_27DFB0E00);
      if (!v3)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 decelerationDelta];
    v5 = qword_27DFB0E58;
    v7 = v6 + *(v0 + qword_27DFB0E58);
  }

  else
  {
    [v2 decelerationDelta];
    v5 = qword_27DFB0E58;
    v7 = *(v0 + qword_27DFB0E58) - v8;
  }

  *(v0 + v5) = v7;
  *(v0 + qword_27DFB0E68) = v7;
  v3 = *(v0 + v1);
  if (v3)
  {
LABEL_10:
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 decelerationDelta];
      v10 = qword_27DFB0E60;
      v12 = v11 + *(v0 + qword_27DFB0E60);
    }

    else
    {
      [v3 decelerationDelta];
      v10 = qword_27DFB0E60;
      v12 = *(v0 + qword_27DFB0E60) - v13;
    }

    *(v0 + v10) = v12;
    *(v0 + qword_27DFB0E70) = v12;
  }
}

void sub_23A9E8324()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v133 - v2;
  sub_23AA0C044();
  v4 = sub_23AA0C064();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = qword_27DFC09A8;
  swift_beginAccess();
  sub_23A8D5068(v3, v0 + v5, &qword_27DFAEB30, &unk_23AA11B50);
  swift_endAccess();
  v6 = qword_27DFB0DF8;
  v7 = *(v0 + qword_27DFB0DF8);
  v8 = objc_opt_self();
  v9 = MEMORY[0x277CEEF68];
  v10 = MEMORY[0x277CEEF58];
  if (v7)
  {
    v11 = MEMORY[0x277CEEF58];
  }

  else
  {
    v11 = MEMORY[0x277CEEF68];
  }

  [v8 floatForKey_];
  v13 = v12;
  v14 = v0 + qword_27DFB0DD0;
  v15 = *(v0 + qword_27DFB0DD0);
  v16 = objc_opt_self();
  v17 = *MEMORY[0x277CEEF48];
  [v16 floatForKey_];
  v19 = v18 * v15;
  v20 = *(v0 + v6);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = qword_27DFB0E58;
  v22 = *(v0 + qword_27DFB0E58);
  v23 = v20;
  LODWORD(v24) = v22;
  if ([v23 offsetIsWithinRubberBandedRange_])
  {
    [v16 floatForKey_];
    v26 = v25;
    v27 = *(v0 + v21);
    [v23 minOffset];
    v29 = v28;
    [v23 maxOffset];
    v31 = v30;
    v32 = objc_allocWithZone(MEMORY[0x277CEEF90]);
    LODWORD(v33) = v26;
    LODWORD(v34) = v27;
    LODWORD(v35) = v29;
    LODWORD(v36) = v31;
    v37 = [v32 initWithVelocity:0.0 minEndDelta:v33 startingOffset:v34 minOffset:v35 maxOffset:v36];

    v9 = MEMORY[0x277CEEF68];
LABEL_12:
    v40 = *(v0 + qword_27DFB0E10);
    *(v0 + qword_27DFB0E10) = v37;
    goto LABEL_13;
  }

  v38 = *(v0 + v6);
  v9 = MEMORY[0x277CEEF68];
  if (!v38)
  {
LABEL_10:
    [v16 floatForKey_];
    if (v65 > fabsf(v19))
    {
      goto LABEL_14;
    }

    v66 = v19 * *(v0 + qword_27DFB0E88);
    [v16 floatForKey_];
    v68 = v67;
    v69 = objc_allocWithZone(MEMORY[0x277CEEF70]);
    *&v70 = v66;
    LODWORD(v71) = v68;
    LODWORD(v72) = v13;
    v37 = [v69 initWithVelocity:v70 minEndDelta:v71 decelerationRate:v72];
    goto LABEL_12;
  }

  v39 = *MEMORY[0x277CEEF30];
  v40 = v38;
  [v16 floatForKey_];
  if (v41 <= fabsf(v19))
  {
    [v16 floatForKey_];
    v43 = v42;
    [v40 rubberBandFactor];
    v45 = v44;
    [v40 minOffset];
    v47 = v46 - v43;
    [v40 maxOffset];
    v49 = v43 + v48;
    v50 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v51) = v45;
    *&v52 = v47;
    *&v53 = v49;
    *&v54 = v43;
    v55 = [v50 initWithRubberBandFactor:v51 minOffset:v52 maxOffset:v53 overshoot:v54];
    v56 = v19 * *(v0 + qword_27DFB0E88);
    [v16 floatForKey_];
    v58 = v57;
    v59 = *(v0 + qword_27DFB0E58);
    v60 = objc_allocWithZone(MEMORY[0x277CEEF80]);
    *&v61 = v56;
    LODWORD(v62) = v58;
    LODWORD(v63) = v59;
    LODWORD(v64) = v13;
    v37 = [v60 initWithVelocity:v55 minEndDelta:v61 startingOffset:v62 decelerationRate:v63 rubberBand:v64];

    v9 = MEMORY[0x277CEEF68];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  v73 = qword_27DFB0DE8;
  if (*(v0 + qword_27DFB0DE8))
  {
    v74 = v10;
  }

  else
  {
    v74 = v9;
  }

  [v16 floatForKey_];
  v76 = v75;
  v77 = *(v14 + 8);
  [v16 floatForKey_];
  v79 = v78 * v77;
  v80 = *(v0 + v73);
  if (!v80)
  {
    v98 = *MEMORY[0x277CEEF30];
    goto LABEL_25;
  }

  v81 = qword_27DFB0E60;
  v82 = *(v0 + qword_27DFB0E60);
  v83 = v80;
  LODWORD(v84) = v82;
  if ([v83 offsetIsWithinRubberBandedRange_])
  {
    [v16 floatForKey_];
    v86 = v85;
    v87 = *(v0 + v81);
    [v83 minOffset];
    v89 = v88;
    [v83 maxOffset];
    v91 = v90;
    v92 = objc_allocWithZone(MEMORY[0x277CEEF90]);
    LODWORD(v93) = v86;
    LODWORD(v94) = v87;
    LODWORD(v95) = v89;
    LODWORD(v96) = v91;
    v97 = [v92 initWithVelocity:0.0 minEndDelta:v93 startingOffset:v94 minOffset:v95 maxOffset:v96];
LABEL_24:

LABEL_27:
    v83 = *(v0 + qword_27DFB0E00);
    *(v0 + qword_27DFB0E00) = v97;
    goto LABEL_28;
  }

  v99 = *(v0 + v73);
  v98 = *MEMORY[0x277CEEF30];
  if (!v99)
  {
LABEL_25:
    [v16 floatForKey_];
    if (v125 > fabsf(v79))
    {
      return;
    }

    v126 = v79 * *(v0 + qword_27DFB0E90);
    [v16 floatForKey_];
    v128 = v127;
    v129 = objc_allocWithZone(MEMORY[0x277CEEF70]);
    *&v130 = v126;
    LODWORD(v131) = v128;
    LODWORD(v132) = v76;
    v97 = [v129 initWithVelocity:v130 minEndDelta:v131 decelerationRate:v132];
    goto LABEL_27;
  }

  v100 = *MEMORY[0x277CEEF30];
  v83 = v99;
  [v16 floatForKey_];
  if (v101 <= fabsf(v79))
  {
    [v16 floatForKey_];
    v103 = v102;
    [v83 rubberBandFactor];
    v105 = v104;
    [v83 minOffset];
    v107 = v106 - v103;
    [v83 maxOffset];
    v109 = v103 + v108;
    v110 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v111) = v105;
    *&v112 = v107;
    *&v113 = v109;
    *&v114 = v103;
    v115 = [v110 initWithRubberBandFactor:v111 minOffset:v112 maxOffset:v113 overshoot:v114];
    v116 = v79 * *(v0 + qword_27DFB0E90);
    [v16 floatForKey_];
    v118 = v117;
    v119 = *(v0 + qword_27DFB0E60);
    v120 = objc_allocWithZone(MEMORY[0x277CEEF80]);
    *&v121 = v116;
    LODWORD(v122) = v118;
    LODWORD(v123) = v119;
    LODWORD(v124) = v76;
    v97 = [v120 initWithVelocity:v115 minEndDelta:v121 startingOffset:v122 decelerationRate:v123 rubberBand:v124];

    goto LABEL_24;
  }

LABEL_28:
}

void sub_23A9E8A3C(void *a1)
{
  v3 = [a1 state];
  v4 = [a1 view];
  [a1 translationInView_];
  v6 = v5;
  v8 = v7;

  if ((v3 - 3) >= 3)
  {
    if (v3 == 2)
    {
      v11 = [a1 view];
      [a1 velocityInView_];
      v13 = v12;
      v15 = v14;

      v16 = (v1 + qword_27DFB0DD0);
      *v16 = v13;
      v16[1] = v15;
      sub_23A9E9EFC(v6, v8);
      v17 = (v1 + qword_27DFB0DD8);
      *v17 = v6;
      v17[1] = v8;
    }

    else if (v3 == 1)
    {
      v9 = (v1 + qword_27DFB0DD8);
      *v9 = v6;
      v9[1] = v8;
      v10 = (v1 + qword_27DFB0DD0);
      *v10 = 0;
      v10[1] = 0;
    }
  }

  else if (*(v1 + qword_27DFC09F0) == 1)
  {

    sub_23A9E8324();
  }
}

uint64_t sub_23A9E8BC0(uint64_t a1, uint64_t *a2)
{
  sub_23A9E8C8C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  sub_23A8D5068(v6, v3 + v4, &qword_27DFB1608, qword_23AA1B780);
  return swift_endAccess();
}

uint64_t sub_23A9E8C34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  return sub_23A9E8C8C(v1 + v3, a1);
}

uint64_t sub_23A9E8C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1608, qword_23AA1B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9E8CFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  sub_23A8D5068(a1, v1 + v3, &qword_27DFB1608, qword_23AA1B780);
  return swift_endAccess();
}

float sub_23A9E8DCC()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment);
  if ((*(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment + 4) & 1) == 0)
  {
    return *v1;
  }

  *v1 = -1085730854;
  v1[4] = 0;
  return -0.7854;
}

id DollHouseCameraController.init(arView:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer] = 0;
  v5 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment];
  *v5 = 0;
  v5[4] = 1;
  sub_23AA0C044();
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView] = a1;
  v6 = a1;
  [v6 bounds];
  *v4 = v7;
  *(v4 + 1) = v8;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera] = sub_23A9EA058(v6);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DollHouseCameraController(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_23A9E9624(v6);

  return v9;
}

double sub_23A9E8F90(float32x4_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView);

  v3 = sub_23A94E62C(v2, a1);

  return v3;
}

void sub_23A9E9028()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  *(v1 + qword_27DFB0E50) = 1065353216;
  *(v1 + qword_27DFB0E80) = 1065353216;
  *(v1 + qword_27DFB0E58) = 0;
  v2 = qword_27DFB0F00;
  *(v1 + qword_27DFB0F00) = 1;
  sub_23AA0C134();
  v10 = v3;
  sub_23AA0C144();
  v11 = v4;
  v5 = sub_23A9E8DCC();
  v6 = v11.u32[2];
  v7 = *(v1 + qword_27DFB0EE8);
  if (*v11.i32 != 0.0 || *&v11.i32[1] != 0.0 || *&v11.i32[2] != 0.0)
  {
    if (*&v11.i32[2] <= *&v7.i32[2])
    {
      v6 = *(v1 + qword_27DFB0EE8 + 8);
    }

    v7.i64[0] = vbslq_s8(vcgeq_f32(v7, v11), v7, v11).u64[0];
    v7.i64[1] = v6;
  }

  if (*(v1 + qword_27DFB0F10) != 1 || *(v1 + v2) == 1)
  {
    *(v1 + qword_27DFB0EF0) = 0;
    *(v1 + qword_27DFB0F08) = v10;
    v8 = vmulq_f32(v7, v7);
    *(v1 + qword_27DFB0E38) = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    sub_23A9BCB38(*(v1 + qword_27DFB0E40), *(v1 + qword_27DFB0E40 + 16), *(v1 + qword_27DFB0E40 + 32), *(v1 + qword_27DFB0E40 + 48));
    if (v9.n128_f32[0] <= *(v1 + qword_27DFB0E30))
    {
      v9.n128_u32[0] = *(v1 + qword_27DFB0E30);
    }

    *(v1 + qword_27DFB0E78) = v9.n128_u32[0];
    if ((*(v1 + qword_27DFC09E0) & 1) != 0 || *(v1 + v2) == 1)
    {
      *(v1 + qword_27DFB0E70) = v5;
      *(v1 + qword_27DFB0E60) = v5;
      if (*(v1 + v2) == 1)
      {
        *(v1 + v2) = 0;
        v9.n128_u32[0] = 1.0;
        sub_23A9BC32C(v9, 1.0);
      }
    }
  }
}

double sub_23A9E9210()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView);
  [v1 bounds];
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize);
  if (v4 != *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize) || v2 != *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize + 8))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
    [v1 bounds];
    Width = CGRectGetWidth(v21);
    [v1 bounds];
    v8 = Width / CGRectGetHeight(v22);
    *(v6 + qword_27DFB0E18) = v8;
    REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
    v9 = (v6 + qword_27DFB0E40);
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    [v1 bounds];
    *v3 = v14;
    v3[1] = v15;
  }

  v16 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  sub_23A9BC788(*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32));
  sub_23A9E81E0();
  v17.n128_f32[0] = fminf(*(v16 + qword_27DFB0EF0) + 0.01, 1.0);
  *(v16 + qword_27DFB0EF0) = v17.n128_u32[0];
  v18 = fminf(*(v16 + qword_27DFB0EF8) + 0.01, 1.0);
  *(v16 + qword_27DFB0EF8) = v18;
  sub_23A9BC32C(v17, v18);

  return sub_23A9E9384();
}

double sub_23A9E9384()
{
  v0 = sub_23AA0C184();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C984();
  v4 = sub_23AA0C6E4();

  if (v4)
  {
    sub_23AA0C9A4();
    sub_23AA0C114();
    v6 = *(v1 + 8);
    v6(v3, v0);
    RECustomMatrixCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {

      sub_23AA0C9A4();
      sub_23AA0C114();
      v6(v3, v0);
      RECustomMatrixCameraComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECustomMatrixCameraComponentGetProjectionMatrix();
      v26 = v8;
      v27 = v7;
      v24 = v10;
      v25 = v9;

      RECustomMatrixCameraComponentSetProjectionFromMatrix();
      type metadata accessor for ARViewCameraEntity(0);

      sub_23AA0C264();
      v25 = v12;
      v26 = v11;
      v24 = v13;
      v27 = v14;

      sub_23AA0CAB4();
      v15 = sub_23AA0C2A4();
      v17 = v16;
      sub_23AA0DCD4();
      v23 = v18;
      sub_23AA0D4D4();
      v22 = v19;
      sub_23AA0D4C4();
      *v17 = v20;
      v21 = v23;
      v17[1] = v22;
      v17[2] = v21;
      v15(v28, 0);
    }
  }

  return result;
}

void sub_23A9E9624(void *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v4 = v1;
  v5 = [v3 initWithTarget:v4 action:sel_didPanWithPanGesture_];
  v6 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer;
  v7 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer] = v5;
  v8 = v5;

  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v8 setDelegate_];

  v9 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v4 action:sel_didPinchWithPinchGesture_];
  v10 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer;
  v11 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer] = v9;
  v12 = v9;

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v12 setDelegate_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v4 action:sel_didTouchDownWithLongPressGesture_];
  v14 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer;
  v15 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer] = v13;
  v16 = v13;

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 setMinimumPressDuration_];

  v17 = *&v4[v14];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v17 setDelegate_];
  if (!*&v4[v6])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [a1 addGestureRecognizer_];
  if (!*&v4[v10])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [a1 addGestureRecognizer_];
  if (!*&v4[v14])
  {
LABEL_17:
    __break(1u);
    return;
  }

  [a1 addGestureRecognizer_];
}

id sub_23A9E9870(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  result = [a1 scale];
  v6 = 1.0 / v5;
  if (v6 != 0.0)
  {
    v7 = v6;
    *(v3 + qword_27DFB0E50) = fminf(fmaxf(*(v3 + qword_27DFB0E50) / v7, 0.1), 100.0);
    *(v3 + qword_27DFB0E80) = *(v3 + qword_27DFB0E80) * v7;

    return [a1 setScale_];
  }

  return result;
}

void sub_23A9E999C(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0C064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  [a1 locationInView_];
  v13 = v12;
  v15 = v14;
  v16 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  v17 = sub_23A9BC0F4();
  v18 = [a1 state];
  if (v18 == 3)
  {
    sub_23AA0C044();
    v23 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_startTapTime;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v23, v4);
    sub_23AA0C014();
    v25 = v24;
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v11, v4);
    *(v16 + qword_27DFB0F10) = 0;
    v27 = 1.0;
    if (*(v16 + qword_27DFC09E0))
    {
      v27 = 0.0;
    }

    *(v16 + qword_27DFB0EF0) = v27;
    *(v16 + qword_27DFB0EF8) = v27;
    if (!v17 && v25 < 0.5)
    {
      v28 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
      swift_beginAccess();
      sub_23A9E8C8C(v2 + v28, v34);
      if (v35)
      {
        sub_23A8CA9D8(v34, v31);
        sub_23A9EA580(v34);
        v29 = v32;
        v30 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v30 + 8))(v2, v29, v30, v13, v15);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_23A9EA580(v34);
      }
    }
  }

  else if (v18 == 1)
  {
    sub_23AA0C044();
    v19 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_startTapTime;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v19, v11, v4);
    swift_endAccess();
    *(v16 + qword_27DFB0F10) = 1;
    v20 = *(v16 + qword_27DFB0E10);
    *(v16 + qword_27DFB0E10) = 0;

    v21 = *(v16 + qword_27DFB0E08);
    *(v16 + qword_27DFB0E08) = 0;

    v22 = *(v16 + qword_27DFB0E00);
    *(v16 + qword_27DFB0E00) = 0;
  }
}

id DollHouseCameraController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DollHouseCameraController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DollHouseCameraController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23A9E9EFC(double a1, double a2)
{
  v4 = v2 + qword_27DFB0DD8;
  v5 = a1 - *(v2 + qword_27DFB0DD8);
  v6 = objc_opt_self();
  [v6 floatForKey_];
  v8 = *(v2 + qword_27DFB0E68) - ((v7 * v5) * *(v2 + qword_27DFB0E88));
  *(v2 + qword_27DFB0E68) = v8;
  v9 = *(v2 + qword_27DFB0DF8);
  if (v9)
  {
    [v9 rubberBandOffsetForOffset_];
  }

  *(v2 + qword_27DFB0E58) = v8;
  v10 = a2 - *(v4 + 8);
  [v6 floatForKey_];
  v12 = *(v2 + qword_27DFB0E70) - ((v11 * v10) * *(v2 + qword_27DFB0E90));
  *(v2 + qword_27DFB0E70) = v12;
  result = *(v2 + qword_27DFB0DE8);
  if (result)
  {
    result = [result rubberBandOffsetForOffset_];
  }

  *(v2 + qword_27DFB0E60) = v12;
  return result;
}

uint64_t sub_23A9EA058(void *a1)
{
  type metadata accessor for ARViewCameraEntity(0);
  swift_allocObject();
  v2 = sub_23AA0C1A4();
  type metadata accessor for DollHouseCamera(0);
  swift_allocObject();
  v3 = sub_23A9BBAEC(a1, v2, 0, 0.9273);
  v4 = sub_23AA0C2A4();
  v6 = v5;
  sub_23AA0DCD4();
  v12 = v7;
  sub_23AA0D4D4();
  v11 = v8;
  sub_23AA0D4C4();
  *v6 = v9;
  v6[1] = v11;
  v6[2] = v12;
  v4(v13, 0);
  *(v3 + qword_27DFC09E0) = 0;
  *(v3 + qword_27DFB0EA8) = 1067030938;
  sub_23A9BB400();
  sub_23AA0C984();
  sub_23A9EA5E8();

  sub_23AA0C704();

  return v3;
}

uint64_t type metadata accessor for DollHouseCameraController(uint64_t a1)
{
  result = qword_27DFB1658;
  if (!qword_27DFB1658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9EA238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  return sub_23A9E8C8C(v3 + v4, a2);
}

uint64_t sub_23A9EA2B4(uint64_t a1)
{
  result = sub_23AA0C064();
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

uint64_t sub_23A9EA580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1608, qword_23AA1B780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A9EA5E8()
{
  result = qword_27DFB10F0;
  if (!qword_27DFB10F0)
  {
    type metadata accessor for DollHouseCamera(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB10F0);
  }

  return result;
}

id sub_23A9EA6D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorldSpaceManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23A9EA778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    sub_23A9D9A7C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v13;
  }

  else
  {
    sub_23A9EDDFC(a2, a3);
    v10 = v9;

    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v14 = *v4;
      if (!v11)
      {
        sub_23A90CF8C();
        v12 = v14;
      }

      sub_23A91077C();
      *v4 = v12;
    }
  }
}

uint64_t sub_23A9EA864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_23A9D9E48(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_23AA0C0E4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v21;
  }

  else
  {
    v9 = sub_23A9EDD28(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v22 = *v3;
      if (!v12)
      {
        sub_23A90CFDC();
        v13 = v22;
      }

      v14 = *(v13 + 48);
      v15 = sub_23AA0C0E4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_23A910778(v18);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v19 = sub_23AA0C0E4();
      v20 = *(*(v19 - 8) + 8);

      return v20(a2, v19);
    }
  }

  return result;
}

void sub_23A9EAA24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_23A9EC080(a1);
    sub_23A905A70(v7, a2);

    sub_23A9EC080(v7);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23A9DB77C(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_23A9EABD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_23AA0BFB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_23A9EC080(a1);
    v14 = sub_23A9EE0C8(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23A90FE5C();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_23A90CB84(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_23A9EC080(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_23A9DB8F8(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_23A9EAE00(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EE90360](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23AA0D7F4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23A9EAF28(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23A9EAFCC(uint64_t a1)
{
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  result = MEMORY[0x23EE8FEA0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_23A9EFC30(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *CapturedRoom.ModelProvider.modelFileURL(for:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v12 = v2[1];
  v20 = *v2;
  v21 = v12;
  v14 = type metadata accessor for CapturedRoom.Object(0);
  result = CapturedRoom.ModelProvider.modelFileURL(for:)(*&a1[*(v14 + 36)], v7);
  if (!v3)
  {
    v16 = v19;
    v18 = 0;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_23A9EC080(v7);
      v20 = v13;
      v21 = v12;
      v22 = *a1;
      return CapturedRoom.ModelProvider.modelFileURL(for:)(&v22, v16);
    }

    else
    {
      v17 = *(v9 + 32);
      v17(v11, v7, v8);
      v17(v16, v11, v8);
      return (*(v9 + 56))(v16, 0, 1, v8);
    }
  }

  return result;
}

Swift::Bool __swiftcall CapturedRoom.Object.Category.supportsCombination(_:)(Swift::OpaquePointer a1)
{
  v48 = *v1;
  CapturedRoom.Object.Category.supportedCombinations.getter();
  v4 = *(v3 + 16);
  if (v4)
  {
    rawValue = a1._rawValue;
    v47 = MEMORY[0x277D84F90];
    v5 = v3;
    sub_23A97607C(0, v4, 0);
    v6 = v5;
    v7 = 0;
    v8 = v47;
    v38 = v5 + 32;
    v39 = v5;
    v37 = v4;
    while (v7 < *(v6 + 16))
    {
      v9 = *(v38 + 8 * v7);
      v10 = *(v9 + 16);
      if (v10)
      {
        v40 = v8;
        v46 = MEMORY[0x277D84F90];

        sub_23A97605C(0, v10, 0);
        v11 = v46;
        v12 = v9 + 32;
        do
        {
          sub_23A8CA9D8(v12, v41);
          v13 = v42;
          v14 = v43;
          v15 = __swift_project_boxed_opaque_existential_1(v41, v42);
          v16 = MEMORY[0x28223BE20](v15);
          v18 = &rawValue - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v19 + 16))(v18, v16);
          sub_23A936390(v18, v13, v14, v44);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v46 = v11;
          v21 = *(v11 + 16);
          v20 = *(v11 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_23A97605C((v20 > 1), v21 + 1, 1);
            v11 = v46;
          }

          *(v11 + 16) = v21 + 1;
          v22 = v11 + 40 * v21;
          v23 = v44[0];
          v24 = v44[1];
          *(v22 + 64) = v45;
          *(v22 + 32) = v23;
          *(v22 + 48) = v24;
          v12 += 40;
          --v10;
        }

        while (v10);

        v8 = v40;
        v4 = v37;
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      v25 = *(v11 + 16);
      v26 = sub_23A9106D0();
      v46 = MEMORY[0x23EE8FEA0](v25, &type metadata for AnyCapturedRoomAttribute, v26);
      v27 = *(v11 + 16);
      if (v27)
      {
        v28 = v11 + 32;
        do
        {
          sub_23A910674(v28, v44);
          sub_23A9EF964(v41, v44);
          sub_23A910724(v41);
          v28 += 40;
          --v27;
        }

        while (v27);
      }

      v29 = v46;
      v47 = v8;
      v31 = *(v8 + 16);
      v30 = *(v8 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_23A97607C((v30 > 1), v31 + 1, 1);
        v8 = v47;
      }

      ++v7;
      *(v8 + 16) = v31 + 1;
      *(v8 + 8 * v31 + 32) = v29;
      v6 = v39;
      if (v7 == v4)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_19:

    *&v44[0] = sub_23A9F510C(v32);
    MEMORY[0x28223BE20](*&v44[0]);
    v35[2] = v44;
    v33 = sub_23A9EAF28(sub_23A9F52E0, v35, v8);

    LOBYTE(v6) = v33 & 1;
  }

  return v6;
}

unint64_t CapturedRoom.ModelProvider.Error.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CapturedRoom.ModelProvider.Error(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A9F5634(v1, v8, type metadata accessor for CapturedRoom.ModelProvider.Error);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0xD00000000000002ALL;
  }

  (*(v3 + 32))(v5, v8, v2);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_23AA0D8A4();

  strcpy(v13, "File at path ");
  HIWORD(v13[1]) = -4864;
  v11 = sub_23AA0BF84();
  MEMORY[0x23EE8FCA0](v11);

  MEMORY[0x23EE8FCA0](0x74276E73656F6420, 0xEE00747369786520);
  v10 = v13[0];
  (*(v3 + 8))(v5, v2);
  return v10;
}

char *CapturedRoom.ModelProvider.modelFileURLs.getter()
{

  v1 = sub_23A9EAFCC(v0);

  v3 = sub_23A9EAFCC(v2);
  sub_23A9EBB08(v3, v1);
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_23A9EDB80(*(v4 + 16), 0, &qword_27DFB1700, &qword_23AA1B9E0, MEMORY[0x277CC9260]);
  v8 = *(sub_23AA0BFB4() - 8);
  sub_23A9F4858(&v12, &v7[(*(v8 + 80) + 32) & ~*(v8 + 80)], v6, v5);
  v10 = v9;
  sub_23A8CA904(v12);
  if (v10 != v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v7;
}

void sub_23A9EBB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA0BFB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_23A9EFC30(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void CapturedRoom.ModelProvider.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

void *CapturedRoom.ModelProvider.modelFileURL(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  if (!a1[2])
  {
    v25 = *(v7 + 56);
    v26 = a2;
    return v25(v26, 1, 1, v6);
  }

  v13 = v2[1];
  v32 = *v2;
  v33 = v13;
  result = sub_23A9EC3F4(a1);
  if (v3)
  {
    return result;
  }

  v34 = a2;

  v16 = sub_23A9F510C(v15);
  if (!*(v13 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_23A9EE264(v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:
    v25 = *(v7 + 56);
    v26 = v34;
    return v25(v26, 1, 1, v6);
  }

  v20 = *(v13 + 56) + *(v7 + 72) * v17;
  v31 = *(v7 + 16);
  v31(v9, v20, v6);
  v30 = *(v7 + 32);
  v30(v12, v9, v6);
  v21 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v22 = sub_23AA0D104();

  v23 = [v21 fileExistsAtPath_];

  if (v23)
  {
    v24 = v34;
    v30(v34, v12, v6);
    return (*(v7 + 56))(v24, 0, 1, v6);
  }

  else
  {
    type metadata accessor for CapturedRoom.ModelProvider.Error(0);
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error, &protocol conformance descriptor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v28 = v27;
    v31(v27, v12, v6);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    swift_willThrow();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_23A9EC080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CapturedRoom.ModelProvider.modelFileURL(for:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *v2;
  if (!*(v14 + 16))
  {
    return (*(v7 + 56))(a2, 1, 1, v6, v11);
  }

  v15 = sub_23A9EE0C8(*a1);
  if ((v16 & 1) == 0)
  {
    return (*(v7 + 56))(a2, 1, 1, v6, v11);
  }

  v27 = v3;
  v17 = *(v14 + 56) + *(v7 + 72) * v15;
  v26 = *(v7 + 16);
  v26(v9, v17, v6);
  v25 = *(v7 + 32);
  v25(v13, v9, v6);
  v18 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v19 = sub_23AA0D104();

  v20 = [v18 fileExistsAtPath_];

  if (v20)
  {
    v25(a2, v13, v6);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    type metadata accessor for CapturedRoom.ModelProvider.Error(0);
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error, &protocol conformance descriptor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v23 = v22;
    v26(v22, v13, v6);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    swift_willThrow();
    return (*(v7 + 8))(v13, v6);
  }
}

void *sub_23A9EC3F4(void *result)
{
  if (result[2])
  {
    v1._rawValue = result;
    sub_23A8CA9D8((result + 4), v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_getDynamicType();
    (*(v5[4] + 24))(&v6);
    if (BYTE1(v6) > 0xFEu || (v6 & 0x100) == 0 || !CapturedRoom.Object.Category.supportsCombination(_:)(v1))
    {
      type metadata accessor for CapturedRoom.ModelProvider.Error(0);
      sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error, &protocol conformance descriptor for CapturedRoom.ModelProvider.Error);
      swift_allocError();
      v3 = v2;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void CapturedRoom.ModelProvider.setModelFileURL(_:for:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v31 = sub_23AA0BFB4();
  v13 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[1];
  v29 = *v2;
  v30 = v16;

  sub_23A9EC3F4(a2);

  if (!v4)
  {
    sub_23A9F5364(a1, v12);
    if ((*(v13 + 48))(v12, 1, v31) == 1)
    {
      sub_23A9EC080(v12);
LABEL_6:

      v21 = sub_23A9F510C(v20);
      sub_23A9F5364(a1, v9);
      sub_23A9EAA24(v9, v21);
      return;
    }

    v28 = v13;
    (*(v13 + 32))(v15, v12, v31);
    v17 = [objc_opt_self() defaultManager];
    sub_23AA0BF84();
    v18 = sub_23AA0D104();

    v19 = [v17 fileExistsAtPath_];

    if (v19)
    {
      (*(v28 + 8))(v15, v31);
      goto LABEL_6;
    }

    type metadata accessor for CapturedRoom.ModelProvider.Error(0);
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error, &protocol conformance descriptor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v23 = v22;
    v24 = v28;
    v25 = v31;
    (*(v28 + 16))(v22, v15, v31);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
    swift_willThrow();
    (*(v24 + 8))(v15, v25);
  }
}

uint64_t CapturedRoom.ModelProvider.setModelFileURL(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = sub_23AA0BFB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  sub_23A9F5364(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23A9EC080(v11);
LABEL_5:
    sub_23A9F5364(a1, v8);
    return sub_23A9EABD0(v8, v16);
  }

  v24[1] = v3;
  v24[3] = v2;
  (*(v13 + 32))(v15, v11, v12);
  v17 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v18 = sub_23AA0D104();

  v19 = [v17 fileExistsAtPath_];

  if (v19)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_5;
  }

  type metadata accessor for CapturedRoom.ModelProvider.Error(0);
  sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error, &protocol conformance descriptor for CapturedRoom.ModelProvider.Error);
  swift_allocError();
  v22 = v21;
  (*(v13 + 16))(v21, v15, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  swift_willThrow();
  return (*(v13 + 8))(v15, v12);
}

__n128 sub_23A9ECC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA1B8C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 56) = &type metadata for ChairType;
  v2 = sub_23A9668A0();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for ChairBackType;
  v3 = sub_23A9668F4();
  *(v1 + 104) = v3;
  *(v1 + 72) = 0;
  *(v1 + 136) = &type metadata for ChairLegType;
  v4 = sub_23A966948();
  *(v1 + 144) = v4;
  *(v1 + 112) = 0;
  *(v1 + 176) = &type metadata for ChairArmType;
  v5 = sub_23A96699C();
  *(v1 + 184) = v5;
  *(v1 + 152) = 0;
  *(v0 + 32) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C20;
  *(v6 + 56) = &type metadata for ChairType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for ChairBackType;
  *(v6 + 104) = v3;
  *(v6 + 72) = 0;
  *(v6 + 136) = &type metadata for ChairLegType;
  *(v6 + 144) = v4;
  *(v6 + 112) = 0;
  *(v6 + 176) = &type metadata for ChairArmType;
  *(v6 + 184) = v5;
  *(v6 + 152) = 1;
  *(v0 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA11C20;
  *(v7 + 56) = &type metadata for ChairType;
  *(v7 + 64) = v2;
  *(v7 + 32) = 1;
  *(v7 + 96) = &type metadata for ChairBackType;
  *(v7 + 104) = v3;
  *(v7 + 72) = 1;
  *(v7 + 136) = &type metadata for ChairLegType;
  *(v7 + 144) = v4;
  *(v7 + 112) = 0;
  *(v7 + 176) = &type metadata for ChairArmType;
  *(v7 + 184) = v5;
  *(v7 + 152) = 1;
  *(v0 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA11C20;
  *(v8 + 56) = &type metadata for ChairType;
  *(v8 + 64) = v2;
  *(v8 + 32) = 1;
  *(v8 + 96) = &type metadata for ChairBackType;
  *(v8 + 104) = v3;
  *(v8 + 72) = 1;
  *(v8 + 136) = &type metadata for ChairLegType;
  *(v8 + 144) = v4;
  *(v8 + 112) = 1;
  *(v8 + 176) = &type metadata for ChairArmType;
  *(v8 + 184) = v5;
  *(v8 + 152) = 1;
  *(v0 + 56) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA11C20;
  *(v9 + 56) = &type metadata for ChairType;
  *(v9 + 64) = v2;
  *(v9 + 32) = 1;
  *(v9 + 96) = &type metadata for ChairBackType;
  *(v9 + 104) = v3;
  *(v9 + 72) = 1;
  *(v9 + 136) = &type metadata for ChairLegType;
  *(v9 + 144) = v4;
  *(v9 + 112) = 2;
  *(v9 + 176) = &type metadata for ChairArmType;
  *(v9 + 184) = v5;
  *(v9 + 152) = 1;
  *(v0 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA11C20;
  *(v10 + 56) = &type metadata for ChairType;
  *(v10 + 64) = v2;
  *(v10 + 32) = 1;
  *(v10 + 96) = &type metadata for ChairBackType;
  *(v10 + 104) = v3;
  *(v10 + 72) = 1;
  *(v10 + 136) = &type metadata for ChairLegType;
  *(v10 + 144) = v4;
  *(v10 + 112) = 0;
  *(v10 + 176) = &type metadata for ChairArmType;
  *(v10 + 184) = v5;
  *(v10 + 152) = 0;
  *(v0 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA11C20;
  *(v11 + 56) = &type metadata for ChairType;
  *(v11 + 64) = v2;
  *(v11 + 32) = 1;
  *(v11 + 96) = &type metadata for ChairBackType;
  *(v11 + 104) = v3;
  *(v11 + 72) = 1;
  *(v11 + 136) = &type metadata for ChairLegType;
  *(v11 + 144) = v4;
  *(v11 + 112) = 1;
  *(v11 + 176) = &type metadata for ChairArmType;
  *(v11 + 184) = v5;
  *(v11 + 152) = 0;
  *(v0 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA11C20;
  *(v12 + 56) = &type metadata for ChairType;
  *(v12 + 64) = v2;
  *(v12 + 32) = 1;
  *(v12 + 96) = &type metadata for ChairBackType;
  *(v12 + 104) = v3;
  *(v12 + 72) = 1;
  *(v12 + 136) = &type metadata for ChairLegType;
  *(v12 + 144) = v4;
  *(v12 + 112) = 2;
  *(v12 + 176) = &type metadata for ChairArmType;
  *(v12 + 184) = v5;
  *(v12 + 152) = 0;
  *(v0 + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23AA11C20;
  *(v13 + 56) = &type metadata for ChairType;
  *(v13 + 64) = v2;
  *(v13 + 32) = 2;
  *(v13 + 96) = &type metadata for ChairBackType;
  *(v13 + 104) = v3;
  *(v13 + 72) = 0;
  *(v13 + 136) = &type metadata for ChairLegType;
  *(v13 + 144) = v4;
  *(v13 + 112) = 1;
  *(v13 + 176) = &type metadata for ChairArmType;
  *(v13 + 184) = v5;
  *(v13 + 152) = 0;
  *(v0 + 96) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA11C20;
  *(v14 + 56) = &type metadata for ChairType;
  *(v14 + 64) = v2;
  *(v14 + 32) = 2;
  *(v14 + 96) = &type metadata for ChairBackType;
  *(v14 + 104) = v3;
  *(v14 + 72) = 0;
  *(v14 + 136) = &type metadata for ChairLegType;
  *(v14 + 144) = v4;
  *(v14 + 112) = 1;
  *(v14 + 176) = &type metadata for ChairArmType;
  *(v14 + 184) = v5;
  *(v14 + 152) = 1;
  *(v0 + 104) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA11C20;
  *(v15 + 56) = &type metadata for ChairType;
  *(v15 + 64) = v2;
  *(v15 + 32) = 3;
  *(v15 + 96) = &type metadata for ChairBackType;
  *(v15 + 104) = v3;
  *(v15 + 72) = 0;
  *(v15 + 136) = &type metadata for ChairLegType;
  *(v15 + 144) = v4;
  *(v15 + 112) = 0;
  *(v15 + 176) = &type metadata for ChairArmType;
  *(v15 + 184) = v5;
  *(v15 + 152) = 0;
  *(v0 + 112) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA11C20;
  *(v16 + 56) = &type metadata for ChairType;
  *(v16 + 64) = v2;
  *(v16 + 32) = 3;
  *(v16 + 96) = &type metadata for ChairBackType;
  *(v16 + 104) = v3;
  *(v16 + 72) = 0;
  *(v16 + 136) = &type metadata for ChairLegType;
  *(v16 + 144) = v4;
  *(v16 + 112) = 0;
  *(v16 + 176) = &type metadata for ChairArmType;
  *(v16 + 184) = v5;
  *(v16 + 152) = 1;
  *(v0 + 120) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23AA11C20;
  *(v17 + 56) = &type metadata for ChairType;
  *(v17 + 64) = v2;
  *(v17 + 32) = 3;
  *(v17 + 96) = &type metadata for ChairBackType;
  *(v17 + 104) = v3;
  *(v17 + 72) = 0;
  *(v17 + 136) = &type metadata for ChairLegType;
  *(v17 + 144) = v4;
  *(v17 + 112) = 1;
  *(v17 + 176) = &type metadata for ChairArmType;
  *(v17 + 184) = v5;
  *(v17 + 152) = 0;
  *(v0 + 128) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23AA11C20;
  *(v18 + 56) = &type metadata for ChairType;
  *(v18 + 64) = v2;
  *(v18 + 32) = 3;
  *(v18 + 96) = &type metadata for ChairBackType;
  *(v18 + 104) = v3;
  *(v18 + 72) = 0;
  *(v18 + 136) = &type metadata for ChairLegType;
  *(v18 + 144) = v4;
  *(v18 + 112) = 1;
  *(v18 + 176) = &type metadata for ChairArmType;
  *(v18 + 184) = v5;
  *(v18 + 152) = 1;
  *(v0 + 136) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA11C20;
  *(v19 + 56) = &type metadata for ChairType;
  *(v19 + 64) = v2;
  *(v19 + 32) = 3;
  *(v19 + 96) = &type metadata for ChairBackType;
  *(v19 + 104) = v3;
  *(v19 + 72) = 0;
  *(v19 + 136) = &type metadata for ChairLegType;
  *(v19 + 144) = v4;
  *(v19 + 112) = 2;
  *(v19 + 176) = &type metadata for ChairArmType;
  *(v19 + 184) = v5;
  *(v19 + 152) = 0;
  *(v0 + 144) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23AA11C20;
  *(v20 + 56) = &type metadata for ChairType;
  *(v20 + 64) = v2;
  *(v20 + 32) = 3;
  *(v20 + 96) = &type metadata for ChairBackType;
  *(v20 + 104) = v3;
  *(v20 + 72) = 0;
  *(v20 + 136) = &type metadata for ChairLegType;
  *(v20 + 144) = v4;
  *(v20 + 112) = 2;
  *(v20 + 176) = &type metadata for ChairArmType;
  *(v20 + 184) = v5;
  *(v20 + 152) = 1;
  *(v0 + 152) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23AA11C20;
  *(v21 + 56) = &type metadata for ChairType;
  *(v21 + 64) = v2;
  *(v21 + 32) = 3;
  *(v21 + 96) = &type metadata for ChairBackType;
  *(v21 + 104) = v3;
  *(v21 + 72) = 1;
  *(v21 + 136) = &type metadata for ChairLegType;
  *(v21 + 144) = v4;
  *(v21 + 112) = 0;
  *(v21 + 176) = &type metadata for ChairArmType;
  *(v21 + 184) = v5;
  *(v21 + 152) = 0;
  *(v0 + 160) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23AA11C20;
  *(v22 + 56) = &type metadata for ChairType;
  *(v22 + 64) = v2;
  *(v22 + 32) = 3;
  *(v22 + 96) = &type metadata for ChairBackType;
  *(v22 + 104) = v3;
  *(v22 + 72) = 1;
  *(v22 + 136) = &type metadata for ChairLegType;
  *(v22 + 144) = v4;
  *(v22 + 112) = 0;
  *(v22 + 176) = &type metadata for ChairArmType;
  *(v22 + 184) = v5;
  *(v22 + 152) = 1;
  *(v0 + 168) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23AA11C20;
  *(v23 + 56) = &type metadata for ChairType;
  *(v23 + 64) = v2;
  *(v23 + 32) = 3;
  *(v23 + 96) = &type metadata for ChairBackType;
  *(v23 + 104) = v3;
  *(v23 + 72) = 1;
  *(v23 + 136) = &type metadata for ChairLegType;
  *(v23 + 144) = v4;
  *(v23 + 112) = 1;
  *(v23 + 176) = &type metadata for ChairArmType;
  *(v23 + 184) = v5;
  *(v23 + 152) = 0;
  *(v0 + 176) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23AA11C20;
  *(v24 + 56) = &type metadata for ChairType;
  *(v24 + 64) = v2;
  *(v24 + 32) = 3;
  *(v24 + 96) = &type metadata for ChairBackType;
  *(v24 + 104) = v3;
  *(v24 + 72) = 1;
  *(v24 + 136) = &type metadata for ChairLegType;
  *(v24 + 144) = v4;
  *(v24 + 112) = 1;
  *(v24 + 176) = &type metadata for ChairArmType;
  *(v24 + 184) = v5;
  *(v24 + 152) = 1;
  *(v0 + 184) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23AA11C20;
  *(v25 + 56) = &type metadata for ChairType;
  *(v25 + 64) = v2;
  *(v25 + 32) = 3;
  *(v25 + 96) = &type metadata for ChairBackType;
  *(v25 + 104) = v3;
  *(v25 + 72) = 1;
  *(v25 + 136) = &type metadata for ChairLegType;
  *(v25 + 144) = v4;
  *(v25 + 112) = 2;
  *(v25 + 176) = &type metadata for ChairArmType;
  *(v25 + 184) = v5;
  *(v25 + 152) = 0;
  *(v0 + 192) = v25;
  v26 = swift_allocObject();
  result = xmmword_23AA11C20;
  *(v26 + 16) = xmmword_23AA11C20;
  *(v26 + 56) = &type metadata for ChairType;
  *(v26 + 64) = v2;
  *(v26 + 32) = 3;
  *(v26 + 96) = &type metadata for ChairBackType;
  *(v26 + 104) = v3;
  *(v26 + 72) = 1;
  *(v26 + 136) = &type metadata for ChairLegType;
  *(v26 + 144) = v4;
  *(v26 + 112) = 2;
  *(v26 + 176) = &type metadata for ChairArmType;
  *(v26 + 184) = v5;
  *(v26 + 152) = 1;
  *(v0 + 200) = v26;
  qword_27DFB1680 = v0;
  return result;
}

__n128 sub_23A9ED38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA19830;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA10FC0;
  *(v1 + 56) = &type metadata for SofaType;
  v2 = sub_23A96684C();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23AA10FC0;
  *(v3 + 56) = &type metadata for SofaType;
  *(v3 + 64) = v2;
  *(v3 + 32) = 1;
  *(v0 + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA10FC0;
  *(v4 + 56) = &type metadata for SofaType;
  *(v4 + 64) = v2;
  *(v4 + 32) = 2;
  *(v0 + 48) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA10FC0;
  *(v5 + 56) = &type metadata for SofaType;
  *(v5 + 64) = v2;
  *(v5 + 32) = 3;
  *(v0 + 56) = v5;
  v6 = swift_allocObject();
  result = xmmword_23AA10FC0;
  *(v6 + 16) = xmmword_23AA10FC0;
  *(v6 + 56) = &type metadata for SofaType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 4;
  *(v0 + 64) = v6;
  qword_27DFB1688 = v0;
  return result;
}

__n128 sub_23A9ED4F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA1B8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA11C10;
  *(v1 + 56) = &type metadata for TableType;
  v2 = sub_23A9667A4();
  *(v1 + 64) = v2;
  *(v1 + 32) = 1;
  *(v1 + 96) = &type metadata for TableShapeType;
  v3 = sub_23A9667F8();
  *(v1 + 104) = v3;
  *(v1 + 72) = 0;
  *(v0 + 32) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA11C10;
  *(v4 + 56) = &type metadata for TableType;
  *(v4 + 64) = v2;
  *(v4 + 32) = 1;
  *(v4 + 96) = &type metadata for TableShapeType;
  *(v4 + 104) = v3;
  *(v4 + 72) = 1;
  *(v0 + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA11C10;
  *(v5 + 56) = &type metadata for TableType;
  *(v5 + 64) = v2;
  *(v5 + 32) = 1;
  *(v5 + 96) = &type metadata for TableShapeType;
  *(v5 + 104) = v3;
  *(v5 + 72) = 3;
  *(v0 + 48) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C10;
  *(v6 + 56) = &type metadata for TableType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for TableShapeType;
  *(v6 + 104) = v3;
  *(v6 + 72) = 0;
  *(v0 + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA11C10;
  *(v7 + 56) = &type metadata for TableType;
  *(v7 + 64) = v2;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for TableShapeType;
  *(v7 + 104) = v3;
  *(v7 + 72) = 1;
  *(v0 + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA11C10;
  *(v8 + 56) = &type metadata for TableType;
  *(v8 + 64) = v2;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for TableShapeType;
  *(v8 + 104) = v3;
  *(v8 + 72) = 2;
  *(v0 + 72) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA11C10;
  *(v9 + 56) = &type metadata for TableType;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0;
  *(v9 + 96) = &type metadata for TableShapeType;
  *(v9 + 104) = v3;
  *(v9 + 72) = 3;
  *(v0 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA11C10;
  *(v10 + 56) = &type metadata for TableType;
  *(v10 + 64) = v2;
  *(v10 + 32) = 2;
  *(v10 + 96) = &type metadata for TableShapeType;
  *(v10 + 104) = v3;
  *(v10 + 72) = 0;
  *(v0 + 88) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA11C10;
  *(v11 + 56) = &type metadata for TableType;
  *(v11 + 64) = v2;
  *(v11 + 32) = 2;
  *(v11 + 96) = &type metadata for TableShapeType;
  *(v11 + 104) = v3;
  *(v11 + 72) = 1;
  *(v0 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA11C10;
  *(v12 + 56) = &type metadata for TableType;
  *(v12 + 64) = v2;
  *(v12 + 32) = 2;
  *(v12 + 96) = &type metadata for TableShapeType;
  *(v12 + 104) = v3;
  *(v12 + 72) = 2;
  *(v0 + 104) = v12;
  v13 = swift_allocObject();
  result = xmmword_23AA11C10;
  *(v13 + 16) = xmmword_23AA11C10;
  *(v13 + 56) = &type metadata for TableType;
  *(v13 + 64) = v2;
  *(v13 + 32) = 2;
  *(v13 + 96) = &type metadata for TableShapeType;
  *(v13 + 104) = v3;
  *(v13 + 72) = 3;
  *(v0 + 112) = v13;
  qword_27DFB1690 = v0;
  return result;
}

__n128 sub_23A9ED7A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA11C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA10FC0;
  *(v1 + 56) = &type metadata for StorageType;
  v2 = sub_23A966750();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  result = xmmword_23AA10FC0;
  *(v3 + 16) = xmmword_23AA10FC0;
  *(v3 + 56) = &type metadata for StorageType;
  *(v3 + 64) = v2;
  *(v3 + 32) = 1;
  *(v0 + 40) = v3;
  qword_27DFB1698 = v0;
  return result;
}

double CapturedRoom.Object.Category.supportedCombinations.getter()
{
  v1 = *v0;
  if (v1 > 9)
  {
    if (*v0 <= 0xCu)
    {
      if (v1 == 10)
      {
        if (qword_27DFAE500 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v1 == 11)
      {
        if (qword_27DFAE4F8 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (qword_27DFAE4F0 == -1)
      {
LABEL_14:

        return result;
      }

LABEL_15:
      swift_once();
      goto LABEL_14;
    }
  }

  else if (v1 - 1 >= 9)
  {
    if (qword_27DFAE508 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  return result;
}

void *sub_23A9EDA18(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_23A9EDAB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_23A9EDB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9EDC7C(uint64_t a1)
{
  type metadata accessor for ScanEntity(0);
  sub_23A9F56F0(&qword_27DFAEF28, type metadata accessor for ScanEntity, MEMORY[0x277CDB1D0]);
  v2 = sub_23AA0D054();
  return sub_23A9EE57C(a1, v2);
}

unint64_t sub_23A9EDD28(uint64_t a1)
{
  sub_23AA0C0E4();
  v2 = MEMORY[0x277CC95F0];
  sub_23A9F56F0(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_23AA0D054();
  return sub_23A9EEDDC(a1, v3, MEMORY[0x277CC95F0], &qword_27DFAE8C8, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_23A9EDDFC(uint64_t a1, uint64_t a2)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v4 = sub_23AA0DD54();

  return sub_23A9EE678(a1, a2, v4);
}

unint64_t sub_23A9EDE74(uint64_t a1)
{
  sub_23AA0DD14();
  sub_23AA0C0B4();
  v2 = sub_23AA0DD54();

  return sub_23A9EE730(a1, v2);
}

unint64_t sub_23A9EDEEC(double a1)
{
  sub_23AA0DD14();
  sub_23A947E78(a1);
  v2 = sub_23AA0DD54();

  return sub_23A9EE834(v2, *&a1);
}

unint64_t sub_23A9EDF54(uint64_t a1)
{
  v2 = sub_23AA0DD04();

  return sub_23A9EE8A8(a1, v2);
}

unint64_t sub_23A9EDF98(uint64_t a1)
{
  sub_23AA0DD14();
  v2 = *(a1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v5 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v5);
      --v3;
    }

    while (v3);
  }

  v6 = sub_23AA0DD54();
  return sub_23A9EE914(a1, v6);
}

unint64_t sub_23A9EE050(int32x2_t a1)
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  v1 = sub_23AA0DD54();

  return sub_23A9EE9E4(v1, a1);
}

unint64_t sub_23A9EE0C8(uint64_t a1)
{
  v1 = a1;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  v2 = sub_23AA0DD54();
  return sub_23A9EEA58(v1, v2);
}

unint64_t sub_23A9EE130(uint64_t a1)
{
  v1 = a1;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  v2 = sub_23AA0DD54();

  return sub_23A9EEAC8(v1, v2);
}

unint64_t sub_23A9EE264(uint64_t a1)
{
  sub_23AA0DD14();
  sub_23A9102A8(v4, a1);
  v2 = sub_23AA0DD54();

  return sub_23A9EED24(a1, v2);
}

unint64_t sub_23A9EE2D0(uint64_t a1)
{
  sub_23AA0BFB4();
  v2 = MEMORY[0x277CC9260];
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_23AA0D054();
  return sub_23A9EEDDC(a1, v3, MEMORY[0x277CC9260], &qword_27DFB16E8, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_23A9EE3A4(uint64_t a1)
{
  sub_23AA0DD14();
  type metadata accessor for CFString(0);
  sub_23A9F56F0(&qword_27DFB16D0, type metadata accessor for CFString, &unk_23AA119F8);
  sub_23AA0CB44();
  v2 = sub_23AA0DD54();

  return sub_23A9EEF7C(a1, v2);
}

unint64_t sub_23A9EE458(uint64_t a1)
{
  sub_23AA0DD14();
  v2 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v2);
  v3 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v3);
  v4 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v4);
  v5 = sub_23AA0DD54();

  return sub_23A9EF088(a1, v5);
}

unint64_t sub_23A9EE4E8(uint64_t a1)
{
  sub_23AA0D134();
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v2 = sub_23AA0DD54();

  return sub_23A9EF120(a1, v2);
}

unint64_t sub_23A9EE57C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for ScanEntity(0);
    sub_23A9F56F0(&qword_27DFB16C0, type metadata accessor for ScanEntity, MEMORY[0x277CDB1D8]);
    do
    {
      if (sub_23AA0D084())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EE678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23AA0DBD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A9EE730(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);

      if (sub_23AA0C094())
      {
        v9 = *(v8 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v9 == *(a1 + v7))
        {
          return v4;
        }
      }

      else
      {
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EE834(uint64_t a1, float32x2_t a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      v6 = vceq_f32(*(*(v2 + 48) + 8 * result), a2);
      if (v6.i8[0] & v6.i8[4])
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EE8A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EE914(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 48);
    v8 = v7[2];
    while (1)
    {
      v9 = *(*(*(v2 + 48) + 8 * result) + 48);
      if (*&v9[2] == *&v8)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (*&v8 && v9 != v7)
    {
      v10 = v9 + 4;
      v11 = v7 + 4;
      v12 = v7[2];
      while (v12)
      {
        v13 = vceq_f32(*v10, *v11);
        if ((v13.i32[0] & v13.i32[1] & 1) == 0)
        {
          goto LABEL_3;
        }

        ++v10;
        ++v11;
        if (!--*&v12)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_23A9EE9E4(uint64_t a1, int32x2_t a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      v6 = vceq_s32(*(*(v2 + 48) + 8 * result), a2);
      if (v6.i8[0] & v6.i8[4])
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EEA58(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EEAC8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x6E65686374696BLL;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6F52676E696E6964;
          }

          else
          {
            v8 = 0x69746E6564696E75;
          }

          if (v7 == 4)
          {
            v9 = 0xEA00000000006D6FLL;
          }

          else
          {
            v9 = 0xEC00000064656966;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6D6F6F72646562;
        }

        else
        {
          v8 = 0x6D6F6F7268746162;
        }

        if (v7 == 1)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v8 = 0x6F52676E6976696CLL;
        v9 = 0xEA00000000006D6FLL;
      }

      v10 = 0x6F52676E696E6964;
      if (v6 != 4)
      {
        v10 = 0x69746E6564696E75;
      }

      v11 = 0xEC00000064656966;
      if (v6 == 4)
      {
        v11 = 0xEA00000000006D6FLL;
      }

      if (v6 == 3)
      {
        v10 = 0x6E65686374696BLL;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6D6F6F7268746162;
      if (v6 == 1)
      {
        v12 = 0x6D6F6F72646562;
      }

      v13 = 0xE800000000000000;
      if (v6 == 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!v6)
      {
        v12 = 0x6F52676E6976696CLL;
        v13 = 0xEA00000000006D6FLL;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_23AA0DBD4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23A9EED24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_23A9F4AFC(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EEDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_23A9F56F0(v24, v25, v26);
      v20 = sub_23AA0D084();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_23A9EEF7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23A9F56F0(&qword_27DFB16D0, type metadata accessor for CFString, &unk_23AA119F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23AA0CB34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EF088(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + 8 * result);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24) && *(v7 + 32) == *(a1 + 32))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EF120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23AA0D134();
      v8 = v7;
      if (v6 == sub_23AA0D134() && v8 == v9)
      {
        break;
      }

      v11 = sub_23AA0DBD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23A9EF224(float *a1, float a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = a2 == 0.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v3;
  }

  v8 = MEMORY[0x23EE90790](*(*v2 + 40), LODWORD(v7), 4);
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v5 + 48);
      if (*(v12 + 4 * v10) == v3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    v3 = *(v12 + 4 * v10);
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23A9F16E0(v10, isUniquelyReferenced_nonNull_native, v3);
    *v2 = v15;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_23A9EF31C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23AA0D804();

    if (v8)
    {

      type metadata accessor for HullPointUUID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_23AA0D7F4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_23A9EFF10(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_23A9F0590(v20 + 1);
    }

    sub_23A9F153C(v21, v19);

    *v3 = v19;
    *a1 = a2;
  }

  else
  {
    v22 = v2;
    sub_23AA0DD14();
    sub_23AA0C0B4();
    v10 = sub_23AA0DD54();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      v14 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        v15 = *(*(v6 + 48) + 8 * v12);

        if (sub_23AA0C094())
        {
          v16 = *(v15 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

          if (v16 == *(a2 + v14))
          {

            *a1 = *(*(v6 + 48) + 8 * v12);

            return 0;
          }
        }

        else
        {
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;

    sub_23A9F1810(v18, v12, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    *a1 = a2;
  }

  return 1;
}

uint64_t sub_23A9EF59C(double *a1, double a2)
{
  v5 = *v2;
  sub_23AA0DD14();
  sub_23A947E78(a2);
  v6 = sub_23AA0DD54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      v11 = vceq_f32(*(v10 + 8 * v8), *&a2);
      if (v11.i32[0] & v11.i32[1])
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_23A9F19DC(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23A9EF6AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23AA0D804();

    if (v8)
    {

      type metadata accessor for CDTTriangle();
      swift_dynamicCast();
      result = 0;
      *a1 = v29;
      return result;
    }

    result = sub_23AA0D7F4();
    if (!__OFADD__(result, 1))
    {
      v24 = sub_23A9F011C(v7, result + 1);
      v25 = *(v24 + 16);
      if (*(v24 + 24) <= v25)
      {
        sub_23A9F0A70(v25 + 1);
      }

      sub_23A9F15EC(v26, v24);

      *v3 = v24;
      goto LABEL_26;
    }
  }

  else
  {
    sub_23AA0DD14();
    v10 = *(a2 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        v12 += 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v13 = sub_23AA0DC84();
        MEMORY[0x23EE907C0](v13);
        --v11;
      }

      while (v11);
    }

    result = sub_23AA0DD54();
    v14 = -1 << *(v6 + 32);
    v15 = result & ~v14;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_25:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v2;

      sub_23A9F1B48(v28, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v30;
LABEL_26:
      *a1 = a2;
      return 1;
    }

    v16 = ~v14;
    v17 = *(a2 + 48);
    v18 = v17[2];
    while (1)
    {
      v19 = *(*(*(v6 + 48) + 8 * v15) + 48);
      if (*&v19[2] == *&v18)
      {
        break;
      }

LABEL_12:
      v15 = (v15 + 1) & v16;
      if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (!*&v18 || v19 == v17)
    {
LABEL_20:

      *a1 = *(*(v6 + 48) + 8 * v15);

      return 0;
    }

    v20 = v19 + 4;
    v21 = v17 + 4;
    v22 = v17[2];
    while (v22)
    {
      v23 = vceq_f32(*v20, *v21);
      result = v23.u32[0];
      if ((v23.i32[0] & v23.i32[1] & 1) == 0)
      {
        goto LABEL_12;
      }

      ++v20;
      ++v21;
      if (!--*&v22)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9EF964(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_23A9106D0();
  v5 = sub_23AA0D054();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      sub_23A910674(*(v4 + 48) + 40 * v7, v17);
      v9 = sub_23AA0D054();
      v10 = sub_23AA0D054();
      sub_23A910724(v17);
      if (v9 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23A910724(a2);
    sub_23A910674(*(v4 + 48) + 40 * v7, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A910674(a2, v17);
    v16 = *v14;
    sub_23A9F1D64(v17, v7, isUniquelyReferenced_nonNull_native);
    *v14 = v16;
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23A9EFB10(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](a2);
  v12 = sub_23AA0DD54();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_23A9F1F20(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23A9EFC30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_23AA0D054();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23A9F56F0(&qword_27DFB16E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_23AA0D084();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23A9F2090(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23A9EFF10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
    v2 = sub_23AA0D874();
    v15 = v2;
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for HullPointUUID(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23A9F0590(v9 + 1);
        }

        v2 = v15;
        sub_23AA0DD14();
        sub_23AA0C0B4();
        result = sub_23AA0DD54();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_23AA0D824());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23A9F011C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
    v2 = sub_23AA0D874();
    v19 = v2;
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for CDTTriangle();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_23A9F0A70(v4 + 1);
        }

        v2 = v19;
        sub_23AA0DD14();
        v5 = *(v18 + 48);
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = v5 + 32;
          do
          {
            v7 += 8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
            v8 = sub_23AA0DC84();
            MEMORY[0x23EE907C0](v8);
            --v6;
          }

          while (v6);
        }

        result = sub_23AA0DD54();
        v10 = v19 + 56;
        v11 = -1 << *(v19 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v19 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v12) & ~*(v19 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v13 == v15;
            if (v13 == v15)
            {
              v13 = 0;
            }

            v14 |= v16;
            v17 = *(v10 + 8 * v13);
          }

          while (v17 == -1);
          v3 = __clz(__rbit64(~v17)) + (v13 << 6);
        }

        *(v10 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v19 + 48) + 8 * v3) = v18;
        ++*(v19 + 16);
      }

      while (sub_23AA0D824());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_23A9F0358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  v4 = sub_23AA0D864();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 4 * v17);
      if (v19 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = *(v18 + 4 * v17);
      }

      v21 = MEMORY[0x23EE90790](*(v5 + 40), LODWORD(v20), 4);
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_23A9F0590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  v4 = sub_23AA0D864();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_23AA0DD14();
      sub_23AA0C0B4();
      v18 = sub_23AA0DD54();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_23A9F07EC(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  v3 = sub_23AA0D864();
  v5 = v3;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = (v2 + 56);
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v3 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      *&v4 = *(*(v2 + 48) + 8 * (v14 | (v6 << 6)));
      v26 = v4;
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v17 = sub_23AA0DD54();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(&v4 + 1) = *(&v26 + 1);
      *(*(v5 + 48) + 8 * v13) = v26;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v5;
}

void sub_23A9F0A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
  v4 = sub_23AA0D864();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_23AA0DD14();
      v33 = v17;
      v18 = *(v17 + 48);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 32;
        do
        {
          v20 += 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v21 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v21);
          --v19;
        }

        while (v19);
      }

      v22 = sub_23AA0DD54();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v32;
      *(*(v5 + 48) + 8 * v13) = v33;
      ++*(v5 + 16);
      v10 = v34;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_23A9F0D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  v4 = sub_23AA0D864();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      sub_23A9106D0();
      v19 = sub_23AA0D054();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *(v14 + 32) = v30;
      *v14 = v28;
      *(v14 + 16) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_23A9F0F98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_23AA0D864();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v19);
      v20 = sub_23AA0DD54();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_23A9F11E0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23AA0BFB4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  v6 = sub_23AA0D864();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v21 = sub_23AA0D054();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_23A9F153C(uint64_t a1, uint64_t a2)
{
  sub_23AA0DD14();
  sub_23AA0C0B4();
  sub_23AA0DD54();
  result = sub_23AA0D794();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23A9F15EC(uint64_t a1, uint64_t a2)
{
  sub_23AA0DD14();
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      v6 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v7 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v7);
      --v5;
    }

    while (v5);
  }

  sub_23AA0DD54();
  result = sub_23AA0D794();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23A9F16E0(unint64_t result, char a2, float a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    sub_23A9F0358(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_23A9F2334();
      result = v7;
      goto LABEL_14;
    }

    sub_23A9F2BE8(v5 + 1);
  }

  v8 = *v3;
  v9 = 0.0;
  if (a3 != 0.0)
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23EE90790](*(*v3 + 40), LODWORD(v9), 4);
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 4 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 4 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

void sub_23A9F1810(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_23A9F0590(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A9F25C8(&qword_27DFB0A30, &qword_23AA19BF0);
      goto LABEL_15;
    }

    sub_23A9F2DEC(v6 + 1);
  }

  v8 = *v3;
  sub_23AA0DD14();
  sub_23AA0C0B4();
  v9 = sub_23AA0DD54();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for HullPointUUID(0);
    v12 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);

      if (sub_23AA0C094())
      {
        v14 = *(v13 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v14 == *(a1 + v12))
        {
          sub_23AA0DC14();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }
}

unint64_t sub_23A9F19DC(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_23A9F07EC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_23A9F2488();
      result = v7;
      goto LABEL_12;
    }

    sub_23A9F3020(v5 + 1);
  }

  v8 = *v3;
  sub_23AA0DD14();
  sub_23A947E78(a3);
  v9 = sub_23AA0DD54();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    do
    {
      v12 = vceq_f32(*(*(v8 + 48) + 8 * result), *&a3);
      if (v12.i32[0] & v12.i32[1])
      {
        goto LABEL_15;
      }

      result = (result + 1) & v11;
    }

    while (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

void sub_23A9F1B48(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23A9F0A70(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        sub_23A9F25C8(&qword_27DFB16C8, &qword_23AA1B9C0);
        a2 = v7;
        goto LABEL_22;
      }

      sub_23A9F3268(v5 + 1);
    }

    v8 = *v3;
    sub_23AA0DD14();
    v9 = *(result + 48);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;
      do
      {
        v11 += 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v12 = sub_23AA0DC84();
        MEMORY[0x23EE907C0](v12);
        --v10;
      }

      while (v10);
    }

    v13 = sub_23AA0DD54();
    v14 = -1 << *(v8 + 32);
    a2 = v13 & ~v14;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      v16 = v13 & ~v14;
      type metadata accessor for CDTTriangle();
      a2 = v16;
      v17 = *(result + 48);
      v18 = v17[2];
      while (1)
      {
        v19 = *(*(*(v8 + 48) + 8 * a2) + 48);
        if (*&v19[2] == *&v18)
        {
          break;
        }

LABEL_13:
        a2 = (a2 + 1) & v15;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (*&v18 && v19 != v17)
      {
        v20 = v19 + 4;
        v21 = v17 + 4;
        v22 = v17[2];
        while (v22)
        {
          v23 = vceq_f32(*v20, *v21);
          if ((v23.i32[0] & v23.i32[1] & 1) == 0)
          {
            goto LABEL_13;
          }

          ++v20;
          ++v21;
          if (!--*&v22)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      sub_23AA0DC14();
      __break(1u);
    }
  }

LABEL_22:
  v24 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = result;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_23A9F1D64(__int128 *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F0D20(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A9F2708();
      goto LABEL_12;
    }

    sub_23A9F34F8(v6 + 1);
  }

  v8 = *v3;
  sub_23A9106D0();
  v9 = sub_23AA0D054();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_23A910674(*(v8 + 48) + 40 * a2, v22);
      v12 = sub_23AA0D054();
      v13 = sub_23AA0D054();
      sub_23A910724(v22);
      if (v12 == v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *result;
  v17 = result[1];
  *(v15 + 32) = *(result + 4);
  *v15 = v16;
  *(v15 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v14 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23AA0DC14();
  __break(1u);
}

void sub_23A9F1F20(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F0F98(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_23A9F2880(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_23A9F373C(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v7);
  v12 = sub_23AA0DD54();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23AA0DC14();
  __break(1u);
}

uint64_t sub_23A9F2090(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F11E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23A9F29B0();
      goto LABEL_12;
    }

    sub_23A9F3954(v11 + 1);
  }

  v13 = *v3;
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v14 = sub_23AA0D054();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_23A9F56F0(&qword_27DFB16E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_23AA0D084();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

void sub_23A9F2334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23A9F2488()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23A9F25C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0D854();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_23A9F2708()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        sub_23A910674(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23A9F2880(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0D854();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_23A9F29B0()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  v6 = *v0;
  v7 = sub_23AA0D854();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_23A9F2BE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  v4 = sub_23AA0D864();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = v13 | (v6 << 6);
      v17 = *(v3 + 48);
      v18 = *(v17 + 4 * v16);
      if (v18 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *(v17 + 4 * v16);
      }

      v20 = MEMORY[0x23EE90790](*(v5 + 40), LODWORD(v19), 4);
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

        goto LABEL_29;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v18;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_27;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:

    *v2 = v5;
  }
}

void sub_23A9F2DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  v4 = sub_23AA0D864();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_23AA0DD14();

      sub_23AA0C0B4();
      v17 = sub_23AA0DD54();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

void sub_23A9F3020(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  v3 = sub_23AA0D864();
  v5 = v3;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      *&v4 = *(*(v2 + 48) + 8 * (v13 | (v6 << 6)));
      v24 = v4;
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v16 = sub_23AA0DD54();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(&v4 + 1) = *(&v24 + 1);
      *(*(v5 + 48) + 8 * v12) = v24;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v2 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v5;
  }
}