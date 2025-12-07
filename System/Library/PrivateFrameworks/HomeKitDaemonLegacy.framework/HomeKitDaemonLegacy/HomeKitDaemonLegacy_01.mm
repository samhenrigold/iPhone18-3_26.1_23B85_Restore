unint64_t sub_253218C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3078, &qword_253D48D10);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
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

unint64_t sub_253218D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3080, &qword_253D48D18);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
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

unint64_t sub_253218E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3090, &unk_253D48D28);
    v7 = sub_253CD10C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2532168A0(v9, v5, &qword_27F5A3BC0, &qword_253D48D20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_253217D84(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_253CD05B8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_253219058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2532190FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F0, &qword_253D48D78);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2532168A0(v4, &v13, &qword_27F5A30F8, &unk_253D48D80);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF170(&v15, v3[7] + 40 * result);
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

uint64_t sub_253219230()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A3100);
  __swift_project_value_buffer(v0, qword_27F5A3100);
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_2532198CC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v10 = a1;
  v11 = [v10 cameraRecordingEventObserver];
  v12 = sub_253CCFE98();
  [v11 deleteCountersBefore:a4 & 1 date:v12];

  return (*(v7 + 8))(v9, v6);
}

HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory __swiftcall HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.cameraRecordingEventObserver = v2;
  result.super.isa = v1;
  return result;
}

void *sub_253219AB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_253CD0ED8();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x259C00F30](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 40) = 0x8000000253D4E910;
      v6 = CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      *(inited + 48) = v6;
      v7 = sub_25321856C(inited);
      swift_setDeallocating();
      sub_253206054(inited + 32, &unk_27F5A3B60, &unk_253D4AAD0);

      return v7;
    }

LABEL_9:
    if (qword_27F5A2428 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v9 = sub_253CD07E8();
  __swift_project_value_buffer(v9, qword_27F5A3100);

  v10 = sub_253CD07C8();
  v11 = sub_253CD0C98();

  if (!os_log_type_enabled(v10, v11))
  {
LABEL_17:

    return 0;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  v13 = result;
  *v12 = 138412290;
  if (!v2)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x259C00F30](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_16:
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_2531F8000, v10, v11, "Failed to cast log event: %@ to CameraRecordingDailySummaryLogEvent", v12, 0xCu);
    sub_253206054(v13, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v13, -1, -1);
    MEMORY[0x259C040E0](v12, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_253219D6C(uint64_t a1)
{
  sub_253CD0F58();
  if (!*(a1 + 16) || (v2 = sub_253217D40(v14), (v3 & 1) == 0))
  {
    sub_253205FA4(v14);
    goto LABEL_7;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v2, v15);
  sub_253205FA4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27F5A2428 != -1)
    {
      swift_once();
    }

    v8 = sub_253CD07E8();
    __swift_project_value_buffer(v8, qword_27F5A3100);
    v9 = sub_253CD07C8();
    v10 = sub_253CD0C98();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing CameraRecordingEventDailySummaryLogEvent in serialized events";
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(type metadata accessor for CameraRecordingEventDailySummaryLogEvent());
  v5 = CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(0xD00000000000002BLL);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
    result = swift_allocObject();
    *(result + 16) = xmmword_253D48D90;
    *(result + 32) = v6;
    return result;
  }

  if (qword_27F5A2428 != -1)
  {
    swift_once();
  }

  v13 = sub_253CD07E8();
  __swift_project_value_buffer(v13, qword_27F5A3100);
  v9 = sub_253CD07C8();
  v10 = sub_253CD0C98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to create CameraRecordingEventDailySummaryLogEvent from dictionary";
LABEL_11:
    _os_log_impl(&dword_2531F8000, v9, v10, v12, v11, 2u);
    MEMORY[0x259C040E0](v11, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_253219FE0(unint64_t a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v31 = v5;
    v32 = result;
    v30 = a2;
    if (!v9)
    {
      goto LABEL_15;
    }

    if (v9 < 1)
    {
      __break(1u);
      return result;
    }

    v10 = v8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    a2 = (a1 + 32);
    a1 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    v11 = 0;
    v5 = 0;
    v12 = 0;
    v23 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions;
    v8 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads;
    v24 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds;
    while (1)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        v25 = *(result + v23);
        v14 = __OFADD__(v12, v25);
        v12 += v25;
        if (v14)
        {
          goto LABEL_27;
        }

        v26 = *(result + v8);
        v14 = __OFADD__(v5, v26);
        v5 += v26;
        if (v14)
        {
          goto LABEL_28;
        }

        v27 = *(result + v24);
        v14 = __OFADD__(v11, v27);
        v11 += v27;
        if (v14)
        {
          break;
        }
      }

      ++a2;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v28 = result;
    v9 = sub_253CD0ED8();
    result = v28;
  }

  v11 = 0;
  v5 = 0;
  v12 = 0;
  a2 = 0;
  while (1)
  {
    MEMORY[0x259C00F30](a2, a1);
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v13 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions);
    v14 = __OFADD__(v12, v13);
    v12 += v13;
    if (v14)
    {
      goto LABEL_25;
    }

    v15 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads);
    v14 = __OFADD__(v5, v15);
    v5 += v15;
    if (v14)
    {
      goto LABEL_26;
    }

    v8 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds);
    swift_unknownObjectRelease();
    v14 = __OFADD__(v11, v8);
    v11 += v8;
    if (v14)
    {
      break;
    }

LABEL_8:
    a2 = (a2 + 1);
    if (v9 == a2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  v10 = v8;
  v11 = 0;
  v5 = 0;
  v12 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_253D48D90;
  v17 = v31;
  v18 = v32;
  (*(v31 + 16))(v10, v30, v32);
  v19 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v12;
  *&v20[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v5;
  *&v20[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v11;
  v20[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 1;
  v21 = sub_253CCFF18();
  v33.receiver = v20;
  v33.super_class = v19;
  v22 = objc_msgSendSuper2(&v33, sel_initWithHomeUUID_, v21);

  (*(v17 + 8))(v10, v18);
  *(v16 + 32) = v22;
  return v16;
}

id sub_25321A338()
{
  v1 = v0;
  v60 = sub_253CCFF58();
  v2 = *(v60 - 8);
  v3 = MEMORY[0x28223BE20](v60);
  v59 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v44 - v5;
  v6 = type metadata accessor for NetworkDetectAccessory(0);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  result = [v1 homes];
  if (result)
  {
    v12 = result;
    sub_253200644(0, &unk_281530D20, off_27971A118);
    v13 = sub_253CD0A58();

    v14 = v13;
    v66 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
    {
      v16 = 0;
      v47 = v14 & 0xFFFFFFFFFFFFFF8;
      v48 = v14 & 0xC000000000000001;
      v46 = v14 + 32;
      v52 = (v2 + 2);
      v53 = (v2 + 4);
      v51 = (v2 + 1);
      v44 = i;
      v54 = v10;
      v45 = v14;
      v17 = v58;
      v18 = v55;
      while (1)
      {
        if (v48)
        {
          v20 = MEMORY[0x259C00F30](v16, v14);
          v21 = __OFADD__(v16, 1);
          v22 = v16 + 1;
          if (v21)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v16 >= *(v47 + 16))
          {
            goto LABEL_35;
          }

          v20 = *(v46 + 8 * v16);
          v21 = __OFADD__(v16, 1);
          v22 = v16 + 1;
          if (v21)
          {
            goto LABEL_34;
          }
        }

        v49 = v20;
        v50 = v22;
        v23 = [v20 appleMediaAccessories];
        sub_253200644(0, &qword_281530E38, off_27971A018);
        v24 = sub_253CD0A58();

        if (v24 >> 62)
        {
          break;
        }

        v2 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
          goto LABEL_12;
        }

LABEL_5:
        v19 = MEMORY[0x277D84F90];
LABEL_6:

        v2 = &v66;
        sub_25321B0E4(v19);
        v16 = v50;
        v14 = v45;
        if (v50 == v44)
        {
          v43 = v66;
          goto LABEL_38;
        }
      }

      v2 = sub_253CD0ED8();
      if (!v2)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      v63 = v24 & 0xFFFFFFFFFFFFFF8;
      v64 = v24 & 0xC000000000000001;
      v19 = MEMORY[0x277D84F90];
      v61 = v2;
      v62 = v24;
      while (1)
      {
        if (v64)
        {
          v25 = MEMORY[0x259C00F30](v14, v24);
        }

        else
        {
          if (v14 >= *(v63 + 16))
          {
            goto LABEL_33;
          }

          v25 = *(v24 + 8 * v14 + 32);
        }

        v26 = v25;
        v27 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v28 = [v25 idsIdentifier];
        if (v28)
        {
          v29 = v28;
          v65 = (v14 + 1);
          v30 = v59;
          sub_253CCFF38();

          v31 = v60;
          (*v53)(v17, v30, v60);
          v32 = [v26 uuid];
          sub_253CCFF38();

          v33 = v57;
          (*v52)(v18 + *(v57 + 20), v17, v31);
          v34 = [v26 identifier];
          v35 = v19;
          v36 = sub_253CD0968();
          v38 = v37;

          (*v51)(v17, v31);
          v39 = *(v33 + 24);
          v10 = v54;
          v40 = (v18 + v39);
          *v40 = v36;
          v40[1] = v38;
          v19 = v35;
          sub_25321B080(v18, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2532832E4(0, v35[2] + 1, 1, v35);
          }

          v42 = v19[2];
          v41 = v19[3];
          v2 = v61;
          v27 = v65;
          if (v42 >= v41 >> 1)
          {
            v19 = sub_2532832E4((v41 > 1), v42 + 1, 1, v19);
          }

          v19[2] = v42 + 1;
          sub_25321B080(v10, v19 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42);
          v24 = v62;
        }

        else
        {
        }

        ++v14;
        if (v27 == v2)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v43 = MEMORY[0x277D84F90];
LABEL_38:

    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25321A8D0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_253CCFF18();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_25321AFDC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321AB60;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [a2 fetchSetupDiagnosticStateForAccessoryUUID:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_25321AA94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = a1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C8, &qword_253D48DE8);
  MEMORY[0x259C00030](&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  return sub_253CD0AE8();
}

void sub_25321AB60(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void *sub_25321ABEC()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_25321EA5C();

  return v2;
}

uint64_t sub_25321AC64(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25321AD30, 0, 0);
}

uint64_t sub_25321AD30()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25321AE20;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000023, 0x8000000253D4E970, sub_25321AFD4, v1, v4);
}

uint64_t sub_25321AE20()
{

  return MEMORY[0x2822009F8](sub_25321AF38, 0, 0);
}

uint64_t sub_25321AF38()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_253CD00D8();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_25321AFDC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);

  return sub_25321AA94(a1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25321B080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25321B0E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2532832E4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for NetworkDetectAccessory(0);
  if (v8 < v2)
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
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25321B210(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2532836C0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25321B304()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *&v1[OBJC_IVAR___HMDDiscoveryController_visibleSFDevices];

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = sub_253221A3C(*(v3 + 16), 0);
  v6 = *(sub_253CD01C8() - 8);
  v7 = sub_253221B88(&v9, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  result = sub_25320C5EC(v9);
  if (v7 == v4)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25321B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_25320C438;

  return sub_25321B4EC(a5);
}

uint64_t sub_25321B4EC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_253CCFF58();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25321B5B8, 0, 0);
}

uint64_t sub_25321B5B8()
{
  v1 = [*(v0 + 160) dataForKey_];
  if (!v1)
  {
    v32 = *(v0 + 160);
    type metadata accessor for HMError(0);
    *(v0 + 152) = 3;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_25321C694();
    sub_253CCFDF8();
    v33 = *(v0 + 144);
    v34 = sub_253CCFE08();

    [v32 respondWithError_];
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_253CCFE78();
  v5 = v4;

  v6 = sub_25321BB38(v3, v5);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = v6;
  v9 = v7;
  if (([*(v0 + 160) isEntitledForSPIAccess] & 1) == 0)
  {
    v10 = *(v0 + 160);
    v11 = [v9 vendorInfo];
    LODWORD(v10) = [v10 isEntitledForVendorAccessForAccessoryWithVendorInfo_];

    if (!v10)
    {

LABEL_8:
      [*(v0 + 160) respondWithSuccess];
      v30 = v3;
      v31 = v5;
      goto LABEL_9;
    }
  }

  v12 = *(v0 + 200);
  v37 = *(v0 + 192);
  v41 = v3;
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v40 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48A50;
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v16;
  v17 = [v8 uuid];
  v39 = v8;
  v18 = v9;
  v19 = v17;
  sub_253CCFF38();

  v20 = sub_253CCFF08();
  v38 = v5;
  v22 = v21;
  v23 = *(v13 + 8);
  v23(v12, v14);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 80) = sub_253CD0968();
  *(inited + 88) = v24;
  v25 = [v18 uuid];
  sub_253CCFF38();

  v26 = sub_253CCFF08();
  v28 = v27;
  v23(v37, v14);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v26;
  *(inited + 104) = v28;
  sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v29 = sub_253CD08B8();

  [v40 respondWithPayload_];

  v30 = v41;
  v31 = v38;
LABEL_9:
  sub_25321C6EC(v30, v31);
LABEL_10:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_25321BA78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_25321B450(a1, v4, v5, v7, v6);
}

char *sub_25321BB38(uint64_t a1, unint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = [v2 homes];
  if (!v4)
  {
    goto LABEL_200;
  }

  v5 = v4;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v6 = sub_253CD0A58();

  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_178;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_179:

    return 0;
  }

  while (1)
  {
    v9 = 0;
    v92 = v7 + 32;
    v93 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = !a1 && a2 == 0xC000000000000000;
    v11 = !v10;
    v107 = v11;
    v12 = a2 >> 62;
    v13 = __OFSUB__(HIDWORD(a1), a1);
    v102 = v13;
    v101 = v7 & 0xC000000000000001;
    __n = BYTE6(a2);
    v94 = (a1 >> 32) - a1;
    v95 = a1 >> 32;
    v106 = a2;
    v104 = a2 >> 62;
    v100 = v8;
    while (1)
    {
      if (v101)
      {
        v14 = MEMORY[0x259C00F30](v9);
        goto LABEL_19;
      }

      if (v9 >= *(v93 + 16))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
      }

      v14 = *(v92 + 8 * v9);
LABEL_19:
      v15 = v14;
      v16 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v16)
      {
        goto LABEL_175;
      }

      v18 = [v14 accessories];
      sub_253200644(0, &qword_281530EA0, off_279719FE0);
      v19 = sub_253CD0A58();

      v105 = v15;
      v103 = v17;
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_14:

      v9 = v103;
      if (v103 == v100)
      {
        goto LABEL_179;
      }
    }

    v20 = sub_253CD0ED8();
    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_22:
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v110 = v20;
LABEL_25:
    if (v22)
    {
      v23 = MEMORY[0x259C00F30](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_172;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      break;
    }

    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v86 = v7;
    v87 = sub_253CD0ED8();
    v7 = v86;
    v8 = v87;
    if (!v87)
    {
      goto LABEL_179;
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = v26, ![v26 isPrimary]))
  {

    goto LABEL_24;
  }

  v28 = [v27 publicKey];
  v29 = sub_253CCFE78();
  v31 = v30;

  v32 = v31 >> 62;
  if (v31 >> 62 != 3)
  {
    if (v32 > 1)
    {
      v22 = v19 & 0xC000000000000001;
      if (v32 != 2)
      {
        v36 = 0;
        if (v12 > 1)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v16 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v16)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v22 = v19 & 0xC000000000000001;
      if (!v32)
      {
        v36 = BYTE6(v31);
        if (v12 <= 1)
        {
          goto LABEL_56;
        }

LABEL_60:
        if (v12 == 2)
        {
          v41 = *(a1 + 16);
          v40 = *(a1 + 24);
          v16 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v16)
          {
            goto LABEL_174;
          }

          goto LABEL_62;
        }

        if (!v36)
        {
          goto LABEL_166;
        }

        goto LABEL_74;
      }

      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_177;
      }

      v36 = v36;
    }

    if (v12 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31 == 0xC000000000000000;
  }

  v35 = !v33 || v12 < 3;
  if (((v35 | v107) & 1) == 0)
  {

    v84 = 0;
    v85 = 0xC000000000000000;
    goto LABEL_168;
  }

  v36 = 0;
  v22 = v19 & 0xC000000000000001;
  if (v12 > 1)
  {
    goto LABEL_60;
  }

