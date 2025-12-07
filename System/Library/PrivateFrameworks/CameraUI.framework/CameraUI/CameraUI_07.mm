BOOL sub_1A392659C(_BOOL8 result)
{
  if (*(result + 40))
  {
    return 0;
  }

  v2 = *(v1 + 8) * 10.0;
  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = COERCE_UNSIGNED_INT64(fabs(*(v1 + 8) * 10.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v4 = *(result + 8) * 10.0;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL || v3)
  {
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (*&v2 != *&v4)
  {
    return 0;
  }

  v5 = *(result + 32);
  if (*(v1 + 24))
  {
    if ((*(result + 24) & 1) == 0)
    {
      return 0;
    }

    return *(v1 + 32) == v5;
  }

  if (*(result + 24))
  {
    return 0;
  }

  v6 = *(result + 16);
  result = 0;
  if (*(v1 + 16) == v6)
  {
    return *(v1 + 32) == v5;
  }

  return result;
}

uint64_t sub_1A39266A0()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1EB0FE5F0);
  __swift_project_value_buffer(v0, qword_1EB0FE5F0);
  return sub_1A3A2F290();
}

void __swiftcall CAMZoomEventReporter.init(rateLimit:reportingAllEvents:)(CAMZoomEventReporter *__return_ptr retstr, Swift::Double rateLimit, Swift::Bool reportingAllEvents)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v5 initWithRateLimit:reportingAllEvents reportingAllEvents:rateLimit];
}

id CAMZoomEventReporter.init(rateLimit:reportingAllEvents:)(char a1, double a2)
{
  v5 = OBJC_IVAR___CAMZoomEventReporter_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE610, &unk_1A3A74370);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = &v2[OBJC_IVAR___CAMZoomEventReporter_latestEvent];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = 0.5;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  *&v2[OBJC_IVAR___CAMZoomEventReporter_eventRateLimitingInterval] = v8;
  v2[OBJC_IVAR___CAMZoomEventReporter_shouldReportAllChangeEvents] = a1;
  v10.receiver = v2;
  v10.super_class = CAMZoomEventReporter;
  return objc_msgSendSuper2(&v10, sel_init);
}

void CAMZoomEventReporter.zoomBegan(withFactor:device:interactionType:)()
{
  CFAbsoluteTimeGetCurrent();
  v1 = *(v0 + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A392760C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1A3926934(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 24) & 1;
  v5 = v1 + OBJC_IVAR___CAMZoomEventReporter_latestEvent;
  *v5 = *a1;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0;
  if (qword_1EB0FC180 != -1)
  {
    swift_once();
  }

  v6 = sub_1A3A2F2A0();
  __swift_project_value_buffer(v6, qword_1EB0FE5F0);
  oslog = sub_1A3A2F280();
  v7 = sub_1A3A31C40();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A39ABC10(0xD000000000000013, 0x80000001A3AA43B0, &v14);
    *(v8 + 12) = 2082;
    v10 = sub_1A3926430();
    v12 = sub_1A39ABC10(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1A3640000, oslog, v7, "%s Zoom start: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58FAC10](v9, -1, -1);
    MEMORY[0x1A58FAC10](v8, -1, -1);
  }
}

void CAMZoomEventReporter.zoomEnded(fromSource:)()
{
  v1 = *(v0 + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1A3926C0C(unint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___CAMZoomEventReporter_latestEvent);
  if (*(v1 + OBJC_IVAR___CAMZoomEventReporter_latestEvent + 40))
  {
    if (qword_1EB0FC180 != -1)
    {
      swift_once();
    }

    v4 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v4, qword_1EB0FE5F0);
    oslog = sub_1A3A2F280();
    v5 = sub_1A3A31C10();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v27 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_1A39ABC10(0xD00000000000001ELL, 0x80000001A3AA4410, &v27);
      *(v6 + 12) = 2080;
      v8 = CAMDebugStringForZoomInteractionType(a1);
      if (v8)
      {
        v9 = v8;
        v10 = sub_1A3A31850();
        v12 = v11;
      }

      else
      {
        v12 = 0x80000001A3AA43D0;
        v10 = 0xD000000000000016;
      }

      v24 = sub_1A39ABC10(v10, v12, &v27);

      *(v6 + 14) = v24;
      _os_log_impl(&dword_1A3640000, oslog, v5, "%s from %s without a factor change.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58FAC10](v7, -1, -1);
      MEMORY[0x1A58FAC10](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v13 = *(v2 + 4);
    v14 = *(v2 + 6);
    v15 = *(v2 + 2);
    v27 = *v2;
    v28 = v15;
    v29 = v14 & 1;
    v30 = v13;
    if (qword_1EB0FC180 != -1)
    {
      swift_once();
    }

    v16 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v16, qword_1EB0FE5F0);
    v17 = sub_1A3A2F280();
    v18 = sub_1A3A31C40();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1A39ABC10(0xD00000000000001ELL, 0x80000001A3AA4410, &v26);
      *(v19 + 12) = 2082;
      v21 = sub_1A3926430();
      v23 = sub_1A39ABC10(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1A3640000, v17, v18, "%s: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58FAC10](v20, -1, -1);
      MEMORY[0x1A58FAC10](v19, -1, -1);
    }

    *(v2 + 4) = 0;
    *v2 = 0u;
    v2[1] = 0u;
    *(v2 + 40) = 1;
  }
}

void CAMZoomEventReporter.zoomChanged(toFactor:device:interactionType:)()
{
  CFAbsoluteTimeGetCurrent();
  v1 = *(v0 + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1A39270B0(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 4);
  v5 = (v1 + OBJC_IVAR___CAMZoomEventReporter_latestEvent);
  v6 = (v4 - 2) & 0xFFFFFFFFFFFFFFFBLL;
  if (*(v1 + OBJC_IVAR___CAMZoomEventReporter_latestEvent + 40))
  {
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else if (!v6 && *(v5 + 4) != v4)
  {
LABEL_14:

    sub_1A3926934(a1);
    return;
  }

  v17 = *a1;
  v7 = v5[1];
  v19 = *v5;
  *v20 = v7;
  *&v20[9] = *(v5 + 25);
  if (v4 <= 7 && ((1 << v4) & 0x98) != 0 || (*(v1 + OBJC_IVAR___CAMZoomEventReporter_shouldReportAllChangeEvents) & 1) != 0 || ((v4 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0 && !sub_1A392659C(&v19) && ((v20[24] & 1) != 0 || *&v20[16] != v4 || (v16 = *&v19, *(v1 + OBJC_IVAR___CAMZoomEventReporter_eventRateLimitingInterval) <= CFAbsoluteTimeGetCurrent() - v16)))
  {
    if (qword_1EB0FC180 != -1)
    {
      swift_once();
    }

    v8 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v8, qword_1EB0FE5F0);
    v9 = sub_1A3A2F280();
    v10 = sub_1A3A31C40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1A39ABC10(0xD000000000000013, 0x80000001A3AA43B0, &v18);
      *(v11 + 12) = 2082;
      v13 = sub_1A3926430();
      v15 = sub_1A39ABC10(v13, v14, &v18);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1A3640000, v9, v10, "%s Zoom changed: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58FAC10](v12, -1, -1);
      MEMORY[0x1A58FAC10](v11, -1, -1);
    }
  }

  *v5 = v17;
  *(v5 + 2) = v2;
  *(v5 + 3) = v3 & 1;
  *(v5 + 4) = v4;
  *(v5 + 40) = 0;
}

void CAMZoomEventReporter.zoomChanged(toFactor:interactionType:)()
{
  CFAbsoluteTimeGetCurrent();
  v1 = *(v0 + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v1 + 4);
}

void __swiftcall CAMZoomEventReporter.init()(CAMZoomEventReporter *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

unint64_t type metadata accessor for CAMZoomEventReporter()
{
  result = qword_1EB0FE630;
  if (!qword_1EB0FE630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0FE630);
  }

  return result;
}

uint64_t sub_1A39276E0(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = CAMDebugStringForCaptureDevice_2(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A3A31850();
    v7 = v6;
  }

  else
  {
    v7 = 0x80000001A3AA43F0;
    v5 = 0xD000000000000014;
  }

  MEMORY[0x1A58F7770](v5, v7);

  MEMORY[0x1A58F7770](45, 0xE100000000000000);
  return 0;
}

__CFString *CAMDebugStringForZoomInteractionType(unint64_t a1)
{
  if (a1 > 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E76FF3B0[a1];
    v2 = off_1E76FF370[a1];
  }

  return v1;
}

unint64_t sub_1A39277F0()
{
  result = qword_1EB0FE638;
  if (!qword_1EB0FE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE638);
  }

  return result;
}

__CFString *CAMDebugStringForCaptureDevice_2(unint64_t a1)
{
  if (a1 > 0xB)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E76FF450[a1];
    v2 = off_1E76FF3F0[a1];
  }

  return v1;
}

uint64_t type metadata accessor for ChromeFloatingControlsBar(uint64_t a1)
{
  result = qword_1EB0FE640;
  if (!qword_1EB0FE640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3927974(uint64_t a1)
{
  sub_1A3927A30(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
  if (v1 <= 0x3F)
  {
    sub_1A3927A30(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3927A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A3A2F640();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3927AA0@<X0>(_BYTE *a1@<X8>)
{
  v37 = sub_1A3A2FEE0();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 3;
  v6 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE650, &qword_1A3A74420) + 36)];
  *v6 = sub_1A3A31480();
  v6[1] = v7;
  v8 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE658, &qword_1A3A74428) + 44);
  *v8 = sub_1A3A2FF40();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE660, &qword_1A3A74430);
  sub_1A3928080(v1, &v8[*(v9 + 44)]);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE668, &qword_1A3A74438) + 36)] = 256;
  v10 = sub_1A3A30620();
  sub_1A3929444();
  v11 = v1 + *(type metadata accessor for ChromeFloatingControlsBar(0) + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  sub_1A3A2EA60();
  v14 = v12;
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v37);
    v14 = v38;
  }

  swift_getKeyPath(byte_1A3A74440, v37);
  v38 = v14;
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  sub_1A3A2F520();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE670, &qword_1A3A74468) + 36)];
  *v24 = v10;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_1A3A314E0();
  sub_1A3A2EA60();
  v26 = v12;
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v27 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v37);
    v26 = v38;
  }

  swift_getKeyPath(byte_1A3A74470);
  v38 = v26;
  sub_1A3A2F080();

  v28 = *(v26 + 648);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A74498);
  v38 = v28;
  sub_1A3929C6C(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel, &unk_1A3A72660);
  sub_1A3A2F080();

  v29 = *(v28 + 16);

  v30 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE678, &qword_1A3A744C0) + 36)];
  *v30 = v25;
  v30[8] = v29;
  v31 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v32 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v37);
    v12 = v38;
  }

  swift_getKeyPath(byte_1A3A744C8);
  v38 = v12;
  sub_1A3A2F080();

  v33 = *(v12 + 656);
  sub_1A3A2EA60();

  swift_getKeyPath("p+iG");
  v38 = v33;
  sub_1A3929C6C(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel, &unk_1A3A71D40);
  sub_1A3A2F080();

  v34 = *(v33 + 16);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE680, &unk_1A3A74518);
  v36 = &a1[*(result + 36)];
  *v36 = v31;
  v36[8] = v34;
  return result;
}

uint64_t sub_1A3928080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE688, &qword_1A3A74580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - v8);
  *v9 = sub_1A3A31480();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE690, &qword_1A3A74588);
  sub_1A39281CC(a1, v9 + *(v11 + 44));
  sub_1A388F6D8(v9, v6, &qword_1EB0FE688, &qword_1A3A74580);
  sub_1A388F6D8(v6, a2, &qword_1EB0FE688, &qword_1A3A74580);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE698, &qword_1A3A74590) + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_1A388F740(v9, &qword_1EB0FE688, &qword_1A3A74580);
  return sub_1A388F740(v6, &qword_1EB0FE688, &qword_1A3A74580);
}

uint64_t sub_1A39281CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for ChromeFloatingControlsBar(0);
  v4 = v3 - 8;
  v83[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v83[1] = v5;
  v84 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6A0, &qword_1A3A74598);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v83 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6A8, &qword_1A3A745A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v83 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6B0, &qword_1A3A745A8);
  v14 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v16 = v83 - v15;
  v17 = sub_1A3A2FEE0();
  v93 = *(v17 - 8);
  v94 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6B8, &qword_1A3A745B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v86 = v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = v83 - v23;
  v24 = *(v4 + 28);
  v85 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  LODWORD(v4) = *(v25 + 8);
  sub_1A3A2EA60();
  v27 = v26;
  v95 = v4;
  if ((v4 & 1) == 0)
  {
    sub_1A3A31C30();
    v28 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v93 + 8))(v19, v94);
    v27 = v97;
  }

  swift_getKeyPath(byte_1A3A74470, v83[0]);
  v97 = v27;
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v29 = *(v27 + 648);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A74498);
  v97 = v29;
  sub_1A3929C6C(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel, &unk_1A3A72660);
  sub_1A3A2F080();

  v30 = *(v29 + 16);

  v89 = v13;
  if (v30 == 1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A745C0);
    v32 = type metadata accessor for ChromeCircularSymbolButton(0);
    *&v16[*(v32 + 36)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    v33 = swift_getKeyPath(byte_1A3A745F0);
    *v16 = xmmword_1A3A74380;
    *(v16 + 2) = 0x4024000000000000;
    type metadata accessor for ChromeViewModel(0);
    *(v16 + 3) = sub_1A3A2F650();
    v16[32] = v34 & 1;
    v35 = &v16[*(v32 + 40)];
    *v35 = v33;
    v35[8] = 0;
    v36 = swift_getKeyPath("8*iG");
    sub_1A3A2EA60();
    v37 = v26;
    if ((v95 & 1) == 0)
    {
      sub_1A3A31C30();
      v38 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v93 + 8))(v19, v94);
      v37 = v97;
    }

    v39 = swift_allocObject();
    *(v39 + 16) = 0x77656956746F6F52;
    *(v39 + 24) = 0xE800000000000000;
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    *(v40 + 24) = v36;
    v41 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6C8, &qword_1A3A74620) + 36)];
    *v41 = sub_1A3929F20;
    v41[1] = v39;
    v41[2] = sub_1A38BD078;
    v41[3] = v40;
    v42 = sub_1A3A30640();
    sub_1A3A2F520();
    v43 = v92;
    v44 = &v16[*(v92 + 36)];
    *v44 = v42;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v49 = v96;
    sub_1A388F670(v16, v96, &qword_1EB0FE6B0, &qword_1A3A745A8);
    v50 = 0;
    v13 = v89;
  }

  else
  {
    v50 = 1;
    v49 = v96;
    v43 = v92;
  }

  (*(v14 + 56))(v49, v50, 1, v43);
  sub_1A3A2EA60();
  v51 = v26;
  if ((v95 & 1) == 0)
  {
    sub_1A3A31C30();
    v52 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v93 + 8))(v19, v94);
    v51 = v97;
  }

  swift_getKeyPath(byte_1A3A744C8);
  v97 = v51;
  sub_1A3A2F080();

  v53 = *(v51 + 656);
  sub_1A3A2EA60();

  swift_getKeyPath("p+iG");
  v97 = v53;
  sub_1A3929C6C(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel, &unk_1A3A71D40);
  sub_1A3A2F080();

  v54 = *(v53 + 16);

  if (v54 == 1)
  {
    v55 = swift_getKeyPath(byte_1A3A745C0);
    v56 = type metadata accessor for ChromeCircularSymbolButton(0);
    *&v8[*(v56 + 36)] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    v57 = swift_getKeyPath(byte_1A3A745F0);
    *v8 = xmmword_1A3A74390;
    *(v8 + 2) = 0x4024000000000000;
    type metadata accessor for ChromeViewModel(0);
    *(v8 + 3) = sub_1A3A2F650();
    v8[32] = v58 & 1;
    v59 = &v8[*(v56 + 40)];
    *v59 = v57;
    v59[8] = 0;
    v60 = v84;
    sub_1A3929DE8(v85, v84);
    v61 = (*(v83[0] + 80) + 16) & ~*(v83[0] + 80);
    v62 = swift_allocObject();
    sub_1A3929E4C(v60, v62 + v61);
    v63 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6C8, &qword_1A3A74620) + 36)];
    *v63 = sub_1A3928E1C;
    v63[1] = 0;
    v63[2] = sub_1A3929EB0;
    v63[3] = v62;
    LOBYTE(v62) = sub_1A3A30640();
    sub_1A3A2F520();
    v64 = &v8[*(v92 + 36)];
    *v64 = v62;
    *(v64 + 1) = v65;
    *(v64 + 2) = v66;
    *(v64 + 3) = v67;
    *(v64 + 4) = v68;
    v64[40] = 0;
    sub_1A39291C8();
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6D0, &qword_1A3A74628) + 36)] = v69;
    v70 = sub_1A3A314E0();
    sub_1A3A2EA60();
    if ((v95 & 1) == 0)
    {
      sub_1A3A31C30();
      v71 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v93 + 8))(v19, v94);
      v26 = v97;
    }

    swift_getKeyPath(byte_1A3A744C8);
    v97 = v26;
    sub_1A3A2F080();

    v72 = *(v26 + 656);
    sub_1A3A2EA60();

    swift_getKeyPath("X*iG");
    v97 = v72;
    sub_1A3A2F080();

    v73 = *(v72 + 24);

    v74 = v88;
    v13 = v89;
    v75 = &v8[*(v88 + 36)];
    *v75 = v70;
    v75[1] = v73;
    sub_1A388F670(v8, v13, &qword_1EB0FE6A0, &qword_1A3A74598);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v74 = v88;
  }

  (*(v87 + 56))(v13, v76, 1, v74);
  v77 = v96;
  v78 = v86;
  sub_1A388F6D8(v96, v86, &qword_1EB0FE6B8, &qword_1A3A745B0);
  v79 = v90;
  sub_1A388F6D8(v13, v90, &qword_1EB0FE6A8, &qword_1A3A745A0);
  v80 = v91;
  sub_1A388F6D8(v78, v91, &qword_1EB0FE6B8, &qword_1A3A745B0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE6C0, &qword_1A3A745B8);
  sub_1A388F6D8(v79, v80 + *(v81 + 48), &qword_1EB0FE6A8, &qword_1A3A745A0);
  sub_1A388F740(v13, &qword_1EB0FE6A8, &qword_1A3A745A0);
  sub_1A388F740(v77, &qword_1EB0FE6B8, &qword_1A3A745B0);
  sub_1A388F740(v79, &qword_1EB0FE6A8, &qword_1A3A745A0);
  return sub_1A388F740(v78, &qword_1EB0FE6B8, &qword_1A3A745B0);
}

uint64_t sub_1A3928E1C@<X0>(double *a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0x77656956746F6F52;
  v15[1] = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_1A3928F58(CGFloat *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a2 + *(type metadata accessor for ChromeFloatingControlsBar(0) + 20);
  v13 = *v12;
  LOBYTE(a1) = *(v12 + 8);
  sub_1A3A2EA60();
  if ((a1 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v17;
  }

  v18.origin.x = v9;
  v18.origin.y = v8;
  v18.size.width = v11;
  v18.size.height = v10;
  if (CGRectEqualToRect(v13[5], v18))
  {
    v13[5].origin.x = v9;
    v13[5].origin.y = v8;
    v13[5].size.width = v11;
    v13[5].size.height = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A74680);
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 6) = v13;
    *(&v16 - 5) = v9;
    *(&v16 - 4) = v8;
    *(&v16 - 3) = v11;
    *(&v16 - 2) = v10;
    v17 = v13;
    sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

void sub_1A39291C8()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChromeFloatingControlsBar(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v8 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12;
  }

  swift_getKeyPath(byte_1A3A744C8);
  v12 = v6;
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v9 = *(v6 + 656);
  sub_1A3A2EA60();

  swift_getKeyPath("X*iG");
  v12 = v9;
  sub_1A3929C6C(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel, &unk_1A3A71D40);
  sub_1A3A2F080();

  v10 = *(v9 + 24);

  if (v10 >= 4)
  {
    v12 = v10;
    sub_1A3A321F0();
    __break(1u);
  }
}

double sub_1A3929444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150, &qword_1A3A72C90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = &v39 - v2;
  v42 = sub_1A3A30090();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_1A3A2FEE0();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for ChromeFloatingControlsBar(0) + 20);
  v40 = v0;
  v10 = v0 + v9;
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  v13 = v11;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v43);
    v13 = v44;
  }

  swift_getKeyPath("@+iG");
  v44 = v13;
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v15 = v13[64];

  sub_1A3A2EA60();
  v16 = v11;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v17 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v43);
    v16 = v44;
  }

  swift_getKeyPath(" +iG");
  v44 = v16;
  sub_1A3A2F080();

  v18 = v16[57];
  v19 = v16[58];
  v20 = v16[59];
  v21 = v16[60];

  v45.origin.x = v18;
  v45.origin.y = v19;
  v45.size.width = v20;
  v45.size.height = v21;
  if (v15 >= CGRectGetHeight(v45))
  {
    sub_1A3A2EA60();
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v27 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v43);
      v11 = v44;
    }

    swift_getKeyPath(" +iG");
    v44 = v11;
    sub_1A3A2F080();

    v23 = v11 + 57;
    v24 = v11 + 58;
    v25 = v11 + 59;
    v26 = v11 + 60;
  }

  else
  {
    sub_1A3A2EA60();
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v22 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v43);
      v11 = v44;
    }

    swift_getKeyPath("@+iG");
    v44 = v11;
    sub_1A3A2F080();

    v23 = v11 + 61;
    v24 = v11 + 62;
    v25 = v11 + 63;
    v26 = v11 + 64;
  }

  v28 = *v25;
  v29 = *v24;
  v30 = *v23;
  v31 = *v26;

  v46.origin.x = v30;
  v46.origin.y = v29;
  v46.size.width = v28;
  v46.size.height = v31;
  v32 = v29 + CGRectGetHeight(v46) + -36.0;
  sub_1A3929A68(v5);
  v33 = v41;
  v34 = v42;
  (*(v3 + 16))(v41, v5, v42);
  (*(v3 + 56))(v33, 0, 1, v34);
  v35 = sub_1A3A31CA0();
  sub_1A3912958(v35);
  v37 = v36;

  (*(v3 + 8))(v5, v34);
  return v32 + v37 * -0.5;
}

