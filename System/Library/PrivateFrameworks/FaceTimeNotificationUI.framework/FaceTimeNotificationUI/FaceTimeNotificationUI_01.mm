uint64_t sub_24AA2E894(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 1001;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Checking if call is eligible for wait on hold", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v8 = [v7 waitOnHoldEnabled];

  if (!v8 || (swift_getKeyPath(), v31 = v2, sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel), sub_24AAB2CF4(), , !*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController)) || (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0))
  {
    v20 = sub_24AAB3A64();
    v21 = sub_24AAB5144();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1008;
      _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Wait on hold not enabled or missing dependencies", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v23, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);
    }

    return 0;
  }

  v10 = v9;

  swift_unknownObjectRetain();
  if ((sub_24AAB2EA4() & 1) == 0)
  {
    v14 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    if (os_log_type_enabled(v14, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 1014;
      v27 = "[%s:%s:%ld] Wait on hold controller does not have available assets";
LABEL_21:
      _os_log_impl(&dword_24AA0F000, v14, v24, v27, v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      v28 = v25;
LABEL_22:
      MEMORY[0x24C226630](v28, -1, -1);
    }

LABEL_23:

    swift_unknownObjectRelease();

    return 0;
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 currentAudioAndVideoCallCount];

  if (v12 != 1)
  {
    v14 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    if (os_log_type_enabled(v14, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 1020;
      v27 = "[%s:%s:%ld] Multiple calls present, wait on hold not supported";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v13 = [v10 smartHoldingAvailability];
  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();
  v16 = os_log_type_enabled(v14, v15);
  if (v13 != 1)
  {
    if (!v16)
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 1025;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Smart holding not available for this call", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    v28 = v29;
    goto LABEL_22;
  }

  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 1029;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Call is eligible for wait on hold", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_24AA2F050(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MoreMenuButton(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = a2;
  v7 = v6 + *(v4 + 20);
  *v7 = xmmword_24AAB7080;
  v7[16] = 2;
  v8 = type metadata accessor for MoreMenuControl(0);

  sub_24AAB2B24();
  v9 = &v7[v8[6]];
  *v9 = 0x73697370696C6C65;
  *(v9 + 1) = 0xE800000000000000;
  v10 = v8[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v11 = &v7[v10];
  v12 = unk_27EF91A00;
  v13 = qword_27EF91A08;
  v14 = unk_27EF91A10;
  *v11 = qword_27EF919F8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  v7[v8[8]] = 0;
  v7[v8[9]] = 0;
  *(v6 + *(v3 + 24)) = 0x4041800000000000;
  v15 = v6 + *(v3 + 28);
  v18[15] = 0;

  sub_24AA1B750(v13, v14);
  sub_24AAB4B54();
  v16 = v19;
  *v15 = v18[16];
  *(v15 + 1) = v16;
  sub_24AA42080(&qword_27EF856A0, type metadata accessor for MoreMenuButton, &unk_24AABD2C8);
  return sub_24AAB4BD4();
}

void sub_24AA2F244(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 485;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Making waveform if needed", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  swift_unknownObjectRetain();
  if (([v8 isVideo]& 1) != 0 || (swift_getKeyPath(), v19 = v2, sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel), sub_24AAB2CF4(), , *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel)))
  {
    swift_unknownObjectRelease();
LABEL_7:
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 491;
      _os_log_impl(&dword_24AA0F000, v9, v10, "[%s:%s:%ld] Not creating waveform - video call or already exists", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    return;
  }

  v13 = sub_24AAB3A64();
  v14 = sub_24AAB5144();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 488;
    _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] Creating waveform view model for non-video call", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v16, -1, -1);
    MEMORY[0x24C226630](v15, -1, -1);
  }

  v17 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumViewModel(0));
  swift_unknownObjectRetain();
  v18 = sub_24AA68A88(v8);
  sub_24AA1E39C(v18);
  swift_unknownObjectRelease();
}

void sub_24AA2F6C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v162 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  sub_24AA15F10(*a1, v7, *(a1 + 16));
  sub_24AA15F10(v8, v7, v9);
  v11 = sub_24AAB3A64();
  v12 = sub_24AAB5144();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    LODWORD(v163) = v12;
    v14 = v13;
    v164 = swift_slowAlloc();
    v168 = v164;
    *v14 = 136315906;
    *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v168);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v168);
    *(v14 + 22) = 2048;
    *(v14 + 24) = 496;
    *(v14 + 32) = 2080;
    v165 = v8;
    v166 = v7;
    v167 = v9;
    sub_24AA15F10(v8, v7, v9);
    v15 = sub_24AAB4F44();
    v17 = sub_24AA406B4(v15, v16, &v168);

    *(v14 + 34) = v17;
    sub_24AA15ED0(v8, v7, v9);
    sub_24AA15ED0(v8, v7, v9);
    _os_log_impl(&dword_24AA0F000, v11, v163, "[%s:%s:%ld] Performing action: %s", v14, 0x2Au);
    v18 = v164;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v14, -1, -1);

    if (v9)
    {
LABEL_3:
      if (v9 == 2 && v8 <= 0x1A)
      {
        switch(v8)
        {
          case 1uLL:
            v94 = sub_24AAB3A64();
            v95 = sub_24AAB5144();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v165 = v97;
              *v96 = 136315650;
              *(v96 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v96 + 12) = 2080;
              *(v96 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v96 + 22) = 2048;
              *(v96 + 24) = 596;
              _os_log_impl(&dword_24AA0F000, v94, v95, "[%s:%s:%ld] Answer as audio action", v96, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v97, -1, -1);
              MEMORY[0x24C226630](v96, -1, -1);
            }

            sub_24AA37734();
            return;
          case 2uLL:
            v70 = sub_24AAB3A64();
            v71 = sub_24AAB5144();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v165 = v73;
              *v72 = 136315650;
              *(v72 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v72 + 12) = 2080;
              *(v72 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v72 + 22) = 2048;
              *(v72 + 24) = 512;
              _os_log_impl(&dword_24AA0F000, v70, v71, "[%s:%s:%ld] Decline action", v72, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v73, -1, -1);
              MEMORY[0x24C226630](v72, -1, -1);
            }

            swift_getKeyPath();
            v165 = v2;
            sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
            sub_24AAB2CF4();

            v74 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
            swift_beginAccess();
            v75 = *(v2 + v74);
            if (v75)
            {

              v76 = sub_24AAB3A64();
              v77 = sub_24AAB5144();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                v168 = v79;
                *v78 = 136315650;
                *(v78 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v168);
                *(v78 + 12) = 2080;
                *(v78 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v168);
                *(v78 + 22) = 2048;
                *(v78 + 24) = 514;
                _os_log_impl(&dword_24AA0F000, v76, v77, "[%s:%s:%ld] Using call screening for decline", v78, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x24C226630](v79, -1, -1);
                MEMORY[0x24C226630](v78, -1, -1);
              }

              v80 = sub_24AAB50F4();
              (*(*(v80 - 8) + 56))(v6, 1, 1, v80);
              sub_24AAB50C4();

              v81 = sub_24AAB50B4();
              v82 = swift_allocObject();
              v83 = MEMORY[0x277D85700];
              v82[2] = v81;
              v82[3] = v83;
              v82[4] = v75;
              v82[5] = v2;
              sub_24AA330D4(0, 0, v6, &unk_24AAB7350, v82);
            }

            else
            {
              v153 = sub_24AAB3A64();
              v154 = sub_24AAB5144();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                v168 = v156;
                *v155 = 136315650;
                *(v155 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v168);
                *(v155 + 12) = 2080;
                *(v155 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v168);
                *(v155 + 22) = 2048;
                *(v155 + 24) = 528;
                _os_log_impl(&dword_24AA0F000, v153, v154, "[%s:%s:%ld] Direct call decline", v155, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x24C226630](v156, -1, -1);
                MEMORY[0x24C226630](v155, -1, -1);
              }

              sub_24AA339E0(v157);
              __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
              swift_getObjectType();
              sub_24AAB3374();
            }

            return;
          case 3uLL:
            v119 = sub_24AAB3A64();
            v120 = sub_24AAB5144();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v165 = v122;
              *v121 = 136315650;
              *(v121 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v121 + 12) = 2080;
              *(v121 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v121 + 22) = 2048;
              *(v121 + 24) = 505;
              _os_log_impl(&dword_24AA0F000, v119, v120, "[%s:%s:%ld] Decline with message action", v121, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v122, -1, -1);
              MEMORY[0x24C226630](v121, -1, -1);
            }

            sub_24AA339E0(v123);
            goto LABEL_80;
          case 4uLL:
            v124 = sub_24AAB3A64();
            v125 = sub_24AAB5144();
            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v165 = v127;
              *v126 = 136315650;
              *(v126 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v126 + 12) = 2080;
              *(v126 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v126 + 22) = 2048;
              *(v126 + 24) = 533;
              _os_log_impl(&dword_24AA0F000, v124, v125, "[%s:%s:%ld] End call action", v126, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v127, -1, -1);
              MEMORY[0x24C226630](v126, -1, -1);
            }

            sub_24AA34330(v128);
            return;
          case 5uLL:
            v84 = sub_24AAB3A64();
            v85 = sub_24AAB5144();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v165 = v87;
              *v86 = 136315650;
              *(v86 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v86 + 12) = 2080;
              *(v86 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v86 + 22) = 2048;
              *(v86 + 24) = 536;
              _os_log_impl(&dword_24AA0F000, v84, v85, "[%s:%s:%ld] Toggle mute action", v86, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v87, -1, -1);
              MEMORY[0x24C226630](v86, -1, -1);
            }

            swift_getObjectType();
            v88 = sub_24AAB38D4();
            *v89 = !*v89;
            v88(&v165, 0);
            return;
          case 6uLL:
            v98 = sub_24AAB3A64();
            v99 = sub_24AAB5144();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v165 = v101;
              *v100 = 136315650;
              *(v100 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v100 + 12) = 2080;
              *(v100 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v100 + 22) = 2048;
              *(v100 + 24) = 549;
              _os_log_impl(&dword_24AA0F000, v98, v99, "[%s:%s:%ld] Upgrade to video action", v100, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v101, -1, -1);
              MEMORY[0x24C226630](v100, -1, -1);
            }

            sub_24AA35704();
            return;
          case 7uLL:
            v102 = sub_24AAB3A64();
            v103 = sub_24AAB5144();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v165 = v105;
              *v104 = 136315650;
              *(v104 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v104 + 12) = 2080;
              *(v104 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v104 + 22) = 2048;
              *(v104 + 24) = 539;
              _os_log_impl(&dword_24AA0F000, v102, v103, "[%s:%s:%ld] Toggle keypad action", v104, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v105, -1, -1);
              MEMORY[0x24C226630](v104, -1, -1);
            }

            MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
            sub_24AAB3E24();

            return;
          case 8uLL:
            v134 = sub_24AAB3A64();
            v135 = sub_24AAB5144();
            if (os_log_type_enabled(v134, v135))
            {
              v136 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v165 = v137;
              *v136 = 136315650;
              *(v136 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v136 + 12) = 2080;
              *(v136 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v136 + 22) = 2048;
              *(v136 + 24) = 545;
              _os_log_impl(&dword_24AA0F000, v134, v135, "[%s:%s:%ld] Toggle RTT action", v136, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v137, -1, -1);
              MEMORY[0x24C226630](v136, -1, -1);
            }

            sub_24AA34C58(v138);