LABEL_56:
  v39 = __n;
  if (v12)
  {
    v39 = HIDWORD(a1) - a1;
    if (v102)
    {
      goto LABEL_173;
    }
  }

LABEL_62:
  if (v36 != v39)
  {
LABEL_74:

    sub_25321C6EC(v29, v31);
    v20 = v110;
    goto LABEL_24;
  }

  if (v36 < 1)
  {
    goto LABEL_166;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      __s1[0] = v29;
      LOWORD(__s1[1]) = v31;
      BYTE2(__s1[1]) = BYTE2(v31);
      BYTE3(__s1[1]) = BYTE3(v31);
      BYTE4(__s1[1]) = BYTE4(v31);
      BYTE5(__s1[1]) = BYTE5(v31);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v95 < a1)
          {
            goto LABEL_184;
          }

          v42 = sub_253CCFD68();
          if (!v42)
          {
            goto LABEL_208;
          }

          v43 = v42;
          v44 = sub_253CCFD88();
          if (__OFSUB__(a1, v44))
          {
            goto LABEL_190;
          }

          v45 = (a1 - v44 + v43);
          v46 = sub_253CCFD78();
          if (!v45)
          {
            goto LABEL_206;
          }

LABEL_129:
          if (v46 >= v94)
          {
            v69 = (a1 >> 32) - a1;
          }

          else
          {
            v69 = v46;
          }

LABEL_132:
          v73 = memcmp(__s1, v45, v69);
          sub_25321C6EC(v29, v31);
          a2 = v106;
          v12 = v104;
          if (!v73)
          {
            goto LABEL_169;
          }

LABEL_163:

          v20 = v110;
          v22 = v19 & 0xC000000000000001;
LABEL_24:
          ++v21;
          if (v25 == v20)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }

        v67 = *(a1 + 16);
        v99 = *(a1 + 24);
        v45 = sub_253CCFD68();
        if (v45)
        {
          v68 = sub_253CCFD88();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_195;
          }

          v45 += v67 - v68;
        }

        v16 = __OFSUB__(v99, v67);
        v56 = &v99[-v67];
        if (v16)
        {
          goto LABEL_186;
        }

        v57 = sub_253CCFD78();
        if (!v45)
        {
          goto LABEL_207;
        }

LABEL_122:
        if (v57 >= v56)
        {
          v69 = v56;
        }

        else
        {
          v69 = v57;
        }

        goto LABEL_132;
      }

LABEL_91:
      v111 = a1;
      v112 = a2;
      v113 = BYTE2(a2);
      v114 = BYTE3(a2);
      v115 = BYTE4(a2);
      v116 = BYTE5(a2);
      v58 = __s1;
      v59 = &v111;
LABEL_144:
      v78 = memcmp(v58, v59, __n);
      sub_25321C6EC(v29, v31);
      if (!v78)
      {
        goto LABEL_169;
      }

      goto LABEL_163;
    }

    if (v29 > v29 >> 32)
    {
      goto LABEL_181;
    }

    v51 = sub_253CCFD68();
    if (v51)
    {
      v52 = v51;
      v53 = sub_253CCFD88();
      if (__OFSUB__(v29, v53))
      {
        goto LABEL_183;
      }

      v97 = (v29 - v53 + v52);
    }

    else
    {
      v97 = 0;
    }

    sub_253CCFD78();
    v12 = v104;
    a2 = v106;
    if (v104 != 2)
    {
      if (v104 == 1)
      {
        if (v95 < a1)
        {
          goto LABEL_192;
        }

        v60 = sub_253CCFD68();
        if (v60)
        {
          v65 = sub_253CCFD88();
          if (__OFSUB__(a1, v65))
          {
            goto LABEL_199;
          }

          v60 += a1 - v65;
        }

        v66 = sub_253CCFD78();
        v63 = (a1 >> 32) - a1;
        if (v66 < v94)
        {
          v63 = v66;
        }

        result = v97;
        if (!v97)
        {
          goto LABEL_210;
        }

        if (!v60)
        {
          goto LABEL_209;
        }

LABEL_115:
        if (result == v60)
        {
          goto LABEL_166;
        }

LABEL_162:
        v83 = memcmp(result, v60, v63);
        sub_25321C6EC(v29, v31);
        v12 = v104;
        if (v83)
        {
          goto LABEL_163;
        }

LABEL_169:

        return v105;
      }

      v58 = v97;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v106;
      *(&__s1[1] + 2) = *(&v106 + 2);
      if (!v97)
      {
        goto LABEL_203;
      }

LABEL_143:
      v59 = __s1;
      goto LABEL_144;
    }

    v89 = *(a1 + 24);
    v91 = *(a1 + 16);
    v60 = sub_253CCFD68();
    if (v60)
    {
      v76 = sub_253CCFD88();
      v77 = v91;
      if (__OFSUB__(v91, v76))
      {
        goto LABEL_198;
      }

      v60 += v91 - v76;
    }

    else
    {
      v77 = v91;
    }

    v81 = v89 - v77;
    if (__OFSUB__(v89, v77))
    {
      goto LABEL_193;
    }

    v82 = sub_253CCFD78();
    if (v82 >= v81)
    {
      v63 = v81;
    }

    else
    {
      v63 = v82;
    }

    result = v97;
    if (!v97)
    {
      goto LABEL_212;
    }

    if (!v60)
    {
      goto LABEL_211;
    }

    goto LABEL_161;
  }

  if (v32 == 2)
  {
    v47 = *(v29 + 16);
    v48 = sub_253CCFD68();
    if (v48)
    {
      v49 = v48;
      v50 = sub_253CCFD88();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_182;
      }

      v96 = (v47 - v50 + v49);
    }

    else
    {
      v96 = 0;
    }

    a2 = v106;
    sub_253CCFD78();
    v12 = v104;
    if (v104 != 2)
    {
      if (v104 == 1)
      {
        if (v95 < a1)
        {
          goto LABEL_188;
        }

        v60 = sub_253CCFD68();
        if (v60)
        {
          v61 = sub_253CCFD88();
          if (__OFSUB__(a1, v61))
          {
            goto LABEL_197;
          }

          v60 += a1 - v61;
        }

        v62 = sub_253CCFD78();
        v63 = (a1 >> 32) - a1;
        if (v62 < v94)
        {
          v63 = v62;
        }

        result = v96;
        if (!v96)
        {
          goto LABEL_214;
        }

        if (!v60)
        {
          goto LABEL_213;
        }

        goto LABEL_115;
      }

      v58 = v96;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v106;
      *(&__s1[1] + 2) = *(&v106 + 2);
      if (!v96)
      {
        goto LABEL_204;
      }

      goto LABEL_143;
    }

    v88 = *(a1 + 24);
    v90 = *(a1 + 16);
    v60 = sub_253CCFD68();
    if (v60)
    {
      v74 = sub_253CCFD88();
      v75 = v90;
      if (__OFSUB__(v90, v74))
      {
        goto LABEL_196;
      }

      v60 += v90 - v74;
    }

    else
    {
      v75 = v90;
    }

    v79 = v88 - v75;
    if (__OFSUB__(v88, v75))
    {
      goto LABEL_191;
    }

    v80 = sub_253CCFD78();
    if (v80 >= v79)
    {
      v63 = v79;
    }

    else
    {
      v63 = v80;
    }

    result = v96;
    if (!v96)
    {
      goto LABEL_216;
    }

    if (!v60)
    {
      goto LABEL_215;
    }

LABEL_161:
    a2 = v106;
    if (result != v60)
    {
      goto LABEL_162;
    }

LABEL_166:

    v84 = v29;
    v85 = v31;
LABEL_168:
    sub_25321C6EC(v84, v85);
    return v105;
  }

  memset(__s1, 0, 14);
  if (!v12)
  {
    goto LABEL_91;
  }

  if (v12 == 2)
  {
    v54 = *(a1 + 16);
    v98 = *(a1 + 24);
    v45 = sub_253CCFD68();
    if (v45)
    {
      v55 = sub_253CCFD88();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_194;
      }

      v45 += v54 - v55;
    }

    v16 = __OFSUB__(v98, v54);
    v56 = &v98[-v54];
    if (v16)
    {
      goto LABEL_187;
    }

    v57 = sub_253CCFD78();
    if (!v45)
    {
      goto LABEL_205;
    }

    goto LABEL_122;
  }

  if (v95 < a1)
  {
    goto LABEL_185;
  }

  v70 = sub_253CCFD68();
  if (v70)
  {
    v71 = v70;
    v72 = sub_253CCFD88();
    if (__OFSUB__(a1, v72))
    {
      goto LABEL_189;
    }

    v45 = (a1 - v72 + v71);
    v46 = sub_253CCFD78();
    if (!v45)
    {
      goto LABEL_202;
    }

    goto LABEL_129;
  }

  sub_253CCFD78();
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  result = sub_253CCFD78();
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  return result;
}

unint64_t sub_25321C694()
{
  result = qword_27F5A28B8;
  if (!qword_27F5A28B8)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A28B8);
  }

  return result;
}

uint64_t sub_25321C6EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_25321C81C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v5 = [objc_opt_self() *a5];

  return v5;
}

id sub_25321C8F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_25321CA58(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher);
  *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher) = a1;
  v5 = a1;

  v6 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController);
  *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController) = a2;
  v7 = a2;

  v8 = [objc_opt_self() policyWithEntitlements_];
  v9 = *MEMORY[0x277CCEB08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_253D48D90;
  *(v10 + 32) = v8;
  sub_25321CDA4();
  v11 = v8;
  v12 = sub_253CD0A38();

  [v5 registerForMessage:v9 receiver:v2 policies:v12 selector:sel_handleFetchWithMessage_];
}

id sub_25321CBD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryInfoFetchController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryInfoFetchController(uint64_t a1)
{
  result = qword_281531068;
  if (!qword_281531068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25321CCFC(uint64_t a1)
{
  result = sub_253CCFF58();
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

unint64_t sub_25321CDA4()
{
  result = qword_281530E60;
  if (!qword_281530E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530E60);
  }

  return result;
}

void sub_25321CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_253222A08;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_25321CED4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_25321CF7C;
    v4[3] = &block_descriptor_124;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_25321CF90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_25321D020()
{
  v1 = [v0 activeDevices];
  sub_253200644(0, &qword_281530E40, 0x277D44170);
  v2 = sub_253CD0A58();

  return v2;
}

void sub_25321D0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25321E9B8;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_25321D16C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_25321D1E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_25321D290;
    v4[3] = &block_descriptor_106;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_25321D298(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_25321D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_25321CF90;
    v7[3] = a5;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_25321D3D8()
{
  v1 = OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_uuid;
  v2 = sub_253CCFF58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25321D488()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25321D528(uint64_t a1)
{
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253CD0908();
}

uint64_t sub_25321D5B0()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25321D668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v2 + 16);
    v6 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v6 + 24));
    sub_2532229B8((v6 + 16), &v9);
    os_unfair_lock_unlock((v6 + 24));
    v7 = v9;

    sub_2532216D0(v5);
    if (v7)
    {
      sub_253221160();
    }

    swift_unknownObjectRelease();
  }

  *(v3 + 32) = 0;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25321D734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v2 + 16);
    v6 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v6 + 24));
    sub_253222600((v6 + 16), &v9);
    os_unfair_lock_unlock((v6 + 24));
    v7 = v9;

    sub_2532216D0(v5);
    if (v7)
    {
      sub_253221160();
    }

    swift_unknownObjectRelease();
  }

  *(v3 + 32) = 0;
  swift_unknownObjectWeakAssign();

  sub_25320833C(v3 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25321D81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  sub_253286D54(&v7, a2);

  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_253CD0ED8();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t sub_25321D898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_253204E00(a2);

  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_253CD0ED8();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a3 = result == 0;
  return result;
}