uint64_t sub_1A3929A68@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A388F6D8(v2, &v14 - v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3929C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3929CB4@<X0>(void *a1@<X1>, double *a2@<X8>)
{
  v4 = sub_1A3A30220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  sub_1A3A30350();
  sub_1A3A2F810();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  *(a2 + 1) = v12;
  *(a2 + 2) = v14;
  *(a2 + 3) = v16;
  return result;
}

uint64_t sub_1A3929DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeFloatingControlsBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3929E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeFloatingControlsBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3929EB0(CGFloat *a1)
{
  v3 = *(type metadata accessor for ChromeFloatingControlsBar(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A3928F58(a1, v4);
}

uint64_t sub_1A3929F7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A392A02C()
{
  result = qword_1EB0FE6E8;
  if (!qword_1EB0FE6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE670, &qword_1A3A74468);
    sub_1A38A08F8(&qword_1EB0FE6F0, &qword_1EB0FE650, &qword_1A3A74420, &unk_1A3A7BE94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE6E8);
  }

  return result;
}

unint64_t sub_1A392A0F8()
{
  result = qword_1EB0FE6F8;
  if (!qword_1EB0FE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE6F8);
  }

  return result;
}

id sub_1A392A14C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(CAMImageAnalysisButton) init];
  [v8 setBackgroundDiameter_];
  [v8 setInhibitGlassMaterial_];
  v9 = [objc_opt_self() clearColor];
  [v8 setCameraModeBackgroundColor_];

  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A3A2EA60();
  sub_1A3903EB4(sub_1A392A4D0, v11);

  return v8;
}

uint64_t sub_1A392A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A392A47C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A392A3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A392A47C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A392A454(uint64_t a1)
{
  sub_1A392A47C();
  sub_1A3A301A0();
  __break(1u);
}

unint64_t sub_1A392A47C()
{
  result = qword_1EB0FE700;
  if (!qword_1EB0FE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE700);
  }

  return result;
}

uint64_t sub_1A392A508(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  if (*(v2 + 16) != 1)
  {
    goto LABEL_6;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath(byte_1A3A748D0);
  sub_1A392B344(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v3 = sub_1A394E960();

  if (v3)
  {
    swift_getKeyPath(byte_1A3A748F8);
    sub_1A3A2F080();

    v4 = *(v2 + 17) ^ 1;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A392A6C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  if (*(v2 + 16) != 1)
  {
    goto LABEL_7;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath(byte_1A3A748D0);
  sub_1A392B344(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v4 = sub_1A394E960();

  if (v4 & 1) != 0 && (swift_getKeyPath(byte_1A3A748D0), sub_1A3A2F080(), , swift_getKeyPath(byte_1A3A74920), sub_1A392B344(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4), sub_1A3A2EA60(), sub_1A3A2F080(), , v5 = sub_1A394FC58(19), , (v5))
  {
    swift_getKeyPath(byte_1A3A748F8);
    sub_1A3A2F080();

    v6 = *(v3 + 17) ^ 1;
  }

  else
  {
LABEL_7:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A392A950(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  if (*(v2 + 16) != 1)
  {
    goto LABEL_6;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath(byte_1A3A748D0);
  sub_1A392B344(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v3 = sub_1A394E960();

  if (v3)
  {
    swift_getKeyPath(byte_1A3A748D0);
    sub_1A3A2F080();

    swift_getKeyPath(byte_1A3A74920);
    sub_1A392B344(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v4 = sub_1A394FC58(19);
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A392AB94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  return *(v2 + 16);
}

double sub_1A392AC34(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  if (*(v2 + 16) != v3)
  {
    KeyPath = swift_getKeyPath(byte_1A3A748A8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A392AD78(char a1, uint64_t a2)
{
  if (*(v2 + 16) == (a1 & 1))
  {
    *(v2 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A748A8, a2);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
    sub_1A3A2F070();
  }
}

void sub_1A392AE88(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A748A8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  *a3 = *(v4 + 16);
}

uint64_t sub_1A392AF30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A748F8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  return *(v2 + 17);
}

void sub_1A392AFD0(char a1, uint64_t a2)
{
  if (*(v2 + 17) == (a1 & 1))
  {
    *(v2 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A748F8, a2);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
    sub_1A3A2F070();
  }
}

void sub_1A392B0E0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A748F8, a2);
  sub_1A392B344(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
  sub_1A3A2F080();

  *a3 = *(v4 + 17);
}

uint64_t sub_1A392B1B8()
{
  v1 = OBJC_IVAR____TtC8CameraUI25ChromeOnboardingViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeOnboardingViewModel(uint64_t a1)
{
  result = qword_1ED997C08;
  if (!qword_1ED997C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A392B2A8(uint64_t a1)
{
  result = sub_1A3A2F0C0();
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

uint64_t sub_1A392B344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A392B38C@<X0>(uint64_t a3@<X8>)
{
  sub_1A389FD78();
  sub_1A3A2EA50();
  result = sub_1A3A308E0();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_1A392B424@<D0>(uint64_t a3@<X8>)
{
  sub_1A389FD78();
  sub_1A3A2EA50();
  v4 = sub_1A3A308E0();
  v6 = v5;
  v8 = v7;
  sub_1A3A30670();
  v9 = sub_1A3A308A0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1A389F1B4(v4, v6, v8 & 1);

  v16 = sub_1A3A30610();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 1;
  return result;
}

void sub_1A392B544(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath("\b(iG", a2);
  sub_1A390A488();
  sub_1A3A2F080();

  *a3 = *(v4 + 896);
}

__n128 sub_1A392B5E4@<Q0>(__n128 **a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath("((iG", a2);
  sub_1A390A488();
  sub_1A3A2F080();

  result = v4[57];
  *a3 = result;
  return result;
}

uint64_t sub_1A392B684(uint64_t a1, uint64_t a2)
{
  sub_1A392B848(a1, a2);
  if (v3)
  {
    v8 = sub_1A3A31810();

    v9 = CAMLocalizedFrameworkString(v8, 0);

    v10 = sub_1A3A31850();
    return v10;
  }

  else
  {
    sub_1A39A04FC(v2);
    v5 = v4;
    v7 = v6;
    v12 = sub_1A3A31810();

    v13 = CAMLocalizedFrameworkString(v12, 0);

    v14 = sub_1A3A31850();
    v16 = v15;

    MEMORY[0x1A58F7770](v14, v16);

    MEMORY[0x1A58F7770](10272, 0xE200000000000000);
    MEMORY[0x1A58F7770](v5, v7);

    MEMORY[0x1A58F7770](41, 0xE100000000000000);
    return 0;
  }
}

void sub_1A392B848(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      swift_getKeyPath("((iG");
      sub_1A390A488();
      sub_1A3A2F080();

      v3 = 920;
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath("\b(iG");
    sub_1A390A488();
    sub_1A3A2F080();

    if (*(a1 + 896))
    {
      swift_getKeyPath("((iG");
      sub_1A3A2F080();

      v3 = 912;
LABEL_6:
      v4 = fmax(round(*(a1 + v3)), 1.0);
      if (v4 == INFINITY)
      {
        __break(1u);
      }

      else if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_13;
    }
  }
}

uint64_t sub_1A392B9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 2)
  {
    v10 = 0x80000001A3AA4600;
    v11 = 0xD000000000000016;
  }

  else
  {
    sub_1A392B848(a1, a2);
    if (v12)
    {
      swift_getKeyPath("\b(iG");
      v18[1] = a1;
      sub_1A390A488();
      sub_1A3A2F080();

      v13 = *(a1 + 896);
      if (v13)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000015;
      }

      if (v13)
      {
        v10 = 0x80000001A3AA45C0;
      }

      else
      {
        v10 = 0x80000001A3AA45E0;
      }
    }

    else
    {
      v10 = 0xE90000000000006CLL;
      v11 = 0x6C69662E6E6F6F6DLL;
    }
  }

  sub_1A392B848(a1, a2);
  if (v15)
  {
    *a3 = v11;
    *(a3 + 8) = v10;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v9 = v11;
    *(v9 + 1) = v10;
    v9[16] = 1;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    v17 = v14;
    swift_storeEnumTagMultiPayload();
    sub_1A3980074(v17, 0, a3);
    return sub_1A392BCAC(v9);
  }
}

unint64_t sub_1A392BBA0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_1A392BBF0()
{
  result = qword_1EB0FE708;
  if (!qword_1EB0FE708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE710, qword_1A3A74A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE708);
  }

  return result;
}

unint64_t sub_1A392BC58()
{
  result = qword_1EB0FE718;
  if (!qword_1EB0FE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE718);
  }

  return result;
}

uint64_t sub_1A392BCAC(uint64_t a1)
{
  v2 = type metadata accessor for ChromeElementIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A392BD08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A74D18, a2);
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v4 + 672);
  *a3 = result;
  return result;
}

char *sub_1A392BEB0(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *&result[OBJC_IVAR____TtCV8CameraUI20ChromeExposureSlider11Coordinator_parent];
  if (v4)
  {
    v6 = *&result[OBJC_IVAR____TtCV8CameraUI20ChromeExposureSlider11Coordinator_parent + 8];
    v7 = result;
    sub_1A365F488(v4, v6);
    v4(a4 & 1);

    return sub_1A3671090(v4, v6);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A392BFF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1A392C050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1A392C0C4(void *a1)
{
  v3 = sub_1A39A12B8(*(v1 + 16), *(v1 + 24));
  swift_getKeyPath(byte_1A3A74D18);
  sub_1A390A488();
  sub_1A3A2F080();

  v4 = *(v3 + 672);

  return [a1 setExposureValueClosestTo:1 animated:v4];
}

void *sub_1A392C188@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = type metadata accessor for ChromeExposureSlider.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV8CameraUI20ChromeExposureSlider11Coordinator_parent];
  *v9 = v3;
  *(v9 + 1) = v4;
  *(v9 + 2) = v5;
  v9[24] = v6;
  sub_1A365F488(v3, v4);
  v11.receiver = v8;
  v11.super_class = v7;
  sub_1A3A2EA60();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A392C22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A392C6FC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A392C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A392C6FC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A392C2F4(uint64_t a1)
{
  sub_1A392C6FC();
  sub_1A3A301A0();
  __break(1u);
}

unint64_t sub_1A392C320()
{
  result = qword_1EB0FE790;
  if (!qword_1EB0FE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE790);
  }

  return result;
}

id sub_1A392C374(uint64_t a1, double *a2, char a3)
{
  v20 = a1;
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(CAMExposureSlider);
  v10 = [v9 initWithTickMarkStyle_];
  [v10 setTransparentGradients];
  sub_1A3A2EA60();
  v11 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v11 = v21;
  }

  swift_getKeyPath(byte_1A3A74D40);
  v21 = v11;
  sub_1A390A488();
  sub_1A3A2F080();

  v13 = *(v11 + 392);

  v14 = 68.0;
  if (v13)
  {
    v14 = 56.0;
  }

  [v10 setGradientInsets_];

  [v10 setTitleText_];
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a2 = v21;
  }

  swift_getKeyPath(byte_1A3A74D18);
  v21 = a2;
  sub_1A3A2F080();

  v16 = a2[84];

  [v10 setExposureValueClosestTo_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE7A0, &qword_1A3A74D68);
  sub_1A3A304D0();
  v17 = v21;
  [v10 addTarget:v21 action:sel_exposureValueChanged_ forControlEvents:4096];

  sub_1A3A304D0();
  v18 = v21;
  [v10 setDelegate_];

  return v10;
}

unint64_t sub_1A392C6FC()
{
  result = qword_1EB0FE7A8;
  if (!qword_1EB0FE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE7A8);
  }

  return result;
}

id NightModeInstructionLabelHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8CameraUI31NightModeInstructionLabelHelperC13localizedText7secondsSSSi_tFZ_0(uint64_t a1)
{
  v1 = sub_1A3A2ED40();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A3A31800();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A3A317E0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3A317D0();
  sub_1A3A317C0();
  sub_1A3A317B0();
  sub_1A3A317C0();
  sub_1A3A317F0();
  sub_1A392CA44();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v4);
  v6 = [objc_opt_self() bundleForClass_];
  sub_1A3A2ED30();
  return sub_1A3A31870();
}

unint64_t sub_1A392CA44()
{
  result = qword_1EB0FE7B0;
  if (!qword_1EB0FE7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0FE7B0);
  }

  return result;
}

__n128 sub_1A392CA90@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A74F48, a2);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v4 + 256);
  v6 = *(v4 + 272);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_1A392CB64@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A74F70, a2);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v4 + 288);
  v6 = *(v4 + 304);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_1A392CC38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A74F98, a2);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v4 + 320);
  v6 = *(v4 + 336);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_1A392CD0C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath(byte_1A3A74FC0, a2);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v4 + 352);
  v6 = *(v4 + 368);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_1A392CDE0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("H%iG", v6);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 96);
  v5 = *(v3 + 112);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A392CEB4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A750B0);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 128);
  v5 = *(v3 + 144);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A392CF88@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A75088);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 160);
  v5 = *(v3 + 176);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A392D05C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("h%iG", v6);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 192);
  v5 = *(v3 + 208);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A392D130(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A750D8);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  *a2 = *(v3 + 440);
}

void sub_1A392D200(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A75100);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  *a2 = *(v3 + 441);
}

uint64_t sub_1A392D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_scenePhaseView) + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel);
  *a3 = a1;
  a3[1] = v4;
  a3[2] = 0;
  sub_1A3A2EA60();

  return sub_1A3A2EA60();
}

void sub_1A392D32C()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v4 = [v3 screen];

      [v4 bounds];
      v6 = v5;
      v8 = v7;

      sub_1A39010FC(*&v0[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel], v9, v6, v8);
    }
  }

  sub_1A392E694();
}

double sub_1A392D4CC(uint64_t a1, id a2)
{
  [a2 bounds];
  sub_1A3901248(a1, v4, v5, v6);
  v7 = sub_1A392E7D0() & 1;
  swift_getKeyPath(byte_1A3A750D8);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (v7 != *(a1 + 440))
  {
    KeyPath = swift_getKeyPath(byte_1A3A750D8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  v9 = [a2 window];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 screen];

    v12 = [objc_opt_self() mainScreen];
    v13 = [v11 isEqual_];
  }

  else
  {
    v13 = 0;
  }

  swift_getKeyPath(byte_1A3A75100);
  sub_1A3A2F080();

  if (v13 != *(a1 + 441))
  {
    v15 = swift_getKeyPath(byte_1A3A75100);
    MEMORY[0x1EEE9AC00](v15);
    sub_1A3A2F070();
  }

  return result;
}

id sub_1A392D7E4(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (sub_1A392E314(a2, a3))
  {
    v7 = *&v3[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel];
    swift_getKeyPath(byte_1A3A74E08);
    sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v9 = *(v7 + 48);
    if (v9 != 255 && (v9 != 1 || *(v7 + 24) == 35))
    {
      MEMORY[0x1EEE9AC00](v8);
      sub_1A3A314E0();
      sub_1A3A2F8A0();
    }

    return 0;
  }

  else
  {
    v11.receiver = v3;
    v11.super_class = type metadata accessor for ChromeSwiftUIView();
    return objc_msgSendSuper2(&v11, sel_hitTest_withEvent_, a1, a2, a3);
  }
}

void sub_1A392D964(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel);
  swift_getKeyPath(byte_1A3A74E08);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v1 + 48) != 255)
  {
    swift_getKeyPath(byte_1A3A74E08);
    sub_1A3A2F080();

    if (*(v1 + 48) != 255)
    {
      swift_getKeyPath(byte_1A3A74E08);
      sub_1A3A2F080();

      v3 = *(v1 + 24);
      v2 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = *(v1 + 48);
      sub_1A38BCF64(v3, v2, v4, *(v1 + 48));
      sub_1A38EEF8C(0, 0, 0, 255);
      if (v5 == 1)
      {
        if (v3 == 35)
        {
          v6 = 35;
        }

        else
        {
          sub_1A38F6EF8(v3, 0x23uLL);
          v6 = v3;
        }

        v7 = v2;
        v8 = v4;
        v9 = 1;
      }

      else
      {
        if (v5 == 255)
        {
          return;
        }

        v6 = v3;
        v7 = v2;
        v8 = v4;
        v9 = v5;
      }

      sub_1A38BC250(v6, v7, v8, v9);
    }
  }
}

BOOL sub_1A392DC50(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel);
  swift_getKeyPath("h$iG");
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(v5 + 648);
  swift_getKeyPath("H$iG");
  sub_1A3929C6C(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel, &unk_1A3A72660);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(v6 + 16);

  if (v7 == 1)
  {
    swift_getKeyPath(byte_1A3A750B0);
    sub_1A3A2F080();

    v11.x = a1;
    v11.y = a2;
    if (CGRectContainsPoint(*(v5 + 128), v11))
    {
      return 1;
    }
  }

  swift_getKeyPath("($iG");
  sub_1A3A2F080();

  v9 = *(v5 + 656);
  swift_getKeyPath("\b$iG");
  sub_1A3929C6C(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel, &unk_1A3A71D40);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v10 = *(v9 + 16);

  if (v10 != 1)
  {
    return 0;
  }

  swift_getKeyPath(byte_1A3A75088);
  sub_1A3A2F080();

  v12.x = a1;
  v12.y = a2;
  return CGRectContainsPoint(*(v5 + 160), v12);
}

uint64_t sub_1A392DF04(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel);
  swift_getKeyPath("(%iG", v8);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v5 + 1168))
  {
    return 1;
  }

  swift_getKeyPath("\b%iG", v9);
  sub_1A3A2F080();

  v6 = *(v5 + 584);
  if ((v6 - 1) < 2)
  {
    return 1;
  }

  if (v6)
  {
    result = sub_1A3A321F0();
    __break(1u);
  }

  else
  {
    swift_getKeyPath(byte_1A3A74F48);
    sub_1A3A2F080();

    v10.x = a1;
    v10.y = a2;
    if (CGRectContainsPoint(*(v5 + 256), v10))
    {
      return 0;
    }

    swift_getKeyPath(byte_1A3A74F70);
    sub_1A3A2F080();

    v11.x = a1;
    v11.y = a2;
    if (CGRectContainsPoint(*(v5 + 288), v11))
    {
      return 0;
    }

    swift_getKeyPath(byte_1A3A74F98);
    sub_1A3A2F080();

    v12.x = a1;
    v12.y = a2;
    if (CGRectContainsPoint(*(v5 + 320), v12))
    {
      return 0;
    }

    else
    {
      swift_getKeyPath(byte_1A3A74FC0);
      sub_1A3A2F080();

      v13.x = a1;
      v13.y = a2;
      return !CGRectContainsPoint(*(v5 + 352), v13);
    }
  }

  return result;
}

BOOL sub_1A392E164(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel);
  swift_getKeyPath(byte_1A3A74E30);
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v5 + 416) != 2)
  {
    return 0;
  }

  swift_getKeyPath(byte_1A3A74E80);
  sub_1A3A2F080();

  v9.x = a1;
  v9.y = a2;
  if (CGRectContainsPoint(*(v5 + 64), v9))
  {
    return 1;
  }

  swift_getKeyPath("h%iG", v7);
  sub_1A3A2F080();

  v10.x = a1;
  v10.y = a2;
  if (CGRectContainsPoint(*(v5 + 192), v10))
  {
    return 1;
  }

  swift_getKeyPath("H%iG", v8);
  sub_1A3A2F080();

  v11.x = a1;
  v11.y = a2;
  return CGRectContainsPoint(*(v5 + 96), v11);
}

BOOL sub_1A392E314(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel];
  swift_getKeyPath("(&iG");
  sub_1A3929C6C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v6 + 666))
  {
    return 0;
  }

  swift_getKeyPath("\b&iG");
  sub_1A3A2F080();

  if (*(v6 + 755) & 1) == 0 || (swift_getKeyPath(byte_1A3A74E58), sub_1A3A2F080(), , v33.x = a1, v33.y = a2, !CGRectContainsPoint(*(v6 + 760), v33)) || (sub_1A392DF04(a1, a2) & 1) == 0 || (v8 = *(v6 + 1088)) != 0 && (v9 = *(v6 + 1096), v10 = sub_1A3A2EA60(), v11 = v8(v10), sub_1A3671090(v8, v9), v11) && ([v3 convertPoint:v11 toCoordinateSpace:{a1, a2}], v12 = objc_msgSend(v11, sel_pointInside_withEvent_, 0), v11, (v12) || sub_1A392DC50(a1, a2))
  {
    v13 = [v3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_1A38F7324(v13, v22);
    v35.origin.x = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v23, v24);
    v34.x = a1;
    v34.y = a2;
    result = CGRectContainsPoint(v35, v34);
    if (!result)
    {
      return result;
    }

    if (sub_1A392DC50(a1, a2) || sub_1A392E164(a1, a2))
    {
      return 0;
    }

    swift_getKeyPath(byte_1A3A74E08);
    sub_1A3A2F080();

    v25 = *(v6 + 48);
    if (v25 != 255)
    {
      v27 = *(v6 + 24);
      v26 = *(v6 + 32);
      v28 = *(v6 + 40);
      swift_getKeyPath(byte_1A3A74E30);
      sub_1A38BCF78(v27, v26, v28, v25);
      sub_1A3A2F080();

      if (*(v6 + 416) > 1u || v25 != 1)
      {
        v29 = v27;
        v30 = v26;
        v31 = v28;
        v32 = v25;
        goto LABEL_19;
      }

      if (v27 == 35)
      {
        v29 = 35;
        v30 = v26;
        v31 = v28;
        v32 = 1;
LABEL_19:
        sub_1A38BC250(v29, v30, v31, v32);
        return 0;
      }

      sub_1A38BC250(v27, v26, v28, 1);
    }
  }

  return 1;
}

void sub_1A392E694()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v10 = [v3 screen];

      if (v10)
      {
        if (qword_1EB0FE128 == 2)
        {
          [v10 bounds];
          v5 = v4;
          [v10 bounds];
          if (v5 <= v6)
          {
            v5 = v6;
          }

          [v10 scale];
          v8 = v7 * v5;
          [v10 nativeBounds];
          v9 = v8 / CGRectGetHeight(v12);
          qword_1EB0FE128 = v9 < 1.0;
          qword_1EB0FE130 = *&v9;
        }
      }
    }
  }
}

