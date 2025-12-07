void sub_23A9CBDF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

RoomPlan::RoomCaptureSession::Configuration __swiftcall RoomCaptureSession.Configuration.init()()
{
  *v0 = 0x100010101010101;
  *(v0 + 8) = 1;
  return result;
}

unint64_t RoomCaptureSession.CaptureError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 4)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000017;
  if (v1 == 1)
  {
    v3 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A9CC10C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9CC16C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_23A9CC200;
}

void sub_23A9CC200(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_23A9CC284(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

id sub_23A9CC2DC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void sub_23A9CC320(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void sub_23A9CC4C0(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 65) = v2;
}

uint64_t sub_23A9CC5C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23A8D5194(a1, &v14 - v9, &qword_27DFAF210, &qword_23AA12EE8);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_23A8D5068(v10, v11 + v12, &qword_27DFAF210, &qword_23AA12EE8);
  return swift_endAccess();
}

uint64_t sub_23A9CC6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_23A8D5194(v2 + v4, a2, &qword_27DFAF210, &qword_23AA12EE8);
}

uint64_t sub_23A9CC724(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_23A8D5068(a1, v2 + v4, &qword_27DFAF210, &qword_23AA12EE8);
  return swift_endAccess();
}

void (*sub_23A9CC808(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9E37C8;
}

double sub_23A9CC8A8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_23A9CC914()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_23A9CC96C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_23A9CCA90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9CCAF8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9CCB98;
}

uint64_t sub_23A9CCB9C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager;
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager);
  }

  else
  {
    type metadata accessor for IULogManager();
    v2 = swift_allocObject();
    *(v2 + 16) = 1792;
    *(v2 + 32) = 0;
    swift_unknownObjectWeakInit();
    v3 = dispatch_semaphore_create(1);
    v4 = MEMORY[0x277D84F90];
    *(v2 + 40) = v3;
    *(v2 + 48) = v4;
    *(v2 + 32) = &off_284D86F30;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_23A9CCCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23AA0CEC4();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    v18[1] = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = a1;
    aBlock[4] = a3;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a4;
    v17 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v20 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v15, v10, v17);
    _Block_release(v17);
    (*(v19 + 8))(v10, v8);
    (*(v12 + 8))(v15, v11);
  }

  return result;
}

double sub_23A9CCF78(uint64_t a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    v15[1] = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    v16 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v1;
    aBlock[4] = sub_23A9E348C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_276;
    v14 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v17 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v12, v6, v14);
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v12, v16);
  }

  return result;
}

void sub_23A9CD254(unint64_t a1, uint64_t a2)
{
  v59 = sub_23AA0C0E4();
  v54 = *(v59 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v59);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_26:
    v8 = sub_23AA0D7F4();
    v61 = a1;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = a1;
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v10 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
      v57 = a1 & 0xFFFFFFFFFFFFFF8;
      v58 = a1 & 0xC000000000000001;
      v53 = v54 + 16;
      v55 = (v54 + 8);
      v56 = v8;
      do
      {
        if (v58)
        {
          a1 = MEMORY[0x23EE90360](v9, a1, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v9 >= *(v57 + 16))
          {
            goto LABEL_23;
          }

          a1 = *(a1 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v60 = v11;
        v12 = [*(a1 + 16) identifier];
        if (!v12)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v13 = v12;
        sub_23AA0C0A4();

        v14 = *(a1 + 16);
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v7;
        v7 = isUniquelyReferenced_nonNull_native;
        v62 = *(a2 + v10);
        v17 = v62;
        v18 = a2;
        v2 = v10;
        *(a2 + v10) = 0x8000000000000000;
        v19 = v16;
        v21 = sub_23A9EDD28(v16);
        v22 = v17[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_24;
        }

        a2 = v20;
        if (v17[3] >= v24)
        {
          if ((v7 & 1) == 0)
          {
            sub_23A90F96C();
          }

          v7 = v19;
          v27 = v62;
          if (a2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_23A90ADF4(v24, v7);
          v7 = v19;
          v25 = sub_23A9EDD28(v19);
          if ((a2 & 1) != (v26 & 1))
          {
            goto LABEL_62;
          }

          v21 = v25;
          v27 = v62;
          if (a2)
          {
LABEL_4:
            *(v27[7] + 8 * v21) = v14;
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v27[(v21 >> 6) + 8] |= 1 << v21;
        (*(v54 + 16))(v27[6] + *(v54 + 72) * v21, v7, v59);
        *(v27[7] + 8 * v21) = v14;
        v28 = v27[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_25;
        }

        v27[2] = v30;
LABEL_5:
        (*v55)(v7, v59);
        a2 = v18;
        v10 = v2;
        *&v2[v18] = v27;
        swift_endAccess();

        ++v9;
        a1 = v61;
      }

      while (v60 != v56);
    }
  }

  if (v52)
  {
    v31 = sub_23AA0D7F4();
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if (v31 < 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v32 = 0;
      do
      {
        v2 = v32 + 1;
        MEMORY[0x23EE90360]();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_23AA0D944();
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        v32 = v2;
      }

      while (v31 != v2);
    }

    else
    {
      v2 = (a1 + 32);
      v33 = v31;
      do
      {
        v2 += 8;
        swift_unknownObjectRetain();
        sub_23AA0D944();
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        --v33;
      }

      while (v33);
    }
  }

  v34 = *(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (!v34)
  {
    goto LABEL_59;
  }

  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  v7 = sub_23AA0D2E4();
  [v35 updateWithKeyframes_];

  v36 = MEMORY[0x277D84F90];
  if (v31)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if ((v31 & 0x8000000000000000) == 0)
    {
      v37 = a2;
      v38 = 0;
      v39 = a1 & 0xC000000000000001;
      do
      {
        if (v39)
        {
          v40 = MEMORY[0x23EE90360](v38, a1);
        }

        else
        {
          v40 = *(a1 + 8 * v38 + 32);
        }

        ++v38;
        v41 = *(v40 + 24);
        objc_allocWithZone(type metadata accessor for ObjectKitKeyframe(0));
        v42 = v41;
        v43 = swift_unknownObjectRetain();
        sub_23A9A7204(v43, v41);

        swift_unknownObjectRelease();

        sub_23AA0D944();
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        a1 = v61;
      }

      while (v31 != v38);
      v36 = v63;
      a2 = v37;
      goto LABEL_47;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_47:
  if ((*(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) & 1) != 0 && (swift_beginAccess(), (v44 = [*(a2 + 56) currentFrame]) != 0))
  {
    v45 = v44;
    v46 = [v44 camera];

    [v46 transform];
    v47 = [*(a2 + 56) currentFrame];
    if (!v47)
    {
      goto LABEL_60;
    }

    v48 = v47;
    type metadata accessor for OUFrame();
    swift_allocObject();
    v7 = v48;
    sub_23A99F9B8(v7);
    v50 = *(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (v50)
    {
      v31 = v49;
      v2 = v50;

      if (!(v36 >> 62))
      {

        sub_23AA0DBE4();
LABEL_53:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
        v51 = sub_23AA0D2E4();

        [v2 updateWithKeyframes:v51 ouframe:v31];

        return;
      }

LABEL_57:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
      sub_23AA0D9F4();

      goto LABEL_53;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    sub_23AA0DC24();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_23A9CD9A8()
{
  v1 = v0;
  v2 = sub_23AA0D604();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CE54();
  v6 = sub_23AA0D484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23A8B4000, v5, v6, "Resetting bad tracking failure reports", v7, 2u);
    MEMORY[0x23EE91710](v7, -1, -1);
  }

  v8 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;

  v9 = sub_23AA0D5F4();
  (*(*(v9 - 8) + 56))(v4, 1, 2, v9);
  sub_23A9CDB14(v4);
  return sub_23A9E2ED0(v4, MEMORY[0x277D82DB0]);
}

double sub_23A9CDB14(uint64_t a1)
{
  v3 = sub_23AA0CEC4();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CF24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0D604();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 7) == 1)
  {
    v17[1] = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    sub_23A9E3260(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D82DB0]);
    v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v15 = swift_allocObject();
    sub_23A9E35C4(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, MEMORY[0x277D82DB0]);
    *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
    aBlock[4] = sub_23A9E33E8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_270;
    v16 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v19 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v9, v5, v16);
    _Block_release(v16);
    (*(v18 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_23A9CDEC0(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_23AA0D5F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = sub_23AA0D604();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  sub_23A9E3260(a1, &v74 - v20, MEMORY[0x277D82DB0]);
  v22 = (*(v4 + 48))(v21, 2, v3);
  v23 = &unk_27DFC0000;
  if (v22)
  {
    if (v22 == 1)
    {
      v24 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount;
      v25 = v81;
      v26 = v18;
      if (*(v81 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) < 1)
      {
        goto LABEL_24;
      }

      v27 = sub_23AA0CE54();
      v28 = sub_23AA0D484();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Resetting bad tracking failure reports (tracking state is not available yet)";
    }

    else
    {
      v24 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount;
      v25 = v81;
      v26 = v18;
      if (*(v81 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) < 1)
      {
        goto LABEL_24;
      }

      v27 = sub_23AA0CE54();
      v28 = sub_23AA0D484();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Resetting bad tracking failure reports (tracking state back to normal)";
    }

    _os_log_impl(&dword_23A8B4000, v27, v28, v30, v29, 2u);
    MEMORY[0x23EE91710](v29, -1, -1);
LABEL_18:

    *(v25 + v24) = 0;
    goto LABEL_24;
  }

  v77 = v6;
  v78 = a1;
  (*(v4 + 32))(v12, v21, v3);
  v31 = *MEMORY[0x277D82D98];
  v32 = v12;
  v33 = *(v4 + 104);
  v33(v9, v31, v3);
  v80 = v32;
  LOBYTE(v32) = sub_23AA0D5E4();
  v34 = *(v4 + 8);
  v79 = v4 + 8;
  v76 = v34;
  v34(v9, v3);
  v26 = v18;
  v35 = v81;
  if (v32)
  {
    v36 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
    swift_beginAccess();
    sub_23A9E3260(v35 + v36, v26, MEMORY[0x277D82DB0]);
    v33(v15, v31, v3);
    (*(v4 + 56))(v15, 0, 2, v3);
    v37 = sub_23AA0D5D4();
    v38 = MEMORY[0x277D82DB0];
    sub_23A9E2ED0(v15, MEMORY[0x277D82DB0]);
    sub_23A9E2ED0(v26, v38);
    if ((v37 & 1) == 0)
    {
      v39 = sub_23AA0CE54();
      v40 = sub_23AA0D484();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23A8B4000, v39, v40, "Resetting bad tracking failure reports (relocalization just started)", v41, 2u);
        v35 = v81;
        MEMORY[0x23EE91710](v41, -1, -1);
      }

      *(v35 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
    }
  }

  v23 = &unk_27DFC0000;
  v42 = *(v35 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount);
  if (__OFADD__(v42, 1))
  {
    __break(1u);
    return;
  }

  *(v35 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = v42 + 1;
  v43 = [*(v35 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter) stringFromInteger_];
  if (v43)
  {
    v44 = v43;
    v75 = sub_23AA0D134();
    v46 = v45;
  }

  else
  {
    v75 = 0;
    v46 = 0xE000000000000000;
  }

  v47 = v80;
  v48 = v77;
  (*(v4 + 16))(v77, v80, v3);

  v49 = sub_23AA0CE54();
  v50 = v48;
  v51 = sub_23AA0D484();

  if (os_log_type_enabled(v49, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v82[0] = v53;
    *v52 = 136315394;
    v54 = sub_23A9CE734();
    v56 = v55;
    v57 = v3;
    v77 = v3;
    v58 = v76;
    v76(v50, v57);
    v59 = sub_23A9A65A4(v54, v56, v82);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    v60 = sub_23A9A65A4(v75, v46, v82);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_23A8B4000, v49, v51, "Reported bad tracking (%s) for the %s time", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE91710](v53, -1, -1);
    v61 = v52;
    v23 = &unk_27DFC0000;
    MEMORY[0x23EE91710](v61, -1, -1);

    v58(v80, v77);
  }

  else
  {

    v62 = v50;
    v63 = v76;
    v76(v62, v3);
    v63(v47, v3);
  }

  a1 = v78;
  v25 = v81;
LABEL_24:
  sub_23A9E3260(a1, v26, MEMORY[0x277D82DB0]);
  v64 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  swift_beginAccess();
  sub_23A9E355C(v26, v25 + v64, MEMORY[0x277D82DB0]);
  swift_endAccess();
  v65 = v23[358];
  if (*(v25 + v65) >= 601)
  {
    v66 = sub_23AA0CE54();
    v67 = sub_23AA0D494();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_23A8B4000, v66, v67, "[reportTrackingState] Too many bad tracking reports. Ending RoomCaptureSession...", v68, 2u);
      MEMORY[0x23EE91710](v68, -1, -1);
    }

    *(v25 + v65) = 0;
    sub_23A9DE13C();
    v69 = swift_allocError();
    *v70 = 1;
    v71 = *(v25 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v25 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v69;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    LOBYTE(v82[0]) = 1;
    v72 = sub_23AA0D1A4();
    sub_23A955B84(v72, v73);

    sub_23A9CB5E0(1);
  }
}

uint64_t sub_23A9CE734()
{
  v1 = v0;
  v2 = sub_23AA0D5F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D82D90])
  {
    return 0x696C616974696E69;
  }

  if (v7 == *MEMORY[0x277D82DA0])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x277D82DA8])
  {
    return 0xD000000000000015;
  }

  if (v7 == *MEMORY[0x277D82D98])
  {
    return 0x696C61636F6C6572;
  }

  (*(v3 + 8))(v6, v2);
  return 0x206E776F6E6B6E75;
}

void sub_23A9CE91C()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    v2 = objc_opt_self();

    v3 = [v2 defaultManager];
    v4 = sub_23AA0D104();
    v5 = [v3 fileExistsAtPath_];

    if (v5)
    {
      v6 = [v2 defaultManager];
      v7 = sub_23AA0D104();

      v11[0] = 0;
      v8 = [v6 removeItemAtPath:v7 error:v11];

      if (v8)
      {
        v9 = v11[0];
      }

      else
      {
        v10 = v11[0];
        sub_23AA0BE74();

        swift_willThrow();
        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

void sub_23A9CEABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v62 = *MEMORY[0x277D85DE8];
  v49 = sub_23AA0BFB4();
  v55 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23AA0BE94();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFB1450, 0x277CBEB38);
  v6 = sub_23AA0D464();
  *&v60 = 0x737463656A626FLL;
  *(&v60 + 1) = 0xE700000000000000;
  v7 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = sub_23A8D6C58(0, &qword_27DFB1458, 0x277CBEB18);
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v58, &v60);
  sub_23A8D6C58(0, &unk_27DFB1460, 0x277CBEA60);
  swift_dynamicCast();
  v9 = v57;
  v53 = v8;
  v52 = sub_23AA0D5C4();

  v10 = sub_23AA0D464();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  *&v60 = 0x737463656A626FLL;
  *(&v60 + 1) = 0xE700000000000000;
  [v10 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  *&v60 = 0x737463656A626FLL;
  *(&v60 + 1) = 0xE700000000000000;
  v12 = sub_23AA0DC04();
  v45 = v10;
  v13 = [v10 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v58, &v60);
  swift_dynamicCast();
  v54 = v57;
  v44 = v6;
  v14 = sub_23AA0D464();
  v15 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  *&v60 = 0x737463656A626FLL;
  *(&v60 + 1) = 0xE700000000000000;
  [v14 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  *&v60 = 0x737463656A626FLL;
  *(&v60 + 1) = 0xE700000000000000;
  v16 = [v14 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v16)
  {
    goto LABEL_29;
  }

  v43 = v14;
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v58, &v60);
  swift_dynamicCast();
  v53 = v57;
  sub_23AA0D5B4();
  sub_23AA0BE84();
  v17 = v55;
  if (v61)
  {
    while (1)
    {
      sub_23A8EF9F0(&v60, &v58);
      sub_23A8D6C58(0, &qword_27DFB1448, 0x277CBEAC0);
      swift_dynamicCast();
      v18 = v57;
      *&v58 = 0x69645F7365786F62;
      *(&v58 + 1) = 0xEA00000000007463;
      v19 = [v57 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v19)
      {
        break;
      }

      sub_23AA0D704();
      swift_unknownObjectRelease();
      sub_23A8EF9F0(&v57, &v58);
      swift_dynamicCast();
      v20 = v56;
      if (qword_27DFAE4D0 != -1)
      {
        swift_once();
      }

      v21 = [v20 objectForKey_];
      v17 = v55;
      if (v21)
      {
        sub_23AA0D704();
        swift_unknownObjectRelease();
        sub_23A8D50D0(&v58, &unk_27DFB08E0, &qword_23AA13038);
        [v54 addObject_];
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
        sub_23A8D50D0(&v58, &unk_27DFB08E0, &qword_23AA13038);
      }

      if (qword_27DFAE4D8 != -1)
      {
        swift_once();
      }

      if ([v20 objectForKey_])
      {
        sub_23AA0D704();
        swift_unknownObjectRelease();
        sub_23A8D50D0(&v58, &unk_27DFB08E0, &qword_23AA13038);
        [v53 addObject_];
      }

      else
      {

        v58 = 0u;
        v59 = 0u;
        sub_23A8D50D0(&v58, &unk_27DFB08E0, &qword_23AA13038);
      }

      sub_23AA0BE84();
      if (!v61)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_18:
  (*(v46 + 8))(v5, v47);
  v23 = v50;
  v22 = v51;
  *&v60 = v51;
  *(&v60 + 1) = v50;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0xD00000000000001BLL, 0x800000023AA23710);

  *&v60 = v22;
  *(&v60 + 1) = v23;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0xD00000000000001BLL, 0x800000023AA23730);

  v24 = v48;
  sub_23AA0BEE4();

  v25 = sub_23AA0BF14();
  v26 = *(v17 + 8);
  v27 = v49;
  v26(v24, v49);
  *&v60 = 0;
  v28 = v45;
  v29 = [v45 writeToURL:v25 error:&v60];

  v30 = v60;
  if (v29)
  {
    sub_23AA0BEE4();

    v31 = sub_23AA0BF14();
    v26(v24, v27);
    *&v60 = 0;
    v32 = v43;
    v33 = [v43 writeToURL:v31 error:&v60];

    v34 = v60;
    v35 = v44;
    if (v33)
    {

      return;
    }

    v36 = v34;
  }

  else
  {
    v36 = v30;

    v35 = v44;
    v32 = v43;
  }

  v37 = sub_23AA0BE74();

  swift_willThrow();

  v38 = sub_23AA0CE54();
  v39 = sub_23AA0D494();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v60 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_23A9A65A4(v51, v23, &v60);
    _os_log_impl(&dword_23A8B4000, v38, v39, "Unable to log fp_output_wi_beautify.plist or fp_output_no_beautify.plist to %s!", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x23EE91710](v41, -1, -1);
    MEMORY[0x23EE91710](v40, -1, -1);
  }
}

void sub_23A9CF53C(__int128 *a1, uint64_t a2)
{
  v5 = sub_23AA0CEC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23AA0CF24();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CapturedRoom(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v40 = a1[2];
  v41 = v14;
  v42 = a1[4];
  v15 = a1[1];
  v38 = *a1;
  v39 = v15;
  v16 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v32 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue);
    sub_23A9E3260(a2, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
    v19 = (*(v11 + 80) + 96) & ~*(v11 + 80);
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v6;
    v21 = swift_allocObject();
    v22 = v41;
    v21[3] = v40;
    v21[4] = v22;
    v21[5] = v42;
    v23 = v39;
    v21[1] = v38;
    v21[2] = v23;
    sub_23A9E35C4(v13, v21 + v19, type metadata accessor for CapturedRoom);
    *(v21 + v20) = v2;
    v24 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v24 = v18;
    v24[1] = v17;
    aBlock[4] = sub_23A9E31C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_264;
    v25 = _Block_copy(aBlock);

    sub_23A9ACA9C(&v38, v36);

    sub_23AA0CEE4();
    v36[0] = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v26 = v34;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v9, v26, v25);
    _Block_release(v25);
    (*(v31 + 8))(v26, v5);
    (*(v33 + 8))(v9, v35);
  }

  else
  {
    v27 = v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      ObjectType = swift_getObjectType();
      (*(v28 + 40))(ObjectType, v28);
      swift_unknownObjectRelease();
    }
  }
}