char *sub_25321D908(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = v5;
  v54 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v53 = a1;
  v49 = sub_253CD0CE8();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253CD0CC8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_253CD0838();
  MEMORY[0x28223BE20](v11 - 8);
  v48 = OBJC_IVAR___HMDDiscoveryController_queue;
  v12 = sub_253200644(0, &qword_281530E48, 0x277D85C78);
  v47[0] = &unk_253D48FB0;
  v47[1] = v12;
  sub_253CD0828();
  v55 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530E50, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2498, &unk_253D47D20);
  sub_253222624(&qword_281530EC0, &unk_27F5A2498, &unk_253D47D20);
  sub_253CD0E38();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v49);
  v13 = sub_253CD0D28();
  v14 = v48;
  *&v5[v48] = v13;
  sub_253CD0968();
  sub_253CD07D8();
  v5[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] = 0;
  v15 = OBJC_IVAR___HMDDiscoveryController_visibleSFDevices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A24A8, &unk_253D490A0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F98];
  *(v16 + 24) = 0;
  *(v16 + 16) = v17;
  *&v5[v15] = v16;
  v18 = OBJC_IVAR___HMDDiscoveryController_assertions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A24B0, &unk_253D47D30);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = MEMORY[0x277D84FA0];
  *&v5[v18] = v19;
  v20 = &v5[OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory];
  v22 = v50;
  v21 = v51;
  *v20 = v50;
  v20[1] = v21;
  v23 = &v5[OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory];
  v24 = v52;
  v25 = v54;
  *v23 = v52;
  v23[1] = v25;
  v6[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] = v53;
  v26 = *&v6[v14];

  v27 = v26;
  v28 = v24();
  v30 = v29;
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 16);
  v33 = v27;
  v32();
  (*(v30 + 88))(1, ObjectType, v30);

  v34 = &v6[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
  *v34 = v28;
  v34[1] = v30;
  v35 = *&v6[v14];
  v36 = v22();
  v38 = v37;
  v39 = swift_getObjectType();
  v40 = *(v38 + 16);
  v41 = v35;
  v40();
  (*(v38 + 40))(0x60000400004, v39, v38);

  v42 = &v6[OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient];
  *v42 = v36;
  v42[1] = v38;
  v43 = type metadata accessor for DiscoveryController(0);
  v56.receiver = v6;
  v56.super_class = v43;
  v44 = objc_msgSendSuper2(&v56, sel_init);
  sub_25321E0F8();
  v45 = OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  sub_253222678(v44, &v44[v45]);
  swift_endAccess();

  return v44;
}

char *DiscoveryController.__allocating_init(discoveryNeedsAssertion:)(int a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_25321D908(a1, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *DiscoveryController.init(discoveryNeedsAssertion:)(int a1)
{
  v2 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v3 = sub_25321D908(a1, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_25321E0F8()
{
  v1 = v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient;
  v2 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 112);
  swift_unknownObjectRetain();

  v5(sub_2532225B8, v4, ObjectType, v2);
  swift_unknownObjectRelease();

  v6 = *(v1 + 8);
  v7 = swift_getObjectType();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v6 + 160);
  swift_unknownObjectRetain();

  v9(sub_2532225D8, v8, v7, v6);
  swift_unknownObjectRelease();

  v10 = *(v1 + 8);
  v11 = swift_getObjectType();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = *(v10 + 136);
  swift_unknownObjectRetain();

  v13(sub_2532225E0, v12, v11, v10);
  swift_unknownObjectRelease();
}

void sub_25321E2E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_25321F958(2u, a1);
  }
}

void sub_25321E344(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_25321F958(v3, a1);
  }
}

void sub_25321E3B4(uint64_t a1, uint64_t a2)
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
      v7 = *(a2 + 24);
      v8 = sub_253CD07C8();
      v9 = sub_253CD0C78();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2531F8000, v8, v9, "Queue setup after invalidation.", v10, 2u);
        MEMORY[0x259C040E0](v10, -1, -1);
      }

      sub_2532204FC(120.0, v6, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_25321E4E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_253CD07C8();
    v4 = sub_253CD0C78();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2531F8000, v3, v4, "RPClient was interrupted", v5, 2u);
      MEMORY[0x259C040E0](v5, -1, -1);
    }
  }
}

void sub_25321E5B0(void *a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    v8 = sub_253CD07C8();
    v9 = sub_253CD0C88();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v8, v9, a3, v10, 0xCu);
      sub_253206054(v11, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v11, -1, -1);
      MEMORY[0x259C040E0](v10, -1, -1);
    }
  }
}

void sub_25321E6EC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a1;
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v7, v8, "device changed from RPClient: %@", v9, 0xCu);
      sub_253206054(v10, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v10, -1, -1);
      MEMORY[0x259C040E0](v9, -1, -1);
    }
  }
}

uint64_t sub_25321E848(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v7;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v8 = v7;
    LOBYTE(v7) = sub_253CD08A8();
    result = (*(v3 + 8))(v6, v2);
    if (v7)
    {
      v9 = a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
      swift_beginAccess();
      v10 = *(v9 + 8);
      v11 = swift_unknownObjectRetain();
      sub_25321FEE4(v11, v10);
      swift_unknownObjectRelease();
      return sub_25321F3D0();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25321E9B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25321EA5C()
{
  v1 = sub_253CD01C8();
  v30 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v26 - v4;
  v5 = v0 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 56);
  swift_unknownObjectRetain();
  v9 = v8(ObjectType, v6);
  swift_unknownObjectRelease();
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v11 = 0;
    v31 = v9 & 0xFFFFFFFFFFFFFF8;
    v32 = v9 & 0xC000000000000001;
    v12 = (v30 + 32);
    v13 = MEMORY[0x277D84F90];
    v27 = i;
    v28 = v9;
    while (1)
    {
      if (v32)
      {
        v14 = MEMORY[0x259C00F30](v11, v9);
      }

      else
      {
        if (v11 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = [v14 idsDeviceIdentifier];
      if (v17)
      {
        v33 = v13;
        v18 = v17;
        sub_253CD0968();

        v19 = [v15 mediaRouteIdentifier];
        if (v19)
        {
          v20 = v19;
          sub_253CD0968();
        }

        v21 = v29;
        sub_253CD0198();

        v22 = *v12;
        (*v12)(v34, v21, v1);
        v13 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_25328330C(0, v13[2] + 1, 1, v13);
        }

        v24 = v13[2];
        v23 = v13[3];
        if (v24 >= v23 >> 1)
        {
          v13 = sub_25328330C((v23 > 1), v24 + 1, 1, v13);
        }

        v13[2] = v24 + 1;
        v22(v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v34, v1);
        i = v27;
        v9 = v28;
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_23:

  return v13;
}

uint64_t DiscoveryController.obtainNetworkVisibleDevicesProto()()
{
  v0 = sub_253CD01C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25321EA5C();
  v21 = MEMORY[0x277D84F90];
  v5 = v4[2];
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v19[1] = v4;
    v20 = v7;
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v9 = MEMORY[0x277D84F90];
    v10 = (v6 - 8);
    v11 = *(v6 + 56);
    v7(v3, v8, v0);
    while (1)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v12)
      {
        v13 = v12;
        sub_253CD01A8();
        v14 = sub_253CD0938();

        [v13 setIdsIdentifierString_];

        sub_253CD01B8();
        if (v15)
        {
          v16 = sub_253CD0938();

          [v13 setMediaRouteIdString_];
        }

        v17 = (*v10)(v3, v0);
        MEMORY[0x259C00990](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v9 = v21;
      }

      else
      {
        (*v10)(v3, v0);
      }

      v8 += v11;
      if (!--v5)
      {
        break;
      }

      v20(v3, v8, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t DiscoveryController.obtainSFVisibleDevicesProto()()
{
  v1 = sub_253CD01C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_253221A8C(*(v6 + 16), 0, &qword_27F5A3208, &unk_253D49090, MEMORY[0x277D0EFA8]);
    v9 = sub_253221B88(&v27, &v8[(*(v2 + 80) + 32) & ~*(v2 + 80)], v7, v6);
    sub_25320C5EC(v27);
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v27 = MEMORY[0x277D84F90];
  v10 = *(v8 + 2);
  if (v10)
  {
    v12 = *(v2 + 16);
    v11 = v2 + 16;
    v25[1] = v8;
    v26 = v12;
    v13 = &v8[(*(v11 + 64) + 32) & ~*(v11 + 64)];
    v14 = MEMORY[0x277D84F90];
    v15 = (v11 - 8);
    v16 = *(v11 + 56);
    v12(v4, v13, v1);
    while (1)
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v17)
      {
        v18 = v17;
        v19 = v11;
        sub_253CD01A8();
        v20 = sub_253CD0938();

        [v18 setIdsIdentifierString_];

        sub_253CD01B8();
        if (v21)
        {
          v22 = sub_253CD0938();

          [v18 setMediaRouteIdString_];
        }

        v23 = (*v15)(v4, v1);
        MEMORY[0x259C00990](v23);
        v11 = v19;
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_253CD0A78();
          v11 = v19;
        }

        sub_253CD0A88();
        v14 = v27;
      }

      else
      {
        (*v15)(v4, v1);
      }

      v13 += v16;
      if (!--v10)
      {
        break;
      }

      v26(v4, v13, v1);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

id sub_25321F354(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  v5 = sub_253CD0A38();

  return v5;
}

uint64_t sub_25321F3D0()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_253CD08A8();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (v0[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] != 1 || v0[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] == 1)
    {
      v8 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8];
      ObjectType = swift_getObjectType();
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      v11 = *(v8 + 176);
      swift_unknownObjectRetain();
      v12 = v0;
      v11(sub_2532225B0, v10, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25321F59C(NSObject *a1)
{
  if (!a1)
  {
    oslog = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2531F8000, oslog, v8, "Started sfDiscovery", v9, 2u);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v2 = a1;
  oslog = sub_253CD07C8();
  v3 = sub_253CD0C98();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_2531F8000, oslog, v3, "Unable to start sfDiscovery %@", v4, 0xCu);
    sub_253206054(v5, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v5, -1, -1);
    MEMORY[0x259C040E0](v4, -1, -1);

LABEL_6:
    v10 = oslog;

    goto LABEL_8;
  }

  v10 = a1;

LABEL_8:
}

uint64_t sub_25321F768()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  v7 = sub_253CD08A8();
  result = (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v9 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v10 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 184);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    v13 = swift_unknownObjectRelease();
    v14 = (*(v0 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory))(v13);
    v16 = v15;
    v17 = swift_getObjectType();
    (*(v16 + 16))(v6, v17, v16);
    (*(v16 + 88))(1, v17, v16);
    *v9 = v14;
    v9[1] = v16;
    swift_unknownObjectRelease();
    return sub_25321E0F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25321F958(unsigned __int8 a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28[-v6];
  v8 = sub_253CD0888();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_253CD08A8();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    result = [a2 idsIdentifier];
    if (result)
    {
      v15 = a1;
      v16 = result;
      v17 = sub_253CD0968();
      v19 = v18;

      v20 = [a2 mediaRouteID];
      if (v20)
      {
        v21 = v20;
        v22 = sub_253CD0968();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if ((v15 - 1) > 1)
      {

        v27 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v26);
        *&v28[-16] = v17;
        *&v28[-8] = v19;

        os_unfair_lock_lock((v27 + 24));
        sub_253222574((v27 + 16), v7);
        os_unfair_lock_unlock((v27 + 24));

        sub_253206054(v7, &qword_27F5A3CD0, &qword_253D49088);
      }

      else
      {
        v25 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v20);
        *&v28[-32] = v17;
        *&v28[-24] = v19;
        *&v28[-16] = v22;
        *&v28[-8] = v24;

        os_unfair_lock_lock(v25 + 6);
        sub_253222590(&v25[4]);
        os_unfair_lock_unlock(v25 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25321FC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_253217D84(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v16 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_253285CC0();
      v10 = v16;
    }

    v11 = *(v10 + 56);
    v12 = sub_253CD01C8();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a4, v11 + *(v13 + 72) * v8, v12);
    sub_25327A678(v8, v10);
    *a1 = v10;
    return (*(v13 + 56))(a4, 0, 1, v12);
  }

  else
  {
    v15 = sub_253CD01C8();
    return (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }
}

uint64_t sub_25321FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;

  swift_bridgeObjectRetain_n();
  sub_253CD0198();
  v10 = sub_253CD01C8();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_253278788(v9, a2, a3);
}

uint64_t sub_25321FEE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = sub_253CD0888();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_253CD08A8();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (*(v3 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) != 1 || *(v3 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) == 1)
    {
      v31 = v5;
      swift_unknownObjectRetain();
      v18 = sub_253CD07C8();
      v19 = sub_253CD0C78();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        ObjectType = swift_getObjectType();
        v22 = v33;
        *(v20 + 4) = (*(v33 + 32))(ObjectType, v33);
        swift_unknownObjectRelease();
        _os_log_impl(&dword_2531F8000, v18, v19, "Set up the companion link client, controlFlags = %llu", v20, 0xCu);
        MEMORY[0x259C040E0](v20, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
        v22 = v33;
      }

      v33 = swift_getObjectType();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34[0] = a1;
      v34[1] = v22;
      swift_unknownObjectRetain();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3200, &unk_253D49078);
      MEMORY[0x259C00030](v34, v24);
      v26 = v31;
      v25 = v32;
      (*(v6 + 16))(v32, v10, v31);
      v27 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      (*(v6 + 32))(v28 + v27, v25, v26);
      v29 = *(v22 + 184);

      v29(sub_2532224F4, v28, v33, v22);

      (*(v6 + 8))(v10, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2532202EC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
      v6 = sub_253CD07C8();
      v7 = sub_253CD0C98();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = a1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_2531F8000, v6, v7, "Error activating RPClient: '%@'", v8, 0xCu);
        sub_253206054(v9, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v9, -1, -1);
        MEMORY[0x259C040E0](v8, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
      sub_253CD00D8();
      sub_2532204FC(120.0, v15, v16);

      swift_unknownObjectRelease();
    }

    else
    {
      v12 = sub_253CD07C8();
      v13 = sub_253CD0C78();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2531F8000, v12, v13, "RPClient activated successfully", v14, 2u);
        MEMORY[0x259C040E0](v14, -1, -1);
      }
    }
  }
}

uint64_t sub_2532204FC(double a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v39 = sub_253CD0818();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_253CD0838();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = sub_253CD0858();
  v36 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v33 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  sub_253CD0848();
  sub_253CD0898();
  v35 = *(v14 + 8);
  v35(v17, v13);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock = a2;
  v45 = v32;
  swift_unknownObjectRetain();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3200, &unk_253D49078);
  v31 = v12;
  MEMORY[0x259C00030](&aBlock, v21);
  v22 = v12;
  v23 = v42;
  (*(v7 + 16))(v10, v22, v42);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  (*(v7 + 32))(v25 + v24, v10, v23);
  v48 = sub_2532223B4;
  v49 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_25321E9B8;
  v47 = &block_descriptor_90;
  v26 = _Block_copy(&aBlock);

  v27 = v34;
  sub_253CD0828();
  v43 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  v28 = v37;
  v29 = v39;
  sub_253CD0E38();
  MEMORY[0x259C00C40](v19, v27, v28, v26);
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
  (*(v7 + 8))(v31, v42);
  v35(v19, v36);
}