id sub_1A392E7D0()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result screen];

    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [v0 bounds];
    if (v8 >= v5)
    {
      [v0 bounds];
      return (v9 >= v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1A392E8B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ChromeSwiftUIView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A392E9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE30();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A392EA38(uint64_t a1)
{
  v2 = sub_1A3A30430();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3A2FE50();
}

void sub_1A392EB00(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v28[0] = xmmword_1A3A75130;
  v28[1] = xmmword_1A3A75130;
  sub_1A3A30F80();
  v12 = v30;
  v13 = *&v29[16];
  *(a3 + 48) = *v29;
  *(a3 + 64) = v13;
  *(a3 + 80) = v12;
  v14 = type metadata accessor for ChromeButtonColumn(0);
  if (qword_1EB0FC210 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_1EB101B38);
  sub_1A3938EBC(v15, v11, type metadata accessor for ModeWheelGestureState);
  sub_1A3938EBC(v11, v8, type metadata accessor for ModeWheelGestureState);
  sub_1A3A30F80();
  sub_1A393B610(v11, type metadata accessor for ModeWheelGestureState);
  v16 = v14[10];
  *&v28[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD900, &qword_1A3A75150);
  sub_1A3A30F80();
  *(a3 + v16) = *v29;
  v17 = a3 + v14[11];
  LOBYTE(v28[0]) = 1;
  sub_1A3A30F80();
  v18 = *&v29[8];
  *v17 = v29[0];
  *(v17 + 8) = v18;
  *(a3 + v14[12]) = 0;
  v19 = a3 + v14[13];
  type metadata accessor for ChromeViewModel(0);
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  *v19 = sub_1A3A2F650();
  *(v19 + 8) = v20 & 1;
  v21 = a3 + v14[14];
  *v21 = swift_getKeyPath("8#iG");
  *(v21 + 8) = 0;
  v31 = *a1;
  *v29 = *(a1 + 1);
  v22 = *v29;
  *&v29[9] = *(a1 + 25);
  *(a3 + 25) = *&v29[9];
  *a3 = *a1;
  *(a3 + 16) = v22;
  LOBYTE(v27) = a2 & 1;
  sub_1A3938A80(&v31, v28);
  sub_1A3A2EA60();
  sub_1A388F6D8(v29, v28, &qword_1EB0FCDD8, &qword_1A3A6DA78);
  sub_1A3A30F80();
  v23 = *(&v28[0] + 1);
  *(a3 + 88) = v28[0];
  *(a3 + 96) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA08, &unk_1A3A6F500);
  v24 = swift_allocObject();
  *(v24 + 17) = 2;
  *(v24 + 24) = 0;
  sub_1A3A2F0B0();
  *(v24 + 16) = 0;
  *(v24 + 18) = a2 & 1;
  v27 = v24;
  sub_1A3A2EA60();
  sub_1A3A30F80();
  sub_1A3938ADC(&v31);

  sub_1A388F740(v29, &qword_1EB0FCDD8, &qword_1A3A6DA78);

  v25 = *(&v28[0] + 1);
  *(a3 + 104) = *&v28[0];
  *(a3 + 112) = v25;
}

uint64_t sub_1A392EED4()
{
  v1 = type metadata accessor for ChromeButtonColumn(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE808, &qword_1A3A75250);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  *v6 = sub_1A3A300B0();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE810, &unk_1A3A75258);
  sub_1A392F168(v0, &v6[*(v7 + 44)]);
  v8 = sub_1A3A314E0();
  v9 = *(v0 + 96);
  LOBYTE(v18) = *(v0 + 88);
  *(&v18 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  v10 = v17[0];
  v11 = &v6[*(v4 + 36)];
  *v11 = v8;
  v11[8] = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = v13;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE818, &qword_1A3A75268);
  sub_1A3A30F90();
  v18 = v17[0];
  v19 = v17[1];
  sub_1A3938EBC(v0, v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeButtonColumn);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  sub_1A393A1F4(v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ChromeButtonColumn);
  sub_1A3938FA4();
  sub_1A3939088();
  sub_1A3A30CA0();

  return sub_1A388F740(v6, &qword_1EB0FE808, &qword_1A3A75250);
}

uint64_t sub_1A392F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE840, &qword_1A3A752A8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE848, &qword_1A3A752B0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE850, &qword_1A3A752B8);
  sub_1A3939110();
  sub_1A3A30240();
  type metadata accessor for ChromeViewModel(0);
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v14 = sub_1A3A2F650();
  v16 = v15;
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE890, &qword_1A3A752E0) + 36)];
  *v17 = 1;
  *(v17 + 1) = v14;
  v17[16] = v16 & 1;
  v18 = sub_1A3A2F650();
  v19 = &v13[*(v9 + 44)];
  *v19 = v18;
  v19[8] = v20 & 1;
  v21 = sub_1A3A2F650();
  LOBYTE(v14) = v22;
  sub_1A3A31480();
  sub_1A3A2F780();
  v51 = v14 & 1;
  LOBYTE(v62) = v14 & 1;
  *(v58 + 7) = *&v58[7];
  *(&v58[2] + 7) = *&v58[9];
  *(&v58[4] + 7) = *&v58[11];
  sub_1A392FA00();
  v24 = v23;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE898, &qword_1A3A752E8);
  sub_1A39392B4();
  v25 = v54;
  sub_1A3A30240();
  v26 = sub_1A3A2F650();
  LOBYTE(v14) = v27;
  v28 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8D8, &qword_1A3A75308) + 36);
  *v28 = 1;
  *(v28 + 8) = v26;
  *(v28 + 16) = v14 & 1;
  v29 = sub_1A3A2F650();
  v30 = v25 + *(v4 + 44);
  *v30 = v29;
  *(v30 + 8) = v31 & 1;
  v32 = v55;
  sub_1A388F6D8(v13, v55, &qword_1EB0FE848, &qword_1A3A752B0);
  v33 = v25;
  v34 = v52;
  sub_1A388F6D8(v33, v52, &qword_1EB0FE840, &qword_1A3A752A8);
  v35 = v32;
  v36 = v53;
  sub_1A388F6D8(v35, v53, &qword_1EB0FE848, &qword_1A3A752B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8E0, &qword_1A3A75310);
  v38 = (v36 + *(v37 + 48));
  __asm { FMOV            V0.2D, #24.0 }

  v50 = _Q0;
  v59 = _Q0;
  *&v60[0] = v21;
  v44 = v51;
  BYTE8(v60[0]) = v51;
  *(v60 + 9) = *v58;
  *(&v60[1] + 9) = *&v58[2];
  *(&v60[2] + 9) = *&v58[4];
  *(&v60[3] + 1) = *(&v58[5] + 7);
  *&v61 = 0;
  *(&v61 + 1) = v24;
  v45 = v60[0];
  *v38 = _Q0;
  v38[1] = v45;
  v46 = v60[1];
  v47 = v60[2];
  v48 = v61;
  v38[4] = v60[3];
  v38[5] = v48;
  v38[2] = v46;
  v38[3] = v47;
  sub_1A388F6D8(v34, v36 + *(v37 + 64), &qword_1EB0FE840, &qword_1A3A752A8);
  sub_1A388F6D8(&v59, &v62, &qword_1EB0FE8E8, &qword_1A3A75318);
  sub_1A388F740(v54, &qword_1EB0FE840, &qword_1A3A752A8);
  sub_1A388F740(v13, &qword_1EB0FE848, &qword_1A3A752B0);
  sub_1A388F740(v34, &qword_1EB0FE840, &qword_1A3A752A8);
  v62 = v50;
  v63 = v21;
  v64 = v44;
  v65 = *v58;
  v66 = *&v58[2];
  *v67 = *&v58[4];
  *&v67[15] = *(&v58[5] + 7);
  v68 = 0;
  v69 = v24;
  sub_1A388F740(&v62, &qword_1EB0FE8E8, &qword_1A3A75318);
  return sub_1A388F740(v55, &qword_1EB0FE848, &qword_1A3A752B0);
}

uint64_t sub_1A392F690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeButtonColumn(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  *a2 = sub_1A3A300B0();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE968, &qword_1A3A75578);
  sub_1A39306A0(a1, a2 + *(v12 + 44));
  sub_1A3938EBC(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeButtonColumn);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1A393A1F4(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ChromeButtonColumn);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE868, &qword_1A3A752C0) + 36));
  *v15 = sub_1A393A36C;
  v15[1] = v14;
  v16 = (a1 + *(v9 + 60));
  v17 = *v16;
  LOBYTE(v9) = *(v16 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v17 = v25;
  }

  swift_getKeyPath(byte_1A3A75320);
  v25 = v17;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v19 = *(v17 + 1152);

  KeyPath = swift_getKeyPath("hiG");
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE850, &qword_1A3A752B8);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_1A393BAF0;
  v23[2] = v21;
  return result;
}

void sub_1A392FA00()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ChromeButtonColumn(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v16;
  }

  swift_getKeyPath(byte_1A3A754D8);
  v16 = v8;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v10 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v10 = v16;
  }

  swift_getKeyPath(byte_1A3A75500);
  v16 = v10;
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v12 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v12 = v16;
  }

  swift_getKeyPath(byte_1A3A75528);
  v16 = v12;
  sub_1A3A2F080();

  sub_1A3A2EA60();
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v16;
  }

  swift_getKeyPath(byte_1A3A75550);
  v16 = v6;
  sub_1A3A2F080();
}

uint64_t sub_1A392FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A39300C0(a2);
  v8 = (a1 + *(type metadata accessor for ChromeButtonColumn(0) + 52));
  v9 = *v8;
  LOBYTE(a1) = *(v8 + 8);
  sub_1A3A2EA60();
  if ((a1 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v17;
  }

  swift_getKeyPath(byte_1A3A75320);
  v17 = v9;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v9 + 1152);

  KeyPath = swift_getKeyPath("hiG");
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE898, &qword_1A3A752E8);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_1A3939D68;
  v15[2] = v13;
  return result;
}

uint64_t sub_1A39300C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChromeButtonColumn(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2FEE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(v5 + 60);
  v14 = *v13;
  v15 = *(v13 + 8);
  sub_1A3A2EA60();
  if ((v15 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    v30 = v7;
    v17 = v6;
    v18 = v16;
    sub_1A3A2F270();

    v6 = v17;
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v14 = v31;
  }

  type metadata accessor for ChromeElementModel();
  v20 = sub_1A39B11D4(12, 3, v14, v19);

  if (v20)
  {
    v21 = *(v2 + 96);
    LOBYTE(v31) = *(v2 + 88);
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30F90();
  }

  *a1 = sub_1A3A300B0();
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8F0, &qword_1A3A75378);
  sub_1A3931798(v2, (a1 + *(v22 + 44)));
  sub_1A392FA00();
  v24 = v23;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8C0, &qword_1A3A752F8) + 36));
  *v25 = 0;
  v25[1] = v24;
  sub_1A3938EBC(v2, v8, type metadata accessor for ChromeButtonColumn);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  sub_1A393A1F4(v8, v27 + v26, type metadata accessor for ChromeButtonColumn);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8B0, &qword_1A3A752F0);
  v29 = (a1 + *(result + 36));
  *v29 = sub_1A393A00C;
  v29[1] = v27;
  return result;
}

void sub_1A3930420(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a3 + *(type metadata accessor for ChromeButtonColumn(0) + 52);
  v14 = *v13;
  LOBYTE(a2) = *(v13 + 8);
  sub_1A3A2EA60();
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v14 = v20;
  }

  v16 = v10 - v9;
  v17 = v12 - v11;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v16;
  v21.size.height = v12 - v11;
  if (CGRectEqualToRect(v14[2], v21))
  {
    v14[2].origin.x = v9;
    v14[2].origin.y = v11;
    v14[2].size.width = v16;
    v14[2].size.height = v17;
  }

  else
  {
    KeyPath = swift_getKeyPath(" #iG");
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 6) = v14;
    *(&v19 - 5) = v9;
    *(&v19 - 4) = v11;
    *(&v19 - 3) = v16;
    *(&v19 - 2) = v17;
    v20 = v14;
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39306A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v102 = sub_1A3A2FF70();
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v88 - v5;
  v6 = type metadata accessor for ChromeButtonColumn(0);
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v94 = v7;
  v95 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE970, &qword_1A3A75580);
  *&v101 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - v9;
  v11 = sub_1A3A2FEE0();
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  *(&v101 + 1) = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE978, &qword_1A3A75588);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v106 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v88 - v16;
  v105 = v6;
  v17 = a1 + *(v6 + 52);
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1A3A2EA60();
  v20 = v18;
  LODWORD(v97) = v19;
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = v8;
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    v8 = v21;
    v23 = *(&v101 + 1);
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v104 + 8))(v23, v11);
    v20 = v119;
  }

  v96 = v11;
  v24 = sub_1A395DBCC(v20);

  if (v24 == 35)
  {
    v25 = 1;
  }

  else
  {
    v26 = sub_1A3A31530();
    v27 = *(a1 + 8);
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v119 = *a1;
    v120 = v27;
    *v121 = *(a1 + 16);
    *&v121[16] = v28;
    LOBYTE(v122) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
    sub_1A3A311B0();
    v90 = *v112;
    v91 = v111;
    v89 = *&v112[16];
    v30 = v112[24];
    KeyPath = swift_getKeyPath(byte_1A3A753A0);
    v32 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
    v92 = v8;
    *&v10[*(v32 + 40)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    v33 = swift_getKeyPath("8#iG");
    *v10 = v26;
    *(v10 + 1) = v24;
    v34 = v90;
    *(v10 + 1) = v91;
    *(v10 + 2) = v34;
    *(v10 + 6) = v89;
    v10[56] = v30;
    *(v10 + 8) = CAMPhotoFormatMake;
    *(v10 + 9) = 0;
    type metadata accessor for ChromeViewModel(0);
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *(v10 + 10) = sub_1A3A2F650();
    v10[88] = v35 & 1;
    v36 = &v10[*(v32 + 44)];
    *v36 = v33;
    v36[8] = 0;
    LOBYTE(v32) = sub_1A3A30620();
    sub_1A3A2F520();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE990, &qword_1A3A755A8) + 36)];
    *v45 = v32;
    *(v45 + 1) = v38;
    *(v45 + 2) = v40;
    *(v45 + 3) = v42;
    *(v45 + 4) = v44;
    v45[40] = 0;
    v46 = v95;
    sub_1A3938EBC(a1, v95, type metadata accessor for ChromeButtonColumn);
    v47 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v48 = swift_allocObject();
    v49 = v48 + v47;
    v8 = v92;
    sub_1A393A1F4(v46, v49, type metadata accessor for ChromeButtonColumn);
    v50 = &v10[*(v8 + 36)];
    *v50 = sub_1A39311C0;
    v50[1] = 0;
    v50[2] = sub_1A393A470;
    v50[3] = v48;
    sub_1A388F670(v10, v107, &qword_1EB0FE970, &qword_1A3A75580);
    v25 = 0;
  }

  (*(v101 + 56))(v107, v25, 1, v8);
  if (v97)
  {
    v140 = v18;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v51 = sub_1A3A305C0();
    sub_1A3A2F270();

    v52 = *(&v101 + 1);
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v104 + 8))(v52, v96);
    v18 = v140;
  }

  v53 = sub_1A395DD30(v18);

  v54 = sub_1A3A31530();
  v93 = v54;
  v55 = *(a1 + 8);
  v56 = *(a1 + 32);
  v57 = *(a1 + 40);
  v119 = *a1;
  v120 = v55;
  *v121 = *(a1 + 16);
  *&v121[16] = v56;
  LOBYTE(v122) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
  sub_1A3A311B0();
  v96 = *(&v111 + 1);
  v97 = v111;
  v101 = *v112;
  v95 = *&v112[16];
  LODWORD(v104) = v112[24];
  v105 = swift_getKeyPath("8#iG");
  v109 = 0;
  sub_1A3A2EA50();
  v58 = v98;
  sub_1A3A2FF60();
  v59 = v99;
  v60 = v102;
  (*(v99 + 16))(v103, v58, v102);
  sub_1A393A408(&qword_1EB0FCEE8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
  v103 = sub_1A3A2F7F0();
  (*(v59 + 8))(v58, v60);
  v94 = v53;

  LODWORD(v102) = v109;
  sub_1A3A314A0();
  sub_1A3A2F780();
  *&v141[3] = *&v141[27];
  *&v141[11] = *&v141[35];
  *&v141[19] = *&v141[43];
  sub_1A392FA00();
  v62 = v61;
  v63 = sub_1A3A31480();
  v98 = v64;
  v99 = v63;
  v65 = v106;
  v66 = v107;
  sub_1A388F6D8(v107, v106, &qword_1EB0FE978, &qword_1A3A75588);
  v67 = v65;
  v68 = v100;
  sub_1A388F6D8(v67, v100, &qword_1EB0FE978, &qword_1A3A75588);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE980, &qword_1A3A75598);
  v70 = v68 + *(v69 + 48);
  *v70 = 0;
  *(v70 + 8) = 0;
  v71 = (v68 + *(v69 + 64));
  v72 = v97;
  *&v111 = v54;
  *(&v111 + 1) = v97;
  v73 = v96;
  *v112 = v96;
  *&v112[8] = v101;
  v74 = v66;
  v75 = v95;
  *&v112[24] = v95;
  LOBYTE(v113) = v104;
  *(&v113 + 1) = *v110;
  DWORD1(v113) = *&v110[3];
  *(&v113 + 1) = v53;
  *&v114 = v105;
  BYTE8(v114) = v102;
  *(&v114 + 9) = *v108;
  HIDWORD(v114) = *&v108[3];
  *&v115[0] = v103;
  WORD4(v115[0]) = 1;
  *(&v115[3] + 1) = *&v141[23];
  *&v116 = 0;
  *(&v115[2] + 10) = *&v141[16];
  *(&v115[1] + 10) = *&v141[8];
  *(v115 + 10) = *v141;
  *(&v116 + 1) = v62;
  v76 = v74;
  *&v117 = sub_1A393156C;
  *(&v117 + 1) = 0;
  v77 = v98;
  *&v118 = v63;
  *(&v118 + 1) = v98;
  v78 = v111;
  v79 = *v112;
  v80 = v113;
  v71[2] = *&v112[16];
  v71[3] = v80;
  *v71 = v78;
  v71[1] = v79;
  v81 = v114;
  v82 = v115[0];
  v83 = v115[2];
  v71[6] = v115[1];
  v71[7] = v83;
  v71[4] = v81;
  v71[5] = v82;
  v84 = v115[3];
  v85 = v116;
  v86 = v118;
  v71[10] = v117;
  v71[11] = v86;
  v71[8] = v84;
  v71[9] = v85;
  sub_1A388F6D8(&v111, &v119, &qword_1EB0FE988, &qword_1A3A755A0);
  sub_1A388F740(v76, &qword_1EB0FE978, &qword_1A3A75588);
  v119 = v93;
  v120 = v72;
  *v121 = v73;
  *&v121[8] = v101;
  v122 = v75;
  v123 = v104;
  *v124 = *v110;
  *&v124[3] = *&v110[3];
  v125 = v94;
  v126 = v105;
  v127 = v102;
  *v128 = *v108;
  *&v128[3] = *&v108[3];
  v129 = v103;
  v130 = 1;
  *&v133[14] = *&v141[23];
  v134 = 0;
  *v133 = *&v141[16];
  v132 = *&v141[8];
  v131 = *v141;
  v135 = v62;
  v136 = sub_1A393156C;
  v137 = 0;
  v138 = v99;
  v139 = v77;
  sub_1A388F740(&v119, &qword_1EB0FE988, &qword_1A3A755A0);
  return sub_1A388F740(v106, &qword_1EB0FE978, &qword_1A3A75588);
}

uint64_t sub_1A39311C0@<X0>(double *a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0x77656956746F6F52;
  v15[1] = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_1A39312FC(CGFloat *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a2 + *(type metadata accessor for ChromeButtonColumn(0) + 52);
  v13 = *v12;
  LOBYTE(a1) = *(v12 + 8);
  sub_1A3A2EA60();
  if ((a1 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v17;
  }

  v18.origin.x = v9;
  v18.origin.y = v8;
  v18.size.width = v11;
  v18.size.height = v10;
  if (CGRectEqualToRect(v13[3], v18))
  {
    v13[3].origin.x = v9;
    v13[3].origin.y = v8;
    v13[3].size.width = v11;
    v13[3].size.height = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath("H iG");
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 6) = v13;
    *(&v16 - 5) = v9;
    *(&v16 - 4) = v8;
    *(&v16 - 3) = v11;
    *(&v16 - 2) = v10;
    v17 = v13;
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

void sub_1A393156C(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A30DB0();
  v16[0] = 0x77656956746F6F52;
  v16[1] = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  MinY = CGRectGetMinY(v17);
  *a1 = v6;
  *(a1 + 8) = xmmword_1A3A75130;
  *(a1 + 24) = MinY;
  *(a1 + 32) = 0x10000000000000;
}

void sub_1A39316D8(uint64_t a1, void *a2)
{
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE818, &qword_1A3A75268);
  sub_1A3A30F90();
  sub_1A3A30FA0();
}

void sub_1A3931798(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v116 = a2;
  v4 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8F8, &qword_1A3A75380);
  v7 = *(v6 - 8);
  v109 = v6;
  v110 = v7;
  v111 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v91 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE900, &qword_1A3A75388);
  v106 = *(v104 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v91 - v9;
  v10 = type metadata accessor for ModePicker(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE908, &qword_1A3A75390);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  v17 = sub_1A3A2FEE0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ChromeButtonColumn(0);
  v21 = a1 + *(v97 + 52);
  v22 = *v21;
  v23 = *(v21 + 8);
  sub_1A3A2EA60();
  if ((v23 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = a1;
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    a1 = v24;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v22 = *v120;
  }

  type metadata accessor for ChromeElementModel();
  v27 = sub_1A39B11D4(12, 3, v22, v26);

  if ((v27 & 1) != 0 && (v28 = *(a1 + 96), v120[0] = *(a1 + 88), *&v120[8] = v28, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090), sub_1A3A30F90(), (v118 & 1) == 0))
  {
    type metadata accessor for ChromeViewModel(0);
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v29 = sub_1A3A2F650();
    v31 = v30;
    KeyPath = swift_getKeyPath(byte_1A3A75440);
    v102 = v31 & 1;
    v105 = v29;
    sub_1A3A2EA60();
    v103 = KeyPath;
    sub_1A3A2EA60();
  }

  else
  {
    v105 = 0;
    v103 = 0;
    v102 = 255;
  }

  v33 = v97;
  v101 = *(v97 + 36);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);
  sub_1A3A30FB0();
  v99 = *(a1 + 88);
  v98 = *(a1 + 96);
  LOBYTE(v118) = v99;
  v119 = v98;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FB0();
  v94 = *&v120[8];
  v95 = *v120;
  v93 = v120[16];
  v34 = *(a1 + 112);
  v118 = *(a1 + 104);
  v119 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE910, &qword_1A3A75398);
  sub_1A3A30FB0();
  v92 = *v120;
  v91 = *&v120[8];
  v35 = (a1 + *(v33 + 44));
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v118) = v36;
  v119 = v37;
  sub_1A3A30FB0();
  v38 = *v120;
  v39 = v120[16];
  v40 = v10[9];
  v41 = v10[10];
  v97 = a1;
  v42 = &v12[v40];
  v43 = &v12[v41];
  sub_1A38C9AFC();
  v44 = sub_1A3A31C70();
  type metadata accessor for Debouncer();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v44;
  v118 = v45;
  sub_1A3A30F80();
  v46 = *&v120[8];
  *v43 = *v120;
  *(v43 + 1) = v46;
  v47 = v10[11];
  *&v12[v47] = swift_getKeyPath(byte_1A3A753A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  swift_storeEnumTagMultiPayload();
  v48 = &v12[v10[12]];
  type metadata accessor for ChromeViewModel(0);
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  *v48 = sub_1A3A2F650();
  v48[8] = v49 & 1;
  v50 = v10[15];
  *&v12[v50] = swift_getKeyPath(byte_1A3A753D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8, &qword_1A3A6F660);
  swift_storeEnumTagMultiPayload();
  v51 = &v12[v10[5]];
  v52 = v94;
  *v51 = v95;
  *(v51 + 1) = v52;
  v51[16] = v93;
  v53 = &v12[v10[13]];
  *v53 = 0;
  v53[8] = 1;
  v12[v10[8]] = 1;
  *v42 = 0;
  *(v42 + 1) = 0;
  v54 = &v12[v10[6]];
  *v54 = v92;
  *(v54 + 8) = v91;
  v55 = &v12[v10[7]];
  *v55 = v38;
  v55[16] = v39;
  sub_1A3938EBC(v12, v16, type metadata accessor for ModePicker);
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE918, &unk_1A3A75410) + 36)] = 1;
  sub_1A393B610(v12, type metadata accessor for ModePicker);
  sub_1A3A31480();
  sub_1A3A2F780();
  v56 = &v16[*(v104 + 36)];
  v57 = *&v120[16];
  *v56 = *v120;
  *(v56 + 1) = v57;
  *(v56 + 2) = v121;
  v58 = v108;
  sub_1A388F6D8(v16, v108, &qword_1EB0FE900, &qword_1A3A75388);
  v59 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v60 = (v107 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_1A388F670(v58, v61 + v59, &qword_1EB0FE900, &qword_1A3A75388);
  v62 = (v61 + v60);
  *v62 = sub_1A3932338;
  v62[1] = 0;
  v63 = sub_1A3A31480();
  v64 = &v16[*(v109 + 36)];
  *v64 = sub_1A393A024;
  v64[1] = v61;
  v64[2] = v63;
  v64[3] = v65;
  v66 = v112;
  sub_1A388F6D8(v16, v112, &qword_1EB0FE8F8, &qword_1A3A75380);
  v67 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v68 = (v111 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1A388F670(v66, v69 + v67, &qword_1EB0FE8F8, &qword_1A3A75380);
  v70 = (v69 + v68);
  *v70 = sub_1A393266C;
  v70[1] = 0;
  v71 = sub_1A3A31480();
  v73 = v72;
  v74 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE920, &qword_1A3A75420) + 36)];
  *v74 = sub_1A393A04C;
  v74[1] = v69;
  v74[2] = v71;
  v74[3] = v73;
  v75 = sub_1A3A31480();
  v77 = v76;
  v78 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE928, &qword_1A3A75428) + 36)];
  *v78 = sub_1A39329E8;
  v78[1] = 0;
  v78[2] = v75;
  v78[3] = v77;
  v79 = sub_1A3A314E0();
  LOBYTE(v118) = v99;
  v119 = v98;
  sub_1A3A30F90();
  LOBYTE(v77) = v117;
  v80 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE930, &qword_1A3A75430) + 36)];
  *v80 = v79;
  v80[8] = v77;
  v81 = sub_1A3A314E0();
  v82 = v115;
  sub_1A3A30F90();
  LOBYTE(v77) = *(v82 + 1);
  sub_1A393B610(v82, type metadata accessor for ModeWheelGestureState);
  v83 = v114;
  v84 = &v16[*(v113 + 36)];
  *v84 = v81;
  v84[8] = v77;
  sub_1A388F6D8(v16, v83, &qword_1EB0FE908, &qword_1A3A75390);
  v85 = v116;
  v86 = v105;
  v87 = v102;
  *v116 = v105;
  v85[1] = v87;
  v88 = v103;
  v85[2] = v103;
  *(v85 + 12) = 0;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE938, &qword_1A3A75438);
  sub_1A388F6D8(v83, v85 + *(v89 + 48), &qword_1EB0FE908, &qword_1A3A75390);
  v90 = v85 + *(v89 + 64);
  sub_1A393A124(v86, v87, v88, 0);
  sub_1A393A184(v86, v87, v88, 0);
  *v90 = 0;
  v90[8] = 1;
  sub_1A388F740(v16, &qword_1EB0FE908, &qword_1A3A75390);
  sub_1A388F740(v83, &qword_1EB0FE908, &qword_1A3A75390);
  sub_1A393A184(v86, v87, v88, 0);
}