LABEL_80:
            v42 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
            if (!v42)
            {
              return;
            }

            v165 = v8;
            v166 = v7;
            v167 = 2;
            goto LABEL_18;
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
          case 0x13uLL:
          case 0x17uLL:
            goto LABEL_13;
          case 0xDuLL:
            v129 = sub_24AAB3A64();
            v130 = sub_24AAB5144();
            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v165 = v132;
              *v131 = 136315650;
              *(v131 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v131 + 12) = 2080;
              *(v131 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v131 + 22) = 2048;
              *(v131 + 24) = 552;
              _os_log_impl(&dword_24AA0F000, v129, v130, "[%s:%s:%ld] Open share action", v131, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v132, -1, -1);
              MEMORY[0x24C226630](v131, -1, -1);
            }

            sub_24AA28638(v133);
            return;
          case 0xEuLL:
            v51 = sub_24AAB3A64();
            v52 = sub_24AAB5144();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v165 = v54;
              *v53 = 136315650;
              *(v53 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v53 + 12) = 2080;
              *(v53 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v53 + 22) = 2048;
              *(v53 + 24) = 555;
              _os_log_impl(&dword_24AA0F000, v51, v52, "[%s:%s:%ld] Request to share action", v53, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v54, -1, -1);
              MEMORY[0x24C226630](v53, -1, -1);
            }

            sub_24AA35AB0(v55);
            return;
          case 0xFuLL:
            v90 = sub_24AAB3A64();
            v91 = sub_24AAB5144();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v165 = v93;
              *v92 = 136315650;
              *(v92 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v92 + 12) = 2080;
              *(v92 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v92 + 22) = 2048;
              *(v92 + 24) = 558;
              _os_log_impl(&dword_24AA0F000, v90, v91, "[%s:%s:%ld] Swap calls action", v92, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v93, -1, -1);
              MEMORY[0x24C226630](v92, -1, -1);
            }

            __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
            sub_24AAB3364();
            return;
          case 0x10uLL:
            v56 = sub_24AAB3A64();
            v57 = sub_24AAB5144();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v165 = v59;
              *v58 = 136315650;
              *(v58 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v58 + 12) = 2080;
              *(v58 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v58 + 22) = 2048;
              *(v58 + 24) = 561;
              _os_log_impl(&dword_24AA0F000, v56, v57, "[%s:%s:%ld] Merge calls action", v58, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v59, -1, -1);
              MEMORY[0x24C226630](v58, -1, -1);
            }

            v60 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
            v61 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24);
            v62 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
            v63 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), v61);
            MEMORY[0x28223BE20](v63);
            *(&v162 - 4) = v61;
            *(&v162 - 3) = v62;
            *(&v162 - 2) = sub_24AA4509C;
            *(&v162 - 1) = v2;
            sub_24AAB3344();
            swift_getAssociatedTypeWitness();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
            v64 = sub_24AAB53D4();

            if (*(v64 + 16))
            {
              v163 = v10;
              v65 = *(v64 + 40);
              swift_unknownObjectRetain();

              __swift_project_boxed_opaque_existential_1(v60, v60[3]);
              v164 = v2;
              swift_getObjectType();
              swift_getObjectType();
              v162 = v65;
              if (sub_24AAB3404())
              {
                __swift_project_boxed_opaque_existential_1(v60, v60[3]);
                sub_24AAB33D4();
                swift_unknownObjectRelease();
                return;
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v158 = sub_24AAB3A64();
            v159 = sub_24AAB5144();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v165 = v161;
              *v160 = 136315650;
              *(v160 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v160 + 12) = 2080;
              *(v160 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v160 + 22) = 2048;
              *(v160 + 24) = 564;
              _os_log_impl(&dword_24AA0F000, v158, v159, "[%s:%s:%ld] Cannot merge calls - no other call or cannot group", v160, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v161, -1, -1);
              MEMORY[0x24C226630](v160, -1, -1);
            }

            break;
          case 0x11uLL:
            v47 = sub_24AAB3A64();
            v48 = sub_24AAB5144();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v165 = v50;
              *v49 = 136315650;
              *(v49 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v49 + 12) = 2080;
              *(v49 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v49 + 22) = 2048;
              *(v49 + 24) = 570;
              _os_log_impl(&dword_24AA0F000, v47, v48, "[%s:%s:%ld] Unhold call action", v49, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v50, -1, -1);
              MEMORY[0x24C226630](v49, -1, -1);
            }

            __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
            swift_getObjectType();
            sub_24AAB33F4();
            return;
          case 0x12uLL:
            v106 = sub_24AAB3A64();
            v107 = sub_24AAB5144();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v165 = v109;
              *v108 = 136315650;
              *(v108 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v108 + 12) = 2080;
              *(v108 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v108 + 22) = 2048;
              *(v108 + 24) = 573;
              _os_log_impl(&dword_24AA0F000, v106, v107, "[%s:%s:%ld] Dial action", v108, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v109, -1, -1);
              MEMORY[0x24C226630](v108, -1, -1);
            }

            swift_getObjectType();
            v110 = sub_24AAB3964();
            sub_24AA16768(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter, &v165);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85628, &qword_24AAB7338);
            sub_24AA442A0(0, &qword_27EF85630, 0x277D6EDF8);
            if (swift_dynamicCast())
            {
              v111 = v168;
              v112 = [v168 dialWithRequest_];
            }

            v113 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
            if (v113)
            {
              v165 = v8;
              v166 = v7;
              v167 = 2;
              v113(&v165);
            }

            return;
          case 0x14uLL:
            v114 = sub_24AAB3A64();
            v115 = sub_24AAB5144();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v165 = v117;
              *v116 = 136315650;
              *(v116 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v116 + 12) = 2080;
              *(v116 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v116 + 22) = 2048;
              *(v116 + 24) = 578;
              _os_log_impl(&dword_24AA0F000, v114, v115, "[%s:%s:%ld] Send to live voicemail action", v116, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v117, -1, -1);
              MEMORY[0x24C226630](v116, -1, -1);
            }

            sub_24AA36250(v118);
            return;
          case 0x15uLL:
            v144 = sub_24AAB3A64();
            v145 = sub_24AAB5144();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v165 = v147;
              *v146 = 136315650;
              *(v146 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v146 + 12) = 2080;
              *(v146 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v146 + 22) = 2048;
              *(v146 + 24) = 581;
              _os_log_impl(&dword_24AA0F000, v144, v145, "[%s:%s:%ld] Stop live voicemail action", v146, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v147, -1, -1);
              MEMORY[0x24C226630](v146, -1, -1);
            }

            sub_24AA3644C(v148);
            return;
          case 0x16uLL:
            v139 = sub_24AAB3A64();
            v140 = sub_24AAB5144();
            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v165 = v142;
              *v141 = 136315650;
              *(v141 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v141 + 12) = 2080;
              *(v141 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v141 + 22) = 2048;
              *(v141 + 24) = 584;
              _os_log_impl(&dword_24AA0F000, v139, v140, "[%s:%s:%ld] Block action", v141, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v142, -1, -1);
              MEMORY[0x24C226630](v141, -1, -1);
            }

            sub_24AA36650(v143);
            return;
          case 0x18uLL:
            v43 = sub_24AAB3A64();
            v44 = sub_24AAB5144();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v165 = v46;
              *v45 = 136315650;
              *(v45 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v45 + 12) = 2080;
              *(v45 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v45 + 22) = 2048;
              *(v45 + 24) = 587;
              _os_log_impl(&dword_24AA0F000, v43, v44, "[%s:%s:%ld] Toggle wait on hold action", v45, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v46, -1, -1);
              MEMORY[0x24C226630](v45, -1, -1);
            }

            sub_24AA28B38();
            return;
          case 0x19uLL:
            v66 = sub_24AAB3A64();
            v67 = sub_24AAB5144();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v165 = v69;
              *v68 = 136315650;
              *(v68 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v68 + 12) = 2080;
              *(v68 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v68 + 22) = 2048;
              *(v68 + 24) = 590;
              _os_log_impl(&dword_24AA0F000, v66, v67, "[%s:%s:%ld] Pick up wait on hold action", v68, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v69, -1, -1);
              MEMORY[0x24C226630](v68, -1, -1);
            }

            sub_24AA3684C();
            return;
          case 0x1AuLL:
            v149 = sub_24AAB3A64();
            v150 = sub_24AAB5144();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              v165 = v152;
              *v151 = 136315650;
              *(v151 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v151 + 12) = 2080;
              *(v151 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v151 + 22) = 2048;
              *(v151 + 24) = 593;
              _os_log_impl(&dword_24AA0F000, v149, v150, "[%s:%s:%ld] Decline wait on hold action", v151, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v152, -1, -1);
              MEMORY[0x24C226630](v151, -1, -1);
            }

            sub_24AA36F5C();
            return;
          default:
            v19 = sub_24AAB3A64();
            v20 = sub_24AAB5144();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v165 = v22;
              *v21 = 136315650;
              *(v21 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
              *(v21 + 12) = 2080;
              *(v21 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
              *(v21 + 22) = 2048;
              *(v21 + 24) = 500;
              _os_log_impl(&dword_24AA0F000, v19, v20, "[%s:%s:%ld] Answer action", v21, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v22, -1, -1);
              MEMORY[0x24C226630](v21, -1, -1);
            }

            v23 = sub_24AAB50F4();
            (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
            sub_24AAB50C4();

            v24 = sub_24AAB50B4();
            v25 = swift_allocObject();
            v26 = MEMORY[0x277D85700];
            v25[2] = v24;
            v25[3] = v26;
            v25[4] = v2;
            sub_24AA330D4(0, 0, v6, &unk_24AAB7360, v25);

            return;
        }
      }

      else
      {
LABEL_13:
        sub_24AA15F10(v8, v7, v9);
        sub_24AA15F10(v8, v7, v9);
        v35 = sub_24AAB3A64();
        v36 = sub_24AAB5144();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v168 = v38;
          *v37 = 136315906;
          *(v37 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v168);
          *(v37 + 12) = 2080;
          *(v37 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v168);
          *(v37 + 22) = 2048;
          *(v37 + 24) = 599;
          *(v37 + 32) = 2080;
          v165 = v8;
          v166 = v7;
          v167 = v9;
          sub_24AA15F10(v8, v7, v9);
          v39 = sub_24AAB4F44();
          v41 = sub_24AA406B4(v39, v40, &v168);

          *(v37 + 34) = v41;
          sub_24AA15ED0(v8, v7, v9);
          sub_24AA15ED0(v8, v7, v9);
          _os_log_impl(&dword_24AA0F000, v35, v36, "[%s:%s:%ld] Forwarding unknown action: %s", v37, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v38, -1, -1);
          MEMORY[0x24C226630](v37, -1, -1);
        }

        else
        {

          sub_24AA15ED0(v8, v7, v9);
          sub_24AA15ED0(v8, v7, v9);
        }

        v42 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
        if (v42)
        {
          v165 = v8;
          v166 = v7;
          v167 = v9;
LABEL_18:
          v42(&v165);
        }
      }

      return;
    }
  }

  else
  {

    sub_24AA15ED0(v8, v7, v9);
    sub_24AA15ED0(v8, v7, v9);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v165 = v30;
    *v29 = 136315906;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v165);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v165);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 509;
    *(v29 + 32) = 2080;
    v31 = sub_24AAB5544();
    v33 = sub_24AA406B4(v31, v32, &v165);

    *(v29 + 34) = v33;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] Reminder action with duration: %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);
  }

  v34 = sub_24AAB5534();
  sub_24AA33B70(v34);
}

uint64_t sub_24AA31E04()
{
  v0[2] = sub_24AAB50C4();
  v0[3] = sub_24AAB50B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24AA31EB0;

  return sub_24AA31FEC();
}

uint64_t sub_24AA31EB0()
{

  v1 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA450F0, v1, v0);
}

uint64_t sub_24AA31FEC()
{
  v1[17] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v1[18] = swift_task_alloc();
  v2 = sub_24AAB3724();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = sub_24AAB50C4();
  v1[23] = sub_24AAB50B4();
  v4 = sub_24AAB5094();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x2822009F8](sub_24AA3211C, v4, v3);
}

uint64_t sub_24AA3211C(uint64_t a1)
{
  v15 = v1;
  v1[26] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v14);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v14);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 786;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Attempting to answer call", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v7 = v1[20];
  v6 = v1[21];
  v8 = (v1[17] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v9 = *v8;
  v1[27] = *v8;
  v10 = v8[1];
  v1[28] = v10;
  *v6 = v9;
  v6[1] = v10;
  (*(v7 + 104))();
  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  v1[29] = v11;
  *v11 = v1;
  v11[1] = sub_24AA32344;
  v12 = v1[21];

  return MEMORY[0x28215E088](v12);
}

uint64_t sub_24AA32344(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 240) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 200);
  v7 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_24AA324D0, v7, v6);
}

uint64_t sub_24AA324D0()
{
  v58 = v0;
  v1 = *(v0 + 240);

  if (v1 == 1)
  {

    v2 = sub_24AAB3A64();
    v3 = sub_24AAB5144();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v57 = v7;
      *v6 = 136316163;
      *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
      *(v6 + 22) = 2048;
      *(v6 + 24) = 793;
      *(v6 + 32) = 2080;
      swift_getObjectType();
      *(v0 + 80) = sub_24AAB39A4();
      *(v0 + 88) = v8;
      v9 = sub_24AAB4F44();
      v11 = sub_24AA406B4(v9, v10, &v57);

      *(v6 + 34) = v11;
      *(v6 + 42) = 2081;
      *(v0 + 96) = v4;
      *(v0 + 104) = v5;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v12 = sub_24AAB4F44();
      v14 = sub_24AA406B4(v12, v13, &v57);

      *(v6 + 44) = v14;
      _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Answering call with identifier %s %{private}s.", v6, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v6, -1, -1);
    }

    v15 = *(v0 + 216);
    swift_getObjectType();
    *(v0 + 112) = v15;
    if (sub_24AAB3574())
    {
      v16 = sub_24AAB3A64();
      v17 = sub_24AAB5144();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v57 = v19;
        *v18 = 136315650;
        *(v18 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
        *(v18 + 22) = 2048;
        *(v18 + 24) = 796;
        _os_log_impl(&dword_24AA0F000, v16, v17, "[%s:%s:%ld] Answering a video call, stop updating the view as it's about to transition.", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v19, -1, -1);
        MEMORY[0x24C226630](v18, -1, -1);
      }

      sub_24AA339E0(v20);
    }

    v21 = (*(v0 + 136) + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v22 = sub_24AAB33A4();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 screenSharingRequests];
      sub_24AA442A0(0, &qword_27EF857A8, 0x277D6EF30);
      sub_24AA43064(&qword_27EF857B0, &qword_27EF857A8, 0x277D6EF30, MEMORY[0x277D85378]);
      v25 = sub_24AAB5114();

      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = sub_24AAB52F4();
      }

      else
      {
        v26 = *(v25 + 16);
      }

      if (v26)
      {
        v31 = sub_24AAB3A64();
        v32 = sub_24AAB5144();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v57 = v34;
          *v33 = 136315650;
          *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
          *(v33 + 22) = 2048;
          *(v33 + 24) = 803;
          _os_log_impl(&dword_24AA0F000, v31, v32, "[%s:%s:%ld] Conversation has pending screen sharing requests, forcing ringing UI", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v34, -1, -1);
          MEMORY[0x24C226630](v33, -1, -1);
        }

        v36 = *(v0 + 136);
        v35 = *(v0 + 144);
        v37 = sub_24AAB50F4();
        (*(*(v37 - 8) + 56))(v35, 1, 1, v37);

        v38 = sub_24AAB50B4();
        v39 = swift_allocObject();
        v40 = MEMORY[0x277D85700];
        v39[2] = v38;
        v39[3] = v40;
        v39[4] = v36;
        sub_24AA330D4(0, 0, v35, &unk_24AAB7858, v39);
      }
    }

    v41 = *(v0 + 216);
    sub_24AAB38B4();
    *(v0 + 120) = v41;
    if ((sub_24AAB3574() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      if (!sub_24AAB32C4())
      {
        v42 = sub_24AAB3A64();
        v54 = sub_24AAB5144();
        if (os_log_type_enabled(v42, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v57 = v56;
          *v55 = 136315650;
          *(v55 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
          *(v55 + 22) = 2048;
          *(v55 + 24) = 818;
          _os_log_impl(&dword_24AA0F000, v42, v54, "[%s:%s:%ld] Audio call, setting behavior to hold active", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v56, -1, -1);
          MEMORY[0x24C226630](v55, -1, -1);

          goto LABEL_26;
        }

LABEL_25:

LABEL_26:
        v46 = *(v0 + 136);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
        sub_24AAB3474();
        swift_getKeyPath();
        *(v0 + 128) = v46;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
        sub_24AAB2CF4();

        v47 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
        swift_beginAccess();
        if (*(v46 + v47))
        {

          CallScreeningViewModel.updateAnswerRequest(_:)(v0 + 16);
        }

        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_24AAB33E4();
        v48 = sub_24AAB3A64();
        v49 = sub_24AAB5144();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v57 = v51;
          *v50 = 136315650;
          *(v50 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
          *(v50 + 12) = 2080;
          *(v50 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
          *(v50 + 22) = 2048;
          *(v50 + 24) = 825;
          _os_log_impl(&dword_24AA0F000, v48, v49, "[%s:%s:%ld] Call answered successfully", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v51, -1, -1);
          MEMORY[0x24C226630](v50, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
    }

    v42 = sub_24AAB3A64();
    v43 = sub_24AAB5144();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315650;
      *(v44 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
      *(v44 + 22) = 2048;
      *(v44 + 24) = 814;
      _os_log_impl(&dword_24AA0F000, v42, v43, "[%s:%s:%ld] Video call or current video call exists, setting behavior to end active", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v45, -1, -1);
      MEMORY[0x24C226630](v44, -1, -1);
    }

    goto LABEL_25;
  }

  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v57);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v57);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 789;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] User has cancelled answering the call with the confirmation alert.", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);
  }

LABEL_31:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_24AA330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AA1695C(a3, v25 - v10, &qword_27EF85620, &qword_24AAB7330);
  v12 = sub_24AAB50F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AA169C4(v11, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AAB5094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AAB4F54() + 32;
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

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
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

uint64_t sub_24AA333D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AA1695C(a3, v25 - v10, &qword_27EF85620, &qword_24AAB7330);
  v12 = sub_24AAB50F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AA169C4(v11, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AAB5094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AAB4F54() + 32;
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

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
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

uint64_t sub_24AA336CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AA1695C(a3, v25 - v10, &qword_27EF85620, &qword_24AAB7330);
  v12 = sub_24AAB50F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AA169C4(v11, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AAB5094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AAB4F54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

      return v22;
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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AA339E0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x6573624F706F7473, 0xEF2928676E697672, &v8);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 666;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Stopping observation", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;

  *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
}

uint64_t sub_24AA33B70(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v17);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 731;
    *(v9 + 32) = 2048;
    *(v9 + 34) = a1;
    _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] Disconnect call and remind later in %f seconds", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  swift_getObjectType();
  sub_24AAB3384();
  v11 = sub_24AAB50F4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_24AAB50C4();

  v12 = sub_24AAB50B4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v2;
  *(v13 + 40) = a1;
  sub_24AA330D4(0, 0, v6, &unk_24AAB7870, v13);
}

uint64_t sub_24AA33E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_24AA33EF0;

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(0, 0);
}

