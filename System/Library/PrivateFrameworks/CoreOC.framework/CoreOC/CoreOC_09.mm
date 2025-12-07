id sub_2460544A0(void *a1)
{
  v2 = v1;
  v95 = a1;
  v101 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v90 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v90 - v8;
  MEMORY[0x28223BE20](v10);
  v94 = &v90 - v11;
  v12 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v90 - v16;
  v18 = sub_246091704();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v93 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  sub_245F8E7A4(v2 + v24, v17, &qword_27EE3A498, &unk_246097EB8);
  v25 = *(v19 + 6);
  if (v25(v17, 1, v18) == 1)
  {
    v94 = v19;
    sub_245F8E744(v17, &qword_27EE3A498, &unk_246097EB8);
    v26 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
    swift_beginAccess();
    sub_245F8E7A4(v2 + v26, v14, &qword_27EE3A498, &unk_246097EB8);
    if (v25(v14, 1, v18) == 1)
    {
      sub_245F8E744(v14, &qword_27EE3A498, &unk_246097EB8);
      v27 = sub_245FA3174();
      v28 = v96;
      v29 = v97;
      v30 = v92;
      (*(v96 + 16))(v92, v27, v97);
      v31 = sub_2460918D4();
      v32 = sub_246091FC4();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v95;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v99[0] = v36;
        *v35 = 136380675;
        *(v35 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v99);
        _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: Using ARBaseConfiguration.", v35, 0xCu);
        sub_245F8E6F4(v36);
        MEMORY[0x24C1989D0](v36, -1, -1);
        MEMORY[0x24C1989D0](v35, -1, -1);
      }

      (*(v28 + 8))(v30, v29);
      v37 = v34;
    }

    else
    {
      v66 = v93;
      (*(v94 + 4))(v93, v14, v18);
      v67 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
      swift_beginAccess();
      v68 = v97;
      v69 = v95;
      if (*(v67 + 8) != 1)
      {
        __break(1u);
      }

      v70 = objc_allocWithZone(MEMORY[0x277CE5340]);
      v71 = sub_246091674();
      v34 = [v70 initWithBaseConfiguration:v69 fileURL:v71];

      v72 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
      swift_beginAccess();
      *(v2 + v72) = MEMORY[0x277D84FA0];

      [objc_msgSend(v34 recordingTechnique)];
      swift_unknownObjectRelease();
      [v34 startRecording];
      v73 = sub_245FA3174();
      v74 = v96;
      v75 = v91;
      (*(v96 + 16))(v91, v73, v68);
      v76 = sub_2460918D4();
      v77 = sub_246091FC4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = v18;
        v80 = swift_slowAlloc();
        v98[0] = v80;
        *v78 = 136380675;
        *(v78 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v98);
        _os_log_impl(&dword_245F8A000, v76, v77, "ObjectCaptureSession.%{private}s: Using ARRecordingConfiguration.", v78, 0xCu);
        sub_245F8E6F4(v80);
        MEMORY[0x24C1989D0](v80, -1, -1);
        MEMORY[0x24C1989D0](v78, -1, -1);

        (*(v74 + 8))(v75, v68);
        (*(v94 + 1))(v66, v79);
      }

      else
      {

        (*(v74 + 8))(v75, v68);
        (*(v94 + 1))(v66, v18);
      }
    }

    return v34;
  }

  (*(v19 + 4))(v23, v17, v18);
  v38 = sub_246091674();
  v100[0] = 0;
  v39 = ARReplaySensorClassForMovieURL();

  v40 = v100[0];
  v90 = v23;
  if (!v39)
  {
    v81 = v100[0];
    goto LABEL_15;
  }

  swift_getObjCClassMetadata();
  v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v42 = v40;
  v43 = sub_246091674();
  v44 = [v41 initWithSequenceURL:v43 replayMode:0];

  if (!v44)
  {
LABEL_15:
    v82 = sub_245FA3174();
    v83 = v96;
    v84 = v97;
    (*(v96 + 16))(v9, v82, v97);
    v85 = sub_2460918D4();
    v86 = sub_246091FB4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = v18;
      v89 = swift_slowAlloc();
      v100[0] = v89;
      *v87 = 136380675;
      *(v87 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v100);
      _os_log_impl(&dword_245F8A000, v85, v86, "ObjectCaptureSession.%{private}s: Failed to create replay sensor!", v87, 0xCu);
      sub_245F8E6F4(v89);
      MEMORY[0x24C1989D0](v89, -1, -1);
      MEMORY[0x24C1989D0](v87, -1, -1);

      (*(v83 + 8))(v9, v84);
      (*(v19 + 1))(v90, v88);
    }

    else
    {

      (*(v83 + 8))(v9, v84);
      (*(v19 + 1))(v90, v18);
    }

    return 0;
  }

  v92 = v42;
  v93 = v18;
  [v44 setReplaySensorDelegate_];
  sub_245FA30EC(0, &qword_27EE3AD18, 0x277CBEB98);
  sub_245F8E624(&qword_27EE3AD20, &qword_24609ACE0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_246096460;
  v46 = type metadata accessor for ObjectCaptureFrameEvent();
  *(v45 + 56) = sub_245F8E624(&qword_27EE3AD28, &unk_24609ACE8);
  *(v45 + 32) = v46;
  v47 = MEMORY[0x24C196A20](v45);
  v100[0] = 0;
  result = sub_246091F34();
  if (v100[0])
  {

    v49 = sub_246091F24();

    [v44 setCustomDataClasses_];

    v50 = objc_allocWithZone(MEMORY[0x277CE5360]);
    v34 = [v50 initWithBaseConfiguration:v95 replaySensor:v44];
    v51 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
    swift_beginAccess();
    *(v2 + v51) = MEMORY[0x277D84FA0];

    v52 = v90;
    v99[0] = sub_2460916F4();
    v99[1] = v53;
    v54 = sub_2460915F4();
    v98[2] = 46;
    v98[3] = 0xE100000000000000;
    MEMORY[0x24C196640](v54);

    v98[0] = 0xD000000000000012;
    v98[1] = 0x80000002460A41E0;
    sub_245FA2AE4();
    v55 = sub_246092134();
    v57 = v56;

    sub_2460550FC(v55, v57);

    v58 = sub_245FA3174();
    v59 = v96;
    v60 = v97;
    v61 = v94;
    (*(v96 + 16))(v94, v58, v97);
    v62 = sub_2460918D4();
    v63 = sub_246091FC4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v99[0] = v65;
      *v64 = 136380675;
      *(v64 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v99);
      _os_log_impl(&dword_245F8A000, v62, v63, "ObjectCaptureSession.%{private}s: Using ARReplayConfiguration.", v64, 0xCu);
      sub_245F8E6F4(v65);
      MEMORY[0x24C1989D0](v65, -1, -1);
      MEMORY[0x24C1989D0](v64, -1, -1);
      swift_unknownObjectRelease();

      (*(v59 + 8))(v94, v60);
    }

    else
    {
      swift_unknownObjectRelease();

      (*(v59 + 8))(v61, v60);
    }

    (*(v19 + 1))(v52, v93);

    return v34;
  }

  __break(1u);
  return result;
}

void sub_2460550FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2460918F4();
  MEMORY[0x28223BE20](v2);
  v3 = sub_246091C44();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_246091BD4();
  v6 = [v4 fileExistsAtPath_];

  if (v6)
  {
    sub_246091C34();
    v18 = sub_246091BC4();
    v19 = v7;
    *&v20[0] = 10;
    v20[1] = -1.7573882e159;
    sub_245FA2AE4();
    v8 = sub_246092114();

    v10 = *(v8 + 16);
    if (v10)
    {
      v17 = v8;
      v11 = (v8 + 40);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v20[0] = 0.0;
        MEMORY[0x28223BE20](v9);
        *(&v17 - 2) = v20;
        if ((v12 & 0x1000000000000000) != 0)
        {
LABEL_19:

          sub_246092274();
          goto LABEL_17;
        }

        if ((v12 & 0x2000000000000000) != 0)
        {
          v18 = v13;
          v19 = v12 & 0xFFFFFFFFFFFFFFLL;

          if (v13 < 0x21u && ((0x100003E01uLL >> v13) & 1) != 0)
          {
            goto LABEL_16;
          }

          v15 = _swift_stdlib_strtod_clocale();
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if ((v13 & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v14 < 0x21 && ((0x100003E01uLL >> v14) & 1) != 0 || (v15 = _swift_stdlib_strtod_clocale()) == 0)
          {
LABEL_16:
            LOBYTE(v21) = 0;
            goto LABEL_17;
          }
        }

        LOBYTE(v21) = *v15 == 0;
LABEL_17:

        if (v21)
        {
          v16 = v20[0];
          swift_beginAccess();
          sub_246075870(v20, v16);
          v9 = swift_endAccess();
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_246055620(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3174();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, aBlock);
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, aBlock);
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: Called %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_24608FC7C();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v13 = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v14 = [v13 configuration];
  if (v14 && (v15 = v14, objc_opt_self(), v16 = swift_dynamicCastObjCClass(), v15, v16) || (v17 = [v13 configuration]) != 0 && (v18 = v17, objc_opt_self(), v19 = swift_dynamicCastObjCClass(), v18, v19))
  {
    ObjectCaptureSession.takeStillImageDuringRecordOrReplay(isAutoCapture:)(a1 & 1);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a1 & 1;
    *(v20 + 24) = v2;
    v21 = v2;
    v22 = OCNonModularSPI_CapturePhotoSettings();
    v23 = &v21[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
    swift_beginAccess();
    if ((v23[8] & 1) == 0)
    {
      v24 = *v23;
      if (v22)
      {
        [v22 setHighResolutionPhotoEnabled_];
      }

      [v22 setMaxPhotoDimensions_];
    }

    aBlock[4] = sub_2460818F8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F8F3E8;
    aBlock[3] = &unk_2858E2990;
    v25 = _Block_copy(aBlock);

    [v13 captureHighResolutionFrameWithPhotoSettings:v22 completion:v25];
    _Block_release(v25);
  }
}

Swift::Void __swiftcall ObjectCaptureSession.takeStillImageDuringRecordOrReplay(isAutoCapture:)(Swift::Bool isAutoCapture)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) currentFrame];
  if (v8)
  {
    v15 = v8;
    sub_246056000(v8, isAutoCapture);
    v9 = v15;
  }

  else
  {
    v10 = sub_245FA3234();
    (*(v4 + 16))(v7, v10, v3);
    v11 = sub_2460918D4();
    v12 = sub_246091FB4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A2680, &v16);
      _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: arsession current frame is nil!", v13, 0xCu);
      sub_245F8E6F4(v14);
      MEMORY[0x24C1989D0](v14, -1, -1);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_246055C28(void *a1, void *a2, char a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  if (a1)
  {
    v38 = a1;
    sub_246056000(v38, a3 & 1);
    v13 = v38;
  }

  else
  {
    v14 = sub_245FA3174();
    v15 = v7[2];
    v15(v12, v14, v6);
    v16 = sub_2460918D4();
    v17 = sub_246091FB4();
    v18 = os_log_type_enabled(v16, v17);
    v38 = v7;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v36 = v15;
      v20 = v7;
      v21 = v19;
      v22 = swift_slowAlloc();
      v37 = a2;
      v23 = v22;
      v39 = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, &v39);
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Failed to capture high resolution frame!", v21, 0xCu);
      sub_245F8E6F4(v23);
      v24 = v23;
      a2 = v37;
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);

      v25 = v20;
      v15 = v36;
    }

    else
    {

      v25 = v7;
    }

    v26 = v25[1];
    v26(v12, v6);
    if (a2)
    {
      v15(v9, v14, v6);
      v27 = a2;
      v28 = sub_2460918D4();
      v29 = sub_246091FB4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136380931;
        *(v30 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, &v39);
        *(v30 + 12) = 2082;
        swift_getErrorValue();
        v32 = sub_246092484();
        v34 = a2;
        v35 = sub_245F8D3C0(v32, v33, &v39);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_245F8A000, v28, v29, "ObjectCaptureSession.%{private}s: Error: %{public}s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v31, -1, -1);
        MEMORY[0x24C1989D0](v30, -1, -1);
      }

      else
      {
      }

      v26(v9, v6);
    }
  }
}

void sub_246056000(void *a1, int a2)
{
  v208 = a1;
  v3 = sub_246091834();
  v196 = *(v3 - 8);
  v197 = v3;
  MEMORY[0x28223BE20](v3);
  v199 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v206.i64[0] = &v188 - v10;
  MEMORY[0x28223BE20](v11);
  v204.i64[0] = &v188 - v12;
  MEMORY[0x28223BE20](v13);
  v203.i64[0] = &v188 - v14;
  MEMORY[0x28223BE20](v15);
  *&v202 = &v188 - v16;
  MEMORY[0x28223BE20](v17);
  *&v201 = &v188 - v18;
  MEMORY[0x28223BE20](v19);
  *&v200 = &v188 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v188 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v188 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v188 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v188 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v188 - v34;
  v36 = sub_245FA3174();
  v210 = v6;
  v37 = *(v6 + 16);
  v207 = v5;
  v198 = a2;
  v195 = v8;
  v209 = v37;
  if (a2)
  {
    v37(v35, v36, v5);
    v38 = sub_2460918D4();
    v39 = sub_246091FC4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v214[0] = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      _os_log_impl(&dword_245F8A000, v38, v39, "ObjectCaptureSession.%{private}s: Received callback for high-res image capture request initiated by automatic capture.", v40, 0xCu);
      sub_245F8E6F4(v41);
      v42 = v41;
      v5 = v207;
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    v43 = *(v210 + 8);
    v43(v35, v5);
  }

  else
  {
    v37(v32, v36, v5);
    v44 = sub_2460918D4();
    v45 = sub_246091FC4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v214[0] = v47;
      *v46 = 136380675;
      *(v46 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: self.takeStillImageCapturecapture request initiated by manual capture.", v46, 0xCu);
      sub_245F8E6F4(v47);
      MEMORY[0x24C1989D0](v47, -1, -1);
      v48 = v46;
      v5 = v207;
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    v43 = *(v210 + 8);
    v43(v32, v5);
  }

  v49 = v208;
  v50 = [v208 sceneDepth];
  if (v50 && (v51 = v50, v52 = [v50 depthMap], v51, v52))
  {
  }

  else
  {
    v53 = sub_245FA3174();
    v209(v29, v53, v5);
    v54 = sub_2460918D4();
    v55 = sub_246091FB4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v214[0] = v57;
      *v56 = 136380675;
      *(v56 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      _os_log_impl(&dword_245F8A000, v54, v55, "ObjectCaptureSession.%{private}s: No depth map is available in high-resolution ARFrame!", v56, 0xCu);
      sub_245F8E6F4(v57);
      v58 = v57;
      v5 = v207;
      MEMORY[0x24C1989D0](v58, -1, -1);
      v59 = v56;
      v49 = v208;
      MEMORY[0x24C1989D0](v59, -1, -1);
    }

    v43(v29, v5);
  }

  v60 = [v49 sceneDepth];
  if (v60 && (v61 = v60, v62 = [v60 confidenceMap], v61, v62))
  {
  }

  else
  {
    v63 = sub_245FA3174();
    v209(v26, v63, v5);
    v64 = sub_2460918D4();
    v65 = sub_246091FB4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v214[0] = v67;
      *v66 = 136380675;
      *(v66 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      _os_log_impl(&dword_245F8A000, v64, v65, "ObjectCaptureSession.%{private}s: No confidence map is available in high-resolution ARFrame!", v66, 0xCu);
      sub_245F8E6F4(v67);
      v68 = v67;
      v49 = v208;
      MEMORY[0x24C1989D0](v68, -1, -1);
      MEMORY[0x24C1989D0](v66, -1, -1);
    }

    v43(v26, v5);
  }

  v69 = [v49 capturedPointCloudData];
  if (v69 && (v70 = v69, v71 = [v69 depthPointCloud], v70, v71))
  {
  }

  else
  {
    v72 = sub_245FA3174();
    v209(v23, v72, v5);
    v73 = sub_2460918D4();
    v74 = sub_246091FB4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_245F8A000, v73, v74, "No point cloud data is available in high-resolution ARFrame!", v75, 2u);
      MEMORY[0x24C1989D0](v75, -1, -1);
    }

    v43(v23, v5);
  }

  v76 = [v49 camera];
  sub_24606656C(v211);

  v77 = v206.i64[0];
  if (v211[0] <= 2u)
  {
    if (v211[0])
    {
      v78 = v207;
      if (v211[0] == 1)
      {
        v79 = sub_245FA3174();
        v80 = v202;
        v209(v202, v79, v78);
        v81 = sub_2460918D4();
        v82 = sub_246091FB4();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v214[0] = v84;
          *v83 = 136380675;
          *(v83 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
          v85 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: excessive motion!";
LABEL_41:
          _os_log_impl(&dword_245F8A000, v81, v82, v85, v83, 0xCu);
          sub_245F8E6F4(v84);
          MEMORY[0x24C1989D0](v84, -1, -1);
          MEMORY[0x24C1989D0](v83, -1, -1);
          goto LABEL_42;
        }
      }

      else
      {
        v89 = sub_245FA3174();
        v80 = v203.i64[0];
        v209(v203.i64[0], v89, v78);
        v81 = sub_2460918D4();
        v82 = sub_246091FB4();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v214[0] = v84;
          *v83 = 136380675;
          *(v83 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
          v85 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: insufficient features!";
          goto LABEL_41;
        }
      }
    }

    else
    {
      v87 = sub_245FA3174();
      v80 = v200;
      v78 = v207;
      v209(v200, v87, v207);
      v81 = sub_2460918D4();
      v82 = sub_246091FB4();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&v214[0] = v84;
        *v83 = 136380675;
        *(v83 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
        v85 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: initializing!";
        goto LABEL_41;
      }
    }

    goto LABEL_42;
  }

  if (v211[0] == 3)
  {
    v88 = sub_245FA3174();
    v80 = v201;
    v78 = v207;
    v209(v201, v88, v207);
    v81 = sub_2460918D4();
    v82 = sub_246091FB4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v214[0] = v84;
      *v83 = 136380675;
      *(v83 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      v85 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: relocalizing!";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (v211[0] == 4)
  {
    v86 = sub_245FA3174();
    v80 = v204.i64[0];
    v78 = v207;
    v209(v204.i64[0], v86, v207);
    v81 = sub_2460918D4();
    v82 = sub_246091FB4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v214[0] = v84;
      *v83 = 136380675;
      *(v83 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      v85 = "ObjectCaptureSession.%{private}s: Camera tracking is not available!";
      goto LABEL_41;
    }

LABEL_42:

    v43(v80, v78);
    return;
  }

  [v49 timestamp];
  if (*(v205 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8))
  {
    __break(1u);
    goto LABEL_73;
  }

  v91 = v90 - *(v205 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
  v188 = sub_245FA3174();
  v92 = v207;
  (v209)(v77);
  v93 = sub_2460918D4();
  v94 = sub_246091FC4();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v214[0] = v96;
    *v95 = 136380931;
    *(v95 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
    *(v95 + 12) = 2050;
    *(v95 + 14) = v91;
    _os_log_impl(&dword_245F8A000, v93, v94, "ObjectCaptureSession.%{private}s: High-resolution pixel buffer %{public}f is retained.", v95, 0x16u);
    sub_245F8E6F4(v96);
    v97 = v96;
    v49 = v208;
    MEMORY[0x24C1989D0](v97, -1, -1);
    MEMORY[0x24C1989D0](v95, -1, -1);
  }

  v43(v77, v92);
  v98 = [v49 capturedImage];
  v99 = [v49 camera];
  [v99 intrinsics];
  v225[0] = v100;
  v225[1] = v101;
  v225[2] = v102;

  sub_246035724(v98, v225);
  v103 = [v49 capturedPointCloudData];
  if (v103 && (v104 = v103, v105 = [v103 depthPointCloud], v104, v105))
  {
    v106 = sub_245FCCC80();
    sub_2460232B4(v105, v106 & 1, v214);

    v220 = v214[2];
    v221 = v214[3];
    v222 = *&v214[4];
    v219 = v214[1];
    v218 = v214[0];
  }

  else
  {
    v222 = 0;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
  }

  v107 = sub_24607A904([v49 deviceOrientation]);
  v108 = [v49 capturedImage];
  v109 = *MEMORY[0x277CD3410];
  v110 = sub_246092554();
  v189 = v109;
  CVBufferSetAttachment(v108, v109, v110, kCVAttachmentMode_ShouldPropagate);

  v111 = [v49 camera];
  [v111 intrinsics];
  v206 = v112;
  v203 = v114;
  v204 = v113;

  v115 = *(v205 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
  v116 = [v115 configuration];
  if (v116 && (v117 = v116, objc_opt_self(), v118 = swift_dynamicCastObjCClass(), v117, v118) || (v119 = [v115 configuration]) != 0 && (v120 = v119, objc_opt_self(), v121 = swift_dynamicCastObjCClass(), v120, v121))
  {
    v122 = [v208 camera];
    [v122 intrinsics];
    v206 = v123;
    v203 = v125;
    v204 = v124;

    v126 = *sub_24601EF58();
    v127 = sub_24601EF64();
    LODWORD(v128) = 0;
    *&v129 = v126 / 1920.0;
    *(&v128 + 1) = *v127 / 1440.0;
    v206 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v206.f32[0]), v128, *v206.f32, 1), xmmword_246099B80, v206, 2);
    v204 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v204.f32[0]), v128, *v204.f32, 1), xmmword_246099B80, v204, 2);
    v203 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v203.f32[0]), v128, *v203.f32, 1), xmmword_246099B80, v203, 2);
  }

  v130 = v208;
  v131 = [v208 camera];
  [v131 transform];
  v201 = v133;
  v202 = v132;
  v200 = v134;
  v194 = v135;

  v136 = [v130 camera];
  sub_24606656C(v214);

  v137 = v214[0];
  wideToDepthCameraTransform()(v138);
  v192 = v140;
  v193 = v139;
  v190 = v142;
  v191 = v141;
  v215 = 0;
  v143 = [v130 camera];
  v144 = [v143 calibrationData];

  v216 = 1;
  v217[0] = v206;
  v217[1] = v204;
  v217[2] = v203;
  v217[3] = v202;
  v217[4] = v201;
  v217[5] = v200;
  v217[6] = v194;
  LOBYTE(v217[7]) = v137;
  v217[8] = v193;
  v217[9] = v192;
  v217[10] = v191;
  v217[11] = v190;
  LOBYTE(v217[12]) = v215;
  *(&v217[12] + 1) = v144;
  memset(&v217[13], 0, 64);
  LOBYTE(v217[17]) = 1;
  DWORD1(v217[17]) = v107;
  v145 = [v130 capturedImage];
  v146 = [v115 configuration];
  if (!v146 || (v147 = v146, objc_opt_self(), v148 = swift_dynamicCastObjCClass(), v147, !v148))
  {
    v149 = [v115 configuration];
    if (!v149)
    {
      goto LABEL_62;
    }

    v150 = v149;
    objc_opt_self();
    v151 = swift_dynamicCastObjCClass();

    if (!v151)
    {
      goto LABEL_62;
    }
  }

  v152 = v208;
  v153 = [v208 capturedImage];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v153);

  v155 = *(v205 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);
  if (!v155)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v156 = [v152 capturedImage];
  memset(v223, 0, sizeof(v223));
  v224 = 1;
  v157 = *sub_24601EF58();
  v158 = sub_24601EF64();
  v159 = (*(*v155 + 184))(v156, v223, v157, *v158, PixelFormatType);

  if (!v159)
  {
    sub_245F8E744(&v218, &qword_27EE3B1B0, &unk_246099D60);
    v182 = v195;
    v183 = v207;
    v209(v195, v188, v207);
    v184 = sub_2460918D4();
    v185 = sub_246091FB4();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v214[0] = v187;
      *v186 = 136380675;
      *(v186 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v214);
      _os_log_impl(&dword_245F8A000, v184, v185, "ObjectCaptureSession.%{private}s: failed to crop and scale image!", v186, 0xCu);
      sub_245F8E6F4(v187);
      MEMORY[0x24C1989D0](v187, -1, -1);
      MEMORY[0x24C1989D0](v186, -1, -1);

      sub_24601E950(v217);
    }

    else
    {

      sub_24601E950(v217);
    }

    (*(v210 + 8))(v182, v183);
    return;
  }

  v145 = v159;
  v160 = sub_246092554();
  CVBufferSetAttachment(v145, v189, v160, kCVAttachmentMode_ShouldPropagate);