void sub_253220A48(uint64_t a1)
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2531F8000, v7, v8, "Restarting RPDevice discovery", v9, 2u);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
    sub_253CD00D8();
    v10 = v15;
    v11 = *&v6[OBJC_IVAR___HMDDiscoveryController_queue];
    *v4 = v11;
    (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
    v12 = v11;
    LOBYTE(v11) = sub_253CD08A8();
    (*(v2 + 8))(v4, v1);
    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      swift_unknownObjectRelease();
      sub_253CD00D8();
      sub_25321FEE4(v14[1], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_253220CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CD0818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_253CD0838();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR___HMDDiscoveryController_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321E9B8;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_253CD0828();
  v19 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_253220F60(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_253CD07C8();
  v7 = sub_253CD0CB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2531F8000, v6, v7, "Became asserted", v8, 2u);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 1;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    v9 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v5 = v9;
    (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
    v10 = v9;
    LOBYTE(v9) = sub_253CD08A8();
    (*(v3 + 8))(v5, v2);
    if (v9)
    {
      v11 = a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
      swift_beginAccess();
      v12 = *(v11 + 8);
      v13 = swift_unknownObjectRetain();
      sub_25321FEE4(v13, v12);
      swift_unknownObjectRelease();
      sub_25321F3D0();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_253221160()
{
  ObjectType = swift_getObjectType();
  v2 = sub_253CD0818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_253CD0838();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = ObjectType;
  aBlock[4] = sub_25322261C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321E9B8;
  aBlock[3] = &block_descriptor_136;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  sub_253CD0828();
  v15 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v8, v5, v10);
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v14);
}

void sub_253221428(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_253CD07C8();
  v7 = sub_253CD0CB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2531F8000, v6, v7, "No more assertions", v8, 2u);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 0;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    sub_25321F768();
    v9 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
    swift_beginAccess();
    v10 = v9[1];
    v11 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v5 = v11;
    (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
    swift_unknownObjectRetain();
    v12 = v11;
    v13 = sub_253CD08A8();
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      v15 = swift_unknownObjectRelease();
      v16 = (*(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory))(v15);
      v18 = v17;
      v19 = swift_getObjectType();
      (*(v18 + 16))(v12, v19, v18);
      (*(v18 + 40))(0x60000400004, v19, v18);
      *v9 = v16;
      v9[1] = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2532216DC(uint64_t a1, const char *a2, ...)
{

  oslog = sub_253CD07C8();
  v4 = sub_253CD0C88();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_253277BA8(*(a1 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason), *(a1 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason + 8), &v11);
    *(v5 + 12) = 2080;
    sub_253CCFF58();
    sub_253222070(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_253CD10E8();
    v9 = sub_253277BA8(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_2531F8000, oslog, v4, a2, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v6, -1, -1);
    MEMORY[0x259C040E0](v5, -1, -1);
  }
}

id DiscoveryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoveryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_253221A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_253221B88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_253CD01C8();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_253221E78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253221EB0(uint64_t a1)
{
  result = sub_253CCFF58();
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

uint64_t sub_253221F50(uint64_t a1)
{
  result = sub_253CD07E8();
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

uint64_t sub_253222070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2532220B8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for HomeDeviceEntity(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_2532222E0(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_253222344(v11, v14);
      sub_253222344(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2532222E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253222344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2532223B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v1 = *(v0 + 16);

  sub_253220A48(v1);
}

uint64_t objectdestroy_86Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2532224F4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v3 = *(v1 + 16);

  sub_2532202EC(a1, v3);
}

uint64_t sub_253222624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_253222678(uint64_t a1, void *a2)
{
  v2 = a2[1];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 24) = v2;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v2[12];

  v7(sub_253222924, v6, ObjectType, v2);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v2[9];

  v9(sub_25322292C, v8, ObjectType, v2);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v2[15];

  v11(sub_253222934, v10, ObjectType, v2);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v2[18];

  v13(sub_253222958, v12, ObjectType, v2);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v2[21];

  v15(sub_25322297C, v14, ObjectType, v2);
}

id sub_253222A10(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState];
  *v3 = 0;
  v3[4] = 1;
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isFirstCloudImportComplete] = 2;
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isSignedIntoiCloud] = 2;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo] = 1;
  v4 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSerialNumber] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoModelIdentifier] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoRegionInfo] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___nearbyVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer] = xmmword_253D490B0;
  v5 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome] = 1;
  v8 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents];
  *v9 = 0;
  v9[8] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress] = 1;
  v10 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags];
  *v10 = 0;
  v10[8] = 1;
  v7(&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier], 1, 1, v6);
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isCurrentDevicePrimaryResident] = 2;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_253222CC0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState + 4) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) hasManatee];
  *v1 = result;
  *(v1 + 4) = 0;
  return result;
}

unint64_t sub_253222EF8()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) numHomes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_253222F8C()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceMediaRouteIdentifier];
    if (v5)
    {
      v6 = v5;
      v4 = sub_253CD0968();
      v8 = v7;
    }

    else
    {
      v4 = 0;
      v8 = 0;
    }

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_25322572C(v9, v10);
  }

  sub_253225740(v2, v3);
  return v4;
}

id sub_2532230A4()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_253223178(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_253CD0938();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_253223268()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2532230A4();
    v6 = [v5 softwareVersion];

    if (v6)
    {
      v7 = [v6 versionString];

      v4 = sub_253CD0968();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_25322572C(v10, v11);
  }

  sub_253225740(v2, v3);
  return v4;
}

uint64_t sub_25322338C(void *a1, SEL *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v8 = sub_2532230A4();
    v9 = [v8 *a2];

    if (v9)
    {
      v6 = sub_253CD0968();
      v11 = v10;
    }

    else
    {
      v6 = 0;
      v11 = 0;
    }

    v12 = *v3;
    v13 = v3[1];
    *v3 = v6;
    v3[1] = v11;

    sub_25322572C(v12, v13);
  }

  sub_253225740(v4, v5);
  return v6;
}

uint64_t sub_2532234E0()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto;
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) obtainNetworkInfoProto];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33A8, &qword_253D491B8);
    v2 = sub_253CD08D8();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25322363C()
{
  v0 = sub_2532234E0();
  if (*(v0 + 16) && (v1 = sub_253217D84(0x496B726F7774654ELL, 0xEB000000006F666ELL), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_2532236EC(v3, &qword_27F5A33A0, 0x277CD1718);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2532236EC(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  sub_253CD1028();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_253205FF8(i, v9);
    sub_253200644(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_253CD1008();
    sub_253CD1038();
    sub_253CD1048();
    sub_253CD1018();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_2532237F0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  sub_25328BEB8(0, v3 & ~(v3 >> 63), 0);
  v4 = v13;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C00F30](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_253CD0ED8();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25328BEB8((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_253CD0ED8();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

id sub_2532239B4(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_253200644(0, a4, a5);
  v9 = sub_253CD0A38();

  return v9;
}

uint64_t sub_253223A38()
{
  v0 = sub_2532234E0();
  if (*(v0 + 16) && (v1 = sub_253217D84(0xD000000000000012, 0x8000000253D4F8D0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_2532236EC(v3, &qword_27F5A3398, 0x277CD1720);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_253223B34(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  v5 = sub_253CD0A38();

  return v5;
}

uint64_t sub_253223BC4(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
    v5 = sub_253CD0A58();

    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_253223C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  *(a1 + *a4) = sub_253CD0A58();
}

uint64_t sub_253223DE4()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_253223D30();
    if (v5 && (v6 = v5, v7 = [v5 manufacturer], v6, v7))
    {
      v4 = sub_253CD0968();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_25322572C(v10, v11);
  }

  sub_253225740(v2, v3);
  return v4;
}

void sub_253223EC0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_253CD0968();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  v11 = a1;
  sub_25322572C(v9, v10);
}

uint64_t sub_253223F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  swift_beginAccess();
  sub_2532168A0(v1 + v9, v8, &qword_27F5A3378, &qword_253D491B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_25322564C(v8, a1);
  }

  sub_2532255E4(v8);
  v12 = sub_253223D30();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 uuid];

    sub_253CCFF38();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_253CCFF58();
  (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
  sub_2532168A0(a1, v6, &unk_27F5A2AD0, &unk_253D486A0);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_2532256BC(v6, v1 + v9);
  return swift_endAccess();
}

id sub_2532241FC()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_253223D30();
    if (v4)
    {
      v5 = v4;
      v3 = [v4 pairingIdentity];

      if (v3)
      {
        v6 = [v3 publicPairingIdentity];

        v3 = [v6 protoPayload];
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_2531FD41C(v7);
  }

  sub_2531FD42C(v2);
  return v3;
}

id sub_253224378()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_253223D30();
    v3 = [v4 home];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2531FD41C(v5);
  }

  sub_2531FD42C(v2);
  return v3;
}

id sub_253224494()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories + 8) != 1)
  {
    return *v1;
  }

  result = sub_253224378();
  if (result)
  {
    v3 = result;
    v4 = [result appleMediaAccessories];

    sub_253200644(0, &qword_281530E38, off_27971A018);
    v5 = sub_253CD0A58();

    if (v5 >> 62)
    {
      v7 = sub_253CD0ED8();

      if (v7 < 0)
      {
        __break(1u);
      }

      result = v7;
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v6;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2532245D0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents + 8) != 1)
  {
    return *v1;
  }

  result = sub_253224378();
  if (result)
  {
    v3 = result;
    v4 = [result residentDeviceManager];

    v5 = [v4 residentDevices];
    swift_unknownObjectRelease();
    sub_253200644(0, &unk_27F5A3380, off_27971A218);
    v6 = sub_253CD0A58();

    if (v6 >> 62)
    {
      v8 = sub_253CD0ED8();

      if (v8 < 0)
      {
        __break(1u);
      }

      result = v8;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v7;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_253224778(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = [*(v4 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2532249D0(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v11 = sub_253223D30();
    if (v11 && (v12 = v11, v13 = [v11 *a2], v12, v13))
    {
      v8 = [v13 protoPayload];
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v4 + v6);
    *(v4 + v6) = v8;
    v15 = v8;
    a3(v14);
  }

  a4(v7);
  return v8;
}

id sub_253224B30()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceRawProblemFlags];
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_253224BBC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_253CCFF58();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_253CCFF18();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_253224CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier;
  swift_beginAccess();
  sub_2532168A0(v1 + v13, v12, &qword_27F5A3378, &qword_253D491B0);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    return sub_25322564C(v12, a1);
  }

  sub_2532255E4(v12);
  v14 = [*(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceIDSIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_253CCFF38();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_253CCFF58();
  (*(*(v18 - 8) + 56))(v6, v16, 1, v18);
  sub_25322564C(v6, a1);
  sub_2532168A0(a1, v10, &unk_27F5A2AD0, &unk_253D486A0);
  (*(v4 + 56))(v10, 0, 1, v3);
  swift_beginAccess();
  sub_2532256BC(v10, v1 + v13);
  return swift_endAccess();
}

void sub_253224F98(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  if (a3)
  {
    sub_253CCFF38();
    v14 = sub_253CCFF58();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_253CCFF58();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  sub_25322564C(v13, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  v16 = *a4;
  swift_beginAccess();
  v17 = a1;
  sub_2532256BC(v9, &a1[v16]);
  swift_endAccess();
}

uint64_t sub_2532251DC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

id sub_253225264(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(uint64_t a1)
{
  result = qword_27F5A3358;
  if (!qword_27F5A3358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253225474(uint64_t a1)
{
  sub_253225580(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_253225580(uint64_t a1)
{
  if (!qword_27F5A3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5A2AD0, &unk_253D486A0);
    v1 = sub_253CD0DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5A3368);
    }
  }
}

uint64_t sub_2532255E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25322564C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532256BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25322572C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_253225740(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_25322575C()
{
  v1[26] = v0;
  v2 = sub_253CD0818();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_253CD0838();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B8, &unk_253D491E0);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532258E0, 0, 0);
}

uint64_t sub_2532258E0()
{
  v1 = [*(v0 + 208) dataSource];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_253225B04;
    swift_continuation_init();
    *(v0 + 136) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    sub_253226814();
    sub_253CD0AC8();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_253225DFC;
    *(v0 + 104) = &block_descriptor_3;
    [v2 detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler_];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_253225B04()
{

  return MEMORY[0x2822009F8](sub_253225BE4, 0, 0);
}

uint64_t sub_253225BE4()
{
  v1 = v0[32];
  v2 = v0[29];
  v14 = v0[31];
  v15 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[24];
  swift_unknownObjectRelease();
  v13 = [v5 workQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v0[22] = sub_253226878;
  v0[23] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_25321E9B8;
  v0[21] = &block_descriptor_16;
  v8 = _Block_copy(v0 + 18);
  v9 = v5;
  v10 = v6;
  sub_253CD0828();
  v0[25] = MEMORY[0x277D84F90];
  sub_253226898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_2532268F0();
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v1, v2, v8);
  _Block_release(v8);

  (*(v3 + 8))(v2, v4);
  (*(v14 + 8))(v1, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_253225DFC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B8, &unk_253D491E0);
  return sub_253CD0AE8();
}

id sub_253225E5C(void *a1, void *a2)
{
  result = [a1 _isNearbyDiscoveryActive];
  if (result)
  {
    v5 = [a2 accessoriesNotOnWiFi];
    if (!v5)
    {
      sub_253CCFF58();
      sub_253CD0A58();
      v5 = sub_253CD0A38();
    }

    [a1 setNearbyAccessoryUUIDsNotOnCurrentNetwork_];

    return [a1 _updateSymptomsForAllRegisteredAccessories];
  }

  return result;
}

uint64_t sub_25322609C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_253226144;

  return sub_25322575C();
}

uint64_t sub_253226144()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_25322628C@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() driver];
  v3 = sub_2532340C0();

  if (v3)
  {
    type metadata accessor for AssertionHandle();
    v4 = swift_allocObject();
    sub_2532265BC(v3, 0xD000000000000014, 0x8000000253D4F960, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B0, &qword_253D491C0);
  v5 = sub_253CD0DC8();

  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_2532264A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253226510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2532265BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = &off_2864FAF40;
  swift_unknownObjectWeakAssign();
  type metadata accessor for AssertionHandle.Assertion(0);
  v8 = swift_allocObject();
  sub_253CCFF48();
  if (!a3)
  {
    a2 = sub_253CCFF08();
    a3 = v9;
  }

  v10 = (v8 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason);
  *v10 = a2;
  v10[1] = a3;
  *(a4 + 16) = v8;
  v11 = *(a1 + OBJC_IVAR___HMDDiscoveryController_assertions);

  os_unfair_lock_lock((v11 + 24));
  sub_2532266E8((v11 + 16), &v22);
  os_unfair_lock_unlock((v11 + 24));
  v12 = v22;

  sub_2532216C4(v8, v13, v14, v15, v16, v17, v18, v19, v21, v22);
  if (v12 == 1)
  {
    sub_253220C8C();
  }

  return a4;
}

uint64_t sub_253226704()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25320C7A8;

  return sub_25322609C(v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_253226814()
{
  result = qword_281530D40;
  if (!qword_281530D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D40);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_253226898()
{
  result = qword_281530ED0;
  if (!qword_281530ED0)
  {
    sub_253CD0818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530ED0);
  }

  return result;
}

unint64_t sub_2532268F0()
{
  result = qword_281530EC8;
  if (!qword_281530EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A31E8, &qword_253D48EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530EC8);
  }

  return result;
}

id sub_253226984()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_253226AD4()
{
  v1 = v0;
  v2 = _s15SwiftExtensionsCMa_0();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer] = 0;
  v4 = [v0 workQueue];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DispatchQueueMonitor();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_dispatchQueueMonitor] = sub_253232BF0(v5, 0x8AC7230489E80000, 0, 0x8AC7230489E80000, 0);
    v7.receiver = v3;
    v7.super_class = v2;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v1 setSwiftExtensions_];
  }

  else
  {
    __break(1u);
  }
}

id sub_253226C08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - v2;
  v3 = [v0 _swiftExtensions];
  type metadata accessor for HomeGraphIndexer(0);
  v4 = v0;
  sub_2532517BC(v4);
  *&v3[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer] = v5;

  result = [v4 messageDispatcher];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  v8 = *MEMORY[0x277CD01E8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v9 = swift_allocObject();
  v26 = xmmword_253D48D90;
  *(v9 + 16) = xmmword_253D48D90;
  v10 = objc_opt_self();
  *(v9 + 32) = [v10 policyWithEntitlements_];
  sub_25321CDA4();
  v11 = sub_253CD0A38();

  [v7 registerForMessage:v8 receiver:v4 policies:v11 selector:sel_handleFindVendorAccessoryRequest_];

  result = [v4 messageDispatcher];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v13 = sub_253CD0938();
  v14 = swift_allocObject();
  *(v14 + 16) = v26;
  *(v14 + 32) = [objc_opt_self() defaultSecurePolicy];
  v15 = sub_253CD0A38();

  [v12 registerForMessage:v13 receiver:v4 policies:v15 selector:sel_handleRemoteEnergyKitClearAllMessage_];

  result = [v4 messageDispatcher];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_253CD0C68();
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 32) = [v10 policyWithEntitlements_];
  v19 = sub_253CD0A38();

  [v16 registerForMessage:v17 receiver:v4 policies:v19 selector:sel_handleLocalEnergyKitClearAllMessage_];

  result = isInternalBuild();
  if (result)
  {
    v20 = sub_253CD0B58();
    v21 = v25;
    (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v4;
    v23 = v4;
    sub_25324690C(0, 0, v21, &unk_253D49298, v22);
  }

  return result;
}

uint64_t sub_253227004()
{
  v1 = [*(v0 + 16) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_dispatchQueueMonitor];
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_25322709C, v2, 0);
}

uint64_t sub_25322709C()
{
  sub_253232E7C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2532272D4(void *a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_253227360, 0, 0);
}

uint64_t sub_253227360()
{
  v1 = type metadata accessor for NetworkMismatchDetector();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy23NetworkMismatchDetector_dataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2864FACA8;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v0[3].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v3 = swift_task_alloc();
  v0[4].receiver = v3;
  *v3 = v0;
  v3[1] = sub_253227464;
  receiver = v0[2].receiver;

  return sub_253282834(receiver);
}

uint64_t sub_253227464(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_253227564, 0, 0);
}

uint64_t sub_253227564()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = *(v0 + 72);
  if (v1)
  {
    v5 = *(v0 + 48);
    v5[2](v5, *(v0 + 72));

    _Block_release(v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_253227628()
{
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25320C7A8;

  return sub_253211F4C();
}

uint64_t sub_253227848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_253227868, 0, 0);
}

uint64_t sub_253227868()
{
  v1 = [*(v0 + 24) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_253227974;

    return sub_253251E04();
  }

  else
  {
    **(v0 + 16) = *(v0 + 32) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_253227974()
{

  return MEMORY[0x2822009F8](sub_253227A8C, 0, 0);
}

uint64_t sub_253227BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253227848(a1, v4, v5, v6);
}

uint64_t sub_253227C70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25320C7A8;

  return sub_25322760C();
}

uint64_t sub_253227D1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25320C7A8;

  return sub_2532272D4(v2, v3, v4);
}

uint64_t sub_253227DD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25320C7A8;

  return v6();
}

uint64_t sub_253227EB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25320C438;

  return v7();
}