double sub_1A3932338@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A310F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED996458 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1ED99D850);
  v9 = *(v5 + 16);
  v9(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A3A681C0;
  v13 = v12 + v11;
  v9(v13, v7, v4);
  *(v13 + v10[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  v15 = *(*v14 + 136);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58, &qword_1A3A6F2A8);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + *(*v14 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  (*(v5 + 8))(v7, v4);
  *(v14 + 16) = v12;
  *(v14 + 24) = xmmword_1A3A6EB10;
  v21[1] = v14;
  sub_1A3A30F80();
  v17 = v22;
  v18 = v23;
  KeyPath = swift_getKeyPath("(!iG");
  *a2 = 0x4038000000000000;
  *(a2 + 8) = a1 & 1;
  *(a2 + 9) = v22;
  *(a2 + 12) = *(&v22 + 3);
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 3.0;
  *(a2 + 32) = xmmword_1A3A6EB20;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  return result;
}

void *sub_1A393266C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v25 = a1;
  v3 = sub_1A3A310F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModeLoupeBackground(0);
  v8 = v7[5];
  sub_1A3A31380();
  v9 = sub_1A3A31430();
  (*(*(v9 - 8) + 56))(&a2[v8], 0, 1, v9);
  v10 = v7[7];
  if (qword_1ED996458 != -1)
  {
    swift_once();
  }

  v24 = &a2[v10];
  v11 = __swift_project_value_buffer(v3, qword_1ED99D850);
  v12 = *(v4 + 16);
  v12(v6, v11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A3A681C0;
  v16 = v15 + v14;
  v12(v16, v6, v3);
  *(v16 + v13[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
  v17 = swift_allocObject();
  *(v17 + 40) = 0;
  v18 = *(*v17 + 136);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58, &qword_1A3A6F2A8);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *(v17 + *(*v17 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  (*(v4 + 8))(v6, v3);
  *(v17 + 16) = v15;
  *(v17 + 24) = xmmword_1A3A6EB10;
  v26 = v17;
  result = sub_1A3A30F80();
  v21 = v28;
  v22 = v24;
  *v24 = v27;
  *(v22 + 1) = v21;
  *&a2[v7[8]] = 0x4008000000000000;
  *a2 = 0x4038000000000000;
  a2[v7[6]] = v25 & 1;
  return result;
}

void sub_1A39329E8(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A3A30DB0();
  v36 = 0x77656956746F6F52;
  v37 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v5, v2);
  v38.origin.x = v7;
  v38.origin.y = v9;
  v38.size.width = v11;
  v38.size.height = v13;
  MinX = CGRectGetMinX(v38);
  v36 = 0x77656956746F6F52;
  v37 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v14(v5, v2);
  v39.origin.x = v17;
  v39.origin.y = v19;
  v39.size.width = v21;
  v39.size.height = v23;
  MaxX = CGRectGetMaxX(v39);
  v36 = 0x77656956746F6F52;
  v37 = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v14(v5, v2);
  v40.origin.x = v26;
  v40.origin.y = v28;
  v40.size.width = v30;
  v40.size.height = v32;
  MaxY = CGRectGetMaxY(v40);
  *a1 = v35;
  *(a1 + 8) = MinX;
  *(a1 + 16) = MaxX;
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 32) = MaxY;
}

void sub_1A3932C44(uint64_t *a1, void *a2)
{
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE818, &qword_1A3A75268);
  sub_1A3A30F90();
  sub_1A3A30FA0();
  sub_1A3A30F90();
  sub_1A3A30FA0();
  sub_1A3A30F90();
  sub_1A3A30FA0();
}

uint64_t sub_1A3932DA4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v101 = a3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9E0, &qword_1A3A758B8);
  MEMORY[0x1EEE9AC00](v100);
  v6 = &v75[-v5];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9F0, &qword_1A3A758C0);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v75[-v7];
  v96 = sub_1A3A2FF70();
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75[-v10];
  v12 = sub_1A3A31170();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75[-v16];
  v85 = sub_1A3A31370();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_1A3A31430();
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v20 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v75[-v22];
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9F8, &qword_1A3A758C8);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v75[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9C0, &qword_1A3A758A0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v75[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  *&v93 = &v75[-v27];
  v28 = *a1;
  if (sub_1A3A018A8(*a1, 0xBuLL))
  {
    v79 = v17;
    v80 = v13;
    v81 = v12;
    v82 = v24;
    v78 = v11;
    type metadata accessor for ChromeViewModel(0);
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v29 = sub_1A3A2F650();
    v31 = v30;
    sub_1A3A31480();
    sub_1A3A2F780();
    v32 = v110;
    v33 = v111;
    v34 = v112;
    v35 = v113;
    v105 = v31 & 1;
    v104 = BYTE8(v110);
    v103 = BYTE8(v111);
    v76 = sub_1A3933B6C();
    v77 = v29;
    *&v106 = v29;
    BYTE8(v106) = v105;
    *v107 = v32;
    v107[8] = v104;
    *&v107[16] = v33;
    v107[24] = v103;
    v108 = v34;
    v109 = v35;
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v36 = off_1ED997FE0;
    swift_getKeyPath(byte_1A3A758D0);
    v102 = v36;
    sub_1A393A408(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v37 = v36[2];
    sub_1A3A2EA60();
    v38 = sub_1A394F77C(3);
    swift_getKeyPath(byte_1A3A758F8);
    v102 = v37;
    sub_1A393A408(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2F080();

    v39 = sub_1A394FC58(13);
    swift_getKeyPath(aX_1);
    v102 = v37;
    sub_1A3A2F080();

    v40 = sub_1A394FC58(14);
    swift_getKeyPath(aX_2);
    v102 = v37;
    sub_1A3A2F080();

    v41 = sub_1A394FC58(11);

    if (v38 - 2 >= 3)
    {
      if (v38 >= 2u)
      {
        sub_1A3A31380();
      }

      else
      {
        if (v41)
        {
          v57 = 0x10000;
        }

        else
        {
          v57 = 0;
        }

        v58 = v57 | (v38 << 24);
        if (v40)
        {
          v59 = 256;
        }

        else
        {
          v59 = 0;
        }

        v60 = v83;
        sub_1A3908D0C(v76 & 1, (v58 | v59) & 0xFFFFFFFE | v39 & 1, v83);
        sub_1A3A31390();
        (*(v84 + 8))(v60, v85);
      }
    }

    else
    {
      LOBYTE(v102) = v39 & 1;
      BYTE1(v102) = v40 & 1;
      BYTE2(v102) = v41 & 1;
      BYTE3(v102) = v38;
      sub_1A38BE1AC();
      sub_1A3A31420();
    }

    v61 = v87;
    v62 = v86;
    v63 = v20;
    v64 = v90;
    (*(v87 + 32))(v86, v63, v90);
    v65 = v89;
    sub_1A3A31160();
    v66 = v79;
    sub_1A3A31150();
    v67 = *(v80 + 8);
    v68 = v81;
    v67(v65, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9C8, &unk_1A3A758A8);
    sub_1A393AA5C();
    sub_1A3890F84();
    sub_1A3A309A0();
    v67(v66, v68);
    (*(v61 + 8))(v62, v64);

    v69 = v78;
    sub_1A3A2FF60();
    v70 = v97;
    v71 = v96;
    (*(v97 + 16))(v95, v69, v96);
    sub_1A393A408(&qword_1EB0FCEE8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
    v72 = sub_1A3A2F7F0();
    (*(v70 + 8))(v69, v71);
    v73 = v88;
    (*(v91 + 32))(v88, v94, v92);
    *(v73 + *(v82 + 36)) = v72;
    v74 = v93;
    sub_1A388F670(v73, v93, &qword_1EB0FE9C0, &qword_1A3A758A0);
    sub_1A388F6D8(v74, v98, &qword_1EB0FE9C0, &qword_1A3A758A0);
    swift_storeEnumTagMultiPayload();
    sub_1A393A94C();
    sub_1A393AAE8();
    sub_1A3A301F0();
    return sub_1A388F740(v74, &qword_1EB0FE9C0, &qword_1A3A758A0);
  }

  else
  {
    v94 = *a2;
    v42 = *(a2 + 24);
    v106 = *(a2 + 8);
    *v107 = v42;
    *&v107[9] = *(a2 + 33);
    sub_1A38A8F64(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
    sub_1A3A311B0();
    v93 = v110;
    v92 = v111;
    v91 = v112;
    v43 = v113;
    v44 = swift_allocObject();
    v45 = *(a2 + 48);
    v44[3] = *(a2 + 32);
    v44[4] = v45;
    *(v44 + 73) = *(a2 + 57);
    v46 = *(a2 + 16);
    v44[1] = *a2;
    v44[2] = v46;
    KeyPath = swift_getKeyPath(byte_1A3A753A0);
    v48 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
    *&v6[*(v48 + 40)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    v49 = swift_getKeyPath("8#iG");
    *v6 = v94;
    *(v6 + 1) = v28;
    v50 = v92;
    *(v6 + 1) = v93;
    *(v6 + 2) = v50;
    *(v6 + 6) = v91;
    v6[56] = v43;
    *(v6 + 8) = sub_1A393AC3C;
    *(v6 + 9) = v44;
    type metadata accessor for ChromeViewModel(0);
    sub_1A393A888(a2, &v106);
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *(v6 + 10) = sub_1A3A2F650();
    v6[88] = v51 & 1;
    v52 = &v6[*(v48 + 44)];
    *v52 = v49;
    v52[8] = 0;
    sub_1A3A2FF60();
    v53 = v97;
    v54 = v96;
    (*(v97 + 16))(v95, v11, v96);
    sub_1A393A408(&qword_1EB0FCEE8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
    v55 = sub_1A3A2F7F0();
    (*(v53 + 8))(v11, v54);
    *&v6[*(v100 + 36)] = v55;
    sub_1A388F6D8(v6, v98, &qword_1EB0FE9E0, &qword_1A3A758B8);
    swift_storeEnumTagMultiPayload();
    sub_1A393A94C();
    sub_1A393AAE8();
    sub_1A3A301F0();
    return sub_1A388F740(v6, &qword_1EB0FE9E0, &qword_1A3A758B8);
  }
}

uint64_t sub_1A3933B6C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 72);
  v5 = *(v0 + 64);
  v9 = v5;
  if (v10 != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v6 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v9, &qword_1EB0FC8D8, &qword_1A3A6D260);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1A3933CCC(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v49 = a1[2];
  v50 = v4;
  v51 = a1[4];
  v52 = *(a1 + 10);
  v5 = a1[1];
  v47 = *a1;
  v48 = v5;
  v6 = sub_1A3A2F2A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1)
  {
    if (a1[3])
    {
      v34 = *(a1 + 1);
      v11 = a1[2];
      v37 = a1[1];
      v38 = v11;
      v12 = a1[4];
      v39 = a1[3];
      v40 = v12;
      v41 = *(a1 + 10);
      v36 = *a1;
      sub_1A38BEE70(&v36, &v42);
      if (qword_1ED996460 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v6, qword_1ED99D868);
      (*(v7 + 16))(v9, v13, v6);
      v43[1] = v49;
      v44 = v50;
      v45 = v51;
      v46 = v52;
      v42 = v47;
      v43[0] = v48;
      sub_1A38BEE70(&v42, v35);
      v14 = sub_1A3A2F280();
      v15 = sub_1A3A31C40();
      sub_1A388F740(a1, &qword_1EB0FD158, &qword_1A3A6E258);
      v33 = v15;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v31 = v14;
        v17 = v16;
        v18 = swift_slowAlloc();
        v32 = v7;
        v19 = v18;
        v35[0] = v18;
        *v17 = 136315138;
        v20 = v10();
        v22 = sub_1A39ABC10(v20, v21, v35);

        *(v17 + 4) = v22;
        v23 = v31;
        _os_log_impl(&dword_1A3640000, v31, v33, "User tapped on selected option %s, skipping action", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1A58FAC10](v19, -1, -1);
        MEMORY[0x1A58FAC10](v17, -1, -1);

        sub_1A388F740(a1, &qword_1EB0FD158, &qword_1A3A6E258);
        (*(v32 + 8))(v9, v6);
      }

      else
      {
        sub_1A388F740(a1, &qword_1EB0FD158, &qword_1A3A6E258);

        (*(v7 + 8))(v9, v6);
      }
    }

    else
    {
      v24 = *(a1 + 7);
      v25 = a1[3];
      v43[1] = a1[2];
      v44 = v25;
      v45 = a1[4];
      v46 = *(a1 + 10);
      v26 = a1[1];
      v42 = *a1;
      v43[0] = v26;
      v27 = sub_1A38BEE70(&v42, &v36);
      v24(v27);
      sub_1A388F740(a1, &qword_1EB0FD158, &qword_1A3A6E258);
    }
  }

  v28 = *(a2 + 24);
  v42 = *(a2 + 8);
  v43[0] = v28;
  *(v43 + 9) = *(a2 + 33);
  v36 = 0uLL;
  *&v37 = 0;
  BYTE8(v37) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
  return sub_1A3A311A0();
}

uint64_t sub_1A3934088()
{
  v1 = v0[2];
  *v16 = v0[3];
  *&v16[9] = *(v0 + 57);
  v2 = *v0;
  v15[1] = v0[1];
  v15[2] = v1;
  v15[0] = v2;
  v17 = *&v16[8];
  v14 = *&v16[8];
  KeyPath = swift_getKeyPath(asc_1A3A75878);
  v4 = swift_allocObject();
  v5 = v0[3];
  v4[3] = v0[2];
  v4[4] = v5;
  *(v4 + 73) = *(v0 + 57);
  v6 = v0[1];
  v4[1] = *v0;
  v4[2] = v6;
  sub_1A388F6D8(&v17, v13, &qword_1EB0FC8E8, &qword_1A3A6D270);
  sub_1A393A888(v15, v13);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE9A8, &qword_1A3A75898);
  v9 = sub_1A38A08F8(&qword_1ED9966C0, &qword_1EB0FC8E8, &qword_1A3A6D270, MEMORY[0x1E69E6338]);
  v10 = sub_1A3890E54();
  v11 = sub_1A393A8C0();
  return sub_1A3A31200(&v14, KeyPath, sub_1A393A880, v4, v7, v8, v9, v10, v11);
}

uint64_t sub_1A3934200()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v20 = *(v0 + 16);
  v21 = v2;
  v22 = *(v0 + 32);
  v23 = v3;
  v24 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
  MEMORY[0x1A58F7010](&v16, v5);
  v6 = 0;
  v8 = v16;
  v7 = v17;
  v9 = v18;
  v10 = v19;
  if (v19 < 2u)
  {
    goto LABEL_4;
  }

  if (v19 == 2)
  {
    v11 = *(v1 + 8);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    sub_1A38A8F64(v11);
    v6 = sub_1A3A018A8(v8, v11);
    sub_1A3890F2C(v11);
    v10 = v14;
    v9 = v13;
    v7 = v12;
LABEL_4:
    sub_1A38BC250(v8, v7, v9, v10);
  }

  return v6 & 1;
}

void sub_1A39342DC()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v23;
  }

  v11 = *(v0 + 8);
  swift_getKeyPath(byte_1A3A75A18);
  v23 = v8;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v8 + 1192))
  {
    sub_1A3A2EA60();
    v12 = sub_1A38BC058(v11);

    (*(v12 + 56))(v13);

    v14 = &v7[*(v5 + 48)];
    v16 = *v14;
    v15 = v14[1];
    sub_1A38C048C(*v14, v15);
    sub_1A393B610(v7, type metadata accessor for ChromeElementState);
    if (v16)
    {
      v17 = v16(3);
      sub_1A3671090(v16, v15);
      v18 = 0;
      v19 = *(v17 + 16);
      do
      {
        if (v19 == v18)
        {
          break;
        }

        v20 = type metadata accessor for ChromeMenu(0);
        v21 = v17 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v18++;
      }

      while (*(*(v21 + *(v20 + 28)) + 16) < 3uLL);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A393461C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_1A3A31170();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v46[-v5];
  v6 = sub_1A3A31370();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_1A3A31430();
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46[-v11];
  v57 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA00, &qword_1A3A75970);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA08, &qword_1A3A75978);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v46[-v18];
  *v16 = sub_1A3A2FF40();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA10, &qword_1A3A75980);
  sub_1A3934DD4(v1, &v16[*(v19 + 44)]);
  v52 = v14;
  v20 = *(v14 + 36);
  v56 = v16;
  v21 = &v16[v20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA18, &qword_1A3A75988);
  sub_1A3A2FC30();
  *v21 = 0;
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1A3A30000();
  v24 = v13;
  (*(*(v23 - 8) + 104))(v13, v22, v23);
  v47 = sub_1A3937D5C();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v25 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A758D0);
  v65 = v25;
  sub_1A393A408(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v26 = v25[2];
  sub_1A3A2EA60();
  v27 = sub_1A394F77C(3);
  swift_getKeyPath(byte_1A3A758F8);
  v65 = v26;
  sub_1A393A408(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  v28 = sub_1A394FC58(13);
  swift_getKeyPath(aX_1);
  v65 = v26;
  sub_1A3A2F080();

  v29 = sub_1A394FC58(14);
  swift_getKeyPath(aX_2);
  v65 = v26;
  sub_1A3A2F080();

  v30 = sub_1A394FC58(11);

  if (v27 - 2 >= 3)
  {
    if (v27 >= 2u)
    {
      v31 = v9;
      sub_1A3A31380();
    }

    else
    {
      if (v30)
      {
        v32 = 0x10000;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32 | (v27 << 24);
      if (v29)
      {
        v34 = 256;
      }

      else
      {
        v34 = 0;
      }

      v35 = v48;
      sub_1A3908D0C(v47 & 1, (v33 | v34) & 0xFFFFFFFE | v28 & 1, v48);
      v31 = v9;
      sub_1A3A31390();
      (*(v49 + 8))(v35, v50);
    }
  }

  else
  {
    LOBYTE(v65) = v28 & 1;
    BYTE1(v65) = v29 & 1;
    BYTE2(v65) = v30 & 1;
    BYTE3(v65) = v27;
    sub_1A38BE1AC();
    v31 = v9;
    sub_1A3A31420();
  }

  v36 = v58;
  v37 = v51;
  (*(v58 + 32))(v51, v31, v64);
  v38 = v59;
  sub_1A3A31160();
  v39 = v60;
  sub_1A3A31150();
  v40 = v62;
  v41 = *(v61 + 8);
  v41(v38, v62);
  sub_1A393AC44();
  sub_1A393A408(qword_1ED9969F8, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v42 = v53;
  v43 = v56;
  sub_1A3A309A0();
  v41(v39, v40);
  (*(v36 + 8))(v37, v64);
  sub_1A393B610(v24, MEMORY[0x1E6981998]);
  sub_1A388F740(v43, &qword_1EB0FEA00, &qword_1A3A75970);
  v44 = v63;
  (*(v54 + 32))(v63, v42, v55);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA40, &qword_1A3A75998);
  *(v44 + *(result + 36)) = 0;
  return result;
}

void sub_1A3934DD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_1A3A2FEE0();
  v172 = *(v3 - 8);
  v173 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v171 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v151 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v142 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v142 - v10;
  v11 = sub_1A3A2FB90();
  v169 = *(v11 - 8);
  v170 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v156 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v157 = v14;
  v158 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA48, &qword_1A3A759A0);
  v161 = *(v15 - 8);
  v162 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v160 = &v142 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA50, &qword_1A3A759A8);
  MEMORY[0x1EEE9AC00](v159);
  v163 = &v142 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA58, &qword_1A3A759B0);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v142 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA60, &qword_1A3A759B8);
  v166 = *(v19 - 8);
  v167 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA68, &qword_1A3A759C0);
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v142 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v153 = &v142 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v142 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA70, &qword_1A3A759C8);
  MEMORY[0x1EEE9AC00](v145);
  v150 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v147 = &v142 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v149 = &v142 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA78, &qword_1A3A759D0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v142 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA80, &qword_1A3A759D8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v142 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA88, &qword_1A3A759E0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v146 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v176 = &v142 - v43;
  v44 = sub_1A3934200();
  v174 = v21;
  if (v44)
  {
    sub_1A39342DC();
    if (v45)
    {
      sub_1A3936230(v39);
      v46 = sub_1A3A30640();
      sub_1A3A2F520();
      v47 = &v39[*(v37 + 36)];
      *v47 = v46;
      *(v47 + 1) = v48;
      *(v47 + 2) = v49;
      *(v47 + 3) = v50;
      *(v47 + 4) = v51;
      v47[40] = 0;
      sub_1A388F6D8(v39, v36, &qword_1EB0FEA80, &qword_1A3A759D8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAF0, &qword_1A3A75A48);
      sub_1A393B100();
      sub_1A393B2F4();
      v52 = v176;
      sub_1A3A301F0();
      sub_1A388F740(v39, &qword_1EB0FEA80, &qword_1A3A759D8);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA90, &qword_1A3A759E8);
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      goto LABEL_11;
    }
  }

  v144 = v34;
  v54 = *(a1 + 24);
  v55 = *(a1 + 48);
  v56 = *(a1 + 56);
  *&v187 = *(a1 + 16);
  *(&v187 + 1) = v54;
  v188 = *(a1 + 32);
  *&v189 = v55;
  BYTE8(v189) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
  MEMORY[0x1A58F7010](&v194, v57);
  if (BYTE8(v195) == 255)
  {
    goto LABEL_10;
  }

  v58 = v194;
  v59 = v195;
  if (BYTE8(v195) != 2)
  {
    sub_1A38BC250(v194, *(&v194 + 1), v195, SBYTE8(v195));
    goto LABEL_10;
  }

  v60 = *(a1 + 8);
  sub_1A38A8F64(v60);
  v61 = sub_1A3A018A8(v58, v60);
  sub_1A3890F2C(v60);
  sub_1A38BC250(v58, *(&v58 + 1), v59, 2);
  if ((v61 & 1) == 0)
  {
LABEL_10:
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA90, &qword_1A3A759E8);
    (*(*(v69 - 8) + 56))(v176, 1, 1, v69);
    goto LABEL_11;
  }

  if (v60 == 2)
  {
    type metadata accessor for ChromeViewModel(0);
    sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v62 = sub_1A3A2F650();
    __asm { FMOV            V0.2D, #10.0 }

    v194 = _Q0;
    *&v195 = v62;
    WORD4(v195) = v68 & 1;
  }

  else
  {
    v194 = 0uLL;
    *&v195 = 0;
    WORD4(v195) = 256;
  }

  sub_1A3919E1C();
  sub_1A3A301F0();
  v130 = *(&v187 + 1);
  v143 = v187;
  v131 = v188;
  v132 = BYTE8(v188);
  v133 = BYTE9(v188);
  sub_1A3A31480();
  sub_1A3A2F780();
  LOBYTE(v194) = v133;
  *&v179[6] = v184;
  *&v179[22] = v185;
  *&v179[38] = v186;
  v134 = sub_1A3A30640();
  sub_1A3A2F520();
  v135 = *&v179[16];
  *(v36 + 26) = *v179;
  LOBYTE(v187) = 0;
  *v36 = v143;
  *(v36 + 1) = v130;
  *(v36 + 2) = v131;
  v36[24] = v132;
  v36[25] = v133;
  *(v36 + 42) = v135;
  *(v36 + 58) = *&v179[32];
  *(v36 + 9) = *&v179[46];
  v36[80] = v134;
  *(v36 + 11) = v136;
  *(v36 + 12) = v137;
  *(v36 + 13) = v138;
  *(v36 + 14) = v139;
  v36[120] = 0;
  *(v36 + 121) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAF0, &qword_1A3A75A48);
  sub_1A393B100();
  sub_1A393B2F4();
  v140 = v176;
  sub_1A3A301F0();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA90, &qword_1A3A759E8);
  (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
LABEL_11:
  v70 = v158;
  sub_1A3938EBC(a1, v158, type metadata accessor for ChromeButtonColumn.ExpandableButton);
  v71 = (*(v156 + 80) + 16) & ~*(v156 + 80);
  v72 = swift_allocObject();
  v73 = sub_1A393A1F4(v70, v72 + v71, type metadata accessor for ChromeButtonColumn.ExpandableButton);
  MEMORY[0x1EEE9AC00](v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA98, &qword_1A3A759F0);
  sub_1A393AD90();
  v74 = v160;
  sub_1A3A30FE0();
  v75 = sub_1A3A31480();
  sub_1A3A2FBF0(&v187, 0, 1, 0, 1, v75, v76);
  v77 = v163;
  (*(v161 + 32))(v163, v74, v162);
  v78 = &v77[*(v159 + 36)];
  v79 = v192;
  *(v78 + 4) = v191;
  *(v78 + 5) = v79;
  *(v78 + 6) = v193;
  v80 = v188;
  *v78 = v187;
  *(v78 + 1) = v80;
  v81 = v190;
  *(v78 + 2) = v189;
  *(v78 + 3) = v81;
  sub_1A3A31480();
  sub_1A3A2F780();
  v82 = v77;
  v83 = v164;
  sub_1A388F670(v82, v164, &qword_1EB0FEA50, &qword_1A3A759A8);
  v84 = v165;
  v85 = (v83 + *(v165 + 36));
  v86 = v195;
  *v85 = v194;
  v85[1] = v86;
  v85[2] = v196;
  v87 = v168;
  sub_1A3A2FB80();
  v88 = sub_1A393AFBC();
  v89 = sub_1A393A408(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v90 = v170;
  sub_1A3A30960();
  (*(v169 + 8))(v87, v90);
  sub_1A388F740(v83, &qword_1EB0FEA58, &qword_1A3A759B0);
  v91 = *(a1 + 8);
  if (v91 != 15 && v91 != 16)
  {
    v180 = sub_1A39FDA64(*(a1 + 8));
    v181 = v92;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);
  }

  v180 = v84;
  v181 = v90;
  v182 = v88;
  v183 = v89;
  swift_getOpaqueTypeConformance2();
  v93 = v167;
  v94 = v178;
  sub_1A3A30B70();

  (*(v166 + 8))(v94, v93);
  v95 = *(a1 + 80);
  v96 = *(a1 + 88);
  sub_1A3A2EA60();
  v97 = v95;
  if ((v96 & 1) == 0)
  {
    sub_1A3A31C30();
    v98 = sub_1A3A305C0();
    sub_1A3A2F270();

    v99 = v171;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v172 + 8))(v99, v173);
    v97 = v180;
  }

  swift_getKeyPath(byte_1A3A75A18);
  v180 = v97;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (!*(v97 + 1192))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1A3A2EA60();
  v100 = sub_1A38BC058(v91);

  v102 = v155;
  (*(v100 + 56))(v101);

  v103 = *(v102 + 32);
  v104 = *(v102 + 40);
  sub_1A3A2EA50();
  sub_1A393B610(v102, type metadata accessor for ChromeElementState);
  v180 = v103;
  v181 = v104;
  sub_1A389FD78();
  v105 = v177;
  sub_1A3A2FA20();

  sub_1A388F740(v105, &qword_1EB0FEA68, &qword_1A3A759C0);
  sub_1A3A2EA60();
  v106 = v95;
  if ((v96 & 1) == 0)
  {
    sub_1A3A31C30();
    v107 = sub_1A3A305C0();
    sub_1A3A2F270();

    v108 = v171;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v172 + 8))(v108, v173);
    v106 = v180;
  }

  swift_getKeyPath(byte_1A3A75A18);
  v180 = v106;
  sub_1A3A2F080();

  if (!*(v106 + 1192))
  {
    goto LABEL_29;
  }

  sub_1A3A2EA60();
  v109 = sub_1A38BC058(v91);

  v111 = v154;
  (*(v109 + 56))(v110);

  v112 = *(v111 + 16);
  v113 = *(v111 + 24);
  sub_1A3A2EA50();
  sub_1A393B610(v111, type metadata accessor for ChromeElementState);
  v180 = v112;
  v181 = v113;
  v114 = v153;
  v115 = v175;
  sub_1A3A2FA10();

  sub_1A388F740(v115, &qword_1EB0FEA68, &qword_1A3A759C0);
  sub_1A3A2EA60();
  if ((v96 & 1) == 0)
  {
    sub_1A3A31C30();
    v116 = sub_1A3A305C0();
    sub_1A3A2F270();

    v117 = v171;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v172 + 8))(v117, v173);
    v95 = v180;
  }

  swift_getKeyPath(byte_1A3A75A18);
  v180 = v95;
  sub_1A3A2F080();

  if (*(v95 + 1192))
  {
    sub_1A3A2EA60();
    v118 = sub_1A38BC058(v91);

    v120 = v151;
    (*(v118 + 56))(v119);

    sub_1A3A2EA50();
    sub_1A393B610(v120, type metadata accessor for ChromeElementState);
    v121 = v148;
    sub_1A3A2FA70();

    sub_1A388F740(v114, &qword_1EB0FEA68, &qword_1A3A759C0);
    v122 = v147;
    v123 = &v147[*(v145 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA18, &qword_1A3A75988);
    sub_1A3A2FC40();
    *v123 = 0;
    sub_1A388F670(v121, v122, &qword_1EB0FEA68, &qword_1A3A759C0);
    v124 = v149;
    sub_1A388F670(v122, v149, &qword_1EB0FEA70, &qword_1A3A759C8);
    v125 = v176;
    v126 = v146;
    sub_1A388F6D8(v176, v146, &qword_1EB0FEA88, &qword_1A3A759E0);
    v127 = v150;
    sub_1A388F6D8(v124, v150, &qword_1EB0FEA70, &qword_1A3A759C8);
    v128 = v152;
    sub_1A388F6D8(v126, v152, &qword_1EB0FEA88, &qword_1A3A759E0);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAE8, &qword_1A3A75A40);
    sub_1A388F6D8(v127, v128 + *(v129 + 48), &qword_1EB0FEA70, &qword_1A3A759C8);
    sub_1A388F740(v124, &qword_1EB0FEA70, &qword_1A3A759C8);
    sub_1A388F740(v125, &qword_1EB0FEA88, &qword_1A3A759E0);
    sub_1A388F740(v127, &qword_1EB0FEA70, &qword_1A3A759C8);
    sub_1A388F740(v126, &qword_1EB0FEA88, &qword_1A3A759E0);
    return;
  }