LABEL_62:
  v161 = *MEMORY[0x277CD3038];
  v162 = v208;
  v163 = [v208 exifData];
  sub_246091B64();

  v164 = sub_246091B34();

  CVBufferSetAttachment(v145, v161, v164, kCVAttachmentMode_ShouldPropagate);

  v165 = [v162 tiffData];
  if (v165)
  {
    v166 = v165;
    sub_246091B64();

    v167 = *MEMORY[0x277CD3490];
    v168 = sub_246091B34();

    CVBufferSetAttachment(v145, v167, v168, kCVAttachmentMode_ShouldPropagate);
  }

  v169 = [v162 sceneDepth];
  if (v169)
  {
    v170 = v169;
    v171 = [v169 depthMap];
  }

  else
  {
    v171 = 0;
  }

  v173 = v196;
  v172 = v197;
  v174 = v208;
  v175 = [v208 sceneDepth];
  v176 = [v175 confidenceMap];

  v212[2] = v220;
  v212[3] = v221;
  v213 = v222;
  v212[0] = v218;
  v212[1] = v219;
  v177 = [v174 capturedPointCloudData];
  v178 = [v177 depthPointCloud];

  memcpy(v211, v217, 0x118uLL);
  sub_24601E8F4(v217, v214);
  v179 = [v174 rawFeaturePoints];
  v180 = v145;
  sub_246086648(v214, v211, v180, v171, v176, v212, v178, v179, v198 & 1, v91);
  v181 = v199;
  sub_246091824();
  memcpy(v211, v214, 0x191uLL);
  sub_24604522C(v211, v181);

  sub_24601E950(v217);
  (*(v173 + 8))(v181, v172);
  sub_245FCFE58(v214);
}

uint64_t sub_246057778()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed))
  {
    v12 = sub_245FA3174();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51 = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v51);
      _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Resources have already been cleaned up!", v15, 0xCu);
      sub_245F8E6F4(v16);
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed) = 1;
    v17 = sub_245FA3174();
    v50 = *(v3 + 16);
    v50(v11, v17, v2);
    v18 = sub_2460918D4();
    v19 = sub_246091FC4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v2;
      v22 = v8;
      v23 = v17;
      v24 = v21;
      v51 = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v51);
      _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Starting resource clean up.", v20, 0xCu);
      sub_245F8E6F4(v24);
      v25 = v24;
      v17 = v23;
      v8 = v22;
      v2 = v49;
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    v26 = *(v3 + 8);
    v26(v11, v2);
    result = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) pause];
    v28 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);
    if (!v28)
    {
      __break(1u);
      return result;
    }

    v29 = *(*v28 + 168);

    v29(v30);

    v32 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);
    if (v32)
    {
      v33 = *(*v32 + 120);

      v33(v34);
    }

    if (((*((*MEMORY[0x277D85000] & *v1) + 0x4A8))(v31) & 1) == 0)
    {
      v35 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
      if (v35)
      {
        v36 = *(*v35 + 280);

        v36(v37);
      }

      sub_24604F1F0();
    }

    v38 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
    if (v38)
    {
      v39 = *(*v38 + 160);

      v39(v40);
    }

    sub_24605F95C();
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager) = 0;

    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer) = 0;

    v41 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
    if (v41)
    {
      v42 = *(*v41 + 640);

      v42(v43);

      return 0;
    }

    v50(v8, v17, v2);
    v44 = sub_2460918D4();
    v45 = sub_246091FC4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v46 = 136380675;
      *(v46 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v51);
      _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: Finished resource clean up.", v46, 0xCu);
      sub_245F8E6F4(v47);
      MEMORY[0x24C1989D0](v47, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    v26(v8, v2);
  }

  return 1;
}

void sub_246057DD0(void **a1)
{
  v2 = v1;
  v4 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v4 - 8);
  v245 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v251 = (&v229 - v7);
  MEMORY[0x28223BE20](v8);
  v249 = &v229 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = (&v229 - v11);
  v263 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v272 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v233 = &v229 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v237 = &v229 - v15;
  MEMORY[0x28223BE20](v16);
  v254 = &v229 - v17;
  v273 = sub_246091834();
  v267 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v244 = &v229 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v257 = (&v229 - v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v229 - v22;
  MEMORY[0x28223BE20](v24);
  v268 = &v229 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v229 - v27;
  MEMORY[0x28223BE20](v29);
  v256 = &v229 - v30;
  v31 = sub_245F8E624(&qword_27EE3ACE8, &qword_24609ACC8);
  MEMORY[0x28223BE20](v31 - 8);
  v253 = &v229 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v252 = &v229 - v34;
  MEMORY[0x28223BE20](v35);
  v250 = &v229 - v36;
  MEMORY[0x28223BE20](v37);
  v265 = (&v229 - v38);
  v39 = sub_2460918F4();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v243 = &v229 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v229 - v43;
  v45 = *a1;
  v46 = sub_245FA3174();
  v47 = *(v40 + 16);
  v242 = v46;
  v241 = (v40 + 16);
  v240 = v47;
  (v47)(v44);
  sub_2460818E4(v45);
  v48 = sub_2460918D4();
  v49 = sub_246091FC4();
  sub_246077B30(v45);
  v50 = os_log_type_enabled(v48, v49);
  v246 = v39;
  v266 = v28;
  v271 = v2;
  v264 = v40;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v274 = v270;
    *v51 = 136381187;
    *(v51 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4130, &v274);
    *(v51 + 12) = 2081;
    *(v51 + 14) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4130, &v274);
    *(v51 + 22) = 2082;
    v283 = v45;
    sub_2460818E4(v45);
    v52 = sub_246091C54();
    v54 = v12;
    v55 = sub_245F8D3C0(v52, v53, &v274);

    *(v51 + 24) = v55;
    v12 = v54;
    v28 = v266;
    _os_log_impl(&dword_245F8A000, v48, v49, "ObjectCaptureSession.%{private}s: Called %{private}s with state = %{public}s", v51, 0x20u);
    v56 = v270;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v56, -1, -1);
    MEMORY[0x24C1989D0](v51, -1, -1);

    v239 = *(v264 + 8);
  }

  else
  {

    v239 = *(v40 + 8);
  }

  (v239)(v44, v39);
  v57 = v254;
  if ((v45 - 7) >= 0xA)
  {
    v58 = v45;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v271;
    sub_246091984();

    v60 = v274;
    swift_getKeyPath();
    swift_getKeyPath();
    v274 = 16;
    v61 = v59;
    sub_246091994();
    v274 = v60;
    sub_246036D70(&v274);
    sub_246077B30(v60);
    v62 = *(v61 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing);
    *(v61 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing) = v58;
    v230 = v58;
    v63 = v58;
    v64 = v61;
    sub_2460818E4(v63);
    sub_246079A74(v62);
    v65 = (*((*MEMORY[0x277D85000] & *v61) + 0x4A8))();
    v66 = &OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
    v271 = v61;
    if (v65)
    {
      v67 = v61 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox;
      if (*(v61 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox + 64))
      {
        goto LABEL_77;
      }

      v68 = *(v67 + 1);
      v251 = *v67;
      v248 = v68;
      v69 = *(v67 + 3);
      v247 = *(v67 + 2);
      v246 = v69;
      v70 = *(v67 + 5);
      v245 = *(v67 + 4);
      v244 = v70;
      v72 = *(v67 + 6);
      v71 = *(v67 + 7);
      v243 = v72;
      v242 = v71;
      v73 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
      swift_beginAccess();
      v270 = v73;
      v74 = *(v61 + v73);
      v75 = *(v74 + 64);
      v236 = v74 + 64;
      v76 = 1 << *(v74 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v23 = v77 & v75;
      v240 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
      v252 = v57 + 73;
      v235 = (v76 + 63) >> 6;
      v253 = (v267 + 16);
      v257 = (v267 + 32);
      v241 = (v272 + 56);
      v239 = (v272 + 48);
      v264 = v267 + 8;
      v255 = v74;

      v78 = 0;
      v79 = v265;
      for (i = v12; v23; v78 = v262)
      {
        v80 = v78;
        v81 = v273;
LABEL_18:
        v83 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v84 = v83 | (v80 << 6);
        v85 = v255;
        v86 = v267;
        v87 = v256;
        (*(v267 + 16))(v256, *(v255 + 48) + *(v267 + 72) * v84, v81);
        sub_246081A04(*(v85 + 56) + *(v272 + 72) * v84, v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v88 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
        v89 = *(v88 + 48);
        v90 = *(v86 + 32);
        v91 = v250;
        v90(v250, v87, v81);
        sub_24608199C(v57, &v91[v89], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        (*(*(v88 - 8) + 56))(v91, 0, 1, v88);
        v262 = v80;
        v92 = v91;
        v64 = v271;
        v28 = v266;
        v79 = v265;
LABEL_19:
        sub_245FC5914(v92, v79, &qword_27EE3ACE8, &qword_24609ACC8);
        v93 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
        if ((*(*(v93 - 8) + 48))(v79, 1, v93) == 1)
        {
          goto LABEL_76;
        }

        v94 = v273;
        (*v257)(v28, v79, v273);
        v95 = *&v270[v64];
        if (!*(v95 + 16))
        {
          goto LABEL_85;
        }

        v96 = sub_245FC1BDC(v28);
        if ((v97 & 1) == 0)
        {
          goto LABEL_86;
        }

        v98 = *(v95 + 56);
        v269 = *(v272 + 72);
        sub_246081A04(v98 + v269 * v96, v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

        v99 = *(v252 + *(v263 + 32));
        sub_246081A6C(v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        if (v99)
        {
          goto LABEL_87;
        }

        v274 = v251;
        v275 = v248;
        v276 = v247;
        v277 = v246;
        v278 = v245;
        v279 = v244;
        v280 = v243;
        v281 = v242;
        v100 = sub_246090E60();
        *&v101 = OCBoundingBox.scaledTransform(scale:)(COERCE_FLOAT(*v100));
        v261 = v101;
        v260 = v102;
        v259 = v103;
        v258 = v104;
        v105 = v270;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v94;
        v66 = isUniquelyReferenced_nonNull_native;
        v108 = v268;
        (*v253)(v268, v28, v107);
        v282 = *&v105[v64];
        v109 = v282;
        *&v105[v64] = 0x8000000000000000;
        v111 = sub_245FC1BDC(v108);
        v112 = *(v109 + 16);
        v113 = (v110 & 1) == 0;
        v114 = v112 + v113;
        if (__OFADD__(v112, v113))
        {
          goto LABEL_88;
        }

        v115 = v110;
        if (*(v109 + 24) >= v114)
        {
          v118 = i;
          if (v66)
          {
            if ((v110 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_246074CB4();
            if ((v115 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          sub_2460727D4(v114, v66);
          v116 = sub_245FC1BDC(v268);
          v118 = i;
          if ((v115 & 1) != (v117 & 1))
          {
            goto LABEL_92;
          }

          v111 = v116;
          if ((v115 & 1) == 0)
          {
LABEL_40:
            (*v241)(v118, 1, 1, v263);
            __break(1u);
            goto LABEL_41;
          }
        }

        v119 = v282;
        v120 = v111 * v269;
        sub_24608199C(*(v282 + 56) + v111 * v269, v118, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v121 = v263;
        (*v241)(v118, 0, 1, v263);
        v122 = v118 + *(v121 + 32);
        if (*(v122 + 73))
        {
          goto LABEL_91;
        }

        v123 = v260;
        *v122 = v261;
        *(v122 + 16) = v123;
        v124 = v258;
        *(v122 + 32) = v259;
        *(v122 + 48) = v124;
        v125 = v118;
        v126 = v118;
        v127 = v249;
        sub_245F8E7A4(v126, v249, &qword_27EE3ACE0, &unk_246098880);
        if ((*v239)(v127, 1, v121) == 1)
        {
          sub_245F8E744(v127, &qword_27EE3ACE0, &unk_246098880);
          v128 = *(v267 + 8);
          v129 = v273;
          v128(*(v119 + 48) + *(v267 + 72) * v111, v273);
          sub_2460739C0(v111, v119);
          v128(v268, v129);
        }

        else
        {
          v130 = v237;
          sub_24608199C(v127, v237, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          sub_24608199C(v130, *(v119 + 56) + v120, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v128 = *v264;
          (*v264)(v268, v273);
        }

        v131 = *(v93 + 48);
        sub_245F8E744(v125, &qword_27EE3ACE0, &unk_246098880);
        v132 = v270;
        *&v270[v64] = v119;
        swift_endAccess();
        sub_24606C1B4();
        v133 = *&v132[v64];
        if (!*(v133 + 16))
        {
          goto LABEL_89;
        }

        v28 = v266;
        v134 = sub_245FC1BDC(v266);
        if ((v135 & 1) == 0)
        {
          goto LABEL_90;
        }

        sub_246081A04(*(v133 + 56) + v134 * v269, v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

        sub_246091924();

        sub_246081A6C(v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v128(v28, v273);
        v79 = v265;
        sub_246081A6C(v265 + v131, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      if (v235 <= v78 + 1)
      {
        v82 = v78 + 1;
      }

      else
      {
        v82 = v235;
      }

      v81 = v273;
      while (1)
      {
        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v80 >= v235)
        {
          v262 = v82 - 1;
          v136 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v137 = v250;
          (*(*(v136 - 8) + 56))(v250, 1, 1, v136);
          v92 = v137;
          v23 = 0;
          goto LABEL_19;
        }

        v23 = *(v236 + 8 * v80);
        ++v78;
        if (v23)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_41:
      v138 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
      swift_beginAccess();
      v270 = v138;
      v139 = *(v64 + v138);
      v140 = *(v139 + 64);
      v235 = v139 + 64;
      v141 = 1 << *(v139 + 32);
      v142 = -1;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      v143 = v142 & v140;
      v250 = *(v66 + 184);
      v234 = (v141 + 63) >> 6;
      v265 = (v267 + 16);
      v266 = (v267 + 32);
      i = (v272 + 56);
      v237 = v272 + 48;
      v269 = (v267 + 8);
      v236 = v264 + 8;
      v232 = "stopVoxelIntegration()";
      v255 = v139;

      v144 = 0;
      *&v145 = 136380931;
      v231 = v145;
      v264 = v23;
      if (v143)
      {
        while (1)
        {
          v146 = v144;
          v147 = v273;
LABEL_52:
          v150 = __clz(__rbit64(v143));
          v143 &= v143 - 1;
          v151 = v150 | (v146 << 6);
          v152 = v255;
          v153 = v267;
          v154 = v256;
          (*(v267 + 16))(v256, *(v255 + 48) + *(v267 + 72) * v151, v147);
          sub_246081A04(*(v152 + 56) + *(v272 + 72) * v151, v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v155 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v156 = *(v155 + 48);
          v157 = *(v153 + 32);
          v158 = v253;
          v157(v253, v154, v147);
          v159 = v57;
          v160 = v158;
          sub_24608199C(v159, &v158[v156], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          (*(*(v155 - 8) + 56))(v158, 0, 1, v155);
          v149 = v146;
          v64 = v271;
          v23 = v264;
LABEL_53:
          v161 = v252;
          sub_245FC5914(v160, v252, &qword_27EE3ACE8, &qword_24609ACC8);
          v162 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          if ((*(*(v162 - 8) + 48))(v161, 1, v162) == 1)
          {
            break;
          }

          v268 = v149;
          v163 = v161 + *(v162 + 48);
          v164 = v273;
          (*v266)(v23, v161, v273);
          v165 = *(v163 + 320);
          *&v261 = *(v163 + 328);
          v166 = *(v163 + 336);
          *&v260 = *(v163 + 344);
          v167 = *(v163 + 352);
          *&v259 = *(v163 + 360);
          v168 = *(v163 + 376);
          v262 = *(v163 + 368);
          *&v258 = v168;
          v169 = *(v163 + 384);
          sub_246081A6C(v163, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          if ((v169 & 1) == 0)
          {
            v249 = v167;
            v170 = v270;
            swift_beginAccess();
            v171 = swift_isUniquelyReferenced_nonNull_native();
            v172 = v164;
            v173 = v171;
            v174 = *v265;
            v175 = v257;
            (*v265)(v257, v23, v172);
            v282 = *&v170[v64];
            v176 = v282;
            *&v170[v64] = 0x8000000000000000;
            v178 = sub_245FC1BDC(v175);
            v179 = *(v176 + 16);
            v180 = (v177 & 1) == 0;
            v181 = v179 + v180;
            if (__OFADD__(v179, v180))
            {
              goto LABEL_84;
            }

            v182 = v177;
            v183 = *(v176 + 24);
            v247 = v174;
            v248 = v166;
            if (v183 >= v181)
            {
              if (v173)
              {
                if ((v177 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                sub_246074CB4();
                if ((v182 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
              sub_2460727D4(v181, v173);
              v184 = sub_245FC1BDC(v257);
              if ((v182 & 1) != (v185 & 1))
              {
                goto LABEL_92;
              }

              v178 = v184;
              if ((v182 & 1) == 0)
              {
LABEL_75:
                (*i)(v251, 1, 1, v263);
                __break(1u);
                break;
              }
            }

            v186 = v165;
            v187 = v282;
            v188 = v272;
            v189 = *(v272 + 72) * v178;
            v190 = v251;
            sub_24608199C(*(v282 + 56) + v189, v251, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v191 = v263;
            (*(v188 + 56))(v190, 0, 1, v263);
            v192 = v261;
            v190[8] = v186;
            v190[9] = v192;
            v193 = v260;
            v190[10] = v248;
            v190[11] = v193;
            v194 = v259;
            v190[12] = v249;
            v190[13] = v194;
            v195 = v258;
            v190[14] = v262;
            v190[15] = v195;
            v196 = v190;
            v197 = v245;
            sub_245F8E7A4(v196, v245, &qword_27EE3ACE0, &unk_246098880);
            if ((*(v188 + 48))(v197, 1, v191) == 1)
            {
              sub_245F8E744(v197, &qword_27EE3ACE0, &unk_246098880);
              v198 = *(v267 + 8);
              v199 = v273;
              v198(*(v187 + 48) + *(v267 + 72) * v178, v273);
              sub_2460739C0(v178, v187);
              v198(v257, v199);
            }

            else
            {
              v200 = v233;
              sub_24608199C(v197, v233, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              sub_24608199C(v200, *(v187 + 56) + v189, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v198 = *v269;
              v199 = v273;
              (*v269)(v257, v273);
            }

            v201 = v244;
            v202 = v247;
            sub_245F8E744(v251, &qword_27EE3ACE0, &unk_246098880);
            *&v270[v271] = v187;
            swift_endAccess();
            v203 = v243;
            v204 = v246;
            v240(v243, v242, v246);
            v202(v201, v264, v199);
            v205 = sub_2460918D4();
            v206 = sub_246091FC4();
            if (os_log_type_enabled(v205, v206))
            {
              v207 = swift_slowAlloc();
              v208 = v201;
              v209 = swift_slowAlloc();
              v274 = v209;
              *v207 = v231;
              *(v207 + 4) = sub_245F8D3C0(0xD000000000000022, v232 | 0x8000000000000000, &v274);
              *(v207 + 12) = 2082;
              sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v210 = sub_2460923D4();
              v212 = v211;
              v198(v208, v273);
              v213 = sub_245F8D3C0(v210, v212, &v274);

              *(v207 + 14) = v213;
              _os_log_impl(&dword_245F8A000, v205, v206, "ObjectCaptureSession.%{private}s: Updated metadata of the shot %{public}s with the latest mobileSfM transform.", v207, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v209, -1, -1);
              MEMORY[0x24C1989D0](v207, -1, -1);

              v214 = v203;
              v215 = v246;
            }

            else
            {

              v198(v201, v199);
              v214 = v203;
              v215 = v204;
            }

            (v239)(v214, v215);
            v64 = v271;
            v23 = v264;
          }

          sub_24606C1B4();
          v216 = *&v270[v64];
          v57 = v254;
          v217 = v268;
          if (!*(v216 + 16))
          {
            goto LABEL_82;
          }

          v218 = sub_245FC1BDC(v23);
          if ((v219 & 1) == 0)
          {
            goto LABEL_83;
          }

          sub_246081A04(*(v216 + 56) + *(v272 + 72) * v218, v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

          sub_246091924();

          sub_246081A6C(v57, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          (*v269)(v23, v273);
          v144 = v217;
          if (!v143)
          {
            goto LABEL_45;
          }
        }

LABEL_76:

LABEL_77:
        v221 = sub_2460917F4();
        v223 = v222;
        v224 = *(v64 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage);
        sub_24606C3B0();
        v274 = 0x302E342E32;
        v275 = 0xE500000000000000;
        v276 = v221;
        v277 = v223;
        LODWORD(v278) = v224;
        sub_246091924();

        v225 = sub_246057778();
        v226 = v230;
        if (v225)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v227 = v64;
          sub_2460818E4(v226);
          sub_246091984();

          v228 = v274;
          swift_getKeyPath();
          swift_getKeyPath();
          v274 = v226;
          v227;
          sub_246091994();
          v274 = v228;
          sub_246036D70(&v274);
          sub_246077B30(v228);
        }

        return;
      }

LABEL_45:
      if (v234 <= v144 + 1)
      {
        v148 = v144 + 1;
      }

      else
      {
        v148 = v234;
      }

      v149 = v148 - 1;
      v147 = v273;
      while (1)
      {
        v146 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
          break;
        }

        if (v146 >= v234)
        {
          v220 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v160 = v253;
          (*(*(v220 - 8) + 56))(v253, 1, 1, v220);
          v143 = 0;
          goto LABEL_53;
        }

        v143 = *(v235 + 8 * v146);
        ++v144;
        if (v143)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

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
    sub_246092424();
    __break(1u);
  }
}

uint64_t (*sub_2460599F8(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
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
  v5 = sub_246091834();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_246076004(v4, v9);
  return sub_246059B10;
}

void sub_246059B10(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_246059B88()
{
  v1 = v0;
  sub_24604F1F0();
  v2 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 256;
  v3 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = 0;

  v4 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 1;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  LOBYTE(v17) = 1;
  sub_246044B58(&v13);
  sub_246079C60();
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor) = 0;

  sub_246044C40();
  v6 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48);
  v15 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32);
  v16 = v7;
  v17 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64);
  v8 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16);
  v13 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
  v14 = v8;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  sub_245F8E744(&v13, &qword_27EE3AB10, &qword_246096678);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer) = 0;

  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment) = MEMORY[0x277D84F90];

  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
  if (v9)
  {
    v10 = *(*v9 + 160);

    v10(v11);
  }

  *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer) = 0;
}

uint64_t sub_246059D18()
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v4))
  {
    goto LABEL_8;
  }

  v1 = &v36;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot))
  {
    v7 = 0.75;
  }

  else
  {
    v7 = 0.8;
  }

  if (qword_27EE3DBC0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_24603532C(&v36, xmmword_27EE3DBD0, 0.01, v7);
    nullsub_1();
    v8 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v9 = v43;
    v10 = v42;
    v11 = v43;
    v8[6] = v42;
    v8[7] = v9;
    v8[8] = v1[8];
    v12 = v39;
    v13 = v38;
    v14 = v39;
    v8[2] = v38;
    v8[3] = v12;
    v15 = v41;
    v17 = v40;
    v16 = v41;
    v8[4] = v40;
    v8[5] = v15;
    v18 = v37;
    v20 = v36;
    v19 = v37;
    *v8 = v36;
    v8[1] = v18;
    v1[15] = v10;
    v1[16] = v11;
    v1[17] = v1[8];
    v1[11] = v13;
    v1[12] = v14;
    v1[13] = v17;
    v1[14] = v16;
    v1[9] = v20;
    v1[10] = v19;
    result = sub_2460818C8(&v44);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v22 = v1[16];
    v1[24] = v1[15];
    v1[25] = v22;
    v1[26] = v1[17];
    v23 = v1[12];
    v1[20] = v1[11];
    v1[21] = v23;
    v24 = v1[14];
    v1[22] = v1[13];
    v1[23] = v24;
    v25 = v1[10];
    v1[18] = v1[9];
    v1[19] = v25;
    if (!sub_246052D94(v45))
    {
      break;
    }

LABEL_8:
    v26 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID) = v28;
      return 1;
    }

    __break(1u);
LABEL_14:
    *(&v34 + 1) = v7;
    swift_once();
    v7 = *(&v34 + 1);
  }

  v29 = sub_245FA3174();
  (*(v3 + 16))(v6, v29, v2);
  v30 = sub_2460918D4();
  v31 = sub_246091FB4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v32 = 136380675;
    *(v32 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A4070, &v35);
    _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Failed to start voxel integration!", v32, 0xCu);
    sub_245F8E6F4(v33);
    MEMORY[0x24C1989D0](v33, -1, -1);
    MEMORY[0x24C1989D0](v32, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_24605A078()
{
  v1 = sub_2460918F4();
  v78 = *(v1 - 8);
  v79 = v1;
  MEMORY[0x28223BE20](v1);
  v76 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - v4;
  MEMORY[0x28223BE20](v6);
  v74 = &v68 - v7;
  v8 = sub_246091834();
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - v12;
  v77 = sub_246091704();
  v14 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  if ((sub_2460448B0() & 1) != 0 && !*&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager])
  {
    v72 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
    v33 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
    swift_beginAccess();
    v73 = v0;
    sub_245F8E7A4(&v0[v33], v13, &qword_27EE3A498, &unk_246097EB8);
    v34 = v77;
    v71 = *(v14 + 48);
    if (v71(v13, 1, v77) == 1)
    {
      v35 = [objc_opt_self() defaultManager];
      v70 = v14 + 48;
      v36 = v35;
      v37 = [v35 temporaryDirectory];

      sub_2460916D4();
      sub_246091694();
      v69 = v14;
      v68 = *(v14 + 8);
      v68(v19, v77);
      sub_246091824();
      sub_2460917F4();
      (*(v75 + 8))(v10, v8);
      v38 = v25;
      sub_246091694();
      v34 = v77;

      v68(v22, v34);
      v39 = v71(v13, 1, v34);
      v40 = v69;
      if (v39 != 1)
      {
        sub_245F8E744(v13, &qword_27EE3A498, &unk_246097EB8);
      }
    }

    else
    {
      v38 = v25;
      (*(v14 + 32))(v25, v13, v34);
      v40 = v14;
    }

    type metadata accessor for PGManager(0);
    (*(v40 + 16))(v16, v38, v34);
    v41 = sub_245FD4628();
    if (v41[25])
    {
      v42 = 256;
    }

    else
    {
      v42 = 0;
    }

    v43 = sub_245FD55FC(v16, *v41 | (*(v41 + 1) << 32), *(v41 + 2), *(v41 + 2), v42 | v41[24]);
    v44 = v73;
    v45 = v43;
    v46 = v72;
    *&v73[v72] = v43;

    (*(*v45 + 608))(v47);
    v48 = v78;

    v49 = *&v44[v46];
    if (v49)
    {
      v50 = *(*v49 + 448);

      v51 = v44;
      v50(v44, &off_2858E1C70);

      v52 = *&v44[v72];
      if (v52)
      {
        v53 = *(*v52 + 520);
        v54 = v51;

        v53(v44, &off_2858E1C80);

        v55 = *&v44[v72];
        if (v55)
        {
          v56 = *(*v55 + 544);
          v57 = v72;
          v58 = v54;

          v56(v44, &off_2858E1CB0);

          v59 = *&v44[v57];
          if (v59)
          {
            v60 = *(*v59 + 568);
            v61 = v58;

            v60(v44, &off_2858E1CC0);
          }
        }
      }
    }

    v62 = sub_245FA3174();
    v63 = v74;
    (*(v48 + 16))(v74, v62, v79);
    v64 = sub_2460918D4();
    v65 = sub_246091FC4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v80 = v67;
      *v66 = 136380675;
      *(v66 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4030, &v80);
      _os_log_impl(&dword_245F8A000, v64, v65, "ObjectCaptureSession.%{private}s: Initialized mobileSfM in ObjectCaptureSession.", v66, 0xCu);
      sub_245F8E6F4(v67);
      MEMORY[0x24C1989D0](v67, -1, -1);
      MEMORY[0x24C1989D0](v66, -1, -1);
    }

    (*(v48 + 8))(v63, v79);
    return (*(v40 + 8))(v38, v34);
  }

  else
  {
    v26 = sub_245FA3174();
    v27 = v78;
    (*(v78 + 16))(v5, v26, v79);
    v28 = sub_2460918D4();
    v29 = sub_246091FC4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v81[0] = v31;
      *v30 = 136380675;
      *(v30 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4030, v81);
      _os_log_impl(&dword_245F8A000, v28, v29, "ObjectCaptureSession.%{private}s: mobileSfM has not been initialized or it has already been initialized in ObjectCaptureSession!", v30, 0xCu);
      sub_245F8E6F4(v31);
      MEMORY[0x24C1989D0](v31, -1, -1);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    return (*(v27 + 8))(v5, v79);
  }
}

id ObjectCaptureSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ObjectCaptureSession.startRecording(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A26F0, v15);
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A26F0, v15);
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: Called %{private}s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  v13 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v13);
  v15[-2] = v2;
  v15[-1] = a1;
  sub_246092044();
  return LOBYTE(v15[0]);
}

uint64_t sub_24605AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_246091704();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
  swift_beginAccess();
  sub_245F97BAC(v8, a1 + v11, &qword_27EE3A498, &unk_246097EB8);
  result = swift_endAccess();
  *a3 = 1;
  return result;
}

uint64_t ObjectCaptureSession.stopRecording(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245FA3234();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136380931;
    *(v15 + 4) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, v22);
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, v22);
    _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Called %{private}s.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v16, -1, -1);
    v17 = v15;
    a2 = v14;
    a1 = v21;
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v18 = (*(v7 + 8))(v9, v6);
  MEMORY[0x28223BE20](v18);
  *(&v20 - 4) = v3;
  *(&v20 - 3) = a1;
  *(&v20 - 2) = a2;
  sub_246092044();
  return LOBYTE(v22[0]);
}

void sub_24605B1E8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v14 = [v13 configuration];
  if (v14)
  {
    v15 = v14;
    v33 = a4;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = a2;
      v19[3] = a3;
      v19[4] = v18;
      v19[5] = v17;
      aBlock[4] = sub_2460823F8;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24605BE90;
      aBlock[3] = &unk_2858E2C38;
      v20 = _Block_copy(aBlock);

      v21 = v15;

      [v17 finishRecordingWithHandler_];

      _Block_release(v20);
      v22 = 1;
      a4 = v33;
      goto LABEL_8;
    }

    a4 = v33;
  }

  v23 = sub_245FA3174();
  (*(v9 + 16))(v12, v23, v8);
  v24 = a1;
  v25 = sub_2460918D4();
  v26 = sub_246091FB4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136380931;
    *(v27 + 4) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, aBlock);
    *(v27 + 12) = 2082;
    aBlock[6] = [v13 configuration];
    sub_245F8E624(&qword_27EE3A9F8, &qword_246099CE8);
    v29 = sub_246091C54();
    v31 = a4;
    v32 = sub_245F8D3C0(v29, v30, aBlock);

    *(v27 + 14) = v32;
    a4 = v31;
    _os_log_impl(&dword_245F8A000, v25, v26, "ObjectCaptureSession.%{private}s: Invalid ARConfiguration: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v28, -1, -1);
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v22 = 0;
LABEL_8:
  *a4 = v22;
}

void sub_24605B580(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = sub_246091704();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_7;
  }

  v17 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
  v18 = Strong;
  swift_beginAccess();
  sub_245F8E7A4(v18 + v17, v10, &qword_27EE3A498, &unk_246097EB8);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    sub_245F8E744(v10, &qword_27EE3A498, &unk_246097EB8);
    goto LABEL_8;
  }

  (*(v12 + 32))(v15, v10, v11);
  v31[5] = sub_2460916F4();
  v31[6] = v19;
  v20 = sub_2460915F4();
  v31[0] = 46;
  v31[1] = 0xE100000000000000;
  MEMORY[0x24C196640](v20);

  v31[3] = 0xD000000000000012;
  v31[4] = 0x80000002460A41E0;
  sub_245FA2AE4();
  v21 = sub_246092134();
  v23 = v22;

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_24605B914(v21, v23);
  }

  (*(v12 + 8))(v15, v11);
LABEL_8:
  v26 = [a5 templateConfiguration];
  if (v26)
  {
    v27 = v26;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v30 = *(v28 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);

      [v30 runWithConfiguration:v27 options:0];
      v27 = v30;
    }
  }
}

void sub_24605B914(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091C44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091704();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v29 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {
    v25 = v12;
    v26 = v11;
    v24[0] = v6;
    v24[1] = v4;
    v24[2] = v3;
    v32 = 0;
    v33 = 0xE000000000000000;
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v23 = v29;
        sub_246091644();
        v30 = v32;
        v31 = v33;

        sub_246091C34();
        sub_245FA2AE4();
        sub_246092144();
        (*(v8 + 8))(v10, v7);

        (*(v25 + 8))(v23, v26);

        return;
      }

      v18 = *(v15 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        do
        {
LABEL_10:
          v18 &= v18 - 1;
          v30 = sub_246091EE4();
          v31 = v22;

          MEMORY[0x24C196640](10, 0xE100000000000000);

          MEMORY[0x24C196630](v30, v31);
        }

        while (v18);
        continue;
      }
    }

    __break(1u);
  }
}

void sub_24605BE90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t ObjectCaptureSession.setFrameEvent(frameEvent:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24607A6C8;
  *(v5 + 24) = v4;
  v11[4] = sub_245FC5DA4;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_245FB4BFC;
  v11[3] = &unk_2858E0F40;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObjectCaptureSession.getFrameEvent(timestamp:)(double a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v9 = [v8 configuration];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

LABEL_9:
    v17 = sub_245FA3234();
    (*(v4 + 16))(v7, v17, v3);
    v18 = v1;
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v30[0] = v22;
      *v21 = 136380931;
      *(v21 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2740, v30);
      *(v21 + 12) = 2082;
      *&v28 = [v8 configuration];
      sub_245F8E624(&qword_27EE3A9F8, &qword_246099CE8);
      v23 = sub_246091C54();
      v25 = sub_245F8D3C0(v23, v24, v30);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Not a replay configuration: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  v12 = [v11 replaySensor];
  if (!v12)
  {
LABEL_7:

    return 0;
  }

  v13 = v12;
  v14 = [v12 customDataClasses];
  v15 = sub_246091F44();

  v16 = *(v15 + 16);

  if (!v16 || (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8] & 1) != 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if ([v13 customDataForTimestamp_])
  {
    sub_246092174();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_245F8E744(v30, &unk_27EE3AA00, &qword_246098380);
    return 0;
  }

  type metadata accessor for ObjectCaptureFrameEvent();
  if (swift_dynamicCast())
  {
    return v27[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24605C438()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3280();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "=== ObjectCaptureSession.%{private}s takes time = %{public}s ms ===", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24605C798()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3280();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "=== ObjectCaptureSession.%{private}s takes time = %{public}s ms ===", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_24605CAF8(float32x4_t *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v89 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - v20;
  v22 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
  {
    v23 = sub_245FA3280();
    (*(v5 + 16))(v7, v23, v4);
    v24 = sub_2460918D4();
    v25 = sub_246091FB4();
    v26 = v4;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v114[0] = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v114);
      _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point, tap point is nil!", v27, 0xCu);
      sub_245F8E6F4(v28);
      MEMORY[0x24C1989D0](v28, -1, -1);
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    (*(v5 + 8))(v7, v26);
    return;
  }

  if ((v22[2].i8[0] & 1) == 0)
  {
    v35 = v22[1];
    v36 = vsubq_f32(v35, *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin));
    v37 = vmulq_f32(v36, v36);
    if (sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)) <= 0.3)
    {
      v52 = sub_245FA3280();
      v53 = v4;
      (*(v5 + 16))(v13, v52, v4);
      v54 = sub_2460918D4();
      v55 = sub_246091FC4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v114[0] = v57;
        *v56 = 136380675;
        *(v56 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v114);
        _os_log_impl(&dword_245F8A000, v54, v55, "ObjectCaptureSession.%{private}s: New tap point is too close to the old tap point, not restarting voxel integration!", v56, 0xCu);
        sub_245F8E6F4(v57);
        MEMORY[0x24C1989D0](v57, -1, -1);
        MEMORY[0x24C1989D0](v56, -1, -1);
      }

      (*(v5 + 8))(v13, v53);
      goto LABEL_41;
    }

    v90 = v19;
    v38 = a1->i64[0];
    v93 = a1[13];
    v94 = v35;
    sub_24604F1F0();
    v39 = vsubq_f32(v93, v94);
    v40 = vmulq_f32(v39, v39);
    v41 = sqrtf(v40.f32[2] + vaddv_f32(*v40.f32));
    v42 = sub_245FA3280();
    v43 = *(v5 + 16);
    v92 = v42;
    v93.i64[0] = v5 + 16;
    v91 = v43;
    (v43)(v21);
    v44 = sub_2460918D4();
    v45 = sub_246091FC4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v89 = v38;
      v48 = v47;
      *&v114[0] = v47;
      *v46 = 136380931;
      *(v46 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v114);
      *(v46 + 12) = 2050;
      *(v46 + 14) = v41;
      _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: Camera to tap point distance = %{public}fm", v46, 0x16u);
      sub_245F8E6F4(v48);
      v49 = v48;
      v38 = v89;
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    v50 = *(v5 + 8);
    v50(v21, v4);
    if (v41 <= 0.0)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v41 > 0.5)
    {
      if (v41 <= 5.0)
      {
        v58 = (-1.0 / powf(2.5, v41 + 3.8)) + 0.03;
        goto LABEL_22;
      }

      *&v51 = 0.03;
    }

    else
    {
      *&v51 = 0.01;
    }

    v58 = *&v51;
LABEL_22:
    if (v58 >= 0.00999 && v58 <= 0.03001)
    {
      v59 = 0.75;
      if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot))
      {
        goto LABEL_33;
      }

      if (v41 > 0.5)
      {
        if (v41 <= 5.0)
        {
          v61 = v41 + v41;
          v62 = v58;
          v63 = exp2f(v61);
          v58 = v62;
          v59 = (1.0 / (v63 * 3.0)) + 0.8;
          goto LABEL_31;
        }

        *&v60 = 0.8;
      }

      else
      {
        *&v60 = 0.97;
      }

      v59 = *&v60;