uint64_t sub_24AA33EF0(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA34034, v3, v2);
}

uint64_t sub_24AA34034()
{
  v14 = v0;
  v1 = *(v0 + 48);

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315650;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v13);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 518;
      _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Call screening started successfully", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v6, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);
    }
  }

  else
  {
    if (v4)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315650;
      *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v13);
      *(v7 + 22) = 2048;
      *(v7 + 24) = 523;
      _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Unable to screen, disconnecting call", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v8, -1, -1);
      MEMORY[0x24C226630](v7, -1, -1);
    }

    v9 = *(v0 + 16);
    sub_24AA339E0(v10);
    __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v9 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    swift_getObjectType();
    sub_24AAB3374();
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_24AA34330(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v43);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v43);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 837;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Ending call", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = sub_24AA39F60();
  if (v7)
  {
    v8 = v7;
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v43);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v43);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 840;
      *(v11 + 32) = 2080;
      v45 = v8;
      sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
      v13 = v8;
      v14 = sub_24AAB4F44();
      v16 = sub_24AA406B4(v14, v15, &v43);

      *(v11 + 34) = v16;
      _os_log_impl(&dword_24AA0F000, v9, v10, "[%s:%s:%ld] Ending call group %s.", v11, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    v17 = [v8 calls];
    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    v18 = sub_24AAB5024();

    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
    {
      v20 = 0;
      v21 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x24C225BD0](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v22 = *(v18 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        sub_24AAB3374();

        ++v20;
        if (v24 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  else
  {

    v25 = sub_24AAB3A64();
    v26 = sub_24AAB5144();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v27 = 136316163;
      *(v27 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v45);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v45);
      *(v27 + 22) = 2048;
      *(v27 + 24) = 843;
      *(v27 + 32) = 2080;
      v29 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v28 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v43 = sub_24AAB39A4();
      v44 = v30;
      v31 = sub_24AAB4F44();
      v33 = sub_24AA406B4(v31, v32, &v45);

      *(v27 + 34) = v33;
      *(v27 + 42) = 2081;
      v43 = v29;
      v44 = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v34 = sub_24AAB4F44();
      v36 = sub_24AA406B4(v34, v35, &v45);

      *(v27 + 44) = v36;
      _os_log_impl(&dword_24AA0F000, v25, v26, "[%s:%s:%ld] Ending call with identifier %s %{private}s.", v27, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v42, -1, -1);
      MEMORY[0x24C226630](v27, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    swift_getObjectType();
    v37 = sub_24AAB3374();
  }

  sub_24AA339E0(v37);
  v38 = sub_24AAB3A64();
  v39 = sub_24AAB5144();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v40 = 136315650;
    *(v40 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v43);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v43);
    *(v40 + 22) = 2048;
    *(v40 + 24) = 848;
    _os_log_impl(&dword_24AA0F000, v38, v39, "[%s:%s:%ld] Call ended successfully", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v41, -1, -1);
    MEMORY[0x24C226630](v40, -1, -1);
  }
}

uint64_t sub_24AA34A94(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel))
  {

    MEMORY[0x24C2255E0](v2, 0.5, 1.0, 0.0);
    sub_24AAB3E24();
  }

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2D14();

  v3 = *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = v3 ^ 1;
  sub_24AA1DC18(v3);
  swift_getKeyPath();
  sub_24AAB2D04();
}

void sub_24AA34C58(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v48);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v48);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 877;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Toggling RTT", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = sub_24AA2CE68();

  v47 = sub_24AAB3A64();
  if (v7)
  {
    v8 = sub_24AAB5144();

    if (os_log_type_enabled(v47, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v50 = v10;
      *v9 = 136316163;
      *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v50);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 884;
      *(v9 + 32) = 2080;
      v11 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v12 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v48 = sub_24AAB39A4();
      v49 = v13;
      v14 = sub_24AAB4F44();
      v16 = sub_24AA406B4(v14, v15, &v50);

      *(v9 + 34) = v16;
      *(v9 + 42) = 2081;
      v48 = v11;
      v49 = v12;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v17 = sub_24AAB4F44();
      v19 = sub_24AA406B4(v17, v18, &v50);

      *(v9 + 44) = v19;
      _os_log_impl(&dword_24AA0F000, v47, v8, "[%s:%s:%ld] Toggling RTT on call with identifier %s %{private}s.", v9, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v10, -1, -1);
      MEMORY[0x24C226630](v9, -1, -1);
    }

    swift_getKeyPath();
    v48 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    swift_beginAccess();
    if (*(v2 + v20) == 1)
    {
      v21 = sub_24AAB3A64();
      v22 = sub_24AAB5144();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v50 = v24;
        *v23 = 136315650;
        *(v23 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v50);
        *(v23 + 22) = 2048;
        *(v23 + 24) = 887;
        _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Hiding RTT", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v24, -1, -1);
        MEMORY[0x24C226630](v23, -1, -1);
      }

      if ((*(v2 + v20) & 1) == 0)
      {
        *(v2 + v20) = 0;
        return;
      }
    }

    else
    {
      swift_getObjectType();
      if ((sub_24AAB39D4() & 1) == 0 && (sub_24AAB39E4() & 1) == 0)
      {
        v37 = sub_24AAB3A64();
        v38 = sub_24AAB5144();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v50 = v40;
          *v39 = 136315650;
          *(v39 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
          *(v39 + 12) = 2080;
          *(v39 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v50);
          *(v39 + 22) = 2048;
          *(v39 + 24) = 891;
          _os_log_impl(&dword_24AA0F000, v37, v38, "[%s:%s:%ld] Setting TTY type to direct", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v40, -1, -1);
          MEMORY[0x24C226630](v39, -1, -1);
        }

        v41 = [objc_opt_self() sharedInstance];
        objc_opt_self();
        [v41 setTTYType:1 forCall:swift_dynamicCastObjCClassUnconditional()];
      }

      v42 = sub_24AAB3A64();
      v43 = sub_24AAB5144();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315650;
        *(v44 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v50);
        *(v44 + 22) = 2048;
        *(v44 + 24) = 894;
        _os_log_impl(&dword_24AA0F000, v42, v43, "[%s:%s:%ld] Showing RTT", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v45, -1, -1);
        MEMORY[0x24C226630](v44, -1, -1);
      }

      if (*(v2 + v20) == 1)
      {
        *(v2 + v20) = 1;
        return;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v50 = v2;
    sub_24AAB2CE4();
  }

  else
  {
    v25 = sub_24AAB5124();

    if (os_log_type_enabled(v47, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = 136316163;
      *(v26 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v50);
      *(v26 + 22) = 2048;
      *(v26 + 24) = 880;
      *(v26 + 32) = 2080;
      v29 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v28 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v48 = sub_24AAB39A4();
      v49 = v30;
      v31 = sub_24AAB4F44();
      v33 = sub_24AA406B4(v31, v32, &v50);

      *(v26 + 34) = v33;
      *(v26 + 42) = 2081;
      v48 = v29;
      v49 = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v34 = sub_24AAB4F44();
      v36 = sub_24AA406B4(v34, v35, &v50);

      *(v26 + 44) = v36;
      _os_log_impl(&dword_24AA0F000, v47, v25, "[%s:%s:%ld] RTT is not available for call with identifier %s %{private}s.", v26, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v27, -1, -1);
      MEMORY[0x24C226630](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24AA35704()
{
  v1 = v0;

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v4 = 136316163;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v20);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1EB0, &v20);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 745;
    *(v4 + 32) = 2080;
    v5 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    sub_24AAB39A4();
    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v20);

    *(v4 + 34) = v9;
    *(v4 + 42) = 2081;
    v19[0] = v5;
    v19[1] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v10 = sub_24AAB4F44();
    v12 = sub_24AA406B4(v10, v11, &v20);

    *(v4 + 44) = v12;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Upgrading call with identifier %s %{private}s to video.", v4, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  sub_24AA339E0(v13);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  swift_getObjectType();
  sub_24AAB33B4();
  sub_24AAB3904();
  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1EB0, v19);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 752;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Video upgrade completed", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v17, -1, -1);
    MEMORY[0x24C226630](v16, -1, -1);
  }
}

void sub_24AA35AB0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v34);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v34);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 769;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Requesting to share", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v8 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v9 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v10 = sub_24AAB33A4();
  if (!v10)
  {

    oslog = sub_24AAB3A64();
    v17 = sub_24AAB5124();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136316163;
      *(v18 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v36);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v36);
      *(v18 + 22) = 2048;
      *(v18 + 24) = 772;
      *(v18 + 32) = 2080;
      v34 = sub_24AAB39A4();
      v35 = v20;
      v21 = sub_24AAB4F44();
      v23 = sub_24AA406B4(v21, v22, &v36);

      *(v18 + 34) = v23;
      *(v18 + 42) = 2081;
      v34 = v8;
      v35 = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v24 = sub_24AAB4F44();
      v26 = sub_24AA406B4(v24, v25, &v36);

      *(v18 + 44) = v26;
      _os_log_impl(&dword_24AA0F000, oslog, v17, "[%s:%s:%ld] Could not find conversation for call with identifier %s %{private}s.", v18, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v19, -1, -1);
      MEMORY[0x24C226630](v18, -1, -1);

      return;
    }

    goto LABEL_12;
  }

  v32 = v10;
  v11 = [v10 activeRemoteParticipants];
  sub_24AA442A0(0, &unk_27EF863F0, 0x277D6EEA8);
  sub_24AA43064(&qword_27EF857D0, &unk_27EF863F0, 0x277D6EEA8, MEMORY[0x277D85378]);
  v12 = sub_24AAB5114();

  oslog = sub_24AA58C64(v12);

  if (oslog)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_24AAB3394();
    v13 = sub_24AAB3A64();
    v14 = sub_24AAB5144();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v34);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v34);
      *(v15 + 22) = 2048;
      *(v15 + 24) = 782;
      _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] Share request sent successfully", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v16, -1, -1);
      MEMORY[0x24C226630](v15, -1, -1);

      return;
    }

LABEL_12:
    v31 = oslog;
    goto LABEL_14;
  }

  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5124();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v34);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v34);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 777;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] Could not find an active remote participant", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);

    return;
  }

  v31 = v32;
LABEL_14:
}

uint64_t sub_24AA36190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v3 = sub_24AAB39A4();
  v5 = v4;
  swift_getObjectType();
  if (v3 == sub_24AAB39A4() && v5 == v6)
  {

    v9 = 0;
  }

  else
  {
    v8 = sub_24AAB5474();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_24AA36250(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1EF0, v9);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 852;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Sending to live voicemail", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  swift_getKeyPath();
  v9[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  result = swift_beginAccess();
  if (*(v2 + v7))
  {

    CallScreeningViewModel.sendToLiveVoicemail()();
  }

  return result;
}

uint64_t sub_24AA3644C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F10, v10);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 862;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Stopping live voicemail", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  sub_24AA339E0(v7);
  swift_getKeyPath();
  v10[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  result = swift_beginAccess();
  if (*(v2 + v8))
  {

    CallScreeningViewModel.stopLiveVoicemail()();
  }

  return result;
}