void sub_23A9CF9EC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v50 = a4;
  v51 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_23AA0BFB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v41 - v14;
  MEMORY[0x28223BE20](v15);
  v47 = &v41 - v16;
  MEMORY[0x28223BE20](v17);
  v49 = &v41 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1440, qword_23AA1B288);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA10FC0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 32) = 0x656D61726679656BLL;
  *(v19 + 40) = 0xE900000000000073;
  sub_23AA0C0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  sub_23A9BACF4(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v21 = sub_23AA0D024();
  v22 = RSKeyframeSequenceToDictionary();

  if (v22)
  {
    v23 = sub_23AA0D034();

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
    *&v53 = v23;
    sub_23A8EF9F0(&v53, (v19 + 64));
  }

  else
  {
    *(v19 + 88) = v20;
    *(v19 + 64) = 0x6575716553206F4ELL;
    *(v19 + 72) = 0xEB0000000065636ELL;
  }

  sub_23A8D6C58(0, &qword_27DFB1448, 0x277CBEAC0);
  v24 = sub_23AA0D474();
  v25 = type metadata accessor for CapturedRoom(0);
  sub_23A8D5194(v51 + *(v25 + 60), &v53, &unk_27DFB1140, &qword_23AA19C10);
  if (!v54)
  {
    sub_23A8D50D0(&v53, &unk_27DFB1140, &qword_23AA19C10);
    __break(1u);
    goto LABEL_12;
  }

  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
  sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = v9;
  v26 = v52;
  v27 = [v52 dictionaryRepresentation];

  if (!v27)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v43 = v24;
  v28 = v50;
  sub_23A9D0A9C(v24, v27, v50, a5, 0);
  v42 = v27;
  sub_23A9CEABC(v27, v28, a5);
  v41 = a3;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v53 = v28;
  *(&v53 + 1) = a5;
  MEMORY[0x23EE8FCA0](0x6C70726F6F6C662FLL, 0xEF7A6473752E6E61);
  sub_23AA0BEE4();

  v29 = v46;
  sub_23AA0BF34();
  v30 = v47;
  sub_23AA0BF54();
  v31 = *(v11 + 8);
  v32 = v29;
  v33 = v45;
  v31(v32, v45);
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v53 = v28;
  *(&v53 + 1) = a5;
  MEMORY[0x23EE8FCA0](0x6C70726F6F6C662FLL, 0xEF7A6473752E6E61);
  v34 = v48;
  sub_23AA0BEE4();

  v35 = v44;
  (*(v11 + 16))(v44, v30, v33);
  (*(v11 + 56))(v35, 0, 1, v33);
  sub_23A967070(v34, v35, 0, 0, 2);
  sub_23A8D50D0(v35, &qword_27DFAF210, &qword_23AA12EE8);
  v31(v34, v33);
  v31(v30, v33);
  v31(v49, v33);
  v36 = v41;
  v37 = v43;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v53 = v50;
  *(&v53 + 1) = a5;
  MEMORY[0x23EE8FCA0](0xD000000000000012, 0x800000023AA236F0);
  sub_23A9AC460(v51, v53, *(&v53 + 1));

  v38 = v36 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    ObjectType = swift_getObjectType();
    (*(v39 + 40))(ObjectType, v39);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

double sub_23A9D036C()
{
  v1 = sub_23AA0CEC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CF24();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) == 1)
  {
    v10 = (v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
    swift_beginAccess();
    v11 = v10[1];
    if (v11)
    {
      v16 = v2;
      v12 = *v10;
      v15 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue);
      v13 = swift_allocObject();
      v13[2] = v0;
      v13[3] = v12;
      v13[4] = v11;
      aBlock[4] = sub_23A9E3038;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_258;
      v14 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v17 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v9, v4, v14);
      _Block_release(v14);
      (*(v16 + 8))(v4, v1);
      (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

double sub_23A9D0680(uint64_t a1, void *a2, unint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (!v11)
  {
    __break(1u);
  }

  v12 = [v11 getDebugInfo];
  if (v12)
  {
    v14 = v12;
    v38[0] = v7;
    v38[1] = a1;
    v39 = a2;
    v40 = a3;

    MEMORY[0x23EE8FCA0](0x6576694C2FLL, 0xE500000000000000);
    v16 = v39;
    v15 = v40;
    v17 = objc_opt_self();
    v18 = [v17 defaultManager];
    v19 = sub_23AA0D104();
    v20 = [v18 fileExistsAtPath_];

    if (v20)
    {
      goto LABEL_6;
    }

    v21 = [v17 defaultManager];
    v22 = sub_23AA0D104();
    v39 = 0;
    v23 = [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v39];

    if (v23)
    {
      v24 = v39;
LABEL_6:
      v25 = objc_opt_self();
      v39 = 0;
      v26 = [v25 dataWithPropertyList:v14 format:200 options:0 error:&v39];
      v27 = v39;
      if (v26)
      {
        v28 = sub_23AA0BFE4();
        v30 = v29;

        v39 = 0;
        v40 = 0xE000000000000000;
        sub_23AA0D8A4();

        v39 = v16;
        v40 = v15;
        MEMORY[0x23EE8FCA0](0xD000000000000010, 0x800000023AA236D0);
        sub_23AA0BEE4();

        sub_23AA0BFF4();
        (*(v38[0] + 8))(v10, v6);

        return sub_23A8EFA00(v28, v30);
      }

      else
      {
        v31 = v27;

        v32 = sub_23AA0BE74();

        swift_willThrow();
      }

      return result;
    }

    v33 = v39;

    v34 = sub_23AA0BE74();

    swift_willThrow();
    v35 = sub_23AA0CE54();
    v36 = sub_23AA0D494();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23A8B4000, v35, v36, "Could not write to RSC debug log", v37, 2u);
      MEMORY[0x23EE91710](v37, -1, -1);
    }
  }

  return result;
}

void sub_23A9D0A9C(void *a1, void *a2, void *a3, unint64_t a4, int a5)
{
  LODWORD(v101) = a5;
  v100 = a1;
  v105 = *MEMORY[0x277D85DE8];
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0C064();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 && a4 == 0xE000000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {
    return;
  }

  v97 = v8;
  v98 = v9;
  v93 = a2;
  v99 = objc_opt_self();
  v16 = [v99 defaultManager];
  v17 = sub_23AA0D104();
  v18 = [v16 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v19 = [v99 defaultManager];
    v20 = sub_23AA0D104();
    v103 = 0;
    v21 = [v19 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v103];

    if (v21)
    {
      v22 = v103;
    }

    else
    {
      v23 = v103;
      v24 = sub_23AA0BE74();

      swift_willThrow();

      v25 = sub_23AA0CE54();
      v26 = sub_23AA0D494();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v96 = v25;
        v28 = v27;
        v29 = swift_slowAlloc();
        v103 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_23A9A65A4(a3, a4, &v103);
        v30 = v26;
        v31 = v96;
        _os_log_impl(&dword_23A8B4000, v96, v30, "Unable to create folder %s!", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x23EE91710](v29, -1, -1);
        MEMORY[0x23EE91710](v28, -1, -1);
      }

      else
      {
      }
    }
  }

  v103 = a3;
  v104 = a4;

  MEMORY[0x23EE8FCA0](0x6576694C2FLL, 0xE500000000000000);
  v33 = v103;
  v32 = v104;
  v95 = v103;
  v96 = v104;
  if (v101)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v35 = sub_23AA0D104();
    v92 = v34;
    [v34 setDateFormat_];

    sub_23AA0C054();
    v36 = sub_23AA0C034();
    (*(v13 + 8))(v15, v12);
    v37 = [v34 stringFromDate_];

    v38 = sub_23AA0D134();
    v85 = v38;
    v84 = v39;

    v40 = objc_opt_self();
    v91 = v11;
    v41 = v40;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
    v42 = swift_allocObject();
    v88 = xmmword_23AA11C10;
    *(v42 + 16) = xmmword_23AA11C10;
    *(v42 + 32) = v33;
    *(v42 + 40) = v32;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
    v43 = v32;
    v44 = swift_allocObject();
    v86 = xmmword_23AA10FC0;
    *(v44 + 16) = xmmword_23AA10FC0;
    *(v44 + 56) = MEMORY[0x277D837D0];
    v45 = sub_23A9165A8();
    *(v44 + 64) = v45;
    v90 = a3;
    v46 = v84;
    *(v44 + 32) = v38;
    *(v44 + 40) = v46;

    *(v42 + 48) = sub_23AA0D164();
    *(v42 + 56) = v47;
    v48 = sub_23AA0D2E4();

    v49 = v41;
    v50 = [v41 pathWithComponents_];

    v94 = sub_23AA0D134();
    v51 = swift_allocObject();
    *(v51 + 16) = v88;
    *(v51 + 32) = v95;
    *(v51 + 40) = v43;
    v52 = swift_allocObject();
    *(v52 + 16) = v86;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = v45;
    *(v52 + 32) = v85;
    *(v52 + 40) = v46;
    a3 = v90;

    *(v51 + 48) = sub_23AA0D164();
    *(v51 + 56) = v53;
    v54 = sub_23AA0D2E4();

    v11 = v91;
    v55 = [v49 pathWithComponents_];

    v56 = sub_23AA0D134();
    v58 = v57;
  }

  else
  {
    v103 = a3;
    v104 = a4;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](0x7475706E695F7066, 0xEE007473696C702ELL);

    v94 = v103;
    v103 = a3;
    v104 = a4;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](0x757074756F5F7066, 0xEF7473696C702E74);

    v56 = v103;
    v58 = v104;
  }

  v59 = v98;
  v60 = v99;
  if (*(v102 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) != 1)
  {

    goto LABEL_20;
  }

  v92 = v56;
  v99 = v58;
  v61 = [v60 defaultManager];
  v62 = sub_23AA0D104();
  v63 = [v61 fileExistsAtPath_];

  if (v63)
  {

LABEL_19:
    v59 = v98;
LABEL_20:
    sub_23AA0BEE4();

    v68 = sub_23AA0BF14();
    v69 = *(v59 + 8);
    v69(v11, v97);
    v103 = 0;
    v70 = [v100 writeToURL:v68 error:&v103];

    if (v70)
    {
      v71 = v103;
      if (v101)
      {

        return;
      }

      sub_23AA0BEE4();

      v74 = sub_23AA0BF14();
      v69(v11, v97);
      v103 = 0;
      v75 = [v93 writeToURL:v74 error:&v103];

      v76 = v103;
      if (v75)
      {

        v77 = v76;
        return;
      }

      v101 = v103;
      v79 = v103;
      v73 = sub_23AA0BE74();
    }

    else
    {
      v72 = v103;

      v73 = sub_23AA0BE74();
    }

    goto LABEL_30;
  }

  v64 = [v60 defaultManager];
  v65 = sub_23AA0D104();

  v103 = 0;
  v66 = [v64 createDirectoryAtPath:v65 withIntermediateDirectories:1 attributes:0 error:&v103];

  if (v66)
  {
    v67 = v103;
    goto LABEL_19;
  }

  v78 = v103;

  v73 = sub_23AA0BE74();

LABEL_30:
  swift_willThrow();

  v80 = sub_23AA0CE54();
  v81 = sub_23AA0D494();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v103 = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_23A9A65A4(a3, a4, &v103);
    _os_log_impl(&dword_23A8B4000, v80, v81, "Unable to log input and output to %s!", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x23EE91710](v83, -1, -1);
    MEMORY[0x23EE91710](v82, -1, -1);
  }
}

uint64_t RoomCaptureSession.deinit()
{
  sub_23A8E9694(v0 + 24);
  sub_23A8E9694(v0 + 40);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate);

  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate);
  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate);
  v1 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_logger;
  v2 = sub_23AA0CE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23A9E2ED0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel, type metadata accessor for CapturedRoom);

  sub_23A9E2ED0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState, MEMORY[0x277D82DB0]);
  return v0;
}

uint64_t RoomCaptureSession.__deallocating_deinit()
{
  RoomCaptureSession.deinit();

  return swift_deallocClassInstance();
}

void sub_23A9D1894(void *a1, void *a2)
{
  v4 = sub_23AA0D604();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE498 != -1)
  {
    swift_once();
  }

  v7 = qword_27DFC07E8;
  if (*(qword_27DFC07E8 + 32) == 1)
  {
    v8 = [a1 configuration];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 videoFormat];

      v11 = [v10 framesPerSecond];
    }

    else
    {
      v11 = [a2 renderFramesPerSecond];
    }

    [a2 timestamp];
    v13 = v12;
    v14 = *(v7 + 40);
    v15 = swift_allocObject();
    v15[2] = v7;
    v15[3] = v13;
    v15[4] = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_23A9E2FD0;
    *(v16 + 24) = v15;
    aBlock[4] = sub_23A916670;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23AA08C40;
    aBlock[3] = &block_descriptor_246_0;
    v17 = _Block_copy(aBlock);

    dispatch_sync(v14, v17);
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9B9314(a2);
    swift_unknownObjectRelease();
  }

  if (*(v20 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    if (qword_27DFAE460 == -1)
    {
LABEL_13:
      [a2 timestamp];
      sub_23A9552A4(v21);
      if (qword_27DFAE520 != -1)
      {
        swift_once();
      }

      sub_23AA091F4(a2);
      if (qword_27DFAE410 != -1)
      {
        swift_once();
      }

      if (*(qword_27DFC0670 + 32) == 1)
      {
        sub_23AA08CA4();
        sub_23A915830(v22 | ((HIDWORD(v22) & 1) << 32));
        [a2 timestamp];
        sub_23A915A50(v23);
      }

      v24 = [a2 camera];
      sub_23AA0D614();

      sub_23A9CDB14(v6);
      sub_23A9E2ED0(v6, MEMORY[0x277D82DB0]);
      type metadata accessor for RSFrame();
      swift_allocObject();
      v25 = a2;
      sub_23A9A75E8(v25);
      v27 = v26;

      sub_23A9CCC54(v27);
      type metadata accessor for OUFrame();
      swift_allocObject();
      sub_23A99F9B8(v25);
      sub_23A9CCC7C(v28);

      goto LABEL_20;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

LABEL_20:
}

void sub_23A9D1E30(uint64_t a1, void *a2, __n128 a3)
{
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_23A9B6F28(a2);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_23A9D2114(void *a1, uint64_t *a2, int a3)
{
  v590 = a3;
  v599 = a1;
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13C8, &qword_23AA1B258);
  v595 = *(v639 - 8);
  MEMORY[0x28223BE20](v639);
  v601 = &v574 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v609 = &v574 - v7;
  MEMORY[0x28223BE20](v8);
  v600 = &v574 - v9;
  MEMORY[0x28223BE20](v10);
  v604 = &v574 - v11;
  MEMORY[0x28223BE20](v12);
  v610 = &v574 - v13;
  MEMORY[0x28223BE20](v14);
  v603 = &v574 - v15;
  MEMORY[0x28223BE20](v16);
  v606 = &v574 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13D0, &qword_23AA1B260);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v574 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v630 = &v574 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13D8, &qword_23AA1B268);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v574 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v629 = &v574 - v27;
  v648 = sub_23AA0C0E4();
  v645 = *(v648 - 8);
  MEMORY[0x28223BE20](v648);
  v29 = &v574 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v574 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v574 - v34;
  MEMORY[0x28223BE20](v36);
  v578 = &v574 - v37;
  MEMORY[0x28223BE20](v38);
  v582 = &v574 - v39;
  MEMORY[0x28223BE20](v40);
  v612 = &v574 - v41;
  MEMORY[0x28223BE20](v42);
  v579 = &v574 - v43;
  MEMORY[0x28223BE20](v44);
  v583 = &v574 - v45;
  MEMORY[0x28223BE20](v46);
  v613 = &v574 - v47;
  MEMORY[0x28223BE20](v48);
  v580 = &v574 - v49;
  MEMORY[0x28223BE20](v50);
  v584 = &v574 - v51;
  MEMORY[0x28223BE20](v52);
  v614 = &v574 - v53;
  MEMORY[0x28223BE20](v54);
  v581 = &v574 - v55;
  MEMORY[0x28223BE20](v56);
  v585 = &v574 - v57;
  MEMORY[0x28223BE20](v58);
  v615 = &v574 - v59;
  MEMORY[0x28223BE20](v60);
  v577 = &v574 - v61;
  MEMORY[0x28223BE20](v62);
  v587 = &v574 - v63;
  MEMORY[0x28223BE20](v64);
  v607 = &v574 - v65;
  MEMORY[0x28223BE20](v66);
  v598 = &v574 - v67;
  MEMORY[0x28223BE20](v68);
  v633 = &v574 - v69;
  MEMORY[0x28223BE20](v70);
  v625 = &v574 - v71;
  MEMORY[0x28223BE20](v72);
  v640 = (&v574 - v73);
  MEMORY[0x28223BE20](v74);
  v641 = &v574 - v75;
  MEMORY[0x28223BE20](v76);
  v642 = (&v574 - v77);
  MEMORY[0x28223BE20](v78);
  v643 = &v574 - v79;
  MEMORY[0x28223BE20](v80);
  v646 = (&v574 - v81);
  v632 = type metadata accessor for CapturedRoom.Surface(0);
  v647 = *(v632 - 8);
  MEMORY[0x28223BE20](v632);
  v602 = &v574 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v605 = &v574 - v84;
  MEMORY[0x28223BE20](v85);
  v589 = &v574 - v86;
  MEMORY[0x28223BE20](v87);
  v591 = &v574 - v88;
  MEMORY[0x28223BE20](v89);
  v592 = &v574 - v90;
  MEMORY[0x28223BE20](v91);
  v593 = &v574 - v92;
  MEMORY[0x28223BE20](v93);
  v594 = &v574 - v94;
  MEMORY[0x28223BE20](v95);
  v586 = &v574 - v96;
  MEMORY[0x28223BE20](v97);
  v588 = &v574 - v98;
  MEMORY[0x28223BE20](v99);
  v597 = &v574 - v100;
  MEMORY[0x28223BE20](v101);
  v644 = &v574 - v102;
  MEMORY[0x28223BE20](v103);
  v628 = &v574 - v104;
  MEMORY[0x28223BE20](v105);
  v634 = &v574 - v106;
  MEMORY[0x28223BE20](v107);
  v617 = &v574 - v108;
  MEMORY[0x28223BE20](v109);
  v635 = &v574 - v110;
  MEMORY[0x28223BE20](v111);
  v618 = &v574 - v112;
  MEMORY[0x28223BE20](v113);
  v636 = &v574 - v114;
  MEMORY[0x28223BE20](v115);
  v622 = &v574 - v116;
  MEMORY[0x28223BE20](v117);
  v637 = &v574 - v118;
  MEMORY[0x28223BE20](v119);
  v624 = &v574 - v120;
  MEMORY[0x28223BE20](v121);
  v638 = &v574 - v122;
  MEMORY[0x28223BE20](v123);
  v125 = &v574 - v124;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v611 = v35;
  v576 = v32;
  v575 = v29;
  v596 = v20;
  v616 = Strong;
  v127 = *a2;
  v128 = *(*a2 + 16);
  v626 = v25;
  v627 = a2;
  v623 = v128;
  if (v128)
  {
    v129 = 0;
    v621 = *(v632 + 44);
    v620 = v127 + ((*(v647 + 80) + 32) & ~*(v647 + 80));
    v631 = (v645 + 16);
    v619 = (v645 + 8);
    v649 = MEMORY[0x277D84F98];
    v608 = v125;
    while (v129 < *(v127 + 16))
    {
      v3 = *(v647 + 72);
      sub_23A9E3260(v620 + v3 * v129, v125, type metadata accessor for CapturedRoom.Surface);
      v130 = *v631;
      v131 = v646;
      (*v631)(v646, &v125[v621], v648);
      sub_23A9E35C4(v125, v638, type metadata accessor for CapturedRoom.Surface);
      v132 = v649;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v652 = v132;
      v135 = sub_23A9EDD28(v131);
      v136 = v132[2];
      v137 = (v134 & 1) == 0;
      v138 = v136 + v137;
      if (__OFADD__(v136, v137))
      {
        goto LABEL_140;
      }

      v139 = v134;
      if (v649[3] >= v138)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23A90F5DC();
        }
      }

      else
      {
        sub_23A90A908(v138, isUniquelyReferenced_nonNull_native);
        v140 = sub_23A9EDD28(v646);
        if ((v139 & 1) != (v141 & 1))
        {
          goto LABEL_383;
        }

        v135 = v140;
      }

      a2 = v627;
      v649 = v652;
      if (v139)
      {
        sub_23A9E355C(v638, v649[7] + v135 * v3, type metadata accessor for CapturedRoom.Surface);
        (*v619)(v646, v648);
      }

      else
      {
        v142 = v127;
        v143 = v648;
        v144 = v649;
        v127 = v627;
        v649[(v135 >> 6) + 8] |= 1 << v135;
        v145 = v645;
        v146 = v646;
        (v130)(v144[6] + *(v645 + 72) * v135, v646, v143);
        sub_23A9E35C4(v638, v144[7] + v135 * v3, type metadata accessor for CapturedRoom.Surface);
        (*(v145 + 8))(v146, v143);
        v147 = v144[2];
        v148 = __OFADD__(v147, 1);
        v149 = v147 + 1;
        if (v148)
        {
          goto LABEL_149;
        }

        v144[2] = v149;
        a2 = v127;
        v127 = v142;
        v125 = v608;
      }

      if (v623 == ++v129)
      {
        goto LABEL_18;
      }
    }

LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v649 = MEMORY[0x277D84F98];
LABEL_18:
  v151 = a2[1];
  v127 = *(v151 + 16);
  if (v127)
  {
    v152 = 0;
    v153 = *(v632 + 44);
    v638 = v151 + ((*(v647 + 80) + 32) & ~*(v647 + 80));
    v646 = (v645 + 16);
    v631 = (v645 + 8);
    v623 = v153;
    while (v152 < *(v151 + 16))
    {
      v154 = *(v647 + 72);
      v155 = v624;
      sub_23A9E3260(v638 + v154 * v152, v624, type metadata accessor for CapturedRoom.Surface);
      v3 = *v646;
      v156 = v643;
      (*v646)(v643, v155 + v153, v648);
      sub_23A9E35C4(v155, v637, type metadata accessor for CapturedRoom.Surface);
      v157 = v649;
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v652 = v157;
      v159 = sub_23A9EDD28(v156);
      v161 = v157[2];
      v162 = (v160 & 1) == 0;
      v148 = __OFADD__(v161, v162);
      v163 = v161 + v162;
      if (v148)
      {
        goto LABEL_142;
      }

      v164 = v160;
      if (v649[3] >= v163)
      {
        if ((v158 & 1) == 0)
        {
          v174 = v159;
          sub_23A90F5DC();
          v159 = v174;
        }
      }

      else
      {
        sub_23A90A908(v163, v158);
        v159 = sub_23A9EDD28(v643);
        if ((v164 & 1) != (v165 & 1))
        {
          goto LABEL_383;
        }
      }

      v649 = v652;
      if (v164)
      {
        sub_23A9E355C(v637, v649[7] + v159 * v154, type metadata accessor for CapturedRoom.Surface);
        (*v631)(v643, v648);
      }

      else
      {
        v166 = v127;
        v127 = v151;
        v167 = v648;
        v168 = v649;
        v649[(v159 >> 6) + 8] |= 1 << v159;
        v169 = v645;
        v170 = v159;
        v171 = v643;
        (v3)(v168[6] + *(v645 + 72) * v159, v643, v167);
        sub_23A9E35C4(v637, v168[7] + v170 * v154, type metadata accessor for CapturedRoom.Surface);
        (*(v169 + 8))(v171, v167);
        v172 = v168[2];
        v148 = __OFADD__(v172, 1);
        v173 = v172 + 1;
        if (v148)
        {
          goto LABEL_150;
        }

        v649[2] = v173;
        v151 = v127;
        v127 = v166;
        v153 = v623;
      }

      if (v127 == ++v152)
      {
        goto LABEL_32;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_32:
  v175 = v627[2];
  v176 = *(v175 + 16);
  if (v176)
  {
    v177 = 0;
    v3 = *(v632 + 44);
    v178 = v175 + ((*(v647 + 80) + 32) & ~*(v647 + 80));
    v646 = (v645 + 16);
    v643 = v645 + 8;
    v637 = v178;
    v638 = v3;
    while (v177 < *(v175 + 16))
    {
      v179 = *(v647 + 72);
      v180 = v622;
      sub_23A9E3260(v178 + v179 * v177, v622, type metadata accessor for CapturedRoom.Surface);
      v181 = *v646;
      v127 = v642;
      (*v646)(v642, v180 + v3, v648);
      sub_23A9E35C4(v180, v636, type metadata accessor for CapturedRoom.Surface);
      v182 = v649;
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v652 = v182;
      v184 = sub_23A9EDD28(v127);
      v186 = v182[2];
      v187 = (v185 & 1) == 0;
      v148 = __OFADD__(v186, v187);
      v188 = v186 + v187;
      if (v148)
      {
        goto LABEL_144;
      }

      v127 = v185;
      if (v649[3] >= v188)
      {
        if ((v183 & 1) == 0)
        {
          v197 = v184;
          sub_23A90F5DC();
          v184 = v197;
        }
      }

      else
      {
        sub_23A90A908(v188, v183);
        v184 = sub_23A9EDD28(v642);
        if ((v127 & 1) != (v189 & 1))
        {
          goto LABEL_383;
        }
      }

      v649 = v652;
      if (v127)
      {
        sub_23A9E355C(v636, v649[7] + v184 * v179, type metadata accessor for CapturedRoom.Surface);
        (*v643)(v642, v648);
      }

      else
      {
        v190 = v176;
        v3 = v175;
        v191 = v648;
        v192 = v649;
        v649[(v184 >> 6) + 8] |= 1 << v184;
        v193 = v645;
        v127 = v184;
        v194 = v642;
        v181(v192[6] + *(v645 + 72) * v184, v642, v191);
        sub_23A9E35C4(v636, v192[7] + v127 * v179, type metadata accessor for CapturedRoom.Surface);
        (*(v193 + 8))(v194, v191);
        v195 = v192[2];
        v148 = __OFADD__(v195, 1);
        v196 = v195 + 1;
        if (v148)
        {
          goto LABEL_151;
        }

        v649[2] = v196;
        v175 = v3;
        v176 = v190;
        v178 = v637;
        v3 = v638;
      }

      if (v176 == ++v177)
      {
        goto LABEL_46;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

LABEL_46:
  v198 = v627[3];
  v199 = *(v198 + 16);
  if (!v199)
  {
LABEL_60:
    v221 = v627[4];
    v222 = *(v221 + 16);
    if (v222)
    {
      v223 = 0;
      v3 = *(v632 + 44);
      v224 = v221 + ((*(v647 + 80) + 32) & ~*(v647 + 80));
      v646 = (v645 + 16);
      v642 = v3;
      v643 = v645 + 8;
      v641 = v224;
      while (v223 < *(v221 + 16))
      {
        v225 = *(v647 + 72);
        v226 = v617;
        sub_23A9E3260(v224 + v225 * v223, v617, type metadata accessor for CapturedRoom.Surface);
        v227 = *v646;
        v127 = v640;
        (*v646)(v640, v226 + v3, v648);
        sub_23A9E35C4(v226, v634, type metadata accessor for CapturedRoom.Surface);
        v228 = v649;
        v229 = swift_isUniquelyReferenced_nonNull_native();
        v652 = v228;
        v230 = sub_23A9EDD28(v127);
        v232 = v228[2];
        v233 = (v231 & 1) == 0;
        v148 = __OFADD__(v232, v233);
        v234 = v232 + v233;
        if (v148)
        {
          goto LABEL_148;
        }

        v127 = v231;
        if (v649[3] >= v234)
        {
          if ((v229 & 1) == 0)
          {
            v243 = v230;
            sub_23A90F5DC();
            v230 = v243;
          }
        }

        else
        {
          sub_23A90A908(v234, v229);
          v230 = sub_23A9EDD28(v640);
          if ((v127 & 1) != (v235 & 1))
          {
            goto LABEL_383;
          }
        }

        v649 = v652;
        if (v127)
        {
          sub_23A9E355C(v634, v649[7] + v230 * v225, type metadata accessor for CapturedRoom.Surface);
          (*v643)(v640, v648);
        }

        else
        {
          v236 = v222;
          v3 = v221;
          v237 = v648;
          v238 = v649;
          v649[(v230 >> 6) + 8] |= 1 << v230;
          v239 = v645;
          v127 = v230;
          v240 = v640;
          v227(v238[6] + *(v645 + 72) * v230, v640, v237);
          sub_23A9E35C4(v634, v238[7] + v127 * v225, type metadata accessor for CapturedRoom.Surface);
          (*(v239 + 8))(v240, v237);
          v241 = v238[2];
          v148 = __OFADD__(v241, 1);
          v242 = v241 + 1;
          if (v148)
          {
            goto LABEL_153;
          }

          v649[2] = v242;
          v221 = v3;
          v222 = v236;
          v224 = v641;
          v3 = v642;
        }

        if (v222 == ++v223)
        {
          goto LABEL_74;
        }
      }

      goto LABEL_147;
    }

LABEL_74:
    v244 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
    v245 = v616;
    swift_beginAccess();
    v636 = v244;
    v246 = *(v245 + v244);
    v127 = v246 + 64;
    v247 = 1 << *(v246 + 32);
    v248 = -1;
    if (v247 < 64)
    {
      v248 = ~(-1 << v247);
    }

    v249 = v248 & *(v246 + 64);
    v3 = (v247 + 63) >> 6;
    v642 = (v645 + 16);
    v643 = v645 + 32;
    v637 = v246;
    v638 = v595 + 48;
    v640 = (v595 + 56);
    v641 = v647 + 56;
    v646 = (v645 + 8);

    v250 = 0;
    v635 = MEMORY[0x277D84F98];
    v251 = v626;
LABEL_77:
    v252 = v250;
    v253 = v629;
    if (v249)
    {
      while (1)
      {
        v254 = v252;
LABEL_86:
        v257 = __clz(__rbit64(v249));
        v249 &= v249 - 1;
        v258 = v257 | (v254 << 6);
        v259 = v637;
        v260 = v645;
        v261 = v625;
        v262 = v648;
        (*(v645 + 16))(v625, *(v637 + 48) + *(v645 + 72) * v258, v648);
        v263 = *(v259 + 56) + *(v647 + 72) * v258;
        v264 = v628;
        sub_23A9E3260(v263, v628, type metadata accessor for CapturedRoom.Surface);
        v265 = v639;
        v266 = *(v639 + 48);
        v267 = *(v260 + 32);
        v251 = v626;
        v267(v626, v261, v262);
        sub_23A9E35C4(v264, v251 + v266, type metadata accessor for CapturedRoom.Surface);
        v268 = 0;
        v250 = v254;
        v253 = v629;
        v256 = v633;
LABEL_87:
        (*v640)(v251, v268, 1, v265);
        sub_23A930208(v251, v253, &qword_27DFB13D8, &qword_23AA1B268);
        if ((*v638)(v253, 1, v265) == 1)
        {
          break;
        }

        v269 = *(v265 + 48);
        (*v643)(v256, v253, v648);
        sub_23A9E35C4(v253 + v269, v644, type metadata accessor for CapturedRoom.Surface);
        if (!v649[2] || (v270 = sub_23A9EDD28(v256), (v271 & 1) == 0))
        {
          v275 = v630;
          (*v641)(v630, 1, 1, v632);
          sub_23A8D50D0(v275, &qword_27DFB13D0, &qword_23AA1B260);
          v276 = *v642;
          v277 = v256;
          v278 = v598;
          (*v642)(v598, v277, v648);
          sub_23A9E3260(v644, v597, type metadata accessor for CapturedRoom.Surface);
          v279 = v635;
          v280 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v279;
          v281 = sub_23A9EDD28(v278);
          v283 = *(v279 + 16);
          v284 = (v282 & 1) == 0;
          v148 = __OFADD__(v283, v284);
          v285 = v283 + v284;
          if (v148)
          {
            goto LABEL_156;
          }

          v286 = v282;
          if (*(v279 + 24) >= v285)
          {
            if ((v280 & 1) == 0)
            {
              v298 = v281;
              sub_23A90F5DC();
              v281 = v298;
            }
          }

          else
          {
            sub_23A90A908(v285, v280);
            v281 = sub_23A9EDD28(v598);
            if ((v286 & 1) != (v287 & 1))
            {
              goto LABEL_383;
            }
          }

          v288 = v651;
          v635 = v651;
          if (v286)
          {
            sub_23A9E355C(v597, *(v651 + 56) + *(v647 + 72) * v281, type metadata accessor for CapturedRoom.Surface);
            v289 = *v646;
            v290 = v648;
            (*v646)(v598, v648);
            sub_23A9E2ED0(v644, type metadata accessor for CapturedRoom.Surface);
            v289(v633, v290);
          }

          else
          {
            *(v651 + 8 * (v281 >> 6) + 64) |= 1 << v281;
            v291 = v645;
            v292 = v288[6] + *(v645 + 72) * v281;
            v634 = v281;
            v293 = v598;
            v294 = v648;
            v276(v292, v598, v648);
            sub_23A9E35C4(v597, v288[7] + *(v647 + 72) * v634, type metadata accessor for CapturedRoom.Surface);
            v295 = *(v291 + 8);
            v295(v293, v294);
            sub_23A9E2ED0(v644, type metadata accessor for CapturedRoom.Surface);
            v295(v633, v294);
            v296 = v288[2];
            v148 = __OFADD__(v296, 1);
            v297 = v296 + 1;
            if (v148)
            {
              goto LABEL_157;
            }

            v288[2] = v297;
          }

          goto LABEL_77;
        }

        v272 = v647;
        v273 = v256;
        v274 = v630;
        sub_23A9E3260(v649[7] + *(v647 + 72) * v270, v630, type metadata accessor for CapturedRoom.Surface);
        (*(v272 + 56))(v274, 0, 1, v632);
        sub_23A9E2ED0(v644, type metadata accessor for CapturedRoom.Surface);
        (*v646)(v273, v648);
        sub_23A8D50D0(v274, &qword_27DFB13D0, &qword_23AA1B260);
        v252 = v250;
        if (!v249)
        {
          goto LABEL_79;
        }
      }

      if (*(v616 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 3) != 1)
      {
        v643 = MEMORY[0x277D84F98];
        v644 = MEMORY[0x277D84F98];
        goto LABEL_161;
      }

      v299 = v599;
      v300 = [v599 walls];
      sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
      v301 = sub_23AA0D2F4();

      v302 = [v299 curvedWalls];
      sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
      v303 = sub_23AA0D2F4();

      v304 = sub_23A9FC7E8(v303);

      v651 = v301;
      sub_23A912898(v304);
      v127 = v651;
      v3 = v651 & 0xFFFFFFFFFFFFFF8;
      if (v651 >> 62)
      {
        goto LABEL_158;
      }

      v305 = *((v651 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v305)
      {
        goto LABEL_106;
      }

      goto LABEL_159;
    }

LABEL_79:
    if (v3 <= v252 + 1)
    {
      v255 = v252 + 1;
    }

    else
    {
      v255 = v3;
    }

    v250 = v255 - 1;
    v256 = v633;
    while (1)
    {
      v254 = v252 + 1;
      if (__OFADD__(v252, 1))
      {
        break;
      }

      if (v254 >= v3)
      {
        v249 = 0;
        v268 = 1;
        v265 = v639;
        goto LABEL_87;
      }

      v249 = *(v127 + 8 * v254);
      ++v252;
      if (v249)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_139;
  }

  v200 = 0;
  v3 = *(v632 + 44);
  v201 = v198 + ((*(v647 + 80) + 32) & ~*(v647 + 80));
  v646 = (v645 + 16);
  v642 = v3;
  v643 = v645 + 8;
  v638 = v201;
  while (v200 < *(v198 + 16))
  {
    v202 = *(v647 + 72);
    v203 = v618;
    sub_23A9E3260(v201 + v202 * v200, v618, type metadata accessor for CapturedRoom.Surface);
    v204 = *v646;
    v127 = v641;
    (*v646)(v641, v203 + v3, v648);
    sub_23A9E35C4(v203, v635, type metadata accessor for CapturedRoom.Surface);
    v205 = v649;
    v206 = swift_isUniquelyReferenced_nonNull_native();
    v652 = v205;
    v207 = sub_23A9EDD28(v127);
    v209 = v205[2];
    v210 = (v208 & 1) == 0;
    v148 = __OFADD__(v209, v210);
    v211 = v209 + v210;
    if (v148)
    {
      goto LABEL_146;
    }

    v127 = v208;
    if (v649[3] >= v211)
    {
      if ((v206 & 1) == 0)
      {
        v220 = v207;
        sub_23A90F5DC();
        v207 = v220;
      }
    }

    else
    {
      sub_23A90A908(v211, v206);
      v207 = sub_23A9EDD28(v641);
      if ((v127 & 1) != (v212 & 1))
      {
        goto LABEL_383;
      }
    }

    v649 = v652;
    if (v127)
    {
      sub_23A9E355C(v635, v649[7] + v207 * v202, type metadata accessor for CapturedRoom.Surface);
      (*v643)(v641, v648);
    }

    else
    {
      v213 = v199;
      v3 = v198;
      v214 = v648;
      v215 = v649;
      v649[(v207 >> 6) + 8] |= 1 << v207;
      v216 = v645;
      v127 = v207;
      v217 = v641;
      v204(v215[6] + *(v645 + 72) * v207, v641, v214);
      sub_23A9E35C4(v635, v215[7] + v127 * v202, type metadata accessor for CapturedRoom.Surface);
      (*(v216 + 8))(v217, v214);
      v218 = v215[2];
      v148 = __OFADD__(v218, 1);
      v219 = v218 + 1;
      if (v148)
      {
        goto LABEL_152;
      }

      v649[2] = v219;
      v198 = v3;
      v199 = v213;
      v3 = v642;
      v201 = v638;
    }

    if (v199 == ++v200)
    {
      goto LABEL_60;
    }
  }

LABEL_145:
  __break(1u);
LABEL_146:
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
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    v305 = sub_23AA0D7F4();
    if (!v305)
    {
      break;
    }

LABEL_106:
    v306 = 0;
    v643 = MEMORY[0x277D84F98];
    v644 = MEMORY[0x277D84F98];
LABEL_107:
    v307 = v306;
    while (1)
    {
      if ((v127 & 0xC000000000000001) != 0)
      {
        v308 = MEMORY[0x23EE90360](v307, v127);
      }

      else
      {
        if (v307 >= *(v3 + 16))
        {
          goto LABEL_155;
        }

        v308 = *(v127 + 8 * v307 + 32);
      }

      v309 = v308;
      v306 = v307 + 1;
      if (__OFADD__(v307, 1))
      {
        break;
      }

      v310 = [v308 identifier];
      if (!v310)
      {
        goto LABEL_370;
      }

      v311 = v310;
      v312 = v607;
      sub_23AA0C0A4();

      if (v649[2])
      {
        v313 = sub_23A9EDD28(v312);
        if (v314)
        {
          v315 = *(v647 + 72);
          sub_23A9E3260(v649[7] + v315 * v313, v588, type metadata accessor for CapturedRoom.Surface);
          v316 = *v646;
          (*v646)(v312, v648);
          if ([v309 individualUpdate])
          {
            if ([v309 individualUpdate] == 1 || (v590 & 1) != 0)
            {
              v640 = v316;
              v330 = [v309 identifier];
              if (!v330)
              {
                goto LABEL_382;
              }

              v331 = v330;
              v332 = v577;
              sub_23AA0C0A4();

              v333 = v588;
              v334 = v628;
              sub_23A9E3260(v588, v628, type metadata accessor for CapturedRoom.Surface);
              v335 = v643;
              v336 = swift_isUniquelyReferenced_nonNull_native();
              v651 = v335;
              sub_23A9DB384(v334, v332, v336);

              (v640)(v332, v648);
              sub_23A9E2ED0(v333, type metadata accessor for CapturedRoom.Surface);
              v643 = v651;
            }

            else
            {
              sub_23A9E2ED0(v588, type metadata accessor for CapturedRoom.Surface);
            }
          }

          else
          {
            v640 = v316;
            v318 = [v309 identifier];
            if (!v318)
            {
              goto LABEL_381;
            }

            v319 = v318;
            v320 = v587;
            sub_23AA0C0A4();

            sub_23A9E3260(v588, v586, type metadata accessor for CapturedRoom.Surface);
            v321 = v644;
            v322 = swift_isUniquelyReferenced_nonNull_native();
            v651 = v321;
            v323 = sub_23A9EDD28(v320);
            v325 = *(v321 + 16);
            v326 = (v324 & 1) == 0;
            v148 = __OFADD__(v325, v326);
            v327 = v325 + v326;
            if (v148)
            {
              __break(1u);
              goto LABEL_364;
            }

            if (*(v321 + 24) >= v327)
            {
              if ((v322 & 1) == 0)
              {
                v344 = v323;
                v345 = v324;
                sub_23A90F5DC();
                v324 = v345;
                v323 = v344;
              }
            }

            else
            {
              v328 = v324;
              sub_23A90A908(v327, v322);
              v323 = sub_23A9EDD28(v587);
              if ((v328 & 1) != (v329 & 1))
              {
                goto LABEL_383;
              }

              v324 = v328;
            }

            v337 = v651;
            v644 = v651;
            if (v324)
            {
              sub_23A9E355C(v586, *(v651 + 56) + v323 * v315, type metadata accessor for CapturedRoom.Surface);

              (v640)(v587, v648);
              sub_23A9E2ED0(v588, type metadata accessor for CapturedRoom.Surface);
            }

            else
            {
              *(v651 + 8 * (v323 >> 6) + 64) |= 1 << v323;
              v338 = v337[6] + *(v645 + 72) * v323;
              v339 = *(v645 + 16);
              v638 = v323;
              v340 = v587;
              v341 = v648;
              v339(v338, v587, v648);
              sub_23A9E35C4(v586, v337[7] + v638 * v315, type metadata accessor for CapturedRoom.Surface);

              (v640)(v340, v341);
              sub_23A9E2ED0(v588, type metadata accessor for CapturedRoom.Surface);
              v342 = v337[2];
              v148 = __OFADD__(v342, 1);
              v343 = v342 + 1;
              if (v148)
              {
                goto LABEL_366;
              }

              v337[2] = v343;
            }
          }

          if (v306 != v305)
          {
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

      (*v646)(v312, v648);

      ++v307;
      if (v306 == v305)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_159:
  v643 = MEMORY[0x277D84F98];
  v644 = MEMORY[0x277D84F98];
LABEL_160:

LABEL_161:
  v346 = v599;
  v347 = [v599 doors];
  v640 = sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v348 = sub_23AA0D2F4();

  v349 = [v346 curvedDoors];
  v638 = sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
  v350 = sub_23AA0D2F4();

  v351 = sub_23A9FC7E8(v350);

  v651 = v348;
  sub_23A912898(v351);
  v352 = v651;
  v353 = v651 & 0xFFFFFFFFFFFFFF8;
  if (v651 >> 62)
  {
    goto LABEL_353;
  }

  v354 = *((v651 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v354)
  {
    goto LABEL_163;
  }

LABEL_185:
  while (2)
  {

    v378 = v599;
    v379 = [v599 windows];
    v380 = sub_23AA0D2F4();

    v381 = [v378 curvedWindows];
    v382 = sub_23AA0D2F4();

    v383 = sub_23A9FC7E8(v382);

    v651 = v380;
    sub_23A912898(v383);
    v384 = v651;
    if (v651 >> 62)
    {
      v352 = sub_23AA0D7F4();
      if (!v352)
      {
        goto LABEL_209;
      }
    }

    else
    {
      v352 = *((v651 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v352)
      {
        goto LABEL_209;
      }
    }

    v353 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v385 = v353;
          while (1)
          {
            if ((v384 & 0xC000000000000001) != 0)
            {
              v386 = MEMORY[0x23EE90360](v385, v384);
            }

            else
            {
              if (v385 >= *((v384 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_342;
              }

              v386 = *(v384 + 8 * v385 + 32);
            }

            v387 = v386;
            v353 = v385 + 1;
            if (__OFADD__(v385, 1))
            {
              goto LABEL_341;
            }

            v388 = [v386 identifier];
            if (!v388)
            {
              goto LABEL_365;
            }

            v389 = v388;
            v390 = v614;
            sub_23AA0C0A4();

            if (v649[2])
            {
              v391 = sub_23A9EDD28(v390);
              if (v392)
              {
                break;
              }
            }

            (*v646)(v390, v648);

            ++v385;
            if (v353 == v352)
            {
              goto LABEL_209;
            }
          }

          sub_23A9E3260(v649[7] + *(v647 + 72) * v391, v593, type metadata accessor for CapturedRoom.Surface);
          v393 = *v646;
          (*v646)(v390, v648);
          if ([v387 individualUpdate])
          {
            break;
          }

          v395 = [v387 identifier];
          if (!v395)
          {
            goto LABEL_372;
          }

          v396 = v395;
          v397 = v584;
          sub_23AA0C0A4();

          v398 = v628;
          sub_23A9E3260(v593, v628, type metadata accessor for CapturedRoom.Surface);
          v399 = v644;
          v400 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v399;
          sub_23A9DB384(v398, v397, v400);

          v393(v397, v648);
          sub_23A9E2ED0(v593, type metadata accessor for CapturedRoom.Surface);
          v644 = v651;
          if (v353 == v352)
          {
            goto LABEL_209;
          }
        }

        if ([v387 individualUpdate] == 1 || (v590 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v593, type metadata accessor for CapturedRoom.Surface);

        if (v353 == v352)
        {
          goto LABEL_209;
        }
      }

      v401 = [v387 identifier];
      if (!v401)
      {
        goto LABEL_377;
      }

      v402 = v401;
      v403 = v580;
      sub_23AA0C0A4();

      v404 = v628;
      sub_23A9E3260(v593, v628, type metadata accessor for CapturedRoom.Surface);
      v405 = v643;
      v406 = swift_isUniquelyReferenced_nonNull_native();
      v651 = v405;
      sub_23A9DB384(v404, v403, v406);

      v393(v403, v648);
      sub_23A9E2ED0(v593, type metadata accessor for CapturedRoom.Surface);
      v643 = v651;
    }

    while (v353 != v352);
LABEL_209:

    v407 = [v599 opendoors];
    v408 = sub_23AA0D2F4();

    if (v408 >> 62)
    {
      v352 = sub_23AA0D7F4();
      if (!v352)
      {
        goto LABEL_233;
      }
    }

    else
    {
      v352 = *((v408 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v352)
      {
        goto LABEL_233;
      }
    }

    v353 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v409 = v353;
          while (1)
          {
            if ((v408 & 0xC000000000000001) != 0)
            {
              v410 = MEMORY[0x23EE90360](v409, v408);
            }

            else
            {
              if (v409 >= *((v408 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_344;
              }

              v410 = *(v408 + 8 * v409 + 32);
            }

            v411 = v410;
            v353 = v409 + 1;
            if (__OFADD__(v409, 1))
            {
              goto LABEL_343;
            }

            v412 = [v410 identifier];
            if (!v412)
            {
              goto LABEL_367;
            }

            v413 = v412;
            v414 = v613;
            sub_23AA0C0A4();

            if (v649[2])
            {
              v415 = sub_23A9EDD28(v414);
              if (v416)
              {
                break;
              }
            }

            (*v646)(v414, v648);

            ++v409;
            if (v353 == v352)
            {
              goto LABEL_233;
            }
          }

          sub_23A9E3260(v649[7] + *(v647 + 72) * v415, v592, type metadata accessor for CapturedRoom.Surface);
          v417 = *v646;
          (*v646)(v414, v648);
          if ([v411 individualUpdate])
          {
            break;
          }

          v419 = [v411 identifier];
          if (!v419)
          {
            goto LABEL_373;
          }

          v420 = v419;
          v421 = v583;
          sub_23AA0C0A4();

          v422 = v628;
          sub_23A9E3260(v592, v628, type metadata accessor for CapturedRoom.Surface);
          v423 = v644;
          v424 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v423;
          sub_23A9DB384(v422, v421, v424);

          v417(v421, v648);
          sub_23A9E2ED0(v592, type metadata accessor for CapturedRoom.Surface);
          v644 = v651;
          if (v353 == v352)
          {
            goto LABEL_233;
          }
        }

        if ([v411 individualUpdate] == 1 || (v590 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v592, type metadata accessor for CapturedRoom.Surface);

        if (v353 == v352)
        {
          goto LABEL_233;
        }
      }

      v425 = [v411 identifier];
      if (!v425)
      {
        goto LABEL_378;
      }

      v426 = v425;
      v427 = v579;
      sub_23AA0C0A4();

      v428 = v628;
      sub_23A9E3260(v592, v628, type metadata accessor for CapturedRoom.Surface);
      v429 = v643;
      v430 = swift_isUniquelyReferenced_nonNull_native();
      v651 = v429;
      sub_23A9DB384(v428, v427, v430);

      v417(v427, v648);
      sub_23A9E2ED0(v592, type metadata accessor for CapturedRoom.Surface);
      v643 = v651;
    }

    while (v353 != v352);
LABEL_233:

    v431 = [v599 openings];
    v432 = sub_23AA0D2F4();

    if (v432 >> 62)
    {
      v352 = sub_23AA0D7F4();
      if (!v352)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v352 = *((v432 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v352)
      {
        goto LABEL_257;
      }
    }

    v353 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v433 = v353;
          while (1)
          {
            if ((v432 & 0xC000000000000001) != 0)
            {
              v434 = MEMORY[0x23EE90360](v433, v432);
            }

            else
            {
              if (v433 >= *((v432 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_346;
              }

              v434 = *(v432 + 8 * v433 + 32);
            }

            v435 = v434;
            v353 = v433 + 1;
            if (__OFADD__(v433, 1))
            {
              goto LABEL_345;
            }

            v436 = [v434 identifier];
            if (!v436)
            {
              goto LABEL_368;
            }

            v437 = v436;
            v438 = v612;
            sub_23AA0C0A4();

            if (v649[2])
            {
              v439 = sub_23A9EDD28(v438);
              if (v440)
              {
                break;
              }
            }

            (*v646)(v438, v648);

            ++v433;
            if (v353 == v352)
            {
              goto LABEL_257;
            }
          }

          sub_23A9E3260(v649[7] + *(v647 + 72) * v439, v591, type metadata accessor for CapturedRoom.Surface);
          v441 = *v646;
          (*v646)(v438, v648);
          if ([v435 individualUpdate])
          {
            break;
          }

          v443 = [v435 identifier];
          if (!v443)
          {
            goto LABEL_374;
          }

          v444 = v443;
          v445 = v582;
          sub_23AA0C0A4();

          v446 = v628;
          sub_23A9E3260(v591, v628, type metadata accessor for CapturedRoom.Surface);
          v447 = v644;
          v448 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v447;
          sub_23A9DB384(v446, v445, v448);

          v441(v445, v648);
          sub_23A9E2ED0(v591, type metadata accessor for CapturedRoom.Surface);
          v644 = v651;
          if (v353 == v352)
          {
            goto LABEL_257;
          }
        }

        if ([v435 individualUpdate] == 1 || (v590 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v591, type metadata accessor for CapturedRoom.Surface);

        if (v353 == v352)
        {
          goto LABEL_257;
        }
      }

      v449 = [v435 identifier];
      if (!v449)
      {
        goto LABEL_379;
      }

      v450 = v449;
      v451 = v578;
      sub_23AA0C0A4();

      v452 = v628;
      sub_23A9E3260(v591, v628, type metadata accessor for CapturedRoom.Surface);
      v453 = v643;
      v454 = swift_isUniquelyReferenced_nonNull_native();
      v651 = v453;
      sub_23A9DB384(v452, v451, v454);

      v441(v451, v648);
      sub_23A9E2ED0(v591, type metadata accessor for CapturedRoom.Surface);
      v643 = v651;
    }

    while (v353 != v352);
LABEL_257:

    v455 = [v599 floors];
    v456 = sub_23AA0D2F4();

    if (v456 >> 62)
    {
      v457 = sub_23AA0D7F4();
      if (v457)
      {
LABEL_259:
        v353 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              v458 = v353;
              while (1)
              {
                if ((v456 & 0xC000000000000001) != 0)
                {
                  v459 = MEMORY[0x23EE90360](v458, v456);
                }

                else
                {
                  if (v458 >= *((v456 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_348;
                  }

                  v459 = *(v456 + 8 * v458 + 32);
                }

                v352 = v459;
                v353 = v458 + 1;
                if (__OFADD__(v458, 1))
                {
                  goto LABEL_347;
                }

                v460 = [v459 identifier];
                if (!v460)
                {
                  goto LABEL_369;
                }

                v461 = v460;
                v462 = v611;
                sub_23AA0C0A4();

                if (v649[2])
                {
                  v463 = sub_23A9EDD28(v462);
                  if (v464)
                  {
                    break;
                  }
                }

                (*v646)(v462, v648);

                ++v458;
                if (v353 == v457)
                {
                  goto LABEL_281;
                }
              }

              sub_23A9E3260(v649[7] + *(v647 + 72) * v463, v589, type metadata accessor for CapturedRoom.Surface);
              v465 = *v646;
              (*v646)(v462, v648);
              if ([v352 individualUpdate])
              {
                break;
              }

              v467 = [v352 identifier];
              if (!v467)
              {
                goto LABEL_375;
              }

              v468 = v467;
              v469 = v576;
              sub_23AA0C0A4();

              v470 = v628;
              sub_23A9E3260(v589, v628, type metadata accessor for CapturedRoom.Surface);
              v471 = v644;
              v472 = swift_isUniquelyReferenced_nonNull_native();
              v651 = v471;
              sub_23A9DB384(v470, v469, v472);

              v465(v469, v648);
              sub_23A9E2ED0(v589, type metadata accessor for CapturedRoom.Surface);
              v644 = v651;
              if (v353 == v457)
              {
                goto LABEL_281;
              }
            }

            if ([v352 individualUpdate] == 1 || (v590 & 1) != 0)
            {
              break;
            }

            sub_23A9E2ED0(v589, type metadata accessor for CapturedRoom.Surface);

            if (v353 == v457)
            {
              goto LABEL_281;
            }
          }

          v473 = [v352 identifier];
          if (!v473)
          {
            goto LABEL_380;
          }

          v474 = v473;
          v475 = v575;
          sub_23AA0C0A4();

          v476 = v628;
          sub_23A9E3260(v589, v628, type metadata accessor for CapturedRoom.Surface);
          v477 = v643;
          v478 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v477;
          sub_23A9DB384(v476, v475, v478);

          v465(v475, v648);
          sub_23A9E2ED0(v589, type metadata accessor for CapturedRoom.Surface);
          v643 = v651;
        }

        while (v353 != v457);
      }
    }

    else
    {
      v457 = *((v456 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v457)
      {
        goto LABEL_259;
      }
    }

LABEL_281:

    v479 = v635 + 64;
    v480 = 1 << *(v635 + 32);
    v481 = -1;
    if (v480 < 64)
    {
      v481 = ~(-1 << v480);
    }

    v482 = v481 & *(v635 + 64);
    v483 = (v480 + 63) >> 6;

    v353 = 0;
    while (v482)
    {
LABEL_291:
      v487 = __clz(__rbit64(v482)) | (v353 << 6);
      v488 = v635;
      v489 = *(v645 + 72);
      v490 = v606;
      (*(v645 + 16))(v606, *(v635 + 48) + v489 * v487, v648);
      v491 = *(v488 + 56);
      v492 = *(v647 + 72);
      sub_23A9E3260(v491 + v492 * v487, v490 + *(v639 + 48), type metadata accessor for CapturedRoom.Surface);
      v493 = v616;
      v352 = v636;
      swift_beginAccess();
      v494 = sub_23A9EDD28(v490);
      if (v495)
      {
        v496 = v494;
        v497 = swift_isUniquelyReferenced_nonNull_native();
        v498 = *(v493 + v352);
        v650 = v498;
        *(v493 + v352) = 0x8000000000000000;
        if (!v497)
        {
          sub_23A90F5DC();
          v498 = v650;
        }

        (*v646)(*(v498 + 48) + v496 * v489, v648);
        v499 = *(v498 + 56) + v496 * v492;
        v485 = v596;
        sub_23A9E35C4(v499, v596, type metadata accessor for CapturedRoom.Surface);
        sub_23A90C62C(v496, v498);
        *(v493 + v352) = v498;

        v484 = 0;
      }

      else
      {
        v484 = 1;
        v485 = v596;
      }

      v482 &= v482 - 1;
      (*v641)(v485, v484, 1, v632);
      sub_23A8D50D0(v485, &qword_27DFB13D0, &qword_23AA1B260);
      swift_endAccess();
      sub_23A8D50D0(v606, &qword_27DFB13C8, &qword_23AA1B258);
    }

    while (1)
    {
      v486 = v353 + 1;
      if (__OFADD__(v353, 1))
      {
        __break(1u);
LABEL_337:
        __break(1u);
        goto LABEL_338;
      }

      if (v486 >= v483)
      {
        break;
      }

      v482 = *(v479 + 8 * v486);
      ++v353;
      if (v482)
      {
        v353 = v486;
        goto LABEL_291;
      }
    }

    v500 = (v644 + 64);
    v501 = 1 << *(v644 + 32);
    v502 = -1;
    if (v501 < 64)
    {
      v502 = ~(-1 << v501);
    }

    v503 = v502 & *(v644 + 64);
    v504 = (v501 + 63) >> 6;

    v353 = 0;
    v640 = v500;
    v638 = v504;
    v505 = v610;
    while (v503)
    {
LABEL_305:
      v510 = __clz(__rbit64(v503)) | (v353 << 6);
      v511 = v644;
      v512 = *(v644 + 48);
      v641 = *(v645 + 72);
      v513 = *(v645 + 16);
      v514 = v603;
      v513(v603, v512 + v641 * v510, v648);
      v515 = *(v647 + 72);
      v516 = *(v511 + 56) + v515 * v510;
      v517 = v639;
      sub_23A9E3260(v516, v514 + *(v639 + 48), type metadata accessor for CapturedRoom.Surface);
      sub_23A8D5194(v514, v505, &qword_27DFB13C8, &qword_23AA1B258);
      v518 = v514;
      v352 = v604;
      sub_23A8D5194(v518, v604, &qword_27DFB13C8, &qword_23AA1B258);
      v519 = *(v517 + 48);
      v520 = v616;
      v521 = v636;
      swift_beginAccess();
      sub_23A9E35C4(v352 + v519, v605, type metadata accessor for CapturedRoom.Surface);
      v522 = swift_isUniquelyReferenced_nonNull_native();
      v650 = *(v520 + v521);
      v523 = v650;
      *(v520 + v521) = 0x8000000000000000;
      v524 = sub_23A9EDD28(v505);
      v526 = v523[2];
      v527 = (v525 & 1) == 0;
      v148 = __OFADD__(v526, v527);
      v528 = v526 + v527;
      if (v148)
      {
        goto LABEL_349;
      }

      v529 = v525;
      if (v523[3] < v528)
      {
        sub_23A90A908(v528, v522);
        v524 = sub_23A9EDD28(v610);
        if ((v529 & 1) != (v530 & 1))
        {
          goto LABEL_383;
        }

LABEL_310:
        v531 = v650;
        if (v529)
        {
          goto LABEL_298;
        }

        goto LABEL_311;
      }

      if (v522)
      {
        goto LABEL_310;
      }

      v534 = v524;
      sub_23A90F5DC();
      v524 = v534;
      v531 = v650;
      if (v529)
      {
LABEL_298:
        sub_23A9E355C(v605, v531[7] + v524 * v515, type metadata accessor for CapturedRoom.Surface);
        goto LABEL_299;
      }

LABEL_311:
      v531[(v524 >> 6) + 8] |= 1 << v524;
      v352 = v524;
      v513(v531[6] + v524 * v641, v610, v648);
      sub_23A9E35C4(v605, v531[7] + v352 * v515, type metadata accessor for CapturedRoom.Surface);
      v532 = v531[2];
      v148 = __OFADD__(v532, 1);
      v533 = v532 + 1;
      if (v148)
      {
        goto LABEL_351;
      }

      v531[2] = v533;
LABEL_299:
      v503 &= v503 - 1;
      v506 = *(v639 + 48);
      v507 = *v646;
      v508 = v610;
      v352 = v648;
      (*v646)(v610, v648);
      *(v616 + v636) = v531;

      swift_endAccess();
      sub_23A8D50D0(v603, &qword_27DFB13C8, &qword_23AA1B258);
      v507(v604, v352);
      sub_23A9E2ED0(v508 + v506, type metadata accessor for CapturedRoom.Surface);
      v500 = v640;
      v504 = v638;
    }

    while (1)
    {
      v509 = v353 + 1;
      if (__OFADD__(v353, 1))
      {
        goto LABEL_337;
      }

      if (v509 >= v504)
      {
        break;
      }

      v503 = v500[v509];
      ++v353;
      if (v503)
      {
        v353 = v509;
        goto LABEL_305;
      }
    }

    v535 = (v643 + 64);
    v536 = 1 << *(v643 + 32);
    v537 = -1;
    if (v536 < 64)
    {
      v537 = ~(-1 << v536);
    }

    v538 = v537 & *(v643 + 64);
    v539 = (v536 + 63) >> 6;

    v353 = 0;
    v640 = v535;
    v638 = v539;
    v540 = v609;
    while (2)
    {
      if (v538)
      {
LABEL_325:
        v545 = __clz(__rbit64(v538)) | (v353 << 6);
        v546 = v643;
        v547 = *(v643 + 48);
        v641 = *(v645 + 72);
        v548 = *(v645 + 16);
        v549 = v600;
        v548(v600, v547 + v641 * v545, v648);
        v550 = *(v647 + 72);
        v551 = *(v546 + 56) + v550 * v545;
        v552 = v639;
        sub_23A9E3260(v551, v549 + *(v639 + 48), type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v549, v540, &qword_27DFB13C8, &qword_23AA1B258);
        v553 = v549;
        v352 = v601;
        sub_23A8D5194(v553, v601, &qword_27DFB13C8, &qword_23AA1B258);
        v554 = *(v552 + 48);
        v555 = v616;
        v556 = v636;
        swift_beginAccess();
        sub_23A9E35C4(v352 + v554, v602, type metadata accessor for CapturedRoom.Surface);
        v557 = swift_isUniquelyReferenced_nonNull_native();
        v650 = *(v555 + v556);
        v558 = v650;
        *(v555 + v556) = 0x8000000000000000;
        v559 = sub_23A9EDD28(v540);
        v561 = v558[2];
        v562 = (v560 & 1) == 0;
        v148 = __OFADD__(v561, v562);
        v563 = v561 + v562;
        if (v148)
        {
          goto LABEL_350;
        }

        v564 = v560;
        if (v558[3] >= v563)
        {
          if ((v557 & 1) == 0)
          {
            v569 = v559;
            sub_23A90F5DC();
            v559 = v569;
            v566 = v650;
            if ((v564 & 1) == 0)
            {
              goto LABEL_331;
            }

            goto LABEL_318;
          }
        }

        else
        {
          sub_23A90A908(v563, v557);
          v559 = sub_23A9EDD28(v609);
          if ((v564 & 1) != (v565 & 1))
          {
            goto LABEL_383;
          }
        }

        v566 = v650;
        if ((v564 & 1) == 0)
        {
LABEL_331:
          v566[(v559 >> 6) + 8] |= 1 << v559;
          v352 = v559;
          v548(v566[6] + v559 * v641, v609, v648);
          sub_23A9E35C4(v602, v566[7] + v352 * v550, type metadata accessor for CapturedRoom.Surface);
          v567 = v566[2];
          v148 = __OFADD__(v567, 1);
          v568 = v567 + 1;
          if (v148)
          {
            goto LABEL_352;
          }

          v566[2] = v568;
          goto LABEL_319;
        }

LABEL_318:
        sub_23A9E355C(v602, v566[7] + v559 * v550, type metadata accessor for CapturedRoom.Surface);
LABEL_319:
        v538 &= v538 - 1;
        v541 = *(v639 + 48);
        v542 = *v646;
        v352 = v609;
        v543 = v648;
        (*v646)(v609, v648);
        *(v616 + v636) = v566;

        swift_endAccess();
        sub_23A8D50D0(v600, &qword_27DFB13C8, &qword_23AA1B258);
        v542(v601, v543);
        sub_23A9E2ED0(v352 + v541, type metadata accessor for CapturedRoom.Surface);
        v535 = v640;
        v539 = v638;
        continue;
      }

      break;
    }

    while (1)
    {
      v544 = v353 + 1;
      if (__OFADD__(v353, 1))
      {
        break;
      }

      if (v544 >= v539)
      {

        v571 = sub_23A9C8C28(v570, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        sub_23A9C8C28(v572, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        sub_23A9C8C28(v573, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        return v571;
      }

      v538 = v535[v544];
      ++v353;
      if (v538)
      {
        v353 = v544;
        goto LABEL_325;
      }
    }

LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    v354 = sub_23AA0D7F4();
    if (!v354)
    {
      continue;
    }

    break;
  }

LABEL_163:
  v355 = 0;
LABEL_164:
  v356 = v355;
  while (1)
  {
    if ((v352 & 0xC000000000000001) != 0)
    {
      v357 = MEMORY[0x23EE90360](v356, v352);
    }

    else
    {
      if (v356 >= *(v353 + 16))
      {
        goto LABEL_340;
      }

      v357 = *(v352 + 8 * v356 + 32);
    }

    v358 = v357;
    v355 = v356 + 1;
    if (__OFADD__(v356, 1))
    {
      goto LABEL_339;
    }

    v359 = [v357 identifier];
    if (!v359)
    {
      break;
    }

    v360 = v359;
    v361 = v615;
    sub_23AA0C0A4();

    if (v649[2])
    {
      v362 = sub_23A9EDD28(v361);
      if (v363)
      {
        sub_23A9E3260(v649[7] + *(v647 + 72) * v362, v594, type metadata accessor for CapturedRoom.Surface);
        v364 = *v646;
        (*v646)(v361, v648);
        if ([v358 individualUpdate])
        {
          if ([v358 individualUpdate] == 1 || (v590 & 1) != 0)
          {
            v372 = [v358 identifier];
            if (!v372)
            {
              goto LABEL_376;
            }

            v373 = v372;
            v374 = v581;
            sub_23AA0C0A4();

            v375 = v628;
            sub_23A9E3260(v594, v628, type metadata accessor for CapturedRoom.Surface);
            v376 = v643;
            v377 = swift_isUniquelyReferenced_nonNull_native();
            v651 = v376;
            sub_23A9DB384(v375, v374, v377);

            v364(v374, v648);
            sub_23A9E2ED0(v594, type metadata accessor for CapturedRoom.Surface);
            v643 = v651;
            if (v355 == v354)
            {
              goto LABEL_185;
            }
          }

          else
          {
            sub_23A9E2ED0(v594, type metadata accessor for CapturedRoom.Surface);

            if (v355 == v354)
            {
              goto LABEL_185;
            }
          }
        }

        else
        {
          v366 = [v358 identifier];
          if (!v366)
          {
            goto LABEL_371;
          }

          v367 = v366;
          v368 = v585;
          sub_23AA0C0A4();

          v369 = v628;
          sub_23A9E3260(v594, v628, type metadata accessor for CapturedRoom.Surface);
          v370 = v644;
          v371 = swift_isUniquelyReferenced_nonNull_native();
          v651 = v370;
          sub_23A9DB384(v369, v368, v371);

          v364(v368, v648);
          sub_23A9E2ED0(v594, type metadata accessor for CapturedRoom.Surface);
          v644 = v651;
          if (v355 == v354)
          {
            goto LABEL_185;
          }
        }

        goto LABEL_164;
      }
    }

    (*v646)(v361, v648);

    ++v356;
    if (v355 == v354)
    {
      goto LABEL_185;
    }
  }

LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
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
LABEL_383:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A9D62B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v52 = a3;
  v51 = a2;
  v53 = a4;
  v5 = type metadata accessor for CapturedRoom.Surface(0) - 8;
  MEMORY[0x28223BE20](v5);
  *&v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  *&v57 = &v50 - v8;
  MEMORY[0x28223BE20](v9);
  *&v56 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  *&v55 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v54 = &v50 - v14;
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = MEMORY[0x277D84F90];
    v22 = a1 + v20;
    v23 = *(v16 + 72);
    v61 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_23A9E3260(v22, v18, type metadata accessor for CapturedRoom.Surface);
      v25 = *v18;
      if (v25 > 3)
      {
        break;
      }

      if (v25 == 2)
      {
        sub_23A9E3260(v18, v54, type metadata accessor for CapturedRoom.Surface);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = v59;
        }

        else
        {
          v26 = sub_23A938A00(0, v59[2] + 1, 1, v59);
        }

        v28 = v26[2];
        v32 = v26[3];
        v29 = v28 + 1;
        if (v28 >= v32 >> 1)
        {
          v26 = sub_23A938A00((v32 > 1), v28 + 1, 1, v26);
          v24 = v54;
          v59 = v26;
        }

        else
        {
          v59 = v26;
          v24 = v54;
        }

        goto LABEL_4;
      }

      if (v25 != 3)
      {
        goto LABEL_18;
      }

      sub_23A9E3260(v18, v57, type metadata accessor for CapturedRoom.Surface);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v62;
      }

      else
      {
        v26 = sub_23A938A00(0, v62[2] + 1, 1, v62);
      }

      v28 = v26[2];
      v27 = v26[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v26 = sub_23A938A00((v27 > 1), v28 + 1, 1, v26);
        v24 = v57;
        v62 = v26;
      }

      else
      {
        v62 = v26;
        v24 = v57;
      }

LABEL_4:
      sub_23A9E2ED0(v18, type metadata accessor for CapturedRoom.Surface);
      v26[2] = v29;
      sub_23A9E35C4(v24, v26 + v20 + v28 * v23, type metadata accessor for CapturedRoom.Surface);
      v22 += v23;
      if (!--v19)
      {
        goto LABEL_39;
      }
    }

    if (v25 == 4)
    {
      sub_23A9E3260(v18, v56, type metadata accessor for CapturedRoom.Surface);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v61;
      }

      else
      {
        v26 = sub_23A938A00(0, v61[2] + 1, 1, v61);
      }

      v28 = v26[2];
      v33 = v26[3];
      v29 = v28 + 1;
      if (v28 >= v33 >> 1)
      {
        v26 = sub_23A938A00((v33 > 1), v28 + 1, 1, v26);
        v24 = v56;
        v61 = v26;
      }

      else
      {
        v61 = v26;
        v24 = v56;
      }

      goto LABEL_4;
    }

    if (v25 == 5)
    {
      sub_23A9E3260(v18, v58, type metadata accessor for CapturedRoom.Surface);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_23A938A00(0, v21[2] + 1, 1, v21);
      }

      v28 = v21[2];
      v30 = v21[3];
      v29 = v28 + 1;
      if (v28 >= v30 >> 1)
      {
        v26 = sub_23A938A00((v30 > 1), v28 + 1, 1, v21);
        v24 = v58;
        v21 = v26;
      }

      else
      {
        v26 = v21;
        v24 = v58;
      }

      goto LABEL_4;
    }

LABEL_18:
    sub_23A9E3260(v18, v55, type metadata accessor for CapturedRoom.Surface);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v60;
    }

    else
    {
      v26 = sub_23A938A00(0, v60[2] + 1, 1, v60);
    }

    v28 = v26[2];
    v31 = v26[3];
    v29 = v28 + 1;
    if (v28 < v31 >> 1)
    {
      v60 = v26;
      v24 = v55;
    }

    else
    {
      v26 = sub_23A938A00((v31 > 1), v28 + 1, 1, v26);
      v24 = v55;
      v60 = v26;
    }

    goto LABEL_4;
  }

  v21 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
LABEL_39:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_49;
  }

  v35 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  v57 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
  v58 = v35;
  v36 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
  v55 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
  v56 = v36;

  v37 = type metadata accessor for CapturedRoom(0);
  v38 = v53;
  *(v53 + v37[12]) = 0;
  *(v38 + v37[13]) = 2;
  v39 = (v38 + v37[15]);
  *v39 = 0u;
  v39[1] = 0u;
  v40 = v60;
  *v38 = v59;
  v38[1] = v40;
  v41 = v62;
  v38[2] = v61;
  v38[3] = v41;
  v42 = v51;
  v38[4] = v21;
  v38[5] = v42;
  *(v38 + v37[14]) = v52;

  sub_23AA0C0D4();
  *(v38 + v37[11]) = MEMORY[0x277D84F90];
  v43 = (v38 + v37[16]);
  v44 = v57;
  *v43 = v58;
  v43[1] = v44;
  v45 = v55;
  v43[2] = v56;
  v43[3] = v45;
  v46 = sub_23AA0D104();
  v47 = MGCopyAnswer();

  if (!v47)
  {
LABEL_49:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v63[0] = v47;
  if (swift_dynamicCast() && (v64[0] & 1) != 0)
  {
    v48 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
    v49 = v48;
    if (v48)
    {
      v48 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    }

    else
    {
      v63[1] = 0;
      v63[2] = 0;
    }

    v63[0] = v49;
    v63[3] = v48;
    sub_23A8D5068(v63, v39, &unk_27DFB1140, &qword_23AA19C10);
  }
}

uint64_t sub_23A9D69A4(void *a1, uint64_t *a2)
{
  v106 = type metadata accessor for CapturedRoom(0);
  v115 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = (&v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v109 = (&v98 - v7);
  MEMORY[0x28223BE20](v8);
  v99 = (&v98 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v110 = (&v98 - v13);
  MEMORY[0x28223BE20](v14);
  v111 = (&v98 - v15);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB8, &qword_23AA1A798);
  MEMORY[0x28223BE20](v114);
  v101 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v98 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v98 - v20;
  MEMORY[0x28223BE20](v22);
  v107 = &v98 - v23;
  v24 = sub_23A9D2114(a1, a2, 0);
  v26 = v25;
  v104 = v27;
  v28 = sub_23A9DF1BC(a1, a2);
  v102 = v29;
  v103 = v30;
  v31 = OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_captureSession;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  v33 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v108 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v34 = MEMORY[0x277D84F90];
  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = MEMORY[0x277D84F90];

  v112 = v31;
  v113 = v2;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
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
    goto LABEL_78;
  }

  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v34;

  v35 = v106;
  v36 = v26;
  if (*(v24 + 16) || *(v28 + 16))
  {
    v37 = v111;
    sub_23A9D62B8(v24, v28, MEMORY[0x277D84F90], v111);

    v38 = *(v115 + 7);
    v38(v37, 0, 1, v35);
  }

  else
  {

    v38 = *(v115 + 7);
    v38(v111, 1, 1, v35);
  }

  v39 = v110;
  v40 = v104;
  v41 = v107;
  if (*(v36 + 16) || *(v102 + 16) || *(v33 + 16))
  {
    sub_23A9D62B8(v36, v102, v33, v110);

    v42 = 0;
  }

  else
  {

    v42 = 1;
  }

  v38(v39, v42, 1, v35);
  v43 = v105;
  if (*(v40 + 16) || *(v103 + 16) || *(v108 + 16))
  {
    sub_23A9D62B8(v40, v103, v108, v105);

    v44 = 0;
  }

  else
  {

    v44 = 1;
  }

  v38(v43, v44, 1, v35);
  v45 = v114;
  v46 = *(v114 + 48);
  v47 = *(v114 + 64);
  sub_23A930208(v110, v41, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A930208(v43, v41 + v46, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A930208(v111, v41 + v47, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D5194(v41, v21, &qword_27DFB0DB8, &qword_23AA1A798);
  v48 = *(v45 + 48);
  v49 = *(v45 + 64);
  v50 = *(v115 + 6);
  if (v50(&v21[v49], 1, v35) == 1)
  {
    sub_23A8D50D0(&v21[v49], &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(&v21[v48], &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v21, &unk_27DFB13A0, &unk_23AA1A7A0);
    v51 = v101;
    goto LABEL_31;
  }

  v115 = v50;
  v52 = v99;
  sub_23A9E35C4(&v21[v49], v99, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(&v21[v48], &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v21, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_69;
  }

  v53 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v55 = *(v53 + 8);

  v51 = v101;
  if (Strong)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v56 = result;
    ObjectType = swift_getObjectType();
    (*(v55 + 24))(v56, v52, ObjectType, v55);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_70;
  }

  v58 = result;
  swift_beginAccess();
  v59 = swift_unknownObjectWeakLoadStrong();
  v60 = *(v58 + 32);

  if (v59)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v61 = result;
    v62 = swift_getObjectType();
    (*(v60 + 24))(v61, v52, v62, v60);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_72;
  }

  v63 = sub_23A9CCB9C();

  v64 = *(v63 + 16);

  if (v64 == 1)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_23A9CCB9C();

    sub_23A961904(v52, 1);
  }

  sub_23A9E2ED0(v52, type metadata accessor for CapturedRoom);
  v50 = v115;
LABEL_31:
  v65 = v100;
  sub_23A8D5194(v41, v100, &qword_27DFB0DB8, &qword_23AA1A798);
  v66 = *(v114 + 48);
  v67 = *(v114 + 64);
  if (v50(v65, 1, v35) == 1)
  {
    sub_23A8D50D0(v65 + v67, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v65 + v66, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v65, &unk_27DFB13A0, &unk_23AA1A7A0);
    goto LABEL_46;
  }

  sub_23A9E35C4(v65, v109, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(v65 + v67, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v65 + v66, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_71;
  }

  v68 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  v69 = swift_unknownObjectWeakLoadStrong();
  v70 = *(v68 + 8);

  if (v69)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v71 = result;
    v72 = swift_getObjectType();
    (*(v70 + 16))(v71, v109, v72, v70);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_73;
  }

  v73 = result;
  swift_beginAccess();
  v74 = swift_unknownObjectWeakLoadStrong();
  v75 = *(v73 + 32);

  if (v74)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v76 = result;
    v77 = swift_getObjectType();
    (*(v75 + 16))(v76, v109, v77, v75);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_75;
  }

  v78 = sub_23A9CCB9C();

  v79 = *(v78 + 16);

  if (v79 == 1)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    sub_23A9CCB9C();

    sub_23A961904(v109, 0);
  }

  sub_23A9E2ED0(v109, type metadata accessor for CapturedRoom);
LABEL_46:
  sub_23A8D5194(v41, v51, &qword_27DFB0DB8, &qword_23AA1A798);
  v80 = *(v114 + 48);
  v81 = *(v114 + 64);
  if (v50((v51 + v80), 1, v35) == 1)
  {
    sub_23A8D50D0(v41, &qword_27DFB0DB8, &qword_23AA1A798);
    sub_23A8D50D0(v51 + v81, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v51 + v80, &unk_27DFB13A0, &unk_23AA1A7A0);
    v82 = v51;
    v83 = &unk_27DFB13A0;
    v84 = &unk_23AA1A7A0;
    return sub_23A8D50D0(v82, v83, v84);
  }

  v85 = v98;
  sub_23A9E35C4(v51 + v80, v98, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(v51 + v81, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v51, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_74;
  }

  v86 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  v87 = swift_unknownObjectWeakLoadStrong();
  v88 = *(v86 + 8);

  if (v87)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v89 = result;
    v90 = swift_getObjectType();
    (*(v88 + 32))(v89, v85, v90, v88);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_76;
  }

  v91 = result;
  swift_beginAccess();
  v92 = swift_unknownObjectWeakLoadStrong();
  v93 = *(v91 + 32);

  if (v92)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v94 = result;
    v95 = swift_getObjectType();
    (*(v93 + 32))(v94, v85, v95, v93);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_77;
  }

  v96 = sub_23A9CCB9C();

  v97 = *(v96 + 16);

  if (v97 != 1)
  {
LABEL_60:
    sub_23A9E2ED0(v85, type metadata accessor for CapturedRoom);
    v83 = &qword_27DFB0DB8;
    v84 = &qword_23AA1A798;
    v82 = v41;
    return sub_23A8D50D0(v82, v83, v84);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23A9CCB9C();

    sub_23A961904(v85, 2);

    goto LABEL_60;
  }

LABEL_86:
  __break(1u);
  return result;
}

double sub_23A9D778C(uint64_t a1, void *a2)
{
  v82 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v82);
  v5 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v75 - v7);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v80 = a1;
    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    sub_23A955784();
    swift_beginAccess();
    v12 = [*(v11 + 56) currentFrame];
    if (v12)
    {
      v13 = v12;
      [v12 referenceOriginTransform];
      v85 = v15;
      v86 = v14;
      v83 = v17;
      v84 = v16;

      v18 = (v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
      v19 = v85;
      *v18 = v86;
      v18[1] = v19;
      v20 = v83;
      v18[2] = v84;
      v18[3] = v20;
    }

    type metadata accessor for RSCoreAdaptor();
    v21 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects);
    v22 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls;
    swift_beginAccess();
    v23 = *(v11 + v22);
    v24 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
    v85 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
    v86 = v24;
    v25 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
    v83 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
    v84 = v25;
    v26 = qword_27DFAE4C8;

    v79 = v23;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = qword_27DFC0870;
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    xmmword_27DFC0830 = v86;
    unk_27DFC0840 = v85;
    xmmword_27DFC0850 = v84;
    unk_27DFC0860 = v83;
    byte_27DFC0888 = 1;
    if (qword_27DFAE4E0 != -1)
    {
      swift_once();
    }

    v28 = qword_27DFC0890;
    qword_27DFC0890 = v27;
    v29 = v27;

    if (v21 >> 62)
    {
      v30 = sub_23AA0D7F4();
    }

    else
    {
      v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = v5;
    if (v30 <= 0)
    {

      v31 = [a2 objects];
      sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
      v21 = sub_23AA0D2F4();
    }

    v32 = [a2 doors];
    sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
    v33 = sub_23AA0D2F4();

    v88 = v33;
    v34 = [a2 opendoors];
    v35 = sub_23AA0D2F4();

    sub_23A912898(v35);
    v36 = [a2 walls];
    v37 = sub_23AA0D2F4();

    v38 = [a2 curvedWalls];
    sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
    v39 = sub_23AA0D2F4();

    v78 = sub_23A9A46EC(v37, v39);

    v40 = v88;
    v41 = [a2 curvedDoors];
    v42 = sub_23AA0D2F4();

    v77 = sub_23A9A46EC(v40, v42);

    v43 = [a2 windows];
    v44 = sub_23AA0D2F4();

    v45 = [a2 curvedWindows];
    v46 = sub_23AA0D2F4();

    v76 = sub_23A9A46EC(v44, v46);

    v47 = [a2 openings];
    v48 = sub_23AA0D2F4();

    v49 = MEMORY[0x277D84F90];
    v75 = sub_23A9A46EC(v48, MEMORY[0x277D84F90]);

    v50 = [a2 floors];
    v51 = sub_23AA0D2F4();

    v52 = sub_23A9A46EC(v51, v49);

    sub_23A9A4A38(v21);
    v54 = v53;

    v55 = [a2 roomTypes];
    sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
    v56 = sub_23AA0D2F4();

    v57 = sub_23A9A4D4C(v56);

    v58 = [a2 storyLevel];
    v59 = v82;
    v60 = *(v82 + 48);
    *(v8 + *(v82 + 52)) = 2;
    v61 = (v8 + v59[15]);
    *v61 = 0u;
    v61[1] = 0u;
    v62 = v77;
    *v8 = v78;
    v8[1] = v62;
    v63 = v75;
    v8[2] = v76;
    v8[3] = v63;
    v8[4] = v52;
    v8[5] = v54;
    *(v8 + v59[14]) = v79;
    sub_23AA0C0D4();
    *(v8 + v59[11]) = v57;
    *(v8 + v60) = v58;
    v64 = (v8 + v59[16]);
    v65 = v85;
    *v64 = v86;
    v64[1] = v65;
    v66 = v83;
    v64[2] = v84;
    v64[3] = v66;
    v87[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    v87[0] = a2;
    v67 = a2;
    sub_23A8D5068(v87, v61, &unk_27DFB1140, &qword_23AA19C10);
    v68 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel;
    swift_beginAccess();
    sub_23A9E355C(v8, v11 + v68, type metadata accessor for CapturedRoom);
    swift_endAccess();
    if ((*(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 3) & 1) == 0)
    {
      *(v11 + v68) = MEMORY[0x277D84F90];
    }

    v69 = v81;
    sub_23A9E3260(v11 + v68, v81, type metadata accessor for CapturedRoom);
    sub_23A9D69A4(v67, v69);
    sub_23A9E2ED0(v69, type metadata accessor for CapturedRoom);
    v70 = v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v71 = *(v70 + 8);
      ObjectType = swift_getObjectType();
      sub_23A9E3260(v11 + v68, v69, type metadata accessor for CapturedRoom);
      (*(v71 + 8))(v11, v69, ObjectType, v71);
      swift_unknownObjectRelease();
      sub_23A9E2ED0(v69, type metadata accessor for CapturedRoom);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v73 = *(v11 + 32);
      v74 = swift_getObjectType();
      sub_23A9E3260(v11 + v68, v69, type metadata accessor for CapturedRoom);
      (*(v73 + 8))(v11, v69, v74, v73);

      swift_unknownObjectRelease();
      sub_23A9E2ED0(v69, type metadata accessor for CapturedRoom);
    }

    else
    {
    }
  }

  return result;
}

void sub_23A9D8148(uint64_t a1, void *a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed))
    {
    }

    else
    {
      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v6 = [a2 floorPlan];
      sub_23A955E64(v6);

      v7 = swift_weakLoadStrong();
      if (v7)
      {
        v8 = *(v7 + 16);

        sub_23A9574C4(v8);
        v9 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
        swift_beginAccess();
        v10 = *(v4 + v9);
        v26 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
        v27 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
        v24 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
        v25 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
        v11 = v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          v28 = v10;
          v29 = a2;
          v30 = v27;
          v31 = v26;
          v32 = v25;
          v33 = v24;
          v14 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
          v15 = *(v12 + 56);

          v16 = a2;
          v17 = v14;
          v15(v4, &v28, v14, ObjectType, v12);
          swift_unknownObjectRelease();
        }

        else
        {

          v18 = a2;
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v4 + 32);
          v20 = swift_getObjectType();
          v28 = v10;
          v29 = a2;
          v30 = v27;
          v31 = v26;
          v32 = v25;
          v33 = v24;
          v21 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
          v22 = *(v19 + 56);
          v23 = v21;
          v22(v4, &v28, v21, v20, v19);
          swift_unknownObjectRelease();
        }

        *(v4 + v5) = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_23A9D8494(uint64_t a1, void *a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 type];
    if (v7 >= 6 || (v8 = v7, v9 = [a2 state], v10 = v9 + 1, v9 + 1 >= 5))
    {
    }

    else
    {
      v11 = 0x50003010204uLL >> (8 * v8);
      v12 = OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_initializationState;
      if (*(a1 + OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_initializationState) != v10 && swift_unknownObjectWeakLoadStrong())
      {
        sub_23A9B96B4(v10);
        swift_unknownObjectRelease();
      }

      *(a1 + v12) = v10;
      v13 = v6 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        v19[0] = v11;
        (*(v14 + 40))(v6, v19, ObjectType, v14);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v6 + 32);
        v17 = swift_getObjectType();
        v18 = v11;
        (*(v16 + 40))(v6, &v18, v17, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

double sub_23A9D86F8(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for RSCoreAdaptor();
    sub_23A9A5B38(a2, &v15);
    v6 = v15;
    v7 = sub_23AA0CE54();
    v8 = sub_23AA0D494();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;
      _os_log_impl(&dword_23A8B4000, v7, v8, "[RSCaptureSession didFailWithError] RSCaptureSession failure with error: %ld", v9, 0xCu);
      MEMORY[0x23EE91710](v9, -1, -1);
    }

    sub_23A9DE13C();
    v10 = swift_allocError();
    *v11 = v6;
    v12 = *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v10;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    v13 = sub_23AA0D1A4();
    sub_23A955B84(v13, v14);

    sub_23A9CB5E0(v6 != 2);
  }

  return result;
}

void sub_23A9D892C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CapturedRoom.Surface(0);
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v61 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = &v61 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls;
    v14 = Strong;
    swift_beginAccess();
    v62 = v14;
    v61 = v13;
    v15 = *(v14 + v13);

    v16 = [a2 markers];
    sub_23A8D6C58(0, &unk_27DFB13F0, 0x277D46C58);
    v17 = sub_23AA0D2F4();

    if (v17 >> 62)
    {
      goto LABEL_51;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_52;
    }

LABEL_4:
    v78 = MEMORY[0x277D84F90];
    sub_23A976018(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v19 = v78;
      v76 = type metadata accessor for RSCoreAdaptor();
      v20 = 0;
      v21 = v17;
      v22 = v17 & 0xC000000000000001;
      v23 = v21;
      do
      {
        if (v22)
        {
          v24 = MEMORY[0x23EE90360](v20);
        }

        else
        {
          v24 = *(v21 + 8 * v20 + 32);
        }

        v25 = v24;
        sub_23A9A21A4(v24, v11);

        v78 = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_23A976018((v26 > 1), v27 + 1, 1);
          v19 = v78;
        }

        ++v20;
        *(v19 + 16) = v27 + 1;
        sub_23A9E35C4(v11, v19 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v27, type metadata accessor for CapturedRoom.Surface);
        v21 = v23;
      }

      while (v18 != v20);

      v28 = *(v15 + 16);
      if (v28)
      {
LABEL_13:
        v29 = sub_23AA0D324();
        *(v29 + 16) = v28;
        bzero((v29 + 32), v28);
        v30 = *(v19 + 16);
        if (v30)
        {
          goto LABEL_14;
        }
      }

      else
      {
        while (1)
        {
          v29 = MEMORY[0x277D84F90];
          v30 = *(v19 + 16);
          if (!v30)
          {
            break;
          }

LABEL_14:
          v31 = sub_23AA0D324();
          *(v31 + 16) = v30;
          v76 = v31;
          v65 = v31 + 32;
          bzero((v31 + 32), v30);
          v32 = 0;
          v33 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v34 = v19 + v33;
          v66 = v33;
          v17 = v15 + v33;
          v35 = *MEMORY[0x277D860B8];
          v36 = *(MEMORY[0x277D860B8] + 16);
          v37 = *(MEMORY[0x277D860B8] + 32);
          v38 = *(MEMORY[0x277D860B8] + 48);
          v63 = v29 + 31;
          v75 = MEMORY[0x277D84F90];
          v64 = v15 + v33;
          v70 = v36;
          v71 = v35;
          v68 = v38;
          v69 = v37;
          v67 = vdupq_n_s32(0x3DCCCCCDu);
          while (2)
          {
            if (v32 < *(v19 + 16))
            {
              v40 = v32 + 1;
              v11 = *(v77 + 72);
              v79 = __invert_f4(*(v34 + v11 * v32 + 32));
              v41 = 0;
              v42 = v17;
              while (v28 != v41)
              {
                if (v41 >= *(v15 + 16))
                {
                  __break(1u);
                  goto LABEL_48;
                }

                ++v41;
                v43 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v67, vabdq_f32(v70, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79.columns[0], COERCE_FLOAT(*v42[6].f32)), v79.columns[1], v42[6], 1), v79.columns[2], *v42[6].f32, 2), v79.columns[3], *v42[6].f32, 3))), vcgeq_f32(v67, vabdq_f32(v71, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79.columns[0], COERCE_FLOAT(*v42[4].f32)), v79.columns[1], v42[4], 1), v79.columns[2], *v42[4].f32, 2), v79.columns[3], *v42[4].f32, 3)))), vandq_s8(vcgeq_f32(v67, vabdq_f32(v69, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79.columns[0], COERCE_FLOAT(*v42[8].f32)), v79.columns[1], v42[8], 1), v79.columns[2], *v42[8].f32, 2), v79.columns[3], *v42[8].f32, 3))), vcgeq_f32(v67, vabdq_f32(v68, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79.columns[0], COERCE_FLOAT(*v42[10].f32)), v79.columns[1], v42[10], 1), v79.columns[2], *v42[10].f32, 2), v79.columns[3], *v42[10].f32, 3))))));
                v42 = (v42 + v11);
                if ((v43 & 0x80000000) != 0)
                {
                  if (v32 >= *(v76 + 16))
                  {
                    goto LABEL_49;
                  }

                  *(v65 + v32) = 1;
                  if (v41 - 1 >= *(v29 + 16))
                  {
                    goto LABEL_50;
                  }

                  *(v63 + v41) = 1;
                  sub_23A9E3260(v42 - v11, v72, type metadata accessor for CapturedRoom.Surface);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v75 = sub_23A938A00(0, v75[2] + 1, 1, v75);
                  }

                  v45 = v75[2];
                  v44 = v75[3];
                  if (v45 >= v44 >> 1)
                  {
                    v75 = sub_23A938A00((v44 > 1), v45 + 1, 1, v75);
                  }

                  v39 = v75;
                  v75[2] = v45 + 1;
                  sub_23A9E35C4(v72, v39 + v66 + v45 * v11, type metadata accessor for CapturedRoom.Surface);
                  v17 = v64;
                  break;
                }
              }

              ++v32;
              if (v40 != v30)
              {
                continue;
              }

              if (v30 > *(v76 + 16))
              {
                goto LABEL_60;
              }

              v72 = v29;
              v46 = MEMORY[0x277D84F90];
              v47 = 32;
              do
              {
                if ((*(v76 + v47) & 1) == 0)
                {
                  sub_23A9E3260(v34, v73, type metadata accessor for CapturedRoom.Surface);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v46 = sub_23A938A00(0, v46[2] + 1, 1, v46);
                  }

                  v49 = v46[2];
                  v48 = v46[3];
                  if (v49 >= v48 >> 1)
                  {
                    v46 = sub_23A938A00((v48 > 1), v49 + 1, 1, v46);
                  }

                  v46[2] = v49 + 1;
                  sub_23A9E35C4(v73, v46 + v66 + v49 * v11, type metadata accessor for CapturedRoom.Surface);
                }

                v34 += v11;
                ++v47;
                --v30;
              }

              while (v30);

              v29 = v72;
              if (!v28)
              {
                goto LABEL_55;
              }

              goto LABEL_38;
            }

            break;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v18 = sub_23AA0D7F4();
          if (v18)
          {
            goto LABEL_4;
          }