uint64_t sub_253227FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_25322825C(a3, v23 - v10);
  v12 = sub_253CD0B58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2532282CC(v11);
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

  sub_253CD0B48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_253CD0AB8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_253CD0988() + 32;
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

    sub_2532282CC(a3);

    return v21;
  }

LABEL_8:
  sub_2532282CC(a3);
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

uint64_t sub_25322825C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532282CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253228334(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25322842C;

  return v6(a1);
}

uint64_t sub_25322842C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_253228524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C7A8;

  return sub_253228334(a1, v4);
}

uint64_t sub_2532285DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C438;

  return sub_253228334(a1, v4);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2532286D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253226FE4(a1, v4, v5, v6);
}

id sub_2532287A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v45 - v1;
  v3 = sub_253CD0208();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_253CD02D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CD1718]) init];
  if (v14)
  {
    v46 = v6;
    v47 = v4;
    sub_253CD0118();
    v15 = sub_253CD0938();

    [v14 setMacAddress_];

    sub_253CD0158();
    v16 = sub_253CD0938();

    [v14 setIfaceName_];

    sub_253CD0168();
    (*(v8 + 16))(v11, v13, v7);
    v17 = (*(v8 + 88))(v11, v7);
    v18 = *MEMORY[0x277D0EFB8];
    v48 = v3;
    if (v17 == v18 || v17 == *MEMORY[0x277D0EFC0])
    {
      (*(v8 + 8))(v13, v7);
    }

    else
    {
      v19 = *MEMORY[0x277D0EFC8];
      v20 = *(v8 + 8);
      v21 = v17;
      v20(v13, v7);
      if (v21 != v19)
      {
        v20(v11, v7);
      }
    }

    v22 = v46;
    v23 = sub_253CD0938();

    [v14 setType_];

    v24 = sub_253CD0128();
    sub_253228D48(v24);

    v25 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v26 = sub_253CD0A38();

    v27 = [v25 initWithArray_];

    [v14 setIpv4Addresses_];
    v28 = sub_253CD0138();
    sub_253228D48(v28);

    v29 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v30 = sub_253CD0A38();

    v31 = [v29 initWithArray_];

    [v14 setIpv6Addresses_];
    sub_253CD0108();
    v33 = v47;
    v32 = v48;
    if ((*(v47 + 48))(v2, 1, v48) == 1)
    {
      sub_25322CB04(v2);
    }

    else
    {
      (*(v33 + 32))(v22, v2, v32);
      v34 = [objc_allocWithZone(MEMORY[0x277CD1710]) init];
      if (v34)
      {
        v35 = v34;
        v36 = sub_253CD01D8();
        v38 = v37;
        v39 = sub_253CCFE68();
        sub_25321C6EC(v36, v38);
        [v35 setSsid_];

        v40 = sub_253CD01F8();
        v42 = v41;
        v43 = sub_253CCFE68();
        sub_25321C6EC(v40, v42);
        [v35 setBssid_];

        [v14 setWifiInfo_];
      }

      (*(v33 + 8))(v22, v32);
    }
  }

  return v14;
}

uint64_t sub_253228D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25328BF3C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25328BF3C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2531FF150(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_253228E48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = sub_253CD02D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 ifaceName];
  if (v11)
  {
    v12 = v11;
    v13 = sub_253CD0968();

    v14 = [a1 type];
    if (v14)
    {
      v37 = v13;
      v15 = v14;
      v16 = sub_253CD0968();
      v18 = v17;

      v19 = [a1 macAddress];
      if (v19)
      {
        v20 = v19;
        v36 = a2;
        v21 = sub_253CD0968();
        v35[1] = v22;
        v35[2] = v21;

        if (v16 == 0x74656E7265687465 && v18 == 0xE800000000000000 || (sub_253CD1118() & 1) != 0)
        {

          v23 = MEMORY[0x277D0EFC0];
        }

        else if (v16 == 0x3132303865656569 && v18 == 0xE900000000000031)
        {

          v23 = MEMORY[0x277D0EFC8];
        }

        else
        {
          v34 = sub_253CD1118();

          v23 = MEMORY[0x277D0EFB8];
          if (v34)
          {
            v23 = MEMORY[0x277D0EFC8];
          }
        }

        v24 = v36;
        (*(v8 + 104))(v10, *v23, v7);
        v25 = [a1 ipv4Addresses];
        if (!v25 || (v38 = 0, v26 = v25, sub_253CD0A48(), v26, !v38))
        {
        }

        v27 = [a1 ipv6Addresses];
        if (!v27 || (v38 = 0, v28 = v27, sub_253CD0A48(), v28, !v38))
        {
        }

        v29 = sub_253CD0208();
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        sub_253CD0148();
        v30 = sub_253CD0178();
        return (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
      }
    }
  }

  v32 = sub_253CD0178();
  v33 = *(*(v32 - 8) + 56);

  return v33(a2, 1, 1, v32);
}

id sub_2532292B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD1720]) init];
  if (v0)
  {
    sub_253CD0238();
    v1 = sub_253CD0938();

    [v0 setIfaceName_];

    [v0 setIsPrimary_];
    sub_253CD0288();
    if (v2)
    {
      v3 = sub_253CD0938();

      [v0 setConfirmedIfaceName_];
    }

    v4 = sub_253CD0248();
    sub_253228D48(v4);

    v5 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v6 = sub_253CD0A38();

    v7 = [v5 initWithArray_];

    [v0 setIpv4Addresses_];
    v8 = sub_253CD0258();
    sub_253228D48(v8);

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v10 = sub_253CD0A38();

    v11 = [v9 initWithArray_];

    [v0 setIpv6Addresses_];
    sub_253CD0268();
    if (v12)
    {
      v13 = sub_253CD0938();

      [v0 setNetworkSignatureV4_];
    }

    sub_253CD0218();
    if (v14)
    {
      v15 = sub_253CD0938();

      [v0 setRouterIPv4_];
    }

    sub_253CD0278();
    if (v16)
    {
      v17 = sub_253CD0938();

      [v0 setNetworkSignatureV6_];
    }

    sub_253CD0228();
    if (v18)
    {
      v19 = sub_253CD0938();

      [v0 setRouterIPv6_];
    }
  }

  return v0;
}

uint64_t sub_25322953C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 ifaceName];
  if (v4)
  {
    v5 = v4;
    sub_253CD0968();

    [a1 isPrimary];
    v6 = [a1 confirmedIfaceName];
    if (v6)
    {
      v7 = v6;
      sub_253CD0968();
    }

    v9 = [a1 ipv4Addresses];
    if (v9)
    {
      v10 = v9;
      sub_253CD0A48();
    }

    v11 = [a1 routerIPv4];
    if (v11)
    {
      v12 = v11;
      sub_253CD0968();
    }

    v13 = [a1 networkSignatureV4];
    if (v13)
    {
      v14 = v13;
      sub_253CD0968();
    }

    v15 = [a1 ipv6Addresses];
    if (v15)
    {
      v16 = v15;
      sub_253CD0A48();
    }

    v17 = [a1 routerIPv6];
    if (v17)
    {
      v18 = v17;
      sub_253CD0968();
    }

    v19 = [a1 networkSignatureV6];
    if (v19)
    {
      v20 = v19;
      sub_253CD0968();
    }

    sub_253CD0298();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v21 = sub_253CD02B8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, v8, 1, v21);
}

void __swiftcall InterfaceInfo.init(name:type:hwAddr:)(HomeKitDaemonLegacy::InterfaceInfo *__return_ptr retstr, Swift::String name, Swift::String type, Swift::String hwAddr)
{
  retstr->name = name;
  retstr->type = type;
  retstr->hwAddr = hwAddr;
}