LABEL_31:
      if (v59 >= 0.79999 && v59 <= 0.97001)
      {
LABEL_33:
        sub_24603532C(&v96, v94, v58, v59);
        nullsub_1();
        v64 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
        v65 = v103;
        v66 = v102;
        v67 = v103;
        v64[6] = v102;
        v64[7] = v65;
        v64[8] = v104;
        v68 = v99;
        v69 = v98;
        v70 = v99;
        v64[2] = v98;
        v64[3] = v68;
        v71 = v101;
        v73 = v100;
        v72 = v101;
        v64[4] = v100;
        v64[5] = v71;
        v74 = v97;
        v76 = v96;
        v75 = v97;
        *v64 = v96;
        v64[1] = v74;
        v111 = v66;
        v112 = v67;
        v113 = v104;
        v107 = v69;
        v108 = v70;
        v109 = v73;
        v110 = v72;
        v105 = v76;
        v106 = v75;
        if (sub_2460818C8(&v105) != 1)
        {
          v114[6] = v111;
          v114[7] = v112;
          v114[8] = v113;
          v114[2] = v107;
          v114[3] = v108;
          v114[4] = v109;
          v114[5] = v110;
          v114[0] = v105;
          v114[1] = v106;
          if (!sub_246052D94(v114))
          {
            v91(v17, v92, v4);
            v77 = sub_2460918D4();
            v78 = sub_246091FB4();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v89 = v38;
              v80 = v79;
              v81 = swift_slowAlloc();
              v95 = v81;
              *v80 = 136380675;
              *(v80 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, &v95);
              _os_log_impl(&dword_245F8A000, v77, v78, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point!", v80, 0xCu);
              sub_245F8E6F4(v81);
              MEMORY[0x24C1989D0](v81, -1, -1);
              v82 = v80;
              v38 = v89;
              MEMORY[0x24C1989D0](v82, -1, -1);
            }

            v50(v17, v4);
          }

          v83 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime;
          *v83 = v38;
          *(v83 + 8) = 0;
          v84 = v90;
          v91(v90, v92, v4);
          v85 = sub_2460918D4();
          v86 = sub_246091FC4();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v95 = v88;
            *v87 = 136380675;
            *(v87 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, &v95);
            _os_log_impl(&dword_245F8A000, v85, v86, "ObjectCaptureSession.%{private}s: Successfully restarted voxel integration at tap point.", v87, 0xCu);
            sub_245F8E6F4(v88);
            MEMORY[0x24C1989D0](v88, -1, -1);
            MEMORY[0x24C1989D0](v87, -1, -1);
          }

          v50(v84, v4);
LABEL_41:
          *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) = 0;
          return;
        }

LABEL_45:
        __break(1u);
        return;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = sub_245FA3280();
  v30 = v4;
  (*(v5 + 16))(v10, v29, v4);
  v31 = sub_2460918D4();
  v32 = sub_246091FB4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v114[0] = v34;
    *v33 = 136380675;
    *(v33 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v114);
    _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point, tap point in world is nil!", v33, 0xCu);
    sub_245F8E6F4(v34);
    MEMORY[0x24C1989D0](v34, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  (*(v5 + 8))(v10, v30);
}