LABEL_52:

          v19 = MEMORY[0x277D84F90];
          v28 = *(v15 + 16);
          if (v28)
          {
            goto LABEL_13;
          }
        }
      }

      v46 = MEMORY[0x277D84F90];
      v75 = MEMORY[0x277D84F90];
      v76 = MEMORY[0x277D84F90];
      if (!v28)
      {
LABEL_55:
        v52 = MEMORY[0x277D84F90];
LABEL_56:

        v58 = v62;
        v59 = v61;
        swift_beginAccess();
        *(v58 + v59) = v75;

        sub_23A911B78(v60);
        swift_endAccess();
        *(v58 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v46;

        *(v58 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v52;

        return;
      }

LABEL_38:
      if (v28 <= *(v29 + 16))
      {
        v50 = 0;
        v51 = v29 + 32;
        v52 = MEMORY[0x277D84F90];
        v73 = v29 + 32;
        do
        {
          if ((*(v51 + v50) & 1) == 0)
          {
            v53 = v29;
            v54 = (*(v77 + 80) + 32) & ~*(v77 + 80);
            v55 = *(v77 + 72);
            sub_23A9E3260(v15 + v54 + v55 * v50, v74, type metadata accessor for CapturedRoom.Surface);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_23A938A00(0, v52[2] + 1, 1, v52);
            }

            v57 = v52[2];
            v56 = v52[3];
            if (v57 >= v56 >> 1)
            {
              v52 = sub_23A938A00((v56 > 1), v57 + 1, 1, v52);
            }

            v52[2] = v57 + 1;
            sub_23A9E35C4(v74, v52 + v54 + v57 * v55, type metadata accessor for CapturedRoom.Surface);
            v29 = v53;
            v51 = v73;
          }

          ++v50;
        }

        while (v28 != v50);
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }
}