id NetworkInfoController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkInfoController.init()()
{
  type metadata accessor for NetworkInfoSCDataSource();
  v0 = swift_allocObject();
  v1 = sub_25322C7CC(v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

Swift::Void __swiftcall NetworkInfoController.start()()
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_253CD0938();
  v3 = SCDynamicStoreCreate(v1, v2, 0, 0);

  v4 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  *(v0 + OBJC_IVAR___HMDNetworkInfoController_store) = v3;
}

void sub_253229AF8()
{
  v310 = sub_253CD02B8();
  v313 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v2 = v306 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_253CD0178();
  v4 = *(v3 - 8);
  v321 = v3;
  NetworkServiceEntity = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v306 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v319 = v306 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v343 = v306 - v10;
  v11 = sub_253CD02D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v333 = v306 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v306 - v15;
  v17 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  if (!v17)
  {
    v114 = sub_253CD07C8();
    v115 = sub_253CD0C98();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_2531F8000, v114, v115, "No store", v116, 2u);
      MEMORY[0x259C040E0](v116, -1, -1);
    }

    goto LABEL_91;
  }

  v324 = v0;
  v346 = v17;
  sub_25322CB6C();
  v20 = *(v18 + 16);
  if (!v20)
  {

    v114 = sub_253CD07C8();
    v128 = sub_253CD0C98();
    if (os_log_type_enabled(v114, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_2531F8000, v114, v128, "Couldn't obtain interfaces", v129, 2u);
      MEMORY[0x259C040E0](v129, -1, -1);
    }

LABEL_91:
    return;
  }

  v306[0] = v2;
  v323 = OBJC_IVAR___HMDNetworkInfoController_logger;
  LODWORD(v334) = *MEMORY[0x277D0EFC8];
  v22 = *(v12 + 104);
  v21 = (v12 + 104);
  v339 = (v21 - 96);
  v340 = v22;
  v309 = *MEMORY[0x277D0EFC0];
  v338 = *MEMORY[0x277CE1648];
  v320 = *MEMORY[0x277CE1688];
  v337 = *MEMORY[0x277CBECE8];
  v312 = *MEMORY[0x277CE1728];
  v341 = v21;
  v23 = *MEMORY[0x277CE1690];
  v317 = (v21 - 88);
  v318 = v23;
  v316 = NetworkServiceEntity + 1;
  v311 = *MEMORY[0x277CE1758];
  v306[1] = v18;
  v332 = v6;
  v344 = (v18 + 72);
  v308 = *MEMORY[0x277CE1660];
  v24 = MEMORY[0x277D84F90];
  *&v19 = 136316162;
  v307 = v19;
  v326 = v11;
  v342 = v16;
  do
  {
    v335 = v24;
    v25 = *(v344 - 5);
    v347 = *(v344 - 4);
    v27 = *(v344 - 3);
    v26 = *(v344 - 2);
    v29 = *(v344 - 1);
    v28 = *v344;
    v340(v16, v334, v11);
    v348 = v26;
    v30 = v27 == 0x3132303845454549 && v26 == 0xE900000000000031;
    NetworkGlobalEntity = v27;
    v336 = v29;
    if (!v30)
    {
      if ((sub_253CD1118() & 1) == 0)
      {
        v31 = v27 == 0x74656E7265687445 && v348 == 0xE800000000000000;
        if (!v31 && (sub_253CD1118() & 1) == 0)
        {
          (*v339)(v16, v11);
          v24 = v335;
          goto LABEL_57;
        }
      }

      if (v27 == 0x74656E7265687445 && v348 == 0xE800000000000000)
      {
        goto LABEL_19;
      }
    }

    if (sub_253CD1118())
    {
LABEL_19:
      v33 = *v339;

      v33(v16, v11);
      v34 = v16;
      v35 = v11;
      v340(v34, v309, v11);
    }

    else
    {
      v35 = v11;
    }

    v36 = MEMORY[0x277D84F90];
    *&v358 = MEMORY[0x277D84F90];
    *&v350 = MEMORY[0x277D84F90];
    v37 = sub_253CD0938();
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v337, v338, v37, v320);

    v330 = NetworkInterfaceEntity;
    v39 = sub_25322CE6C(v346, NetworkInterfaceEntity);
    v40 = sub_25322BF28(v39, &unk_27F5A3460, &qword_253D49410, &unk_27F5A3C20, &qword_253D493F8);

    v345 = v28;
    if (v40)
    {
      v41 = sub_253CD0968();
      if (*(v40 + 16))
      {
        v43 = sub_253217D84(v41, v42);
        v45 = v44;

        if (v45)
        {
          v46 = *(*(v40 + 56) + 8 * v43);

          swift_beginAccess();
          *&v358 = v46;
        }

        else
        {
        }

        v35 = v326;
      }

      else
      {
      }
    }

    v47 = sub_253CD0938();
    v48 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v337, v338, v47, v318);

    v329 = v48;
    v49 = sub_25322CE6C(v346, v48);
    v50 = sub_25322BF28(v49, &qword_27F5A30D0, &qword_253D48D58, &qword_27F5A3448, &qword_253D493F0);

    v331 = v20;
    if (v50)
    {
      v51 = sub_253CD0968();
      if (*(v50 + 16))
      {
        v53 = sub_253217D84(v51, v52);
        v55 = v54;

        if (v55)
        {
          v56 = *(*(v50 + 56) + 8 * v53);

          v57 = sub_2532237F0(v56);

          if (!v57)
          {
            v57 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          v328 = v57;
          *&v350 = v57;
        }

        else
        {

          v328 = MEMORY[0x277D84F90];
        }

        v35 = v326;
      }

      else
      {

        v328 = v36;
      }
    }

    else
    {
      v328 = v36;
    }

    v58 = sub_253CD0208();
    v59 = *(*(v58 - 8) + 56);
    v59(v343, 1, 1, v58);
    v60 = v333;
    v340(v333, v334, v35);
    v61 = sub_253CD02C8();
    v62 = v35;
    v327 = *v339;
    v327(v60, v35);
    v63 = v347;
    if (v61)
    {
      v64 = sub_253CD0938();
      v65 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v337, v338, v64, v308);

      v66 = sub_25322CE6C(v346, v65);
      if (*(v66 + 16) && (v67 = sub_253217D84(0x4449535342, 0xE500000000000000), (v68 & 1) != 0) && (v349[0] = *(*(v66 + 56) + 8 * v67), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
      {
        v69 = *(&v366 + 1);
        if (*(v66 + 16))
        {
          v314 = *(&v366 + 1);
          v315 = v366;
          v70 = sub_253217D84(1145656147, 0xE400000000000000);
          if (v71)
          {
            v72 = *(*(v66 + 56) + 8 * v70);
            swift_unknownObjectRetain();

            v349[0] = v72;
            v73 = swift_dynamicCast();
            v74 = v314;
            if (v73)
            {
              v75 = v319;
              sub_253CD01E8();

              v76 = v343;
              sub_25322CB04(v343);
              v59(v75, 0, 1, v58);
              sub_25322D078(v75, v76);
            }

            else
            {

              sub_25321C6EC(v315, v74);
            }

            v62 = v326;
            v63 = v347;
            goto LABEL_49;
          }

          v105 = v314;
          v104 = v315;
        }

        else
        {
          v103 = v366;

          v104 = v103;
          v105 = v69;
        }

        sub_25321C6EC(v104, v105);
      }

      else
      {
      }

      v62 = v326;
    }

LABEL_49:
    v347 = v25;

    v77 = sub_253CD07C8();
    v78 = sub_253CD0C88();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      LODWORD(v314) = v78;
      v80 = v79;
      v315 = swift_slowAlloc();
      *&v366 = v315;
      *v80 = v307;

      v82 = MEMORY[0x277D837D0];
      v83 = MEMORY[0x259C009D0](v81, MEMORY[0x277D837D0]);
      v85 = v84;

      v86 = sub_253277BA8(v83, v85, &v366);

      *(v80 + 4) = v86;
      *(v80 + 12) = 2080;

      v88 = v82;
      v89 = v348;
      v90 = MEMORY[0x259C009D0](v87, v88);
      v92 = v91;

      v93 = sub_253277BA8(v90, v92, &v366);

      *(v80 + 14) = v93;
      *(v80 + 22) = 2080;

      v94 = sub_253277BA8(v336, v345, &v366);

      *(v80 + 24) = v94;
      *(v80 + 32) = 2080;

      v95 = sub_253277BA8(v347, v63, &v366);

      *(v80 + 34) = v95;
      *(v80 + 42) = 2080;

      v96 = sub_253277BA8(NetworkGlobalEntity, v89, &v366);

      *(v80 + 44) = v96;
      _os_log_impl(&dword_2531F8000, v77, v314, "ObtainedIP: %s  %s mac: %s name: %s type: %s", v80, 0x34u);
      v97 = v315;
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v97, -1, -1);
      v98 = v80;
      v99 = v326;
      MEMORY[0x259C040E0](v98, -1, -1);

      v100 = v342;
    }

    else
    {

      v100 = v342;
      v99 = v62;
    }

    (*v317)(v333, v100, v99);
    sub_25322D008(v343, v319);

    sub_253CD0148();

    v24 = v335;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2532837CC(0, v24[2] + 1, 1, v24);
    }

    v102 = v24[2];
    v101 = v24[3];
    v11 = v99;
    v16 = v342;
    if (v102 >= v101 >> 1)
    {
      v24 = sub_2532837CC((v101 > 1), v102 + 1, 1, v24);
    }

    v20 = v331;

    sub_25322CB04(v343);
    v327(v16, v11);
    v24[2] = v102 + 1;
    (NetworkServiceEntity[1].isa)(v24 + ((LOBYTE(NetworkServiceEntity[2].data) + 32) & ~LOBYTE(NetworkServiceEntity[2].data)) + NetworkServiceEntity[2].info * v102, v332, v321);