void sub_24605D558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v173 = v4;
  v174 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v158 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v158 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v158 - v15;
  MEMORY[0x28223BE20](v17);
  v169 = &v158 - v18;
  MEMORY[0x28223BE20](v19);
  *&v168 = &v158 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v158 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a1 + 64);
  v250 = *(a1 + 48);
  v251 = v26;
  v27 = *(a1 + 96);
  v252 = *(a1 + 80);
  v253 = v27;
  v28 = *(a1 + 32);
  v248 = *(a1 + 16);
  v249 = v28;
  v29 = *(a1 + 128);
  v170 = *(a1 + 112);
  v171 = v29;
  v30 = *(a1 + 160);
  v172 = *(a1 + 144);
  v32 = *(a1 + 240);
  v31 = *(a1 + 256);
  v33 = *(a1 + 288);
  v239 = *(a1 + 272);
  v238 = v31;
  v34 = *(a1 + 224);
  v177 = *(a1 + 208);
  v178 = v30;
  v237 = v32;
  v236 = v34;
  v36 = *(a1 + 304);
  v35 = *(a1 + 320);
  v37 = *(a1 + 352);
  v243 = *(a1 + 336);
  v242 = v35;
  v241 = v36;
  v240 = v33;
  v38 = *(a1 + 368);
  v246 = *(a1 + 384);
  v39 = *(a1 + 192);
  v175 = *(a1 + 176);
  v176 = v39;
  v247 = *(a1 + 400);
  v245 = v38;
  v244 = v37;
  CVPixelBufferGetWidth(v25);
  CVPixelBufferGetHeight(v25);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(&v183);
  if (v183.n128_u64[0] != 15)
  {
    sub_246077B30(v183.n128_u64[0]);
    sub_246077B30(0xF);
    v183.n128_f64[0] = v24;
    v183.n128_u64[1] = v25;
    v186 = v250;
    v187 = v251;
    v188 = v252;
    v189 = v253;
    v184 = v248;
    v185 = v249;
    v190 = v170;
    v191 = v171;
    v192 = v172;
    v193 = v178;
    v194 = v175;
    v195 = v176;
    v208 = v247;
    v206 = v245;
    v207 = v246;
    v204 = v243;
    v205 = v244;
    v202 = v241;
    v203 = v242;
    v200 = v239;
    v201 = v240;
    v198 = v237;
    v199 = v238;
    v196 = v177;
    v197 = v236;
    v47 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
    v215 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
    v216 = v47;
    v217 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
    v48 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
    v211 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
    v212 = v48;
    v49 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
    v213 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
    v214 = v49;
    v50 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
    v209 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v210 = v50;
    if (sub_2460818C8(&v209) != 1)
    {
      v181 = 1;
      v223 = 0u;
      v224 = 0u;
      v225 = 0u;
      v226 = 0u;
      v227 = 1;
      v182 = 1;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v235 = 1;
      v218.n128_u8[0] = 1;
      v234 = 0u;
      v51 = sub_24607AB30(&v183, v210, &v223, &v223, &v228, 0x100000000);
      v53 = v173;
      v52 = v174;
      if (!v51)
      {
        return;
      }

      swift_beginAccess();
      if (OCProxySurfaceExecutePipeline())
      {
        v54 = sub_245FA3280();
        (*(v52 + 16))(v7, v54, v53);
        v55 = sub_2460918D4();
        v56 = sub_246091FB4();
        if (!os_log_type_enabled(v55, v56))
        {
LABEL_12:

          (*(v52 + 8))(v7, v53);
          OCPointCloudRelease();
          return;
        }

        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v180 = v58;
        *v57 = 136380675;
        *(v57 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v180);
        v59 = "ObjectCaptureSession.%{private}s: Failed to run voxel integration pipeline in scene mode!";
LABEL_11:
        _os_log_impl(&dword_245F8A000, v55, v56, v59, v57, 0xCu);
        sub_245F8E6F4(v58);
        MEMORY[0x24C1989D0](v58, -1, -1);
        MEMORY[0x24C1989D0](v57, -1, -1);
        goto LABEL_12;
      }

      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM))
  {
    v40 = sub_245FA3280();
    v42 = v173;
    v41 = v174;
    (*(v174 + 16))(v10, v40, v173);
    v43 = sub_2460918D4();
    v44 = sub_246091FC4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v183.n128_u64[0] = v46;
      *v45 = 136380675;
      *(v45 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v183);
      _os_log_impl(&dword_245F8A000, v43, v44, "ObjectCaptureSession.%{private}s: Waiting for corrected pose from mobileSfM!", v45, 0xCu);
      sub_245F8E6F4(v46);
      MEMORY[0x24C1989D0](v46, -1, -1);
      MEMORY[0x24C1989D0](v45, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
    return;
  }

  v60 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions;
  v61 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions);
  if (v61 == 2)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v61 & 1) != 0 && *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) == 1)
  {
    v62 = sub_245FA3280();
    v64 = v173;
    v63 = v174;
    (*(v174 + 16))(v23, v62, v173);
    v65 = sub_2460918D4();
    v66 = sub_246091FC4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v183.n128_u64[0] = v68;
      *v67 = 136380675;
      *(v67 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v183);
      _os_log_impl(&dword_245F8A000, v65, v66, "ObjectCaptureSession.%{private}s: Waiting for a new plane to be found under the object!", v67, 0xCu);
      sub_245F8E6F4(v68);
      MEMORY[0x24C1989D0](v68, -1, -1);
      MEMORY[0x24C1989D0](v67, -1, -1);
    }

    (*(v63 + 8))(v23, v64);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64))
  {
    v69 = sub_245FA3280();
    v71 = v173;
    v70 = v174;
    (*(v174 + 16))(v13, v69, v173);
    v72 = sub_2460918D4();
    v73 = sub_246091FC4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v183.n128_u64[0] = v75;
      *v74 = 136380675;
      *(v74 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v183);
      _os_log_impl(&dword_245F8A000, v72, v73, "ObjectCaptureSession.%{private}s: Object transform is not available in area mode.", v74, 0xCu);
      sub_245F8E6F4(v75);
      MEMORY[0x24C1989D0](v75, -1, -1);
      MEMORY[0x24C1989D0](v74, -1, -1);
    }

    (*(v70 + 8))(v13, v71);
    return;
  }

  v76 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM + 64))
  {
    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_24602181C(&v183, v178, v175, v176, v177, *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 16), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 32), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 48), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48));
    v167 = v183;
    v166 = v184;
    v165 = v185;
    v164 = v186;
    v183.n128_u8[0] = 0;
  }

  else
  {
    v78 = v76[2];
    v77 = v76[3];
    v79 = *v76;
    v80 = v76[1];
    v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v76, v178.n128_f32[0]), v80, v178.n128_u64[0], 1), v78, v178, 2), v77, v178, 3);
    v166 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v76, v175.f32[0]), v80, *v175.f32, 1), v78, v175, 2), v77, v175, 3);
    v167 = v81;
    v165 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v176.f32[0]), v80, *v176.f32, 1), v78, v176, 2), v77, v176, 3);
    v164 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v177.f32[0]), v80, *v177.f32, 1), v78, v177, 2), v77, v177, 3);
  }

  v82 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager);
  if (!v82)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v83 = *(*v82 + 176);

  LOBYTE(v83) = v83(v84, v167, v166, v165, v164, v24);

  if (v83)
  {
    v85 = sub_245FA3280();
    v87 = v173;
    v86 = v174;
    (*(v174 + 16))(v16, v85, v173);
    v88 = sub_2460918D4();
    v89 = sub_246091FC4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v183.n128_u64[0] = v91;
      *v90 = 136380675;
      *(v90 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v183);
      _os_log_impl(&dword_245F8A000, v88, v89, "ObjectCaptureSession.%{private}s: Camera motion too fast, dropping frame!", v90, 0xCu);
      sub_245F8E6F4(v91);
      MEMORY[0x24C1989D0](v91, -1, -1);
      MEMORY[0x24C1989D0](v90, -1, -1);
    }

    (*(v86 + 8))(v16, v87);
    return;
  }

  v92 = *(v2 + v60);
  if (v92 == 2)
  {
    goto LABEL_57;
  }

  v53 = v173;
  if ((v92 & 1) == 0)
  {
    v183.n128_f64[0] = v24;
    v183.n128_u64[1] = v25;
    v131 = *(a1 + 64);
    v186 = *(a1 + 48);
    v187 = v131;
    v132 = *(a1 + 96);
    v188 = *(a1 + 80);
    v189 = v132;
    v133 = *(a1 + 32);
    v184 = *(a1 + 16);
    v185 = v133;
    v190 = v170;
    v191 = v171;
    v192 = v172;
    v193 = v178;
    v194 = v175;
    v195 = v176;
    v208 = *(a1 + 400);
    v134 = *(a1 + 384);
    v206 = *(a1 + 368);
    v207 = v134;
    v135 = *(a1 + 352);
    v204 = *(a1 + 336);
    v205 = v135;
    v136 = *(a1 + 320);
    v202 = *(a1 + 304);
    v203 = v136;
    v137 = *(a1 + 288);
    v200 = *(a1 + 272);
    v201 = v137;
    v138 = *(a1 + 256);
    v139 = *(a1 + 224);
    v198 = *(a1 + 240);
    v199 = v138;
    v196 = v177;
    v197 = v139;
    v140 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
    v215 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
    v216 = v140;
    v217 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
    v141 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
    v211 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
    v212 = v141;
    v142 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
    v213 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
    v214 = v142;
    v143 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
    v209 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v210 = v143;
    if (sub_2460818C8(&v209) != 1)
    {
      v144 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
      v52 = v174;
      if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
      {
        v146 = *(v144 + 1);
        v145 = *(v144 + 2);
        v147 = *v144;
        v149 = *(v144 + 6);
        v148 = *(v144 + 7);
        v181 = 0;
        v218 = v178;
        v219 = v175;
        v220 = v176;
        v221 = v177;
        v222 = 0;
        v182 = 0;
        v223 = v147;
        v224 = v146;
        v225 = v145;
        *(&v226 + 1) = v148;
        *&v226 = v149;
        v227 = 0;
        LOBYTE(v180) = 1;
        v234 = 0u;
        v233 = 0u;
        v232 = 0u;
        v231 = 0u;
        v230 = 0u;
        v229 = 0u;
        v228 = 0u;
        v179 = 1;
        v235 = 1;
        v130 = sub_24607AB30(&v183, v210, &v218, &v223, &v228, 0x100000000);
LABEL_42:
        if (!v130)
        {
          return;
        }

        swift_beginAccess();
        if (OCProxySurfaceExecutePipeline())
        {
          v150 = sub_245FA3280();
          v7 = v169;
          (*(v52 + 16))(v169, v150, v53);
          v55 = sub_2460918D4();
          v56 = sub_246091FB4();
          if (!os_log_type_enabled(v55, v56))
          {
            goto LABEL_12;
          }

          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v209 = v58;
          *v57 = 136380675;
          *(v57 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v209);
          v59 = "ObjectCaptureSession.%{private}s: Failed to run voxel integration pipeline in scanning mode!";
          goto LABEL_11;
        }

LABEL_46:
        OCPointCloudRelease();
        if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime + 8) & 1) != 0 || v24 - *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime) > 1.0)
        {
          sub_24605F2B0();
        }

        return;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v93 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane;
  v94 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  if (v94)
  {
    v95 = v94;
    getRotatedPlaneTransform(_:)(v96, v95);
    v168 = v97;
    v162 = v99;
    v163 = v98;
    v161 = v100;
    v101 = *(v2 + v93);
    if (v101)
    {
      [v101 center];
      v160 = v102;
      v103 = [(ARPlaneAnchor *)v95 planeExtent];
      [(ARPlaneExtent *)v103 width];
      v159 = v104;

      v105 = [(ARPlaneAnchor *)v95 planeExtent];
      [(ARPlaneExtent *)v105 height];
      v158 = v106;

      v107 = *(a1 + 64);
      v186 = *(a1 + 48);
      v187 = v107;
      v108 = *(a1 + 96);
      v188 = *(a1 + 80);
      v189 = v108;
      v109 = *(a1 + 32);
      v184 = *(a1 + 16);
      v185 = v109;
      v110 = *(a1 + 352);
      v111 = *(a1 + 384);
      v206 = *(a1 + 368);
      v207 = v111;
      v112 = *(a1 + 288);
      v113 = *(a1 + 320);
      v114 = *(a1 + 336);
      v202 = *(a1 + 304);
      v203 = v113;
      v204 = v114;
      v205 = v110;
      v115 = *(a1 + 224);
      v116 = *(a1 + 240);
      v196 = v177;
      v197 = v115;
      v117 = *(a1 + 256);
      v118 = *(a1 + 272);
      v198 = v116;
      v199 = v117;
      v183.n128_f64[0] = v24;
      v183.n128_u64[1] = v25;
      v190 = v170;
      v191 = v171;
      v192 = v172;
      v193 = v178;
      v194 = v175;
      v195 = v176;
      v208 = *(a1 + 400);
      v200 = v118;
      v201 = v112;
      v119 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
      v215 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
      v216 = v119;
      v217 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
      v120 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
      v211 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
      v212 = v120;
      v121 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
      v213 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
      v214 = v121;
      v122 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
      v209 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
      v210 = v122;
      if (sub_2460818C8(&v209) != 1)
      {
        v123 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
        v52 = v174;
        if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
        {
          *&v124 = v159;
          *(&v124 + 1) = v158;
          v126 = *(v123 + 1);
          v125 = *(v123 + 2);
          v127 = *v123;
          v129 = *(v123 + 6);
          v128 = *(v123 + 7);
          v181 = 0;
          v218 = v178;
          v219 = v175;
          v220 = v176;
          v221 = v177;
          v222 = 0;
          v182 = 0;
          v223 = v127;
          v224 = v126;
          v225 = v125;
          *(&v226 + 1) = v128;
          *&v226 = v129;
          v227 = 0;
          LOBYTE(v180) = 0;
          v228 = v168;
          v229 = v163;
          v230 = v162;
          v231 = v161;
          v232 = v160;
          v233 = v124;
          v234 = 0uLL;
          v235 = 0;
          v179 = 0;
          v130 = sub_24607AB30(&v183, v210, &v218, &v223, &v228, 1014350479);

          goto LABEL_42;
        }

LABEL_62:
        __break(1u);
        return;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v151 = sub_245FA3280();
  v152 = v174;
  v153 = v168;
  (*(v174 + 16))(v168, v151, v53);
  v154 = sub_2460918D4();
  v155 = sub_246091FB4();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v183.n128_u64[0] = v157;
    *v156 = 136380675;
    *(v156 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v183);
    _os_log_impl(&dword_245F8A000, v154, v155, "ObjectCaptureSession.%{private}s: Voxel integration is paused till a new plane under the object is available", v156, 0xCu);
    sub_245F8E6F4(v157);
    MEMORY[0x24C1989D0](v157, -1, -1);
    MEMORY[0x24C1989D0](v156, -1, -1);
  }

  (*(v152 + 8))(v153, v53);
}

void sub_24605E6CC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v98 - v7;
  v9 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
  swift_beginAccess();
  v10 = v9[1];
  v131 = *v9;
  v132 = v10;
  v11 = v9[3];
  v133 = v9[2];
  v134 = v11;
  v12 = v9[5];
  v135 = v9[4];
  v136 = v12;
  v13 = v131.n128_u64[0];
  if (v131.n128_u64[0])
  {
    *&v106 = v8;
    v14 = v4;
    v15 = v3;
    v16 = v131.n128_u64[1];
    v104 = v134;
    v105 = v133;
    v102 = v136;
    v103 = v135;
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x410);
    v99 = v132.n128_u64[0];

    v100 = v16;

    v17(v130, v18);
    if (v130[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager) && (sub_2460448B0() & 1) != 0 && (*sub_245F925DC() & 1) != 0)
      {
        sub_245F8E744(&v131, &qword_27EE3A978, &qword_246099C08);
        v3 = v15;
        v4 = v14;
        v8 = v106;
        goto LABEL_29;
      }
    }

    else
    {
      sub_246077B30(v130[0]);
      sub_246077B30(0xF);
    }

    (v17)(v122);
    if (v122[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v19 = v9[3];
      v125 = v9[2];
      v126 = v19;
      v20 = v9[5];
      v127 = v9[4];
      v128 = v20;
      v21 = v9[1];
      v123 = *v9;
      v22 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
      v124 = v21;
      swift_beginAccess();
      memcpy(v130, v22, 0x4F0uLL);
      if (sub_246081984(v130) == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v23 = v22[33];
      v118 = v22[32];
      v119 = v23;
      v24 = v22[35];
      v120 = v22[34];
      v121 = v24;
      v25 = v22[31];
      v116 = v22[30];
      v117 = v25;
      v26 = v126;
      v22[32] = v125;
      v22[33] = v26;
      v27 = v128;
      v22[34] = v127;
      v22[35] = v27;
      v28 = v124;
      v22[30] = v123;
      v22[31] = v28;
      sub_245F8E7A4(&v123, v129, &qword_27EE3A978, &qword_246099C08);
      sub_245F8E744(&v116, &qword_27EE3A978, &qword_246099C08);
    }

    else
    {
      sub_246077B30(v122[0]);
      sub_246077B30(0xF);
    }

    v3 = v15;
    v4 = v14;
    v8 = v106;
    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData) == 1)
    {
      v29 = sub_2460443FC(v122);
      v31 = v30;
      memmove(v130, v30, 0x4F0uLL);
      if (sub_246081984(v130) == 1)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      memmove(v129, &v31[36], 0x2B0uLL);
      if (sub_246081ACC(v129) != 1)
      {
        sub_246022048(v13, 0, &v116);
        v32 = v31[41];
        v124 = v31[42];
        v33 = v31[44];
        v125 = v31[43];
        v126 = v33;
        v127 = v31[45];
        v123 = v32;
        v34 = v119;
        v31[43] = v118;
        v31[44] = v34;
        v31[45] = v120;
        v35 = v117;
        v31[41] = v116;
        v31[42] = v35;
        sub_245F8E744(&v123, &qword_27EE3AB10, &qword_246096678);
      }

      (v29)(v122, 0);
      v36 = sub_2460443FC(&v107);
      v38 = v37;
      memmove(&v123, v37, 0x4F0uLL);
      if (sub_246081984(&v123) == 1)
      {
        goto LABEL_57;
      }

      memmove(v122, &v38[36], 0x2B0uLL);
      if (sub_246081ACC(v122) != 1)
      {
        sub_246022454(v13, 0, v114, v105, v104, v103, v102);
        v39 = v38[55];
        v118 = v38[54];
        v119 = v39;
        v120 = v38[56];
        v40 = v38[53];
        v116 = v38[52];
        v117 = v40;
        v41 = v114[3];
        v38[54] = v114[2];
        v38[55] = v41;
        v38[56] = v114[4];
        v42 = v114[1];
        v38[52] = v114[0];
        v38[53] = v42;
        sub_245F8E744(&v116, &qword_27EE3AB18, &qword_246099D70);
      }

      (v36)(&v107, 0);
      v43 = sub_2460443FC(v115);
      v45 = v44;
      memmove(&v116, v44, 0x4F0uLL);
      if (sub_246081984(&v116) == 1)
      {
        goto LABEL_59;
      }

      memmove(v114, &v45[36], 0x2B0uLL);
      if (sub_246081ACC(v114) != 1)
      {
        v107.n128_u64[0] = v13;
        v107.n128_u64[1] = v100;
        v108.n128_u64[0] = v99;
        v109 = v105;
        v110 = v104;
        v111 = v103;
        v112 = v102;
        sub_246022788(&v107, v113);
        v46 = v45[60];
        v109 = v45[59];
        v110 = v46;
        v111 = v45[61];
        v47 = v45[58];
        v107 = v45[57];
        v108 = v47;
        v48 = v113[1];
        v49 = v113[3];
        v50 = v113[4];
        v45[59] = v113[2];
        v45[60] = v49;
        v45[61] = v50;
        v45[57] = v113[0];
        v45[58] = v48;
        sub_245F8E744(&v107, &unk_27EE3AB20, &qword_246099D78);
      }

      (v43)(v115, 0);
    }

    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled) == 1)
    {
      v51 = sub_2460443FC(v122);
      v53 = v52;
      memmove(v130, v52, 0x4F0uLL);
      if (sub_246081984(v130) == 1)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      memmove(&v123, &v53[36], 0x2B0uLL);
      if (sub_246081ACC(&v123) != 1)
      {
        sub_246022048(v13, 1, v129);
        v54 = v53[66];
        v118 = v53[65];
        v119 = v54;
        v120 = v53[67];
        v55 = v53[64];
        v116 = v53[63];
        v117 = v55;
        v56 = v129[0].transform.columns[0];
        v53[65] = v129[0].transform.columns[1];
        v53[66] = v129[0].transform.columns[2];
        v53[67] = v129[0].transform.columns[3];
        v53[63] = *&v129[0].voxels._rawValue;
        v53[64] = v56;
        sub_245F8E744(&v116, &qword_27EE3AB10, &qword_246096678);
      }

      (v51)(v122, 0);
    }

    sub_245F8E744(&v131, &qword_27EE3A978, &qword_246099C08);
  }

LABEL_29:
  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels) == 1)
  {
    swift_beginAccess();
    DebugVoxelCloud = OCProxySurfaceGetDebugVoxelCloud();
    v58 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud;
    *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud) = DebugVoxelCloud;
    if (DebugVoxelCloud)
    {
      v59 = OCVoxelCloudSize();
      v60 = OCVoxelCloudVoxels();
      if (v59)
      {
        v61 = v60;
        v62 = sub_246072594(v59, 0);
        memcpy(v62 + 4, v61, 48 * v59);
      }

      else
      {
        v62 = MEMORY[0x277D84F90];
      }

      OCVoxelCloudTransformMatrix();
      v105 = v72;
      v106 = v71;
      v103 = v74;
      v104 = v73;
      v75 = sub_2460443FC(v122);
      v77 = v76;
      memmove(v130, v76, 0x4F0uLL);
      if (sub_246081984(v130) == 1)
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      memmove(&v123, &v77[36], 0x2B0uLL);
      if (sub_246081ACC(&v123) == 1)
      {
      }

      else
      {
        OCVoxelCloud.init(voxels:transform:)(v129, v62, v78);
        v79 = v129[0].transform.columns[0];
        v80 = v129[0].transform.columns[1];
        v81 = v129[0].transform.columns[2];
        v82 = v129[0].transform.columns[3];
        v83 = v77[49];
        v118 = v77[48];
        v119 = v83;
        v120 = v77[50];
        v84 = v77[47];
        v116 = v77[46];
        v117 = v84;
        v77[46].n128_u64[0] = v129[0].voxels._rawValue;
        v77[47] = v79;
        v77[48] = v80;
        v77[49] = v81;
        v77[50] = v82;
        sub_245F8E744(&v116, &qword_27EE3AB10, &qword_246096678);
      }

      (v75)(v122, 0);
    }

    else
    {
      v63 = sub_245FA3280();
      (*(v4 + 16))(v8, v63, v3);
      v64 = sub_2460918D4();
      v65 = sub_246091FB4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v4;
        v68 = swift_slowAlloc();
        v130[0] = v68;
        *v66 = 136380675;
        *(v66 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A4370, v130);
        _os_log_impl(&dword_245F8A000, v64, v65, "ObjectCaptureSession.%{private}s: Failed to get debug voxelcloud from voxel integration pipeline!", v66, 0xCu);
        sub_245F8E6F4(v68);
        v69 = v68;
        v4 = v67;
        MEMORY[0x24C1989D0](v69, -1, -1);
        MEMORY[0x24C1989D0](v66, -1, -1);

        v70 = v67;
      }

      else
      {

        v70 = v4;
      }

      (*(v70 + 8))(v8, v3);
      *(v2 + v58) = 0;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth) != 1)
  {
    return;
  }

  swift_beginAccess();
  DepthImage = OCProxySurfaceCreateDepthImage();
  if (DepthImage)
  {
    v86 = DepthImage;
    v87 = sub_2460443FC(&v116);
    v89 = v88;
    memmove(v130, v88, 0x4F0uLL);
    if (sub_246081984(v130) != 1)
    {
      memmove(&v123, v89 + 72, 0x2B0uLL);
      if (sub_246081ACC(&v123) == 1)
      {
        (v87)(&v116, 0);
      }

      else
      {
        v96 = v89[102];
        v89[102] = v86;
        v97 = v86;

        (v87)(&v116, 0);
      }

      return;
    }

    goto LABEL_54;
  }

  v90 = sub_245FA3280();
  v91 = v101;
  (*(v4 + 16))(v101, v90, v3);
  v92 = sub_2460918D4();
  v93 = sub_246091FB4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v130[0] = v95;
    *v94 = 136380675;
    *(v94 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A4370, v130);
    _os_log_impl(&dword_245F8A000, v92, v93, "ObjectCaptureSession.%{private}s: Failed to get TSDF depth image from voxel integration pipeline!", v94, 0xCu);
    sub_245F8E6F4(v95);
    MEMORY[0x24C1989D0](v95, -1, -1);
    MEMORY[0x24C1989D0](v94, -1, -1);
  }

  (*(v4 + 8))(v91, v3);
}

void sub_24605F2B0()
{
  v1 = v0;
  swift_beginAccess();
  OCProxySurfaceCreateResults();
  v2 = *(&v23 + 1);
  v3 = v24;
  if (v23)
  {
    v4 = DWORD2(v24);
    v20 = v26;
    v21 = v25;
    v18 = v28;
    v19 = v27;
    type metadata accessor for OCDataBuffer();
    v5 = v23;
    v6 = sub_246091194(v5);
    v7 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
    swift_beginAccess();
    v8 = v7[3];
    v25 = v7[2];
    v26 = v8;
    v9 = v7[5];
    v27 = v7[4];
    v28 = v9;
    v10 = v7[1];
    v23 = *v7;
    v24 = v10;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = v6;
    v7[2] = v21;
    v7[3] = v20;
    v7[4] = v19;
    v7[5] = v18;

    sub_245F8E744(&v23, &qword_27EE3A978, &qword_246099C08);
    if (v2)
    {
      v11 = sub_246091194(v2);
      v13 = sub_246044EC0(v22);
      if (*v12)
      {
        v12[1] = v11;
      }

      (v13)(v22, 0);
    }

    if (v3)
    {
      v14 = v3;
      v15 = sub_246091194(v14);
      v17 = sub_246044EC0(v22);
      if (*v16)
      {
        v16[2] = v15;
      }

      (v17)(v22, 0);
    }

    else
    {
    }

    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled) == 1)
    {
      *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage) = v4;
    }
  }

  else
  {
  }
}

void sub_24605F500(void *a1, float64x2_t *a2, uint64_t a3, _OWORD *a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(v33, v13);
  if (v33[0] == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    if ((*(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33) & 1) == 0)
    {
      v16 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EE4F8B588E368F1uLL), vabdq_f64(*(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition), *a2)));
      if (v16.i32[0] & v16.i32[1])
      {
        if (*(a3 + 64))
        {
          v17 = sub_245FA3174();
          (*(v9 + 16))(v15, v17, v8);
          v18 = sub_2460918D4();
          v19 = sub_246091FB4();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v33[0] = v21;
            *v20 = 136380675;
            *(v20 + 4) = sub_245F8D3C0(0xD000000000000059, 0x80000002460A4750, v33);
            _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Failed to set bounding box!", v20, 0xCu);
            sub_245F8E6F4(v21);
            MEMORY[0x24C1989D0](v21, -1, -1);
            MEMORY[0x24C1989D0](v20, -1, -1);
          }

          (*(v9 + 8))(v15, v8);
        }

        else
        {
          sub_246044B58(a3);
          v30 = (a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
          v31 = a4[3];
          v30[2] = a4[2];
          v30[3] = v31;
          v30[4] = a4[4];
          v32 = a4[1];
          *v30 = *a4;
          v30[1] = v32;
          sub_245F8E7A4(a4, v33, &qword_27EE3AB10, &qword_246096678);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_246077B30(v33[0]);
    sub_246077B30(0xE);
  }

  v22 = sub_245FA3174();
  (*(v9 + 16))(v11, v22, v8);
  v23 = sub_2460918D4();
  v24 = sub_246091FB4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v25 = 136380675;
    *(v25 + 4) = sub_245F8D3C0(0xD000000000000059, 0x80000002460A4750, v33);
    _os_log_impl(&dword_245F8A000, v23, v24, "ObjectCaptureSession.%{private}s: Not running bounding box detection because ObjectCaptureSession is not in detecting state or the tap position has changed!", v25, 0xCu);
    sub_245F8E6F4(v26);
    MEMORY[0x24C1989D0](v26, -1, -1);
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
LABEL_12:
  v27 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
  if (v27)
  {
    v28 = *(*v27 + 296);

    v28(v29);
  }
}

void sub_24605F95C()
{
  v47 = sub_246091834();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245F8E624(&qword_27EE3AE88, &qword_24609AE20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  swift_beginAccess();
  v34 = v9;
  v10 = *(v0 + v9);
  v11 = *(v10 + 64);
  v36 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v45 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession;
  v46 = v0;
  v35 = (v12 + 63) >> 6;
  v37 = v1 + 32;
  v38 = v1 + 16;
  v42 = v1;
  v43 = v10;
  v44 = (v1 + 8);

  v15 = 0;
  v39 = v8;
  v40 = v5;
  v16 = v41;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v42;
      v22 = v43;
      v24 = v47;
      (*(v42 + 16))(v16, *(v43 + 48) + *(v42 + 72) * v21, v47);
      v25 = *(*(v22 + 56) + 8 * v21);
      v26 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
      v27 = *(v26 + 48);
      v28 = *(v23 + 32);
      v5 = v40;
      v28(v40, v16, v24);
      *&v5[v27] = v25;
      (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
      v29 = v25;
      v19 = v17;
      v8 = v39;
LABEL_13:
      sub_245FC5914(v5, v8, &qword_27EE3AE88, &qword_24609AE20);
      v30 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
      if ((*(*(v30 - 8) + 48))(v8, 1, v30) == 1)
      {
        break;
      }

      v31 = *&v8[*(v30 + 48)];
      [*(v46 + v45) removeAnchor_];

      (*v44)(v8, v47);
      v15 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    *(v46 + v34) = MEMORY[0x277D84F98];
  }

  else
  {
LABEL_5:
    if (v35 <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v35;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v35)
      {
        v32 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
        (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v36 + 8 * v17);
      ++v15;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24605FD70(uint64_t a1, char a2)
{
  v3 = v2;
  v36 = a1;
  v5 = sub_2460919F4();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091A64();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245FA3174();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v5;
    v19 = a2;
    v20 = v18;
    v21 = swift_slowAlloc();
    v32 = v3;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136381187;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000037, 0x80000002460A2760, aBlock);
    *(v20 + 12) = 1026;
    *(v20 + 14) = v19 & 1;
    *(v20 + 18) = 2050;
    *(v20 + 20) = v36;
    _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Received flippable signal %{BOOL,public}d for sample id %{public}llu", v20, 0x1Cu);
    sub_245F8E6F4(v22);
    v23 = v22;
    v3 = v32;
    MEMORY[0x24C1989D0](v23, -1, -1);
    v24 = v20;
    a2 = v19;
    v5 = v31;
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 16) = v3;
  *(v25 + 24) = v26;
  *(v25 + 32) = a2 & 1;
  aBlock[4] = sub_24607BE5C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0F90;
  v27 = _Block_copy(aBlock);
  v28 = v3;
  sub_246091A14();
  v37 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v10, v7, v27);
  _Block_release(v27);
  (*(v35 + 8))(v7, v5);
  (*(v33 + 8))(v10, v34);
}

void sub_246060208(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_245FA3174();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136380675;
      *(v10 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A45D0, &v12);
      _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Pose correction timer has expired, using the last consistent pose before pause.", v10, 0xCu);
      sub_245F8E6F4(v11);
      MEMORY[0x24C1989D0](v11, -1, -1);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v6[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  }
}

uint64_t sub_2460603F4@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  v3 = v2;
  v220 = a2;
  v211 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v226 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v197 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v194 = &v182 - v7;
  MEMORY[0x28223BE20](v8);
  v193 = &v182 - v9;
  MEMORY[0x28223BE20](v10);
  v204 = &v182 - v11;
  v12 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v12 - 8);
  v202 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v205 = &v182 - v15;
  MEMORY[0x28223BE20](v16);
  v196 = &v182 - v17;
  MEMORY[0x28223BE20](v18);
  v198 = &v182 - v19;
  MEMORY[0x28223BE20](v20);
  v195 = &v182 - v21;
  MEMORY[0x28223BE20](v22);
  v199 = &v182 - v23;
  MEMORY[0x28223BE20](v24);
  v207 = &v182 - v25;
  v214 = sub_246091834();
  v227 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v206 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v200 = &v182 - v28;
  MEMORY[0x28223BE20](v29);
  v201 = &v182 - v30;
  MEMORY[0x28223BE20](v31);
  v213 = &v182 - v32;
  v33 = sub_2460918F4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v216 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v182 - v37;
  v39 = MEMORY[0x277D860B8];
  v40 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM;
  v41 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM);
  v219 = v34;
  if (v41 == 1)
  {
    v232 = v3;
    v42 = a1;
    v43 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM;
    v44 = sub_245FA3174();
    (*(v34 + 16))(v38, v44, v33);
    v45 = sub_2460918D4();
    v46 = sub_246091FC4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v237[0] = v48;
      *v47 = 136380675;
      *(v47 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4720, v237);
      _os_log_impl(&dword_245F8A000, v45, v46, "ObjectCaptureSession.%{private}s: Skipping shots before pause.", v47, 0xCu);
      sub_245F8E6F4(v48);
      MEMORY[0x24C1989D0](v48, -1, -1);
      MEMORY[0x24C1989D0](v47, -1, -1);

      v49 = v219;
    }

    else
    {

      v49 = v34;
    }

    (*(v49 + 8))(v38, v33);
    v40 = v43;
    a1 = v42;
    v3 = v232;
  }

  v217 = v33;
  v50 = *v39;
  v223 = v39[1];
  v224 = v50;
  v51 = v39[2];
  v221 = v39[3];
  v222 = v51;
  v52 = a1 + 64;
  v53 = 1 << *(a1 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(a1 + 64);
  v56 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  v215 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
  v57 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  v58 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;

  v232 = v56;
  swift_beginAccess();
  v218 = v57;
  swift_beginAccess();
  v212 = v58;
  swift_beginAccess();
  v225 = 0;
  v59 = 0;
  v60 = (v53 + 63) >> 6;
  v209 = v227 + 16;
  v210 = (v227 + 8);
  v208 = (v226 + 56);
  v203 = (v226 + 48);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v55)
        {
          while (1)
          {
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              break;
            }

            if (v62 >= v60)
            {
              goto LABEL_91;
            }

            v61 = *(v52 + 8 * v62);
            ++v59;
            if (v61)
            {
              v59 = v62;
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
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
          v188(v205, 1, 1, v211);
          __break(1u);
LABEL_106:
          v188(v199, 1, 1, v211);
          __break(1u);
LABEL_107:
          result = sub_246092424();
          __break(1u);
          return result;
        }

        v61 = v55;
LABEL_15:
        v55 = (v61 - 1) & v61;
        v63 = *(v3 + v232);
        if (*(v63 + 16))
        {
          v64 = __clz(__rbit64(v61)) | (v59 << 6);
          v65 = *(*(a1 + 48) + 8 * v64);
          v66 = (*(a1 + 56) + (v64 << 6));
          v67 = *v66;
          v230 = v66[1];
          v231 = v67;
          v68 = v66[2];
          v228 = v66[3];
          v229 = v68;
          v69 = sub_245FFF3EC(v65);
          if ((v70 & 1) != 0 && *(*(v63 + 56) + v69) == 1 && (*(v3 + v40) != 1 || v65 >= *(v3 + v215)))
          {
            v71 = *(v3 + v218);
            if (*(v71 + 16))
            {
              v72 = sub_245FFF3EC(v65);
              if (v73)
              {
                break;
              }
            }
          }
        }
      }

      v192 = a1;
      v74 = v40;
      v75 = *(v71 + 56) + *(v227 + 72) * v72;
      v76 = *(v227 + 16);
      v77 = v213;
      v190 = *(v227 + 72);
      v191.i64[0] = v76;
      v76(v213, v75, v214);
      v78 = *(v3 + v212);
      if (*(v78 + 16))
      {
        break;
      }