void sub_23A9D92F0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    v8 = (a2 + 32);
    while (1)
    {
      if (*v8++)
      {

        v10 = sub_23AA0D024();
      }

      else
      {
        v10 = 0;
      }

      v11 = [objc_allocWithZone(MEMORY[0x277D46C60]) initWithDictionaryRepresentation_];

      if (!v11)
      {
        break;
      }

      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (!--v5)
      {
        v6 = v17;
        v4 = a1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  swift_beginAccess();
  *(v4 + 16) = v6;

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  v14 = v13;

  if (v13)
  {
    swift_beginAccess();
    sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);

    v15 = sub_23AA0D2E4();

    [v14 updateWithObjects_];

    return;
  }

LABEL_14:
  __break(1u);
}

double sub_23A9D9518(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)(uint64_t))
{
  sub_23A8D6C58(0, a5, a6);
  v10 = sub_23AA0D2F4();
  v11 = a3;
  v12 = a1;
  a7(v10);

  return result;
}

double sub_23A9D95AC(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_23AA0CE54();
    v7 = sub_23AA0D494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a2;
      _os_log_impl(&dword_23A8B4000, v6, v7, "[OUSession didFailWithError] OUSession failure with error: %ld", v8, 0xCu);
      MEMORY[0x23EE91710](v8, -1, -1);
    }

    sub_23A9DE13C();
    v9 = swift_allocError();
    *v10 = 5;
    v11 = *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v9;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    v12 = sub_23AA0D1A4();
    sub_23A955B84(v12, v13);

    sub_23A9CB5E0(1);
  }

  return result;
}