LABEL_57:
    v344 += 6;
    --v20;
  }

  while (v20);

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v337, v338, v320);
  v106 = sub_25322CE6C(v346, NetworkGlobalEntity);
  v107 = v106;
  if (*(v106 + 16) && (v108 = sub_253217D84(0x537972616D697250, 0xEE00656369767265), (v109 & 1) != 0))
  {
    v110 = *(*(v107 + 56) + 8 * v108);
    swift_unknownObjectRetain();

    *&v358 = v110;
    v111 = swift_dynamicCast();
    v112 = v366;
    if (!v111)
    {
      v112 = 0;
    }

    v344 = v112;
    if (v111)
    {
      v113 = *(&v366 + 1);
    }

    else
    {
      v113 = 0;
    }
  }

  else
  {

    v344 = 0;
    v113 = 0;
  }

  v117 = sub_253CD07C8();
  v118 = sub_253CD0C78();

  v119 = os_log_type_enabled(v117, v118);
  v335 = v24;
  if (v119)
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v366 = v121;
    *v120 = 136315138;
    if (v113)
    {
      v122 = v344;
    }

    else
    {
      v122 = 7104878;
    }

    if (v113)
    {
      v123 = v113;
    }

    else
    {
      v123 = 0xE300000000000000;
    }

    v124 = sub_253277BA8(v122, v123, &v366);

    *(v120 + 4) = v124;
    _os_log_impl(&dword_2531F8000, v117, v118, "primaryServiceName %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121);
    MEMORY[0x259C040E0](v121, -1, -1);
    MEMORY[0x259C040E0](v120, -1, -1);
  }

  v329 = *MEMORY[0x277CE1628];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v337, v338, v329, v320);
  v125 = SCDynamicStoreCopyKeyList(v346, NetworkServiceEntity);
  v126 = MEMORY[0x277D84F90];
  if (v125)
  {
    v127 = v125;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v366 = 0;
      type metadata accessor for CFString(0);
      sub_253CD0A48();

      if (v366)
      {
        v126 = v366;
      }
    }

    else
    {
    }
  }

  v130 = sub_253CD07C8();
  v131 = sub_253CD0C78();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *&v366 = v133;
    *v132 = 136315138;
    type metadata accessor for CFString(0);
    v135 = MEMORY[0x259C009D0](v126, v134);
    v137 = sub_253277BA8(v135, v136, &v366);

    *(v132 + 4) = v137;
    _os_log_impl(&dword_2531F8000, v130, v131, "v4ServiceKeys %s", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v133);
    MEMORY[0x259C040E0](v133, -1, -1);
    MEMORY[0x259C040E0](v132, -1, -1);
  }

  if (v126 >> 62)
  {
    goto LABEL_255;
  }

  v138 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_97:
  v340 = v113;
  if (!v138)
  {
    v348 = MEMORY[0x277D84F90];
LABEL_161:

    v320 = SCDynamicStoreKeyCreateNetworkServiceEntity(v337, v338, v329, v318);
    v192 = SCDynamicStoreCopyKeyList(v346, v320);
    v193 = MEMORY[0x277D84F90];
    if (v192)
    {
      v194 = v192;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v366 = 0;
        type metadata accessor for CFString(0);
        sub_253CD0A48();

        if (v366)
        {
          v195 = v366;
        }

        else
        {
          v195 = v193;
        }
      }

      else
      {

        v195 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v195 = MEMORY[0x277D84F90];
    }

    v196 = sub_253CD07C8();
    v197 = sub_253CD0C78();
    v198 = os_log_type_enabled(v196, v197);
    v330 = v195;
    if (v198)
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v366 = v200;
      *v199 = 136315138;
      type metadata accessor for CFString(0);
      v202 = MEMORY[0x259C009D0](v195, v201);
      v204 = sub_253277BA8(v202, v203, &v366);
      v195 = v330;

      *(v199 + 4) = v204;
      _os_log_impl(&dword_2531F8000, v196, v197, "v6serviceKeys %s", v199, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v200);
      MEMORY[0x259C040E0](v200, -1, -1);
      MEMORY[0x259C040E0](v199, -1, -1);
    }

    v205 = v348;
    v206 = MEMORY[0x277CE16F0];
    if (v195 >> 62)
    {
      v278 = MEMORY[0x277CE16F0];
      v279 = sub_253CD0ED8();
      v206 = v278;
      v207 = v279;
      if (v279)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v207 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v207)
      {
LABEL_172:
        v126 = 0;
        v345 = *v206;
        v347 = v195 & 0xC000000000000001;
        v341 = (v195 + 32);
        v342 = v195 & 0xFFFFFFFFFFFFFF8;
        v328 = "ntroller";
        v319 = "NetworkSignature";
        v329 = *MEMORY[0x277CE1780];
        v343 = v207;
        do
        {
          if (v347)
          {
            v208 = MEMORY[0x259C00F30](v126, v195);
          }

          else
          {
            if (v126 >= *(v342 + 16))
            {
              goto LABEL_253;
            }

            v208 = *&v341[8 * v126];
          }

          v209 = v208;
          if (__OFADD__(v126++, 1))
          {
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            v138 = sub_253CD0ED8();
            goto LABEL_97;
          }

          v211 = SCDynamicStoreCopyValue(v346, v208);
          v348 = v205;
          if (v211)
          {
            v212 = v211;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v212) && (*&v366 = v212, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400), (swift_dynamicCast() & 1) != 0))
            {
              swift_unknownObjectRelease();
              v214 = v358;
            }

            else
            {
              v214 = sub_25321883C(v193);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v214 = MEMORY[0x277D84F98];
          }

          v215 = sub_253CD0968();
          if (*(v214 + 16))
          {
            v217 = sub_253217D84(v215, v216);
            v219 = v218;

            if (v219)
            {
              *&v358 = *(*(v214 + 56) + 8 * v217);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v220 = v366;
                if (v113)
                {
                  *&v366 = sub_253CD0968();
                  *(&v366 + 1) = v221;
                  *&v358 = v344;
                  *(&v358 + 1) = v113;
                  sub_25322CFB4();

                  LODWORD(v336) = sub_253CD0DF8();

                  if (*(v214 + 16))
                  {
                    goto LABEL_191;
                  }

LABEL_202:
                  v338 = 0;
                  v339 = 0;
LABEL_211:
                  v332 = 0;
                  v337 = 0;
                }

                else
                {
                  LODWORD(v336) = 0;
                  if (!*(v214 + 16))
                  {
                    goto LABEL_202;
                  }

LABEL_191:
                  v222 = sub_253217D84(0xD000000000000010, v328 | 0x8000000000000000);
                  if (v223)
                  {
                    *&v358 = *(*(v214 + 56) + 8 * v222);
                    swift_unknownObjectRetain();
                    v224 = swift_dynamicCast();
                    if (v224)
                    {
                      v225 = v366;
                    }

                    else
                    {
                      v225 = 0;
                    }

                    if (v224)
                    {
                      v226 = *(&v366 + 1);
                    }

                    else
                    {
                      v226 = 0;
                    }

                    v338 = v226;
                    v339 = v225;
                    if (!*(v214 + 16))
                    {
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v338 = 0;
                    v339 = 0;
                    if (!*(v214 + 16))
                    {
                      goto LABEL_211;
                    }
                  }

                  v227 = sub_253217D84(0xD000000000000016, v319 | 0x8000000000000000);
                  if ((v228 & 1) == 0)
                  {
                    goto LABEL_211;
                  }

                  *&v358 = *(*(v214 + 56) + 8 * v227);
                  swift_unknownObjectRetain();
                  v229 = swift_dynamicCast();
                  v230 = v366;
                  if (!v229)
                  {
                    v230 = 0;
                  }

                  v332 = v230;
                  if (v229)
                  {
                    v231 = *(&v366 + 1);
                  }

                  else
                  {
                    v231 = 0;
                  }

                  v337 = v231;
                }

                v232 = sub_253CD0968();
                if (*(v214 + 16))
                {
                  v234 = sub_253217D84(v232, v233);
                  v236 = v235;

                  if (v236)
                  {
                    *&v358 = *(*(v214 + 56) + 8 * v234);
                    swift_unknownObjectRetain();
                    v237 = swift_dynamicCast();
                    v238 = v366;
                    if (!v237)
                    {
                      v238 = 0;
                    }

                    v331 = v238;
                    if (v237)
                    {
                      v239 = *(&v366 + 1);
                    }

                    else
                    {
                      v239 = 0;
                    }

                    v334 = v239;
LABEL_222:
                    v240 = MEMORY[0x277D84F90];
                    v241 = sub_253CD0968();
                    if (*(v214 + 16))
                    {
                      v243 = sub_253217D84(v241, v242);
                      v245 = v244;

                      if (v245)
                      {
                        v246 = *(*(v214 + 56) + 8 * v243);
                        swift_unknownObjectRetain();

                        *&v366 = v246;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
                        if (swift_dynamicCast())
                        {
                          v333 = v358;
                          v205 = v348;
                          v240 = MEMORY[0x277D84F90];
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                      }

                      v240 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                    }

                    v333 = v240;
                    v205 = v348;
LABEL_230:
                    LOBYTE(v366) = v336 & 1;
                    *(&v366 + 1) = v220;
                    v367 = *(&v220 + 1);
                    *&v368 = 0;
                    v369 = 0u;
                    v370 = 0u;
                    *(&v368 + 1) = v240;
                    *&v371[0] = v240;
                    memset(v371 + 8, 0, 32);
                    v247 = *(v205 + 2);
                    if (v247)
                    {
                      v248 = 0;
                      v249 = 0;
                      while (1)
                      {
                        v250 = &v205[v248];
                        v251 = *&v205[v248 + 40] == v220 && *&v205[v248 + 48] == *(&v220 + 1);
                        if (v251 || (sub_253CD1118() & 1) != 0)
                        {
                          break;
                        }

                        ++v249;
                        v248 += 120;
                        if (v247 == v249)
                        {
                          goto LABEL_238;
                        }
                      }

                      v252 = *(v250 + 2);
                      v253 = *(v250 + 3);
                      v254 = *(v250 + 5);
                      v352 = *(v250 + 4);
                      v353 = v254;
                      v350 = v252;
                      v351 = v253;
                      v255 = *(v250 + 6);
                      v256 = *(v250 + 7);
                      v257 = *(v250 + 8);
                      v357 = *(v250 + 18);
                      v355 = v256;
                      v356 = v257;
                      v354 = v255;
                      v362 = v370;
                      v363 = v371[0];
                      v364 = v371[1];
                      v365 = *&v371[2];
                      v358 = v366;
                      v359 = v367;
                      v360 = v368;
                      v361 = v369;
                      sub_25322CF4C(&v350, v349);
                      sub_25322CF84(&v358);
                      v336 = *(&v355 + 1);
                      v258 = v356;
                      v259 = v357;
                      v326 = *(&v351 + 1);
                      v327 = *(&v356 + 1);
                      v260 = v352;
                      v370 = v354;
                      v371[0] = v355;
                      v371[1] = v356;
                      *&v371[2] = v357;
                      v366 = v350;
                      v367 = v351;
                      v368 = v352;
                      v369 = v353;
                      sub_25321B210(v333);
                      if (v260)
                      {

                        v261 = v326;
                        v262 = v260;
                        v263 = v339;
                        v113 = v340;
                      }

                      else
                      {
                        v263 = v339;
                        v113 = v340;
                        v262 = v337;
                        v261 = v332;
                      }

                      *(&v367 + 1) = v261;
                      *&v368 = v262;
                      v205 = v348;
                      if (v259)
                      {

                        *(&v371[1] + 1) = v327;
                        *&v371[2] = v259;
                        if (v258)
                        {
                          goto LABEL_244;
                        }

LABEL_246:
                        v258 = v334;
                        v207 = v343;
                        v264 = v331;
                      }

                      else
                      {
                        *(&v371[1] + 1) = v263;
                        *&v371[2] = v338;
                        if (!v258)
                        {
                          goto LABEL_246;
                        }

LABEL_244:

                        v264 = v336;
                        v207 = v343;
                      }

                      *(&v371[0] + 1) = v264;
                      *&v371[1] = v258;
                      v362 = v370;
                      v363 = v371[0];
                      v364 = v371[1];
                      v365 = *&v371[2];
                      v358 = v366;
                      v359 = v367;
                      v360 = v368;
                      v361 = v369;
                      sub_25322CF4C(&v358, &v350);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v205 = sub_25328FF9C(v205);
                      }

                      if (v249 >= *(v205 + 2))
                      {
                        goto LABEL_254;
                      }

                      v265 = &v205[v248];
                      v266 = *&v205[v248 + 32];
                      v267 = *&v205[v248 + 48];
                      v268 = *&v205[v248 + 80];
                      v352 = *&v205[v248 + 64];
                      v353 = v268;
                      v350 = v266;
                      v351 = v267;
                      v269 = *&v205[v248 + 96];
                      v270 = *&v205[v248 + 112];
                      v271 = *&v205[v248 + 128];
                      v357 = *&v205[v248 + 144];
                      v355 = v270;
                      v356 = v271;
                      v354 = v269;
                      v272 = v358;
                      v273 = v359;
                      v274 = v361;
                      *(v265 + 4) = v360;
                      *(v265 + 5) = v274;
                      *(v265 + 2) = v272;
                      *(v265 + 3) = v273;
                      v275 = v362;
                      v276 = v363;
                      v277 = v364;
                      *(v265 + 18) = v365;
                      *(v265 + 7) = v276;
                      *(v265 + 8) = v277;
                      *(v265 + 6) = v275;
                      sub_25322CF84(&v350);
                    }

                    else
                    {
LABEL_238:
                      sub_25321B210(v333);
                      *(&v367 + 1) = v332;
                      *&v368 = v337;
                      *(&v371[1] + 1) = v339;
                      *&v371[2] = v338;
                      *(&v371[0] + 1) = v331;
                      *&v371[1] = v334;

                      v113 = v340;
                      v207 = v343;
                    }

                    v362 = v370;
                    v363 = v371[0];
                    v364 = v371[1];
                    v365 = *&v371[2];
                    v358 = v366;
                    v359 = v367;
                    v360 = v368;
                    v361 = v369;
                    sub_25322CF84(&v358);
                    v193 = MEMORY[0x277D84F90];
                    v195 = v330;
                    continue;
                  }
                }

                else
                {
                }

                v331 = 0;
                v334 = 0;
                goto LABEL_222;
              }
            }

            v205 = v348;
            v207 = v343;
          }

          else
          {

            v205 = v348;
          }
        }

        while (v126 != v207);
      }
    }

    v280 = *(v205 + 2);
    v348 = v205;
    if (v280)
    {
      *&v366 = MEMORY[0x277D84F90];
      sub_25328BF5C(0, v280, 0);
      v281 = v366;
      v334 = v313 + 32;
      v282 = (v205 + 72);
      v283 = v306[0];
      do
      {
        v345 = v280;
        v347 = v281;
        LODWORD(v344) = *(v282 - 40);
        v284 = *(v282 - 4);
        v285 = *(v282 - 3);
        v342 = *(v282 - 2);
        v343 = v284;
        v286 = *v282;
        v287 = v282[1];
        v340 = v282[3];
        v341 = v287;
        v288 = v282[6];
        v338 = v285;
        v339 = v288;
        v289 = v282[8];
        v336 = v286;
        v337 = v289;

        v281 = v347;
        sub_253CD0298();
        *&v366 = v281;
        v291 = *(v281 + 16);
        v290 = *(v281 + 24);
        if (v291 >= v290 >> 1)
        {
          sub_25328BF5C((v290 > 1), v291 + 1, 1);
          v281 = v366;
        }

        v282 += 15;
        *(v281 + 16) = v291 + 1;
        (*(v313 + 32))(v281 + ((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v291, v283, v310);
        v280 = v345 - 1;
      }

      while (v345 != 1);
    }

    v292 = sub_253CD07C8();
    v293 = sub_253CD0C78();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      v295 = swift_slowAlloc();
      *&v366 = v295;
      *v294 = 136315394;

      v297 = MEMORY[0x259C009D0](v296, v321);
      v299 = v298;

      v300 = sub_253277BA8(v297, v299, &v366);

      *(v294 + 4) = v300;
      *(v294 + 12) = 2080;

      v302 = MEMORY[0x259C009D0](v301, v310);
      v304 = v303;

      v305 = sub_253277BA8(v302, v304, &v366);

      *(v294 + 14) = v305;
      _os_log_impl(&dword_2531F8000, v292, v293, "%s %s", v294, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v295, -1, -1);
      MEMORY[0x259C040E0](v294, -1, -1);
    }

    return;
  }

  if (v138 >= 1)
  {
    v139 = 0;
    v347 = *MEMORY[0x277CE16F0];
    v345 = v126 & 0xC000000000000001;
    v330 = "ntroller";
    v328 = "NetworkSignature";
    v331 = *MEMORY[0x277CE1748];
    v348 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v345)
      {
        v140 = MEMORY[0x259C00F30](v139, v126);
        if (v113)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v140 = *(v126 + 8 * v139 + 32);
        if (v113)
        {
LABEL_104:
          *&v366 = sub_253CD0968();
          *(&v366 + 1) = v141;
          *&v358 = v344;
          *(&v358 + 1) = v113;
          sub_25322CFB4();

          v142 = sub_253CD0DF8();

          goto LABEL_107;
        }
      }

      v142 = 0;
LABEL_107:
      v143 = SCDynamicStoreCopyValue(v346, v140);
      if (v143)
      {
        v144 = v143;
        v145 = CFDictionaryGetTypeID();
        if (v145 == CFGetTypeID(v144))
        {
          *&v366 = v144;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400);
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();
            v146 = v358;
            goto LABEL_113;
          }
        }

        swift_unknownObjectRelease();
      }

      v146 = MEMORY[0x277D84F98];
LABEL_113:
      v147 = sub_253CD0968();
      if (*(v146 + 16))
      {
        LODWORD(v343) = v142;
        v149 = v138;
        v150 = v126;
        v151 = sub_253217D84(v147, v148);
        v153 = v152;

        if (v153)
        {
          *&v358 = *(*(v146 + 56) + 8 * v151);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v342 = *(&v366 + 1);
            v154 = v366;
            v126 = v150;
            if (!*(v146 + 16))
            {
              v339 = 0;
              v341 = 0;
              goto LABEL_136;
            }

            v155 = sub_253217D84(0xD000000000000010, v330 | 0x8000000000000000);
            if (v156)
            {
              *&v358 = *(*(v146 + 56) + 8 * v155);
              swift_unknownObjectRetain();
              v157 = swift_dynamicCast();
              v158 = v366;
              if (!v157)
              {
                v158 = 0;
              }

              v341 = v158;
              if (v157)
              {
                v159 = *(&v366 + 1);
              }

              else
              {
                v159 = 0;
              }

              v339 = v159;
              if (!*(v146 + 16))
              {
LABEL_136:
                v332 = 0;
                v333 = 0;
                goto LABEL_137;
              }
            }

            else
            {
              v341 = 0;
              v339 = 0;
              if (!*(v146 + 16))
              {
                goto LABEL_136;
              }
            }

            v160 = sub_253217D84(0xD000000000000016, v328 | 0x8000000000000000);
            if ((v161 & 1) == 0)
            {
              goto LABEL_136;
            }

            *&v358 = *(*(v146 + 56) + 8 * v160);
            swift_unknownObjectRetain();
            v162 = swift_dynamicCast();
            if (v162)
            {
              v163 = v366;
            }

            else
            {
              v163 = 0;
            }

            if (v162)
            {
              v164 = *(&v366 + 1);
            }

            else
            {
              v164 = 0;
            }

            v332 = v164;
            v333 = v163;
LABEL_137:
            v165 = sub_253CD0968();
            if (*(v146 + 16))
            {
              v167 = sub_253217D84(v165, v166);
              v169 = v168;

              if (v169)
              {
                *&v358 = *(*(v146 + 56) + 8 * v167);
                swift_unknownObjectRetain();
                v170 = swift_dynamicCast();
                v171 = v366;
                if (!v170)
                {
                  v171 = 0;
                }

                v336 = v171;
                if (v170)
                {
                  v172 = *(&v366 + 1);
                }

                else
                {
                  v172 = 0;
                }

                v334 = v172;
              }

              else
              {
                v336 = 0;
                v334 = 0;
              }

              v126 = v150;
            }

            else
            {

              v336 = 0;
              v334 = 0;
            }

            v173 = sub_253CD0968();
            if (*(v146 + 16))
            {
              v175 = sub_253217D84(v173, v174);
              v177 = v176;

              if ((v177 & 1) == 0)
              {

                v179 = MEMORY[0x277D84F90];
                v126 = v150;
                goto LABEL_155;
              }

              v178 = *(*(v146 + 56) + 8 * v175);
              swift_unknownObjectRetain();

              *&v366 = v178;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
              v126 = v150;
              if (swift_dynamicCast())
              {
                v179 = v358;
LABEL_155:
                v138 = v149;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v181 = v343;
                v182 = v154;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v348 = sub_25328359C(0, *(v348 + 2) + 1, 1, v348);
                }

                v184 = *(v348 + 2);
                v183 = *(v348 + 3);
                if (v184 >= v183 >> 1)
                {
                  v348 = sub_25328359C((v183 > 1), v184 + 1, 1, v348);
                }

                v185 = v348;
                *(v348 + 2) = v184 + 1;
                v186 = &v185[120 * v184];
                v186[32] = v181 & 1;
                v187 = *(&v366 + 3);
                *(v186 + 33) = v366;
                *(v186 + 9) = v187;
                v188 = v342;
                *(v186 + 5) = v182;
                *(v186 + 6) = v188;
                v189 = v332;
                *(v186 + 7) = v333;
                *(v186 + 8) = v189;
                v190 = v336;
                *(v186 + 9) = v179;
                *(v186 + 10) = v190;
                v113 = v340;
                v191 = v341;
                *(v186 + 11) = v334;
                *(v186 + 12) = v191;
                *(v186 + 13) = v339;
                *(v186 + 14) = MEMORY[0x277D84F90];
                *(v186 + 120) = 0u;
                *(v186 + 136) = 0u;
                goto LABEL_101;
              }
            }

            else
            {
            }

            v179 = MEMORY[0x277D84F90];
            goto LABEL_155;
          }
        }

        v126 = v150;
        v138 = v149;
      }

      else
      {
      }