void sub_24AA36650(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, v9);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 868;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Blocking call", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  swift_getKeyPath();
  v9[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  v8 = swift_beginAccess();
  if (*(v2 + v7))
  {

    CallScreeningViewModel.block()();
  }

  sub_24AA34330(v8);
}

void sub_24AA3684C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24AAB2CB4();
  v45 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v41 = v9;
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v37 - v10;
  v11 = sub_24AAB3A64();
  v12 = sub_24AAB5144();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v46);
    *(v13 + 22) = 2048;
    *(v13 + 24) = 1064;
    _os_log_impl(&dword_24AA0F000, v11, v12, "[%s:%s:%ld] Ending wait on hold", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v14, -1, -1);
    MEMORY[0x24C226630](v13, -1, -1);
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  swift_unknownObjectRetain();
  v17 = [v16 callUUID];
  sub_24AAB4EF4();

  sub_24AAB2C64();

  if ((*(v45 + 48))(v6, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_24AA169C4(v6, &qword_27EF857D8, &qword_24AAB7898);
LABEL_6:
    v18 = sub_24AAB3A64();
    v19 = sub_24AAB5144();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v46);
      *(v20 + 22) = 2048;
      *(v20 + 24) = 1067;
      _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Cannot end wait on hold - invalid call or UUID", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v21, -1, -1);
      MEMORY[0x24C226630](v20, -1, -1);
    }

    return;
  }

  v38 = *(v45 + 32);
  v39 = v45 + 32;
  v38(v44, v6, v7);
  v40 = v1;
  v22 = sub_24AAB3A64();
  v23 = sub_24AAB5144();
  v24 = v7;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v46);
    *(v25 + 22) = 2048;
    *(v25 + 24) = 1071;
    _os_log_impl(&dword_24AA0F000, v22, v23, "[%s:%s:%ld] WoH FOR MAC: Ending Wait on Hold", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v26, -1, -1);
    MEMORY[0x24C226630](v25, -1, -1);
  }

  v27 = v43;
  sub_24AAB50D4();
  v28 = sub_24AAB50F4();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = v45;
  v30 = v42;
  (*(v45 + 16))(v42, v44, v7);
  sub_24AAB50C4();
  v31 = v40;

  v32 = sub_24AAB50B4();
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = (v41 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 16) = v32;
  *(v35 + 24) = v36;
  v38((v35 + v33), v30, v24);
  *(v35 + v34) = v31;
  sub_24AA330D4(0, 0, v27, &unk_24AAB78D0, v35);

  swift_unknownObjectRelease();
  (*(v29 + 8))(v44, v24);
}

void sub_24AA36F5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v41 - v3;
  v48 = sub_24AAB2CB4();
  v4 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v43 = v6;
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v47 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  v14 = os_log_type_enabled(v12, v13);
  v46 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v49 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v49);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v49);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 1086;
    _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] WoH FOR MAC: Wait on Hold suggestion declined", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v16, -1, -1);
    MEMORY[0x24C226630](v15, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) == 1)
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v41 - 2) = v1;
    *(&v41 - 8) = 1;
    v49 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  swift_getKeyPath();
  v49 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
  v19 = sub_24AAB50F4();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v18;

  sub_24AA330D4(0, 0, v11, &unk_24AAB78D8, v21);

  sub_24AA21AFC();
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v42 = v11;
    swift_unknownObjectRetain();
    v24 = [v23 callUUID];
    sub_24AAB4EF4();

    v25 = v45;
    sub_24AAB2C64();

    v26 = v46;
    if ((*(v46 + 48))(v25, 1, v48) != 1)
    {
      v47 = *(v26 + 32);
      v41 = v8;
      v31 = v25;
      v32 = v48;
      v47(v8, v31);
      v33 = v42;
      sub_24AAB50D4();
      v20(v33, 0, 1, v19);
      v34 = v44;
      (*(v26 + 16))(v44, v8, v32);
      sub_24AAB50C4();

      v35 = sub_24AAB50B4();
      v36 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v37 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      *(v38 + 16) = v35;
      *(v38 + 24) = v39;
      v40 = v48;
      (v47)(v38 + v36, v34, v48);
      *(v38 + v37) = v1;
      sub_24AA330D4(0, 0, v33, &unk_24AAB78E8, v38);

      swift_unknownObjectRelease();
      (*(v26 + 8))(v41, v40);
      return;
    }

    swift_unknownObjectRelease();
    sub_24AA169C4(v25, &qword_27EF857D8, &qword_24AAB7898);
  }

  v27 = sub_24AAB3A64();
  v28 = sub_24AAB5144();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v49);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v49);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 1092;
    _os_log_impl(&dword_24AA0F000, v27, v28, "[%s:%s:%ld] Cannot decline wait on hold - invalid call or UUID", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);
  }
}

uint64_t sub_24AA37734()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0x7341726577736E61, 0xEF29286F69647541, &v15);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 829;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] Setting video sending to false and answering", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v9 = sub_24AAB50F4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_24AAB50C4();

  v10 = sub_24AAB50B4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_24AA330D4(0, 0, v4, &unk_24AAB78F8, v11);
}

uint64_t CallNotificationViewModel.observe()()
{
  v1[2] = v0;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24AA37A24, v3, v2);
}

uint64_t sub_24AA37A24(uint64_t a1)
{
  v12 = v1;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v11);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 608;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Starting observation", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v1[2];
  v7 = swift_allocObject();
  v1[7] = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  v1[8] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v1[9] = sub_24AAB50B4();
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_24AA37C78;

  return MEMORY[0x282200830]();
}

uint64_t sub_24AA37C78()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 40);
    v5 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_24AA450EC, v4, v5);
  }
}

uint64_t sub_24AA37DD0(uint64_t a1, uint64_t a2)
{
  v2[11] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85768, &qword_24AAB7800);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85770, &qword_24AAB7808);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85778, &qword_24AAB7810);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = sub_24AAB50C4();
  v2[23] = sub_24AAB50B4();
  v6 = swift_task_alloc();
  v2[24] = v6;
  *v6 = v2;
  v6[1] = sub_24AA37FF0;

  return sub_24AA389D8();
}

uint64_t sub_24AA37FF0()
{

  v1 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA3812C, v1, v0);
}

uint64_t sub_24AA3812C()
{
  v35 = v0;
  v1 = v0[11];

  swift_getKeyPath();
  v0[5] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34 = v6;
      *v5 = 136315650;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v34);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v34);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 614;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Setting up observation with call screening", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v6, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);
    }

    v7 = v0 + 21;
    v33 = v0 + 19;
    v8 = v0[18];
    v31 = v0[17];
    v9 = v0[15];
    v30 = v0[16];
    swift_getObjectType();
    v0[8] = sub_24AAB3924();
    v0[9] = _s22FaceTimeNotificationUI22CallScreeningViewModelC16changesPublisher7Combine03AnyJ0Vyyts5NeverOGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820, MEMORY[0x277CBCD90]);
    sub_24AAB3C04();

    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v10 = sub_24AAB5184();
    v0[10] = v10;
    v11 = sub_24AAB5174();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_24AA16A68(&qword_27EF85798, &qword_27EF85770, &qword_24AAB7808, MEMORY[0x277CBCD48]);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78, MEMORY[0x277D85228]);
    sub_24AAB3C14();
    sub_24AA169C4(v9, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v31 + 8))(v8, v30);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24AA44FA0;
    *(v13 + 24) = v12;
    sub_24AA16A68(&qword_27EF857A0, &qword_27EF85778, &qword_24AAB7810, MEMORY[0x277CBCD60]);
    v32 = sub_24AAB3C44();

    v14 = 20;
  }

  else
  {
    v15 = sub_24AAB3A64();
    v16 = sub_24AAB5144();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v34);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v34);
      *(v17 + 22) = 2048;
      *(v17 + 24) = 622;
      _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Setting up observation without call screening", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v18, -1, -1);
      MEMORY[0x24C226630](v17, -1, -1);
    }

    v19 = v0[15];
    v7 = v0 + 14;
    v33 = v0 + 12;
    swift_getObjectType();
    v0[6] = sub_24AAB3924();
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v20 = sub_24AAB5184();
    v0[7] = v20;
    v21 = sub_24AAB5174();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820, MEMORY[0x277CBCD90]);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78, MEMORY[0x277D85228]);
    sub_24AAB3C14();
    sub_24AA169C4(v19, &qword_27EF856C8, &qword_24AAB75E0);

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_24AA44FA0;
    *(v23 + 24) = v22;
    sub_24AA16A68(&qword_27EF85790, &qword_27EF85768, &qword_24AAB7800, MEMORY[0x277CBCD60]);
    v32 = sub_24AAB3C44();
    v14 = 13;
  }

  v24 = *v7;
  v25 = v0[v14];
  v26 = *v33;
  v27 = v0[11];

  (*(v25 + 8))(v24, v26);
  *(v27 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = v32;

  v28 = v0[1];

  return v28();
}

uint64_t sub_24AA389D8()
{
  v1[2] = v0;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24AA38A74, v3, v2);
}

uint64_t sub_24AA38A74(uint64_t a1)
{
  v12 = v1;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v11);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 638;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Starting call recording observation", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v1[2];
  v7 = swift_allocObject();
  v1[7] = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  v1[8] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v1[9] = sub_24AAB50B4();
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_24AA38CCC;

  return MEMORY[0x282200830]();
}

uint64_t sub_24AA38CCC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 40);
    v5 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_24AA38E24, v4, v5);
  }
}

uint64_t sub_24AA38E24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AA38E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA38F1C, v7, v6);
}

uint64_t sub_24AA38F1C()
{
  v9 = v0;

  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315650;
    *(v3 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v8);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v8);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 631;
    _os_log_impl(&dword_24AA0F000, v1, v2, "[%s:%s:%ld] Observation cancelled", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AA390C8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85768, &qword_24AAB7800);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85770, &qword_24AAB7808);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85778, &qword_24AAB7810);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_24AAB50C4();
  v2[19] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA392D0, v7, v6);
}

uint64_t sub_24AA392D0()
{
  v34 = v0;
  v1 = v0[8];

  swift_getKeyPath();
  v0[2] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {

    v2 = sub_24AAB3A64();
    v3 = sub_24AAB5144();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v33 = v5;
      *v4 = 136315650;
      *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v33);
      *(v4 + 12) = 2080;
      *(v4 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v33);
      *(v4 + 22) = 2048;
      *(v4 + 24) = 642;
      _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Setting up recording observation with audio recording view model", v4, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v5, -1, -1);
      MEMORY[0x24C226630](v4, -1, -1);
    }

    v6 = v0 + 18;
    v31 = v0 + 16;
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v30 = v0[13];
    swift_getObjectType();
    v0[5] = sub_24AAB3924();
    v0[6] = _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC16changesPublisher7Combine03AnyK0Vyyts5NeverOGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820, MEMORY[0x277CBCD90]);
    sub_24AAB3C04();

    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v10 = sub_24AAB5184();
    v0[7] = v10;
    v11 = sub_24AAB5174();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_24AA16A68(&qword_27EF85798, &qword_27EF85770, &qword_24AAB7808, MEMORY[0x277CBCD48]);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78, MEMORY[0x277D85228]);
    sub_24AAB3C14();
    sub_24AA169C4(v9, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v7 + 8))(v8, v30);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24AA44FA0;
    *(v13 + 24) = v12;
    sub_24AA16A68(&qword_27EF857A0, &qword_27EF85778, &qword_24AAB7810, MEMORY[0x277CBCD60]);
    v32 = sub_24AAB3C44();

    v14 = 17;
  }

  else
  {
    v15 = sub_24AAB3A64();
    v16 = sub_24AAB5144();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v33);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v33);
      *(v17 + 22) = 2048;
      *(v17 + 24) = 650;
      _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Setting up recording observation without audio recording view model", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v18, -1, -1);
      MEMORY[0x24C226630](v17, -1, -1);
    }

    v19 = v0[12];
    v6 = v0 + 11;
    v31 = v0 + 9;
    swift_getObjectType();
    v0[3] = sub_24AAB3924();
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v20 = sub_24AAB5184();
    v0[4] = v20;
    v21 = sub_24AAB5174();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820, MEMORY[0x277CBCD90]);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78, MEMORY[0x277D85228]);
    sub_24AAB3C14();
    sub_24AA169C4(v19, &qword_27EF856C8, &qword_24AAB75E0);

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_24AA44FA0;
    *(v23 + 24) = v22;
    sub_24AA16A68(&qword_27EF85790, &qword_27EF85768, &qword_24AAB7800, MEMORY[0x277CBCD60]);
    v32 = sub_24AAB3C44();
    v14 = 10;
  }

  v24 = *v6;
  v25 = v0[v14];
  v26 = *v31;
  v27 = v0[8];

  (*(v25 + 8))(v24, v26);
  *(v27 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = v32;

  v28 = v0[1];

  return v28();
}

uint64_t sub_24AA39B70(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_24AA39BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24AAB50F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24AAB50C4();

  v11 = sub_24AAB50B4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = Strong;
  sub_24AA330D4(0, 0, v8, a4, v12);
}

uint64_t sub_24AA39D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA39DB0, v7, v6);
}