LABEL_30:
  __break(1u);
}

void sub_1A3936230(uint64_t a1@<X8>)
{
  v3 = sub_1A3A2FF20();
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A3A2FAB0();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB68, &qword_1A3A75A80);
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v9;
  v10 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v11;
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB18, &qword_1A3A75A58);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v79 = (&v71 - v14);
  KeyPath = type metadata accessor for ChromeMenu(0);
  v71 = *(KeyPath - 8);
  MEMORY[0x1EEE9AC00](KeyPath);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v71 - v17;
  v74 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v71 - v20;
  v90 = sub_1A3A2FEE0();
  v21 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 80);
  v92 = v1;
  v28 = *(v1 + 88);
  sub_1A3A2EA60();
  if ((v28 & 1) == 0)
  {
    sub_1A3A31C30();
    v29 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v21 + 8))(v23, v90);
    v27 = v93;
  }

  v30 = *(v92 + 8);
  swift_getKeyPath(byte_1A3A75A18);
  v93 = v27;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v27 + 1192))
  {
    sub_1A3A2EA60();
    v31 = sub_1A38BC058(v30);

    (*(v31 + 56))(v32);

    v33 = &v26[*(v24 + 48)];
    v35 = *v33;
    v34 = v33[1];
    sub_1A38C048C(*v33, v34);
    sub_1A393B610(v26, type metadata accessor for ChromeElementState);
    if (v35)
    {
      v36 = v35(3);
      sub_1A3671090(v35, v34);
      if (*(v36 + 16))
      {
        v37 = *(v71 + 80);
        v38 = v72;
        sub_1A3938EBC(v36 + ((v37 + 32) & ~v37), v72, type metadata accessor for ChromeMenu);

        v39 = v38;
        v40 = v91;
        sub_1A393A1F4(v39, v91, type metadata accessor for ChromeMenu);
        v41 = sub_1A3A2FF40();
        v42 = v79;
        *v79 = v41;
        *(v42 + 8) = 0;
        *(v42 + 16) = 1;
        v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB70, &qword_1A3A75A88) + 44);
        v97 = sub_1A38BCAB8(*(v40 + *(KeyPath + 28)));
        KeyPath = swift_getKeyPath(asc_1A3A75A90);
        v43 = v78;
        sub_1A3938EBC(v92, v78, type metadata accessor for ChromeButtonColumn.ExpandableButton);
        v44 = v40;
        v45 = v75;
        sub_1A3938EBC(v44, v75, type metadata accessor for ChromeMenu);
        v46 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v47 = (v77 + v37 + v46) & ~v37;
        v48 = swift_allocObject();
        sub_1A393A1F4(v43, v48 + v46, type metadata accessor for ChromeButtonColumn.ExpandableButton);
        sub_1A393A1F4(v45, v48 + v47, type metadata accessor for ChromeMenu);
        v49 = swift_allocObject();
        *(v49 + 16) = sub_1A393B524;
        *(v49 + 24) = v48;
        v92 = a1;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD478, &qword_1A3A7C1F0);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB78, &qword_1A3A75AC0);
        v52 = sub_1A38A08F8(&qword_1EB0FD488, &qword_1EB0FD478, &qword_1A3A7C1F0, MEMORY[0x1E69E6338]);
        v78 = v12;
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB80, &qword_1A3A75AC8);
        v90 = v13;
        v54 = v53;
        v55 = sub_1A3A2FB90();
        v56 = sub_1A38A08F8(&qword_1EB0FEB88, &qword_1EB0FEB80, &qword_1A3A75AC8, MEMORY[0x1E697D680]);
        v57 = sub_1A393A408(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
        v93 = v54;
        v94 = v55;
        v95 = v56;
        v96 = v57;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_1A3A31200(&v97, KeyPath, sub_1A38C82AC, v49, v50, v51, v52, MEMORY[0x1E69E6540], OpaqueTypeConformance2);
        sub_1A3A31590();
        v59 = v80;
        sub_1A3A2FAC0();
        v60 = v84;
        sub_1A3A2FF10();
        v61 = sub_1A393A408(&qword_1EB0FEB90, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
        v62 = sub_1A393A408(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
        v63 = v82;
        v64 = v87;
        v65 = v89;
        sub_1A3A2F580();
        (*(v88 + 8))(v60, v65);
        (*(v83 + 8))(v59, v64);
        v67 = v85;
        v66 = v86;
        (*(v85 + 16))(v81, v63, v86);
        v93 = v64;
        v94 = v65;
        v95 = v61;
        v96 = v62;
        swift_getOpaqueTypeConformance2();
        v68 = sub_1A3A2F7F0();
        (*(v67 + 8))(v63, v66);
        v69 = v78;
        *(v42 + *(v78 + 36)) = v68;
        v70 = v92;
        sub_1A388F670(v42, v92, &qword_1EB0FEB18, &qword_1A3A75A58);
        (*(v90 + 56))(v70, 0, 1, v69);
        sub_1A393B610(v91, type metadata accessor for ChromeMenu);
        return;
      }
    }

    (*(v13 + 56))(a1, 1, 1, v12);
  }

  else
  {
    __break(1u);
  }
}

double sub_1A3936DB8(uint64_t a1)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

void sub_1A3936E24(uint64_t a1)
{
  v3 = type metadata accessor for ChromeMenu(0);
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - v7;
  v8 = sub_1A3A2FEE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A3934200())
  {
    v14 = *(a1 + 64);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
    v14(&v68);
    return;
  }

  v58 = v9;
  v60 = v1;
  v61 = v13;
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  sub_1A3A2EA60();
  v17 = v15;
  v59 = v8;
  v57 = v16;
  if ((v16 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    v19 = v74;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v58 + 8))(v19, v59);
    v17 = v68;
  }

  v20 = *(a1 + 8);
  swift_getKeyPath(byte_1A3A75A18);
  *&v68 = v17;
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (v17[149])
  {
    sub_1A3A2EA60();
    v56 = v20;
    v21 = sub_1A38BC058(v20);

    v23 = v61;
    (*(v21 + 56))(v22);

    v24 = (v23 + *(v11 + 48));
    if (*v24)
    {
      v25 = (*v24)(3);
      if (*(v25 + 16))
      {
        sub_1A3938EBC(v25 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v5, type metadata accessor for ChromeMenu);

        v26 = v63;
        sub_1A393A1F4(v5, v63, type metadata accessor for ChromeMenu);
        v27 = *(*(v26 + *(v3 + 28)) + 16);
        if (v27 == 2)
        {
          sub_1A3937554(v26);
        }

        else if (v27 == 1)
        {
          v28 = (*(v23 + *(v11 + 44)))(3, 0);
          if (v31 <= 0xFBu)
          {
            v32 = v31;
            v33 = v30;
            v34 = v29;
            v35 = v28;
            sub_1A3A2EA60();
            if ((v57 & 1) == 0)
            {
              sub_1A3A31C30();
              v36 = sub_1A3A305C0();
              sub_1A3A2F270();

              v37 = v74;
              sub_1A3A2FED0();
              swift_getAtKeyPath();

              (*(v58 + 8))(v37, v59);
              v15 = v68;
            }

            v38 = v15[153];
            v39 = v15[154];
            __swift_project_boxed_opaque_existential_1(v15 + 150, v38);
            (*(v39 + 8))(v35, v34, v33, v32, v15, v38, v39);

            sub_1A3890EA8(v35, v34, v33, v32);
            v23 = v61;
          }
        }

        else
        {
          v53 = *(a1 + 24);
          v54 = *(a1 + 48);
          v55 = *(a1 + 56);
          *&v68 = *(a1 + 16);
          *(&v68 + 1) = v53;
          v69 = *(a1 + 32);
          *&v70 = v54;
          BYTE8(v70) = v55;
          v65 = 0;
          v66 = 0;
          v64 = v56;
          v67 = 2;
          sub_1A38A8F64(v56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70, &qword_1A3A75590);
          sub_1A3A311A0();
        }

        sub_1A393B610(v26, type metadata accessor for ChromeMenu);
        goto LABEL_22;
      }
    }

    v40 = (*(v23 + *(v11 + 44)))(3, 0);
    if (v43 < 0xFCu)
    {
      v44 = v43;
      v45 = v42;
      v46 = v41;
      v47 = v40;
      sub_1A3A2EA60();
      if ((v57 & 1) == 0)
      {
        sub_1A3A31C30();
        v48 = sub_1A3A305C0();
        sub_1A3A2F270();

        v49 = v74;
        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v58 + 8))(v49, v59);
        v15 = v68;
      }

      v50 = v15[153];
      v51 = v15[154];
      __swift_project_boxed_opaque_existential_1(v15 + 150, v50);
      (*(v51 + 8))(v47, v46, v45, v44, v15, v50, v51);

      sub_1A3890EA8(v47, v46, v45, v44);
      v52 = v61;
      goto LABEL_23;
    }

LABEL_22:
    v52 = v23;
LABEL_23:
    sub_1A393B610(v52, type metadata accessor for ChromeElementState);
    return;
  }

  __break(1u);
}

void sub_1A3937554(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ChromeMenu(0) + 28));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 80);
    while ((*v4 & 1) == 0)
    {
      ++v3;
      v4 += 88;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    v9 = __OFADD__(v3, 1);
    v10 = v3 + 1;
    if (v9)
    {
      goto LABEL_13;
    }

    v5 = v10 % v2;
    if (v5 >= v2)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v6 = v1 + 32 + 88 * v5;
  if ((*(v6 + 48) & 1) == 0)
  {
    v7 = *(v6 + 56);
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    v8 = sub_1A3A2EA60();
    v7(v8);
  }
}

uint64_t sub_1A3937688@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2B8, &qword_1A3A75B00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1A3A30090();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A3A2FEE0();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 8);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  sub_1A3A2EA60();
  v15 = v13;
  v34 = v14;
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v35 + 8))(v12, v10);
    v15 = v38;
  }

  v32 = v10;
  v17 = type metadata accessor for ChromeElementModel();
  v18 = v36;
  v33 = v17;
  sub_1A39AE314(v37, 3, 0, v15, v36);

  sub_1A3937B54(v9);
  sub_1A391163C(v9);
  (*(v7 + 8))(v9, v6);
  v19 = sub_1A3A306B0();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = sub_1A3A30760();
  sub_1A388F740(v5, &qword_1EB0FD2B8, &qword_1A3A75B00);
  KeyPath = swift_getKeyPath(byte_1A3A75B08);
  v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC0, &unk_1A3A75A00) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  if (qword_1EB0FC0F8 != -1)
  {
    swift_once();
  }

  v23 = sub_1A3A30EF0();
  v24 = __swift_project_value_buffer(v23, qword_1EB101A78);
  v25 = swift_getKeyPath(byte_1A3A75B38);
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAB0, &qword_1A3A759F8) + 36)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8, &qword_1A3A75A10);
  (*(*(v23 - 8) + 16))(v26 + *(v27 + 28), v24, v23);
  *v26 = v25;
  sub_1A3A2EA60();
  if ((v34 & 1) == 0)
  {
    sub_1A3A31C30();
    v28 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v35 + 8))(v12, v32);
    v13 = v38;
  }

  v29 = sub_1A39B73F8(v37, v13);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEA98, &qword_1A3A759F0);
  v18[*(result + 36)] = v29 & 1;
  return result;
}