LABEL_25:
      (*v210)(v77, v214);
      v81 = v207;
      (*v208)(v207, 1, 1, v211);
      sub_245F8E744(v81, &qword_27EE3ACE0, &unk_246098880);
      v40 = v74;
      a1 = v192;
    }

    v79 = sub_245FC1BDC(v77);
    if ((v80 & 1) == 0)
    {

      v77 = v213;
      goto LABEL_25;
    }

    v82 = *(v78 + 56);
    v189.i64[0] = *(v226 + 72);
    v83 = v207;
    sub_246081A04(v82 + v189.i64[0] * v79, v207, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    v188 = *(v226 + 56);
    v188(v83, 0, 1, v211);
    sub_245F8E744(v83, &qword_27EE3ACE0, &unk_246098880);
    v84 = *(v3 + v212);
    if (!*(v84 + 16))
    {
      goto LABEL_98;
    }

    v85 = sub_245FC1BDC(v213);
    if ((v86 & 1) == 0)
    {
      goto LABEL_99;
    }

    v40 = v74;
    v87 = *(v84 + 56) + v85 * v189.i64[0];
    v187.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v88 = v204;
    sub_246081A04(v87, v204, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    memcpy(v237, (v88 + 16), 0x188uLL);
    sub_24601E2C0(v237, v236);
    sub_246081A6C(v88, v187.i64[0]);
    a1 = v192;
    if (*(*(&v237[23] + 1) + 16) <= 1uLL && (v237[23] & 1) == 0)
    {
      break;
    }

LABEL_59:
    v134 = v212;
    swift_beginAccess();
    v187.i32[0] = swift_isUniquelyReferenced_nonNull_native();
    (v191.i64[0])(v206, v213, v214);
    v135 = v134;
    v136 = *(v3 + v134);
    v235 = v136;
    *(v3 + v135) = 0x8000000000000000;
    v138 = sub_245FC1BDC(v206);
    v139 = *(v136 + 16);
    v140 = (v137 & 1) == 0;
    v141 = v139 + v140;
    if (__OFADD__(v139, v140))
    {
      goto LABEL_100;
    }

    if (*(v136 + 24) >= v141)
    {
      if (v187.i8[0])
      {
        if ((v137 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v187.i64[0] = v138;
        v191.i32[0] = v137;
        sub_246074CB4();
        v138 = v187.i64[0];
        if ((v191.i8[0] & 1) == 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      v191.i32[0] = v137;
      sub_2460727D4(v141, v187.u32[0]);
      v142 = sub_245FC1BDC(v206);
      if ((v191.i8[0] & 1) != (v143 & 1))
      {
        goto LABEL_107;
      }

      v138 = v142;
      if ((v191.i8[0] & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    v234 = 0;
    v191.i64[0] = v235;
    v144 = *(v235 + 56);
    v186.n128_u64[0] = v138 * v189.i64[0];
    v145 = v205;
    v187.i64[0] = v138;
    sub_24608199C(v144 + v138 * v189.i64[0], v205, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v188(v145, 0, 1, v211);
    v146 = v230;
    *(v145 + 320) = v231;
    *(v145 + 336) = v146;
    v147 = v228;
    *(v145 + 352) = v229;
    *(v145 + 368) = v147;
    *(v145 + 384) = v234;
    v148 = v145;
    v149 = v202;
    sub_245F8E7A4(v148, v202, &qword_27EE3ACE0, &unk_246098880);
    if ((*v203)(v149, 1, v211) == 1)
    {
      sub_245F8E744(v149, &qword_27EE3ACE0, &unk_246098880);
      v150 = *(v191.i64[0] + 48) + v187.i64[0] * v190;
      v190 = *v210;
      (v190)(v150, v214);
      sub_2460739C0(v187.i64[0], v191.i64[0]);
    }

    else
    {
      v190 = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
      v151 = v149;
      v152 = v197;
      sub_24608199C(v151, v197, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      sub_24608199C(v152, *(v191.i64[0] + 56) + v186.n128_u64[0], v190);
      v190 = *v210;
    }

    (v190)(v206, v214);
    sub_245F8E744(v205, &qword_27EE3ACE0, &unk_246098880);
    v153 = v191.i64[0];
    *(v3 + v212) = v191.i64[0];
    swift_endAccess();
    if (!*(v153 + 16))
    {
      goto LABEL_101;
    }

    v154 = sub_245FC1BDC(v213);
    if ((v155 & 1) == 0)
    {
      goto LABEL_102;
    }

    v156 = *(v191.i64[0] + 56) + v154 * v189.i64[0];
    v189.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v157 = v204;
    sub_246081A04(v156, v204, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    memcpy(v236, (v157 + 16), 0x188uLL);
    sub_24601E2C0(v236, v233);
    sub_246081A6C(v157, v189.i64[0]);
    sub_24601E31C(v237);
    if (v225 >= v65 || *(v236[47] + 16) != 2)
    {
      goto LABEL_81;
    }

    v160 = *(v236[48] + 16);
    if (!v160)
    {
      goto LABEL_97;
    }

    if (*(v236[47] + 32) > 1.0)
    {
      if (v160 == 1)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }

    if (v160 == 1)
    {
      goto LABEL_97;
    }

    if (*(v236[48] + 32) <= 0.005 && *(v236[47] + 36) <= 1.0)
    {
      v159.i32[0] = *(v236[48] + 36);
      v189 = v159;
      v158.i32[0] = 1000593162;
      v191 = v158;
      v161 = vdupq_lane_s32(*&vcgeq_f32(v158, v159), 0);
      v224 = vbslq_s8(v161, v231, v224);
      v223 = vbslq_s8(v161, v230, v223);
      v222 = vbslq_s8(v161, v229, v222);
      v221 = vbslq_s8(v161, v228, v221);
      (v190)(v213, v214);
      sub_24601E31C(v236);
      v162 = v225;
      if (v189.f32[0] <= v191.f32[0])
      {
        v162 = v65;
      }

      v225 = v162;
    }

    else
    {
LABEL_81:
      (v190)(v213, v214);
      sub_24601E31C(v236);
    }
  }

  v186 = v237[21];
  v187 = v237[22];
  v184 = v237[19];
  v185 = v237[20];
  v238.columns[1] = v230;
  v238.columns[0] = v231;
  v238.columns[3] = v228;
  v238.columns[2] = v229;
  v239 = __invert_f4(v238);
  v184 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v239.columns[0], v184.f32[0]), v239.columns[1], *v184.f32, 1), v239.columns[2], v184, 2), v239.columns[3], v184, 3);
  v185 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v239.columns[0], v185.f32[0]), v239.columns[1], *v185.f32, 1), v239.columns[2], v185, 2), v239.columns[3], v185, 3);
  v186 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v239.columns[0], v186.n128_f32[0]), v239.columns[1], v186.n128_u64[0], 1), v239.columns[2], v186, 2), v239.columns[3], v186, 3);
  v187 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v239.columns[0], v187.f32[0]), v239.columns[1], *v187.f32, 1), v239.columns[2], v187, 2), v239.columns[3], v187, 3);
  v89 = sub_246023584(v184.f32[0], *v185.i64, v186);
  v90 = sub_2460235EC(*v184.i64, *v185.i64, v186.n128_f64[0], v187);
  v91 = v212;
  swift_beginAccess();
  v187.i32[0] = swift_isUniquelyReferenced_nonNull_native();
  (v191.i64[0])(v201, v213, v214);
  v92 = v91;
  v93 = *(v3 + v91);
  v233[0] = v93;
  *(v3 + v92) = 0x8000000000000000;
  v95 = sub_245FC1BDC(v201);
  v96 = *(v93 + 16);
  v97 = (v94 & 1) == 0;
  v98 = v96 + v97;
  if (__OFADD__(v96, v97))
  {
    goto LABEL_103;
  }

  if (*(v93 + 24) >= v98)
  {
    if (v187.i8[0])
    {
      if ((v94 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v185.i64[0] = v95;
      v186.n128_u32[0] = v94;
      sub_246074CB4();
      v95 = v185.i64[0];
      if ((v186.n128_u8[0] & 1) == 0)
      {
        goto LABEL_106;
      }
    }
  }

  else
  {
    v186.n128_u32[0] = v94;
    sub_2460727D4(v98, v187.u32[0]);
    v99 = sub_245FC1BDC(v201);
    if ((v186.n128_u8[0] & 1) != (v100 & 1))
    {
      goto LABEL_107;
    }

    v95 = v99;
    if ((v186.n128_u8[0] & 1) == 0)
    {
      goto LABEL_106;
    }
  }

  v187.i64[0] = v233[0];
  v101 = *(v233[0] + 56);
  v185.i64[0] = v95;
  v186.n128_u64[0] = v95 * v189.i64[0];
  v102 = v199;
  sub_24608199C(v101 + v95 * v189.i64[0], v199, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v188(v102, 0, 1, v211);
  v103 = *(v102 + 392);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v103 = sub_245FB1254(0, *(v103 + 2) + 1, 1, v103);
  }

  v105 = *(v103 + 2);
  v104 = *(v103 + 3);
  v106 = v105 + 1;
  if (v105 >= v104 >> 1)
  {
    v184.i64[0] = v105 + 1;
    v163 = v103;
    v164 = v105;
    v165 = sub_245FB1254((v104 > 1), v105 + 1, 1, v163);
    v106 = v184.i64[0];
    v105 = v164;
    v103 = v165;
  }

  *(v103 + 2) = v106;
  *&v103[4 * v105 + 32] = v89;
  v107 = v199;
  *(v199 + 392) = v103;
  v108 = v195;
  sub_245F8E7A4(v107, v195, &qword_27EE3ACE0, &unk_246098880);
  v184.i64[0] = *v203;
  if ((v184.i64[0])(v108, 1, v211) == 1)
  {
    sub_245F8E744(v108, &qword_27EE3ACE0, &unk_246098880);
    v109 = v187.i64[0];
    v110 = *(v187.i64[0] + 48) + v185.i64[0] * v190;
    v186.n128_u64[0] = *v210;
    (v186.n128_u64[0])(v110, v214);
    sub_2460739C0(v185.i64[0], v109);
  }

  else
  {
    v185.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v111 = v108;
    v112 = v193;
    sub_24608199C(v111, v193, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    sub_24608199C(v112, *(v187.i64[0] + 56) + v186.n128_u64[0], v185.i64[0]);
    v186.n128_u64[0] = *v210;
  }

  (v186.n128_u64[0])(v201, v214);
  sub_245F8E744(v199, &qword_27EE3ACE0, &unk_246098880);
  v113 = v212;
  *(v3 + v212) = v187.i64[0];
  swift_endAccess();
  swift_beginAccess();
  v187.i32[0] = swift_isUniquelyReferenced_nonNull_native();
  (v191.i64[0])(v200, v213, v214);
  v114 = v113;
  v115 = *(v3 + v113);
  v233[0] = v115;
  *(v3 + v114) = 0x8000000000000000;
  v117 = sub_245FC1BDC(v200);
  v118 = *(v115 + 16);
  v119 = (v116 & 1) == 0;
  v120 = v118 + v119;
  if (__OFADD__(v118, v119))
  {
    goto LABEL_104;
  }

  if (*(v115 + 24) >= v120)
  {
    if (v187.i8[0])
    {
      if ((v116 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v185.i64[0] = v117;
      LODWORD(v183) = v116;
      sub_246074CB4();
      v117 = v185.i64[0];
      if ((v183 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_51;
  }

  LODWORD(v183) = v116;
  sub_2460727D4(v120, v187.u32[0]);
  v121 = sub_245FC1BDC(v200);
  if ((v183 & 1) != (v122 & 1))
  {
    goto LABEL_107;
  }

  v117 = v121;
  if (v183)
  {
LABEL_51:
    v187.i64[0] = v233[0];
    v123 = *(v233[0] + 56);
    v185.i64[0] = v117;
    v183 = v117 * v189.i64[0];
    v124 = v198;
    sub_24608199C(v123 + v117 * v189.i64[0], v198, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v188(v124, 0, 1, v211);
    v125 = *(v124 + 400);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_245FB1254(0, *(v125 + 2) + 1, 1, v125);
    }

    v126 = v196;
    v128 = *(v125 + 2);
    v127 = *(v125 + 3);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      v182 = v128 + 1;
      v166 = v125;
      v167 = v128;
      v168 = sub_245FB1254((v127 > 1), v128 + 1, 1, v166);
      v129 = v182;
      v128 = v167;
      v126 = v196;
      v125 = v168;
    }

    *(v125 + 2) = v129;
    *&v125[4 * v128 + 32] = v90;
    v130 = v198;
    *(v198 + 400) = v125;
    v131 = v126;
    sub_245F8E7A4(v130, v126, &qword_27EE3ACE0, &unk_246098880);
    v132 = (v184.i64[0])(v131, 1, v211);
    v184.i64[0] = v210 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v132 == 1)
    {
      sub_245F8E744(v131, &qword_27EE3ACE0, &unk_246098880);
      v133 = v186.n128_u64[0];
      (v186.n128_u64[0])(*(v187.i64[0] + 48) + v185.i64[0] * v190, v214);
      sub_2460739C0(v185.i64[0], v187.i64[0]);
    }

    else
    {
      sub_24608199C(v131, v194, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      sub_24608199C(v194, *(v187.i64[0] + 56) + v183, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v133 = v186.n128_u64[0];
    }

    v133(v200, v214);
    sub_245F8E744(v198, &qword_27EE3ACE0, &unk_246098880);
    *(v3 + v212) = v187.i64[0];
    swift_endAccess();
    goto LABEL_59;
  }

LABEL_90:
  v188(v198, 1, 1, v211);
  __break(1u);
LABEL_91:

  v170 = v225;
  if (!v225)
  {
    v171 = sub_245FA3174();
    v172 = v219;
    v174 = v216;
    v173 = v217;
    (*(v219 + 16))(v216, v171, v217);
    v175 = sub_2460918D4();
    v176 = sub_246091FB4();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&v237[0] = v178;
      *v177 = 136380675;
      *(v177 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4720, v237);
      _os_log_impl(&dword_245F8A000, v175, v176, "ObjectCaptureSession.%{private}s: mobileSfM pose for the new camera shot is not consistent.", v177, 0xCu);
      sub_245F8E6F4(v178);
      MEMORY[0x24C1989D0](v178, -1, -1);
      MEMORY[0x24C1989D0](v177, -1, -1);
    }

    result = (*(v172 + 8))(v174, v173);
  }

  v179 = v220;
  v220->i64[0] = v170;
  v180 = v223;
  v179[1] = v224;
  v179[2] = v180;
  v181 = v221;
  v179[3] = v222;
  v179[4] = v181;
  return result;
}

uint64_t sub_2460619E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_246091A64();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_245FA3174();
  v39 = *(v8 + 16);
  v40 = v14;
  v39(v13);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v10;
    v19 = v8;
    v20 = v2;
    v21 = a1;
    v22 = v18;
    aBlock[0] = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, aBlock);
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Received mobileSfM pose updates for the camera shots.", v17, 0xCu);
    sub_245F8E6F4(v22);
    v23 = v22;
    a1 = v21;
    v2 = v20;
    v8 = v19;
    v10 = v38;
    MEMORY[0x24C1989D0](v23, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v24 = *(v8 + 8);
  v24(v13, v7);
  if (*(a1 + 16))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = a1;
    aBlock[4] = sub_24607BFB0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E0FE0;
    v26 = _Block_copy(aBlock);
    v27 = v2;

    v28 = v41;
    sub_246091A14();
    v47 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    v29 = v43;
    v30 = v46;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v28, v29, v26);
    _Block_release(v26);
    (*(v45 + 8))(v29, v30);
    (*(v42 + 8))(v28, v44);
  }

  else
  {
    (v39)(v10, v40, v7);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136380675;
      *(v35 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, aBlock);
      _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: Received empty list of mobileSfM pose updates for camera shots!", v35, 0xCu);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v35, -1, -1);

      v37 = v34;
    }

    else
    {

      v37 = v10;
    }

    return (v24)(v37, v7);
  }
}

uint64_t sub_246061FAC(char *a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v4 - 8);
  v204 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v207 = &v183 - v7;
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v183 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v183 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v183 - v19;
  MEMORY[0x28223BE20](v21);
  v210.i64[0] = &v183 - v22;
  MEMORY[0x28223BE20](v23);
  v209.i64[0] = &v183 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v183 - v26;
  MEMORY[0x28223BE20](v27);
  v206 = (&v183 - v28);
  v29 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v30 = *(v29 - 8);
  v211 = v29;
  v212 = v30;
  MEMORY[0x28223BE20](v29);
  v203 = &v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v183 - v33);
  MEMORY[0x28223BE20](v35);
  v213 = &v183 - v36;
  v214 = sub_246091834();
  v216 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v208 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v215 = &v183 - v40;
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(&v222, v39);
  if (v222.i64[0] == 15)
  {
    v201 = v8;
    v202 = v9;
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    sub_2460603F4(a2, &v222);
    v41 = v222.i64[0];
    v42 = a1;
    if (v222.i64[0])
    {
      v200 = a2;
      v198 = v224;
      v199 = v223;
      v196 = v226;
      v197 = v225;
      v43 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
      swift_beginAccess();
      v44 = *&v42[v43];
      if (v44[2].isa)
      {
        v45 = sub_245FFF3EC(v41);
        if (v46)
        {
          if (*(v44[7].isa + v45) == 1)
          {
            v47 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
            swift_beginAccess();
            v48 = *&v42[v47];
            if (*(v48 + 16))
            {
              v49 = sub_245FFF3EC(v41);
              if (v50)
              {
                v51 = *(v48 + 56);
                v52 = *(v216 + 16);
                v191 = *(v216 + 72);
                v192 = v52;
                v53 = v42;
                v54 = v214;
                v55 = v215;
                v193 = v216 + 16;
                v52(v215, (v51 + v191 * v49), v214);
                v56 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
                swift_beginAccess();
                v194 = v56;
                v195 = v53;
                v57 = *&v53[v56];
                if (*(v57 + 16))
                {

                  v58 = sub_245FC1BDC(v55);
                  if (v59)
                  {
                    v60 = *(v212 + 9);
                    v61 = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
                    sub_246081A04(*(v57 + 56) + v60 * v58, v34, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

                    v62 = v213;
                    sub_24608199C(v34, v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                    if ((*(v62 + 304) & 1) == 0)
                    {
                      v92 = sub_245FA3174();
                      v93 = v201;
                      v94 = v202;
                      v202[2](v17, v92, v201);
                      v95 = sub_2460918D4();
                      v96 = sub_246091FC4();
                      v97 = os_log_type_enabled(v95, v96);
                      v42 = v195;
                      if (v97)
                      {
                        v98 = swift_slowAlloc();
                        v99 = swift_slowAlloc();
                        v222.i64[0] = v99;
                        *v98 = 136380931;
                        *(v98 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v222.i64);
                        *(v98 + 12) = 2050;
                        *(v98 + 14) = v41;
                        _os_log_impl(&dword_245F8A000, v95, v96, "ObjectCaptureSession.%{private}s: Already computed world to object transform from\ncamera %{public}ld previously!", v98, 0x16u);
                        sub_245F8E6F4(v99);
                        MEMORY[0x24C1989D0](v99, -1, -1);
                        MEMORY[0x24C1989D0](v98, -1, -1);
                      }

                      (v94[1])(v17, v93);
                      goto LABEL_32;
                    }

                    v63 = v62 + *(v211 + 28);
                    v64 = *(v63 + 112);
                    v228 = *(v63 + 96);
                    v229 = v64;
                    v230 = *(v63 + 128);
                    v231 = *(v63 + 144);
                    v65 = *(v63 + 48);
                    v224 = *(v63 + 32);
                    v225 = v65;
                    v66 = *(v63 + 80);
                    v226 = *(v63 + 64);
                    v227 = v66;
                    v67 = *(v63 + 16);
                    v222 = *v63;
                    v223 = v67;
                    v68 = sub_245F97C14(&v222);
                    v69 = v202;
                    v42 = v195;
                    if (v68 == 1 || (v231 & 1) != 0)
                    {
                      v70 = sub_245FA3174();
                      v71 = v201;
                      v69[2](v20, v70, v201);
                      v72 = sub_2460918D4();
                      v73 = sub_246091FB4();
                      if (os_log_type_enabled(v72, v73))
                      {
                        v74 = swift_slowAlloc();
                        v75 = swift_slowAlloc();
                        *&v217[0] = v75;
                        *v74 = 136380931;
                        *(v74 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v217);
                        *(v74 + 12) = 2050;
                        *(v74 + 14) = v41;
                        _os_log_impl(&dword_245F8A000, v72, v73, "ObjectCaptureSession.%{private}s: Not computing world to object transform from mobileSfM because camera %{public}ld does not contain segmentId!", v74, 0x16u);
                        sub_245F8E6F4(v75);
                        MEMORY[0x24C1989D0](v75, -1, -1);
                        MEMORY[0x24C1989D0](v74, -1, -1);
                      }

                      (v69[1])(v20, v71);
LABEL_32:
                      (*(v216 + 8))(v215, v214);
LABEL_33:
                      sub_246081A6C(v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
LABEL_27:
                      v90 = v200;
                      v91 = v42;
                      return sub_2460635EC(v90, v91);
                    }

                    v100 = *(&v230 + 1);
                    v101 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID;
                    if (*(&v230 + 1) != *&v195[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID])
                    {
                      v112 = sub_245FA3174();
                      v114 = v201;
                      v113 = v202;
                      v115 = v210.i64[0];
                      v202[2](v210.i64[0], v112, v201);
                      v212 = v42;
                      v116 = sub_2460918D4();
                      v117 = sub_246091FB4();
                      if (os_log_type_enabled(v116, v117))
                      {
                        v118 = swift_slowAlloc();
                        v119 = v42;
                        v120 = swift_slowAlloc();
                        *&v217[0] = v120;
                        *v118 = 136381443;
                        *(v118 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v217);
                        *(v118 + 12) = 2050;
                        *(v118 + 14) = v100;
                        *(v118 + 22) = 2050;
                        *(v118 + 24) = v41;
                        *(v118 + 32) = 2050;
                        *(v118 + 34) = *&v119[v101];
                        v121 = v212;

                        _os_log_impl(&dword_245F8A000, v116, v117, "ObjectCaptureSession.%{private}s: Not computing world to object transform from mobileSfM because segmentId = %{public}ld of the latest camera %{public}ld does not match the current segmentId = %{public}ld", v118, 0x2Au);
                        sub_245F8E6F4(v120);
                        MEMORY[0x24C1989D0](v120, -1, -1);
                        MEMORY[0x24C1989D0](v118, -1, -1);

                        (v113[1])(v210.i64[0], v201);
                      }

                      else
                      {
                        v121 = v212;

                        (v113[1])(v115, v114);
                      }

                      (*(v216 + 8))(v215, v214);
                      sub_246081A6C(v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                      v90 = v200;
                      goto LABEL_43;
                    }

                    v102 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
                    swift_beginAccess();
                    v103 = *&v42[v102];
                    v34 = v202;
                    v104 = v215;
                    v105 = v209.i64[0];
                    if (*(v103 + 16))
                    {

                      v106 = sub_245FC1BDC(v104);
                      if (v107)
                      {
                        v108 = *(*(v103 + 56) + 8 * v106);

                        v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] = 1;
                        [v108 transform];
                        v234 = __invert_f4(v233);
                        v109.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v199, v234.columns[0].f32[0]), v198, *v234.columns[0].f32, 1), v197, v234.columns[0], 2), v196, v234.columns[0], 3);
                        v109.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v199, v234.columns[1].f32[0]), v198, *v234.columns[1].f32, 1), v197, v234.columns[1], 2), v196, v234.columns[1], 3);
                        v109.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v199, v234.columns[2].f32[0]), v198, *v234.columns[2].f32, 1), v197, v234.columns[2], 2), v196, v234.columns[2], 3);
                        v109.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v199, v234.columns[3].f32[0]), v198, *v234.columns[3].f32, 1), v197, v234.columns[3], 2), v196, v234.columns[3], 3);
                        v221 = 0;
                        v110 = &v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform];
                        *v110 = v109;
                        v110[64] = 0;
                        v111 = &v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform];
                        if (v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform + 64])
                        {
                          *v111 = v109;
                          v111[1].columns[0].i8[0] = 0;
                        }

                        else
                        {
                          v109 = *v111;
                        }

                        v235 = __invert_f4(v109);
                        if (v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64])
                        {
                          (*(v216 + 8))(v104, v214, v235.columns[0], v235.columns[1], v235.columns[2], v235.columns[3]);

                          sub_246081A6C(v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                          goto LABEL_27;
                        }

                        v189 = v235.columns[0];
                        v190 = v235.columns[1];
                        v209 = v235.columns[2];
                        v210 = v235.columns[3];
                        if (v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64])
                        {
                          __break(1u);
                          goto LABEL_74;
                        }

                        v184 = v60;
                        *v128.columns[0].i64 = sub_24602172C(*&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 16], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 32], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 48], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32], *&v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48]);
                        if (v110[64])
                        {
                          __break(1u);
LABEL_77:
                          (*(v212 + 7))(v105, 1, 1, v211);
                          __break(1u);
                          goto LABEL_78;
                        }

                        v129 = *(v110 + 3);
                        v187 = *(v110 + 2);
                        v188 = v129;
                        v130 = *(v110 + 1);
                        v185 = *v110;
                        v186 = v130;
                        v236 = __invert_f4(v128);
                        v131 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v236.columns[0], v189.f32[0]), v236.columns[1], *v189.f32, 1), v236.columns[2], v189, 2), v236.columns[3], v189, 3);
                        v132 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v236.columns[0], v190.f32[0]), v236.columns[1], *v190.f32, 1), v236.columns[2], v190, 2), v236.columns[3], v190, 3);
                        v133 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v236.columns[0], v209.f32[0]), v236.columns[1], *v209.f32, 1), v236.columns[2], v209, 2), v236.columns[3], v209, 3);
                        v236.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v236.columns[0], v210.f32[0]), v236.columns[1], *v210.f32, 1), v236.columns[2], v210, 2), v236.columns[3], v210, 3);
                        v236.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v185.f32[0]), v132, *v185.f32, 1), v133, v185, 2), v236.columns[0], v185, 3);
                        v236.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v186.f32[0]), v132, *v186.f32, 1), v133, v186, 2), v236.columns[0], v186, 3);
                        v236.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v187.f32[0]), v132, *v187.f32, 1), v133, v187, 2), v236.columns[0], v187, 3);
                        v134 = v188;
                        v135 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v188.f32[0]), v132, *v188.f32, 1), v133, v188, 2);
                        v220 = 0;
                        v136 = &v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM];
                        *v136 = v236.columns[1];
                        *(v136 + 1) = v236.columns[2];
                        *(v136 + 2) = v236.columns[3];
                        *(v136 + 3) = vmlaq_laneq_f32(v135, v236.columns[0], v134, 3);
                        v136[64] = 0;
                        v137 = sub_245FA3174();
                        v138 = v34[2];
                        v9 = v206;
                        v209.i64[0] = v137;
                        a2 = v201;
                        v210.i64[0] = (v34 + 2);
                        v190.i64[0] = v138;
                        (v138)(v206);
                        v42 = v42;
                        v44 = sub_2460918D4();
                        v139 = sub_246091FC4();
                        v140 = os_log_type_enabled(v44, v139);
                        v183 = v108;
                        if (v140)
                        {
                          v141 = swift_slowAlloc();
                          v142 = swift_slowAlloc();
                          v219 = v142;
                          *v141 = 136380931;
                          *(v141 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, &v219);
                          *(v141 + 12) = 2082;
                          v143 = *v136;
                          v188 = *(v136 + 1);
                          v189 = v143;
                          v144 = *(v136 + 2);
                          v186 = *(v136 + 3);
                          v187 = v144;
                          v145 = v136[64];

                          if (v145)
                          {
LABEL_78:
                            __break(1u);
                            goto LABEL_79;
                          }

                          v217[0] = v189;
                          v217[1] = v188;
                          v217[2] = v187;
                          v217[3] = v186;
                          type metadata accessor for simd_float4x4(0);
                          v146 = sub_246091C54();
                          v148 = sub_245F8D3C0(v146, v147, &v219);

                          *(v141 + 14) = v148;
                          _os_log_impl(&dword_245F8A000, v44, v139, "ObjectCaptureSession.%{private}s: Updated world to object transform %{public}s", v141, 0x16u);
                          swift_arrayDestroy();
                          MEMORY[0x24C1989D0](v142, -1, -1);
                          MEMORY[0x24C1989D0](v141, -1, -1);

                          v149 = v201;
                          v150 = v202[1];
                          v151 = v9;
LABEL_60:
                          v206 = v150;
                          (v150)(v151, v149);
                          sub_24603D144();
                          v42[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
                          v61 = v194;
                          v152 = v195;
                          swift_beginAccess();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v154 = v208;
                          v62 = v214;
                          v192(v208, v215, v214);
                          v219 = *(v61 + v152);
                          v155 = v219;
                          *(v61 + v152) = 0x8000000000000000;
                          v60 = sub_245FC1BDC(v154);
                          v157 = *(v155 + 16);
                          v158 = (v156 & 1) == 0;
                          v159 = v157 + v158;
                          v105 = v207;
                          if (!__OFADD__(v157, v158))
                          {
                            LOBYTE(v61) = v156;
                            if (*(v155 + 24) < v159)
                            {
                              sub_2460727D4(v159, isUniquelyReferenced_nonNull_native);
                              v160 = sub_245FC1BDC(v208);
                              if ((v61 & 1) != (v161 & 1))
                              {
LABEL_79:
                                result = sub_246092424();
                                __break(1u);
                                return result;
                              }

                              v60 = v160;
                              goto LABEL_65;
                            }

                            if (isUniquelyReferenced_nonNull_native)
                            {
LABEL_65:
                              v162 = v204;
                              v204 = v42;
                              if (v61)
                              {
                                v218 = 0;
                                v163 = v219;
                                v164 = v60 * v184;
                                sub_24608199C(*(v219 + 56) + v60 * v184, v105, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                                v165 = v211;
                                v166 = v212;
                                (*(v212 + 7))(v105, 0, 1, v211);
                                v167 = v198;
                                *(v105 + 240) = v199;
                                *(v105 + 256) = v167;
                                v168 = v196;
                                *(v105 + 272) = v197;
                                *(v105 + 288) = v168;
                                *(v105 + 304) = v218;
                                sub_245F8E7A4(v105, v162, &qword_27EE3ACE0, &unk_246098880);
                                if ((*(v166 + 6))(v162, 1, v165) == 1)
                                {
                                  sub_245F8E744(v162, &qword_27EE3ACE0, &unk_246098880);
                                  v169 = *(v216 + 8);
                                  v169(*(v163 + 48) + v60 * v191, v62);
                                  sub_2460739C0(v60, v163);
                                }

                                else
                                {
                                  v170 = v203;
                                  sub_24608199C(v162, v203, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                                  sub_24608199C(v170, *(v163 + 56) + v164, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                                  v169 = *(v216 + 8);
                                }

                                v169(v208, v62);
                                v171 = v209.i64[0];
                                v172 = v190.i64[0];
                                sub_245F8E744(v105, &qword_27EE3ACE0, &unk_246098880);
                                *(v194 + v195) = v163;
                                swift_endAccess();
                                v173 = v205;
                                v174 = v201;
                                v172(v205, v171, v201);
                                v175 = sub_2460918D4();
                                v176 = sub_246091FC4();
                                if (os_log_type_enabled(v175, v176))
                                {
                                  v177 = swift_slowAlloc();
                                  v178 = v62;
                                  v179 = swift_slowAlloc();
                                  *&v217[0] = v179;
                                  *v177 = 136380675;
                                  *(v177 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v217);
                                  _os_log_impl(&dword_245F8A000, v175, v176, "ObjectCaptureSession.%{private}s: Added initial camera to mobileSfM transform to a new camera shot.", v177, 0xCu);
                                  sub_245F8E6F4(v179);
                                  MEMORY[0x24C1989D0](v179, -1, -1);
                                  MEMORY[0x24C1989D0](v177, -1, -1);

                                  (v206)(v173, v174);
                                  v180 = v215;
                                  v181 = v178;
                                }

                                else
                                {

                                  (v206)(v173, v174);
                                  v180 = v215;
                                  v181 = v62;
                                }

                                v169(v180, v181);
                                v182 = v200;
                                v121 = v204;
                                sub_246081A6C(v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
                                v90 = v182;
LABEL_43:
                                v91 = v121;
                                return sub_2460635EC(v90, v91);
                              }

                              goto LABEL_77;
                            }

LABEL_75:
                            sub_246074CB4();
                            goto LABEL_65;
                          }

LABEL_74:
                          __break(1u);
                          goto LABEL_75;
                        }

LABEL_59:

                        v150 = v34[1];
                        v151 = v9;
                        v149 = a2;
                        goto LABEL_60;
                      }
                    }

                    v122 = sub_245FA3174();
                    v123 = v201;
                    v34[2](v105, v122, v201);
                    v124 = sub_2460918D4();
                    v125 = sub_246091FB4();
                    if (os_log_type_enabled(v124, v125))
                    {
                      v126 = swift_slowAlloc();
                      v127 = swift_slowAlloc();
                      *&v217[0] = v127;
                      *v126 = 136380675;
                      *(v126 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v217);
                      _os_log_impl(&dword_245F8A000, v124, v125, "ObjectCaptureSession.%{private}s: Shot anchor does not exist for the current camera pose!", v126, 0xCu);
                      sub_245F8E6F4(v127);
                      MEMORY[0x24C1989D0](v127, -1, -1);
                      MEMORY[0x24C1989D0](v126, -1, -1);
                    }

                    (v34[1])(v105, v123);
                    (*(v216 + 8))(v104, v214);
                    goto LABEL_33;
                  }

                  v55 = v215;
                }

                (*(v216 + 8))(v55, v54);
                v42 = v195;
              }
            }

            v83 = sub_245FA3174();
            v84 = v201;
            v85 = v202;
            v202[2](v14, v83, v201);
            v86 = sub_2460918D4();
            v87 = sub_246091FB4();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v222.i64[0] = v89;
              *v88 = 136380675;
              *(v88 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v222.i64);
              _os_log_impl(&dword_245F8A000, v86, v87, "ObjectCaptureSession.%{private}s: Not computing world to object transform from mobileSfM because metadata for the latest shot is invalid!", v88, 0xCu);
              sub_245F8E6F4(v89);
              MEMORY[0x24C1989D0](v89, -1, -1);
              MEMORY[0x24C1989D0](v88, -1, -1);
            }

            (v85[1])(v14, v84);
            goto LABEL_27;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }

    return sub_2460635EC(a2, a1);
  }

  else
  {
    sub_246077B30(v222.i64[0]);
    sub_246077B30(0xF);
    v76 = sub_245FA3174();
    v9[2](v11, v76, v8);
    v77 = sub_2460918D4();
    v78 = sub_246091FB4();
    v79 = v9;
    if (os_log_type_enabled(v77, v78))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v222.i64[0] = v81;
      *v80 = 136380675;
      *(v80 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, v222.i64);
      _os_log_impl(&dword_245F8A000, v77, v78, "ObjectCaptureSession.%{private}s: Session not in scanning mode!", v80, 0xCu);
      sub_245F8E6F4(v81);
      MEMORY[0x24C1989D0](v81, -1, -1);
      MEMORY[0x24C1989D0](v80, -1, -1);
    }

    return (v79[1])(v11, v8);
  }
}