uint64_t sub_24AA39DB0()
{
  v9 = v0;

  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315650;
    *(v3 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v8);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v8);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 659;
    _os_log_impl(&dword_24AA0F000, v1, v2, "[%s:%s:%ld] Call recording observation cancelled", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_24AA39F60()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v2 = sub_24AAB3314();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v5 = 0;
    v6 = 0;
    v30 = v3;
    v31 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v32 = v3 + 32;
    v29 = i;
    while (1)
    {
      if (v34)
      {
        v7 = MEMORY[0x24C225BD0](v5, v3);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_27;
        }

        v7 = *(v32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v37 = v6;
      v11 = [v7 calls];
      sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
      v12 = sub_24AAB5024();

      if (v12 >> 62)
      {
        v1 = sub_24AAB52F4();
        v35 = v10;
        v36 = v8;
        if (!v1)
        {
LABEL_21:

          v14 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        v1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v35 = v10;
        v36 = v8;
        if (!v1)
        {
          goto LABEL_21;
        }
      }

      v38[0] = MEMORY[0x277D84F90];
      sub_24AA5D43C(0, v1 & ~(v1 >> 63), 0);
      if (v1 < 0)
      {
        goto LABEL_28;
      }

      v13 = 0;
      v14 = v38[0];
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C225BD0](v13, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v16 uniqueProxyIdentifier];
        v18 = sub_24AAB4EF4();
        v20 = v19;

        v38[0] = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24AA5D43C((v21 > 1), v22 + 1, 1);
          v14 = v38[0];
        }

        ++v13;
        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v1 != v13);

      i = v29;
      v3 = v30;
LABEL_22:
      swift_getObjectType();
      v24 = sub_24AAB39A4();
      v1 = v25;
      v38[0] = v24;
      v38[1] = v25;
      MEMORY[0x28223BE20](v24);
      v28[2] = v38;
      v6 = v37;
      v26 = sub_24AA5D68C(sub_24AA44D7C, v28, v14);

      if (v26)
      {

        return v36;
      }

      v5 = v35;
      if (v35 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_24:

  return 0;
}

uint64_t sub_24AA3A2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, &v15);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 699;
    *(v6 + 32) = 2080;
    swift_getKeyPath();
    v14[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
    swift_beginAccess();
    sub_24AA1695C(v1 + v7, v14, &qword_27EF85568, &qword_24AABC830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85568, &qword_24AABC830);
    v8 = sub_24AAB4F34();
    v10 = sub_24AA406B4(v8, v9, &v15);

    *(v6 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Getting trailing control recipe: %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  swift_getKeyPath();
  v14[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v2 + v11, a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA3A5B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a1;
  *(v5 + 64) = a5;
  v6 = sub_24AAB3A34();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  sub_24AAB50C4();
  *(v5 + 104) = sub_24AAB50B4();
  v8 = sub_24AAB5094();
  *(v5 + 112) = v8;
  *(v5 + 120) = v7;

  return MEMORY[0x2822009F8](sub_24AA3A6B0, v8, v7);
}

uint64_t sub_24AA3A6B0()
{
  sub_24AA16768(v0[8] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  swift_getObjectType();
  sub_24AAB3A24();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_24AA3A9D0;
  v4 = v0[12];

  return MEMORY[0x28215DE50](v4, v1, v2);
}

uint64_t sub_24AA3A9D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v3 = v2[15];
  v4 = v2[14];
  if (v0)
  {
    v5 = sub_24AA3AD00;
  }

  else
  {
    v5 = sub_24AA3AB58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24AA3AB58()
{
  v8 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315650;
    *(v3 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v7);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v7);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 737;
    _os_log_impl(&dword_24AA0F000, v1, v2, "[%s:%s:%ld] Successfully added reminder", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AA3AD00()
{
  v14 = v0;

  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5134();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315906;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v13);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 739;
    *(v5 + 32) = 2080;
    v0[7] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857C8, &qword_24AAB7878);
    v8 = sub_24AAB4F44();
    v10 = sub_24AA406B4(v8, v9, &v13);

    *(v5 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Failed to add reminder, error: %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AA3AF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_24AAB53B4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_24AAB50C4();
  v4[8] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_24AA3B020, v7, v6);
}

uint64_t sub_24AA3B020()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare;
  v0[11] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  sub_24AAB54D4();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_24AA3B1D8;

  return sub_24AA3FC04(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24AA3B1D8()
{
  v2 = *v1;
  v2[13] = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_24AA3B4D0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_24AA3B370;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24AA3B370()
{
  v1 = v0[11];
  v2 = v0[4];

  v3 = *(v2 + v1);
  v4 = v0[4];
  if (v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[3] = v4;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v4 + v0[11]) = 0;
  }

  sub_24AA21AFC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AA3B4D0()
{
  v1 = v0[11];
  v2 = v0[4];

  v3 = *(v2 + v1);
  v4 = v0[4];
  if (v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[3] = v4;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v4 + v0[11]) = 0;
  }

  sub_24AA21AFC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AA3B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24AAB50C4();
  v4[3] = sub_24AAB50B4();
  v6 = sub_24AAB5094();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24AA3B6C0, v6, v5);
}

uint64_t sub_24AA3B6C0()
{
  swift_getObjectType();
  sub_24AAB3904();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24AA3B77C;

  return sub_24AA31FEC();
}

uint64_t sub_24AA3B77C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24AA3B89C, v3, v2);
}

uint64_t sub_24AA3B89C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24AA3B8FC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 1108;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Updating wait on hold service for call", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_getKeyPath();
    v25 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    swift_unknownObjectRetain();
    sub_24AAB2CF4();

    v9 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
    if (v9)
    {
      v10 = v9;
      v11 = [v8 callUUID];
      sub_24AAB4EF4();

      sub_24AAB2DA4();
    }

    swift_unknownObjectRetain();
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
      *(v14 + 22) = 2048;
      *(v14 + 24) = 1116;
      *(v14 + 32) = 2080;
      v16 = [v8 callUUID];
      v17 = sub_24AAB4EF4();
      v19 = v18;

      v20 = sub_24AA406B4(v17, v19, &v25);

      *(v14 + 34) = v20;
      _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Wait on hold service updated for call UUID: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v15, -1, -1);
      MEMORY[0x24C226630](v14, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24AAB3A64();
    v21 = sub_24AAB5144();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1111;
      _os_log_impl(&dword_24AA0F000, oslog, v21, "[%s:%s:%ld] Cannot update wait on hold service - not a TUCall", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v23, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24AA3BE34(void *a1@<X8>)
{
  sub_24AAB29D4();
  if (!v5)
  {
    sub_24AA169C4(v4, &qword_27EF85740, &qword_24AAB76D0);
    goto LABEL_5;
  }

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v3 smartHoldingSession];

LABEL_6:
  *a1 = v2;
}

double sub_24AA3BEFC(void **a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v79 - v4;
  v6 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AAB4ED4();
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v79 - v13;
  v15 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v82 = v12;
    v83 = v8;
    v84 = v9;
    v19 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
    v20 = v15;
    v21 = sub_24AAB3A64();
    v22 = sub_24AAB5144();
    v87 = v20;

    v23 = os_log_type_enabled(v21, v22);
    v86 = v19;
    v80 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v89[0] = v25;
      *v24 = 136315906;
      *(v24 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
      *(v24 + 22) = 2048;
      *(v24 + 24) = 942;
      *(v24 + 32) = 2080;
      if (v15)
      {
        v88[0] = [v87 state];
        type metadata accessor for TUSmartHoldingSessionState(0);
        v26 = sub_24AAB4F44();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = sub_24AA406B4(v26, v28, v89);

      *(v24 + 34) = v29;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Smart holding session changed: %s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v25, -1, -1);
      MEMORY[0x24C226630](v24, -1, -1);
    }

    else
    {
    }

    v30 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol;
    if (*(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v79 - 2) = v18;
      *(&v79 - 8) = 0;
      v89[0] = v18;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
      sub_24AAB2CE4();

      if (!v15)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
      if (!v15)
      {
        goto LABEL_40;
      }
    }

    v32 = [v87 state];
    v81 = 0;
    if (v32 == 3)
    {
      v33 = sub_24AAB3A64();
      v34 = sub_24AAB5144();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v89[0] = v36;
        *v35 = 136315650;
        *(v35 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
        *(v35 + 22) = 2048;
        *(v35 + 24) = 948;
        _os_log_impl(&dword_24AA0F000, v33, v34, "[%s:%s:%ld] Smart holding requires user attention", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v36, -1, -1);
        MEMORY[0x24C226630](v35, -1, -1);
      }

      sub_24AAB4E84();
      v37 = v84;
      v38 = v85;
      (*(v85 + 16))(v82, v14, v84);
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v39 = qword_27EF919A8;
      sub_24AAB2CC4();
      v40 = sub_24AAB4F14();
      v42 = v41;
      (*(v38 + 8))(v14, v37);
      sub_24AA1EE4C(v40, v42);
    }

    v43 = [v87 requiresUserAttentionReason];
    v44 = sub_24AAB3A64();
    v45 = sub_24AAB5144();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v89[0] = v47;
      *v46 = 136315906;
      *(v46 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
      *(v46 + 22) = 2048;
      *(v46 + 24) = 953;
      *(v46 + 32) = 2048;
      *(v46 + 34) = v43;
      _os_log_impl(&dword_24AA0F000, v44, v45, "[%s:%s:%ld] User attention reason: %lu", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v47, -1, -1);
      MEMORY[0x24C226630](v46, -1, -1);
    }

    v48 = v43 - 3;
    v49 = sub_24AAB3A64();
    v50 = sub_24AAB5144();
    v51 = os_log_type_enabled(v49, v50);
    if (v48 > 1)
    {
      if (v51)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v89[0] = v57;
        *v56 = 136315650;
        *(v56 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
        *(v56 + 22) = 2048;
        *(v56 + 24) = 960;
        _os_log_impl(&dword_24AA0F000, v49, v50, "[%s:%s:%ld] Other reason, not showing error symbol", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v57, -1, -1);
        MEMORY[0x24C226630](v56, -1, -1);
      }

      if (*(v18 + v30))
      {
        v58 = swift_getKeyPath();
        MEMORY[0x28223BE20](v58);
        *(&v79 - 2) = v18;
        *(&v79 - 8) = 0;
        v89[0] = v18;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      else
      {
        *(v18 + v30) = 0;
      }
    }

    else
    {
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v89[0] = v53;
        *v52 = 136315650;
        *(v52 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
        *(v52 + 22) = 2048;
        *(v52 + 24) = 956;
        _os_log_impl(&dword_24AA0F000, v49, v50, "[%s:%s:%ld] Error or language unsupported, showing error symbol", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v53, -1, -1);
        MEMORY[0x24C226630](v52, -1, -1);
      }

      v54 = v85;
      if (*(v18 + v30) == 1)
      {
        *(v18 + v30) = 1;
      }

      else
      {
        v59 = swift_getKeyPath();
        MEMORY[0x28223BE20](v59);
        *(&v79 - 2) = v18;
        *(&v79 - 8) = 1;
        v89[0] = v18;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      v55 = v84;
      sub_24AAB4E84();
      (*(v54 + 16))(v82, v14, v55);
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v60 = qword_27EF919A8;
      sub_24AAB2CC4();
      v61 = sub_24AAB4F14();
      v63 = v62;
      (*(v54 + 8))(v14, v55);
      sub_24AA1EE4C(v61, v63);
    }

    if ([v87 state] == 2 && (sub_24AA2E894(2) & 1) != 0)
    {
      v64 = sub_24AAB3A64();
      v65 = sub_24AAB5144();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v89[0] = v67;
        *v66 = 136315650;
        *(v66 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
        *(v66 + 22) = 2048;
        *(v66 + 24) = 967;
        _os_log_impl(&dword_24AA0F000, v64, v65, "[%s:%s:%ld] Hold detected and call eligible for wait on hold", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v67, -1, -1);
        MEMORY[0x24C226630](v66, -1, -1);
      }

      if (*(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) == 1)
      {
        *(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 1;
      }

      else
      {
        v74 = swift_getKeyPath();
        MEMORY[0x28223BE20](v74);
        *(&v79 - 2) = v18;
        *(&v79 - 8) = 1;
        v89[0] = v18;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      swift_getKeyPath();
      v89[0] = v18;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
      sub_24AAB2CF4();

      v75 = *(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
      v76 = sub_24AAB50F4();
      v77 = v80;
      (*(*(v76 - 8) + 56))(v80, 1, 1, v76);
      v78 = swift_allocObject();
      v78[2] = 0;
      v78[3] = 0;
      v78[4] = v75;

      sub_24AA330D4(0, 0, v77, &unk_24AAB76A0, v78);

LABEL_47:
      MEMORY[0x24C2255E0](v72, 0.5, 1.0, 0.0);
      sub_24AAB3E24();

      return result;
    }

LABEL_40:
    v68 = sub_24AAB3A64();
    v69 = sub_24AAB5144();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v89[0] = v71;
      *v70 = 136315650;
      *(v70 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v89);
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v89);
      *(v70 + 22) = 2048;
      *(v70 + 24) = 971;
      _os_log_impl(&dword_24AA0F000, v68, v69, "[%s:%s:%ld] Hold not detected or call not eligible", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v71, -1, -1);
      MEMORY[0x24C226630](v70, -1, -1);
    }

    if (*(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected))
    {
      v73 = swift_getKeyPath();
      MEMORY[0x28223BE20](v73);
      *(&v79 - 2) = v18;
      *(&v79 - 8) = 0;
      v89[0] = v18;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v18 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
    }

    goto LABEL_47;
  }

  return result;
}

double sub_24AA3D0BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_24AAB3A64();
    v8 = sub_24AAB5144();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v11);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 984;
      _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] Wait on hold status message updated", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v10, -1, -1);
      MEMORY[0x24C226630](v9, -1, -1);
    }

    sub_24AA1695C(a1, v5, &qword_27EF855C0, &unk_24AAB7270);
    sub_24AA1E9D4(v5);
  }

  return result;
}

uint64_t sub_24AA3D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_24AAB50C4();
  v4[8] = sub_24AAB50B4();
  v6 = sub_24AAB5094();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_24AA3D358, v6, v5);
}

uint64_t sub_24AA3D358(uint64_t a1)
{
  v12 = v1;
  v1[11] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v11);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 990;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Prewarming wait on hold controller", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v1[7];
  swift_getKeyPath();
  v1[5] = v6;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = *(v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController);
  v1[12] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v8[1] = sub_24AA3D5F0;

    return MEMORY[0x282149798]();
  }

  else
  {

    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_24AA3D5F0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24AA3D76C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24AA3D70C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24AA3D70C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AA3D76C()
{
  v15 = v0;
  v1 = *(v0 + 112);

  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v14);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 993;
    *(v6 + 32) = 2080;
    swift_getErrorValue();
    v8 = sub_24AAB54E4();
    v10 = sub_24AA406B4(v8, v9, &v14);

    *(v6 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] WoH FOR MAC: Prewarming failed %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 112);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AA3D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3DA10, v7, v6);
}