id sub_23A9D97E4(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v6 = swift_weakInit();
  v8.receiver = a1;
  v8.super_class = a4(v6);
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_23A9D9854(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23A9D989C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23A9D98E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23AA0D7F4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

_BYTE **sub_23A9D990C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_23A9D991C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EDC7C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A905F94(v14, a3 & 1);
      v9 = sub_23A9EDC7C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for ScanEntity(0);
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90CE28();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

void sub_23A9D9A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDDFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23A906278(v16, a4 & 1);
      v11 = sub_23A9EDDFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23A90CF8C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_23A9D9C38(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v25 = a4;
  v26 = a5;
  v6 = v5;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_23A9EDD28(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v25();
      goto LABEL_7;
    }

    v26();
    v23 = sub_23A9EDD28(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_23A9DBC10(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_23AA0DC24();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_23A9D9E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDE74(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23A9066CC(v16, a4 & 1);
      v11 = sub_23A9EDE74(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for HullPointUUID(0);
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23A90D004();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *(v22 + 8);
    v27 = *v22;
    *v22 = a1;
    *(v22 + 8) = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v24 = (v21[7] + 16 * v11);
  *v24 = a1;
  v24[1] = a2;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_23A9DA000(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EDEEC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_23A906C14(v14, a2 & 1);
      v9 = sub_23A9EDEEC(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90D19C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a3;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_23A9DA160(char a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23A9EDF54(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_23A90D30C();
    result = v19;
    goto LABEL_8;
  }

  sub_23A906EE8(v16, a3 & 1);
  result = sub_23A9EDF54(a2);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = v21[7] + 16 * result;
      *v22 = a1;
      *(v22 + 8) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    v23 = v21[7] + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A9DA2A0(uint64_t a1, char a2, __n128 a3)
{
  v4 = v3;
  v7 = a3.n128_u64[0];
  v8 = *v3;
  v9 = sub_23A9EDF98(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_23A907164(v14, a2 & 1);
      v9 = sub_23A9EDF98(a1);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for CDTTriangle();
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90D46C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = v7;
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a1;
  *(v19[7] + 8 * v9) = v7;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

void sub_23A9DA3F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EDF54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A907454(v14, a3 & 1);
      v9 = sub_23A9EDF54(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90D5CC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_23A9DA53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EDF54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A908130(v14, a3 & 1);
      v9 = sub_23A9EDF54(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90DD80();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_23A9DA688(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9F573C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A9083AC(v14, a3 & 1);
      result = sub_23A9F573C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90DEE0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = v19[7] + 40 * result;
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 32) = *(a1 + 8);
    *v21 = v22;
    *(v21 + 16) = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * result;

  return sub_23A9E362C(a1, v20);
}

void sub_23A9DA840(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDDFC(a2, a3);
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
      sub_23A90E31C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23A90893C(v16, a4 & 1);
    v11 = sub_23A9EDDFC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_23AA0DC24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_23A8EF9F0(a1, v22);
  }

  else
  {
    sub_23A9DBCC8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_23A9DA990(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A9EDD28(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ScanItemStrut(0);
      return sub_23A9E355C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ScanItemStrut);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A90E4C0();
    goto LABEL_7;
  }

  sub_23A908BF4(v17, a3 & 1);
  v24 = sub_23A9EDD28(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_23A9DBFB4(v14, v11, a1, v20, type metadata accessor for ScanItemStrut, type metadata accessor for ScanItemStrut);
}

void sub_23A9DAB8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v27 = a1;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_23A9EDD28(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_23A90E648();
      goto LABEL_9;
    }

    sub_23A908EB0(v18, a4 & 1);
    v21 = sub_23A9EDD28(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_23AA0DC24();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v27;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v27;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_23A9DBD34(v15, v12, v23, a2, v24);
  }
}

void sub_23A9DAD68(uint64_t a1, char a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a4;
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v14 = sub_23A9EE2D0(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a2 & 1) != 0)
  {
LABEL_7:
    v20 = *v5;
    if (v18)
    {
LABEL_8:
      v21 = v20[7] + 32 * v14;
      v22 = v26;
      *v21 = v25;
      *(v21 + 16) = v22;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a2 & 1) == 0)
  {
    sub_23A90EA34();
    goto LABEL_7;
  }

  sub_23A9095E0(v17, a2 & 1);
  v23 = sub_23A9EE2D0(a1);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    sub_23AA0DC24();
    __break(1u);
    return;
  }

  v14 = v23;
  v20 = *v5;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a1, v8);
  sub_23A9DBDF4(v14, v11, v20, v25, v26);
}

void sub_23A9DAF10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EE458(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A909D40(v14, a3 & 1);
      v9 = sub_23A9EE458(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for PixelBufferFormat();
        sub_23AA0DC24();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90EF34();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    goto _objc_release_x1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

void sub_23A9DB06C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDDFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23A909FF8(v16, a4 & 1);
      v11 = sub_23A9EDDFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_23AA0DC24();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23A90F094();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_23A9DB1E4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A9EDD28(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A90F36C();
    goto LABEL_7;
  }

  sub_23A90A548(v17, a3 & 1);
  v21 = sub_23A9EDD28(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_23AA0DC24();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_23A9DBEFC(v14, v11, a1 & 1, v20);
}

uint64_t sub_23A9DB384(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A9EDD28(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for CapturedRoom.Surface(0);
      return sub_23A9E355C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for CapturedRoom.Surface);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A90F5DC();
    goto LABEL_7;
  }

  sub_23A90A908(v17, a3 & 1);
  v24 = sub_23A9EDD28(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_23A9DBFB4(v14, v11, a1, v20, type metadata accessor for CapturedRoom.Surface, type metadata accessor for CapturedRoom.Surface);
}

uint64_t sub_23A9DB580(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A9EDD28(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for CapturedRoom.Object(0);
      return sub_23A9E355C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for CapturedRoom.Object);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A90F930();
    goto LABEL_7;
  }

  sub_23A90ADB8(v17, a3 & 1);
  v24 = sub_23A9EDD28(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_23A9DBFB4(v14, v11, a1, v20, type metadata accessor for CapturedRoom.Object, type metadata accessor for CapturedRoom.Object);
}

void sub_23A9DB77C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23A9EE264(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23A90FBEC();
      goto LABEL_7;
    }

    sub_23A90B1D0(v13, a3 & 1);
    v23 = sub_23A9EE264(a2);
    if ((v14 & 1) == (v24 & 1))
    {
      v10 = v23;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14D0, &unk_23AA18BE0);
    sub_23AA0DC24();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23AA0BFB4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    v20(v22, a1, v21);
    return;
  }

LABEL_13:
  sub_23A9DC0A8(v10, a2, a1, v16);
}

uint64_t sub_23A9DB8F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23A9F573C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23A90FE5C();
      goto LABEL_7;
    }

    sub_23A90B540(v13, a3 & 1);
    v24 = sub_23A9F573C(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23AA0BFB4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23A9DC154(v10, a2, a1, v16);
}

uint64_t sub_23A9DBA60(unint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, __n128 a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_23AA0C0E4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  v12 = (a4[7] + 32 * a1);
  *v12 = a5;
  v12[1].n128_u8[0] = a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_23A9DBB30(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23A9DBB74(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_23A9DBBCC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_23A9DBC10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23AA0C0E4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_23A9DBCC8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23A8EF9F0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_23A9DBD34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23AA0C0E4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_23A9DBDF4(unint64_t a1, uint64_t a2, void *a3, __n128 a4, __n128 a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_23AA0BFB4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a3[7] + 32 * a1);
  *v11 = a4;
  v11[1] = a5;
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

unint64_t sub_23A9DBEB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_23A9DBEFC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23AA0C0E4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23A9DBFB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_23AA0C0E4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_23A9E35C4(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_23A9DC0A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_23AA0BFB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23A9DC154(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_23AA0BFB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t (*sub_23A9DC200(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23A9E375C;
  }

  __break(1u);
  return result;
}

void (*sub_23A9DC280(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23A9DC300;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23A9DC308(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23A9DC388;
  }

  __break(1u);
  return result;
}

void (*sub_23A9DC390(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23A9E3760;
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1470, &qword_23AA1B2A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF058, &qword_23AA1B2B0);
    v7 = sub_23AA0DA44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v9, v5, &unk_27DFB1470, &qword_23AA1B2A8);
      result = sub_23A9EDD28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23AA0C0E4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC5F8(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  v3 = sub_23AA0DA44();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_23A9EDEEC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23A9EDEEC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1480, &qword_23AA1B2B8);
    v3 = sub_23AA0DA44();
    for (i = (a1 + 48); ; i += 4)
    {
      v5 = *(i - 2);
      v11 = *i;
      result = sub_23A9EDEEC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC7F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14B8, &unk_23AA1B2F0);
  v3 = sub_23AA0DA44();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23A9EDF54(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23A9EDF54(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14B0, &qword_23AA1B2E8);
    v3 = sub_23AA0DA44();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23A9EE050(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC9E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v3 = sub_23AA0DA44();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v22 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = sub_23A9F573C(v4);
  v9 = v22;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v8;
  result = v5;
  v13 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + v11) = v4;
    v14 = v3[7] + 40 * v11;
    *v14 = result;
    *(v14 + 8) = v6;
    *(v14 + 16) = v9;
    *(v14 + 32) = v7;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 12;
    v4 = *(v13 - 40);
    v19 = *(v13 - 4);
    v6 = *(v13 - 24);
    v21 = *(v13 - 1);
    v7 = *v13;

    v11 = sub_23A9F573C(v4);
    v13 = v18;
    result = v19;
    v9 = v21;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DCB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14A0, &qword_23AA1B2D8);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v11, &qword_27DFB14A8, &qword_23AA1B2E0);
      v5 = v11;
      result = sub_23A9EE3A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A8EF9F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v13, &qword_27DFAF850, &qword_23AA1B2D0);
      v5 = v13;
      v6 = v14;
      result = sub_23A9EDDFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A8EF9F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF98, &unk_23AA1B2C0);
    v3 = sub_23AA0DA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23A9EDDFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCEC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1408, &unk_23AA1B278);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v13, &unk_27DFB09D0, &qword_23AA19BD0);
      v5 = v13;
      v6 = v14;
      result = sub_23A9EDDFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A8CAA3C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCFFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1400, &qword_23AA1B270);
    v3 = sub_23AA0DA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23A9EDDFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1508, &qword_23AA1B330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
    v7 = sub_23AA0DA44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v9, v5, &qword_27DFB1508, &qword_23AA1B330);
      result = sub_23A9EDD28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23AA0C0E4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14F8, &unk_23AA1B320);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF40, &qword_23AA12848);
    v7 = sub_23AA0DA44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v9, v5, &unk_27DFB14F8, &unk_23AA1B320);
      result = sub_23A9EDD28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23AA0C0E4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CapturedRoom.Surface(0);
      result = sub_23A9E35C4(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CapturedRoom.Surface);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14E8, &unk_23AA1B310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF30, &qword_23AA12840);
    v7 = sub_23AA0DA44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v9, v5, &unk_27DFB14E8, &unk_23AA1B310);
      result = sub_23A9EDD28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23AA0C0E4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CapturedRoom.Object(0);
      result = sub_23A9E35C4(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CapturedRoom.Object);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1390, &unk_23AA1B230);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v11, &unk_27DFB10B0, &unk_23AA1AA30);
      v5 = v11;
      result = sub_23A9EE4E8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A8EF9F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23A9DD848(void *a1)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_23AA0D524();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 64) = 1;
  v7 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl;
  v8 = sub_23AA0BFB4();
  v9 = *(*(v8 - 8) + 56);
  v9(v2 + v7, 1, 1, v8);
  v9(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_23AA0CE74();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) = 1;
  v11 = v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v11 = 0x100010101010101;
  *(v11 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRunOption) = 8;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;
  v12 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  v13 = MEMORY[0x277D84F90];
  *(v2 + v12) = sub_23A9DD100(MEMORY[0x277D84F90]);
  v14 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel);
  v15 = *MEMORY[0x277D860B8];
  v42 = *(MEMORY[0x277D860B8] + 16);
  v43 = v15;
  v16 = *(MEMORY[0x277D860B8] + 32);
  v40 = *(MEMORY[0x277D860B8] + 48);
  v41 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
  v18 = type metadata accessor for CapturedRoom(0);
  v19 = v18[12];
  *(v14 + v19) = 0;
  *(v14 + v18[13]) = 2;
  v20 = (v14 + v18[15]);
  *v20 = 0u;
  v20[1] = 0u;
  *v14 = v13;
  v14[1] = v13;
  v14[2] = v13;
  v14[3] = v13;
  v14[4] = v13;
  v14[5] = v13;
  *(v14 + v18[14]) = v13;
  sub_23AA0C0D4();
  *(v14 + v18[11]) = v13;
  *(v14 + v19) = 0;
  v21 = (v14 + v18[16]);
  v22 = v42;
  *v21 = v43;
  v21[1] = v22;
  v23 = v40;
  v21[2] = v41;
  v21[3] = v23;
  v49[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  v49[0] = v17;
  sub_23A8D5068(v49, v20, &unk_27DFB1140, &qword_23AA19C10);
  v24 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  *(v2 + v24) = sub_23A9DD2E8(v13);
  v25 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  *(v2 + v25) = sub_23A9DD504(v13);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects) = v13;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls) = v13;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v13;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v13;
  *&v43 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue;
  *&v41 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  *&v42 = "plemented for this class";
  sub_23AA0CF04();
  v49[0] = v13;
  *&v40 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v26 = *MEMORY[0x277D85260];
  v27 = *(v48 + 104);
  v48 += 104;
  v39[0] = v27;
  v29 = v45;
  v28 = v46;
  v27(v45, v26, v46);
  *(v2 + v43) = sub_23AA0D554();
  *&v43 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue;
  *&v42 = "an.FloorPlanCaptureSession";
  sub_23AA0CF14();
  v49[0] = MEMORY[0x277D84F90];
  sub_23AA0D764();
  (v39[0])(v29, v26, v28);
  *(v2 + v43) = sub_23AA0D554();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = 0;
  v30 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  *v30 = xmmword_23AA12250;
  v30[1] = xmmword_23AA12220;
  v30[2] = xmmword_23AA12230;
  v30[3] = xmmword_23AA11AE0;
  v31 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter;
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v32 setNumberStyle_];
  *(v2 + v31) = v32;
  v33 = v47;
  v34 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  v35 = sub_23AA0D5F4();
  (*(*(v35 - 8) + 56))(v2 + v34, 1, 2, v35);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportThreshold) = 600;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;
  if (v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *(v2 + 56) = v36;
  v37 = v33;
  sub_23A9C965C(v33 == 0);
  return v2;
}