uint64_t sub_1A3937B54@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  sub_1A388F6D8(v1 + *(v10 + 40), v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A3937D5C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeButtonColumn.ExpandableButton(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A3937EB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a3;
  v27 = a4;
  v6 = sub_1A3A2FB90();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB80, &qword_1A3A75AC8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  sub_1A3938EBC(a2, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeButtonColumn.ExpandableButton);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_1A393A1F4(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ChromeButtonColumn.ExpandableButton);
  v19 = v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = *(a1 + 48);
  *(v19 + 32) = *(a1 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a1 + 64);
  *(v19 + 80) = *(a1 + 80);
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v21;
  v28 = a1;
  v29 = a2;
  v30 = v24;
  sub_1A38BEE70(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB98, &qword_1A3A75AD0);
  sub_1A393B738();
  sub_1A3A30FE0();
  sub_1A3A2FB80();
  sub_1A38A08F8(&qword_1EB0FEB88, &qword_1EB0FEB80, &qword_1A3A75AC8, MEMORY[0x1E697D680]);
  sub_1A393A408(&qword_1ED9966C8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v22 = v25;
  sub_1A3A30960();
  (*(v26 + 8))(v9, v22);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A393823C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v85 = a2;
  v94 = a4;
  v84 = sub_1A3A30090();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v6 = (v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1A3A2FC90();
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD520, &unk_1A3A75AE0);
  MEMORY[0x1EEE9AC00](v92);
  v88 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = v77 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEBB0, &qword_1A3A75AD8) - 8;
  v13 = MEMORY[0x1EEE9AC00](v93);
  v91 = v77 - v14;
  v80 = a1;
  v15 = *(a1 + 8);
  v87 = *a1;
  v86 = v15;
  v81 = v87(v13);
  v79 = v16;
  *&v101[0] = v81;
  *(&v101[0] + 1) = v16;
  v83 = sub_1A389FD78();
  sub_1A3A2EA50();
  v17 = sub_1A3A308E0();
  v19 = v18;
  v21 = v20;
  sub_1A3A2FC60();
  v22 = sub_1A3A30890();
  v24 = v23;
  v26 = v25;
  v77[1] = v27;
  sub_1A389F1B4(v17, v19, v21 & 1);

  (*(v7 + 8))(v9, v78);
  sub_1A3A30740();
  v29 = v28;
  sub_1A3937B54(v6);
  sub_1A391163C(v6);
  (*(v82 + 8))(v6, v84);
  sub_1A391A414(v29);
  v30 = CEKFontOfSizeWeightStyle();
  sub_1A3A307B0();
  v31 = sub_1A3A308A0();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1A389F1B4(v22, v24, v26 & 1);

  v38 = sub_1A3A314F0();
  v39 = *(v80 + 48);
  v100 = v35 & 1;
  *&v97 = v31;
  *(&v97 + 1) = v33;
  LOBYTE(v98) = v35 & 1;
  *(&v98 + 1) = v37;
  *v99 = v38;
  *&v99[8] = v81;
  *&v99[16] = v79;
  v99[24] = v39;
  v40 = v80;
  v95 = (*(v80 + 72))();
  v96 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD5D8, &qword_1A3A6E990);
  sub_1A38C8BF8();
  v42 = v88;
  sub_1A3A30A90();

  v101[0] = v97;
  v101[1] = v98;
  *v102 = *v99;
  *&v102[9] = *&v99[9];
  v43 = sub_1A388F740(v101, &qword_1EB0FD5D8, &qword_1A3A6E990);
  v45 = *(v89 + 8);
  v44 = *(v89 + 16);
  v46 = (v87)(v43);
  v48 = v47;
  v49 = (*(v40 + 16))();
  if (v50)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0;
  }

  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  *&v97 = v46;
  *(&v97 + 1) = v48;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v51, v52);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);

  v53 = v97;
  *&v97 = v45;
  *(&v97 + 1) = v44;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v53, *(&v53 + 1));

  v54 = v90;
  sub_1A3A2FA60();

  sub_1A388F740(v42, &qword_1EB0FD520, &unk_1A3A75AE0);
  v55 = sub_1A3A30610();
  sub_1A3A2F520();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v91;
  sub_1A388F670(v54, v91, &qword_1EB0FD520, &unk_1A3A75AE0);
  v65 = v64 + *(v93 + 44);
  v66 = v64;
  *v65 = v55;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  sub_1A3A31590();
  v68 = v67;
  v70 = v69;
  type metadata accessor for ChromeViewModel(0);
  sub_1A393A408(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v71 = sub_1A3A2F650();
  LOBYTE(v64) = v72;
  v73 = v66;
  v74 = v94;
  sub_1A388F670(v73, v94, &qword_1EB0FEBB0, &qword_1A3A75AD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEB98, &qword_1A3A75AD0);
  v76 = v74 + *(result + 36);
  *v76 = 1;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = 1;
  *(v76 + 32) = v71;
  *(v76 + 40) = v64 & 1;
  return result;
}

double sub_1A39389F4@<D0>(_OWORD *a1@<X8>)
{
  result = *&xmmword_1EB0FE7C8;
  v2 = unk_1EB0FE7D8;
  *a1 = xmmword_1EB0FE7C8;
  a1[1] = v2;
  return result;
}

void *sub_1A3938A08(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 >= *a1)
  {
    v4 = *a1;
  }

  v6 = v12;
  v7 = v13;
  if (a1[1] > v11)
  {
    v5 = a1[1];
  }

  *a1 = v4;
  a1[1] = v5;
  v8 = a1[2];
  v9 = a1[3];
  if (v6 < v8)
  {
    v8 = v6;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  a1[2] = v8;
  a1[3] = v9;
  return result;
}

void sub_1A3938B68(uint64_t a1)
{
  sub_1A3938DEC(319, &qword_1ED9967B0, &qword_1EB0FCDD8, &qword_1A3A6DA78, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A3938E50(319, &qword_1EB0FE7F8, &type metadata for FrameExtremes, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A3938E50(319, qword_1ED996958, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A3938DEC(319, &qword_1EB0FE800, &qword_1EB0FDA08, &unk_1A3A6F500, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A393A7E4(319, &qword_1ED996C38, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A3938DEC(319, &qword_1ED997CC8, &qword_1EB0FD900, &qword_1A3A75150, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1A393A7E4(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A3938E50(319, &qword_1EB0FCF80, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A3938DEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3938E50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3938EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3938F24(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for ChromeButtonColumn(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A3930420(a1, a2, v6);
}

unint64_t sub_1A3938FA4()
{
  result = qword_1EB0FE820;
  if (!qword_1EB0FE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE808, &qword_1A3A75250);
    sub_1A38A08F8(&qword_1EB0FE828, &qword_1EB0FE830, &unk_1A3A75270, MEMORY[0x1E6981870]);
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE820);
  }

  return result;
}

unint64_t sub_1A3939088()
{
  result = qword_1EB0FE838;
  if (!qword_1EB0FE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE838);
  }

  return result;
}

unint64_t sub_1A3939110()
{
  result = qword_1EB0FE858;
  if (!qword_1EB0FE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE850, &qword_1A3A752B8);
    sub_1A39391C8();
    sub_1A38A08F8(qword_1ED996AC8, &qword_1EB0FD1C0, &qword_1A3A6F350, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE858);
  }

  return result;
}

unint64_t sub_1A39391C8()
{
  result = qword_1EB0FE860;
  if (!qword_1EB0FE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE868, &qword_1A3A752C0);
    sub_1A38A08F8(&qword_1EB0FE870, &qword_1EB0FE878, &qword_1A3A752C8, MEMORY[0x1E6981870]);
    sub_1A38A08F8(&qword_1EB0FE880, &qword_1EB0FE888, &unk_1A3A752D0, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE860);
  }

  return result;
}

unint64_t sub_1A39392B4()
{
  result = qword_1EB0FE8A0;
  if (!qword_1EB0FE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE898, &qword_1A3A752E8);
    sub_1A393936C();
    sub_1A38A08F8(qword_1ED996AC8, &qword_1EB0FD1C0, &qword_1A3A6F350, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE8A0);
  }

  return result;
}

unint64_t sub_1A393936C()
{
  result = qword_1EB0FE8A8;
  if (!qword_1EB0FE8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE8B0, &qword_1A3A752F0);
    sub_1A3939424();
    sub_1A38A08F8(&qword_1EB0FE880, &qword_1EB0FE888, &unk_1A3A752D0, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE8A8);
  }

  return result;
}

unint64_t sub_1A3939424()
{
  result = qword_1EB0FE8B8;
  if (!qword_1EB0FE8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE8C0, &qword_1A3A752F8);
    sub_1A38A08F8(&qword_1EB0FE8C8, &qword_1EB0FE8D0, &qword_1A3A75300, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE8B8);
  }

  return result;
}

uint64_t (*sub_1A39394DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X8>)
{
  sub_1A388F6D8(a1, v12, &qword_1EB0FDA10, &qword_1A3A6F260);
  if (*(&v13 + 1))
  {
    v8 = v12[0];
    v9 = v12[1];
    v10 = v13;
    v11 = v14;
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    *(v6 + 32) = v9;
    *(v6 + 48) = v10;
    *(v6 + 64) = v11;
    *(v6 + 80) = a3;
    *(v6 + 88) = a4;
    *(v6 + 96) = 0x4030000000000000;
    sub_1A3A2EA60();
    return sub_1A393A2AC;
  }

  else
  {
    sub_1A388F740(v12, &qword_1EB0FDA10, &qword_1A3A6F260);
    return 0;
  }
}

uint64_t (*sub_1A39395B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X8>)
{
  sub_1A388F6D8(a1, v12, &qword_1EB0FDA10, &qword_1A3A6F260);
  if (*(&v13 + 1))
  {
    v8 = v12[0];
    v9 = v12[1];
    v10 = v13;
    v11 = v14;
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    *(v6 + 32) = v9;
    *(v6 + 48) = v10;
    *(v6 + 64) = v11;
    *(v6 + 80) = a3;
    *(v6 + 88) = a4;
    *(v6 + 96) = 0x4030000000000000;
    sub_1A3A2EA60();
    return sub_1A393A1E4;
  }

  else
  {
    sub_1A388F740(v12, &qword_1EB0FDA10, &qword_1A3A6F260);
    return 0;
  }
}

uint64_t sub_1A3939694@<X0>(uint64_t a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for ModeLoupeBackground(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE940, &qword_1A3A75470);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE948, &qword_1A3A75478);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  origin = v33.origin;
  size = v33.size;
  if (*(a1 + 52) == 1)
  {
    sub_1A3A2F800();
    MidY = *(a1 + 56) + v17 * 0.5;
  }

  else
  {
    MidY = CGRectGetMidY(v33);
  }

  a2(*(a1 + 51));
  v35.origin = origin;
  v35.size = size;
  CGRectGetWidth(v35);
  sub_1A3A2F800();
  v36.origin = origin;
  v36.size = size;
  CGRectGetHeight(v36);
  sub_1A3A31480();
  sub_1A3A2F780();
  sub_1A393A1F4(v8, v11, type metadata accessor for ModeLoupeBackground);
  v19 = &v11[*(v9 + 36)];
  v20 = v33.size;
  *v19 = v33.origin;
  *(v19 + 1) = v20;
  *(v19 + 2) = v34;
  v20.width = origin.y;
  v21 = *&origin;
  height = size.height;
  v22 = *&size;
  MidX = CGRectGetMidX(*(&v20 - 8));
  sub_1A388F670(v11, v14, &qword_1EB0FE940, &qword_1A3A75470);
  v25 = &v14[*(v12 + 36)];
  *v25 = MidX;
  v25[1] = MidY;
  v26 = sub_1A3A314E0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE950, &unk_1A3A75480);
  v28 = v32;
  v29 = (v32 + *(v27 + 36));
  sub_1A388F6D8(a1, (v29 + 1), &qword_1EB0FDA28, &qword_1A3A6F278);
  *v29 = v26;
  return sub_1A388F670(v14, v28, &qword_1EB0FE948, &qword_1A3A75478);
}

uint64_t sub_1A39399BC@<X0>(uint64_t a1@<X1>, void (*a2)(CGRect *__return_ptr, void)@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  origin = v43.origin;
  size = v43.size;
  if (*(a1 + 52) == 1)
  {
    sub_1A3A2F800();
    MidY = *(a1 + 56) + v9 * 0.5;
  }

  else
  {
    MidY = CGRectGetMidY(v43);
  }

  a2(&v51, *(a1 + 51));
  CGRectGetWidth(v43);
  sub_1A3A2F800();
  CGRectGetHeight(v43);
  sub_1A3A31480();
  v20 = v51;
  v21[0] = v52[0];
  *(v21 + 9) = *(v52 + 9);
  sub_1A3A2F780();
  v53 = v20;
  *v54 = v21[0];
  *&v54[9] = *(v21 + 9);
  v22 = v51;
  v23[0] = v52[0];
  *(v23 + 9) = *(v52 + 9);
  sub_1A393A2BC(&v20, &v43);
  sub_1A393A318(&v22);
  v58.origin = origin;
  v58.size = size;
  MidX = CGRectGetMidX(v58);
  v27 = v55;
  v28 = v56;
  v24 = v53;
  v25 = *v54;
  v26 = *&v54[16];
  v29 = v57;
  v30 = v53;
  v31 = *v54;
  v34 = v56;
  v35 = v57;
  v32 = *&v54[16];
  v33 = v55;
  sub_1A388F6D8(&v24, &v43, &qword_1EB0FE958, &unk_1A3A75490);
  sub_1A388F740(&v30, &qword_1EB0FE958, &unk_1A3A75490);
  v12 = sub_1A3A314E0();
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v53;
  v37 = *v54;
  v38 = *&v54[16];
  *&v42 = MidX;
  *(&v42 + 1) = MidY;
  sub_1A388F6D8(a1, &v19, &qword_1EB0FDA28, &qword_1A3A6F278);
  v18 = v12;
  sub_1A388F6D8(&v18, a3 + 128, &qword_1EB0FDA30, &qword_1A3A6F280);
  v13 = v40;
  *(a3 + 64) = v39;
  *(a3 + 80) = v13;
  v14 = v42;
  *(a3 + 96) = v41;
  *(a3 + 112) = v14;
  v15 = v36.size;
  *a3 = v36.origin;
  *(a3 + 16) = v15;
  v16 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v16;
  sub_1A388F6D8(&v36, &v43, &qword_1EB0FE960, &qword_1A3A754A0);
  sub_1A388F740(&v18, &qword_1EB0FDA30, &qword_1A3A6F280);
  v46 = v55;
  v47 = v56;
  v48 = v57;
  v43 = v53;
  v44 = *v54;
  v45 = *&v54[16];
  v49 = MidX;
  v50 = MidY;
  return sub_1A388F740(&v43, &qword_1EB0FE960, &qword_1A3A754A0);
}

uint64_t sub_1A3939CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE90();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for ChromeButtonColumn(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 40);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 16), *(v2 + 24), *(v2 + 32), v3);
  }

  v4 = v2 + *(v1 + 36);
  v5 = type metadata accessor for ModeWheelGestureState(0);
  v6 = *(v5 + 36);
  v7 = sub_1A3A2ECE0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 40);
  v10 = sub_1A3A2F620();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);

  sub_1A3670FF4(*(v2 + *(v1 + 56)), *(v2 + *(v1 + 56) + 8));

  return swift_deallocObject();
}

uint64_t sub_1A393A074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, unint64_t, void, void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = a4(a1, v5 + v10, *v11, v11[1]);
  *a5 = result;
  a5[1] = v13;
  return result;
}

void sub_1A393A124(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 != -1)
  {
    v6 = (a4 >> 8) & 1;
    sub_1A3A2EA60();

    sub_1A3890B88(a3, a4, v6);
  }
}

void sub_1A393A184(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 != -1)
  {
    v6 = (a4 >> 8) & 1;

    sub_1A3890B50(a3, a4, v6);
  }
}

uint64_t sub_1A393A1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_42Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1A393A384(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ChromeButtonColumn(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1A393A408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_8CameraUI13ChromeElementO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8CameraUI13ChromeElementOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 35;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8CameraUI12ChromeMenuIDOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A393A570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A393A5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A393A644(uint64_t a1)
{
  sub_1A3938DEC(319, &qword_1ED9967B0, &qword_1EB0FCDD8, &qword_1A3A6DA78, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A38BF120();
    if (v2 <= 0x3F)
    {
      sub_1A393A7E4(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A393A7E4(319, qword_1ED9967C0, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A3938E50(319, &qword_1EB0FCF80, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A393A7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A393A8C0()
{
  result = qword_1EB0FE9B0;
  if (!qword_1EB0FE9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE9A8, &qword_1A3A75898);
    sub_1A393A94C();
    sub_1A393AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE9B0);
  }

  return result;
}

unint64_t sub_1A393A94C()
{
  result = qword_1EB0FE9B8;
  if (!qword_1EB0FE9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE9C0, &qword_1A3A758A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE9C8, &unk_1A3A758A8);
    sub_1A393AA5C();
    sub_1A3890F84();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE9B8);
  }

  return result;
}

unint64_t sub_1A393AA5C()
{
  result = qword_1EB0FE9D0;
  if (!qword_1EB0FE9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE9C8, &unk_1A3A758A8);
    sub_1A392A0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE9D0);
  }

  return result;
}

unint64_t sub_1A393AAE8()
{
  result = qword_1EB0FE9D8;
  if (!qword_1EB0FE9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE9E0, &qword_1A3A758B8);
    sub_1A393A408(&qword_1EB0FE9E8, type metadata accessor for ChromeButtonColumn.ExpandableButton, &unk_1A3A75784);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FE9D8);
  }

  return result;
}

uint64_t objectdestroy_100Tm()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1A3890EFC(*(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  sub_1A3670FF4(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

unint64_t sub_1A393AC44()
{
  result = qword_1EB0FEA20;
  if (!qword_1EB0FEA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA00, &qword_1A3A75970);
    sub_1A38A08F8(&qword_1EB0FEA28, &qword_1EB0FEA30, &qword_1A3A75990, MEMORY[0x1E69817F8]);
    sub_1A38A08F8(&qword_1EB0FEA38, &qword_1EB0FEA18, &qword_1A3A75988, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEA20);
  }

  return result;
}

double sub_1A393AD28()
{
  v1 = *(type metadata accessor for ChromeButtonColumn.ExpandableButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A3936DB8(v2);
}

unint64_t sub_1A393AD90()
{
  result = qword_1EB0FEAA0;
  if (!qword_1EB0FEAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA98, &qword_1A3A759F0);
    sub_1A393AE1C();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAA0);
  }

  return result;
}

unint64_t sub_1A393AE1C()
{
  result = qword_1EB0FEAA8;
  if (!qword_1EB0FEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEAB0, &qword_1A3A759F8);
    sub_1A393AED4();
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8, &qword_1A3A75A10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAA8);
  }

  return result;
}

unint64_t sub_1A393AED4()
{
  result = qword_1EB0FEAB8;
  if (!qword_1EB0FEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEAC0, &unk_1A3A75A00);
    sub_1A393A408(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678, &qword_1A3A82E70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAB8);
  }

  return result;
}

unint64_t sub_1A393AFBC()
{
  result = qword_1EB0FEAD0;
  if (!qword_1EB0FEAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA58, &qword_1A3A759B0);
    sub_1A393B048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAD0);
  }

  return result;
}

unint64_t sub_1A393B048()
{
  result = qword_1EB0FEAD8;
  if (!qword_1EB0FEAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA50, &qword_1A3A759A8);
    sub_1A38A08F8(&qword_1EB0FEAE0, &qword_1EB0FEA48, &qword_1A3A759A0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAD8);
  }

  return result;
}

unint64_t sub_1A393B100()
{
  result = qword_1EB0FEAF8;
  if (!qword_1EB0FEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA80, &qword_1A3A759D8);
    sub_1A393B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEAF8);
  }

  return result;
}

unint64_t sub_1A393B18C()
{
  result = qword_1EB0FEB00;
  if (!qword_1EB0FEB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB08, &qword_1A3A75A50);
    sub_1A393B210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB00);
  }

  return result;
}

unint64_t sub_1A393B210()
{
  result = qword_1EB0FEB10;
  if (!qword_1EB0FEB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB18, &qword_1A3A75A58);
    sub_1A38A08F8(&qword_1EB0FEB20, &qword_1EB0FEB28, &qword_1A3A75A60, MEMORY[0x1E69817F8]);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB10);
  }

  return result;
}

unint64_t sub_1A393B2F4()
{
  result = qword_1EB0FEB30;
  if (!qword_1EB0FEB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEAF0, &qword_1A3A75A48);
    sub_1A393B380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB30);
  }

  return result;
}

unint64_t sub_1A393B380()
{
  result = qword_1EB0FEB38;
  if (!qword_1EB0FEB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB40, &qword_1A3A75A68);
    sub_1A393B40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB38);
  }

  return result;
}

unint64_t sub_1A393B40C()
{
  result = qword_1EB0FEB48;
  if (!qword_1EB0FEB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB50, &qword_1A3A75A70);
    sub_1A393B498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB48);
  }

  return result;
}

unint64_t sub_1A393B498()
{
  result = qword_1EB0FEB58;
  if (!qword_1EB0FEB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB60, &qword_1A3A75A78);
    sub_1A3919E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEB58);
  }

  return result;
}

uint64_t sub_1A393B524@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChromeButtonColumn.ExpandableButton(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChromeMenu(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1A3937EB4(a1, v2 + v6, v9, a2);
}

uint64_t sub_1A393B610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A393B670()
{
  v1 = *(type metadata accessor for ChromeButtonColumn.ExpandableButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v7[4] = *(v3 + 64);
  v8 = *(v3 + 80);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  return (*(v0 + v2 + 64))(v7);
}

unint64_t sub_1A393B738()
{
  result = qword_1EB0FEBA0;
  if (!qword_1EB0FEBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEB98, &qword_1A3A75AD0);
    sub_1A393B7C4();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBA0);
  }

  return result;
}

unint64_t sub_1A393B7C4()
{
  result = qword_1EB0FEBA8;
  if (!qword_1EB0FEBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEBB0, &qword_1A3A75AD8);
    sub_1A393B850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBA8);
  }

  return result;
}

unint64_t sub_1A393B850()
{
  result = qword_1EB0FEBB8;
  if (!qword_1EB0FEBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD520, &unk_1A3A75AE0);
    sub_1A38C8BF8();
    sub_1A393A408(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBB8);
  }

  return result;
}

unint64_t sub_1A393B928()
{
  result = qword_1EB0FEBC0;
  if (!qword_1EB0FEBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEBC8, &qword_1A3A75B68);
    sub_1A393A8C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBC0);
  }

  return result;
}

unint64_t sub_1A393B9AC()
{
  result = qword_1EB0FEBD0;
  if (!qword_1EB0FEBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA40, &qword_1A3A75998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEA00, &qword_1A3A75970);
    sub_1A3A311F0();
    sub_1A393AC44();
    sub_1A393A408(qword_1ED9969F8, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED996640, &qword_1EB0FC478, &unk_1A3A75B70, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBD0);
  }

  return result;
}