uint64_t sub_24AA3DA10()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  v2 = sub_24AAB2C84();
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_24AA3DB68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 performSmartHoldingRequestWithType:3 forCallWithUUID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3DB68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_24AA3DE38;
  }

  else
  {
    v5 = sub_24AA3DC98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24AA3DC98()
{
  v11 = v0;
  v1 = v0[24];

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v10);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v10);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 1056;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] WoH FOR MAC: Successfully started wait on hold", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AA3DE38()
{
  v17 = v0;
  v2 = v0[24];
  v1 = v0[25];

  swift_willThrow();

  v3 = v1;
  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[23];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, v16);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 1058;
    *(v9 + 32) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] WoH FOR MAC: Failed to start wait on hold: %@", v9, 0x2Au);
    sub_24AA169C4(v10, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AA3E070(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857C8, &qword_24AAB7878);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24AA3E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3E1B4, v7, v6);
}

uint64_t sub_24AA3E1B4()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  v2 = sub_24AAB2C84();
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_24AA3E30C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor_365;
  v0[14] = v3;
  [v1 performSmartHoldingRequestWithType:4 forCallWithUUID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3E30C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_24AA3E5E0;
  }

  else
  {
    v5 = sub_24AA3E43C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24AA3E43C()
{
  v11 = v0;
  v1 = v0[24];

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v10);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v10);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 1078;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] WoH FOR MAC: Successfully ended wait on hold", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AA3E5E0()
{
  v17 = v0;
  v2 = v0[24];
  v1 = v0[25];

  swift_willThrow();

  v3 = v1;
  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[23];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, v16);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 1080;
    *(v9 + 32) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] WoH FOR MAC: Failed to end wait on hold: %@", v9, 0x2Au);
    sub_24AA169C4(v10, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AA3E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3E8B4, v7, v6);
}

uint64_t sub_24AA3E8B4()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  v2 = sub_24AAB2C84();
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_24AA3EA0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor_377;
  v0[14] = v3;
  [v1 performSmartHoldingRequestWithType:2 forCallWithUUID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3EA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_24AA3ECD8;
  }

  else
  {
    v5 = sub_24AA3EB3C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24AA3EB3C()
{
  v10 = v0;
  v1 = v0[23];
  v2 = v0[24];

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v9);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 1100;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] WoH FOR MAC: Successfully stopped hold detection", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AA3ECD8()
{
  v17 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  swift_willThrow();

  v4 = v1;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, v16);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 1102;
    *(v9 + 32) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] WoH FOR MAC: Failed to end hold detection: %@", v9, 0x2Au);
    sub_24AA169C4(v10, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

void sub_24AA3EF0C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315906;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, &v15);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 1147;
      *(v5 + 32) = 2112;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 34) = v9;
      *v6 = v9;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion error=%@", v5, 0x2Au);
      sub_24AA169C4(v6, &qword_27EF857E8, &qword_24AAB78C0);
      MEMORY[0x24C226630](v6, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);

      return;
    }

    v13 = a1;

    goto LABEL_9;
  }

  oslog = sub_24AAB3A64();
  v10 = sub_24AAB5144();
  if (!os_log_type_enabled(oslog, v10))
  {
    v13 = oslog;

LABEL_9:

    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v15 = v12;
  *v11 = 136315650;
  *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, &v15);
  *(v11 + 22) = 2048;
  *(v11 + 24) = 1149;
  _os_log_impl(&dword_24AA0F000, oslog, v10, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion succeeded", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v12, -1, -1);
  MEMORY[0x24C226630](v11, -1, -1);
}

void sub_24AA3F25C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_24AA3F2C8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315906;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &v15);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 1169;
      *(v5 + 32) = 2112;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 34) = v9;
      *v6 = v9;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion error=%@", v5, 0x2Au);
      sub_24AA169C4(v6, &qword_27EF857E8, &qword_24AAB78C0);
      MEMORY[0x24C226630](v6, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);

      return;
    }

    v13 = a1;

    goto LABEL_9;
  }

  oslog = sub_24AAB3A64();
  v10 = sub_24AAB5144();
  if (!os_log_type_enabled(oslog, v10))
  {
    v13 = oslog;

LABEL_9:

    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v15 = v12;
  *v11 = 136315650;
  *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &v15);
  *(v11 + 22) = 2048;
  *(v11 + 24) = 1171;
  _os_log_impl(&dword_24AA0F000, oslog, v10, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion succeeded for contact card", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v12, -1, -1);
  MEMORY[0x24C226630](v11, -1, -1);
}

id sub_24AA3F618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel, &protocol conformance descriptor for CallNotificationPosterViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  *a2 = v4;

  return v4;
}

void sub_24AA3F6D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA47AAC(v1);
}

uint64_t sub_24AA3F708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  a2[1] = v4;
}

uint64_t sub_24AA3F7D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_24AA3F820(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 32);
}

void sub_24AA3F8F0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts);
}

uint64_t sub_24AA3F9C8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24AA3FA14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AA3FB0C;

  return v6(a1);
}

uint64_t sub_24AA3FB0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AA3FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AAB53A4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AA3FD04, 0, 0);
}

uint64_t sub_24AA3FD04()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24AAB53B4();
  v5 = sub_24AA42080(&qword_27EF857B8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24AAB54B4();
  sub_24AA42080(&qword_27EF857C0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24AAB53C4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24AA3FE94;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24AA3FE94()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AA40050, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AA40050()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24AA400BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856A8, &qword_24AAB7508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AA40204(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AA4034C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AA40458(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85880, &qword_24AAB7948);
  v10 = *(sub_24AAB2A04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24AAB2A04() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24AA40658(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24AA406B4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24AA406B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AA40780(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AA168B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24AA40780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AA4088C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AAB5394();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24AA4088C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AA408D8(a1, a2);
  sub_24AA40A08(&unk_285E034F8);
  return v3;
}

void *sub_24AA408D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AA40AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AAB5394();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AAB4FC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AA40AF4(v10, 0);
        result = sub_24AAB5364();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AA40A08(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AA40B68(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AA40AF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85890, &qword_24AAB7958);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AA40B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85890, &qword_24AAB7958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_24AA40C5C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_24AA40C6C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24AA40C8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24AA40CBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24AA40DB0;

  return v5(v2 + 32);
}

uint64_t sub_24AA40DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AA40EC4(uint64_t a1, uint64_t a2)
{
  sub_24AA1695C(a1, v9, &qword_27EF85568, &qword_24AABC830);
  sub_24AA1695C(a2, v10, &qword_27EF85568, &qword_24AABC830);
  if (v9[80] == 255)
  {
    if (v11 == 255)
    {
      sub_24AA169C4(v9, &qword_27EF85568, &qword_24AABC830);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_24AA169C4(v9, &qword_27EF85760, &qword_24AAB77A8);
    v4 = 1;
    return v4 & 1;
  }

  sub_24AA1695C(v9, v8, &qword_27EF85568, &qword_24AABC830);
  if (v11 == 255)
  {
    sub_24AA4214C(v8);
    goto LABEL_7;
  }

  v6[2] = v10[2];
  v6[3] = v10[3];
  v6[4] = v10[4];
  v7 = v11;
  v6[0] = v10[0];
  v6[1] = v10[1];
  v3 = sub_24AA72E4C(v8, v6);
  sub_24AA4214C(v6);
  sub_24AA4214C(v8);
  sub_24AA169C4(v9, &qword_27EF85568, &qword_24AABC830);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_24AA41024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v101 = a7;
  v96 = a6;
  v95 = a5;
  v102 = a3;
  v91 = a1;
  v94 = a12;
  v92 = a9;
  v97 = type metadata accessor for CallSubtitle(0);
  MEMORY[0x28223BE20](v97);
  v100 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v98);
  v93 = (&v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_24AAB3A84();
  v99 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106[3] = a10;
  v106[4] = a13;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v106);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a10);
  v105[3] = a11;
  v105[4] = a14;
  v23 = __swift_allocate_boxed_opaque_existential_1Tm(v105);
  (*(*(a11 - 8) + 32))(v23, a4, a11);
  v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v19, qword_27EF919D8);
  v90 = *(v99 + 16);
  v90(a8 + v24, v25, v19);
  v26 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  *(v26 + 80) = 5;
  v27 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 80) = -1;
  type metadata accessor for CallHoldingAnalytics(0);
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85888, &qword_24AAB7950);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v28 + 16) = v29;
  v30 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  v31 = sub_24AAB2C54();
  v32 = *(*(v31 - 8) + 56);
  v32(v28 + v30, 1, 1, v31);
  v32(v28 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp, 1, 1, v31);
  *(v28 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v28 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v28 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = v28;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = 0;
  v33 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__liveVoicemailViewController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = 0;
  v34 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  v35 = sub_24AAB2AA4();
  (*(*(v35 - 8) + 56))(a8 + v34, 1, 1, v35);
  v36 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  *v36 = 0;
  v36[1] = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) = 0;
  v37 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags;
  *(a8 + v37) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager) = 1;
  sub_24AAB2D24();
  v90(v21, a8 + v24, v19);
  v38 = v91;
  swift_unknownObjectRetain();
  v39 = sub_24AAB3A64();
  v40 = sub_24AAB5144();
  swift_unknownObjectRelease();
  v41 = os_log_type_enabled(v39, v40);
  v90 = v19;
  v42 = v38;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v88 = v21;
    v89 = v33;
    v45 = v44;
    v103[0] = v44;
    *v43 = 136316162;
    *(v43 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v103);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v103);
    *(v43 + 22) = 2048;
    *(v43 + 24) = 158;
    *(v43 + 32) = 2080;
    v46 = v92;
    v47 = v94;
    v48 = sub_24AAB39A4();
    v50 = sub_24AA406B4(v48, v49, v103);

    *(v43 + 34) = v50;
    v51 = v47;
    *(v43 + 42) = 1024;
    v52 = v101;
    *(v43 + 44) = v101 & 1;
    _os_log_impl(&dword_24AA0F000, v39, v40, "[%s:%s:%ld] Initializing CallNotificationViewModel with call: %s, isScreenLocked: %{BOOL}d", v43, 0x30u);
    swift_arrayDestroy();
    v53 = v45;
    v33 = v89;
    MEMORY[0x24C226630](v53, -1, -1);
    MEMORY[0x24C226630](v43, -1, -1);

    (*(v99 + 8))(v88, v90);
  }

  else
  {

    (*(v99 + 8))(v21, v90);
    v52 = v101;
    v51 = v94;
    v46 = v92;
  }

  v54 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  *v54 = v42;
  v54[1] = v51;
  sub_24AA16768(v106, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  sub_24AA16768(v102, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder);
  type metadata accessor for CallNotificationPosterViewModel(0);
  v55 = swift_allocObject();
  v56 = swift_unknownObjectRetain_n();
  v57 = sub_24AA48A94(v56, v55, v46, v51);

  *(a8 + v33) = v57;
  sub_24AA16768(v106, v103);
  sub_24AA16768(v105, v104);
  sub_24AAB3734();
  swift_allocObject();
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper) = sub_24AAB3714();
  v58 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
  v59 = v95;
  v60 = v96;
  *v58 = v95;
  v58[1] = v60;
  v61 = v51;
  ObjectType = swift_getObjectType();
  v103[0] = v42;
  swift_unknownObjectRetain();
  sub_24AA16D2C(v59, v60);
  v63 = *(v61 + 8);
  v99 = sub_24AA87578(v103, 0, v52 & 1, ObjectType, v63);
  v96 = v64;
  v65 = sub_24AA86BC8(v103, 0, 0, ObjectType, v63);
  v67 = v66;
  swift_storeEnumTagMultiPayload();
  v68 = sub_24AAB3564();
  if (v68 && (v69 = v68, v70 = [v68 shouldHideContactWithLockState_], v69, v70))
  {
    v71 = MEMORY[0x277D84F90];
  }

  else
  {
    v71 = sub_24AA86F34(v103, ObjectType, v63);
  }

  v72 = sub_24AAB35A4();
  v73 = sub_24AAB3574();
  if ([v72 isFaceTimeProvider])
  {

    if (v73)
    {
      v74 = 2;
    }

    else
    {
      v74 = 1;
    }
  }

  else
  {
    v75 = [v72 isTelephonyProvider];

    if (v75)
    {
      v74 = 0;
    }

    else
    {
      v74 = 3;
    }
  }

  v76 = sub_24AAB3554();
  v78 = v77;
  swift_unknownObjectRelease_n();
  v79 = v93;
  v80 = v96;
  *v93 = v99;
  v79[1] = v80;
  v79[2] = v65;
  v79[3] = v67;
  v81 = v98;
  sub_24AA44DD4(v100, v79 + *(v98 + 24), type metadata accessor for CallSubtitle);
  *(v79 + v81[7]) = v71;
  *(v79 + v81[8]) = v74;
  v82 = (v79 + v81[9]);
  *v82 = v76;
  v82[1] = v78;
  sub_24AA44DD4(v79, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked) = v101 & 1;
  sub_24AA23BC0();
  v83 = sub_24AAB3A64();
  v84 = sub_24AAB5144();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v103[0] = v86;
    *v85 = 136315650;
    *(v85 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v103);
    *(v85 + 12) = 2080;
    *(v85 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v103);
    *(v85 + 22) = 2048;
    *(v85 + 24) = 169;
    _os_log_impl(&dword_24AA0F000, v83, v84, "[%s:%s:%ld] CallNotificationViewModel features set up completed. Starting control recipe creation", v85, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v86, -1, -1);
    MEMORY[0x24C226630](v85, -1, -1);
  }

  sub_24AA2A2D4(v103);
  sub_24AA1D19C(v103);
  sub_24AA29C9C(v103);
  sub_24AA20C48(v103);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  return a8;
}