uint64_t sub_2460635EC(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v69 - v10;
  v11 = sub_246091834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v81 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;

  v94 = v21;
  swift_beginAccess();
  v93 = v22;
  swift_beginAccess();
  v23 = 0;
  v24 = (v18 + 63) >> 6;
  v88 = v12 + 16;
  v86 = (v84 + 56);
  v77 = (v84 + 48);
  v82 = (v12 + 8);
  v85 = a2;
  while (v20)
  {
    v25 = v20;
LABEL_10:
    v20 = (v25 - 1) & v25;
    v27 = *(a2 + v94);
    if (*(v27 + 16))
    {
      v28 = __clz(__rbit64(v25)) | (v23 << 6);
      v29 = *(a1 + 48);
      v30 = (*(a1 + 56) + (v28 << 6));
      v31 = *v30;
      v91 = v30[1];
      v92 = v31;
      v32 = v30[2];
      v89 = v30[3];
      v90 = v32;
      v33 = sub_245FFF3EC(*(v29 + 8 * v28));
      if (v34)
      {
        v35 = *(v27 + 56);
        v79 = *(v12 + 72);
        v36 = a2;
        v37 = *(v12 + 16);
        v37(v16, v35 + v79 * v33, v11);
        v38 = *(v36 + v93);
        if (!*(v38 + 16))
        {
          goto LABEL_20;
        }

        v39 = sub_245FC1BDC(v16);
        if (v40)
        {
          v73 = a1;
          v71 = v12;
          v41 = *(v38 + 56);
          v42 = v84;
          v69 = *(v84 + 72);
          v76 = v11;
          v43 = v83;
          sub_246081A04(v41 + v69 * v39, v83, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

          v74 = *(v42 + 56);
          v74(v43, 0, 1, v87);
          sub_245F8E744(v43, &qword_27EE3ACE0, &unk_246098880);
          v44 = v85;
          v45 = v93;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v81;
          v70 = v16;
          v37(v81, v16, v76);
          v96 = *(v44 + v45);
          v47 = v96;
          *(v44 + v45) = 0x8000000000000000;
          v49 = sub_245FC1BDC(v46);
          v50 = *(v47 + 16);
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
          {
            goto LABEL_30;
          }

          v53 = v48;
          if (*(v47 + 24) < v52)
          {
            sub_2460727D4(v52, isUniquelyReferenced_nonNull_native);
            v54 = sub_245FC1BDC(v81);
            a1 = v73;
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_32;
            }

            v49 = v54;
            goto LABEL_18;
          }

          v56 = v78;
          a1 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_246074CB4();
LABEL_18:
            v56 = v78;
          }

          if ((v53 & 1) == 0)
          {
            goto LABEL_31;
          }

          v95 = 0;
          v58 = v96;
          v59 = *(v96 + 56);
          v73 = v49 * v69;
          v60 = v80;
          sub_24608199C(v59 + v49 * v69, v80, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v61 = v87;
          v74(v60, 0, 1, v87);
          v62 = v91;
          *(v60 + 320) = v92;
          *(v60 + 336) = v62;
          v63 = v89;
          *(v60 + 352) = v90;
          *(v60 + 368) = v63;
          *(v60 + 384) = v95;
          sub_245F8E7A4(v60, v56, &qword_27EE3ACE0, &unk_246098880);
          if ((*v77)(v56, 1, v61) == 1)
          {
            sub_245F8E744(v56, &qword_27EE3ACE0, &unk_246098880);
            v64 = *(v58 + 48) + v49 * v79;
            *&v92 = v58;
            v65 = *v82;
            v11 = v76;
            (*v82)(v64, v76);
            sub_2460739C0(v49, v92);
            v65(v81, v11);
            v58 = v92;
          }

          else
          {
            v66 = v75;
            sub_24608199C(v56, v75, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            sub_24608199C(v66, *(v58 + 56) + v73, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v65 = *v82;
            v11 = v76;
            (*v82)(v81, v76);
          }

          sub_245F8E744(v80, &qword_27EE3ACE0, &unk_246098880);
          v67 = v85;
          *(v85 + v93) = v58;
          swift_endAccess();
          v16 = v70;
          v65(v70, v11);
          a2 = v67;
          v12 = v71;
        }

        else
        {

LABEL_20:
          (*v82)(v16, v11);
          v57 = v83;
          (*v86)(v83, 1, 1, v87);
          sub_245F8E744(v57, &qword_27EE3ACE0, &unk_246098880);
          a2 = v85;
        }
      }
    }
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
    }

    v25 = *(v17 + 8 * v26);
    ++v23;
    if (v25)
    {
      v23 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  v74(v80, 1, 1, v87);
  __break(1u);
LABEL_32:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_246063E70(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460919F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091A64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v25[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v26 = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    aBlock[4] = sub_24607BFB8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1030;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    sub_246091A14();
    v27 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v15, v10, v17);
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v26);
  }

  else
  {
    v20 = sub_245FA3174();
    (*(v4 + 16))(v6, v20, v3);
    v21 = sub_2460918D4();
    v22 = sub_246091F94();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, aBlock);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Received empty list of invalid mobileSfM pose for camera shots!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2460642D0(void *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v54 = sub_246091834();
  v58 = *(v54 - 8);
  v14 = MEMORY[0x28223BE20](v54);
  v57 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(v61, v14);
  if (v61[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v16 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
    if (v16)
    {
      v17 = *(a2 + 16);
      if (v17)
      {
        v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
        v19 = (a2 + 32);

        v59 = v18;
        swift_beginAccess();
        v20 = v57;
        v55 = (v58 + 8);
        v56 = v58 + 16;
        v52 = (v5 + 8);
        v53 = (v5 + 16);
        v50 = "meraTransformMap:)";
        *&v21 = 136381187;
        v49 = v21;
        v22 = v54;
        v51 = v4;
        do
        {
          v24 = *v19++;
          v23 = v24;
          v25 = *(a1 + v59);
          if (*(v25 + 16))
          {
            v26 = sub_245FFF3EC(v23);
            if (v27)
            {
              (*(v58 + 16))(v20, *(v25 + 56) + *(v58 + 72) * v26, v22);
              if ((*(*v16 + 512))(v20))
              {
                v28 = sub_245FA3174();
                (*v53)(v13, v28, v4);

                v29 = v13;
                v30 = sub_2460918D4();
                v31 = sub_246091FC4();
                if (os_log_type_enabled(v30, v31))
                {
                  v32 = swift_slowAlloc();
                  v33 = swift_slowAlloc();
                  v60 = v33;
                  *v32 = v49;
                  *(v32 + 4) = sub_245F8D3C0(0xD00000000000002BLL, v50 | 0x8000000000000000, &v60);
                  *(v32 + 12) = 2050;
                  *(v32 + 14) = v23;
                  *(v32 + 22) = 2050;
                  *(v32 + 24) = (*(*v16 + 888))();

                  _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Deleted unknown state pose from AC pose graph: sampleID: %{public}ld, number of invalid AC shots: %{public}ld", v32, 0x20u);
                  sub_245F8E6F4(v33);
                  v34 = v33;
                  v22 = v54;
                  MEMORY[0x24C1989D0](v34, -1, -1);
                  v35 = v32;
                  v4 = v51;
                  MEMORY[0x24C1989D0](v35, -1, -1);
                }

                else
                {
                }

                (*v52)(v29, v4);
                v20 = v57;
                (*v55)(v57, v22);
                v13 = v29;
              }

              else
              {
                (*v55)(v20, v22);
              }
            }
          }

          --v17;
        }

        while (v17);
      }

      else
      {
      }

      sub_24606BCEC();
      v60 = (*(*v16 + 888))();
      sub_246091924();
    }

    else
    {
      v43 = sub_245FA3174();
      (*(v5 + 16))(v10, v43, v4);
      v44 = sub_2460918D4();
      v45 = v4;
      v46 = sub_246091FB4();
      if (os_log_type_enabled(v44, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v61[0] = v48;
        *v47 = 136380675;
        *(v47 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, v61);
        _os_log_impl(&dword_245F8A000, v44, v46, "ObjectCaptureSession.%{private}s: Failed to update invalid shot pose - capture manager has not been initialized!", v47, 0xCu);
        sub_245F8E6F4(v48);
        MEMORY[0x24C1989D0](v48, -1, -1);
        MEMORY[0x24C1989D0](v47, -1, -1);
      }

      return (*(v5 + 8))(v10, v45);
    }
  }

  else
  {
    sub_246077B30(v61[0]);
    sub_246077B30(0xF);
    v36 = sub_245FA3174();
    (*(v5 + 16))(v7, v36, v4);
    v37 = sub_2460918D4();
    v38 = v4;
    v39 = sub_246091FB4();
    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61[0] = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, v61);
      _os_log_impl(&dword_245F8A000, v37, v39, "ObjectCaptureSession.%{private}s: Session not in scanning mode!", v40, 0xCu);
      sub_245F8E6F4(v41);
      MEMORY[0x24C1989D0](v41, -1, -1);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    return (*(v5 + 8))(v7, v38);
  }
}

uint64_t sub_246064A5C(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24607BFC0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1080;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_246091A14();
  v16 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_246064D38(uint64_t a1, void *a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24606B918();
  v14 = a2;

  sub_246091924();

  v7 = sub_245FA3174();
  (*(v4 + 16))(v6, v7, v3);

  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A46F0, &v14);
    *(v10 + 12) = 2050;
    *(v10 + 14) = a2[2];

    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Published %{public}ld updated mesh anchors", v10, 0x16u);
    sub_245F8E6F4(v11);
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_246064F60(char a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1 & 1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_24607C000;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E10D0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  sub_246091A14();
  v16 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_24606523C(char a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_245FA3174();
  v40 = *(v5 + 16);
  v41 = v11;
  v40(v10);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v5;
    v15 = v14;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v15 = 136380931;
    *(v15 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A46C0, &v43);
    *(v15 + 12) = 2082;
    v38 = a1 & 1;
    v42 = a1 & 1;
    v16 = sub_246091C54();
    v18 = a2;
    v19 = v4;
    v20 = v7;
    v21 = sub_245F8D3C0(v16, v17, &v43);

    *(v15 + 14) = v21;
    v7 = v20;
    v4 = v19;
    a2 = v18;
    _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: Received request from area mode mesh manager\nto update scan extent to: %{public}s.", v15, 0x16u);
    v22 = v37;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    v23 = v15;
    v24 = v39;
    MEMORY[0x24C1989D0](v23, -1, -1);

    v25 = *(v24 + 8);
    v25(v10, v4);
    v26 = v38;
  }

  else
  {

    v25 = *(v5 + 8);
    v25(v10, v4);
    v26 = a1 & 1;
  }

  *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent) = v26;
  sub_246053240();
  v28 = v27;
  [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v27 options:8];
  (v40)(v7, v41, v4);
  v29 = sub_2460918D4();
  v30 = sub_246091FC4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v7;
    v33 = swift_slowAlloc();
    v43 = v33;
    *v31 = 136380675;
    *(v31 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A46C0, &v43);
    _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Restarted scene reconstruction with updated voxel size.", v31, 0xCu);
    sub_245F8E6F4(v33);
    MEMORY[0x24C1989D0](v33, -1, -1);
    MEMORY[0x24C1989D0](v31, -1, -1);

    v34 = v32;
  }

  else
  {

    v34 = v7;
  }

  return (v25)(v34, v4);
}

uint64_t sub_246065620(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v36 = a3;
  v37 = a1;
  v35 = a2;
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245FA3174();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v8;
    v22 = v5;
    v23 = v4;
    v24 = v21;
    aBlock[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, aBlock);
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Received finalize input callback.", v20, 0xCu);
    sub_245F8E6F4(v24);
    v25 = v24;
    v4 = v23;
    v5 = v22;
    v8 = v33;
    MEMORY[0x24C1989D0](v25, -1, -1);
    v26 = v20;
    v6 = v34;
    MEMORY[0x24C1989D0](v26, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 16) = v4;
  *(v27 + 24) = v28;
  *(v27 + 32) = v36 & 1;
  *(v27 + 33) = v37 & 1;
  aBlock[4] = sub_24607C044;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1120;
  v29 = _Block_copy(aBlock);
  v30 = v4;
  sub_246091A14();
  v40 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v8, v29);
  _Block_release(v29);
  (*(v6 + 8))(v8, v5);
  (*(v38 + 8))(v11, v39);
}

uint64_t sub_246065AA8(char *a1, uint64_t a2, int a3, int a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v34[-v9];
  v11 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
  v12 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
  if (v12)
  {
    v13 = *(*v12 + 704);

    v13(v14);
  }

  v15 = sub_245FA3174();
  v16 = *(v6 + 16);
  v39 = v15;
  v40 = v6 + 16;
  v38 = v16;
  v16(v10);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  v19 = &off_246096000;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43[0] = v21;
    *v20 = 136380675;
    v19 = &off_246096000;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, v43);
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Mobile sfm has been disabled gracefully.", v20, 0xCu);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v22 = v10;
  v23 = *(v6 + 8);
  v23(v22, v5);
  *&a1[v11] = 0;

  v24 = &a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  swift_beginAccess();
  *v24 = v36;
  v24[8] = v37 & 1;
  sub_2460378FC();
  v25 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing];
  if (v25 != 18)
  {
    if (v35)
    {
      sub_2460818E4(*&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing]);
    }

    else
    {
      if (v25 == 17)
      {
        sub_2460818E4(0x11);
        sub_246077B30(0x11);
        sub_246077B30(0x11);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_246091984();

        v26 = v42;
        swift_getKeyPath();
        swift_getKeyPath();
        v42 = 5;
        a1;
        sub_246091994();
        v42 = v26;
        sub_246036D70(&v42);
        sub_246077B30(v26);
        goto LABEL_12;
      }

      sub_2460818E4(*&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing]);
      sub_2460818E4(v25);
      sub_246077B30(v25);
      sub_246077B30(0x11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2460818E4(v25);
    sub_246091984();

    v27 = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v25;
    a1;
    sub_246091994();
    v42 = v27;
    sub_246036D70(&v42);
    sub_246079A74(v25);
    sub_246077B30(v27);
  }

LABEL_12:
  v28 = v41;
  v38(v41, v39, v5);
  v29 = sub_2460918D4();
  v30 = sub_246091FC4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = *(v19 + 299);
    *(v31 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, &v42);
    _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: MobileSfM exited gracefully and the snapshot was written if applicable.", v31, 0xCu);
    sub_245F8E6F4(v32);
    MEMORY[0x24C1989D0](v32, -1, -1);
    MEMORY[0x24C1989D0](v31, -1, -1);
  }

  return (v23)(v28, v5);
}