unint64_t sub_1A393BB08()
{
  result = qword_1EB0FEBD8;
  if (!qword_1EB0FEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEBD8);
  }

  return result;
}

void sub_1A393BB5C(char a1, char a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for ChromeViewModel(0);
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v13[0] = a1;
  v14 = a5;
  v15 = a6;
  v16 = a2;
  v17 = sub_1A3A2F650();
  v18 = v12 & 1;
  MEMORY[0x1A58F6B00](v13, a3, &type metadata for RotateForControlOrientationModifier, a4);
}

uint64_t sub_1A393BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a8;
  v28 = a6;
  v27 = a5;
  v13 = a1;
  v26[1] = a9;
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ConditionalMatchedGeometryEffect(0, v19, v17, v18);
  v21 = *(v20 - 1);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v26 - v23;
  (*(v14 + 16))(v16, a2, a7, v22);
  *v24 = v13;
  (*(v14 + 32))(&v24[v20[9]], v16, a7);
  *&v24[v20[10]] = a3;
  *&v24[v20[11]] = a4;
  v24[v20[12]] = v27;
  MEMORY[0x1A58F6B00](v24, v28, v20, v29);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1A393BE2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ScenePhaseModifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E697BE40];
  v14 = sub_1A3A2F540();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  v12[v10[5]] = a1;
  v15 = &v12[v10[6]];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v12[v10[7]];
  *v16 = swift_getKeyPath(byte_1A3A76800);
  v16[8] = 0;
  v17 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *&v16[v17] = swift_getKeyPath(byte_1A3A76828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  swift_storeEnumTagMultiPayload();
  sub_1A3A2EA60();
  MEMORY[0x1A58F6B00](v12, a4, v10, a5);
  return sub_1A3942998(v12);
}

uint64_t sub_1A393BFB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A393BFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A393C070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A393C0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A393C140(uint64_t a1)
{
  swift_getKeyPath(a0_1);
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(a1 + 1153);
}

BOOL sub_1A393C1E0(uint64_t a1)
{
  swift_getKeyPath(byte_1A3A76068);
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  return v2 != 35 && (v2 & 0xFFFFFFFFFFFFFFFELL) == 24;
}

uint64_t sub_1A393C2A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v32 = a3;
  v33 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED50, &qword_1A3A764B8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED58, &qword_1A3A764C0);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v30 - v13;
  v15 = sub_1A3A2FEE0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  if ((a5 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    v31 = v10;
    v20 = a1;
    v21 = a6;
    v22 = v19;
    sub_1A3A2F270();

    a6 = v21;
    a1 = v20;
    v10 = v31;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    a4 = v35;
  }

  v23 = v33(a4);

  v24 = v23 & 1;
  if (v23)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED60, &qword_1A3A764C8);
  (*(*(v26 - 8) + 16))(v12, a1, v26);
  *&v12[*(v10 + 36)] = v25;
  sub_1A388F670(v12, v14, &qword_1EB0FED50, &qword_1A3A764B8);
  v14[*(v34 + 36)] = (v23 & 1) == 0;
  v27 = sub_1A3A314E0();
  sub_1A388F670(v14, a6, &qword_1EB0FED58, &qword_1A3A764C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED68, &unk_1A3A764D0);
  v29 = a6 + *(result + 36);
  *v29 = v27;
  *(v29 + 8) = v24;
  return result;
}

uint64_t sub_1A393C5CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a1;
  v30 = a5;
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED38, &qword_1A3A76478);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  sub_1A3A2EA60();
  v14 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v14 = v31;
  }

  v27 = v7;
  swift_getKeyPath(byte_1A3A76480);
  v31 = v14;
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v16 = *(v14 + 584);

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = 0.0;
  if (v16 != 1)
  {
    if (v16 != 2)
    {
      v31 = v16;
      goto LABEL_18;
    }

    if ((v28 & 1) == 0)
    {
LABEL_7:
      v17 = 1.0;
    }
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED40, &qword_1A3A764A8);
  (*(*(v18 - 8) + 16))(v13, v29, v18);
  *&v13[*(v11 + 36)] = v17;
  v19 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v27);
    a3 = v31;
  }

  swift_getKeyPath(byte_1A3A76480);
  v31 = a3;
  sub_1A3A2F080();

  v21 = *(a3 + 584);

  if (!v21)
  {
    v22 = 0;
    goto LABEL_15;
  }

  if (v21 == 1)
  {
    v22 = 1;
LABEL_15:
    v23 = v30;
    sub_1A388F670(v13, v30, &qword_1EB0FED38, &qword_1A3A76478);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED48, &qword_1A3A764B0);
    v25 = v23 + *(result + 36);
    *v25 = v19;
    *(v25 + 8) = v22 & 1;
    return result;
  }

  v22 = v28;
  if (v21 == 2)
  {
    goto LABEL_15;
  }

  v31 = v21;
LABEL_18:
  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

uint64_t sub_1A393C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED20, &qword_1A3A76438);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1A3A2EA60();
  v13 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v27;
  }

  swift_getKeyPath(aH_2, v6);
  v27 = v13;
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v15 = *(v13 + 1152);

  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED28, &qword_1A3A76468);
  (*(*(v17 - 8) + 16))(v12, v25, v17);
  *&v12[*(v10 + 36)] = v16;
  v18 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v24);
    a2 = v27;
  }

  swift_getKeyPath(aH_2);
  v27 = a2;
  sub_1A3A2F080();

  v20 = *(a2 + 1152);

  v21 = v26;
  sub_1A388F670(v12, v26, &qword_1EB0FED20, &qword_1A3A76438);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED30, &qword_1A3A76470);
  v23 = v21 + *(result + 36);
  *v23 = v18;
  *(v23 + 8) = v20;
  return result;
}

uint64_t sub_1A393CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED08, &qword_1A3A763F8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1A3A2EA60();
  v13 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v27;
  }

  swift_getKeyPath(byte_1A3A76400, v6);
  v27 = v13;
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v15 = *(v13 + 1154);

  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED10, &qword_1A3A76428);
  (*(*(v17 - 8) + 16))(v12, v25, v17);
  *&v12[*(v10 + 36)] = v16;
  v18 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v24);
    a2 = v27;
  }

  swift_getKeyPath(byte_1A3A76400);
  v27 = a2;
  sub_1A3A2F080();

  v20 = *(a2 + 1154);

  v21 = v26;
  sub_1A388F670(v12, v26, &qword_1EB0FED08, &qword_1A3A763F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED18, &qword_1A3A76430);
  v23 = v21 + *(result + 36);
  *v23 = v18;
  *(v23 + 8) = v20;
  return result;
}

uint64_t sub_1A393D168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a1;
  v70 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEBE0, &qword_1A3A75EC8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEBE8, &qword_1A3A75ED0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEBF0, &qword_1A3A75ED8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v66 = sub_1A3A2FF20();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEBF8, &qword_1A3A75EE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v63 = (&v58 - v15);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC00, &qword_1A3A75EE8);
  MEMORY[0x1EEE9AC00](v73);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v58 - v18;
  v19 = sub_1A3A2FEE0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 4);
  v24 = v2[40];
  sub_1A3A2EA60();
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    v59 = v2;
    v26 = v25;
    sub_1A3A2F270();

    v2 = v59;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A393E5A4(v2);
    (*(v20 + 8))(v22, v19);
    v23 = v74;
  }

  v27 = *v2;
  v28 = sub_1A393D8E4(*v2, v23);

  if (v27 == 3)
  {
    v29 = sub_1A3A31480();
    v30 = v63;
    *v63 = v29;
    *(v30 + 8) = v31;
    v32 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC28, &qword_1A3A75F00) + 44);
    v33 = *(v2 + 1);
    v34 = *(v2 + 2);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC08, &qword_1A3A75EF0);
    (*(*(v35 - 8) + 16))(v32, v72, v35);
    v36 = (v32 + *(v71 + 36));
    *v36 = v28;
    *(v36 + 1) = v33;
    *(v36 + 2) = v34;
    *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC30, &qword_1A3A75F08) + 52)) = v28;
    v37 = v61;
    sub_1A3A2FF10();
    v38 = v64;
    v39 = v66;
    (*(v64 + 16))(v60, v37, v66);
    sub_1A3942328(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v40 = sub_1A3A2F7F0();
    (*(v38 + 8))(v37, v39);
    *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC38, &qword_1A3A75F10) + 36)) = v40;
    if (v2[24])
    {
      v41 = sub_1A3A314E0();
    }

    else
    {
      v41 = 0;
    }

    v48 = v62;
    sub_1A388F670(v30, v62, &qword_1EB0FEBF8, &qword_1A3A75EE0);
    v49 = (v48 + *(v73 + 36));
    *v49 = v41;
    *(v49 + 1) = v28;
    v50 = &qword_1EB0FEC00;
    v51 = &qword_1A3A75EE8;
    v52 = v68;
    sub_1A388F670(v48, v68, &qword_1EB0FEC00, &qword_1A3A75EE8);
    sub_1A388F6D8(v52, v10, &qword_1EB0FEC00, &qword_1A3A75EE8);
    swift_storeEnumTagMultiPayload();
    sub_1A393E5D4();
    sub_1A393E6B8();
    sub_1A3A301F0();
    v53 = v52;
  }

  else
  {
    v42 = *(v2 + 1);
    v43 = *(v2 + 2);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC08, &qword_1A3A75EF0);
    v45 = v67;
    (*(*(v44 - 8) + 16))(v67, v72, v44);
    v46 = (v45 + *(v71 + 36));
    *v46 = v28;
    *(v46 + 1) = v42;
    *(v46 + 2) = v43;
    if (v2[24])
    {
      v47 = sub_1A3A314E0();
    }

    else
    {
      v47 = 0;
    }

    v54 = v65;
    sub_1A388F670(v45, v65, &qword_1EB0FEBE0, &qword_1A3A75EC8);
    v55 = (v54 + *(v4 + 36));
    *v55 = v47;
    *(v55 + 1) = v28;
    v50 = &qword_1EB0FEBE8;
    v51 = &qword_1A3A75ED0;
    v56 = v69;
    sub_1A388F670(v54, v69, &qword_1EB0FEBE8, &qword_1A3A75ED0);
    sub_1A388F6D8(v56, v10, &qword_1EB0FEBE8, &qword_1A3A75ED0);
    swift_storeEnumTagMultiPayload();
    sub_1A393E5D4();
    sub_1A393E6B8();
    sub_1A3A301F0();
    v53 = v56;
  }

  return sub_1A388F740(v53, v50, v51);
}

double sub_1A393D8E4(unsigned __int8 a1, uint64_t a2)
{
  result = 0.0;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return result;
    }

    swift_getKeyPath(a8, 0.0);
    sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    swift_getKeyPath(a8, 0.0);
    sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    sub_1A3997BA0(*(a2 + 800));
    v5 = v4;
    sub_1A3A30D10();
    sub_1A3A30D20();
    return v5;
  }

  swift_getKeyPath(a8, 0.0);
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = 0.0;
  if ((*(a2 + 800) - 3) >= 2)
  {
    swift_getKeyPath(a8, 0.0);
    sub_1A3A2F080();
LABEL_8:

    sub_1A3997BA0(*(a2 + 800));
  }

  return result;
}

uint64_t sub_1A393DB28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A3A2FF20();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *v2;
  v15 = sub_1A39A12B8(v12, v13);
  v16 = sub_1A393D8E4(v14, v15);

  *a2 = sub_1A3A31480();
  a2[1] = v17;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC40, &qword_1A3A75F40) + 44);
  sub_1A3A31590();
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC48, &qword_1A3A75F48);
  (*(*(v23 - 8) + 16))(v18, a1, v23);
  v24 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC50, &qword_1A3A75F50) + 36)];
  *v24 = v16;
  *(v24 + 1) = v20;
  *(v24 + 2) = v22;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC58, &qword_1A3A75F58) + 52)] = v16;
  sub_1A3A2FF10();
  (*(v6 + 16))(v8, v11, v5);
  sub_1A3942328(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v25 = sub_1A3A2F7F0();
  (*(v6 + 8))(v11, v5);
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC60, &qword_1A3A75F60) + 36)] = v25;
  v26 = sub_1A3A314E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC68, &qword_1A3A75F68);
  v28 = (a2 + *(result + 36));
  *v28 = v26;
  *(v28 + 1) = v16;
  return result;
}

uint64_t sub_1A393DDC4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v54 = a1;
  v58 = a5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC98, &qword_1A3A75FE8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v53 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECA0, &qword_1A3A75FF0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v53 - v9;
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  v14 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v14 = v60;
  }

  swift_getKeyPath(aP_0);
  v60 = v14;
  sub_1A3942328(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v16 = *(v14 + 1168);

  if (v16 & v59)
  {
    v17 = 1.03;
  }

  else
  {
    v17 = 1.0;
  }

  sub_1A3A2EA60();
  v18 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v18 = v60;
  }

  swift_getKeyPath(aP_0);
  v60 = v18;
  sub_1A3A2F080();

  v20 = *(v18 + 1168);

  v21 = 0.0;
  if (v20 & v59)
  {
    v22 = 10.0;
  }

  else
  {
    v22 = 0.0;
  }

  sub_1A3A2EA60();
  v23 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v23 = v60;
  }

  swift_getKeyPath(aP_0);
  v60 = v23;
  sub_1A3A2F080();

  v25 = *(v23 + 1168);

  if ((v25 & v59 & 1) == 0)
  {
    v21 = 1.0;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECA8, &qword_1A3A76020);
  (*(*(v26 - 8) + 16))(v8, v54, v26);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECB0, &qword_1A3A76028) + 36)] = v21;
  sub_1A3A31590();
  v28 = v27;
  v30 = v29;
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECB8, &qword_1A3A76030) + 36)];
  *v31 = v17;
  *(v31 + 1) = v17;
  *(v31 + 2) = v28;
  *(v31 + 3) = v30;
  v32 = &v8[*(v55 + 36)];
  *v32 = v22;
  v32[8] = 0;
  sub_1A3A2EA60();
  v33 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v34 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v33 = v60;
  }

  swift_getKeyPath(aP_0);
  v60 = v33;
  sub_1A3A2F080();

  v35 = *(v33 + 1168);

  if (v35)
  {
    v37.n128_f64[0] = 1.0;
  }

  else
  {
    v37.n128_f64[0] = 0.4;
  }

  if (v35)
  {
    v38.n128_f64[0] = 0.8;
  }

  else
  {
    v38.n128_f64[0] = 1.0;
  }

  v39 = MEMORY[0x1A58F7350](v36, v37, v38, 0.0);
  sub_1A3A2EA60();
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v40 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a3 = v60;
  }

  swift_getKeyPath(aP_0);
  v60 = a3;
  sub_1A3A2F080();

  v41 = *(a3 + 1168);

  v42 = v57;
  v43 = sub_1A388F670(v8, v57, &qword_1EB0FEC98, &qword_1A3A75FE8);
  v45 = v42 + *(v56 + 36);
  *v45 = v39;
  *(v45 + 8) = v41;
  v46 = v59 & 1;
  v47.n128_u64[0] = 1.0;
  if (v59)
  {
    v44.n128_f64[0] = 1.0;
  }

  else
  {
    v44.n128_f64[0] = 0.4;
  }

  if (v59)
  {
    v47.n128_f64[0] = 0.8;
  }

  v48 = MEMORY[0x1A58F7350](v43, v44, v47, 0.0);
  v49 = v42;
  v50 = v58;
  sub_1A388F670(v49, v58, &qword_1EB0FECA0, &qword_1A3A75FF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECC0, &qword_1A3A76038);
  v52 = v50 + *(result + 36);
  *v52 = v48;
  *(v52 + 8) = v46;
  return result;
}

unint64_t sub_1A393E5D4()
{
  result = qword_1EB0FEC10;
  if (!qword_1EB0FEC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC00, &qword_1A3A75EE8);
    sub_1A38A08F8(&qword_1EB0FEC18, &qword_1EB0FEBF8, &qword_1A3A75EE0, MEMORY[0x1E6981880]);
    sub_1A38A08F8(&qword_1ED997CD8, &qword_1EB0FEC20, &qword_1A3A75EF8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEC10);
  }

  return result;
}

unint64_t sub_1A393E6B8()
{
  result = qword_1ED997CE0;
  if (!qword_1ED997CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEBE8, &qword_1A3A75ED0);
    sub_1A393E770();
    sub_1A38A08F8(&qword_1ED997CD8, &qword_1EB0FEC20, &qword_1A3A75EF8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997CE0);
  }

  return result;
}

unint64_t sub_1A393E770()
{
  result = qword_1ED997CE8;
  if (!qword_1ED997CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEBE0, &qword_1A3A75EC8);
    sub_1A38A08F8(&qword_1ED997CF0, &qword_1EB0FEC08, &qword_1A3A75EF0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997CE8);
  }

  return result;
}

uint64_t sub_1A393E828@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for ScenePhaseModifier(0);
  v3 = v2 - 8;
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v28 = v4;
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A2FEE0();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1A3A2F540();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 36);
  v30 = v1;
  v16 = *(v1 + v15);
  v17 = *(v1 + v15 + 8);
  sub_1A3A2EA60();
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v19 = j__swift_release(v16);
    (*(v25 + 8))(v7, v26, v19);
    v16 = v32;
  }

  if (v16)
  {
    swift_getKeyPath(aP_1);
    v32 = v16;
    sub_1A3942328(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v20 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    (*(v12 + 16))(v10, v16 + v20, v11);

    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v14);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1A388F740(v10, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  v21 = v29;
  sub_1A3942250(v30, v29, type metadata accessor for ScenePhaseModifier);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_1A39422B8(v21, v23 + v22, type metadata accessor for ScenePhaseModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED70, &qword_1A3A76548);
  sub_1A38A08F8(qword_1ED997E68, &qword_1EB0FED70, &qword_1A3A76548, MEMORY[0x1E697FDF8]);
  sub_1A3942328(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  sub_1A3A30CA0();

  return (*(v12 + 8))(v14, v11);
}

double sub_1A393ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A3A2F530())
  {
    type metadata accessor for ScenePhaseModifier(0);
    v4 = sub_1A3A2F690();
    MEMORY[0x1EEE9AC00](v4);
    sub_1A3A2FAF0();
  }

  return result;
}

uint64_t sub_1A393EE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  swift_getWitnessTable();
  v6 = sub_1A3A30260();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = *(a2 + 24);
  v33[1] = *(a2 + 16);
  v33[2] = v13;
  v39 = sub_1A3A302C0();
  v14 = sub_1A3A2FA90();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  v20 = sub_1A3A30200();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v38 = v33 - v21;
  if (*v3 == 1)
  {
    v33[0] = a3;
    sub_1A3A31590();
    WitnessTable = swift_getWitnessTable();
    sub_1A3A30B20();
    v23 = swift_getWitnessTable();
    v40 = WitnessTable;
    v41 = v23;
    swift_getWitnessTable();
    sub_1A3964BD0();
    v24 = *(v34 + 8);
    v24(v16, v14);
    sub_1A3964BD0();
    sub_1A3961D8C(v16, v14);
    v24(v16, v14);
    v24(v19, v14);
  }

  else
  {
    v25 = swift_getWitnessTable();
    sub_1A3964BD0();
    sub_1A3964BD0();
    v26 = swift_getWitnessTable();
    v46 = v25;
    v47 = v26;
    swift_getWitnessTable();
    sub_1A3961E84(v9, v14, v6);
    v27 = *(v7 + 8);
    v27(v9, v6);
    v27(v12, v6);
  }

  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v44 = v28;
  v45 = v29;
  v42 = swift_getWitnessTable();
  v43 = v28;
  v30 = v37;
  swift_getWitnessTable();
  v31 = v38;
  sub_1A3964BD0();
  return (*(v36 + 8))(v31, v30);
}

uint64_t sub_1A393F36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 8) + *v2 * (1.0 - *(v2 + 8));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED88, &qword_1A3A76708);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED90, &qword_1A3A76710) + 36);
  *v11 = v9;
  *(v11 + 8) = v9;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED98, &qword_1A3A76718) + 36)) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDA0, &unk_1A3A76720);
  v13 = a2 + *(result + 36);
  *v13 = (1.0 - v5) * v8;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_1A393F480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECF0, &qword_1A3A763E0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FECF8, &qword_1A3A763E8) + 36)) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FED00, &qword_1A3A763F0);
  v9 = a2 + *(result + 36);
  *v9 = (1.0 - v5) * v6;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_1A393F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 == 1)
  {
    if (qword_1ED996468 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED99D880;
    sub_1A3A2EA60();
  }

  else
  {
    v5 = sub_1A3A30DD0();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE00, &qword_1A3A767F0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE08, &qword_1A3A767F8);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1A393F638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 == 1)
  {
    if (qword_1ED996468 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED99D880;
    sub_1A3A2EA60();
  }

  else
  {
    v5 = sub_1A3A30DD0();
  }

  KeyPath = swift_getKeyPath(aH_3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE10, &qword_1A3A76908);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE18, &unk_1A3A76910);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