uint64_t sub_24AA41C74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v31 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a1;
  v28 = a3;
  v26 = a12;
  v25 = a13;
  v15 = *(a11 - 8);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallNotificationViewModel(0);
  v22 = swift_allocObject();
  (*(v19 + 16))(v21, a2, a10);
  (*(v15 + 16))(v18, a4, a11);
  return sub_24AA41024(v27, v21, v28, v18, v29, v30, v31, v22, a9, a10, a11, v26, *(&v26 + 1), v25);
}

uint64_t type metadata accessor for CallNotificationViewModel(uint64_t a1)
{
  result = qword_27EF85660;
  if (!qword_27EF85660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA42080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24AA420CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA47AAC(v1);
}

void sub_24AA421A0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24AA4220C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

void sub_24AA422A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA1E39C(v1);
}

void sub_24AA422D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = v2;
  v4 = v2;
}

uint64_t sub_24AA4235C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA33E34(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA4241C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AA44FD0;

  return sub_24AA31E04();
}

uint64_t sub_24AA424D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AA44FD0;

  return sub_24AA37DD0(a1, v1);
}

uint64_t sub_24AA4256C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24AA425E4(uint64_t a1)
{
  sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CallStatusViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_24AA42C9C(319);
      if (v3 <= 0x3F)
      {
        sub_24AAB2D34();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24AA42C9C(uint64_t a1)
{
  if (!qword_27EF85670)
  {
    sub_24AAB2AA4();
    v1 = sub_24AAB5274();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF85670);
    }
  }
}

uint64_t sub_24AA42D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA42D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AA42FB4()
{
  result = qword_27EF85700;
  if (!qword_27EF85700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF856E8, &qword_24AAB7600);
    sub_24AA43064(&qword_27EF85708, &qword_27EF85710, 0x277D6EF40, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85700);
  }

  return result;
}

uint64_t sub_24AA43064(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24AA442A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24AA430D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA1E5B4(v1);
}

uint64_t sub_24AA43118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3D2C0(a1, v4, v5, v6);
}

uint64_t sub_24AA431FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45C0C(a1, v4, v5, v6);
}

uint64_t sub_24AA43340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45970(a1, v4, v5, v6);
}

id sub_24AA4345C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t keypath_set_63Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24AA435B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AAB2AA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85750, &qword_24AAB7778);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_24AA1695C(a1, &v21 - v13, &qword_27EF855C0, &unk_24AAB7270);
  sub_24AA1695C(a2, &v14[v15], &qword_27EF855C0, &unk_24AAB7270);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_24AA1695C(v14, v10, &qword_27EF855C0, &unk_24AAB7270);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_24AA42080(&qword_27EF85758, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v18 = sub_24AAB4E74();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24AA169C4(v14, &qword_27EF855C0, &unk_24AAB7270);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24AA169C4(v14, &qword_27EF85750, &qword_24AAB7778);
    v17 = 1;
    return v17 & 1;
  }

  sub_24AA169C4(v14, &qword_27EF855C0, &unk_24AAB7270);
  v17 = 0;
  return v17 & 1;
}

void sub_24AA438FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = v2;
  v4 = v2;
}

void sub_24AA4393C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = *(v0 + 24);
}

uint64_t sub_24AA43980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AA43B68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA43BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AA44FD0;

  return sub_24AA40CBC(a1, v4);
}

uint64_t sub_24AA43C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA38E84(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA43D20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AA43DBC;

  return sub_24AA390C8(a1, v1);
}

uint64_t sub_24AA43DBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AA43F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA43DBC;

  return sub_24AA39D18(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA43FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3AF2C(a1, v4, v5, v6);
}

uint64_t sub_24AA440AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA3A5B8(v7, a1, v4, v5, v6);
}

uint64_t sub_24AA44170(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AA44FD0;

  return sub_24AA3FA14(a1, v4);
}

uint64_t sub_24AA44244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24AA442A0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24AA442EC(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3D978(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24AA4440C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24AA44458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45680(a1, v4, v5, v6);
}

uint64_t sub_24AA44538(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3E11C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24AA44658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45774(a1, v4, v5, v6);
}

uint64_t objectdestroy_351Tm()
{
  v1 = sub_24AAB2CB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AA447E4(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3E81C(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_69Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AA44950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3B628(a1, v4, v5, v6);
}

uint64_t sub_24AA44A04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AA44FD0;

  return sub_24AA40CBC(a1, v4);
}

unint64_t sub_24AA44B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85800;
  if (!qword_27EF85800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85800);
  }

  return result;
}

uint64_t sub_24AA44B5C()
{
  sub_24AA15ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

double block_copy_helper_404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AA44DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24AA44E5C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_24AA44EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA45108()
{
  v1 = *v0;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA4517C(uint64_t a1)
{
  v2 = *v1;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v2);
  return sub_24AAB5524();
}

unint64_t sub_24AA451C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AA46D28(*a1);
  *a2 = result;
  return result;
}

void sub_24AA451F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = sub_24AAB2C54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_24AA46E80(MEMORY[0x277D84F90]);
  v15 = 0x277CCA000uLL;
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v14;
  v18 = v9;
  sub_24AA4698C(v16, 0xD000000000000012, 0x800000024AAD21D0, isUniquelyReferenced_nonNull_native);
  v19 = v40[0];
  v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(v1 + v20, v7);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_24AA46E18(v7);
    v22 = &selRef_save;
LABEL_9:
    v31 = [objc_allocWithZone(*(v15 + 2992)) v22[22]];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v19;
    sub_24AA4698C(v31, 0x6E656D6D6F636552, 0xEE006E6F69746164, v32);
    v33 = v39;
    v34 = [objc_allocWithZone(*(v15 + 2992)) v22[22]];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v33;
    sub_24AA4698C(v34, 0x746176726573624FLL, 0xEB000000006E6F69, v35);
    return;
  }

  v36 = v19;
  v23 = *(v18 + 32);
  v23(v13, v7, v8);
  v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  v37 = v1;
  sub_24AA46DA8(v1 + v24, v5);
  if (v21(v5, 1, v8) == 1)
  {
    (*(v18 + 8))(v13, v8);
    sub_24AA46E18(v5);
    v15 = 0x277CCA000;
    v22 = &selRef_save;
    v19 = v36;
    v1 = v37;
    goto LABEL_9;
  }

  v25 = v38;
  v23(v38, v5, v8);
  sub_24AAB2C14();
  v22 = &selRef_save;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 9.22337204e18)
  {
    v15 = 0x277CCA000uLL;
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v28 = v36;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v28;
    sub_24AA4698C(v27, 0xD000000000000011, 0x800000024AAD21F0, v29);
    v19 = v39;
    v30 = *(v18 + 8);
    v30(v25, v8);
    v30(v13, v8);
    v1 = v37;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_24AA45680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA456A0, 0, 0);
}

uint64_t sub_24AA456A0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_24AA46FE4;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AA45774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45794, 0, 0);
}

uint64_t sub_24AA45794()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_24AA470CC;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v0 + 8);

  return v4();
}

void sub_24AA45868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = a2;
  sub_24AA45F24();
  sub_24AA451F8();
  v8 = v7;
  sub_24AA4616C();
  v9 = sub_24AAB4EE4();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v12[4] = a4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24AA45E98;
  v12[3] = a5;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_24AA45970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45990, 0, 0);
}

uint64_t sub_24AA45990()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_24AA46FC8;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AA45A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(a1 + v8, v7);
  v9 = sub_24AAB2C54();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_24AA46E18(v7);
  if (v11 == 1)
  {
    sub_24AAB2C44();
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_24AA46D38(v5, a1 + v8);
    result = swift_endAccess();
  }

  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 3;
  return result;
}

uint64_t sub_24AA45C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45C2C, 0, 0);
}

uint64_t sub_24AA45C2C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_24AA46F84;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24AA46FA0();
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AA45D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(a1 + v8, v7);
  v9 = sub_24AAB2C54();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_24AA46E18(v7);
  if (v11 == 1)
  {
    sub_24AAB2C44();
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_24AA46D38(v5, a1 + v8);
    return swift_endAccess();
  }

  return result;
}

id sub_24AA45E98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_24AA47080();
    v4 = sub_24AAB4E44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_24AA45F24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_24AAB2C54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(v1 + v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_24AA46E18(v4);
  }

  (*(v6 + 32))(v11, v4, v5);
  sub_24AAB2C44();
  sub_24AAB2C14();
  v15 = v14;
  v16 = v14;
  v17 = *(v6 + 8);
  v17(v9, v5);
  result = (v17)(v11, v5);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v15 >= 1)
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = v15;
  }

  return result;
}

uint64_t sub_24AA4616C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_24AAB2C54();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46D38(v3, v0 + v6);
  swift_endAccess();
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46D38(v3, v0 + v7);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  return result;
}

uint64_t sub_24AA462D4()
{

  sub_24AA46E18(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp);
  sub_24AA46E18(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CallHoldingAnalytics(uint64_t a1)
{
  result = qword_27EF85898;
  if (!qword_27EF85898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA463A4(uint64_t a1)
{
  sub_24AA46460(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24AA46460(uint64_t a1)
{
  if (!qword_27EF858A8)
  {
    sub_24AAB2C54();
    v1 = sub_24AAB5274();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF858A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CallHoldingAnalytics.TipAnalyticsObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallHoldingAnalytics.TipAnalyticsObservation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AA4661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF858B0;
  if (!qword_27EF858B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF858B0);
  }

  return result;
}

unint64_t sub_24AA46670(uint64_t a1, uint64_t a2)
{
  sub_24AAB54F4();
  sub_24AAB4F64();
  v4 = sub_24AAB5524();

  return sub_24AA46B04(a1, a2, v4);
}

void sub_24AA466E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
  v36 = v4;
  v6 = sub_24AAB5424();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24AAB54F4();
      sub_24AAB4F64();
      v26 = sub_24AAB5524();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_24AA4698C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AA46670(a2, a3);
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
      sub_24AA466E8(v16, a4 & 1);
      v11 = sub_24AA46670(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24AAB54A4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24AA46BBC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
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

unint64_t sub_24AA46B04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AAB5474())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_24AA46BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
  v2 = *v0;
  v3 = sub_24AAB5414();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_24AA46D28(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_24AA46D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA46DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA46E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AA46E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
    v3 = sub_24AAB5434();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24AA46670(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_24AA47028()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_24AA47080()
{
  result = qword_27EF858C0;
  if (!qword_27EF858C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF858C0);
  }

  return result;
}

BOOL CallNotificationPosterViewModel.showingPoster.getter(uint64_t a1)
{
  if ((sub_24AA47230() & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  return *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) != 0;
}

char *CallNotificationPosterViewModel.__allocating_init(call:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_24AA48A94(a1, v4, ObjectType, a2);
}

uint64_t sub_24AA47230()
{
  v1 = v0;
  v2 = sub_24AAB3AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    swift_unknownObjectRetain();
    v8 = [v7 contactIdentifiers];
    if (v8)
    {
      v9 = v8;
      v19 = v3;
      v10 = [objc_opt_self() predicateForContactsWithIdentifiers_];

      swift_getKeyPath();
      v20 = v1;
      sub_24AA48808();
      sub_24AAB2CF4();

      v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
      v12 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
      sub_24AAB3064();
      v13 = v12;
      sub_24AAB3054();
      sub_24AAB30B4();
      swift_allocObject();
      sub_24AAB30A4();
      v14 = sub_24AAB3094();
      swift_unknownObjectRelease();

      if (v14)
      {
        sub_24AAB3AB4();
        swift_getKeyPath();
        v20 = v1;
        v15 = v14;
        sub_24AAB2CF4();

        MEMORY[0x24C2242F0](v15, *(v1 + v11));
        v16 = v19;
        (*(v19 + 104))(v5, *MEMORY[0x277D7EA60], v2);
        v17 = sub_24AAB3A94();
        (*(v16 + 8))(v5, v2);

        if (v17)
        {

          return 1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

char *CallNotificationPosterViewModel.init(call:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_24AA48A94(a1, v2, ObjectType, a2);
}

void sub_24AA475A4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  sub_24AA442A0(0, &qword_27EF85920, 0x277CBDAB8);
  v6 = v5;
  v7 = sub_24AAB5214();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();
  }
}

id sub_24AA476E8()
{
  v1 = v0;
  v2 = sub_24AA483E4();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (sub_24AAB3954() == 4 && (sub_24AAB3864() & 1) != 0)
    {
      v4 = sub_24AAB34D4();
      v5 = sub_24AAB3A64();
      v6 = sub_24AAB5144();
      v7 = os_log_type_enabled(v5, v6);
      if (v4)
      {
        if (v7)
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_24AA0F000, v5, v6, "makePosterView NO because call is screening", v8, 2u);
          MEMORY[0x24C226630](v8, -1, -1);
        }
      }

      else
      {
        if (v7)
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_24AA0F000, v5, v6, "makePosterView YES", v16, 2u);
          MEMORY[0x24C226630](v16, -1, -1);
        }

        sub_24AAB3AE4();
        swift_getKeyPath();
        sub_24AA48808();
        v17 = v3;
        sub_24AAB2CF4();

        v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
        v19 = sub_24AAB3AD4();
        sub_24AA485E8(v19);
        swift_getKeyPath();
        sub_24AAB2CF4();

        v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
        v21 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
        if (v21)
        {
          result = [v21 view];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v22 = result;
          [result setFrame_];
        }

        swift_getKeyPath();
        sub_24AAB2CF4();

        v23 = *(v1 + v20);
        if (v23)
        {
          v24 = *(v1 + v20);
          v25 = v23;
          return v24;
        }
      }
    }

    else
    {
      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24AA0F000, v9, v10, "makePosterView NO because call is not ringing & incoming", v11, 2u);
        MEMORY[0x24C226630](v11, -1, -1);
      }
    }
  }

  else
  {
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AA0F000, v12, v13, "makePosterView NO because contact nil", v14, 2u);
      MEMORY[0x24C226630](v14, -1, -1);
    }
  }

  return 0;
}

void sub_24AA47AAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AA442A0(0, &qword_27EF85918, 0x277D75D28);
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_24AA47C14()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277D6EFF0];
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_24AA48F08;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24AA4820C;
  v5[3] = &block_descriptor_1;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