LABEL_101:
      if (v138 == ++v139)
      {
        goto LABEL_161;
      }
    }
  }

  __break(1u);
}

unint64_t sub_25322BF28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_253CD10C8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v15);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v16 = (*(a1 + 48) + 16 * (__clz(__rbit64(v9)) | (v15 << 6)));
        v18 = *v16;
        v17 = v16[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        if (!swift_dynamicCast())
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_253217D84(v18, v17);
        if (v19)
        {
          v13 = (v6[6] + 16 * result);
          *v13 = v18;
          v13[1] = v17;
          v14 = result;

          *(v6[7] + 8 * v14) = v26;

          v12 = v15;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v6[2] >= v6[3])
          {
            goto LABEL_23;
          }

          *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v6[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          *(v6[7] + 8 * result) = v26;
          v21 = v6[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v6[2] = v23;
          v12 = v15;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v15 = v12;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t NetworkInfoController.obtainNetworkInfoProto()()
{
  v47 = sub_253CD02B8();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v1 = v42 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_253CD0178();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253229AF8();
  v8 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v9 = *(v6 + 16);
  v44 = v7;
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v46 = v11;
    v12 = *(v10 + 64);
    v42[1] = v6;
    v13 = v6 + ((v12 + 32) & ~v12);
    v14 = *(v10 + 56);
    v15 = (v10 - 8);
    v45 = MEMORY[0x277D84F90];
    do
    {
      v16 = v10;
      v46(v5, v13, v2);
      v17 = sub_2532287A0();
      v18 = (*v15)(v5, v2);
      if (v17)
      {
        MEMORY[0x259C00990](v18);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v45 = v48;
      }

      v13 += v14;
      --v9;
      v10 = v16;
    }

    while (v9);

    v19 = v44;
    v20 = v45;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = v7;

    v20 = MEMORY[0x277D84F90];
  }

  v48 = v8;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = *(v43 + 16);
    v45 = v20;
    v46 = v22;
    v23 = v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v24 = *(v43 + 72);
    v25 = (v43 + 8);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v27 = v47;
      v46(v1, v23, v47);
      v28 = sub_2532292B0();
      v29 = (*v25)(v1, v27);
      if (v28)
      {
        MEMORY[0x259C00990](v29);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v26 = v48;
      }

      v23 += v24;
      --v21;
    }

    while (v21);

    v30 = v26;
    v20 = v45;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3430, &qword_253D492C0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x496B726F7774654ELL;
  *(inited + 16) = xmmword_253D48A50;
  *(inited + 40) = 0xEB000000006F666ELL;
  if (v20 >> 62)
  {

    v40 = sub_253CD1088();
    swift_bridgeObjectRelease_n();
    v20 = v40;
  }

  else
  {
    v32 = v20 & 0xFFFFFFFFFFFFFF8;

    sub_253CD1128();
    if (swift_dynamicCastMetatype() || (v36 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_21:
    }

    else
    {
      v37 = (v32 + 32);
      while (*v37)
      {
        ++v37;
        if (!--v36)
        {
          goto LABEL_21;
        }
      }

      v20 = v32 | 1;
    }
  }

  *(inited + 48) = v20;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000253D4F8D0;
  if (v30 >> 62)
  {

    v41 = sub_253CD1088();
    swift_bridgeObjectRelease_n();
    v30 = v41;
  }

  else
  {
    v33 = v30 & 0xFFFFFFFFFFFFFF8;

    sub_253CD1128();
    if (swift_dynamicCastMetatype() || (v38 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_24:
    }

    else
    {
      v39 = (v33 + 32);
      while (*v39)
      {
        ++v39;
        if (!--v38)
        {
          goto LABEL_24;
        }
      }

      v30 = v33 | 1;
    }
  }

  *(inited + 72) = v30;
  v34 = sub_253218850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3438, qword_253D492C8);
  swift_arrayDestroy();
  return v34;
}

id NetworkInfoController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25322C7CC(uint64_t a1)
{
  v2 = type metadata accessor for NetworkInfoSCDataSource();
  v14[3] = v2;
  v14[4] = &off_2864FB5B0;
  v14[0] = a1;
  v3 = type metadata accessor for NetworkInfoController(0);
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v2);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_2864FB5B0;
  v13[0] = v9;
  sub_253CD0968();
  sub_253CD07D8();
  *&v4[OBJC_IVAR___HMDNetworkInfoController_store] = 0;
  sub_2532074E4(v13, &v4[OBJC_IVAR___HMDNetworkInfoController_dataSource]);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t type metadata accessor for NetworkInfoController(uint64_t a1)
{
  result = qword_2815311D0;
  if (!qword_2815311D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25322C9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25322C9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25322CA60(uint64_t a1)
{
  result = sub_253CD07E8();
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

uint64_t sub_25322CB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25322CB6C()
{
  v0 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SCNetworkInterface(0);
    sub_253CD0A48();
  }
}

unint64_t sub_25322CE6C(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3) && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400), swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      v6 = sub_25321883C(MEMORY[0x277D84F90]);
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_25321883C(v7);
  }
}

unint64_t sub_25322CFB4()
{
  result = qword_27F5A3450;
  if (!qword_27F5A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3450);
  }

  return result;
}

uint64_t sub_25322D008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25322D078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25322D164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25322D1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25322D22C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a1;
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 88) = type metadata accessor for DefaultDaemonMissingItemHandler();
  *(v6 + 96) = &off_2864FB838;
  *(v6 + 64) = a6;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  return v6;
}

uint64_t sub_25322D2BC(uint64_t a1, uint64_t a2)
{
  _s8IdentityCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0;
  type metadata accessor for DefaultDaemonMissingItemHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for Registry();
  swift_allocObject();

  v6 = sub_25322D22C(v4, 0, 0, 0, 0, v5);

  return v6;
}

uint64_t HMDAccessorySetupMetricDispatcher.releaseDiscoveryAssertion(assertionHandle:)(uint64_t a1)
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(v2 + 16);
      v5 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

      os_unfair_lock_lock((v5 + 24));
      sub_253222600((v5 + 16), &v8);
      os_unfair_lock_unlock((v5 + 24));
      v6 = v8;

      sub_2532216D0(v4);
      if (v6)
      {
        sub_253221160();
      }

      swift_unknownObjectRelease();
    }

    *(v2 + 32) = 0;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_25322D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), char *a6, void *a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char a16)
{
  v52 = a8;
  v50 = a4;
  v51 = a7;
  v53 = a5;
  v49 = a3;
  v18 = sub_253CCFF58();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v54 = v23;
  v22(v21, a15);
  sub_253229AF8();
  v25 = v24;
  v27 = v26;
  v28 = sub_25321EA5C();
  v29 = *(a1 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v29 + 24));
  v30 = *(v29 + 16);

  os_unfair_lock_unlock((v29 + 24));

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_4;
  }

  v32 = sub_253221A3C(*(v30 + 16), 0);
  v33 = *(sub_253CD01C8() - 8);
  v34 = sub_253221B88(v58, &v32[(*(v33 + 80) + 32) & ~*(v33 + 80)], v31, v30);
  sub_25320C5EC(*&v58[0]);
  if (v34 != v31)
  {
    __break(1u);
LABEL_4:

    v32 = MEMORY[0x277D84F90];
  }

  sub_25327D3D0(v49, v50, 0, v51, v52, v25, v27, v53, v58, a6, v28, v32, a9, a10, v53, a6, a11, a12, a13, a14, a16 & 1);

  v57[3] = &type metadata for Metric.Setup.NetworkInfo;
  v57[4] = &off_2864FC5B8;
  v35 = swift_allocObject();
  v57[0] = v35;
  v36 = v58[13];
  *(v35 + 208) = v58[12];
  *(v35 + 224) = v36;
  *(v35 + 240) = v59;
  v37 = v58[9];
  *(v35 + 144) = v58[8];
  *(v35 + 160) = v37;
  v38 = v58[11];
  *(v35 + 176) = v58[10];
  *(v35 + 192) = v38;
  v39 = v58[5];
  *(v35 + 80) = v58[4];
  *(v35 + 96) = v39;
  v40 = v58[7];
  *(v35 + 112) = v58[6];
  *(v35 + 128) = v40;
  v41 = v58[1];
  *(v35 + 16) = v58[0];
  *(v35 + 32) = v41;
  v42 = v58[3];
  *(v35 + 48) = v58[2];
  *(v35 + 64) = v42;
  v43 = type metadata accessor for Metric.LogEventAdaptor();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_name];
  *v45 = 0xD000000000000035;
  *(v45 + 1) = 0x8000000253D4FC50;
  sub_2532074E4(v57, &v44[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event]);
  *&v44[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  sub_25322DBC8(v58, &v56);
  v46 = sub_253CCFF18();
  v55.receiver = v44;
  v55.super_class = v43;
  v47 = objc_msgSendSuper2(&v55, sel_initWithHomeUUID_, v46);

  sub_25322DC24(v58);
  (*(v19 + 8))(v21, v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v47;
}

uint64_t _sSo33HMDAccessorySetupMetricDispatcherC19HomeKitDaemonLegacyE24obtainDiscoveryAssertionyXlyF_0()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (v1)
  {
    type metadata accessor for AssertionHandle();
    v2 = swift_allocObject();
    sub_2532265BC(v1, 0xD000000000000014, 0x8000000253D4F960, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B0, &qword_253D491C0);
  v3 = sub_253CD0DC8();

  return v3;
}

void *sub_25322DC78(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_eventBuilders) + 16);
    if (v4)
    {
      v5 = result;
      v6 = OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_logEventSubmitter;
      v7 = a1;

      do
      {
        if ([v5 isTHSensorRequest])
        {
          v10 = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
          v11 = objc_allocWithZone(v10);
          v12 = &v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName];
          *v12 = 0xD000000000000044;
          *(v12 + 1) = 0x8000000253D4FCF0;
          *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventOptions] = 4;
          *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_readWriteEvent] = v5;
          v16.receiver = v11;
          v16.super_class = v10;
          v13 = v7;
          v14 = objc_msgSendSuper2(&v16, sel_init);
          v15 = [v5 error];
          if (v15)
          {
            v8 = v15;
            v9 = sub_253CCFE08();
          }

          else
          {
            v9 = 0;
          }

          [v14 setError_];

          [*(v1 + v6) submitLogEvent_];
        }

        --v4;
      }

      while (v4);
    }
  }

  return result;
}

id sub_25322DEC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HMDUserDefaultDataSource __swiftcall HMDUserDefaultDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25322E4AC(void *a1)
{
  v2 = [objc_opt_self() hmd:2 currentPairingIdentityWithPrivilege:1 forceHH1Key:objc_msgSend(a1 keyStore:sel_keyStore)];
  swift_unknownObjectRelease();
  v3 = [a1 pairingIdentity];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_253200644(0, &qword_27F5A34F8, 0x277CFEC20);
      v2 = v2;
      v5 = sub_253CD0D88();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
    v2 = v3;
  }

  return v5 & 1;
}

uint64_t sub_25322E5B4()
{
  v0 = sub_253CD0058();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v4 = (qword_281532BF0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((qword_281532BF0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  if ((*(v1 + 48))(v4 + v5, 1, v0))
  {
    v6 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v4 + v5, v0);
    v6 = sub_253CD0018();
    (*(v1 + 8))(v3, v0);
  }

  os_unfair_lock_unlock(v4);
  return v6;
}

uint64_t sub_25322E744(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3520, &qword_253D494F8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_253205FF8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2531FF150(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2531FF150(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2531FF150(v31, v32);
    result = sub_253CD0F38();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2531FF150(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_25322EA0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3510, &qword_253D494E8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_253CD0C38();
        v18 = sub_253217D84(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_25322EBF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3510, &qword_253D494E8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_253CD0BE8();
        v18 = sub_253217D84(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_25322EDDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3528, &unk_253D49500);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_253205FF8(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_2531FF150(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
        swift_dynamicCast();
        sub_2531FF150(&v23, v25);
        sub_2531FF150(v25, v26);
        sub_2531FF150(v26, &v24);
        result = sub_253217D84(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2531FF150(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_2531FF150(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_25322F120(uint64_t a1)
{
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);

  v6(v7);

  v8 = sub_253CCFE98();
  (*(v3 + 8))(v5, v2);

  return v8;
}

void sub_25322F224(void *a1)
{
  v1 = [a1 startOfDayByAddingDayCount_];
  sub_253CCFEA8();
}

void sub_25322F314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v21 = a8;
  v12 = (a5)(0, a2);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  v16 = sub_253CD0968();
  v18 = v17;
  swift_unknownObjectRetain_n();
  v19 = a1;
  a6(a3);
  v21(v16, v18, v15, v12, a7);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v15, v12);
}

void sub_253230280(uint64_t a1)
{
  v1 = sub_253CD0388();
  sub_253CD03A8();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v1, v2))
  {
LABEL_9:
    __break(1u);
  }
}

id sub_2532304A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventCounterGroupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_253230550@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_25323059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = type metadata accessor for EventCounterGroupBridge();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v14 = &v13[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v14 = sub_253230DEC;
  v14[1] = v11;
  v15 = objc_opt_self();

  v16 = [v15 sharedInstance];
  v19.receiver = v13;
  v19.super_class = v12;
  v17 = objc_msgSendSuper2(&v19, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v16);

  swift_unknownObjectRelease();

  (*(v7 + 8))(a3, v6);
  return v17;
}

id sub_253230794(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for EventCounterGroupBridge();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v9 = &v8[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v9 = sub_253230E60;
  v9[1] = v6;
  v10 = objc_opt_self();
  v11 = a3;

  v12 = [v10 sharedInstance];
  v15.receiver = v8;
  v15.super_class = v7;
  v13 = objc_msgSendSuper2(&v15, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v12);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_2532308C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_253217D84(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_2532861E4();
      }
    }

    else
    {
      sub_253284C04(v30, v43 & 1);
      v32 = sub_253217D84(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_25320C5EC(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

void sub_253230B5C(void *a1, uint64_t a2)
{
  v3 = [a1 eventCounters];
  if (v3)
  {
    v4 = v3;
    sub_253230D20();
    v5 = sub_253CD08D8();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + 8 * (v12 | (v11 << 6)));

        v14 = v13;
        v15 = [v14 integerValue];
        v16 = sub_253CD0938();
        (*(a2 + 16))(a2, v16, v15);

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

unint64_t sub_253230D20()
{
  result = qword_281530D08;
  if (!qword_281530D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D08);
  }

  return result;
}

uint64_t sub_253230D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253230DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253CCFEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_2532310E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D49510;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x7475626972747461;
  *(inited + 112) = 0xEB00000000644965;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId);
  *(inited + 120) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v8;
}