uint64_t sub_1A393F734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v85 = a1;
  v66 = sub_1A3A2FEE0();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v64 - v6;
  v88 = sub_1A3A2F540();
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DetectInteractionGestureModifier(0);
  v9 = *(v8 - 8);
  v76 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v10;
  v12 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3A30210();
  MEMORY[0x1EEE9AC00](v13);
  v71 = sub_1A3A2F630();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD748, &qword_1A3A818F0);
  v16 = *(v15 - 8);
  v73 = v15;
  v74 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD700, &qword_1A3A76730);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v64 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDA8, &qword_1A3A76738);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDB0, &qword_1A3A76740);
  v79 = *(v21 - 8);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v64 - v22;
  sub_1A3A30340();
  sub_1A3A2F5C0();
  sub_1A3942250(v2, v12, type metadata accessor for DetectInteractionGestureModifier);
  v23 = *(v9 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_1A39422B8(v12, v25 + v24, type metadata accessor for DetectInteractionGestureModifier);
  sub_1A3942328(&qword_1ED996CD0, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1A3942328(&qword_1ED996CD8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v26 = v18;
  v27 = v71;
  v89 = v11;
  v28 = v67;
  sub_1A3A31250();

  v29 = *(v72 + 8);
  v69 = v3;
  v29(v28, v27);
  v68 = type metadata accessor for DetectInteractionGestureModifier;
  sub_1A3942250(v3, v12, type metadata accessor for DetectInteractionGestureModifier);
  v30 = swift_allocObject();
  sub_1A39422B8(v12, v30 + v24, type metadata accessor for DetectInteractionGestureModifier);
  sub_1A38A08F8(&qword_1ED996CE0, &qword_1EB0FD748, &qword_1A3A818F0, MEMORY[0x1E697E8D0]);
  v31 = v70;
  v32 = v73;
  sub_1A3A31240();

  (*(v74 + 8))(v26, v32);
  sub_1A3A2F660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDB8, &qword_1A3A76748);
  sub_1A38A08F8(&qword_1EB0FEDC0, &qword_1EB0FEDB8, &qword_1A3A76748, MEMORY[0x1E697FDF8]);
  sub_1A38A08F8(&qword_1ED996CB8, &qword_1EB0FD700, &qword_1A3A76730, MEMORY[0x1E697E238]);
  v33 = v87;
  v34 = v75;
  sub_1A3A30AE0();
  (*(v77 + 8))(v31, v34);
  v35 = [objc_opt_self() defaultCenter];
  v36 = v86;
  sub_1A3A31C90();

  v37 = v69;
  v38 = v68;
  sub_1A3942250(v69, v12, v68);
  v85 = v23;
  v39 = swift_allocObject();
  v77 = v24;
  v40 = v12;
  sub_1A39422B8(v12, v39 + v24, v38);
  v41 = &v33[*(v36 + 56)];
  *v41 = sub_1A3942524;
  v41[1] = v39;
  v42 = v37;
  v43 = v37 + *(v76 + 28);
  v44 = *v43;
  LOBYTE(v37) = *(v43 + 8);
  sub_1A3A2EA60();
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v45 = sub_1A3A305C0();
    sub_1A3A2F270();

    v46 = v64;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v47 = j__swift_release(v44);
    (*(v65 + 8))(v46, v66, v47);
    v44 = v90;
  }

  v48 = v88;
  v49 = v83;
  if (v44)
  {
    swift_getKeyPath(aP_1);
    v90 = v44;
    sub_1A3942328(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v50 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    v51 = v44 + v50;
    v52 = v81;
    (*(v49 + 16))(v81, v51, v48);

    (*(v49 + 56))(v52, 0, 1, v48);
    v53 = v82;
    (*(v49 + 32))(v82, v52, v48);
  }

  else
  {
    v54 = v81;
    (*(v83 + 56))(v81, 1, 1, v88);
    type metadata accessor for ChromeScenePhase(0);
    v53 = v82;
    sub_1A39A1420(v82);
    if ((*(v49 + 48))(v54, 1, v48) != 1)
    {
      sub_1A388F740(v54, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  sub_1A3942250(v42, v40, type metadata accessor for DetectInteractionGestureModifier);
  v55 = v77;
  v56 = swift_allocObject();
  sub_1A39422B8(v40, v56 + v55, type metadata accessor for DetectInteractionGestureModifier);
  sub_1A38A08F8(&qword_1EB0FEDC8, &qword_1EB0FEDA8, &qword_1A3A76738, MEMORY[0x1E697C278]);
  sub_1A3942328(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v57 = v78;
  v58 = v88;
  v59 = v87;
  sub_1A3A30CA0();

  (*(v49 + 8))(v53, v58);
  sub_1A3664C10(v59);
  sub_1A3942250(v42, v40, type metadata accessor for DetectInteractionGestureModifier);
  v60 = swift_allocObject();
  sub_1A39422B8(v40, v60 + v55, type metadata accessor for DetectInteractionGestureModifier);
  v61 = v84;
  (*(v79 + 32))(v84, v57, v80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDD0, &unk_1A3A76750);
  v63 = (v61 + *(result + 36));
  *v63 = 0;
  v63[1] = 0;
  v63[2] = sub_1A39425F0;
  v63[3] = v60;
  return result;
}

void *sub_1A3940414(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1A3A2F540();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E697BE38], v4, v6);
  sub_1A3942328(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v9 = sub_1A3A31790();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = *(a3 + 16);
    v15 = *a3;
    v16 = v12;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    result = MEMORY[0x1A58F7010]((&v14 + 7));
    if (HIBYTE(v14) == 1)
    {
      v15 = v11;
      v16 = v12;
      v17 = v13;
      HIBYTE(v14) = 0;
      return sub_1A3A311A0();
    }
  }

  return result;
}

__n128 sub_1A3940614@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __n128 *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v14 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A75F70);
  v48[0].n128_u64[0] = v14;
  sub_1A3942328(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v15 = v14[2];
  swift_getKeyPath(byte_1A3A75F98);
  v48[0].n128_u64[0] = v15;
  sub_1A3942328(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v16 = [objc_opt_self() solCamDebugMenuEnabled];

  if (v16 && (a1 & 1) != 0)
  {
    v17 = sub_1A3A30DB0();
    sub_1A39620C0(a2, v17, v26);

    v50.origin.x = a4;
    v50.origin.y = a5;
    v50.size.width = a6;
    v50.size.height = a7;
    CGRectGetWidth(v50);
    v51.origin.x = a4;
    v51.origin.y = a5;
    v51.size.width = a6;
    v51.size.height = a7;
    CGRectGetHeight(v51);
    sub_1A3A31480();
    sub_1A3A2F780();
    *&v25[7] = v47[0];
    *&v25[23] = v47[1];
    *&v25[39] = v47[2];
    v52.origin.x = a4;
    v52.origin.y = a5;
    v52.size.width = a6;
    v52.size.height = a7;
    MidX = CGRectGetMidX(v52);
    v53.origin.x = a4;
    v53.origin.y = a5;
    v53.size.width = a6;
    v53.size.height = a7;
    MidY = CGRectGetMidY(v53);
    v41 = v26[2];
    v42 = v26[3];
    v43 = v26[4];
    *v44 = v27;
    v39 = v26[0];
    v40 = v26[1];
    v44[8] = 0;
    *&v44[56] = *&v25[47];
    *&v44[41] = *&v25[32];
    *&v44[25] = *&v25[16];
    *&v44[9] = *v25;
    *&v45 = MidX;
    *(&v45 + 1) = MidY;
    sub_1A3940D8C(&v39);
  }

  else
  {
    sub_1A3940B24(&v39);
  }

  v36 = *&v44[48];
  v37 = v45;
  v38 = v46;
  v32 = v43;
  v33 = *v44;
  v34 = *&v44[16];
  v35 = *&v44[32];
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEC70, &qword_1A3A75FC0);
  sub_1A3940B30();
  sub_1A3A301F0();
  v20 = v48[9];
  a3[8] = v48[8];
  a3[9] = v20;
  a3[10].n128_u8[0] = v49;
  v21 = v48[5];
  a3[4] = v48[4];
  a3[5] = v21;
  v22 = v48[7];
  a3[6] = v48[6];
  a3[7] = v22;
  v23 = v48[1];
  *a3 = v48[0];
  a3[1] = v23;
  result = v48[3];
  a3[2] = v48[2];
  a3[3] = result;
  return result;
}

id sub_1A394099C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_1A3A75F98);
  sub_1A3942328(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  result = [objc_opt_self() solCamDebugMenuEnabled];
  *a2 = result;
  return result;
}

double sub_1A3940A58(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1A3A75F98);
  sub_1A3942328(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F070();

  return result;
}

unint64_t sub_1A3940B30()
{
  result = qword_1ED997CF8;
  if (!qword_1ED997CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC70, &qword_1A3A75FC0);
    sub_1A3940BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997CF8);
  }

  return result;
}

unint64_t sub_1A3940BBC()
{
  result = qword_1ED997D00;
  if (!qword_1ED997D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC78, &qword_1A3A75FC8);
    sub_1A3940C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D00);
  }

  return result;
}

unint64_t sub_1A3940C48()
{
  result = qword_1ED997D08;
  if (!qword_1ED997D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC80, &unk_1A3A75FD0);
    sub_1A3940CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D08);
  }

  return result;
}

unint64_t sub_1A3940CD4()
{
  result = qword_1ED997D10;
  if (!qword_1ED997D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC88, &qword_1A3A786A0);
    sub_1A38A08F8(&qword_1ED997D18, &qword_1EB0FEC90, &qword_1A3A75FE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D10);
  }

  return result;
}

uint64_t sub_1A3940DE0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_1A3940E34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A3940E88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1A3940ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3940F24()
{
  result = qword_1EB0FECC8;
  if (!qword_1EB0FECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECD0, &qword_1A3A76238);
    sub_1A393E5D4();
    sub_1A393E6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FECC8);
  }

  return result;
}

unint64_t sub_1A3940FB0()
{
  result = qword_1EB0FECD8;
  if (!qword_1EB0FECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC68, &qword_1A3A75F68);
    sub_1A38A08F8(&qword_1EB0FECE0, &qword_1EB0FECE8, &unk_1A3A76240, MEMORY[0x1E6981880]);
    sub_1A38A08F8(&qword_1ED997CD8, &qword_1EB0FEC20, &qword_1A3A75EF8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FECD8);
  }

  return result;
}

unint64_t sub_1A3941094()
{
  result = qword_1ED997D20;
  if (!qword_1ED997D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECC0, &qword_1A3A76038);
    sub_1A394114C();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D20);
  }

  return result;
}

unint64_t sub_1A394114C()
{
  result = qword_1ED997D28;
  if (!qword_1ED997D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECA0, &qword_1A3A75FF0);
    sub_1A3941204();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D28);
  }

  return result;
}

unint64_t sub_1A3941204()
{
  result = qword_1ED997D30;
  if (!qword_1ED997D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEC98, &qword_1A3A75FE8);
    sub_1A3941290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D30);
  }

  return result;
}

unint64_t sub_1A3941290()
{
  result = qword_1ED997D38;
  if (!qword_1ED997D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECB8, &qword_1A3A76030);
    sub_1A394131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D38);
  }

  return result;
}

unint64_t sub_1A394131C()
{
  result = qword_1ED997D40;
  if (!qword_1ED997D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECB0, &qword_1A3A76028);
    sub_1A38A08F8(qword_1ED997D48, &qword_1EB0FECA8, &qword_1A3A76020, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997D40);
  }

  return result;
}

unint64_t sub_1A39414A8(uint64_t a1)
{
  result = sub_1A3A2F540();
  if (v2 <= 0x3F)
  {
    result = sub_1A38BF120();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ChromeScenePhase(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A394154C()
{
  result = qword_1ED997DE8;
  if (!qword_1ED997DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED00, &qword_1A3A763F0);
    sub_1A39415D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997DE8);
  }

  return result;
}

unint64_t sub_1A39415D8()
{
  result = qword_1ED997DF0;
  if (!qword_1ED997DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FECF8, &qword_1A3A763E8);
    sub_1A38A08F8(&qword_1ED997DF8, &qword_1EB0FECF0, &qword_1A3A763E0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997DF0);
  }

  return result;
}

unint64_t sub_1A3941690()
{
  result = qword_1ED997E00;
  if (!qword_1ED997E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED18, &qword_1A3A76430);
    sub_1A3941748();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E00);
  }

  return result;
}

unint64_t sub_1A3941748()
{
  result = qword_1ED997E08;
  if (!qword_1ED997E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED08, &qword_1A3A763F8);
    sub_1A38A08F8(&qword_1ED997E10, &qword_1EB0FED10, &qword_1A3A76428, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E08);
  }

  return result;
}

unint64_t sub_1A3941800()
{
  result = qword_1ED997E18;
  if (!qword_1ED997E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED30, &qword_1A3A76470);
    sub_1A39418B8();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E18);
  }

  return result;
}

unint64_t sub_1A39418B8()
{
  result = qword_1ED997E20;
  if (!qword_1ED997E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED20, &qword_1A3A76438);
    sub_1A38A08F8(&qword_1ED997E28, &qword_1EB0FED28, &qword_1A3A76468, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E20);
  }

  return result;
}

unint64_t sub_1A3941970()
{
  result = qword_1ED997E30;
  if (!qword_1ED997E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED48, &qword_1A3A764B0);
    sub_1A3941A28();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E30);
  }

  return result;
}

unint64_t sub_1A3941A28()
{
  result = qword_1ED997E38;
  if (!qword_1ED997E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED38, &qword_1A3A76478);
    sub_1A38A08F8(&qword_1ED997E40, &qword_1EB0FED40, &qword_1A3A764A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E38);
  }

  return result;
}

unint64_t sub_1A3941AE0()
{
  result = qword_1ED997E48;
  if (!qword_1ED997E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED68, &unk_1A3A764D0);
    sub_1A3941B98();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E48);
  }

  return result;
}

unint64_t sub_1A3941B98()
{
  result = qword_1ED997E50;
  if (!qword_1ED997E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED58, &qword_1A3A764C0);
    sub_1A3941C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E50);
  }

  return result;
}

unint64_t sub_1A3941C24()
{
  result = qword_1ED997E58;
  if (!qword_1ED997E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED50, &qword_1A3A764B8);
    sub_1A38A08F8(&qword_1ED997E60, &qword_1EB0FED60, &qword_1A3A764C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997E58);
  }

  return result;
}

uint64_t sub_1A3941D24()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ScenePhaseModifier(0);
  return (*(v1 + *(v2 + 24)))();
}

uint64_t sub_1A3941D68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3941D88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1A3941DD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A3941E68(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 > 0xFE)
  {
    return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
  }

  v9 = *a1;
  v10 = v9 >= 2;
  v11 = (v9 + 2147483646) & 0x7FFFFFFF;
  if (v10)
  {
    return (v11 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1A3941F58(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 > 0xFE)
      {
        v12 = *(v6 + 56);
        v13 = &a1[v9 + 1] & ~v9;

        v12(v13);
      }

      else
      {
        *a1 = a2 + 1;
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void sub_1A3942100(uint64_t a1)
{
  sub_1A3942184();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChromeScenePhase(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3942184()
{
  if (!qword_1ED996DF8)
  {
    v0 = sub_1A3A311E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED996DF8);
    }
  }
}

uint64_t sub_1A3942250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39422B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3942328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_118Tm()
{
  v1 = (type metadata accessor for DetectInteractionGestureModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = (v2 + v1[7]);
  j__swift_release(*v3);
  v4 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A3A2F540();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3942558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_1A39425F0()
{
  v1 = *(type metadata accessor for DetectInteractionGestureModifier(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1A39405B4(v2);
}

unint64_t sub_1A3942660()
{
  result = qword_1EB0FEDD8;
  if (!qword_1EB0FEDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEDA0, &unk_1A3A76720);
    sub_1A39426EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEDD8);
  }

  return result;
}

unint64_t sub_1A39426EC()
{
  result = qword_1EB0FEDE0;
  if (!qword_1EB0FEDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED98, &qword_1A3A76718);
    sub_1A3942778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEDE0);
  }

  return result;
}

unint64_t sub_1A3942778()
{
  result = qword_1EB0FEDE8;
  if (!qword_1EB0FEDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED90, &qword_1A3A76710);
    sub_1A38A08F8(&qword_1EB0FEDF0, &qword_1EB0FED88, &qword_1A3A76708, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEDE8);
  }

  return result;
}

unint64_t sub_1A3942830()
{
  result = qword_1EB0FEDF8;
  if (!qword_1EB0FEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEDD0, &unk_1A3A76750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEDA8, &qword_1A3A76738);
    sub_1A3A2F540();
    sub_1A38A08F8(&qword_1EB0FEDC8, &qword_1EB0FEDA8, &qword_1A3A76738, MEMORY[0x1E697C278]);
    sub_1A3942328(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEDF8);
  }

  return result;
}

uint64_t sub_1A3942998(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhaseModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39429F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChromeVideoConfiguration.Priority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3942B54()
{
  result = qword_1ED997EF0;
  if (!qword_1ED997EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE08, &qword_1A3A767F8);
    sub_1A38A08F8(qword_1ED997EF8, &qword_1EB0FEE00, &qword_1A3A767F0, MEMORY[0x1E697FDF8]);
    sub_1A38A08F8(qword_1ED996740, &qword_1EB0FCD60, &qword_1A3A76880, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997EF0);
  }

  return result;
}

unint64_t sub_1A3942C54()
{
  result = qword_1EB0FEE20;
  if (!qword_1EB0FEE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE18, &unk_1A3A76910);
    sub_1A38A08F8(&qword_1EB0FEE28, &qword_1EB0FEE10, &qword_1A3A76908, MEMORY[0x1E697FDF8]);
    sub_1A38A08F8(&qword_1EB0FCC80, &qword_1EB0FCC88, &qword_1A3A6D980, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE20);
  }

  return result;
}

uint64_t sub_1A3942D80@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v32 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE38, &qword_1A3A76A08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE40, &qword_1A3A76A10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v29 - v18);
  *v19 = sub_1A3A31470();
  v19[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE48, &qword_1A3A76A18);
  v22 = a2 & 1;
  sub_1A39430A0(a1, v22, v19 + *(v21 + 44));
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a1;
  *(v23 + 32) = v22;
  v33 = a4;
  v34 = a1;
  v35 = v22;
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE50, &qword_1A3A76A20);
  sub_1A3944840();
  v30 = v13;
  sub_1A3A30FE0();
  v31 = v16;
  sub_1A388F6D8(v19, v16, &qword_1EB0FEE40, &qword_1A3A76A10);
  v24 = *(v8 + 16);
  v24(v10, v13, v7);
  v25 = v32;
  sub_1A388F6D8(v16, v32, &qword_1EB0FEE40, &qword_1A3A76A10);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEA8, &qword_1A3A76A48);
  v24((v25 + *(v26 + 48)), v10, v7);
  v27 = *(v8 + 8);
  v27(v30, v7);
  sub_1A388F740(v19, &qword_1EB0FEE40, &qword_1A3A76A10);
  v27(v10, v7);
  return sub_1A388F740(v31, &qword_1EB0FEE40, &qword_1A3A76A10);
}

void sub_1A39430A0(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEB0, &qword_1A3A76B00);
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v74[-v7];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEB8, &qword_1A3A76B08);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v74[-v8];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEC0, &qword_1A3A76B10);
  v9 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v74[-v12];
  v13 = sub_1A3A2FEE0();
  v90 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEC8, &qword_1A3A76B18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74[-v19];
  type metadata accessor for ChromeViewModel(0);
  sub_1A3944BA0(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v87 = sub_1A3A2F650();
  v86 = v21;
  sub_1A3A2EA60();
  v22 = a1;
  LODWORD(v91) = a2;
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v90 + 8))(v15, v13);
    v22 = v92;
  }

  v78 = v13;
  swift_getKeyPath(byte_1A3A76A50);
  v92 = v22;
  sub_1A3A2F080();

  v24 = *(v22 + 632);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A76B20);
  v92 = v24;
  sub_1A3944BA0(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2F080();

  v25 = *(v24 + 32);

  if (v25)
  {
    sub_1A3A2EA60();
    v26 = a1;
    if ((v91 & 1) == 0)
    {
      sub_1A3A31C30();
      v27 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v90 + 8))(v15, v78);
      v26 = v92;
    }

    swift_getKeyPath(byte_1A3A76A50);
    v92 = v26;
    sub_1A3A2F080();

    v28 = *(v26 + 632);
    sub_1A3A2EA60();

    swift_getKeyPath(byte_1A3A76B20);
    v92 = v28;
    sub_1A3A2F080();

    v29 = *(v28 + 32);

    v77 = v9;
    if (v29 > 1)
    {
      v30 = 0xE400000000000000;
      if (v29 == 2)
      {
        v31 = 1701079383;
      }

      else
      {
        v31 = 1701602644;
      }
    }

    else if (v29)
    {
      v30 = 0xE900000000000065;
      v31 = 0x6469577265707553;
    }

    else
    {
      v30 = 0xE700000000000000;
      v31 = 0x6E776F6E6B6E55;
    }

    v92 = 0xD00000000000001DLL;
    v93 = 0x80000001A3AA1E90;
    MEMORY[0x1A58F7770](v31, v30);

    v34 = sub_1A3A31810();

    v35 = CAMLocalizedFrameworkString(v34, 0);

    v36 = sub_1A3A31850();
    v38 = v37;

    v39 = sub_1A3907C58(v36, v38);
    v41 = v40;

    v92 = v39;
    v93 = v41;
    sub_1A389FD78();
    v42 = sub_1A3A308E0();
    v44 = v43;
    v75 = v45;
    v76 = v46;
    sub_1A3A2EA60();
    if ((v91 & 1) == 0)
    {
      sub_1A3A31C30();
      v47 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v90 + 8))(v15, v78);
      a1 = v92;
    }

    v91 = a3;
    swift_getKeyPath(byte_1A3A76A50);
    v92 = a1;
    sub_1A3A2F080();

    v48 = *(a1 + 632);
    sub_1A3A2EA60();

    swift_getKeyPath(asc_1A3A76A78);
    v92 = v48;
    sub_1A3A2F080();

    v49 = *(v48 + 33);

    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v50 = off_1ED997FE0;
    swift_getKeyPath(byte_1A3A76B48);
    v92 = v50;
    sub_1A3944BA0(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v51 = v50[2];
    swift_getKeyPath(byte_1A3A76B70);
    v92 = v51;
    sub_1A3944BA0(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    sub_1A3A30740();
    sub_1A391A414(v52);
    v53 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    v54 = sub_1A3A307B0();
    KeyPath = swift_getKeyPath(aP_2);
    v92 = v42;
    v93 = v44;
    v56 = v75 & 1;
    v94 = v75 & 1;
    v95 = v76;
    v96 = v49;
    v97 = KeyPath;
    v98 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEED0, &qword_1A3A76BC8);
    sub_1A3944BE8();
    v57 = v82;
    sub_1A3A30CC0();
    sub_1A389F1B4(v42, v44, v56);

    v58 = v83;
    (*(v84 + 32))(v83, v57, v85);
    *(v58 + *(v81 + 36)) = 257;
    v59 = sub_1A3A30630();
    sub_1A3A2F520();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v79;
    sub_1A388F670(v58, v79, &qword_1EB0FEEB8, &qword_1A3A76B08);
    v33 = v89;
    v69 = &v68[*(v89 + 36)];
    *v69 = v59;
    *(v69 + 1) = v61;
    *(v69 + 2) = v63;
    *(v69 + 3) = v65;
    *(v69 + 4) = v67;
    v69[40] = 0;
    v70 = v68;
    v71 = v80;
    sub_1A388F670(v70, v80, &qword_1EB0FEEC0, &qword_1A3A76B10);
    sub_1A388F670(v71, v20, &qword_1EB0FEEC0, &qword_1A3A76B10);
    v32 = 0;
    v9 = v77;
    a3 = v91;
  }

  else
  {
    v32 = 1;
    v33 = v89;
  }

  (*(v9 + 56))(v20, v32, 1, v33);
  v72 = v88;
  sub_1A388F6D8(v20, v88, &qword_1EB0FEEC8, &qword_1A3A76B18);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v87;
  *(a3 + 24) = v86 & 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEEF0, &qword_1A3A76BE0);
  sub_1A388F6D8(v72, a3 + *(v73 + 48), &qword_1EB0FEEC8, &qword_1A3A76B18);
  sub_1A3A2EA60();
  sub_1A388F740(v20, &qword_1EB0FEEC8, &qword_1A3A76B18);
  sub_1A388F740(v72, &qword_1EB0FEEC8, &qword_1A3A76B18);
}