double sub_24AA47D40(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-1] - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_24AAB29D4();
    if (!v23[3])
    {

      sub_24AA48F28(v23);
      return result;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v22;
    v9 = [v22 uniqueProxyIdentifier];
    v10 = sub_24AAB4EF4();
    v12 = v11;

    swift_getObjectType();
    if (v10 == sub_24AAB39A4() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_24AAB5474();

      if ((v15 & 1) == 0)
      {
LABEL_15:

LABEL_16:

        return result;
      }
    }

    if ([v8 status] == 1)
    {
      swift_getKeyPath();
      v23[0] = v7;
      sub_24AA48808();
      sub_24AAB2CF4();

      v16 = *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
      if (v16)
      {
        v17 = sub_24AAB50F4();
        (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
        sub_24AAB50C4();
        v18 = v16;

        v19 = sub_24AAB50B4();
        v20 = swift_allocObject();
        v21 = MEMORY[0x277D85700];
        v20[2] = v19;
        v20[3] = v21;
        v20[4] = v7;
        sub_24AA330D4(0, 0, v4, &unk_24AAB7BB0, v20);

        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

void *sub_24AA4804C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

uint64_t sub_24AA480C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24AAB50C4();
  *(v4 + 24) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA4815C, v6, v5);
}

uint64_t sub_24AA4815C()
{

  MEMORY[0x24C2255E0](v1, 0.5, 1.0, 0.0);
  sub_24AAB3E24();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AA4820C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24AAB29E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_24AAB29C4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_24AA48300(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();
  }
}

void *sub_24AA483E4()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 contactIdentifiers];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() predicateForContactsWithIdentifiers_];

      swift_getKeyPath();
      sub_24AA48808();
      sub_24AAB2CF4();

      v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
      sub_24AAB3064();
      v7 = v6;
      sub_24AAB3054();
      sub_24AAB30B4();
      swift_allocObject();
      sub_24AAB30A4();
      v8 = sub_24AAB3094();
      swift_unknownObjectRelease();

      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_24AA48560()
{
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);

  return v1;
}

void sub_24AA485E8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AAB3AE4();
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_24AA48740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  *a2 = v4;

  return v4;
}

void sub_24AA487D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA485E8(v1);
}

unint64_t sub_24AA48808()
{
  result = qword_27EF85528;
  if (!qword_27EF85528)
  {
    type metadata accessor for CallNotificationPosterViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85528);
  }

  return result;
}

uint64_t type metadata accessor for CallNotificationPosterViewModel(uint64_t a1)
{
  result = qword_27EF85908;
  if (!qword_27EF85908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24AA488AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  *a2 = v4;

  return v4;
}

uint64_t CallNotificationPosterViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CallNotificationPosterViewModel.__deallocating_deinit()
{
  CallNotificationPosterViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

char *sub_24AA48A94(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v7 = sub_24AAB3A84();
  v8 = __swift_project_value_buffer(v7, qword_27EF919D8);
  v9 = *(v7 - 8);
  v21 = v6;
  (*(v9 + 16))(&a2[v6], v8, v7);
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_featureFlags;
  *&a2[v10] = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables] = MEMORY[0x277D84FA0];
  v19 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController] = 0;
  v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView] = 0;
  v11 = [objc_opt_self() tu_contactStore];
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  *&a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore] = v11;
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  sub_24AAB2D24();
  if ([*&a2[v10] posterEnabledMac] && (swift_getObjectType(), (sub_24AAB3574() & 1) == 0) && (sub_24AAB3864() & 1) != 0)
  {
    v14 = &a2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call];
    *v14 = a1;
    *(v14 + 1) = a4;
    swift_unknownObjectRetain();
    v15 = sub_24AA476E8();
    sub_24AA47AAC(v15);
    sub_24AA47C14();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v9 + 8))(&a2[v21], v7);

    v16 = sub_24AAB2D34();
    (*(*(v16 - 8) + 8))(&a2[v13], v16);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return a2;
}

uint64_t sub_24AA48DA8(uint64_t a1)
{
  result = sub_24AAB3A84();
  if (v2 <= 0x3F)
  {
    result = sub_24AAB2D34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AA48ED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24AA48F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85740, &qword_24AAB76D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24AA48F94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA485E8(v1);
}

uint64_t sub_24AA48FC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AA49004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA43DBC;

  return sub_24AA480C4(a1, v4, v5, v6);
}

void sub_24AA490B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) = v2;
  v4 = v2;
}

void sub_24AA490F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController) = v2;
  v4 = v2;
}

void sub_24AA49168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore) = v2;
  v4 = v2;
}

id sub_24AA491DC()
{
  result = [objc_opt_self() viewControllerForCall_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AA49270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA493B8(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA492D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA493B8(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA49338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA493B8(a1, a2, a3);
  sub_24AAB4474();
  __break(1u);
}

unint64_t sub_24AA49364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85928;
  if (!qword_27EF85928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85928);
  }

  return result;
}

unint64_t sub_24AA493B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85930;
  if (!qword_27EF85930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85930);
  }

  return result;
}

uint64_t AudioCallRecordingViewModel.statusLabel.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);

  return v1;
}

uint64_t AudioCallRecordingViewModel.recordingStartedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v9 = sub_24AAB5024();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_21:

LABEL_22:
    v17 = sub_24AAB2C54();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    goto LABEL_23;
  }

LABEL_20:
  v10 = sub_24AAB52F4();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_3:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C225BD0](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v12 isRecording])
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_21;
    }
  }

  v15 = [v13 recordingSession];

  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = [v15 recordingStartedDate];

  if (v16)
  {
    sub_24AAB2C24();

    v17 = sub_24AAB2C54();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
  }

  else
  {
    v17 = sub_24AAB2C54();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  }

  sub_24AA1A25C(v4, v6, &qword_27EF855E8, &unk_24AABCB40);
  sub_24AAB2C54();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) != 1)
  {
    v19 = v22;
    (*(v18 + 32))(v22, v6, v17);
    return (*(v18 + 56))(v19, 0, 1, v17);
  }

LABEL_23:
  sub_24AA169C4(v6, &qword_27EF855E8, &unk_24AABCB40);
  sub_24AAB2C54();
  return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
}

void *AudioCallRecordingViewModel.__allocating_init(callUUID:_:recordingState:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  swift_allocObject();
  return AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(a1, a2, v5, a4 | ((HIDWORD(a4) & 1) << 32));
}

Swift::Void __swiftcall AudioCallRecordingViewModel.startRecordingButtonTapped()()
{
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
  {
    *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 1;
    sub_24AA50268();
    sub_24AA4AD50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_24AAB5194();
  v4 = sub_24AAB4EE4();
  [v2 postNotificationName:v3 object:v4];
}

Swift::Void __swiftcall AudioCallRecordingViewModel.didTapStopButton()()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24AA0F000, v0, v1, "did tap stop call recording", v2, 2u);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  sub_24AA4FF1C();
  v3 = sub_24AA50128();
  if (v3 || (v5 = sub_24AA547B8()) != 0 && (v6 = v5, v7 = [v5 recordingSession], v6, v7) && (v8 = objc_msgSend(v7, sel_recordingState), v7, v8 == 2) && (v3 = sub_24AA547B8()) != 0)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CF4();

    sub_24AAB2DD4();
  }
}

double sub_24AA49CAC()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return result;
}

double sub_24AA49D58@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);

  return result;
}

double sub_24AA49E0C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

void (*sub_24AA49F48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24AA49FAC;
}

void sub_24AA49FAC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24AA50268();
    sub_24AA4AD50();
  }
}

unint64_t AudioCallRecordingViewModel.recordingState.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = (v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_24AA4A0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a2 = *v4;
  *(a2 + 4) = v6;
  return result;
}

double AudioCallRecordingViewModel.recordingState.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  if ((*(v3 + 4) & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *v3 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = a1;
    *(v3 + 4) = BYTE4(a1) & 1;
    sub_24AA50268();
    sub_24AA4AD50();
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CE4();

  return result;
}

void sub_24AA4A320(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  *v3 = a2;
  *(v3 + 4) = BYTE4(a2) & 1;
  sub_24AA50268();
  sub_24AA4AD50();
}

uint64_t (*AudioCallRecordingViewModel.recordingState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA49F48(v4);
  return sub_24AA4A4C8;
}

void sub_24AA4A4C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA4A584(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24AAB5474() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void *sub_24AA4A700()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  v2 = v1;
  return v1;
}

id sub_24AA4A7B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  *a2 = v4;

  return v4;
}

void sub_24AA4A870(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AA442A0(0, &qword_27EF85A08, 0x277CB83D0);
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_24AA4AA08()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
}

uint64_t sub_24AA4AAC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24AA4AB90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();

  sub_24AA54270(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA4ACE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_24AA4AD50()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v3 = sub_24AAB5024();

  v29 = 0;
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_24AAB52F4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C225BD0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v15 = [v0 status];
            v16 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v7 = *(v3 + 8 * v5 + 32);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_16;
          }
        }

        v0 = v7;
        v9 = [v7 callUUID];
        v10 = sub_24AAB4EF4();
        v12 = v11;

        if (v10 == *v6 && v12 == v6[1])
        {
          goto LABEL_17;
        }

        v14 = sub_24AAB5474();

        if (v14)
        {
          goto LABEL_18;
        }

        ++v5;
      }

      while (v8 != v4);
    }
  }

  v15 = 0;
  v0 = 0;
  v16 = 1;
LABEL_22:
  v17 = v30;
  v18 = qword_285E03530;
  if (qword_285E03530)
  {
    v19 = &byte_285E03544;
    do
    {
      if (*v19)
      {
        if (v16)
        {
          goto LABEL_29;
        }
      }

      else if (!v16 && *(v19 - 1) == v15)
      {
LABEL_29:
        v20 = 0;
        goto LABEL_31;
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  v20 = 1;
LABEL_31:
  v21 = v0 != 0;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2CF4();

  v22 = v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if (*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) == 1)
  {
    LOBYTE(v23) = 0;
    v24 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);
    if ((*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) & 1) == 0)
    {
LABEL_33:
      *v24 = v23;
      goto LABEL_39;
    }
  }

  else
  {
    if (*v22 == 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v24 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);
    if (*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) == v23)
    {
      goto LABEL_33;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AAB2CE4();

  v17 = v30;
LABEL_39:
  swift_getKeyPath();
  sub_24AAB2CF4();

  if ((*(v22 + 4) & 1) == 0)
  {
    v21 = *v22 != 1 && v0 != 0;
  }

  v27 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord;
  if (v21 == *(v17 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord))
  {

    *(v17 + v27) = v21;
  }

  else
  {
    v28 = swift_getKeyPath();
    MEMORY[0x28223BE20](v28);
    sub_24AAB2CE4();
  }
}

unint64_t sub_24AA4B260()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability) | (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) << 32);
}

void sub_24AA4B31C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability);
  *(a2 + 4) = v4;
}

double sub_24AA4B3D8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4))
  {
    if ((a1 & 0x100000000) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();

      return result;
    }
  }

  else if ((a1 & 0x100000000) != 0 || *v2 != a1)
  {
    goto LABEL_9;
  }

  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;

  sub_24AA4AD50();
  return result;
}

void sub_24AA4B6FC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA4B814(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

void sub_24AA4B8B4(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a4 = *(v6 + *a3);
}

void sub_24AA4B968(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = a1 & 1;
    sub_24AA50268();

    sub_24AA4AD50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

void *AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v7 = sub_24AAB3A84();
  v8 = __swift_project_value_buffer(v7, qword_27EF919D8);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v5 + v6, v8, v7);
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_featureFlags;
  *(v5 + v10) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v26 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter;
  *(v5 + v26) = [objc_opt_self() sharedInstance];
  v11 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables) = MEMORY[0x277D84FA0];
  v14 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  *v14 = 0;
  *(v14 + 4) = 1;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__isRecording) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink) = 0;
  v15 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  sub_24AAB2D24();
  if (![*(v5 + v10) macCallRecordingEnabled])
  {

    (*(v9 + 8))(v5 + v6, v7);

    v21 = sub_24AAB2D34();
    (*(*(v21 - 8) + 8))(v5 + v15, v21);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
  *v16 = a1;
  v16[1] = a2;
  v17 = *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter);
  sub_24AAB2E04();
  swift_allocObject();
  v18 = v17;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) = sub_24AAB2DF4();
  v19 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  if ((*(v19 + 4) & 1) == 0)
  {
    v20 = a4;
    if ((a4 & 0x100000000) != 0 || *v19 != a4)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v19 = v20;
    *(v19 + 4) = BYTE4(v20) & 1;
    sub_24AA50268();
    sub_24AA4AD50();
    goto LABEL_12;
  }

  v20 = a4;
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CE4();

LABEL_12:
  v23 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if ((*(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) & 1) != 0 || *v23 != a3)
  {
    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v23 + 4) = 0;
    sub_24AA4AD50();
  }

  AudioCallRecordingViewModel.observeRecordingStateNotifications()();
  AudioCallRecordingViewModel.observeRecordingAvailabilityNotification()();
  AudioCallRecordingViewModel.observeCountdownNotifications()();
  sub_24AA4CB98("Observing countdown failed notification", MEMORY[0x277CFCA30], sub_24AA556DC);
  sub_24AA4CB98("Observing countdown cancelled notification", MEMORY[0x277CFCA38], sub_24AA556D4);
  sub_24AA50268();
  sub_24AA4AD50();
  return v5;
}