uint64_t sub_246066024(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24607C0BC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1170;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_246091A14();
  v16 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_246066300(void *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(&v15, v6);
  if (v15 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v9 = sub_245FA3174();
    (*(v5 + 16))(v8, v9, v4);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136380675;
      *(v12 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A4690, &v15);
      _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Updated mobileSfM point cloud.", v12, 0xCu);
      sub_245F8E6F4(v13);
      MEMORY[0x24C1989D0](v13, -1, -1);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer) = a2;
  }

  else
  {
    sub_246077B30(v15);
    sub_246077B30(0xF);
  }
}

id sub_24606656C@<X0>(char *a1@<X8>)
{
  result = [v1 trackingState];
  if (!result)
  {
    v4 = 4;
LABEL_9:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    result = [v1 trackingStateReason];
    if (result >= 5)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x302010002uLL >> (8 * result);
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    v4 = 5;
    goto LABEL_9;
  }

  result = sub_246092344();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didAdd:)(ARSession _, Swift::OpaquePointer didAdd)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_246091A64();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245FA3174();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();
  if (os_log_type_enabled(v15, v16))
  {
    isa = _.super.isa;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136380931;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A2850, aBlock);
    *(v17 + 12) = 2050;
    if (didAdd._rawValue >> 62)
    {
      v19 = sub_246092354();
    }

    else
    {
      v19 = *((didAdd._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 14) = v19;

    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: has been called. #anchors = %{public}ld", v17, 0x16u);
    sub_245F8E6F4(v18);
    MEMORY[0x24C1989D0](v18, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);

    (*(v11 + 8))(v13, v10);
    _.super.isa = isa;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  if ((*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos) & 1) == 0)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = didAdd;
    *(v20 + 24) = v3;
    *(v20 + 32) = _;
    aBlock[4] = sub_24607CBD4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E11C0;
    v21 = _Block_copy(aBlock);

    v22 = v3;
    v23 = _.super.isa;
    sub_246091A14();
    v33 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    v24 = v29;
    v25 = v32;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v9, v24, v21);
    _Block_release(v21);
    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v9, v30);
  }
}

void sub_246066BA0(unint64_t a1, unint64_t a2, void *a3)
{
  v42 = a3;
  v49 = sub_246091834();
  v44 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v7 = sub_246092354();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v9 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
      v10 = a1 & 0xC000000000000001;
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
      v46 = a2;
      v43 = v44 + 16;
      v47 = a1;
      v48 = (v44 + 8);
      v11 = 0x277CE5000uLL;
      v12 = &off_278E99000;
      do
      {
        if (v10)
        {
          v16 = MEMORY[0x24C196C20](v8, a1, v5);
        }

        else
        {
          if (v8 >= *(v45 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(a1 + 8 * v8 + 32);
        }

        v17 = v16;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v50 = v8 + 1;
          v51 = v18;
          v19 = [v18 v12[75]];
          v20 = v53;
          sub_246091814();

          swift_beginAccess();
          v52 = v17;
          v21 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *(a2 + v9);
          a1 = v54;
          *(a2 + v9) = 0x8000000000000000;
          a2 = sub_245FC1BDC(v20);
          v24 = *(a1 + 16);
          v25 = (v23 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_23;
          }

          v27 = v23;
          if (*(a1 + 24) >= v26)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
            }
          }

          else
          {
            sub_2460735E4(v26, isUniquelyReferenced_nonNull_native, &unk_27EE3ADB0, &qword_24609AD50);
            v28 = sub_245FC1BDC(v53);
            if ((v27 & 1) != (v29 & 1))
            {
              sub_246092424();
              __break(1u);
              return;
            }

            a2 = v28;
          }

          v17 = v52;
          a1 = v54;
          if (v27)
          {
            v13 = *(v54 + 56);
            v14 = *(v13 + 8 * a2);
            *(v13 + 8 * a2) = v51;

            (*v48)(v53, v49);
          }

          else
          {
            v30 = v11;
            v31 = v10;
            v32 = v9;
            v33 = v7;
            *(v54 + 8 * (a2 >> 6) + 64) |= 1 << a2;
            v34 = v44;
            v35 = v53;
            v36 = v49;
            (*(v44 + 16))(*(a1 + 48) + *(v44 + 72) * a2, v53, v49);
            *(*(a1 + 56) + 8 * a2) = v51;
            (*(v34 + 8))(v35, v36);
            v37 = *(a1 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            *(a1 + 16) = v39;
            v7 = v33;
            v9 = v32;
            v10 = v31;
            v11 = v30;
            v12 = &off_278E99000;
            v17 = v52;
          }

          a2 = v46;
          *(v46 + v9) = a1;

          swift_endAccess();
          a1 = v47;
          v15 = v50;
        }

        ++v8;
      }

      while (v15 != v7);
    }
  }

  v40 = [v42 currentFrame];
  if (v40)
  {
    v41 = v40;
    sub_246066F7C(v40);
  }

  sub_246067044();
}

void sub_246066F7C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  if (v3)
  {
    v7 = v3;
    v5 = [a1 camera];
    sub_24606656C(&v9);

    v8 = 5;
    if (static CameraTrackingState.== infix(_:_:)(&v9, &v8))
    {
      v6 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane);
      *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane) = v3;
    }

    else
    {
      v6 = v7;
    }
  }
}

void sub_246067044()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x410))(v72, v12);
  v15 = &unk_27EE3D000;
  v16 = &unk_27EE3D000;
  if (v72[0].n128_u64[0] != 15)
  {
    sub_246077B30(v72[0].n128_u64[0]);
    sub_246077B30(0xF);
    v26 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
    if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
    {
      v27 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = 0;
    }

    else
    {
      v28 = v26[2].n128_u8[0];
      v29 = v26[1];
      v72[0] = *v26;
      v72[1] = v29;
      v73 = v28 & 1;
      v30 = sub_24606B408(v72);
      v27 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = v30;
    }

    goto LABEL_29;
  }

  v66 = v2;
  sub_246077B30(0xF);
  sub_246077B30(0xF);
  v17 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane;
  v18 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  swift_beginAccess();
  if (v18)
  {
    v20 = *(v1 + v19);
    v21 = v18;

    v22 = [v21 identifier];
    sub_246091814();

    if (*(v20 + 16))
    {
      v23 = sub_245FC1BDC(v14);
      if (v24)
      {
        v25 = *(*(v20 + 56) + 8 * v23);

        (*(v11 + 8))(v14, v10);

        goto LABEL_12;
      }
    }

    (*(v11 + 8))(v14, v10);
  }

  v25 = 0;
LABEL_12:
  v31 = *(v1 + v17);
  *(v1 + v17) = v25;

  v16 = &unk_27EE3D000;
  v32 = v68;
  if (!*(v1 + v17))
  {
    v41 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane);
    v15 = &unk_27EE3D000;
    if (v41)
    {
      v32 = v41;
      v42 = sub_245FA3174();
      v44 = v66;
      v43 = v67;
      v67[2](v9, v42, v66);
      v45 = sub_2460918D4();
      v46 = sub_246091FC4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v68 = v32;
        v48 = v47;
        v49 = swift_slowAlloc();
        v71[0] = v49;
        *v48 = 136380675;
        *(v48 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v71);
        _os_log_impl(&dword_245F8A000, v45, v46, "ObjectCaptureSession.%{private}s: Plane under the object was removed, looking for another plane close to the old plane.", v48, 0xCu);
        sub_245F8E6F4(v49);
        MEMORY[0x24C1989D0](v49, -1, -1);
        v50 = v48;
        v32 = v68;
        MEMORY[0x24C1989D0](v50, -1, -1);

        (v43[1])(v9, v66);
      }

      else
      {

        (v43[1])(v9, v44);
      }

      v52 = sub_24606B084(v32);

      v57 = *(v1 + v17);
      *(v1 + v17) = v52;

      if (*(v1 + v17))
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v17 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane;
      if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane))
      {
        goto LABEL_29;
      }

      v51 = sub_245FA3174();
      v46 = v66;
      v9 = v67;
      v67[2](v32, v51, v66);
      v52 = sub_2460918D4();
      v53 = sub_246091FB4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v9;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v71[0] = v56;
        *v55 = 136380675;
        *(v55 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v71);
        _os_log_impl(&dword_245F8A000, v52, v53, "ObjectCaptureSession.%{private}s: Plane under the object was removed, cloudn't find another plane close to the old plane. Setting should wait for plane = true.", v55, 0xCu);
        sub_245F8E6F4(v56);
        MEMORY[0x24C1989D0](v56, -1, -1);
        MEMORY[0x24C1989D0](v55, -1, -1);

        (*(v54 + 1))(v68, v46);
LABEL_28:
        *(v1 + v17) = 1;
        goto LABEL_29;
      }
    }

    (*(v9 + 1))(v32, v46);
    goto LABEL_28;
  }

  v33 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane;
  v15 = &unk_27EE3D000;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) == 1)
  {
    v34 = sub_245FA3174();
    v36 = v66;
    v35 = v67;
    v67[2](v4, v34, v66);
    v37 = sub_2460918D4();
    v38 = sub_246091FC4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71[0] = v40;
      *v39 = 136380675;
      *(v39 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v71);
      _os_log_impl(&dword_245F8A000, v37, v38, "ObjectCaptureSession.%{private}s: Found a new plane under the object after it was removed. Setting should wait for plane = false.", v39, 0xCu);
      sub_245F8E6F4(v40);
      MEMORY[0x24C1989D0](v40, -1, -1);
      MEMORY[0x24C1989D0](v39, -1, -1);

      (v67[1])(v4, v36);
    }

    else
    {

      (v35[1])(v4, v36);
    }

    *(v1 + v33) = 0;
  }

LABEL_29:
  v58 = v15[430];
  v59 = *(v1 + v58);
  v60 = *(v1 + v16[431]);
  v61 = v60;
  v62 = v59;
  sub_24607CC40(v59, v60);

  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection) == 1)
  {
    sub_24606BA48();
    v63 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    v64 = *(v1 + v58);
    v69 = *(v1 + v63);
    v70 = v64;
    v65 = v64;

    sub_246091924();
  }
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didUpdate:)(ARSession _, Swift::OpaquePointer didUpdate)
{
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] & 1) == 0)
  {
    v18[1] = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v19 = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = didUpdate;
    *(v14 + 24) = v2;
    *(v14 + 32) = _;
    aBlock[4] = sub_24607CBE0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1210;
    v15 = _Block_copy(aBlock);

    v16 = v2;
    v17 = _.super.isa;
    sub_246091A14();
    v20 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v13, v8, v15);
    _Block_release(v15);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v19);
  }
}

void sub_246067B64(unint64_t a1, unint64_t a2, void *a3)
{
  v310 = a3;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v329 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v294 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v328 = &v289 - v8;
  v9 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v301 = &v289 - v13;
  MEMORY[0x28223BE20](v14);
  v304 = &v289 - v15;
  MEMORY[0x28223BE20](v16);
  v330 = &v289 - v17;
  v340 = sub_2460918F4();
  v355 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v311 = &v289 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v293 = &v289 - v20;
  MEMORY[0x28223BE20](v21);
  v309 = &v289 - v22;
  MEMORY[0x28223BE20](v23);
  v334 = &v289 - v24;
  MEMORY[0x28223BE20](v25);
  v306 = &v289 - v26;
  v27 = sub_246091834();
  v344 = *(v27 - 1);
  MEMORY[0x28223BE20](v27);
  v305 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v297 = &v289 - v30;
  MEMORY[0x28223BE20](v31);
  v303 = &v289 - v32;
  MEMORY[0x28223BE20](v33);
  v302 = &v289 - v34;
  MEMORY[0x28223BE20](v35);
  isUniquelyReferenced_nonNull_native = &v289 - v36;
  MEMORY[0x28223BE20](v38);
  v327 = &v289 - v39;
  MEMORY[0x28223BE20](v40);
  v338 = &v289 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v289 - v43;
  MEMORY[0x28223BE20](v45);
  v314 = &v289 - v46;
  v312 = sub_245FFC558(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_122;
  }

  v47 = a1;
  v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v354 = a2;
  if (!v48)
  {
    v279 = v312;
    v280 = &unk_27EE3D000;
    goto LABEL_107;
  }

  v349 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart;
  v350 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager;
  v49 = v5;
  v50 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  v325 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  v5 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  v291 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
  a1 = v11;
  v51 = v354;
  v307 = (v354 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
  v295 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID;
  v299 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment;
  v300 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
  v308 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v353 = v47 & 0xC000000000000001;
  v352 = v48;
  v348 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  swift_beginAccess();
  v292 = v5;
  swift_beginAccess();
  v289 = v50;
  v52 = v49;
  a2 = v51;
  swift_beginAccess();
  v347 = 0;
  v53 = 0;
  v337 = v47 & 0xFFFFFFFFFFFFFF8;
  v351 = (v344 + 16);
  v346 = (v344 + 8);
  v11 = v47;
  v332 = (v355 + 8);
  v333 = (v355 + 16);
  v320 = "ewPlane:oldPlane:)";
  v343 = (v329 + 56);
  v326 = (v329 + 48);
  *&v54 = 136380931;
  v319 = v54;
  v345 = v47;
  v290 = a1;
  v355 = v27;
  v298 = isUniquelyReferenced_nonNull_native;
  v331 = v52;
  v339 = v44;
LABEL_8:
  v44 = v53;
  do
  {
    if (v353)
    {
      a1 = v27;
      v56 = MEMORY[0x24C196C20](v44, v11);
    }

    else
    {
      if (v44 >= *(v337 + 16))
      {
        goto LABEL_119;
      }

      a1 = v27;
      v56 = *&v11[8 * v44 + 32];
    }

    v57 = v56;
    v27 = (v44 + 1);
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v47 = a1;
      v48 = sub_246092354();
      goto LABEL_3;
    }

    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v313 = (v44 + 1);
      a1 = a2;
      a2 = v58;
      v64 = [v58 identifier];
      v65 = v314;
      sub_246091814();

      v66 = v308;
      swift_beginAccess();
      v67 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v356[0] = *(a1 + v66);
      v68 = *&v356[0];
      *(a1 + v66) = 0x8000000000000000;
      v69 = sub_245FC1BDC(v65);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        (a2)(v301, 1, 1, v331);
        __break(1u);
LABEL_131:
        sub_246092424();
        __break(1u);
        return;
      }

      v5 = v70;
      if (*(v68 + 24) >= v74)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v69;
          sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
          v69 = isUniquelyReferenced_nonNull_native;
          v101 = *&v356[0];
          if (v5)
          {
            goto LABEL_35;
          }

          goto LABEL_100;
        }
      }

      else
      {
        sub_2460735E4(v74, isUniquelyReferenced_nonNull_native, &unk_27EE3ADB0, &qword_24609AD50);
        v69 = sub_245FC1BDC(v314);
        if ((v5 & 1) != (v75 & 1))
        {
          goto LABEL_131;
        }
      }

      v101 = *&v356[0];
      if (v5)
      {
LABEL_35:
        v102 = v101[7];
        v103 = *(v102 + 8 * v69);
        *(v102 + 8 * v69) = a2;

        v27 = v355;
        (*v346)(v314, v355);
LABEL_102:
        a2 = v354;
        *(v354 + v308) = v101;

        swift_endAccess();

        goto LABEL_103;
      }