uint64_t sub_23A9DDFEC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_23A9DE024()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  v3 = 0x10000;
  if (!*(v0 + 26))
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!*(v0 + 27))
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if (!*(v0 + 28))
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if (!*(v0 + 29))
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if (!*(v0 + 30))
  {
    v8 = 0;
  }

  v9 = v6 | v7;
  v10 = 0x100000000000000;
  if (!*(v0 + 31))
  {
    v10 = 0;
  }

  sub_23A9CA60C(*(v0 + 16), v5 | v9 | v8 | v10, *(v0 + 32));
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_23A9DE0E4()
{
  result = qword_27DFB1190;
  if (!qword_27DFB1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1190);
  }

  return result;
}

unint64_t sub_23A9DE13C()
{
  result = qword_27DFB1198;
  if (!qword_27DFB1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1198);
  }

  return result;
}

unint64_t sub_23A9DE194()
{
  result = qword_27DFB11A0;
  if (!qword_27DFB11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB11A0);
  }

  return result;
}

unint64_t sub_23A9DE1EC()
{
  result = qword_27DFB11A8;
  if (!qword_27DFB11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB11A8);
  }

  return result;
}

uint64_t sub_23A9DE240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A9DE290(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_23A9DE2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_23A9DE344(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

void sub_23A9DE38C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

void sub_23A9DE3D0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 65);
}

void sub_23A9DE418(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 65) = v2;
}

uint64_t keypath_get_20Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_23A8D5194(v4 + v5, a3, &qword_27DFAF210, &qword_23AA12EE8);
}

double sub_23A9DE534@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t keypath_get_24Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_25Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for RoomCaptureSession(uint64_t a1)
{
  result = qword_27DFB11B0;
  if (!qword_27DFB11B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9DE6D8(uint64_t a1)
{
  sub_23A9DEE48(319);
  if (v1 <= 0x3F)
  {
    sub_23AA0CE84();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CapturedRoom(319);
      if (v3 <= 0x3F)
      {
        sub_23AA0D604();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23A9DEE48(uint64_t a1)
{
  if (!qword_27DFB11C0)
  {
    sub_23AA0BFB4();
    v1 = sub_23AA0D664();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFB11C0);
    }
  }
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoomCaptureSession.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoomCaptureSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23A9DF168()
{
  result = qword_27DFB1388;
  if (!qword_27DFB1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1388);
  }

  return result;
}

uint64_t sub_23A9DF1BC(void *a1, uint64_t a2)
{
  v349 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13B0, &unk_23AA1B240);
  v368 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v358 = &v346 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v366 = &v346 - v6;
  MEMORY[0x28223BE20](v7);
  v357 = &v346 - v8;
  MEMORY[0x28223BE20](v9);
  v361 = &v346 - v10;
  MEMORY[0x28223BE20](v11);
  v367 = &v346 - v12;
  MEMORY[0x28223BE20](v13);
  v360 = &v346 - v14;
  MEMORY[0x28223BE20](v15);
  v363 = &v346 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  MEMORY[0x28223BE20](v17 - 8);
  v351 = &v346 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v369 = &v346 - v20;
  MEMORY[0x28223BE20](v21);
  v372 = &v346 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13C0, &qword_23AA1B250);
  MEMORY[0x28223BE20](v23 - 8);
  v371 = &v346 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v370 = &v346 - v26;
  MEMORY[0x28223BE20](v27);
  v375 = &v346 - v28;
  MEMORY[0x28223BE20](v29);
  v373 = &v346 - v30;
  v393 = sub_23AA0C0E4();
  v388 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v32 = &v346 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v346 - v34;
  MEMORY[0x28223BE20](v36);
  v355 = &v346 - v37;
  MEMORY[0x28223BE20](v38);
  v353 = &v346 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v346 - v41;
  MEMORY[0x28223BE20](v43);
  v354 = &v346 - v44;
  MEMORY[0x28223BE20](v45);
  v379 = (&v346 - v46);
  MEMORY[0x28223BE20](v47);
  v377 = &v346 - v48;
  MEMORY[0x28223BE20](v49);
  v391 = &v346 - v50;
  v385 = type metadata accessor for CapturedRoom.Object(0);
  v392 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v359 = &v346 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v362 = &v346 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = (&v346 - v55);
  MEMORY[0x28223BE20](v57);
  v356 = &v346 - v58;
  MEMORY[0x28223BE20](v59);
  v350 = &v346 - v60;
  MEMORY[0x28223BE20](v61);
  v381 = &v346 - v62;
  MEMORY[0x28223BE20](v63);
  v352 = &v346 - v64;
  MEMORY[0x28223BE20](v65);
  i = &v346 - v66;
  MEMORY[0x28223BE20](v67);
  v378 = &v346 - v68;
  MEMORY[0x28223BE20](v69);
  v389 = (&v346 - v70);
  MEMORY[0x28223BE20](v71);
  v73 = &v346 - v72;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v347 = v56;
  v364 = v35;
  v346 = v32;
  v380 = Strong;
  v75 = *(a2 + 40);
  v76 = *(v75 + 16);
  v390 = v3;
  v374 = v42;
  v384 = v76;
  if (v76)
  {
    v77 = 0;
    v78 = *(v385 + 32);
    v382 = (v75 + ((*(v392 + 80) + 32) & ~*(v392 + 80)));
    v383 = v78;
    v387 = (v388 + 16);
    v376 = (v388 + 8);
    v79 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v77 >= *(v75 + 16))
      {
        goto LABEL_165;
      }

      v81 = *(v392 + 72);
      sub_23A9E3260(v382 + v81 * v77, v73, type metadata accessor for CapturedRoom.Object);
      v82 = *v387;
      v83 = v391;
      (*v387)(v391, v383 + v73, v393);
      sub_23A9E35C4(v73, v389, type metadata accessor for CapturedRoom.Object);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v396 = v79;
      v35 = sub_23A9EDD28(v83);
      v86 = v79;
      v87 = *(v79 + 16);
      v88 = (v85 & 1) == 0;
      v89 = v87 + v88;
      if (__OFADD__(v87, v88))
      {
        goto LABEL_166;
      }

      v90 = v85;
      if (*(v86 + 24) >= v89)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v93 = v396;
          if ((v85 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_23A90F930();
          v93 = v396;
          if ((v90 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_23A90ADB8(v89, isUniquelyReferenced_nonNull_native);
        v91 = sub_23A9EDD28(v391);
        if ((v90 & 1) != (v92 & 1))
        {
          goto LABEL_182;
        }

        v35 = v91;
        v93 = v396;
        if ((v90 & 1) == 0)
        {
LABEL_14:
          v93[(v35 >> 6) + 8] |= 1 << v35;
          v94 = v388;
          v95 = v391;
          v96 = v393;
          v82(v93[6] + *(v388 + 72) * v35, v391, v393);
          sub_23A9E35C4(v389, v93[7] + v35 * v81, type metadata accessor for CapturedRoom.Object);
          (*(v94 + 8))(v95, v96);
          v97 = v93[2];
          v98 = __OFADD__(v97, 1);
          v99 = v97 + 1;
          if (v98)
          {
            goto LABEL_169;
          }

          v79 = v93;
          v93[2] = v99;
          goto LABEL_5;
        }
      }

      sub_23A9E355C(v389, v93[7] + v35 * v81, type metadata accessor for CapturedRoom.Object);
      (*v376)(v391, v393);
      v79 = v93;
LABEL_5:
      ++v77;
      v3 = v390;
      v80 = v379;
      if (v384 == v77)
      {
        goto LABEL_20;
      }
    }
  }

  v79 = MEMORY[0x277D84F98];
  v80 = v379;
LABEL_20:
  v101 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  v102 = v380;
  swift_beginAccess();
  v376 = v101;
  v103 = *(v102 + v101);
  v104 = v103 + 64;
  v105 = 1 << *(v103 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v103 + 64);
  v77 = (v105 + 63) >> 6;
  v387 = (v388 + 16);
  v391 = v388 + 32;
  v382 = (v368 + 48);
  v383 = (v368 + 56);
  v384 = (v392 + 56);
  v389 = (v388 + 8);
  v368 = v103;

  v108 = 0;
  v365 = MEMORY[0x277D84F98];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v109 = v108;
        if (v107)
        {
          v110 = v108;
LABEL_32:
          v113 = __clz(__rbit64(v107));
          v107 &= v107 - 1;
          v114 = v113 | (v110 << 6);
          v115 = v368;
          v116 = v388;
          (*(v388 + 16))(v377, *(v368 + 48) + *(v388 + 72) * v114, v393);
          v117 = *(v115 + 56) + *(v392 + 72) * v114;
          v118 = v378;
          sub_23A9E3260(v117, v378, type metadata accessor for CapturedRoom.Object);
          v119 = *(v390 + 48);
          v3 = v390;
          v112 = v375;
          (*(v116 + 32))();
          sub_23A9E35C4(v118, &v112[v119], type metadata accessor for CapturedRoom.Object);
          v120 = 0;
          v108 = v110;
          v80 = v379;
        }

        else
        {
          v111 = v77 <= v108 + 1 ? v108 + 1 : v77;
          v108 = v111 - 1;
          v112 = v375;
          while (1)
          {
            v110 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            if (v110 >= v77)
            {
              break;
            }

            v107 = *(v104 + 8 * v110);
            ++v109;
            if (v107)
            {
              goto LABEL_32;
            }
          }

          v107 = 0;
          v120 = 1;
        }

        v121 = *v383;
        (*v383)(v112, v120, 1, v3);
        v122 = v112;
        v123 = v373;
        sub_23A930208(v122, v373, &qword_27DFB13C0, &qword_23AA1B250);
        v35 = *v382;
        if ((*v382)(v123, 1, v3) == 1)
        {
          v379 = v121;

          v152 = *(v79 + 64);
          v375 = (v79 + 64);
          v153 = 1 << *(v79 + 32);
          v154 = -1;
          if (v153 < 64)
          {
            v154 = ~(-1 << v153);
          }

          v155 = v154 & v152;
          v156 = (v153 + 63) >> 6;

          v157 = 0;
          v373 = MEMORY[0x277D84F98];
          for (i = v79; ; v79 = i)
          {
            v158 = v376;
            while (1)
            {
              v159 = v157;
              if (v155)
              {
LABEL_53:
                v160 = v159;
LABEL_61:
                v163 = __clz(__rbit64(v155));
                v155 &= v155 - 1;
                v164 = v163 | (v160 << 6);
                v165 = *(v79 + 48);
                v166 = v79;
                v167 = v388;
                v168 = v377;
                v169 = v393;
                (*(v388 + 16))(v377, v165 + *(v388 + 72) * v164, v393);
                v170 = *(v166 + 56) + *(v392 + 72) * v164;
                v171 = v378;
                sub_23A9E3260(v170, v378, type metadata accessor for CapturedRoom.Object);
                v172 = *(v390 + 48);
                v173 = *(v167 + 32);
                v174 = v371;
                v175 = v168;
                v3 = v390;
                v173(v371, v175, v169);
                sub_23A9E35C4(v171, &v174[v172], type metadata accessor for CapturedRoom.Object);
                v176 = 0;
                v157 = v160;
                v158 = v376;
                v162 = v374;
                goto LABEL_62;
              }

              while (1)
              {
                if (v156 <= v159 + 1)
                {
                  v161 = v159 + 1;
                }

                else
                {
                  v161 = v156;
                }

                v157 = v161 - 1;
                v162 = v374;
                while (1)
                {
                  v160 = v159 + 1;
                  if (__OFADD__(v159, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v160 >= v156)
                  {
                    break;
                  }

                  v155 = *&v375[8 * v160];
                  ++v159;
                  if (v155)
                  {
                    goto LABEL_61;
                  }
                }

                v155 = 0;
                v176 = 1;
                v174 = v371;
LABEL_62:
                v379(v174, v176, 1, v3);
                v177 = v174;
                v178 = v370;
                sub_23A930208(v177, v370, &qword_27DFB13C0, &qword_23AA1B250);
                if ((v35)(v178, 1, v3) == 1)
                {

                  v209 = [v349 objects];
                  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
                  v35 = sub_23AA0D2F4();

                  v77 = v35 & 0xFFFFFFFFFFFFFF8;
                  if (v35 >> 62)
                  {
                    goto LABEL_177;
                  }

                  v210 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_81;
                }

                v179 = *(v3 + 48);
                (*v391)(v162, v178, v393);
                sub_23A9E35C4(v178 + v179, v381, type metadata accessor for CapturedRoom.Object);
                v180 = *(v158 + v380);
                if (!*(v180 + 16))
                {
                  goto LABEL_69;
                }

                v181 = sub_23A9EDD28(v162);
                if ((v182 & 1) == 0)
                {
                  break;
                }

                v183 = v392;
                v77 = v35;
                v184 = v158;
                v185 = v157;
                v186 = v162;
                v187 = v369;
                sub_23A9E3260(*(v180 + 56) + *(v392 + 72) * v181, v369, type metadata accessor for CapturedRoom.Object);
                sub_23A9E2ED0(v381, type metadata accessor for CapturedRoom.Object);
                (*v389)(v186, v393);

                (*(v183 + 56))(v187, 0, 1, v385);
                sub_23A8D50D0(v187, &qword_27DFB0990, &qword_23AA12EE0);
                v159 = v185;
                v158 = v184;
                v35 = v77;
                v79 = i;
                if (v155)
                {
                  goto LABEL_53;
                }
              }

LABEL_69:
              v188 = v369;
              (*v384)(v369, 1, 1, v385);
              sub_23A8D50D0(v188, &qword_27DFB0990, &qword_23AA12EE0);
              v189 = *v387;
              v190 = v353;
              (*v387)(v353, v162, v393);
              sub_23A9E3260(v381, v350, type metadata accessor for CapturedRoom.Object);
              v191 = v373;
              v192 = swift_isUniquelyReferenced_nonNull_native();
              v395 = v191;
              v193 = sub_23A9EDD28(v190);
              v195 = *(v191 + 16);
              v196 = (v194 & 1) == 0;
              v98 = __OFADD__(v195, v196);
              v197 = v195 + v196;
              if (v98)
              {
                goto LABEL_175;
              }

              v77 = v194;
              if (*(v191 + 24) >= v197)
              {
                if ((v192 & 1) == 0)
                {
                  v202 = v193;
                  sub_23A90F930();
                  v193 = v202;
                }
              }

              else
              {
                sub_23A90ADB8(v197, v192);
                v193 = sub_23A9EDD28(v353);
                if ((v77 & 1) != (v198 & 1))
                {
                  goto LABEL_182;
                }
              }

              v158 = v376;
              v199 = v395;
              v373 = v395;
              if ((v77 & 1) == 0)
              {
                break;
              }

              sub_23A9E355C(v350, *(v395 + 56) + *(v392 + 72) * v193, type metadata accessor for CapturedRoom.Object);
              v200 = *v389;
              v201 = v393;
              (*v389)(v353, v393);
              sub_23A9E2ED0(v381, type metadata accessor for CapturedRoom.Object);
              v200(v374, v201);
              v3 = v390;
              v79 = i;
            }

            *(v395 + 8 * (v193 >> 6) + 64) |= 1 << v193;
            v203 = v388;
            v77 = v193;
            v204 = v353;
            v205 = v393;
            v189(v199[6] + *(v388 + 72) * v193, v353, v393);
            sub_23A9E35C4(v350, v199[7] + *(v392 + 72) * v77, type metadata accessor for CapturedRoom.Object);
            v206 = *(v203 + 8);
            v206(v204, v205);
            sub_23A9E2ED0(v381, type metadata accessor for CapturedRoom.Object);
            v206(v374, v205);
            v207 = v199[2];
            v98 = __OFADD__(v207, 1);
            v208 = v207 + 1;
            if (v98)
            {
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v199[2] = v208;
            v3 = v390;
          }
        }

        v124 = *(v3 + 48);
        (*v391)(v80, v123, v393);
        sub_23A9E35C4(v123 + v124, i, type metadata accessor for CapturedRoom.Object);
        if (!*(v79 + 16))
        {
          break;
        }

        v125 = sub_23A9EDD28(v80);
        if ((v126 & 1) == 0)
        {
          break;
        }

        v127 = v392;
        v128 = v372;
        sub_23A9E3260(*(v79 + 56) + *(v392 + 72) * v125, v372, type metadata accessor for CapturedRoom.Object);
        (*(v127 + 56))(v128, 0, 1, v385);
        sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
        (*v389)(v80, v393);
        sub_23A8D50D0(v128, &qword_27DFB0990, &qword_23AA12EE0);
      }

      v129 = v372;
      (*v384)(v372, 1, 1, v385);
      sub_23A8D50D0(v129, &qword_27DFB0990, &qword_23AA12EE0);
      v130 = *v387;
      v35 = v354;
      (*v387)(v354, v80, v393);
      sub_23A9E3260(i, v352, type metadata accessor for CapturedRoom.Object);
      v131 = v365;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v131;
      v133 = sub_23A9EDD28(v35);
      v135 = *(v131 + 16);
      v136 = (v134 & 1) == 0;
      v98 = __OFADD__(v135, v136);
      v137 = v135 + v136;
      if (v98)
      {
        goto LABEL_172;
      }

      v138 = v134;
      if (*(v131 + 24) >= v137)
      {
        if ((v132 & 1) == 0)
        {
          v151 = v133;
          sub_23A90F930();
          v133 = v151;
        }
      }

      else
      {
        sub_23A90ADB8(v137, v132);
        v133 = sub_23A9EDD28(v354);
        if ((v138 & 1) != (v139 & 1))
        {
          goto LABEL_182;
        }
      }

      v140 = v395;
      v365 = v395;
      if ((v138 & 1) == 0)
      {
        break;
      }

      sub_23A9E355C(v352, *(v395 + 56) + *(v392 + 72) * v133, type metadata accessor for CapturedRoom.Object);
      v35 = v389;
      v141 = *v389;
      v142 = v393;
      (*v389)(v354, v393);
      sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
      v80 = v379;
      v141(v379, v142);
      v3 = v390;
    }

    *(v395 + 8 * (v133 >> 6) + 64) |= 1 << v133;
    v143 = v388;
    v144 = v140[6] + *(v388 + 72) * v133;
    v348 = v133;
    v145 = v354;
    v146 = v393;
    v130(v144, v354, v393);
    sub_23A9E35C4(v352, v140[7] + *(v392 + 72) * v348, type metadata accessor for CapturedRoom.Object);
    v147 = *(v143 + 8);
    v148 = v145;
    v35 = v389;
    v147(v148, v146);
    sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
    v147(v379, v146);
    v149 = v140[2];
    v98 = __OFADD__(v149, 1);
    v150 = v149 + 1;
    if (v98)
    {
      break;
    }

    v140[2] = v150;
    v3 = v390;
    v80 = v379;
  }

  while (1)
  {
    __break(1u);
LABEL_177:
    v210 = sub_23AA0D7F4();
LABEL_81:
    v211 = v355;
    v212 = v356;
    if (v210)
    {
      break;
    }

    v391 = MEMORY[0x277D84F98];
LABEL_107:

    v242 = v365 + 64;
    v243 = 1 << *(v365 + 32);
    v244 = -1;
    if (v243 < 64)
    {
      v244 = ~(-1 << v243);
    }

    v77 = v244 & *(v365 + 64);
    v245 = (v243 + 63) >> 6;

    v246 = 0;
    v247 = v376;
    v248 = v380;
    while (v77)
    {
LABEL_117:
      v252 = __clz(__rbit64(v77)) | (v246 << 6);
      v253 = v365;
      v254 = *(v388 + 72);
      v255 = v363;
      (*(v388 + 16))(v363, *(v365 + 48) + v254 * v252, v393);
      v256 = *(v253 + 56);
      v35 = *(v392 + 72);
      sub_23A9E3260(v256 + v35 * v252, v255 + *(v390 + 48), type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v257 = sub_23A9EDD28(v255);
      if (v258)
      {
        v259 = v257;
        v260 = swift_isUniquelyReferenced_nonNull_native();
        v261 = *(v247 + v248);
        v394 = v261;
        *(v247 + v248) = 0x8000000000000000;
        if (!v260)
        {
          sub_23A90F930();
          v261 = v394;
        }

        (*v389)(*(v261 + 48) + v259 * v254, v393);
        v250 = v351;
        sub_23A9E35C4(*(v261 + 56) + v259 * v35, v351, type metadata accessor for CapturedRoom.Object);
        sub_23A90C994(v259, v261);
        *(v247 + v248) = v261;

        v249 = 0;
      }

      else
      {
        v249 = 1;
        v250 = v351;
      }

      v77 &= v77 - 1;
      (*v384)(v250, v249, 1, v385);
      sub_23A8D50D0(v250, &qword_27DFB0990, &qword_23AA12EE0);
      swift_endAccess();
      sub_23A8D50D0(v363, &unk_27DFB13B0, &unk_23AA1B240);
    }

    while (1)
    {
      v251 = v246 + 1;
      if (__OFADD__(v246, 1))
      {
        break;
      }

      if (v251 >= v245)
      {

        v262 = (v373 + 64);
        v263 = 1 << *(v373 + 32);
        v264 = -1;
        if (v263 < 64)
        {
          v264 = ~(-1 << v263);
        }

        v265 = v264 & *(v373 + 64);
        v266 = (v263 + 63) >> 6;

        v267 = 0;
        v77 = &unk_27DFB13B0;
        v383 = v266;
        v384 = v262;
        while (v265)
        {
LABEL_131:
          v272 = __clz(__rbit64(v265)) | (v267 << 6);
          v273 = v373;
          v274 = *(v388 + 72);
          v275 = *(v373 + 48) + v274 * v272;
          v276 = v360;
          v385 = *(v388 + 16);
          (v385)(v360, v275, v393);
          v35 = *(v392 + 72);
          v277 = *(v273 + 56) + v35 * v272;
          v278 = v390;
          sub_23A9E3260(v277, v276 + *(v390 + 48), type metadata accessor for CapturedRoom.Object);
          v279 = v367;
          sub_23A8D5194(v276, v367, v77, &unk_23AA1B240);
          v280 = v276;
          v281 = v361;
          v282 = v77;
          sub_23A8D5194(v280, v361, v77, &unk_23AA1B240);
          v283 = *(v278 + 48);
          v77 = v376;
          v284 = v380;
          swift_beginAccess();
          sub_23A9E35C4(v281 + v283, v362, type metadata accessor for CapturedRoom.Object);
          v285 = swift_isUniquelyReferenced_nonNull_native();
          v286 = v284;
          v287 = v285;
          v394 = *(v286 + v77);
          v288 = v394;
          *(v286 + v77) = 0x8000000000000000;
          v289 = sub_23A9EDD28(v279);
          v291 = v288[2];
          v292 = (v290 & 1) == 0;
          v98 = __OFADD__(v291, v292);
          v293 = v291 + v292;
          if (v98)
          {
            goto LABEL_170;
          }

          v294 = v290;
          if (v288[3] >= v293)
          {
            v77 = v282;
            if ((v287 & 1) == 0)
            {
              v301 = v289;
              sub_23A90F930();
              v289 = v301;
            }
          }

          else
          {
            sub_23A90ADB8(v293, v287);
            v289 = sub_23A9EDD28(v367);
            if ((v294 & 1) != (v295 & 1))
            {
              goto LABEL_182;
            }

            v77 = v282;
          }

          v296 = v380;
          v297 = v394;
          if (v294)
          {
            sub_23A9E355C(v362, v394[7] + v289 * v35, type metadata accessor for CapturedRoom.Object);
          }

          else
          {
            v394[(v289 >> 6) + 8] |= 1 << v289;
            v298 = v289;
            (v385)(*(v297 + 6) + v289 * v274, v367, v393);
            sub_23A9E35C4(v362, *(v297 + 7) + v298 * v35, type metadata accessor for CapturedRoom.Object);
            v299 = *(v297 + 2);
            v98 = __OFADD__(v299, 1);
            v300 = v299 + 1;
            if (v98)
            {
              goto LABEL_173;
            }

            *(v297 + 2) = v300;
          }

          v265 &= v265 - 1;
          v268 = *(v390 + 48);
          v35 = *v389;
          v269 = v367;
          v270 = v393;
          (*v389)(v367, v393);
          *(v376 + v296) = v297;

          swift_endAccess();
          sub_23A8D50D0(v360, v77, &unk_23AA1B240);
          (v35)(v361, v270);
          sub_23A9E2ED0(v269 + v268, type metadata accessor for CapturedRoom.Object);
          v266 = v383;
          v262 = v384;
        }

        while (1)
        {
          v271 = v267 + 1;
          if (__OFADD__(v267, 1))
          {
            goto LABEL_163;
          }

          if (v271 >= v266)
          {

            v302 = (v391 + 64);
            v303 = 1 << *(v391 + 32);
            v304 = -1;
            if (v303 < 64)
            {
              v304 = ~(-1 << v303);
            }

            v305 = v304 & *(v391 + 64);
            v306 = (v303 + 63) >> 6;

            v307 = 0;
            v77 = &unk_27DFB13B0;
            v383 = v306;
            v384 = v302;
            while (v305)
            {
LABEL_150:
              v312 = __clz(__rbit64(v305)) | (v307 << 6);
              v313 = v391;
              v314 = *(v388 + 72);
              v315 = *(v391 + 48) + v314 * v312;
              v316 = v357;
              v385 = *(v388 + 16);
              (v385)(v357, v315, v393);
              v35 = *(v392 + 72);
              v317 = *(v313 + 56) + v35 * v312;
              v318 = v390;
              sub_23A9E3260(v317, v316 + *(v390 + 48), type metadata accessor for CapturedRoom.Object);
              v319 = v366;
              sub_23A8D5194(v316, v366, v77, &unk_23AA1B240);
              v320 = v316;
              v321 = v358;
              v322 = v77;
              sub_23A8D5194(v320, v358, v77, &unk_23AA1B240);
              v323 = *(v318 + 48);
              v77 = v376;
              v324 = v380;
              swift_beginAccess();
              sub_23A9E35C4(v321 + v323, v359, type metadata accessor for CapturedRoom.Object);
              v325 = swift_isUniquelyReferenced_nonNull_native();
              v326 = v324;
              v327 = v325;
              v394 = *(v326 + v77);
              v328 = v394;
              *(v326 + v77) = 0x8000000000000000;
              v329 = sub_23A9EDD28(v319);
              v331 = v328[2];
              v332 = (v330 & 1) == 0;
              v98 = __OFADD__(v331, v332);
              v333 = v331 + v332;
              if (v98)
              {
                goto LABEL_171;
              }

              v334 = v330;
              if (v328[3] >= v333)
              {
                v77 = v322;
                if ((v327 & 1) == 0)
                {
                  v341 = v329;
                  sub_23A90F930();
                  v329 = v341;
                }
              }

              else
              {
                sub_23A90ADB8(v333, v327);
                v329 = sub_23A9EDD28(v366);
                if ((v334 & 1) != (v335 & 1))
                {
                  goto LABEL_182;
                }

                v77 = v322;
              }

              v336 = v380;
              v337 = v394;
              if (v334)
              {
                sub_23A9E355C(v359, v394[7] + v329 * v35, type metadata accessor for CapturedRoom.Object);
              }

              else
              {
                v394[(v329 >> 6) + 8] |= 1 << v329;
                v338 = v329;
                (v385)(*(v337 + 6) + v329 * v314, v366, v393);
                sub_23A9E35C4(v359, *(v337 + 7) + v338 * v35, type metadata accessor for CapturedRoom.Object);
                v339 = *(v337 + 2);
                v98 = __OFADD__(v339, 1);
                v340 = v339 + 1;
                if (v98)
                {
                  goto LABEL_174;
                }

                *(v337 + 2) = v340;
              }

              v305 &= v305 - 1;
              v308 = *(v390 + 48);
              v35 = *v389;
              v309 = v366;
              v310 = v393;
              (*v389)(v366, v393);
              *(v376 + v336) = v337;

              swift_endAccess();
              sub_23A8D50D0(v357, v77, &unk_23AA1B240);
              (v35)(v358, v310);
              sub_23A9E2ED0(v309 + v308, type metadata accessor for CapturedRoom.Object);
              v306 = v383;
              v302 = v384;
            }

            while (1)
            {
              v311 = v307 + 1;
              if (__OFADD__(v307, 1))
              {
                goto LABEL_164;
              }

              if (v311 >= v306)
              {

                v343 = sub_23A9C8C28(v342, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                sub_23A9C8C28(v344, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                sub_23A9C8C28(v345, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                return v343;
              }

              v305 = v302[v311];
              ++v307;
              if (v305)
              {
                v307 = v311;
                goto LABEL_150;
              }
            }
          }

          v265 = v262[v271];
          ++v267;
          if (v265)
          {
            v267 = v271;
            goto LABEL_131;
          }
        }
      }

      v77 = *(v242 + 8 * v251);
      ++v246;
      if (v77)
      {
        v246 = v251;
        goto LABEL_117;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v213 = 0;
  v214 = v35 & 0xC000000000000001;
  v391 = MEMORY[0x277D84F98];
  v383 = v35;
  while (2)
  {
    v215 = v213;
    while (1)
    {
      if (v214)
      {
        v216 = MEMORY[0x23EE90360](v215, v35);
      }

      else
      {
        if (v215 >= *(v77 + 16))
        {
          goto LABEL_168;
        }

        v216 = *(v35 + 8 * v215 + 32);
      }

      v217 = v216;
      v213 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_167;
      }

      v218 = [v216 identifier];
      if (!v218)
      {
        goto LABEL_179;
      }

      v219 = v218;
      sub_23AA0C0A4();

      v220 = i;
      if (*(i + 16))
      {
        v221 = sub_23A9EDD28(v211);
        if (v222)
        {
          break;
        }
      }

      (*v389)(v211, v393);

LABEL_85:
      ++v215;
      if (v213 == v210)
      {
        goto LABEL_107;
      }
    }

    v223 = v210;
    v224 = *(v392 + 72);
    sub_23A9E3260(*(v220 + 56) + v224 * v221, v212, type metadata accessor for CapturedRoom.Object);
    v225 = *v389;
    (*v389)(v211, v393);
    v226 = [v217 identifier];
    if (!v226)
    {
      goto LABEL_180;
    }

    v227 = v226;
    v228 = v364;
    sub_23AA0C0A4();

    v229 = *(v376 + v380);
    if (!*(v229 + 16))
    {
LABEL_97:

      v225(v228, v393);
      v212 = v356;
      sub_23A9E2ED0(v356, type metadata accessor for CapturedRoom.Object);
      v211 = v355;
      v210 = v223;
      v35 = v383;
      goto LABEL_85;
    }

    v230 = sub_23A9EDD28(v228);
    if ((v231 & 1) == 0)
    {

      v228 = v364;
      goto LABEL_97;
    }

    v232 = v347;
    sub_23A9E3260(*(v229 + 56) + v230 * v224, v347, type metadata accessor for CapturedRoom.Object);
    v225(v364, v393);

    v233 = v356;
    sub_23A9754F0(v232);
    v234.n128_u32[0] = 1008981770;
    if (sub_23A9FCE04(v232, v234))
    {

      sub_23A9E2ED0(v232, type metadata accessor for CapturedRoom.Object);
      sub_23A9E2ED0(v233, type metadata accessor for CapturedRoom.Object);
      v212 = v233;
      goto LABEL_103;
    }

    v235 = [v217 identifier];
    if (v235)
    {
      v236 = v235;
      v237 = v346;
      sub_23AA0C0A4();

      v238 = v378;
      sub_23A9E3260(v356, v378, type metadata accessor for CapturedRoom.Object);
      v239 = v391;
      v240 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v239;
      sub_23A9DB580(v238, v237, v240);

      v225(v237, v393);
      v212 = v356;
      sub_23A9E2ED0(v232, type metadata accessor for CapturedRoom.Object);
      sub_23A9E2ED0(v212, type metadata accessor for CapturedRoom.Object);
      v391 = v395;
LABEL_103:
      v210 = v223;
      v241 = v213 == v223;
      v211 = v355;
      v35 = v383;
      if (v241)
      {
        goto LABEL_107;
      }

      continue;
    }

    break;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}