LABEL_100:
      v101[(v69 >> 6) + 8] |= 1 << v69;
      isUniquelyReferenced_nonNull_native = v344;
      v5 = v69;
      v276 = v314;
      v27 = v355;
      (*(v344 + 16))(v101[6] + *(v344 + 72) * v69, v314, v355);
      *(v101[7] + 8 * v5) = a2;
      (*(isUniquelyReferenced_nonNull_native + 8))(v276, v27);
      v277 = v101[2];
      v73 = __OFADD__(v277, 1);
      v278 = v277 + 1;
      if (v73)
      {
        goto LABEL_124;
      }

      v101[2] = v278;
      goto LABEL_102;
    }

    type metadata accessor for ObjectCaptureSession.BoundingBoxAnchor();
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      v76 = v59;
      OCBoundingBox.init(transform:)(v357, [v59 transform]);
      v77 = v357[0].transform.columns[0];
      v78 = v357[0].transform.columns[1];
      v79 = v357[0].transform.columns[2];
      v80 = v357[0].transform.columns[3];
      v359 = 0;
      v81 = v307;
      *v307 = v357[0].transform.columns[0];
      v81[1] = v78;
      v81[2] = v79;
      v81[3] = v80;
      v81[4].i8[0] = 0;
      v335 = v80;
      v336 = v79;
      v341 = v78;
      v342 = v77;
      (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v356);
      if (*&v356[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        v356[0] = v342;
        v356[1] = v341;
        v356[2] = v336;
        v356[3] = v335;
        sub_24608585C(*(a2 + v295));
      }

      else
      {
        sub_246077B30(*&v356[0]);
        sub_246077B30(0xF);
      }

      v313 = v27;
      v137 = sub_245FA3174();
      v138 = *v333;
      isUniquelyReferenced_nonNull_native = v306;
      v324 = v137;
      v139 = v340;
      v323.n128_u64[0] = v138;
      v138(v306);
      v140 = v57;
      v141 = sub_2460918D4();
      v11 = sub_246091FC4();
      v296 = v140;

      if (os_log_type_enabled(v141, v11))
      {
        v142 = swift_slowAlloc();
        v342.i64[0] = swift_slowAlloc();
        v357[0].transform.columns[0].i64[0] = v342.i64[0];
        *v142 = v319;
        *(v142 + 4) = sub_245F8D3C0(0xD000000000000015, v320 | 0x8000000000000000, v357);
        *(v142 + 12) = 2082;
        [v76 transform];
        v147 = sub_246020FBC(v143, v144, v145, v146);
        v148 = MEMORY[0x24C196760](v147);
        v150 = v149;

        v151 = sub_245F8D3C0(v148, v150, v357);

        *(v142 + 14) = v151;
        _os_log_impl(&dword_245F8A000, v141, v11, "ObjectCaptureSession.%{private}s: Bounding box anchor updated: %{public}s", v142, 0x16u);
        v152 = v342.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v152, -1, -1);
        MEMORY[0x24C1989D0](v142, -1, -1);

        v153 = *v332;
        v154 = isUniquelyReferenced_nonNull_native;
        v155 = v340;
      }

      else
      {

        v153 = *v332;
        v154 = isUniquelyReferenced_nonNull_native;
        v155 = v139;
      }

      v322.n128_u64[0] = v153;
      v153(v154, v155);
      v5 = v330;
      v156 = v331;
      v44 = v339;
      v27 = a1;
      if (v307[4].i8[0])
      {
        goto LABEL_129;
      }

      v158 = v307[2];
      v157 = v307[3];
      v159 = v307[1];
      v357[0].transform.columns[0] = *v307;
      v357[0].transform.columns[1] = v159;
      v357[0].transform.columns[2] = v158;
      v357[0].transform.columns[3] = v157;
      v160 = sub_246090EC4();
      v161.n128_f64[0] = OCBoundingBox.scaledTransform(scale:)(COERCE_FLOAT(*v160));
      v162 = *(a2 + v300);
      v317 = v163;
      v318 = v161;
      v315 = v165;
      v316 = v164;
      if (v162)
      {
        v166 = *(a2 + v295);
        v167 = *(*v162 + 632);
        isUniquelyReferenced_nonNull_native = *v162 + 632;

        v168 = v166;
        v5 = v330;
        v167(v168, v318, v317, v316, v315);
        v44 = v339;
        v156 = v331;
      }

      a1 = *(a2 + v299);
      v342.i64[0] = *(a1 + 16);
      if (v342.i64[0])
      {
        v341.i64[0] = a1 + ((*(v344 + 80) + 32) & ~*(v344 + 80));

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = 0;
        v321.n128_u64[0] = a1;
        while (1)
        {
          if (isUniquelyReferenced_nonNull_native >= *(a1 + 16))
          {
            goto LABEL_118;
          }

          v11 = *(v344 + 16);
          (v11)(v44, v341.i64[0] + *(v344 + 72) * isUniquelyReferenced_nonNull_native, v27);
          v169 = *(a2 + v348);
          if (*(v169 + 16))
          {

            v170 = sub_245FC1BDC(v44);
            if (v171)
            {
              v172 = *(v169 + 56);
              v173 = v27;
              v174 = v329;
              v336.i64[0] = *(v329 + 72);
              sub_246081A04(v172 + v336.i64[0] * v170, v5, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

              (*(v174 + 56))(v5, 0, 1, v156);
              sub_245F8E744(v5, &qword_27EE3ACE0, &unk_246098880);
              (v11)(v338, v44, v173);
              a1 = a2;
              v5 = sub_24604445C(v356);
              v175 = sub_2460599F8(v358);
              v177 = v176;
              if ((*(v174 + 48))(v176, 1, v156) == 1)
              {
                goto LABEL_128;
              }

              v178 = (v177 + *(v156 + 28));
              memmove(v357, v178, 0x91uLL);
              v179 = sub_245F97C14(v357);
              a2 = v340;
              v27 = v346;
              if (v179 != 1)
              {
                v180 = v317;
                *v178 = v318;
                v178[1] = v180;
                v181 = v315;
                v178[2] = v316;
                v178[3] = v181;
              }

              (v175)(v358, 0);
              v182 = *v27;
              (*v27)(v338, v355);
              (v5)(v356, 0);
              v44 = v339;
              v183 = sub_24606C1B4();
              v184 = *(a1 + v348);
              if (!*(v184 + 16))
              {
                goto LABEL_120;
              }

              v5 = v183;

              v185 = sub_245FC1BDC(v44);
              if ((v186 & 1) == 0)
              {
                goto LABEL_121;
              }

              v335.i64[0] = v182;
              v187 = v328;
              sub_246081A04(*(v184 + 56) + v185 * v336.i64[0], v328, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

              sub_246091924();

              sub_246081A6C(v187, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v188 = v334;
              (v323.n128_u64[0])(v334, v324, a2);
              v189 = v327;
              v190 = v355;
              (v11)(v327, v44, v355);
              v191 = sub_2460918D4();
              v192 = sub_246091FC4();
              if (os_log_type_enabled(v191, v192))
              {
                v193 = v189;
                v194 = swift_slowAlloc();
                v336.i64[0] = swift_slowAlloc();
                *&v356[0] = v336.i64[0];
                *v194 = v319;
                *(v194 + 4) = sub_245F8D3C0(0xD000000000000015, v320 | 0x8000000000000000, v356);
                *(v194 + 12) = 2082;
                sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v195 = sub_2460923D4();
                v197 = v196;
                v198 = v193;
                v199 = v335.i64[0];
                (v335.i64[0])(v198, v190);
                v200 = sub_245F8D3C0(v195, v197, v356);

                *(v194 + 14) = v200;
                _os_log_impl(&dword_245F8A000, v191, v192, "ObjectCaptureSession.%{private}s: Published bounding box update for shot %{public}s", v194, 0x16u);
                v201 = v336.i64[0];
                swift_arrayDestroy();
                v11 = v345;
                MEMORY[0x24C1989D0](v201, -1, -1);
                MEMORY[0x24C1989D0](v194, -1, -1);

                (v322.n128_u64[0])(v334, v340);
                v44 = v339;
                v199(v339, v190);
                v5 = v330;
              }

              else
              {

                v202 = v189;
                v203 = v335.i64[0];
                (v335.i64[0])(v202, v190);
                (v322.n128_u64[0])(v188, a2);
                v44 = v339;
                v203(v339, v190);
                v5 = v330;
                v11 = v345;
              }

              v156 = v331;
              v27 = v355;
              a2 = v354;
              a1 = v321.n128_u64[0];
              goto LABEL_56;
            }
          }

          (*v346)(v44, v27);
          (*v343)(v5, 1, 1, v156);
          sub_245F8E744(v5, &qword_27EE3ACE0, &unk_246098880);
          v11 = v345;
LABEL_56:
          if (v342.i64[0] == ++isUniquelyReferenced_nonNull_native)
          {

            v55 = v352;
            v53 = v313;
            goto LABEL_7;
          }
        }
      }

LABEL_103:
      v55 = v352;
      v53 = v313;
      v11 = v345;
      goto LABEL_7;
    }

    type metadata accessor for ObjectCaptureSession.ShotAnchor();
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      isUniquelyReferenced_nonNull_native = v60;
      a1 = v11;
      v82 = sub_245FA3174();
      v83 = *v333;
      v84 = v309;
      v336.i64[0] = v82;
      v85 = v340;
      v335.i64[0] = v83;
      v83(v309);
      v86 = v57;
      v87 = sub_2460918D4();
      v88 = sub_246091FC4();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v342.i64[0] = swift_slowAlloc();
        v357[0].transform.columns[0].i64[0] = v342.i64[0];
        *v89 = v319;
        *(v89 + 4) = sub_245F8D3C0(0xD000000000000015, v320 | 0x8000000000000000, v357);
        *(v89 + 12) = 2082;
        v341.i64[0] = v86;
        v90 = [isUniquelyReferenced_nonNull_native description];
        v91 = sub_246091C04();
        v93 = v92;

        v94 = v91;
        v95 = v345;
        v96 = sub_245F8D3C0(v94, v93, v357);
        a1 = v95;

        *(v89 + 14) = v96;
        _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Received shot anchor update: %{public}s", v89, 0x16u);
        v97 = v342.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v97, -1, -1);
        MEMORY[0x24C1989D0](v89, -1, -1);

        v98 = *v332;
        v99 = v309;
        v100 = v340;
      }

      else
      {

        v98 = *v332;
        v99 = v84;
        v100 = v85;
      }

      v341.i64[0] = v98;
      v98(v99, v100);
      v104 = v331;
      v105 = v311;
      v106 = v298;
      v324 = v86;
      v107 = [isUniquelyReferenced_nonNull_native identifier];
      sub_246091814();

      a2 = v354;
      v108 = *(v354 + v348);
      if (*(v108 + 16))
      {

        v109 = sub_245FC1BDC(v106);
        if (v110)
        {
          v111 = *(v108 + 56);
          v112 = v329;
          v323.n128_u64[0] = *(v329 + 72);
          v113 = v304;
          sub_246081A04(v111 + v323.n128_u64[0] * v109, v304, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v114 = v355;
          v342.i64[0] = *v346;
          (v342.i64[0])(v106, v355);

          v115 = v114;
          v322.n128_u64[0] = *(v112 + 56);
          (v322.n128_u64[0])(v113, 0, 1, v104);
          sub_245F8E744(v113, &qword_27EE3ACE0, &unk_246098880);
          v116 = [isUniquelyReferenced_nonNull_native identifier];
          v117 = v302;
          sub_246091814();
          [isUniquelyReferenced_nonNull_native transform];
          v321 = v118;
          v317 = v120;
          v318 = v119;
          v316 = v121;
          v122 = v348;
          swift_beginAccess();
          v123 = a2;
          a2 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v303;
          (*v351)(v303, v117, v115);
          *&v356[0] = *(v123 + v122);
          v125 = *&v356[0];
          *(v123 + v122) = 0x8000000000000000;
          v127 = sub_245FC1BDC(v124);
          v128 = *(v125 + 16);
          v129 = (v126 & 1) == 0;
          v130 = v128 + v129;
          if (__OFADD__(v128, v129))
          {
            goto LABEL_125;
          }

          v131 = v126;
          if (*(v125 + 24) >= v130)
          {
            if ((a2 & 1) == 0)
            {
              sub_246074CB4();
            }
          }

          else
          {
            sub_2460727D4(v130, a2);
            v132 = sub_245FC1BDC(v303);
            if ((v131 & 1) != (v133 & 1))
            {
              goto LABEL_131;
            }

            v127 = v132;
          }

          v204 = v290;
          a2 = v322.n128_u64[0];
          if ((v131 & 1) == 0)
          {
            goto LABEL_130;
          }

          v205 = *&v356[0];
          v206 = v127 * v323.n128_u64[0];
          v207 = v301;
          sub_24608199C(*(*&v356[0] + 56) + v127 * v323.n128_u64[0], v301, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v208 = v331;
          (a2)(v207, 0, 1, v331);
          v210 = v317;
          v209 = v318;
          *(v207 + 64) = v321;
          *(v207 + 80) = v209;
          v211 = v316;
          *(v207 + 96) = v210;
          *(v207 + 112) = v211;
          a2 = &unk_246098880;
          sub_245F8E7A4(v207, v204, &qword_27EE3ACE0, &unk_246098880);
          if ((*v326)(v204, 1, v208) == 1)
          {
            sub_245F8E744(v204, &qword_27EE3ACE0, &unk_246098880);
            v212 = v355;
            v213 = v342.i64[0];
            (v342.i64[0])(*(v205 + 48) + *(v344 + 72) * v127, v355);
            sub_2460739C0(v127, v205);
          }

          else
          {
            v214 = v294;
            sub_24608199C(v204, v294, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            sub_24608199C(v214, *(v205 + 56) + v206, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v212 = v355;
            v213 = v342.i64[0];
          }

          v213(v303, v212);
          v213(v302, v212);
          sub_245F8E744(v301, &qword_27EE3ACE0, &unk_246098880);
          v215 = v354;
          *(v354 + v348) = v205;
          swift_endAccess();
          v216 = [isUniquelyReferenced_nonNull_native identifier];
          v217 = v297;
          sub_246091814();

          v218 = *(v215 + v289);
          if (*(v218 + 16))
          {

            v219 = sub_245FC1BDC(v217);
            if (v220)
            {
              v221 = *(*(v218 + 56) + 8 * v219);
              v213(v217, v212);

              [isUniquelyReferenced_nonNull_native transform];
              v321 = v223;
              v322 = v222;
              v317 = v225;
              v318 = v224;
              v226 = v312;
              v227 = swift_isUniquelyReferenced_nonNull_native();
              v357[0].transform.columns[0].i64[0] = v226;
              sub_2460749D4(v221, v227, v322, v321, v318, v317);
              v312 = v357[0].transform.columns[0].i64[0];
LABEL_82:
              v228 = v354;
              sub_24606C1B4();
              v229 = [isUniquelyReferenced_nonNull_native identifier];
              v230 = v305;
              sub_246091814();
              v231 = *(v228 + v348);
              if (!*(v231 + 16))
              {
                goto LABEL_126;
              }

              v232 = sub_245FC1BDC(v230);
              v233 = v230;
              v235 = v234;

              if ((v235 & 1) == 0)
              {
                goto LABEL_127;
              }

              v236 = v328;
              sub_246081A04(*(v231 + 56) + v232 * v323.n128_u64[0], v328, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v134 = v342.i64[0];
              (v342.i64[0])(v233, v355);

              sub_246091924();

              v136 = sub_246081A6C(v236, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v105 = v311;
              a2 = v354;
              a1 = v345;
              goto LABEL_85;
            }
          }

          v213(v217, v212);
          goto LABEL_82;
        }
      }

      v134 = *v346;
      (*v346)(v106, v355);
      v135 = v304;
      (*v343)(v304, 1, 1, v104);
      v136 = sub_245F8E744(v135, &qword_27EE3ACE0, &unk_246098880);
LABEL_85:
      v342.i64[0] = v134;
      (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v357, v136);
      if (v357[0].transform.columns[0].i64[0] != 15)
      {
        sub_246077B30(v357[0].transform.columns[0].i64[0]);
        sub_246077B30(0xF);
LABEL_92:
        v244 = v324;

        v248 = v335.i64[0];
LABEL_93:
        v248(v105, v336.i64[0], v340);
        v265 = v244;
        v266 = v105;
        v267 = sub_2460918D4();
        v5 = sub_246091FB4();

        if (os_log_type_enabled(v267, v5))
        {
          v268 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v357[0].transform.columns[0].i64[0] = v269;
          *v268 = v319;
          *(v268 + 4) = sub_245F8D3C0(0xD000000000000015, v320 | 0x8000000000000000, v357);
          *(v268 + 12) = 2082;
          v270 = [isUniquelyReferenced_nonNull_native identifier];
          v271 = v305;
          sub_246091814();

          v272 = sub_2460917F4();
          isUniquelyReferenced_nonNull_native = v273;
          v274 = v271;
          a1 = v355;
          (v342.i64[0])(v274, v355);
          v275 = sub_245F8D3C0(v272, isUniquelyReferenced_nonNull_native, v357);

          *(v268 + 14) = v275;
          _os_log_impl(&dword_245F8A000, v267, v5, "ObjectCaptureSession.%{private}s: Failed to update shot with id = %{public}s for automatic capture!", v268, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v269, -1, -1);
          MEMORY[0x24C1989D0](v268, -1, -1);

          a2 = v354;
          (v341.i64[0])(v311, v340);
          v55 = v352;
          v53 = v27;
          v27 = a1;
        }

        else
        {

          (v341.i64[0])(v266, v340);
          v55 = v352;
          v53 = v27;
          v27 = v355;
        }

        v11 = v345;
        goto LABEL_7;
      }

      sub_246077B30(0xF);
      sub_246077B30(0xF);
      if (!*(*(a2 + v292) + 16))
      {
        goto LABEL_92;
      }

      v237 = *(a2 + v291);
      if (!v237)
      {
        goto LABEL_92;
      }

      v238 = [isUniquelyReferenced_nonNull_native identifier];
      v239 = v305;
      sub_246091814();

      [isUniquelyReferenced_nonNull_native transform];
      v322 = v241;
      v323 = v240;
      v321 = v242;
      v318 = v243;
      v244 = v324;

      LOBYTE(v238) = (*(*v237 + 504))(v239, v323, v322, v321, v318);
      v245 = v239;
      v246 = v342.i64[0];
      (v342.i64[0])(v245, v355);
      v247 = v237;
      v248 = v335.i64[0];
      if ((v238 & 1) == 0)
      {

        goto LABEL_93;
      }

      v323.n128_u64[0] = v247;
      v249 = v293;
      (v335.i64[0])(v293, v336.i64[0], v340);
      v250 = v244;
      v251 = sub_2460918D4();
      v5 = sub_246091FC4();

      v336.i32[0] = v5;
      if (os_log_type_enabled(v251, v5))
      {
        v252 = swift_slowAlloc();
        v335.i64[0] = v250;
        v253 = v252;
        v254 = swift_slowAlloc();
        v324 = v251;
        v255 = v246;
        v256 = v249;
        v5 = v254;
        v357[0].transform.columns[0].i64[0] = v254;
        *v253 = v319;
        *(v253 + 4) = sub_245F8D3C0(0xD000000000000015, v320 | 0x8000000000000000, v357);
        *(v253 + 12) = 2082;
        v257 = [isUniquelyReferenced_nonNull_native identifier];
        v258 = v305;
        sub_246091814();

        v259 = sub_2460917F4();
        isUniquelyReferenced_nonNull_native = v260;
        v255(v258, v355);
        v261 = sub_245F8D3C0(v259, isUniquelyReferenced_nonNull_native, v357);

        *(v253 + 14) = v261;
        v262 = v324;
        _os_log_impl(&dword_245F8A000, v324, v336.i8[0], "ObjectCaptureSession.%{private}s: Update shot with id = %{public}s for automatic capture.", v253, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v5, -1, -1);
        MEMORY[0x24C1989D0](v253, -1, -1);

        v263 = v256;
        a2 = v354;
        v264 = v355;
        (v341.i64[0])(v263, v340);
        v55 = v352;
        v53 = v27;
        v27 = v264;
        v11 = v345;
      }

      else
      {

        (v341.i64[0])(v249, v340);
        v55 = v352;
        v53 = v27;
        v27 = v355;
        v11 = a1;
      }

LABEL_7:
      if (v53 == v55)
      {
        v279 = v312;
        v280 = &unk_27EE3D000;
        if (v347)
        {
          goto LABEL_104;
        }

        goto LABEL_107;
      }

      goto LABEL_8;
    }

    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (!v61)
    {
      goto LABEL_6;
    }

    v5 = v61;
    *(a2 + v349) = 1;
    (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v357);
    if (v357[0].transform.columns[0].i64[0] != 15)
    {
      sub_246077B30(v357[0].transform.columns[0].i64[0]);
      sub_246077B30(0xF);
LABEL_6:

      v55 = v352;
      v53 = (v44 + 1);
      v27 = a1;
      goto LABEL_7;
    }

    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v62 = *(a2 + v350);
    if (!v62)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = *(*v62 + 360);

    v5 = (isUniquelyReferenced_nonNull_native)(v5);

    if ((v5 & 1) == 0)
    {
      v55 = v352;
      v53 = (v44 + 1);
      v27 = v355;
      a2 = v354;
      goto LABEL_7;
    }

    ++v44;
    v347 = 1;
    v63 = v27 == v352;
    v27 = v355;
    a2 = v354;
  }

  while (!v63);
  v279 = v312;
  v280 = &unk_27EE3D000;
LABEL_104:
  v281 = *(v354 + v350);
  if (v281)
  {
    v282 = *(*v281 + 400);

    v282(v283);
  }

LABEL_107:
  v284 = *(v354 + v280[471]);
  if (v284 && *(v279 + 16))
  {
    v285 = *(*v284 + 624);

    v285(v279);
  }

  v286 = [v310 currentFrame];
  if (v286)
  {
    v287 = v286;
    v288 = [v286 camera];
    sub_24606656C(v357);

    LOBYTE(v356[0]) = 5;
    if (static CameraTrackingState.== infix(_:_:)(v357, v356))
    {
      sub_246066F7C(v287);
      sub_246067044();
    }
  }
}

double sub_246069CD4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  sub_245FA30EC(0, &qword_27EE3AA10, 0x277CE5218);
  v8 = sub_246091DD4();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);

  return result;
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didRemove:)(ARSession _, Swift::OpaquePointer didRemove)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_246091A64();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245FA3174();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();
  if (os_log_type_enabled(v15, v16))
  {
    isa = _.super.isa;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136380931;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A2870, aBlock);
    *(v17 + 12) = 2050;
    if (didRemove._rawValue >> 62)
    {
      v19 = sub_246092354();
    }

    else
    {
      v19 = *((didRemove._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 14) = v19;

    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s has been called. #anchors = %{public}ld", v17, 0x16u);
    sub_245F8E6F4(v18);
    MEMORY[0x24C1989D0](v18, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);

    (*(v11 + 8))(v13, v10);
    _.super.isa = isa;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  if ((*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos) & 1) == 0)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = didRemove;
    *(v20 + 24) = v3;
    *(v20 + 32) = _;
    aBlock[4] = sub_24607CC34;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1260;
    v21 = _Block_copy(aBlock);

    v22 = v3;
    v23 = _.super.isa;
    sub_246091A14();
    v33 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    v24 = v29;
    v25 = v32;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v9, v24, v21);
    _Block_release(v21);
    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v9, v30);
  }
}

void sub_24606A264(unint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v32 = sub_246091834();
  v30 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_246092354();
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v9 = 0;
  v10 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v11 = a1 & 0xC000000000000001;
  v31 = (v30 + 8);
  v28 = a1 & 0xC000000000000001;
  v29 = v8;
  v27 = a1;
  do
  {
    if (v11)
    {
      v12 = MEMORY[0x24C196C20](v9, a1, v5);
    }

    else
    {
      v12 = *(a1 + 8 * v9 + 32);
    }

    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 identifier];
      sub_246091814();

      swift_beginAccess();
      v16 = sub_245FC1BDC(v7);
      if (v17)
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(a2 + v10);
        v33 = v20;
        *(a2 + v10) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
          v20 = v33;
        }

        v21 = *(v30 + 8);
        v22 = v32;
        v21(*(v20 + 48) + *(v30 + 72) * v18, v32);

        sub_246073EB0(v18, v20);
        v21(v7, v22);
        *(a2 + v10) = v20;
        a1 = v27;
        v11 = v28;
        v8 = v29;
      }

      else
      {
        (*v31)(v7, v32);
      }

      swift_endAccess();
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_17:
  v23 = [v26 currentFrame];
  if (v23)
  {
    v24 = v23;
    sub_246066F7C(v23);
  }

  sub_246067044();
}

void sub_24606A53C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if (a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] != 1)
  {
    return;
  }

  sub_24606656C(v45);
  v44 = 5;
  sub_246081AE4();
  if ((sub_246091BB4() & 1) == 0)
  {
    v41 = v7;
    sub_24603D144();
    a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 1;
    v14 = sub_245FA3174();
    v38 = *(v5 + 16);
    v39 = v14;
    v38(v13);
    v15 = sub_2460918D4();
    v16 = sub_246091FC4();
    v17 = os_log_type_enabled(v15, v16);
    v42 = v5;
    v40 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45[0] = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, v45);
      _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Set should wait for pose correction using  mobileSfM.", v18, 0xCu);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      v20 = v18;
      v5 = v42;
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    v21 = *(v5 + 8);
    v21(v13, v4);
    v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v45, &a1[v22], 0x4F0uLL);
    if (sub_246081984(v45) == 1)
    {
      goto LABEL_22;
    }

    v23 = *v45 * 1000.0;
    if (COERCE__INT64(fabs(*v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        v24 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = v23;
        (v38)(v10, v39, v4);
        v25 = a1;
        v26 = sub_2460918D4();
        v27 = sub_246091FC4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v39 = v21;
          v30 = v29;
          v43 = v29;
          *v28 = 136380931;
          *(v28 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, &v43);
          *(v28 + 12) = 2050;
          *(v28 + 14) = *&a1[v24];

          _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Set pause time for pose correction = %{public}ld", v28, 0x16u);
          sub_245F8E6F4(v30);
          MEMORY[0x24C1989D0](v30, -1, -1);
          MEMORY[0x24C1989D0](v28, -1, -1);

          v5 = v42;
          v39(v10, v4);
        }

        else
        {

          v5 = v42;
          v21(v10, v4);
        }

        v7 = v41;
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

LABEL_13:
  sub_24606656C(v45);
  LOBYTE(v43) = 5;
  if (static CameraTrackingState.== infix(_:_:)(v45, &v43) && a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] == 1)
  {
    sub_24603DCBC();
    v31 = sub_245FA3174();
    (*(v5 + 16))(v7, v31, v4);
    v32 = a1;
    v33 = sub_2460918D4();
    v34 = sub_246091FC4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136380931;
      *(v35 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, v45);
      *(v35 + 12) = 2050;
      *(v35 + 14) = 0x4024000000000000;
      _os_log_impl(&dword_245F8A000, v33, v34, "ObjectCaptureSession.%{private}s: Set set wait for pose correction timer to %{public}f seconds.", v35, 0x16u);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v35, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_24606ABA4(_BYTE *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  if (a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] == 1)
  {
    sub_24603D144();
    a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 1;
    v9 = sub_245FA3174();
    v27 = *(v3 + 16);
    v28 = v9;
    v27(v8);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    v12 = os_log_type_enabled(v10, v11);
    v29 = v3;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31[0] = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, v31);
      _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Set should wait for pose correction using mobileSfM", v13, 0xCu);
      sub_245F8E6F4(v14);
      v15 = v14;
      v3 = v29;
      MEMORY[0x24C1989D0](v15, -1, -1);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    v16 = *(v3 + 8);
    v16(v8, v2);
    v17 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v31, &a1[v17], 0x4F0uLL);
    if (sub_246081984(v31) == 1)
    {
      goto LABEL_15;
    }

    v18 = *v31 * 1000.0;
    if (COERCE__INT64(fabs(*v31 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = v18;
        (v27)(v5, v28, v2);
        v20 = a1;
        v21 = sub_2460918D4();
        v22 = sub_246091FC4();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v28 = v16;
          v24 = v23;
          v25 = swift_slowAlloc();
          v30[0] = v25;
          *v24 = 136380931;
          *(v24 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, v30);
          *(v24 + 12) = 2050;
          *(v24 + 14) = *&a1[v19];

          _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Set pause time for pose correction = %{public}ld", v24, 0x16u);
          sub_245F8E6F4(v25);
          MEMORY[0x24C1989D0](v25, -1, -1);
          MEMORY[0x24C1989D0](v24, -1, -1);

          v28(v5, v2);
        }

        else
        {

          v16(v5, v2);
        }

        return;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

id sub_24606B084(void *a1)
{
  v27 = a1;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33) & 1) != 0 || (v10 = v9[2].n128_u8[0], v11 = v9[1], v29[0] = *v9, v29[1] = v11, v30 = v10 & 1, (v12 = sub_24606B408(v29)) == 0))
  {
    v20 = sub_245FA3174();
    (*(v3 + 16))(v5, v20, v2);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4600, &v28);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Failed to recompute the nearest plane under the object, using the old plane without anchor updates!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v13 = v12;
    v14 = sub_246021FD4(v27, v12);
    if (v14 <= 0.01)
    {
      return v13;
    }

    v15 = sub_245FA3174();
    (*(v3 + 16))(v8, v15, v2);
    v16 = sub_2460918D4();
    v17 = sub_246091FB4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136380931;
      *(v18 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4600, &v28);
      *(v18 + 12) = 2050;
      *(v18 + 14) = v14;
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Recomputed plane is too far (%{public}f meters) from old plane, using the old plane without anchor updates!", v18, 0x16u);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  v25 = v27;

  return v25;
}

uint64_t sub_24606B408(__n128 *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v34.i8[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v34.i8[-v11];
  if (a1[2].n128_u8[0])
  {
    v13 = sub_245FA3174();
    (*(v4 + 16))(v6, v13, v3);
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36[0] = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, v36);
      _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position because worldPoint is nil!", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v34 = a1[1];
    v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    if (*(*(v1 + v18) + 16))
    {

      sub_246079E60(v19, v34);
      v21 = v20;

      result = v21;
      if (v21)
      {
        return result;
      }

      v23 = sub_245FA3174();
      (*(v4 + 16))(v12, v23, v3);
      v24 = sub_2460918D4();
      v25 = sub_246091FB4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136381443;
        *(v26 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, &v35);
        *(v26 + 12) = 2050;
        v28 = v34;
        *(v26 + 14) = *v34.i32;
        *(v26 + 22) = 2050;
        *(v26 + 24) = *&v28.i32[1];
        *(v26 + 32) = 2050;
        *(v26 + 34) = *&v28.i32[2];
        _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below world tap point x=%{public}f, y=%{public}f, z=%{public}f", v26, 0x2Au);
        sub_245F8E6F4(v27);
        MEMORY[0x24C1989D0](v27, -1, -1);
        MEMORY[0x24C1989D0](v26, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
    }

    else
    {
      v29 = sub_245FA3174();
      (*(v4 + 16))(v9, v29, v3);
      v30 = sub_2460918D4();
      v31 = sub_246091FB4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v33;
        *v32 = 136380675;
        *(v32 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, &v35);
        _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position because no planes were detected!", v32, 0xCu);
        sub_245F8E6F4(v33);
        MEMORY[0x24C1989D0](v33, -1, -1);
        MEMORY[0x24C1989D0](v32, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  return 0;
}

uint64_t sub_24606B89C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_24606B92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_24606B9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BC24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BC78(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 120) = *a1;
}

uint64_t sub_24606BCEC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    sub_245F8E624(&qword_27EE3AA88, &qword_246099D28);
    swift_allocObject();
    v1 = sub_246091934();
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_24606BD70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BDC4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 136) = *a1;
}

uint64_t sub_24606BE08()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    sub_24606BCEC();
    sub_245F8E624(&qword_27EE3AA88, &qword_246099D28);
    sub_245F9218C(&qword_27EE3AA90, &qword_27EE3AA88, &qword_246099D28, MEMORY[0x277CBCE20]);
    v1 = sub_2460919A4();

    *(v0 + 136) = v1;
  }

  return v1;
}

void *ObjectCaptureSessionObservingPublishers.deinit()
{

  return v0;
}

uint64_t ObjectCaptureSessionObservingPublishers.__deallocating_deinit()
{
  ObjectCaptureSessionObservingPublishers.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24606BFD4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 16) = v3;
  }

  return v3;
}

uint64_t sub_24606C050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C0D0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 24))
  {
    v5 = *(v4 + 24);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 24) = v5;
  }

  return v5;
}

uint64_t sub_24606C1C8(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 32))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 32) = v3;
  }

  return v3;
}

uint64_t sub_24606C244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C2CC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 40))
  {
    v5 = *(v4 + 40);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 40) = v5;
  }

  return v5;
}

uint64_t sub_24606C3C4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 48))
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 48) = v3;
  }

  return v3;
}

uint64_t sub_24606C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C498(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 56) = *a1;
}

uint64_t sub_24606C50C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 56))
  {
    v5 = *(v4 + 56);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 56) = v5;
  }

  return v5;
}

uint64_t sub_24606C614(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 64))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 64) = v3;
  }

  return v3;
}

uint64_t sub_24606C690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C6E8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 72) = *a1;
}

uint64_t sub_24606C75C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 72))
  {
    v5 = *(v4 + 72);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 72) = v5;
  }

  return v5;
}

uint64_t sub_24606C864(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 80))
  {
    v3 = *(v2 + 80);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 80) = v3;
  }

  return v3;
}