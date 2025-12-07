void sub_257D443E4()
{
  v1 = v0;
  v2 = sub_257ECCC80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257DFF59C();
  v11 = [v10 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_60;
  }

  v13 = v12;
  [v12 setAutomaticallyDimsOverCaptureRegion_];

  v14 = [v13 connection];
  [v14 setEnabled_];

  v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v16 = v59;
  if (v59)
  {
    v54 = v3;
    [v59 videoZoomFactor];
    v18 = v17;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(*(qword_281548340 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor) = v18;
    v19 = *(v15 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors);
    v20 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    swift_beginAccess();
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v55 = *v20;
    v56 = v21;
    v57 = v22;
    v23 = qword_2815447E0;

    if (v23 != -1)
    {
      v24 = swift_once();
    }

    v11 = qword_2815447E8;
    MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
    sub_257ECFD50();

    if (v58 == 2)
    {
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v11 = v19;
        }

        else
        {
          v11 = (v19 & 0xFFFFFFFFFFFFFF8);
        }

        if (sub_257ED0210() && sub_257ED0210() >= 2)
        {
          goto LABEL_10;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_10:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x259C72E20](0, v19);
          v37 = MEMORY[0x259C72E20](1, v19);
LABEL_14:
          v38 = v37;

          sub_257ECCF40();
          if (v39 <= v18)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            v42 = v55;
            if (!v55)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_257ECCF40();
            if (v18 >= v40 || (sub_257ECCF40(), v41 > v18))
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v42 = v55;
              if (v55)
              {
                sub_257D337D8(0, 0.0);
LABEL_36:
              }

LABEL_37:

              goto LABEL_53;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            v42 = v55;
            if (!v55)
            {
              goto LABEL_37;
            }
          }

          sub_257ECCF40();
          sub_257D334B0(0, v51);
          goto LABEL_36;
        }

        v34 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          if (v34 != 1)
          {
            v35 = *(v19 + 40);
            v36 = *(v19 + 32);
            v37 = v35;
            goto LABEL_14;
          }

          goto LABEL_59;
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:

        sub_257ED0410();
        __break(1u);
        return;
      }

      goto LABEL_51;
    }

    v44 = *(v20 + 8);
    v45 = *(v20 + 16);
    v55 = *v20;
    v56 = v44;
    v57 = v45;
    MEMORY[0x28223BE20](v29, v30, v31, v32, v33);

    sub_257ECFD50();

    if (v58 == 1)
    {
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v11 = v19;
        }

        else
        {
          v11 = (v19 & 0xFFFFFFFFFFFFFF8);
        }

        if (sub_257ED0210() && sub_257ED0210() >= 1)
        {
LABEL_25:
          if ((v19 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x259C72E20](0, v19);
          }

          else
          {
            if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v46 = *(v19 + 32);
          }

          v36 = v46;

          sub_257ECCF40();
          v48 = v47;
          swift_getKeyPath();
          swift_getKeyPath();
          if (v48 <= v18)
          {
            sub_257ECDD60();

            v49 = v55;
            if (!v55)
            {
              goto LABEL_53;
            }

            sub_257ECCF40();
            sub_257D334B0(0, v50);
          }

          else
          {
            sub_257ECDD60();

            v49 = v55;
            if (!v55)
            {
              goto LABEL_53;
            }

            sub_257D337D8(0, 0.0);
          }

          goto LABEL_53;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

LABEL_51:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v36 = v55;
    if (!v55)
    {
LABEL_54:
      v52 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v53 = sub_257ECCBD0();
      (*(v54 + 8))(v9, v2);
      [v52 runUntilDate_];

      return;
    }

    sub_257D337D8(0, 0.0);
LABEL_53:

    goto LABEL_54;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v43 = v59;
  if (v59)
  {
    sub_257D337D8(0, 0.0);
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
  sub_257DFF708();
}

void sub_257D44C34()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v10 = *(v9 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  if (v10)
  {
    v11 = qword_281544FE0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    if (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture))
    {
      v13 = v0;
      sub_257ECD410();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_257BAC000, v14, v15, "Already in capture", v16, 2u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
      *(v13 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      sub_257DFF708();
    }

    else
    {
      sub_257DFF9F8(1);
      *(v9 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto) = 1;
      *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      sub_257DFF708();
      v19 = sub_257D44ED8(v12);
      sub_257D443E4();
      [v12 capturePhotoWithSettings:v19 delegate:v9];

      v17 = v19;
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;

    sub_257DFF708();
  }
}

char *sub_257D44ED8(void *a1)
{
  v2 = *MEMORY[0x277CE6310];
  v3 = [a1 availablePhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v5 = v4;
  v6 = sub_257ECF810();

  v35 = v2;
  v34 = &v35;
  LOBYTE(v3) = sub_257DF8F80(sub_257D46ED4, v33, v6);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620, &unk_257EDCD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = sub_257ECF500();
    *(inited + 72) = v5;
    *(inited + 40) = v8;
    *(inited + 48) = v2;
    v9 = v2;
    sub_257BE9040(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &qword_27F8F55E8, &qword_257EDA540);
    v10 = sub_257ECF3C0();

    v11 = [objc_opt_self() photoSettingsWithFormat_];
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CE5B30]) init];
  }

  [v11 setFlashMode_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = v35;
  if (!v35)
  {
LABEL_26:
    if (qword_281544FE0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v13 = [v35 activeFormat];

  v14 = [v13 supportedMaxPhotoDimensionsPrivate];
  sub_257BD2C2C(0, &qword_27F8F93A0, 0x277CCAE60);
  v15 = sub_257ECF810();

  if (v15 >> 62)
  {
    v16 = sub_257ED0210();
    if (v16)
    {
LABEL_7:
      v35 = MEMORY[0x277D84F90];
      result = sub_257BF29E4(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v19 = v35;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C72E20](v18, v15);
        }

        else
        {
          v20 = *(v15 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 CMVideoDimensionsValue];

        v35 = v19;
        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_257BF29E4((v23 > 1), v24 + 1, 1);
          v19 = v35;
        }

        ++v18;
        *(v19 + 2) = v24 + 1;
        *&v19[2 * v24 + 8] = v22;
      }

      while (v16 != v18);

      v25 = *(v19 + 2);
      if (!v25)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }
  }

  v19 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (!v25)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_19:
  v26 = 0;
  v27 = v19 + 9;
  while (v26 < *(v19 + 2))
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    if (v29 == [a1 maxPhotoDimensions] && v28 == objc_msgSend(a1, sel_maxPhotoDimensions) >> 32)
    {

      [v11 setMaxPhotoDimensions_];
      goto LABEL_26;
    }

    ++v26;
    v27 += 2;
    if (v25 == v26)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_36:
  swift_once();
LABEL_27:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v35)
  {
    v30 = sub_257ED0640();

    if ((v30 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sub_257D46B64(v11);
LABEL_32:
  sub_257D46CE4(v11);
  v31 = sub_257ECF4C0();
  v32 = MGGetBoolAnswer();

  if ((v32 & 1) == 0)
  {
    [v11 setShutterSound_];
  }

  return v11;
}

__CVBuffer *sub_257D45484(void *a1)
{
  imageOut[1] = *MEMORY[0x277D85DE8];
  result = [a1 previewPixelBuffer];
  if (result)
  {
    v3 = result;
    imageOut[0] = 0;
    VTCreateCGImageFromCVPixelBuffer(result, 0, imageOut);
    if (!imageOut[0])
    {

      return 0;
    }

    v4 = v1;
    v5 = imageOut[0];
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v5 scale:sub_257D4E290() orientation:1.0];
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 != 1)
    {

      return v6;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v7 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
    v8 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator;
    v9 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v23 == 4)
    {
      if (v9)
      {
        [v9 videoRotationAngleForHorizonLevelCapture];
        if (v10 == 90.0)
        {
          result = [v6 CGImage];
          if (result)
          {
            v11 = result;
            v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:7 orientation:1.0];
LABEL_39:
            v22 = v12;

            return v22;
          }

          goto LABEL_43;
        }

        v14 = *(v7 + v8);
        if (v14)
        {
          [v14 videoRotationAngleForHorizonLevelCapture];
          if (v15 == 180.0)
          {
            result = [v6 CGImage];
            if (result)
            {
              v11 = result;
              v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:5 orientation:1.0];
              goto LABEL_39;
            }

            goto LABEL_45;
          }

          v18 = *(v7 + v8);
          if (v18)
          {
            [v18 videoRotationAngleForHorizonLevelCapture];
            if (v19 == 270.0)
            {
              result = [v6 CGImage];
              if (result)
              {
                v11 = result;
                v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:6 orientation:1.0];
                goto LABEL_39;
              }

              goto LABEL_47;
            }
          }
        }
      }

      result = [v6 CGImage];
      if (result)
      {
        v11 = result;
        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:4 orientation:1.0];
        goto LABEL_39;
      }

      __break(1u);
    }

    else
    {
      if (v9)
      {
        [v9 videoRotationAngleForHorizonLevelCapture];
        if (v13 == 90.0)
        {
          result = [v6 CGImage];
          if (result)
          {
            v11 = result;
            v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:3 orientation:1.0];
            goto LABEL_39;
          }

          goto LABEL_44;
        }

        v16 = *(v7 + v8);
        if (v16)
        {
          [v16 videoRotationAngleForHorizonLevelCapture];
          if (v17 == 180.0)
          {
            result = [v6 CGImage];
            if (result)
            {
              v11 = result;
              v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:1 orientation:1.0];
              goto LABEL_39;
            }

            goto LABEL_46;
          }

          v20 = *(v7 + v8);
          if (v20)
          {
            [v20 videoRotationAngleForHorizonLevelCapture];
            if (v21 == 270.0)
            {
              result = [v6 CGImage];
              if (result)
              {
                v11 = result;
                v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:2 orientation:1.0];
                goto LABEL_39;
              }

LABEL_48:
              __break(1u);
              return result;
            }
          }
        }
      }

      result = [v6 CGImage];
      if (result)
      {
        v11 = result;
        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

double sub_257D45978()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v31 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86B0, &qword_257EE5528);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v10, v11, v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86B8, &qword_257EE5530);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v31 - v22;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0, &unk_257EEB5A0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&qword_281544138, &qword_27F8F86B8, &qword_257EE5530, MEMORY[0x277CBCEC8]);
  v24 = sub_257ECDD90();
  (*(v17 + 8))(v23, v16);
  v34 = v24;
  v25 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue);
  v33 = v25;
  v26 = sub_257ECFCF0();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86C0, &qword_257EE5538);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257BD2D4C(&qword_2815441C8, &qword_27F8F86C0, &qword_257EE5538, MEMORY[0x277CBCD90]);
  sub_257BE416C();
  sub_257ECDE20();
  sub_257BE4084(v8, &unk_27F8F8740, &qword_257EEBBB0);

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_257BD2D4C(&unk_281544400, &qword_27F8F86B0, &qword_257EE5528, MEMORY[0x277CBCB50]);
  v28 = v32;
  v29 = sub_257ECDE50();

  (*(v9 + 8))(v15, v28);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = v29;

  return result;
}

uint64_t sub_257D45D7C(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v43 - v16;
  v18 = sub_257ECDA30();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v43 - v29;
  v31 = *a1;
  if (*a1)
  {
    v43 = v18;
    v32 = qword_281544FE0;
    v33 = v31;
    if (v32 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v45[0]))
    {
      v34 = sub_257ED0640();

      if ((v34 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v45[0]) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
LABEL_12:
    v44 = a2;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_257C024BC(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore, v45);

    v40 = v46;
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v39 + 8))(v33, v40, v39);
    v41 = sub_257ECCB70();
    (*(*(v41 - 8) + 56))(v17, 0, 1, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257C1C614(v17, v10);
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257BE4084(v17, &qword_27F8F5F30, &qword_257EDA9E0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    a2 = v44;
    return sub_257D462F4(a2);
  }

  sub_257ECD410();
  v35 = sub_257ECDA20();
  v36 = sub_257ECFBD0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_257BAC000, v35, v36, "Received nil photo", v37, 2u);
    MEMORY[0x259C74820](v37, -1, -1);
  }

  (*(v19 + 8))(v30, v18);
  return sub_257D462F4(a2);
}

uint64_t sub_257D462F4(uint64_t a1)
{
  v2 = sub_257ECF120();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF190();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v10, v11, v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v16 = sub_257ECFD30();
  aBlock[4] = sub_257D46EFC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_34;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v15, v8, v17);
  _Block_release(v17);

  (*(v20 + 8))(v8, v2);
  return (*(v9 + 8))(v15, v19);
}

void sub_257D465A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if ([*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v9))
  {

    sub_257D44C34();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (!v8)
    {

LABEL_12:
      v5 = sub_257DFF3FC();
      v6 = sub_257D832B0();

      v7 = sub_257DE1380();
      [v6 setImage:v7 forState:0];

      return;
    }

    v4 = sub_257ED0640();

    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *(v1 + v2);
    sub_257DB3860(v3, 0, 0);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

uint64_t sub_257D46844(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_257ECDD70();
  }

  return result;
}

void sub_257D46988(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257D46A08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D46A80(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257DFF9F8(0);
}

uint64_t sub_257D46AD4(void *a1, uint64_t *a2)
{
  v2 = sub_257ECF500();
  v4 = v3;
  if (v2 == sub_257ECF500() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_257ED0640();
  }

  return v7 & 1;
}

void sub_257D46B64(void *a1)
{
  v2 = *(sub_257ECFE10() + 16);

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620, &unk_257EDCD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDBBA0;
    *(inited + 32) = sub_257ECF500();
    *(inited + 40) = v4;
    v5 = sub_257ECFE10();
    if (*(v5 + 16))
    {
      v6 = *(v5 + 32);

      *(inited + 72) = MEMORY[0x277D84CC0];
      *(inited + 48) = v6;
      *(inited + 80) = sub_257ECF500();
      *(inited + 88) = v7;
      v8 = MEMORY[0x277D83B88];
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 96) = 5000;
      *(inited + 128) = sub_257ECF500();
      *(inited + 136) = v9;
      *(inited + 168) = v8;
      *(inited + 144) = 5000;
      sub_257BE9040(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8, &qword_257EDA540);
      swift_arrayDestroy();
      v10 = sub_257ECF3C0();

      [a1 setPreviewPhotoFormat_];
    }

    else
    {

      __break(1u);
    }
  }
}

void sub_257D46CE4(void *a1)
{
  v2 = [a1 availableEmbeddedThumbnailPhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v4 = v3;
  v5 = sub_257ECF810();

  v6 = *(v5 + 16);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620, &unk_257EDCD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDBBA0;
    *(inited + 32) = sub_257ECF500();
    *(inited + 40) = v8;
    v9 = [a1 availableEmbeddedThumbnailPhotoCodecTypes];
    v10 = sub_257ECF810();
    if (*(v10 + 16))
    {

      if (*(v10 + 16))
      {
        v11 = *(v10 + 32);

        *(inited + 72) = v4;
        *(inited + 48) = v11;
        *(inited + 80) = sub_257ECF500();
        *(inited + 88) = v12;
        v13 = MEMORY[0x277D85048];
        *(inited + 120) = MEMORY[0x277D85048];
        *(inited + 96) = 0x4060000000000000;
        *(inited + 128) = sub_257ECF500();
        *(inited + 136) = v14;
        *(inited + 168) = v13;
        *(inited + 144) = 0x4060000000000000;
        sub_257BE9040(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8, &qword_257EDA540);
        swift_arrayDestroy();
        v15 = sub_257ECF3C0();

        [a1 setEmbeddedThumbnailPhotoFormat_];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D46F28()
{
  result = qword_27F8F86C8;
  if (!qword_27F8F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86C8);
  }

  return result;
}

unint64_t sub_257D46F80()
{
  result = qword_27F8F86D0;
  if (!qword_27F8F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86D0);
  }

  return result;
}

unint64_t sub_257D47040()
{
  result = qword_27F8F86D8;
  if (!qword_27F8F86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86D8);
  }

  return result;
}

uint64_t sub_257D47094()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912FC8);
  __swift_project_value_buffer(v0, qword_27F912FC8);
  return sub_257ECCA00();
}

uint64_t sub_257D470F8()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257D471E8, v3, v2);
}

uint64_t sub_257D471E8()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE780;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D472CC;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D472CC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D4740C;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D4740C()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectPeopleIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
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

uint64_t sub_257D47588@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4638 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912FC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D47630(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D47704, v3, v2);
}

uint64_t sub_257D47704()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE56E0, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D47818(uint64_t a1)
{
  v2 = sub_257D47040();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D47864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D470F8();
}

void sub_257D47910(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80))();
  v4 = (*(a2 + 8))(a1, a2);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(a2 + 32))(a1, a2, 0.0);
    v5 = 1.0;
    if (v6)
    {
      v5 = 0.25;
    }
  }

  [v7 setAlpha_];
}

void sub_257D479D0()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control] == 4)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction] = v1;
    v3 = v1;

    if (v3)
    {
      [v0 addInteraction_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_257D47A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_257D47B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v8 setCornerCurve_];

  v9 = [v6 layer];
  [v9 setMasksToBounds_];

  return v6;
}

uint64_t sub_257D47D78(char a1)
{
  v3 = sub_257ECF120();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECF190();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11, v12, v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = a1;
  aBlock[4] = sub_257D4B7B8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v19);
  _Block_release(v19);

  (*(v23 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v22);
}

void sub_257D48044(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_257D480F4();
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) != v3)
  {
    if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing))
    {
      v4 = sub_257D15408();
    }

    else
    {
      v4 = sub_257D14B7C();
    }

    v5 = v4;
    v6 = sub_257D491F8();
    [v6 setImage:v5 forState:0];

    sub_257D48204();
  }
}

void sub_257D480F4()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

void sub_257D48204()
{
  v1 = v0;
  v2 = sub_257D49140();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  [v2 setIsAccessibilityElement_];

  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control) == 4)
  {
    v9 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v11 = v10;
    [*(v1 + v9) minimumValue];
    if (*(v1 + v3) == 1)
    {
      if (v12 < v11)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_15:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((aBlock & 1) == 0)
        {
LABEL_18:
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          v16 = sub_257D491F8();
LABEL_31:
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v23 = [objc_opt_self() bundleForClass_];
          v24 = sub_257ECF4C0();
          v25 = sub_257ECF4C0();
          v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

          sub_257ECF500();
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if ((v7 & 1) == 0)
      {
LABEL_30:
        v16 = sub_257D491F8();
        goto LABEL_31;
      }
    }

    else if (v12 < v11)
    {
      goto LABEL_15;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v16 = sub_257D491F8();
    v17 = 0;
    goto LABEL_33;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v4 + 8);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 24))(v1, &off_28690E098, v14, v13);
    swift_unknownObjectRelease();
    if (v7 & 1) == 0 && ((*(v1 + v3) & 1) == 0 || (v15))
    {
      goto LABEL_27;
    }
  }

  else if ((v7 & 1) == 0 && (*(v1 + v3) & 1) == 0)
  {
LABEL_27:
    v16 = sub_257D491F8();
    type metadata accessor for MAGUtilities();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v17 = [v19 localizedStringForKey:v20 value:0 table:v21];

    if (!v17)
    {
      sub_257ECF500();
LABEL_32:
      v17 = sub_257ECF4C0();
    }

LABEL_33:
    [v16 setAccessibilityHint_];

    goto LABEL_34;
  }

  v17 = sub_257D491F8();
  [v17 setAccessibilityHint_];
LABEL_34:

  v27 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed;
  v28 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);
  v29 = sub_257D491F8();
  v30 = *MEMORY[0x277D76580];
  v31 = [v29 accessibilityTraits];
  if (v28 == 1)
  {
    [v29 setAccessibilityTraits_];

    v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
    [v32 setAccessibilityTraits_];
  }

  else
  {
    [v29 setAccessibilityTraits_];

    v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
    [v32 setAccessibilityTraits_];
  }

  v33 = *(v1 + v3);
  v34 = sub_257D491F8();
  v35 = *MEMORY[0x277D76598];
  v36 = [v34 accessibilityTraits];
  if (v33)
  {
    v37 = v36 | v35;
  }

  else
  {
    v37 = v36 & ~v35;
  }

  [v34 setAccessibilityTraits_];

  v38 = *(v1 + v8) != 4;
  v39 = sub_257D491F8();
  v40 = *MEMORY[0x277D76548];
  v41 = [v39 accessibilityTraits];
  if ((v7 & v38) != 0)
  {
    v42 = v41 & ~v40;
  }

  else
  {
    v42 = v41 | v40;
  }

  [v39 setAccessibilityTraits_];

  if (*(v1 + v8) == 4)
  {
    if (v7 & 1) != 0 || (*(v1 + v3) & 1) != 0 || (*(v1 + v27))
    {
      goto LABEL_51;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock)
    {
LABEL_51:
      v43 = sub_257D491F8();
      sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
      v44 = sub_257ECF7F0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v43 = sub_257D491F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_257ED9BF0;
      type metadata accessor for MAGUtilities();
      v76 = swift_getObjCClassFromMetadata();
      v77 = [objc_opt_self() bundleForClass_];
      v78 = sub_257ECF4C0();
      v79 = sub_257ECF4C0();
      v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

      if (!v80)
      {
        sub_257ECF500();
        v80 = sub_257ECF4C0();
      }

      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v82 = objc_allocWithZone(MEMORY[0x277D75088]);
      v89 = sub_257D4B7B0;
      v90 = v81;
      aBlock = MEMORY[0x277D85DD0];
      v86 = 1107296256;
      v87 = sub_257D96328;
      v88 = &block_descriptor_30_0;
      v83 = _Block_copy(&aBlock);
      sub_257ECC3F0();
      v84 = [v82 initWithName:v80 actionHandler:v83];

      _Block_release(v83);

      *(v75 + 32) = v84;
      sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
      v44 = sub_257ECF7F0();
    }

    [v43 setAccessibilityCustomActions_];

    if (*(v1 + v8) == 4)
    {
      v45 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
      [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v47 = v46;
      [*(v1 + v45) minimumValue];
      v49 = v48;
      v50 = sub_257D491F8();
      if (v47 <= v49)
      {
        type metadata accessor for MAGUtilities();
        v69 = swift_getObjCClassFromMetadata();
        v70 = [objc_opt_self() bundleForClass_];
        v71 = sub_257ECF4C0();
        v72 = sub_257ECF4C0();
        v66 = [v70 localizedStringForKey:v71 value:0 table:v72];

        if (v66)
        {
LABEL_63:
          [v50 setAccessibilityValue_];

          goto LABEL_64;
        }

        sub_257ECF500();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A78, &unk_257EDD4E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        type metadata accessor for MAGUtilities();
        v52 = swift_getObjCClassFromMetadata();
        v53 = [objc_opt_self() bundleForClass_];
        v54 = sub_257ECF4C0();
        v55 = sub_257ECF4C0();
        v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

        v57 = sub_257ECF500();
        v59 = v58;

        *(inited + 32) = v57;
        *(inited + 40) = v59;
        v60 = [*(v1 + v45) accessibilityValue];
        if (v60)
        {
          v62 = v60;
          v63 = sub_257ECF500();
          v65 = v64;
        }

        else
        {
          v63 = 0;
          v65 = 0;
        }

        *(inited + 48) = v63;
        *(inited + 56) = v65;
        sub_257E5B84C(inited, v61);
        v74 = v73;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
        swift_arrayDestroy();
        if (!v74)
        {
          v66 = 0;
          goto LABEL_63;
        }
      }

      v66 = sub_257ECF4C0();

      goto LABEL_63;
    }
  }

  v66 = sub_257D491F8();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = sub_257D4B69C;
  v90 = v67;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_257D47A84;
  v88 = &block_descriptor_35;
  v68 = _Block_copy(&aBlock);

  [v66 setAccessibilityValueBlock_];
  _Block_release(v68);
LABEL_64:
}

id sub_257D49140()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  }

  else
  {
    v4 = v0;
    sub_257D15920();
    v6 = v5;
    v7 = objc_allocWithZone(type metadata accessor for MFSlider());
    v8 = sub_257C7E3BC(v6);
    [v8 setAlpha_];
    v9 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_257D491F8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_257D492D8(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257D49140();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  sub_257D48204();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

uint64_t (*sub_257D49388(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257D49410;
}

void sub_257D49410(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257D49140();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    sub_257D48204();
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }

  free(v3);
}

void sub_257D494C4(char a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) = a1;
  v3 = sub_257D49140();
  v4 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  v5 = 0.0;
  if (*(v1 + v4) == 1)
  {
    v5 = 1.0;
    if (*(v1 + v2))
    {
      v5 = 0.25;
    }
  }

  [v3 setAlpha_];

  sub_257D480F4();
  sub_257D48204();
}

_BYTE *sub_257D49560(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257D496E0();
  sub_257D49A20();
  sub_257D479D0();
  v10 = v9;
  [v10 setShowsLargeContentViewer_];
  [v10 setScalesLargeContentImage_];

  v11 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v10 addInteraction_];

  return v10;
}

void sub_257D496E0()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor_];

  v3 = sub_257D14B7C();
  v4 = sub_257D491F8();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257D49140();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257D48204();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v1 layer];
  [v11 setMasksToBounds_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider] setAlpha_];
  v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v14 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton] layer];
  [v14 setCornerRadius_];

  v15 = [*&v1[v13] layer];
  [v15 setMasksToBounds_];

  [*&v1[v13] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257D4A30C();
}

double sub_257D49A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v83 = v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v80 = v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8750, &qword_257EE4708);
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v84 = v67 - v17;
  v18 = sub_257ECF130();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_257ECFD10();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v26, v27, v28, v29);
  v31 = v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8758, &qword_257EE58B0);
  v33 = *(v32 - 8);
  v70 = v32;
  v71 = v33;
  MEMORY[0x28223BE20](v32, v34, v35, v36, v37);
  v39 = v67 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8760, &qword_257EE58B8);
  v41 = *(v40 - 8);
  v72 = v40;
  v73 = v41;
  MEMORY[0x28223BE20](v40, v42, v43, v44, v45);
  v47 = v67 - v46;
  v48 = sub_257D49140();
  v87 = v48;
  v88 = 4096;
  sub_257D4BC14();
  v49 = sub_257ECDD90();

  v87 = v49;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v50 = *MEMORY[0x277D851C0];
  v75 = *(v19 + 104);
  v76 = v19 + 104;
  v75(v25, v50, v18);
  v51 = sub_257ECFD90();
  v52 = *(v19 + 8);
  v78 = v19 + 8;
  v79 = v18;
  v74 = v52;
  v52(v25, v18);
  v89 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  v77 = sub_257BE416C();
  sub_257ECDE00();

  (*(v68 + 8))(v31, v69);
  v53 = v67[1];

  sub_257BD2C2C(0, &qword_281543D58, 0x277D75A30);
  sub_257BD2D4C(&qword_2815442F0, &qword_27F8F8758, &qword_257EE58B0, MEMORY[0x277CBCD20]);
  v54 = v70;
  sub_257ECDDA0();
  (*(v71 + 8))(v39, v54);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544448, &unk_27F8F8760, &qword_257EE58B8, MEMORY[0x277CBCB10]);
  v55 = v72;
  v56 = sub_257ECDE50();

  (*(v73 + 8))(v47, v55);
  *(v53 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription) = v56;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v57 = v80;
  sub_257ECDD30();
  swift_endAccess();
  v58 = v79;
  v75(v25, *MEMORY[0x277D851B8], v79);
  v59 = sub_257ECFD90();
  v74(v25, v58);
  v87 = v59;
  v60 = sub_257ECFCF0();
  v61 = v83;
  (*(*(v60 - 8) + 56))(v83, 1, 1, v60);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  v62 = v84;
  v63 = v82;
  sub_257ECDDF0();
  sub_257D328F8(v61);

  (*(v81 + 8))(v57, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544240, &qword_27F8F8750, &qword_257EE4708, MEMORY[0x277CBCD60]);
  v64 = v86;
  v65 = sub_257ECDE50();

  (*(v85 + 8))(v62, v64);
  *(v53 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription) = v65;

  return result;
}

void sub_257D4A30C()
{
  v1 = v0;
  v2 = sub_257D491F8();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  sub_257D14A40(v4);
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v6;
  v8 = sub_257ECF4C0();

  [v7 setAccessibilityIdentifier_];

  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    v11 = v9;
    v12 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v11 = v9;
    v15 = [v14 bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v12 = [v15 localizedStringForKey:v16 value:0 table:v17];

    if (!v12)
    {
      sub_257ECF500();
      v12 = sub_257ECF4C0();
    }
  }

  [v11 setAccessibilityHint_];

  v18 = sub_257D49140();
  sub_257D14A40(v18);
  v19 = sub_257ECF4C0();

  [v18 setAccessibilityLabel_];

  v20 = *MEMORY[0x277D76538];
  v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  [v21 setAccessibilityTraits_];

  sub_257D48204();
}

id sub_257D4A5E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

void *sub_257D4A638(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v25 = sub_257ECFD30();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    aBlock[4] = sub_257D4BC9C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_56;
    v21 = _Block_copy(aBlock);
    v24 = v19;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    v23 = v10;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v22 = v25;
    MEMORY[0x259C72880](0, v17, v9, v21);
    _Block_release(v21);

    (*(v3 + 8))(v9, v2);
    return (*(v11 + 8))(v17, v23);
  }

  return result;
}

uint64_t sub_257D4A930(uint64_t a1)
{
  v2 = sub_257D49140();
  [v2 value];
  v4 = v3;

  sub_257D15920();
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v4 != v5;
  return sub_257D47D78(v6);
}

void *sub_257D4A9B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v25 = sub_257ECFD30();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    aBlock[4] = sub_257D4BC78;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_50_0;
    v21 = _Block_copy(aBlock);
    v24 = v19;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    v23 = v10;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v22 = v25;
    MEMORY[0x259C72880](0, v17, v9, v21);
    _Block_release(v21);

    (*(v3 + 8))(v9, v2);
    return (*(v11 + 8))(v17, v23);
  }

  return result;
}

void sub_257D4ACB0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v6;
    v23.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v23);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257D491F8();
  [v20 setFrame_];

  v21 = sub_257D49140();
  [v21 setFrame_];
}

id sub_257D4AF50()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control], v2);

  if (v4)
  {
    v8 = v0[v3];
    sub_257D56A50(&v8);
    v7 = v0;
    v5 = &v7;
  }

  else
  {
    v9.receiver = v0;
    v5 = &v9;
  }

  v5->super_class = ObjectType;
  return [(objc_super *)v5 removeFromSuperview];
}

uint64_t sub_257D4B154()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257D4B19C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_257D49388(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257D4B238(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257D48204();

  return swift_unknownObjectRelease();
}

uint64_t sub_257D4B288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257D491F8();
  return v0;
}

BOOL sub_257D4B2F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 8);
      v7 = v3;
      v6();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v3 != 0;
}

void *sub_257D4B3C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_257D49140();

    v4 = [v3 accessibilityValue];
    if (v4)
    {
      v5 = sub_257ECF500();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_257D4B4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_257ECF4C0();

  return v3;
}

BOOL sub_257D4B564(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  if (sub_257ECFF50())
  {
    v6 = sub_257D491F8();
    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton) bounds];
    v13.x = v8;
    v13.y = v10;
    v11 = CGRectContainsPoint(v14, v13);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257D4B6BC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257D4B73C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D4B7C4()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257D4B898()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control) != 4)
  {
    goto LABEL_14;
  }

  sub_257D15BB4();
  v4 = v3;
  sub_257D15BB4();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage);
  swift_beginAccess();
  v23 = *v5;
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v12 = v4;
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v13 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v14 = *(v13 + 8), ObjectType = swift_getObjectType(), LOBYTE(v14) = (*(v14 + 16))(ObjectType, v14), swift_unknownObjectRelease(), (v14 & 1) != 0) || *&v23 <= v12 && (v16 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), (*(v1 + v16) & 1) == 0) || (v17 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), (*(v1 + v17) & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  if (*(v1 + v2) != 4 || (v18 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, result = swift_beginAccess(), *(v1 + v18) == 1))
  {
LABEL_14:
    v20 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v20 + 8);
      v22 = swift_getObjectType();
      (*(v21 + 8))(v1, &off_28690E098, v22, v21);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_257D4BC14()
{
  result = qword_281543C78[0];
  if (!qword_281543C78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281543C78);
  }

  return result;
}

uint64_t sub_257D4BCC8(unsigned __int8 a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v1 = sub_257ECF500();
  return v1;
}

void sub_257D4BE00(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      v3 = sub_257ECF4C0();
      v4 = sub_257ECF4C0();
      v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

      sub_257ECF500();
    }

    else
    {
      v6 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_36;
      v7 = _Block_copy(v9);
      v8 = AXLocStringForDeviceVariant();
      _Block_release(v7);

      if (v8)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_257D4BFE8()
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

void sub_257D4C188()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  type metadata accessor for UIStepperLengthCell(0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_257ECF4C0();
  [v2 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview_];

    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      sub_257EB6FD8(v10, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257D4C3C4()
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
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), v20, 0x128uLL);
            sub_257C109C8(v19);
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

id sub_257D4C698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286905990[v7 + 32];
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
      v24 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v8 + 16) + 1, 1);
        v8 = v24;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF2964((v9 > 1), v10 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  if (a2)
  {
    v17 = sub_257ECF4C0();
  }

  else
  {
    v17 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, v17, a3, a1);

  return v18;
}

id sub_257D4C970(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_2869059B8[v5 + 32];
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
      v19 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v6 + 16) + 1, 1);
        v6 = v19;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF2964((v7 > 1), v8 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

unint64_t sub_257D4CD90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v55 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v54 - v7;
  v9 = sub_257ECCEA0();
  v10 = 1;
  v11 = 4;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_9;
      }

      v10 = 3;
      goto LABEL_8;
    }

    v29 = sub_257ECF4C0();
    v11 = 2;
LABEL_24:
    v30 = sub_257ECCE30();
    v14 = [a1 dequeueReusableCellWithIdentifier:v29 forIndexPath:v30];

    v15 = v56;
    sub_257D4C3C4();
    if (v11 <= 1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    v29 = sub_257ECF4C0();
    v11 = 0;
    goto LABEL_24;
  }

  if (v9 == 1)
  {
LABEL_8:
    v11 = v10;
    LOBYTE(v10) = 0;
  }

LABEL_9:
  v12 = sub_257ECF4C0();
  v13 = sub_257ECCE30();
  v14 = [a1 dequeueReusableCellWithIdentifier:v12 forIndexPath:v13];

  v15 = v56;
  sub_257D4C3C4();
  if (v10)
  {
    return v14;
  }

  if (v11 <= 1)
  {
LABEL_11:
    if (!v11)
    {
      v16 = [v14 textLabel];
      if (v16)
      {
        v17 = v16;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v19 = [objc_opt_self() bundleForClass_];
        v20 = sub_257ECF4C0();
        v21 = sub_257ECF4C0();
        v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

        if (!v22)
        {
          sub_257ECF500();
          v22 = sub_257ECF4C0();
        }

        [v17 setText_];

        v15 = v56;
      }

      v23 = [v14 textLabel];
      if (v23)
      {
        v24 = v23;
        [v23 setNumberOfLines_];
      }

      v25 = [v14 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setLineBreakMode_];
      }

      v27 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v28 = &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v58, &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v58) == 1)
      {
      }

      else
      {
        [v27 setOn_];
        v48 = v27;
        [v48 setTag_];
        [v48 addTarget:v15 action:sel_togglePeopleDetectionSwitchChanged_ forControlEvents:4096];
        [v14 setAccessoryView_];
      }

      return v14;
    }

    v38 = sub_257ECCE60();
    if (!v38)
    {
      v39 = 0;
      goto LABEL_44;
    }

    if (v38 == 1)
    {
      v39 = 1;
LABEL_44:
      v49 = [v14 textLabel];
      if (v49)
      {
        v50 = v49;
        sub_257C69A6C(v39);
        v51 = sub_257ECF4C0();

        [v50 setText_];
      }

      v52 = &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v58, &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v58) != 1)
      {
        if ((v39 ^ v52[78]))
        {
          v53 = 0;
        }

        else
        {
          v53 = 3;
        }

        [v14 setAccessoryType_];
        [v14 setAccessoryView_];
      }
    }

    return v14;
  }

LABEL_25:
  if (v11 == 2)
  {
    type metadata accessor for UIStepperLengthCell(0);
    if (swift_dynamicCastClass())
    {
      v31 = &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v58, &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v58) != 1)
      {
        v32 = v31[78];
        memcpy(v57, v31, sizeof(v57));
        if (sub_257C108C4(v57) != 1)
        {
          v33 = objc_opt_self();
          v14 = v14;
          v34 = &selRef_feet;
          if (!v32)
          {
            v34 = &selRef_meters;
          }

          v35 = [v33 *v34];
          sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
          sub_257ECC740();
          v36 = swift_allocObject();
          *(v36 + 16) = v15;
          v37 = v15;
          sub_257D3DB54(v8, sub_257D4E288, v36);

          (*(v55 + 8))(v8, v2);
        }
      }
    }

    return v14;
  }

  v40 = *&v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks];
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v40 + 16))
  {
    v42 = *(v40 + result + 32);
    v43 = [v14 textLabel];
    if (v43)
    {
      v44 = v43;
      sub_257C69F7C(v42);
      v45 = sub_257ECF4C0();

      [v44 setText_];
    }

    v46 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v47 = &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
    memcpy(v58, &v15[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v58) != 1)
    {
      [v46 setOn_];
      v46 = v46;
      [v46 setTag_];
      [v46 addTarget:v15 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v14 setAccessoryView_];

      [v14 setAccessoryType_];
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_257D4D594(uint64_t a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE1F54(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_257D4D714(void *a1)
{
  v2 = v1;
  sub_257D4C3C4();
  v4 = sub_257C6B1C0([a1 tag]);
  if (v4 != 4)
  {
    v6 = v4;
    v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(__dst) != 1)
    {
      v8 = *(v7 + 88);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6910, &unk_257EDB1F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v6;
        sub_257EB10F4(inited);
        sub_257D4D8E4(v8);
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
                sub_257BF2964(0, *(v12 + 16) + 1, 1);
              }

              v14 = *(v12 + 16);
              v13 = *(v12 + 24);
              if (v14 >= v13 >> 1)
              {
                sub_257BF2964((v13 > 1), v14 + 1, 1);
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

        sub_257D4D8E4(v12);
      }
    }
  }

  return result;
}

double sub_257D4D8E4(uint64_t a1)
{
  sub_257D4C3C4();
  v7 = a1;

  sub_257D6D234(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE1E14(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_257D4DA5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257D4E23C(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257D4DB90(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECDA30();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECCEB0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257D4C3C4();
  v25 = sub_257ECCE30();
  v51 = [a1 cellForRowAtIndexPath_];

  if (!v51)
  {
    return;
  }

  v26 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v26 animated:1];

  if (sub_257ECCEA0() == 1)
  {
    v27 = sub_257ECCE60();
    if (!v27)
    {
      v28 = 0;
LABEL_10:
      v30 = v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
      memcpy(v53, (v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(v53) != 1 && v28 != *(v30 + 78))
      {
        v44[1] = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257CE1DFC(v28);
          swift_unknownObjectRelease();
        }

        v45 = v28;
        v46 = (v18 + 8);
        MEMORY[0x259C6F970](byte_286905A00, 1);
        v31 = sub_257ECCE30();
        v32 = [a1 cellForRowAtIndexPath_];

        if (v32)
        {
          [v32 setAccessoryType_];
        }

        v33 = *v46;
        (*v46)(v24, v17);
        MEMORY[0x259C6F970](byte_286905A01, 1);
        v34 = sub_257ECCE30();
        v35 = [a1 cellForRowAtIndexPath_];

        if (v35)
        {
          [v35 setAccessoryType_];
        }

        v33(v24, v17);
        [v51 setAccessoryType_];
        sub_257ECD420();
        v36 = sub_257ECDA20();
        v37 = sub_257ECFBD0();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = v45;
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = v38;
          _os_log_impl(&dword_257BAC000, v36, v37, "New people detection unit: %ld", v39, 0xCu);
          MEMORY[0x259C74820](v39, -1, -1);
        }

        (*(v47 + 8))(v16, v10);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v40 = 2.0;
          if (v45)
          {
            v40 = 6.0;
          }

          sub_257CE1F54(v40);
          swift_unknownObjectRelease();
        }

        [a1 beginUpdates];
        v52 = &unk_286905A08;
        sub_257C108DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
        sub_257C10934();
        v41 = v48;
        v42 = v50;
        sub_257ED0180();
        v43 = sub_257ECCDE0();
        (*(v49 + 8))(v41, v42);
        [a1 reloadSections:v43 withRowAnimation:100];

        [a1 endUpdates];
      }

      return;
    }

    if (v27 == 1)
    {
      v28 = 1;
      goto LABEL_10;
    }
  }

  v29 = v51;
}

uint64_t sub_257D4E23C(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D4E290()
{
  v1 = [v0 metadata];
  v2 = sub_257ECF3D0();

  v3 = sub_257ECF500();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = sub_257C03F6C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  sub_257BE41F4(*(v2 + 56) + 32 * v5, v10);

  if (swift_dynamicCast())
  {
    return sub_257D06454(v9);
  }

  return 0;
}

unint64_t sub_257D4E3A8()
{
  type metadata accessor for MAGAdvancedEventHandler();
  v0 = swift_allocObject();
  result = sub_257BE96E8(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_27F8F87A0 = v0;
  return result;
}

uint64_t static MAGAutomationSupport.advancedEventHandler.getter()
{
  if (qword_27F8F4640 != -1)
  {
    swift_once();
  }

  return sub_257ECC3F0();
}

void sub_257D4E46C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_257ECF4C0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27F8F87A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id static MAGAutomationSupport.magnifierDefault.getter()
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8F87A8;

  return v1;
}

uint64_t static MAGAutomationSupport.detectionModeAutomationRunning.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F8F87B0 = a1;
  return result;
}

double static MAGAutomationSupport.freezeFrameAutomationURL.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8F87A8;
  v3 = sub_257ECF4C0();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    v14 = sub_257ECCB70();
    v10 = *(*(v14 - 8) + 56);
    v11 = v14;
    v12 = a1;
    v13 = 1;
    goto LABEL_9;
  }

  v5 = sub_257ECF500();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_257ECCAC0();

    v9 = sub_257ECCB70();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a1;
    v13 = 0;
LABEL_9:

    v10(v12, v13, 1, v11);
    return result;
  }

  v16 = sub_257ECCB70();
  (*(*(v16 - 8) + 56))(a1, 1, 1, v16);

  return result;
}

BOOL static MAGAutomationSupport.freezeFrameAutomationEnabled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  static MAGAutomationSupport.freezeFrameAutomationURL.getter(v6);
  v7 = sub_257ECCB70();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_257C1C684(v6);
  return v8;
}

void static MAGAutomationSupport.clearFreezeFramePhoto()()
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F87A8;
  v1 = sub_257ECF4C0();
  [v0 removeObjectForKey_];
}

uint64_t static MAGAutomationSupport.isAutomationConfigured.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    return 1;
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    static MAGAutomationSupport.freezeFrameAutomationURL.getter(v6);
    v8 = sub_257ECCB70();
    v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
    sub_257C1C684(v6);
    return v9;
  }

  return result;
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD3C0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_257BF1FC8(0xD000000000000020, 0x8000000257EF81A0, &v19);
    _os_log_impl(&dword_257BAC000, v8, v9, "Checking for %s default", v10, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C74820](v11, -1, -1, v12);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v13 = qword_27F8F87A8;
  v14 = sub_257ECF4C0();
  v15 = [v13 stringForKey_];

  if (!v15)
  {
    return 0;
  }

  v16 = sub_257ECF500();

  return v16;
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    v9 = _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0();
    if (!v10)
    {
      return 0;
    }

    v11 = v9;
    v12 = v10;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_257ECD3C0();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBC0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_257BAC000, v14, v15, "Automation is enabled", v16, 2u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v1 + 8))(v7, v0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _s16MagnifierSupport013MAGAutomationB0V9setReplay2toy10Foundation3URLV_tFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCB40();
  v10 = v9;
  sub_257ECD3C0();

  v11 = sub_257ECDA20();
  v12 = sub_257ECFBC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_257BF1FC8(v8, v10, &v20);
    v15 = __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C74820](v14, -1, -1, v15);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v16 = qword_27F8F87A8;
  v17 = sub_257ECF4C0();

  v18 = sub_257ECF4C0();
  [v16 setObject:v17 forKey:v18];
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V16clearReplayVideoyyFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v8 = qword_27F8F87A8;
  v9 = sub_257ECF4C0();
  [v8 removeObjectForKey_];

  sub_257ECD3C0();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "Cleared replay video", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  return (*(v1 + 8))(v7, v0);
}

void _s16MagnifierSupport013MAGAutomationB0V19setFreezeFramePhoto2toy10Foundation3URLV_tFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCB40();
  v10 = v9;
  sub_257ECD3C0();

  v11 = sub_257ECDA20();
  v12 = sub_257ECFBC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_257BF1FC8(v8, v10, &v20);
    v15 = __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C74820](v14, -1, -1, v15);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v16 = qword_27F8F87A8;
  v17 = sub_257ECF4C0();

  v18 = sub_257ECF4C0();
  [v16 setObject:v17 forKey:v18];
}

void sub_257D4F488(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;

  v12 = 0;
  sub_257D6D3DC(&v102, sub_257C66F84, &type metadata for ObjectUnderstandingFeedback);
  v93 = a2;
  v94 = v6;
  v95 = v5;
  v13 = v102;
  v97 = v2;
  v14 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v102 = *v14;
  v103 = v15;
  v104 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v23 = qword_2815447E8;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  *(&v92 - 2) = &v102;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
  sub_257ECFD50();

  v25 = sub_257D55F54(v106[0], v13);

  v92 = v24;
  if ((v25 & 1) == 0)
  {
    v31 = v14[1];
    v32 = v14[2];
    v102 = *v14;
    v103 = v31;
    v104 = v32;
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v92 - 2) = &v102;

    v33 = v23;
    sub_257ECFD50();

    v34 = sub_257C55DA0(v106[0]);

    v36 = sub_257C55DA0(v35);

    v102 = v34;
    sub_257D6DA4C(v36, sub_257C4B9F4, sub_257C4D570);
    v37 = sub_257C592DC();

    if (v93)
    {
      v39 = v94;
      v38 = v95;
      if (v37)
      {
        v40 = v97 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v106[0]) = 1;
        v41 = v96;
        v42 = sub_257ECF110();
        MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
        *(&v92 - 2) = v106;
        *(&v92 - 1) = v40;
        v23 = v33;
        sub_257ECFD40();
        (*(v39 + 8))(v41, v38);
        swift_endAccess();
        v47 = v13;
      }

      else
      {
        v47 = v13;
        v23 = v33;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v102) = v37 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v47 = v13;
      v23 = v33;
      v39 = v94;
      v38 = v95;
    }

    swift_beginAccess();
    v106[0] = v47;
    sub_257ECC3F0();
    v48 = v96;
    v49 = sub_257ECF110();
    MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
    *(&v92 - 2) = v106;
    *(&v92 - 1) = v14;
    sub_257ECFD40();
    (*(v39 + 8))(v48, v38);

    swift_endAccess();
  }

  v54 = v97;
  if (!v97[5])
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v97[8];
  v56 = swift_beginAccess();
  v57 = v55[16];
  v58 = v55[17];
  v59 = v55[18];
  v102 = v55[15];
  v103 = v57;
  v104 = v58;
  v105 = v59;
  MEMORY[0x28223BE20](v56, v60, v61, v62, v63);
  *(&v92 - 2) = &v102;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v64 = v99;
  if (!v99)
  {
LABEL_17:

    return;
  }

  v96 = v23;
  if (!v54[5])
  {
    goto LABEL_22;
  }

  v65 = v98;
  v66 = v54[8];
  v67 = swift_beginAccess();
  v68 = v66[12];
  v69 = v66[13];
  v98 = v66[11];
  v99 = v68;
  v100 = v69;
  MEMORY[0x28223BE20](v67, v70, v71, v72, v73);
  *(&v92 - 2) = &v98;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v74 = v101;
  if (!*(v101 + 16) || (v75 = sub_257C03F6C(v65, v64), (v76 & 1) == 0))
  {

    return;
  }

  v77 = *(*(v74 + 56) + 296 * v75 + 120);

  v79 = *v14;
  v80 = v14[1];
  v81 = v14[2];
  v98 = v79;
  v99 = v80;
  v100 = v81;
  MEMORY[0x28223BE20](v78, v82, v83, v84, v85);
  *(&v92 - 2) = &v98;

  sub_257ECFD50();

  v86 = sub_257D55F54(v77, v101);

  if (v86)
  {

    goto LABEL_17;
  }

  v12 = v97[5];
  if (v12)
  {
    v88 = v97[9];
    v87 = v97[10];
    v90 = v97[7];
    v89 = v97[8];
    v91 = v97[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v91, v90, v89, v88, v87);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v98) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_23:
  __break(1u);

  __break(1u);
}

void sub_257D4FD54(uint64_t *a1, double a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D4FF64(char a1, uint64_t *a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D50170(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = sub_257ECF560();
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  v14 = sub_257ECC700();
  if (v5)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;

    sub_257ECF550();
    sub_257ECF520();
    if (v18)
    {
      v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v20 = sub_257ECF4C0();
      v21 = [v19 initWithSuiteName_];

      if (v21)
      {
        v22 = sub_257ECF4C0();

        v23 = sub_257ECF4C0();

        [v21 setValue:v22 forKey:v23];
        sub_257BF2550(v16, v17);
      }

      else
      {
        sub_257BF2550(v16, v17);
      }
    }

    else
    {
      sub_257BF2550(v16, v17);
    }
  }
}

void sub_257D50398(char a1, uint64_t *a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D72940();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D505A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257D72E50(&qword_27F8F89D0, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83948]);
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D507F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = sub_257ECF560();
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  v14 = sub_257ECC700();
  if (v5)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;

    sub_257ECF550();
    sub_257ECF520();
    if (v18)
    {
      v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v20 = sub_257ECF4C0();
      v21 = [v19 initWithSuiteName_];

      if (v21)
      {
        v22 = sub_257ECF4C0();

        v23 = sub_257ECF4C0();

        [v21 setValue:v22 forKey:v23];
        sub_257BF2550(v16, v17);
      }

      else
      {
        sub_257BF2550(v16, v17);
      }
    }

    else
    {
      sub_257BF2550(v16, v17);
    }
  }
}

void sub_257D50A1C(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = sub_257ECF560();
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D720A8();
  v10 = sub_257ECC700();
  if (v4)
  {
  }

  else
  {
    v12 = v10;
    v13 = v11;

    sub_257ECF550();
    sub_257ECF520();
    if (v14)
    {
      v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v16 = sub_257ECF4C0();
      v17 = [v15 initWithSuiteName_];

      if (v17)
      {
        v18 = sub_257ECF4C0();

        v19 = sub_257ECF4C0();

        [v17 setValue:v18 forKey:v19];
        sub_257BF2550(v12, v13);
      }

      else
      {
        sub_257BF2550(v12, v13);
      }
    }

    else
    {
      sub_257BF2550(v12, v13);
    }
  }
}

void sub_257D50C44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_257ECF560();
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v21 = a1;
  v22 = a2;
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257D72E50(&qword_27F8F8970, &unk_27F8F4D70, &unk_257ED81A0, MEMORY[0x277D84F40]);
  v11 = sub_257ECC700();
  if (v3)
  {
  }

  else
  {
    v13 = v11;
    v14 = v12;

    sub_257ECF550();
    sub_257ECF520();
    if (v15)
    {
      v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v17 = sub_257ECF4C0();
      v18 = [v16 initWithSuiteName_];

      if (v18)
      {
        v19 = sub_257ECF4C0();

        v20 = sub_257ECF4C0();

        [v18 setValue:v19 forKey:v20];
        sub_257BF2550(v13, v14);
      }

      else
      {
        sub_257BF2550(v13, v14);
      }
    }

    else
    {
      sub_257BF2550(v13, v14);
    }
  }
}

void sub_257D50E94(uint64_t *a1, float a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D510A4(char a1, uint64_t *a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D71E1C();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D512B4(uint64_t *a1, double a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257BF96A4();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D5152C(char a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = sub_257ECF560();
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  a3();
  v11 = sub_257ECC700();
  if (v4)
  {
  }

  else
  {
    v13 = v11;
    v14 = v12;

    sub_257ECF550();
    sub_257ECF520();
    if (v15)
    {
      v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v17 = sub_257ECF4C0();
      v18 = [v16 initWithSuiteName_];

      if (v18)
      {
        v19 = sub_257ECF4C0();

        v20 = sub_257ECF4C0();

        [v18 setValue:v19 forKey:v20];
        sub_257BF2550(v13, v14);
      }

      else
      {
        sub_257BF2550(v13, v14);
      }
    }

    else
    {
      sub_257BF2550(v13, v14);
    }
  }
}

void sub_257D51740(char a1, uint64_t *a2)
{
  v3 = sub_257ECF560();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70, &unk_257EE35B0);
  sub_257D72EF4();
  v8 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_257ECF550();
    sub_257ECF520();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v14 = sub_257ECF4C0();
      v15 = [v13 initWithSuiteName_];

      if (v15)
      {
        v16 = sub_257ECF4C0();

        v17 = sub_257ECF4C0();

        [v15 setValue:v16 forKey:v17];
        sub_257BF2550(v10, v11);
      }

      else
      {
        sub_257BF2550(v10, v11);
      }
    }

    else
    {
      sub_257BF2550(v10, v11);
    }
  }
}

void sub_257D519D8(char *a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;

  v13 = 0;
  sub_257CF41A8(&v94);
  v84 = a2;
  v85 = v12;
  v86 = v6;
  v87 = v5;
  v88 = v2;
  v14 = v94;
  v15 = &v2[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks];
  swift_beginAccess();
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  v94 = *v15;
  v95 = v16;
  v96 = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v24 = qword_2815447E8;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v83[-2] = &v94;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
  sub_257ECFD50();

  v26 = sub_257D55EE0(v98, v14);

  v32 = v14;
  v89 = v24;
  v83[1] = v25;
  if (v26)
  {
    v33 = v88;
    goto LABEL_11;
  }

  v34 = *(v15 + 1);
  v35 = *(v15 + 2);
  v94 = *v15;
  v95 = v34;
  v96 = v35;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v83[-2] = &v94;

  sub_257ECFD50();

  v32 = v14;
  v36 = sub_257C561B4(v98);

  v38 = sub_257C561B4(v37);

  v94 = v36;
  sub_257D6D8B0(v38, sub_257C4BFB8, sub_257C4D844);
  v39 = sub_257C592E0();

  if ((v84 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v94) = v39 & 1;
    v33 = v88;
    sub_257ECC3F0();
    goto LABEL_9;
  }

  v33 = v88;
  if (v39)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v94) = 1;
    sub_257ECC3F0();
LABEL_9:
    sub_257ECDD70();
  }

  swift_beginAccess();
  v98 = v14;
  sub_257ECC3F0();
  v40 = v85;
  v41 = sub_257ECF110();
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v83[-2] = &v98;
  v83[-1] = v15;
  sub_257ECFD40();
  (*(v86 + 8))(v40, v87);

  swift_endAccess();
LABEL_11:
  if (!*(v33 + 5))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = *(v33 + 8);
  v47 = swift_beginAccess();
  v48 = v46[16];
  v49 = v46[17];
  v50 = v46[18];
  v94 = v46[15];
  v95 = v48;
  v96 = v49;
  v97 = v50;
  MEMORY[0x28223BE20](v47, v51, v52, v53, v54);
  v83[-2] = &v94;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v55 = v91;
  if (!v91)
  {
LABEL_19:

    return;
  }

  v88 = v32;
  if (!*(v33 + 5))
  {
    goto LABEL_23;
  }

  v56 = v90;
  v57 = *(v33 + 8);
  v58 = swift_beginAccess();
  v59 = v57[12];
  v60 = v57[13];
  v90 = v57[11];
  v91 = v59;
  v92 = v60;
  MEMORY[0x28223BE20](v58, v61, v62, v63, v64);
  v83[-2] = &v90;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v65 = v93;
  if (!*(v93 + 16) || (v66 = sub_257C03F6C(v56, v55), (v67 & 1) == 0))
  {

    return;
  }

  v68 = *(*(v65 + 56) + 296 * v66 + 200);

  v70 = *v15;
  v71 = *(v15 + 1);
  v72 = *(v15 + 2);
  v90 = v70;
  v91 = v71;
  v92 = v72;
  MEMORY[0x28223BE20](v69, v73, v74, v75, v76);
  v83[-2] = &v90;

  sub_257ECFD50();

  v77 = sub_257D55EE0(v68, v93);

  if (v77)
  {

    goto LABEL_19;
  }

  v13 = *(v33 + 5);
  if (v13)
  {
    v79 = *(v33 + 9);
    v78 = *(v33 + 10);
    v81 = *(v33 + 7);
    v80 = *(v33 + 8);
    v82 = *(v33 + 6);
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v13, v82, v81, v80, v79, v78);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v90) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_24:
  __break(1u);

  __break(1u);
}

void sub_257D521F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v20 = MEMORY[0x277D84FA0];
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = 32;
        do
        {
          sub_257C4B448(&v19, *(v6 + v8++));
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v3);
    v9 = 0;
    v10 = v20;
    v11 = *(a2 + 16);
    v12 = a2 + 32;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v11 == v9)
      {

        return;
      }

      if (v9 >= v11)
      {
        break;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v12 + v9++);
      if ((sub_257C401E8(v15, v10) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF25A4(0, *(v13 + 16) + 1, 1);
          v13 = v20;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_257BF25A4((v17 > 1), v18 + 1, 1);
          v13 = v20;
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + v18 + 32) = v15;
        v9 = v14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
  }
}

void sub_257D523FC(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;

  v12 = 0;
  sub_257D6D3DC(&v102, sub_257C67094, &type metadata for DoorDetectionFeedback);
  v93 = a2;
  v94 = v6;
  v95 = v5;
  v13 = v102;
  v97 = v2;
  v14 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v102 = *v14;
  v103 = v15;
  v104 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v23 = qword_2815447E8;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  *(&v92 - 2) = &v102;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
  sub_257ECFD50();

  v25 = sub_257D55F54(v106[0], v13);

  v92 = v24;
  if ((v25 & 1) == 0)
  {
    v31 = v14[1];
    v32 = v14[2];
    v102 = *v14;
    v103 = v31;
    v104 = v32;
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v92 - 2) = &v102;

    v33 = v23;
    sub_257ECFD50();

    v34 = sub_257C561E4(v106[0]);

    v36 = sub_257C561E4(v35);

    v102 = v34;
    sub_257D6DA4C(v36, sub_257C4BFD4, sub_257C4D858);
    v37 = sub_257C592DC();

    if (v93)
    {
      v39 = v94;
      v38 = v95;
      if (v37)
      {
        v40 = v97 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v106[0]) = 1;
        v41 = v96;
        v42 = sub_257ECF110();
        MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
        *(&v92 - 2) = v106;
        *(&v92 - 1) = v40;
        v23 = v33;
        sub_257ECFD40();
        (*(v39 + 8))(v41, v38);
        swift_endAccess();
        v47 = v13;
      }

      else
      {
        v47 = v13;
        v23 = v33;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v102) = v37 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v47 = v13;
      v23 = v33;
      v39 = v94;
      v38 = v95;
    }

    swift_beginAccess();
    v106[0] = v47;
    sub_257ECC3F0();
    v48 = v96;
    v49 = sub_257ECF110();
    MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
    *(&v92 - 2) = v106;
    *(&v92 - 1) = v14;
    sub_257ECFD40();
    (*(v39 + 8))(v48, v38);

    swift_endAccess();
  }

  v54 = v97;
  if (!v97[5])
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v97[8];
  v56 = swift_beginAccess();
  v57 = v55[16];
  v58 = v55[17];
  v59 = v55[18];
  v102 = v55[15];
  v103 = v57;
  v104 = v58;
  v105 = v59;
  MEMORY[0x28223BE20](v56, v60, v61, v62, v63);
  *(&v92 - 2) = &v102;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v64 = v99;
  if (!v99)
  {
LABEL_17:

    return;
  }

  v96 = v23;
  if (!v54[5])
  {
    goto LABEL_22;
  }

  v65 = v98;
  v66 = v54[8];
  v67 = swift_beginAccess();
  v68 = v66[12];
  v69 = v66[13];
  v98 = v66[11];
  v99 = v68;
  v100 = v69;
  MEMORY[0x28223BE20](v67, v70, v71, v72, v73);
  *(&v92 - 2) = &v98;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v74 = v101;
  if (!*(v101 + 16) || (v75 = sub_257C03F6C(v65, v64), (v76 & 1) == 0))
  {

    return;
  }

  v77 = *(*(v74 + 56) + 296 * v75 + 112);

  v79 = *v14;
  v80 = v14[1];
  v81 = v14[2];
  v98 = v79;
  v99 = v80;
  v100 = v81;
  MEMORY[0x28223BE20](v78, v82, v83, v84, v85);
  *(&v92 - 2) = &v98;

  sub_257ECFD50();

  v86 = sub_257D55F54(v77, v101);

  if (v86)
  {

    goto LABEL_17;
  }

  v12 = v97[5];
  if (v12)
  {
    v88 = v97[9];
    v87 = v97[10];
    v90 = v97[7];
    v89 = v97[8];
    v91 = v97[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v91, v90, v89, v88, v87);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v98) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_23:
  __break(1u);

  __break(1u);
}

double sub_257D52CC8(uint64_t a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a1;

  sub_257D6D3DC(v32, sub_257C670E0, &type metadata for DoorAttribute);
  v29 = v3;
  v11 = v32[0];
  v12 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v13 = v12[1];
  v14 = v12[2];
  v30[0] = *v12;
  v30[1] = v13;
  v30[2] = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  *(&v28 - 2) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
  sub_257ECFD50();

  v21 = sub_257D55F54(v31, v11);

  if (v21)
  {
  }

  else
  {
    swift_beginAccess();
    v31 = v11;
    v23 = sub_257ECF110();
    MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
    *(&v28 - 2) = &v31;
    *(&v28 - 1) = v12;
    sub_257ECFD40();
    (*(v4 + 8))(v10, v29);

    swift_endAccess();
  }

  return result;
}

double sub_257D52FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257D5304C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v43 = *(a3 + 264);
    v44 = *(a3 + 272);
    v41 = *(a3 + 248);
    v42 = *(a3 + 256);
    v39 = *(a3 + 243);
    v40 = *(a3 + 242);
    v37 = *(a3 + 240);
    v38 = *(a3 + 241);
    v3 = *(a3 + 232);
    v36 = *(a3 + 216);
    v34 = *(a3 + 200);
    v35 = *(a3 + 208);
    v33 = *(a3 + 192);
    v30 = *(a3 + 184);
    v29 = *(a3 + 176);
    v28 = *(a3 + 168);
    v27 = *(a3 + 162);
    v31 = *(a3 + 160);
    v32 = *(a3 + 161);
    v4 = *(a3 + 152);
    v26 = *(a3 + 136);
    v25 = *(a3 + 128);
    v5 = *(a3 + 112);
    v24 = *(a3 + 120);
    v7 = *(a3 + 96);
    v6 = *(a3 + 104);
    v8 = *(a3 + 88);
    v9 = *(a3 + 80);
    v22 = *(a3 + 77);
    v23 = *(a3 + 78);
    v10 = *(a3 + 76);
    v11 = *(a3 + 75);
    v12 = *(a3 + 74);
    v13 = *(a3 + 73);
    v14 = *(a3 + 72);
    v15 = *(a3 + 52);
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    v18 = *(a3 + 24);
    v21 = *(a3 + 8);
    v19 = *(a3 + 32);
    v46 = result;

    sub_257D54F8C(__src);
    *&__src[1] = v21;
    __src[3] = v18;
    LOBYTE(__src[4]) = v19;

    __src[5] = v17;
    LODWORD(__src[6]) = v16;
    WORD2(__src[6]) = v15;
    LOBYTE(__src[9]) = v14;
    BYTE1(__src[9]) = v13;
    BYTE2(__src[9]) = v12;
    BYTE4(__src[9]) = v10;
    BYTE5(__src[9]) = v22;
    BYTE3(__src[9]) = v11;
    BYTE6(__src[9]) = v23;
    __src[10] = v9;

    __src[11] = v8;
    __src[12] = v7;
    __src[13] = v6;

    __src[14] = v5;

    __src[15] = v24;
    LOBYTE(__src[16]) = v25;
    *&__src[17] = v26;
    __src[19] = v4;
    BYTE2(__src[20]) = v27;

    __src[21] = v28;
    LOBYTE(__src[22]) = v29;

    __src[23] = v30;
    LOBYTE(__src[20]) = v31;
    BYTE1(__src[20]) = v32;

    __src[24] = v33;

    __src[25] = v34;

    __src[26] = v35;
    BYTE3(__src[30]) = v39;
    BYTE1(__src[30]) = v38;
    LOBYTE(__src[30]) = v37;
    *&__src[27] = v36;
    __src[29] = v3;
    BYTE2(__src[30]) = v40;

    __src[31] = v41;

    __src[32] = v42;

    __src[33] = v43;

    __src[34] = v44;
    BYTE1(__src[0]) = 1;
    memcpy(__dst, __src, 0x128uLL);
    swift_beginAccess();
    sub_257C09C58(__dst, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *(v47 + 112);
    *(v47 + 112) = 0x8000000000000000;
    sub_257EC6FE8(__dst, v46, a2, isUniquelyReferenced_nonNull_native);

    *(v47 + 112) = v49[0];
    swift_endAccess();
    memcpy(v49, __src, sizeof(v49));
    return sub_257C63C04(v49);
  }

  return result;
}

double sub_257D53434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v50 = a1;
  v4 = sub_257ECF120();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = (v2 + 11);
  swift_beginAccess();
  v11 = v2[12];
  v12 = v2[13];
  v56[0] = v2[11];
  v56[1] = v11;
  v56[2] = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  *(&v47 - 2) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v19 = *(v55[0] + 16);

  if (!v19)
  {
    v20 = sub_257BE816C(MEMORY[0x277D84F90]);
    v21 = v51;
    swift_beginAccess();
    v55[0] = v20;
    v22 = sub_257ECF110();
    MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
    *(&v47 - 2) = v55;
    *(&v47 - 1) = v21;
    sub_257ECFD40();
    (*(v48 + 8))(v10, v49);

    swift_endAccess();
  }

  swift_beginAccess();
  v27 = v3[14];
  v28 = v47;
  if (*(v27 + 16) && (v29 = sub_257C03F6C(v50, v47), (v30 & 1) != 0))
  {
    v31 = (*(v27 + 56) + 296 * v29);
    memcpy(v54, v31, 0x128uLL);
    memmove(v56, v31, 0x128uLL);
    CGSizeMake();
    sub_257C09C58(v54, v55);
    memcpy(v55, v56, 0x128uLL);
  }

  else
  {
    sub_257C10998(v55);
  }

  swift_endAccess();
  v32 = swift_beginAccess();
  v56[0] = v3[11];
  *&v56[1] = *(v3 + 6);
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  *(&v47 - 2) = v56;
  sub_257ECFD50();
  v37 = v54[0];
  v53 = v54[0];
  memcpy(v54, v55, 0x128uLL);
  if (sub_257C108C4(v54) == 1)
  {
    sub_257D6F90C(v50, v28, v56);
    sub_257BE4084(v56, &unk_27F8F68B0, &unk_257EE22E0);
    v38 = v53;
  }

  else
  {
    memcpy(v56, v55, 0x128uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v37;
    sub_257EC6FE8(v56, v50, v28, isUniquelyReferenced_nonNull_native);
    v38 = v52;
    v53 = v52;
  }

  v52 = v38;
  v40 = sub_257ECF110();
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  *(&v47 - 2) = &v52;
  *(&v47 - 1) = v51;
  sub_257ECFD40();
  (*(v48 + 8))(v10, v49);

  swift_endAccess();
  v45 = sub_257BE816C(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v3[14] = v45;

  return result;
}

uint64_t sub_257D53928()
{
  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v6 = swift_beginAccess();
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);

  sub_257ECFD50();

  v11 = sub_257D715D0(v13, v14);

  return v11;
}

void sub_257D53B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a3;
  v8 = sub_257ECF120();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v4;
  v16 = (v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v128[0] = a1;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_2815447E8;
  v19 = sub_257ECF110();
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  *(&v112 - 2) = v128;
  *(&v112 - 1) = v16;
  v115 = v16;
  v121 = v18;
  sub_257ECFD40();
  v24 = *(v9 + 8);
  v24(v15, v8);

  swift_endAccess();
  v25 = *(a2 + 16);
  v116 = a4;
  v118 = a2;
  if (v25 < 3)
  {
  }

  else
  {
    sub_257D6D668(a2, a2 + 32, 0, 5uLL);
    a2 = v26;
  }

  v27 = v122;
  v28 = (v122 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v128[0] = a2;
  v29 = sub_257ECF110();
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  *(&v112 - 2) = v128;
  *(&v112 - 1) = v28;
  v114 = v28;
  sub_257ECFD40();
  v24(v15, v8);

  swift_endAccess();
  v34 = (v27 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  swift_beginAccess();
  v128[0] = v120;

  v35 = sub_257ECF110();
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  *(&v112 - 2) = v128;
  *(&v112 - 1) = v34;
  v113 = v34;
  sub_257ECFD40();
  v119 = 0;
  v24(v15, v8);

  swift_endAccess();
  v40 = sub_257ECF4C0();
  v41 = MGGetBoolAnswer();

  if (!v41)
  {
    goto LABEL_21;
  }

  v42 = (v118 + 32);
  v117 = 0x8000000257EF7780;
  v118 = 0x8000000257EF74D0;
  while (2)
  {
    if (v25)
    {
      switch(*v42)
      {
        case 4:
          goto LABEL_15;
        default:
          v43 = sub_257ED0640();

          ++v42;
          --v25;
          if ((v43 & 1) == 0)
          {
            continue;
          }

          goto LABEL_16;
      }
    }

    break;
  }

  v44 = (v120 + 32);
  v45 = *(v120 + 16);
  v120 = 0xEA00000000006570;
  while (2)
  {
    if (v45)
    {
      switch(*v44)
      {
        case 4:
LABEL_15:

          break;
        default:
          v46 = sub_257ED0640();

          ++v44;
          --v45;
          if ((v46 & 1) == 0)
          {
            continue;
          }

          break;
      }

LABEL_16:
      v47 = (v116 + 32);
      v48 = *(v116 + 16);
      v120 = 0xEA00000000006570;
      while (2)
      {
        v50 = v48 == 0;
        if (v48)
        {
          switch(*v47)
          {
            case 4:

              goto LABEL_21;
            default:
              v49 = sub_257ED0640();

              ++v47;
              --v48;
              if ((v49 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    else
    {
LABEL_21:
      v50 = 0;
    }

    break;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v127[0]) = v50;
  v51 = v122;
  sub_257ECC3F0();
  sub_257ECDD70();
  if (!v51[5])
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v52 = v51[8];
  v53 = swift_beginAccess();
  v54 = v52[16];
  v55 = v52[17];
  v56 = v52[18];
  v127[0] = v52[15];
  v127[1] = v54;
  v127[2] = v55;
  v127[3] = v56;
  MEMORY[0x28223BE20](v53, v57, v58, v59, v60);
  *(&v112 - 2) = v127;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v61 = v124;
  if (!v124)
  {
    return;
  }

  if (!v51[5])
  {
    goto LABEL_37;
  }

  v62 = v123;
  v63 = v51[8];
  v64 = swift_beginAccess();
  v65 = v63[12];
  v66 = v63[13];
  v123 = v63[11];
  v124 = v65;
  v125 = v66;
  MEMORY[0x28223BE20](v64, v67, v68, v69, v70);
  *(&v112 - 2) = &v123;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v71 = v126;
  if (!*(v126 + 16))
  {
    goto LABEL_32;
  }

  v72 = sub_257C03F6C(v62, v61);
  if ((v73 & 1) == 0)
  {
    goto LABEL_32;
  }

  v74 = (*(v71 + 56) + 296 * v72);
  v76 = v74[31];
  v75 = v74[32];
  v77 = v74[33];
  v78 = v74[34];

  v120 = v75;

  v119 = v77;

  v118 = v78;

  v80 = v115[1];
  v81 = v115[2];
  v123 = *v115;
  v124 = v80;
  v125 = v81;
  MEMORY[0x28223BE20](v79, v82, v83, v84, v85);
  *(&v112 - 2) = &v123;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  LOBYTE(v80) = sub_257D55F54(v76, v126);

  if (v80)
  {
    v91 = v114[1];
    v92 = v114[2];
    v123 = *v114;
    v124 = v91;
    v125 = v92;
    MEMORY[0x28223BE20](v86, v87, v88, v89, v90);
    *(&v112 - 2) = &v123;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
    sub_257ECFD50();
    v51 = v122;

    sub_257D55FB0(v120, v126);
    LOBYTE(v91) = v93;

    if (v91)
    {
      v99 = v113[1];
      v100 = v113[2];
      v123 = *v113;
      v124 = v99;
      v125 = v100;
      MEMORY[0x28223BE20](v94, v95, v96, v97, v98);
      *(&v112 - 2) = &v123;

      sub_257ECFD50();
      v51 = v122;

      sub_257D55FB0(v119, v126);
      v102 = v101;

      if (v102)
      {
        v103 = sub_257D53928();
        sub_257D55FB0(v118, v103);
        v105 = v104;

        if (v105)
        {

LABEL_32:

          return;
        }
      }
    }
  }

  v106 = v51[5];
  if (!v106)
  {
    goto LABEL_38;
  }

  v108 = v51[9];
  v107 = v51[10];
  v110 = v51[7];
  v109 = v51[8];
  v111 = v51[6];
  sub_257D722A0(v51[5], v111, v110, v109, v108, v107);

  sub_257ECC3F0();
  sub_257D71D4C(v106, v111, v110, v109, v108, v107);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v123) = 1;
  sub_257ECDD70();
}

double sub_257D54B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = sub_257ECF120();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = v2 + 15;
  swift_beginAccess();
  v12 = v2[16];
  v13 = v2[17];
  v14 = v2[18];
  v54 = v2[15];
  v55 = v12;
  v56 = v13;
  v57 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  v21 = qword_2815447E8;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v45[-2] = &v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v45[1] = v21;
  v46 = a2;
  if (!v52)
  {
    goto LABEL_9;
  }

  if (v51 != v49 || v52 != a2)
  {
    v23 = sub_257ED0640();

    v22 = v48;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_9:
    v30 = v47;
    goto LABEL_10;
  }

  v22 = v48;
LABEL_8:
  v24 = v45[0];
  swift_beginAccess();
  v51 = 0;
  v52 = 0;
  v25 = sub_257ECF110();
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v45[-2] = &v51;
  v45[-1] = v24;
  sub_257ECFD40();
  v30 = v47;
  (*(v47 + 8))(v11, v22);
  swift_endAccess();
LABEL_10:
  v31 = swift_beginAccess();
  v32 = v3[12];
  v33 = v3[13];
  v54 = v3[11];
  v55 = v32;
  v56 = v33;
  MEMORY[0x28223BE20](v31, v34, v35, v36, v37);
  v45[-2] = &v54;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v53 = v50[1];
  sub_257D6F90C(v49, v46, &v54);
  sub_257BE4084(&v54, &unk_27F8F68B0, &unk_257EE22E0);
  v38 = v53;
  swift_beginAccess();
  v50[0] = v38;
  v39 = sub_257ECF110();
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v45[-2] = v50;
  v45[-1] = v3 + 11;
  sub_257ECFD40();
  (*(v30 + 8))(v11, v48);

  swift_endAccess();
  return result;
}

uint64_t sub_257D54F8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_257EDB790;
  *(a1 + 24) = 0x3FE0000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_286903738;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  v2 = sub_257CA930C();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 53) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  *(a1 + 75) = 1;
  *(a1 + 77) = 0;
  if (qword_2815455E0 != -1)
  {
    swift_once();
  }

  *(a1 + 78) = byte_2815483A8;
  if (qword_281545508 != -1)
  {
    swift_once();
  }

  v4 = qword_281548370;
  *(a1 + 80) = qword_281548370;
  *(a1 + 88) = &unk_286903EA0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v4;
  *(a1 + 112) = &unk_286903EC8;
  *(a1 + 120) = &unk_286903EF0;
  *(a1 + 128) = 1;
  *(a1 + 136) = xmmword_257EE5950;
  *(a1 + 152) = 0x3FA47AE147AE147BLL;
  *(a1 + 160) = 0;
  *(a1 + 162) = 1;
  *(a1 + 168) = &unk_286903768;
  *(a1 + 184) = &unk_286903F18;
  *(a1 + 192) = &unk_286903F40;
  *(a1 + 176) = 1;
  *(a1 + 200) = &unk_286903F68;
  *(a1 + 208) = &unk_286903F90;
  *(a1 + 216) = xmmword_257EE5950;
  *(a1 + 232) = 0x3FA47AE147AE147BLL;
  *(a1 + 240) = 1;
  *(a1 + 241) = UIAccessibilityIsVoiceOverRunning();
  *(a1 + 242) = 0;
  *(a1 + 243) = UIAccessibilityIsVoiceOverRunning();
  if (qword_27F8F4650 != -1)
  {
    swift_once();
  }

  *(a1 + 248) = qword_27F912FE0;
  *(a1 + 256) = &unk_286903710;
  v5 = qword_2815456D8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x277D84F90];
  *(a1 + 264) = qword_2815483C0;
  *(a1 + 272) = v6;
  *(a1 + 280) = 0xD000000000000017;
  *(a1 + 288) = 0x8000000257EFA680;
}

uint64_t sub_257D55200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_257D552D0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_257BD2C2C(0, &qword_27F8F5748, 0x277CE49F8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C72E20](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C72E20](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_257ECFF50();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_257ECFF50();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_257ED0210();
  }

  result = sub_257ED0210();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_257D55520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0) - 8;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_257D730C4(v21, v18, type metadata accessor for DetectedDoor);
        sub_257D730C4(v22, v10, type metadata accessor for DetectedDoor);
        v24 = _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(v18, v10);
        sub_257D7312C(v10, type metadata accessor for DetectedDoor);
        sub_257D7312C(v18, type metadata accessor for DetectedDoor);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_257D556C8(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v47, v4, v5, v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v17 = &v42 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_40:
    v39 = 0;
    return v39 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v43 = *(a1 + 16);
  v44 = a2 + v20;
  v45 = *(v15 + 72);
  v46 = a1 + v20;
  while (1)
  {
    v21 = v45 * v19;
    result = sub_257D730C4(v46 + v45 * v19, v17, type metadata accessor for DetectedTextBlock);
    if (v19 == v18)
    {
      break;
    }

    sub_257D730C4(v44 + v21, v9, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    v23 = v47[5];
    v24 = *&v17[v23];
    v25 = *&v9[v23];
    if (v24)
    {
      if (!v25 || (v26 = *(v24 + 16), v26 != *(v25 + 16)))
      {
LABEL_39:
        sub_257D7312C(v9, type metadata accessor for DetectedTextBlock);
        sub_257D7312C(v17, type metadata accessor for DetectedTextBlock);
        goto LABEL_40;
      }

      if (v26)
      {
        v27 = v24 == v25;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = (v24 + 56);
        v29 = (v25 + 56);
        while (v26)
        {
          result = *(v28 - 3);
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = *(v29 - 1);
          v33 = *v29;
          if (result != *(v29 - 3) || *(v28 - 2) != *(v29 - 2))
          {
            result = sub_257ED0640();
            if ((result & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          if (v30 != v32 || v31 != v33)
          {
            result = sub_257ED0640();
            if ((result & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v28 += 4;
          v29 += 4;
          if (!--v26)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v25)
    {
      goto LABEL_39;
    }

LABEL_29:
    if (!CGRectEqualToRect(*&v17[v47[6]], *&v9[v47[6]]) || *&v17[v47[7]] != *&v9[v47[7]] || v17[v47[8]] != v9[v47[8]])
    {
      goto LABEL_39;
    }

    v36 = v47[9];
    v37 = *&v17[v36];
    v38 = *&v9[v36];
    v39 = v38 == 0;
    if (v37)
    {
      if (!v38)
      {
        goto LABEL_39;
      }

      sub_257BD2C2C(0, &qword_27F8F5B20, 0x277D70098);
      v40 = v38;
      v41 = v37;
      v39 = sub_257ECFF50();
    }

    sub_257D7312C(v9, type metadata accessor for DetectedTextBlock);
    sub_257D7312C(v17, type metadata accessor for DetectedTextBlock);
    if (v39)
    {
      ++v19;
      v18 = v43;
      if (v19 != v43)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_257D55A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v18 = &v51 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v20 = a1 + 32;
  v21 = (a2 + 32);
  v22 = *(a1 + 32);
  v23 = *v21;
  v24 = *(v22 + 16);
  if (v24 != *(*v21 + 16))
  {
    return 0;
  }

  v25 = 1;
  v62 = v4;
  while (!v24 || v22 == v23)
  {
LABEL_45:
    result = v25 == v19;
    if (v25 != v19)
    {
      v22 = *(v20 + 8 * v25);
      v23 = v21[v25++];
      v24 = *(v22 + 16);
      if (v24 == *(v23 + 16))
      {
        continue;
      }
    }

    return result;
  }

  v52 = v25;
  v53 = v21;
  v54 = v20;
  v55 = v19;
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v60 = v22 + v26;
  v61 = v16;
  v59 = v23 + v26;

  v28 = 0;
  v56 = v24;
  v57 = v23;
  v58 = v22;
  while (1)
  {
    if (v28 >= *(v22 + 16))
    {
      goto LABEL_56;
    }

    v29 = *(v61 + 72) * v28;
    result = sub_257D730C4(v60 + v29, v18, type metadata accessor for DetectedTextBlock);
    if (v28 >= *(v23 + 16))
    {
      goto LABEL_57;
    }

    sub_257D730C4(v59 + v29, v10, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
LABEL_49:
      sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);
      goto LABEL_50;
    }

    v30 = *(v4 + 20);
    v31 = *&v18[v30];
    v32 = *&v10[v30];
    if (!v31)
    {
      if (v32)
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    if (!v32)
    {
      goto LABEL_49;
    }

    v33 = *(v31 + 16);
    if (v33 != *(v32 + 16))
    {
      goto LABEL_49;
    }

    if (v33 && v31 != v32)
    {
      break;
    }

LABEL_34:
    v43 = v62;
    if (!CGRectEqualToRect(*&v18[v62[6]], *&v10[v62[6]]))
    {
      goto LABEL_49;
    }

    v23 = v57;
    if (*&v18[v43[7]] != *&v10[v43[7]] || v18[v43[8]] != v10[v43[8]])
    {
      goto LABEL_49;
    }

    v44 = v43[9];
    v45 = *&v18[v44];
    v46 = *&v10[v44];
    if (!v45)
    {
      v50 = v46;
      sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);
      if (!v46)
      {
        result = sub_257D7312C(v18, type metadata accessor for DetectedTextBlock);
        goto LABEL_43;
      }

LABEL_50:
      sub_257D7312C(v18, type metadata accessor for DetectedTextBlock);
LABEL_51:

      return 0;
    }

    if (!v46)
    {
      goto LABEL_49;
    }

    sub_257BD2C2C(0, &qword_27F8F5B20, 0x277D70098);
    v47 = v46;
    v48 = v45;
    v49 = sub_257ECFF50();
    sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);

    result = sub_257D7312C(v18, type metadata accessor for DetectedTextBlock);
    if ((v49 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_43:
    ++v28;
    v22 = v58;
    v4 = v62;
    if (v28 == v56)
    {

      v16 = v61;
      v20 = v54;
      v19 = v55;
      v25 = v52;
      v21 = v53;
      goto LABEL_45;
    }
  }

  v35 = (v31 + 56);
  v36 = (v32 + 56);
  while (v33)
  {
    result = *(v35 - 3);
    v37 = *(v35 - 1);
    v38 = *v35;
    v39 = *(v36 - 1);
    v40 = *v36;
    if (result != *(v36 - 3) || *(v35 - 2) != *(v36 - 2))
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v37 != v39 || v38 != v40)
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v35 += 4;
    v36 += 4;
    if (!--v33)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_257D55EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_257D55F54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_257D55FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEA0000000000726FLL;
      v7 = 0x746361466D6F6F7ALL;
      switch(*v3)
      {
        case 1:
          v7 = 0xD000000000000011;
          v6 = 0x8000000257EF7780;
          break;
        case 2:
          v7 = 0x4379616C70736964;
          v6 = 0xEF74736172746E6FLL;
          break;
        case 3:
          v6 = 0xE700000000000000;
          v7 = 0x737265746C6966;
          break;
        case 4:
          v6 = 0xEA00000000007468;
          v7 = 0x67696C6873616C66;
          break;
        case 5:
          v7 = 0x6544656C706F6570;
          v6 = 0xEF6E6F6974636574;
          break;
        case 6:
          v7 = 0x636F4C7375636F66;
          v6 = 0xE90000000000006BLL;
          break;
        case 7:
          v7 = 0x79546172656D6163;
          v6 = 0xEA00000000006570;
          break;
        case 8:
          v7 = 0x4D65727574706163;
          v6 = 0xEB0000000065646FLL;
          break;
        case 9:
          v7 = 0x6F69746365746564;
          v6 = 0xED000065646F4D6ELL;
          break;
        case 0xA:
          v8 = 1919905636;
          goto LABEL_22;
        case 0xB:
          v7 = 0xD000000000000013;
          v6 = 0x8000000257EF74D0;
          break;
        case 0xC:
          v7 = 0x7061436567616D69;
          v6 = 0xEC0000006E6F6974;
          break;
        case 0xD:
          v6 = 0xEA00000000006B61;
          v7 = 0x657053746E696F70;
          break;
        case 0xE:
          v8 = 1954047348;
LABEL_22:
          v7 = v8 | 0x6574654400000000;
          v6 = 0xED00006E6F697463;
          break;
        case 0xF:
          v6 = 0xEA00000000007365;
          v7 = 0x6974697669746361;
          break;
        default:
          break;
      }

      v9 = 0xEA0000000000726FLL;
      v10 = 0x746361466D6F6F7ALL;
      switch(*v4)
      {
        case 1:
          v9 = 0x8000000257EF7780;
          if (v7 == 0xD000000000000011)
          {
            goto LABEL_53;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xEF74736172746E6FLL;
          if (v7 != 0x4379616C70736964)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 3:
          v9 = 0xE700000000000000;
          if (v7 != 0x737265746C6966)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xEA00000000007468;
          if (v7 != 0x67696C6873616C66)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xEF6E6F6974636574;
          if (v7 != 0x6544656C706F6570)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 6:
          v9 = 0xE90000000000006BLL;
          if (v7 != 0x636F4C7375636F66)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xEA00000000006570;
          if (v7 != 0x79546172656D6163)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 8:
          v9 = 0xEB0000000065646FLL;
          if (v7 != 0x4D65727574706163)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 9:
          v11 = 0x6F69746365746564;
          v12 = 0x65646F4D6ELL;
          goto LABEL_35;
        case 0xA:
          v10 = 0x65746544726F6F64;
          v9 = 0xED00006E6F697463;
          goto LABEL_52;
        case 0xB:
          v9 = 0x8000000257EF74D0;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xC:
          v9 = 0xEC0000006E6F6974;
          if (v7 != 0x7061436567616D69)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xD:
          v9 = 0xEA00000000006B61;
          if (v7 != 0x657053746E696F70)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xE:
          v11 = 0x6574654474786574;
          v12 = 0x6E6F697463;
LABEL_35:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v7 != v11)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xF:
          v9 = 0xEA00000000007365;
          if (v7 != 0x6974697669746361)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v7 != v10)
          {
            goto LABEL_5;
          }

LABEL_53:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_257ED0640();

            if ((v5 & 1) == 0)
            {
              return;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return;
      }
    }
  }
}

uint64_t sub_257D564BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 80);
  v31 = *(a1 + 64);
  v32 = v5;
  v33 = *(a1 + 96);
  v6 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v6;
  v7 = *(a2 + 80);
  v36 = *(a2 + 64);
  v37 = v7;
  v38 = *(a2 + 96);
  v8 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v8;
  if (BYTE1(v32) != BYTE1(v7))
  {
    return 0;
  }

  v10 = 1;
  while (1)
  {
    if (!v29)
    {
      if (v34)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (!v34)
    {
      return 0;
    }

    v11 = *(v29 + 16);
    if (v11 != *(v34 + 16))
    {
      return 0;
    }

    if (v11 && v29 != v34)
    {
      break;
    }

LABEL_26:
    sub_257C241DC(&v29, v28);
    sub_257C241DC(&v34, v28);
LABEL_27:
    if (BYTE2(v32) == 4)
    {
      if (BYTE2(v37) != 4)
      {
        goto LABEL_41;
      }
    }

    else if (BYTE2(v37) == 4 || BYTE2(v32) != BYTE2(v37))
    {
LABEL_41:
      sub_257C24238(&v34);
      sub_257C24238(&v29);
      return 0;
    }

    v39.origin.x = *(&v29 + 1);
    *&v39.origin.y = v30;
    *&v39.size.height = v31;
    v40.origin.x = *(&v34 + 1);
    *&v40.origin.y = v35;
    *&v40.size.height = v36;
    v20 = CGRectEqualToRect(v39, v40);
    sub_257C24238(&v34);
    sub_257C24238(&v29);
    if (v20 && *(&v32 + 1) == *(&v37 + 1) && *(&v31 + 1) == *(&v36 + 1) && v32 == v37)
    {
      if (v10 == v2)
      {
        return 1;
      }

      v21 = 9 * v10++;
      v21 *= 8;
      v22 = *(v3 + v21 + 48);
      v31 = *(v3 + v21 + 32);
      v32 = v22;
      v33 = *(v3 + v21 + 64);
      v23 = *(v3 + v21 + 16);
      v29 = *(v3 + v21);
      v30 = v23;
      v24 = (v4 + v21);
      v25 = v24[3];
      v36 = v24[2];
      v37 = v25;
      v38 = *(v24 + 8);
      v26 = v24[1];
      v34 = *v24;
      v35 = v26;
      if (BYTE1(v32) == BYTE1(v25))
      {
        continue;
      }
    }

    return 0;
  }

  v27 = v3;
  v12 = (v29 + 56);
  v13 = (v34 + 56);
  while (1)
  {
    v14 = *(v12 - 1);
    v15 = *v12;
    v16 = *(v13 - 1);
    v17 = *v13;
    v18 = *(v12 - 3) == *(v13 - 3) && *(v12 - 2) == *(v13 - 2);
    if (!v18 && (sub_257ED0640() & 1) == 0)
    {
      return 0;
    }

    v19 = v14 == v16 && v15 == v17;
    if (!v19 && (sub_257ED0640() & 1) == 0)
    {
      return 0;
    }

    v12 += 4;
    v13 += 4;
    if (!--v11)
    {
      sub_257C241DC(&v29, v28);
      sub_257C241DC(&v34, v28);
      v3 = v27;
      goto LABEL_27;
    }
  }
}

uint64_t sub_257D5675C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); !((*(i - 3) ^ *(v3 - 3)) >> 14) && !((*(i - 2) ^ *(v3 - 2)) >> 14); i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_257D56814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v18 = &v28 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v26 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      while (1)
      {
        sub_257D730C4(v21, v18, type metadata accessor for MAGOutputEvent);
        sub_257D730C4(v22, v10, type metadata accessor for MAGOutputEvent);
        if ((sub_257ECCCC0() & 1) == 0 || (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(&v18[v4[5]], &v10[v4[5]]) & 1) == 0 || v18[v4[6]] != v10[v4[6]])
        {
          break;
        }

        v24 = v18[v4[7]];
        sub_257D7312C(v18, type metadata accessor for MAGOutputEvent);
        v25 = v10[v4[7]];
        sub_257D7312C(v10, type metadata accessor for MAGOutputEvent);
        if (((v24 ^ v25) & 1) == 0)
        {
          v22 += v23;
          v21 += v23;
          if (--v19)
          {
            continue;
          }
        }

        v26 = v24 ^ v25 ^ 1;
        return v26 & 1;
      }

      sub_257D7312C(v10, type metadata accessor for MAGOutputEvent);
      sub_257D7312C(v18, type metadata accessor for MAGOutputEvent);
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void sub_257D56A50(_BYTE *a1)
{
  v3 = sub_257ECDA30();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v107 - v15;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v107 - v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v107 - v29;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v107 - v36;
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v44 = &v107 - v43;
  MEMORY[0x28223BE20](v45, v46, v47, v48, v49);
  v51 = &v107 - v50;
  v52 = sub_257ECF120();
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v60 = &v107 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a1)
  {
    case 1:
      v61 = v58;
      v62 = v57;
      LOBYTE(v110) = 1;
      sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_74;
      }

      v79 = v78;
      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v79;
      sub_257ECC3F0();
      sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_84;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v79;
      sub_257ECC3F0();
      sub_257ECDD70();
      v65 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__brightness;
      swift_beginAccess();
      *v109 = v79;
      if (qword_2815447E0 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_46;
    case 2:
      v61 = v58;
      v62 = v57;
      LOBYTE(v110) = 2;
      sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_77;
      }

      v90 = v89;
      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v90;
      sub_257ECC3F0();
      sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_86;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v90;
      sub_257ECC3F0();
      sub_257ECDD70();
      v65 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__contrast;
      swift_beginAccess();
      *v109 = v90;
      if (qword_2815447E0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    case 3:
      goto LABEL_65;
    case 4:
      v61 = v58;
      v62 = v57;
      LOBYTE(v110) = 4;
      sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_79;
      }

      v92 = v91;
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v110) = v92;
      sub_257ECC3F0();
      sub_257ECDD70();
      v65 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      LODWORD(v109[0]) = v92;
      if (qword_2815447E0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    case 5:
      if (!*(v1 + 40))
      {
        goto LABEL_81;
      }

      sub_257ECC3F0();
      sub_257ECD480();
      v101 = sub_257ECDA20();
      v102 = sub_257ECFBD0();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 67109120;
        _os_log_impl(&dword_257BAC000, v101, v102, "Setting peopleDetection to %{BOOL}d", v103, 8u);
        MEMORY[0x259C74820](v103, -1, -1);
      }

      (*(v107 + 8))(v51, v108);
      swift_getKeyPath();
      goto LABEL_63;
    case 6:
      if (*(v1 + 40))
      {
        goto LABEL_65;
      }

      goto LABEL_78;
    case 7:
      return;
    case 8:
      if (!*(v1 + 40))
      {
        goto LABEL_83;
      }

LABEL_65:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v110) = 0;
      sub_257ECC3F0();
      goto LABEL_66;
    case 9:
      if (!*(v1 + 40))
      {
        goto LABEL_73;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_90;
      }

      sub_257ECC3F0();
      sub_257ECD440();
      v75 = sub_257ECDA20();
      v76 = sub_257ECFBD0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 67109120;
        _os_log_impl(&dword_257BAC000, v75, v76, "Setting detectionModeOn to %{BOOL}d", v77, 8u);
        MEMORY[0x259C74820](v77, -1, -1);
      }

      (*(v107 + 8))(v16, v108);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xA:
      if (!*(v1 + 40))
      {
        goto LABEL_82;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_92;
      }

      sub_257ECC3F0();
      sub_257ECD450();
      v104 = sub_257ECDA20();
      v105 = sub_257ECFBD0();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 67109120;
        _os_log_impl(&dword_257BAC000, v104, v105, "Setting doorDetection to %{BOOL}d", v106, 8u);
        MEMORY[0x259C74820](v106, -1, -1);
      }

      (*(v107 + 8))(v30, v108);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xB:
      if (!*(v1 + 40))
      {
        goto LABEL_71;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_88;
      }

      sub_257ECC3F0();
      sub_257ECD4A0();
      v69 = sub_257ECDA20();
      v70 = sub_257ECFBD0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 67109120;
        _os_log_impl(&dword_257BAC000, v69, v70, "Setting objectUnderstanding to %{BOOL}d", v71, 8u);
        MEMORY[0x259C74820](v71, -1, -1);
      }

      (*(v107 + 8))(v23, v108);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xC:
      if (!*(v1 + 40))
      {
        goto LABEL_72;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_89;
      }

      sub_257ECC3F0();
      sub_257ECD440();
      v72 = sub_257ECDA20();
      v73 = sub_257ECFBD0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 67109120;
        *(v74 + 4) = 1;
        _os_log_impl(&dword_257BAC000, v72, v73, "Setting imageCaption to %{BOOL}d", v74, 8u);
        MEMORY[0x259C74820](v74, -1, -1);
      }

      (*(v107 + 8))(v9, v108);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v110) = 1;
      goto LABEL_66;
    case 0xD:
      if (!*(v1 + 40))
      {
        goto LABEL_80;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_91;
      }

      sub_257ECC3F0();
      sub_257ECD3E0();
      v98 = sub_257ECDA20();
      v99 = sub_257ECFBD0();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 67109120;
        _os_log_impl(&dword_257BAC000, v98, v99, "Setting pointSpeakEnabled to %{BOOL}d", v100, 8u);
        MEMORY[0x259C74820](v100, -1, -1);
      }

      (*(v107 + 8))(v44, v108);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xE:
      if (!*(v1 + 40))
      {
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
LABEL_78:
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
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v110) != 1)
      {
        return;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_87;
      }

      sub_257ECC3F0();
      sub_257ECD3E0();
      v66 = sub_257ECDA20();
      v67 = sub_257ECFBD0();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 67109120;
        _os_log_impl(&dword_257BAC000, v66, v67, "Setting textDetectionEnabled to %{BOOL}d", v68, 8u);
        MEMORY[0x259C74820](v68, -1, -1);
      }

      (*(v107 + 8))(v37, v108);
      swift_getKeyPath();
LABEL_63:
      swift_getKeyPath();
      LOBYTE(v110) = 0;
LABEL_66:
      sub_257ECDD70();
      return;
    case 0xF:
      if (!*(v1 + 40))
      {
        goto LABEL_75;
      }

      v80 = v58;
      v81 = v57;
      v82 = *(v1 + 64);
      swift_beginAccess();
      v109[0] = 0xD000000000000010;
      v109[1] = 0x8000000257EFBEB0;
      v83 = qword_2815447E0;
      sub_257ECC3F0();
      if (v83 != -1)
      {
        swift_once();
      }

      v84 = sub_257ECF110();
      MEMORY[0x28223BE20](v84, v85, v86, v87, v88);
      *(&v107 - 2) = v109;
      *(&v107 - 1) = v82 + 120;
      sub_257ECFD40();
      (*(v80 + 8))(v60, v81);
      swift_endAccess();

      return;
    default:
      v61 = v58;
      v62 = v57;
      LOBYTE(v110) = 0;
      sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_76;
      }

      v64 = v63;
      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v64;
      sub_257ECC3F0();
      sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_85;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v110 = v64;
      sub_257ECC3F0();
      sub_257ECDD70();
      v65 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
      swift_beginAccess();
      *v109 = v64;
      if (qword_2815447E0 != -1)
      {
LABEL_68:
        swift_once();
      }

LABEL_46:
      v93 = sub_257ECF110();
      MEMORY[0x28223BE20](v93, v94, v95, v96, v97);
      *(&v107 - 2) = v109;
      *(&v107 - 1) = v65;
      sub_257ECFD40();
      (*(v61 + 8))(v60, v62);
      swift_endAccess();
      return;
  }
}

void sub_257D57C64(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;

  v12 = 0;
  sub_257D6D3DC(&v107, sub_257C671A0, &type metadata for DetectionModePauseFeedback);
  v99 = a2;
  v13 = v107;
  v102 = v2;
  v14 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v107 = *v14;
  v108 = v15;
  v109 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v23 = qword_2815447E8;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v98[-2] = &v107;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
  sub_257ECFD50();

  v25 = sub_257D55F54(v111[0], v13);

  v98[1] = v24;
  if ((v25 & 1) == 0)
  {
    v98[0] = v11;
    v31 = v14[1];
    v32 = v13;
    v33 = v14[2];
    v107 = *v14;
    v108 = v31;
    v109 = v33;
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    v98[-2] = &v107;

    v34 = v23;
    sub_257ECFD50();

    v35 = sub_257C57454(v111[0]);

    v37 = sub_257C57454(v36);

    v107 = v35;
    sub_257D6D728(v37);
    v38 = sub_257C592DC();

    if (v99)
    {
      v39 = v101;
      v40 = v98[0];
      if ((v38 & 1) == 0)
      {
        v54 = v32;
        v23 = v34;
        v47 = v100;
        goto LABEL_10;
      }

      v41 = v102 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModified;
      swift_beginAccess();
      LOBYTE(v111[0]) = 1;
      v42 = sub_257ECF110();
      MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
      v98[-2] = v111;
      v98[-1] = v41;
      v23 = v34;
      sub_257ECFD40();
      v47 = v100;
    }

    else
    {
      v48 = v102 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModified;
      swift_beginAccess();
      LOBYTE(v111[0]) = v38 & 1;
      v40 = v98[0];
      v49 = sub_257ECF110();
      MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
      v98[-2] = v111;
      v98[-1] = v48;
      v23 = v34;
      sub_257ECFD40();
      v47 = v100;
      v39 = v101;
    }

    (*(v47 + 8))(v40, v39);
    swift_endAccess();
    v54 = v32;
LABEL_10:
    swift_beginAccess();
    v111[0] = v54;
    sub_257ECC3F0();
    v55 = sub_257ECF110();
    MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
    v98[-2] = v111;
    v98[-1] = v14;
    sub_257ECFD40();
    (*(v47 + 8))(v40, v39);

    swift_endAccess();
  }

  v60 = v102;
  if (!v102[5])
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v61 = v102[8];
  v62 = swift_beginAccess();
  v63 = v61[16];
  v64 = v61[17];
  v65 = v61[18];
  v107 = v61[15];
  v108 = v63;
  v109 = v64;
  v110 = v65;
  MEMORY[0x28223BE20](v62, v66, v67, v68, v69);
  v98[-2] = &v107;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v70 = v104;
  if (!v104)
  {
LABEL_18:

    return;
  }

  v101 = v23;
  if (!v60[5])
  {
    goto LABEL_23;
  }

  v71 = v103;
  v72 = v60[8];
  v73 = swift_beginAccess();
  v74 = v72[12];
  v75 = v72[13];
  v103 = v72[11];
  v104 = v74;
  v105 = v75;
  MEMORY[0x28223BE20](v73, v76, v77, v78, v79);
  v98[-2] = &v103;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v80 = v106;
  if (!*(v106 + 16) || (v81 = sub_257C03F6C(v71, v70), (v82 & 1) == 0))
  {

    return;
  }

  v83 = *(*(v80 + 56) + 296 * v81 + 208);

  v85 = *v14;
  v86 = v14[1];
  v87 = v14[2];
  v103 = v85;
  v104 = v86;
  v105 = v87;
  MEMORY[0x28223BE20](v84, v88, v89, v90, v91);
  v98[-2] = &v103;

  sub_257ECFD50();

  v92 = sub_257D55F54(v83, v106);

  if (v92)
  {

    goto LABEL_18;
  }

  v12 = v102[5];
  if (v12)
  {
    v94 = v102[9];
    v93 = v102[10];
    v96 = v102[7];
    v95 = v102[8];
    v97 = v102[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v97, v96, v95, v94, v93);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v103) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_24:
  __break(1u);

  __break(1u);
}

double sub_257D5854C(char *a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;

  sub_257D6D0F8(&v21);
  v11 = v21;
  if (*(*(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) + 16) != *(v21 + 2))
  {
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) = v21;
    sub_257ECC3F0();
  }

  v12 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedDetectionRecordingOptions;
  swift_beginAccess();
  v20 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *(&v19 - 2) = &v20;
  *(&v19 - 1) = v12;
  sub_257ECFD40();
  (*(v4 + 8))(v10, v3);

  swift_endAccess();
  return result;
}

void sub_257D5874C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[0] = a1;

  v12 = 0;
  sub_257D6D3DC(v63, sub_257C66F4C, &type metadata for ColorFilter);
  v13 = v63[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v14 = sub_257D55F54(v63[0], v13);

  if ((v14 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v63[0] = v13;
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v15 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedFilters;
  swift_beginAccess();
  v64 = v13;
  v16 = qword_2815447E0;
  sub_257ECC3F0();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_257ECF110();
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  *(&v57 - 2) = &v64;
  *(&v57 - 1) = v15;
  v58 = v15;
  sub_257ECFD40();
  (*(v5 + 8))(v11, v4);

  swift_endAccess();
  if (!v2[5])
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v2[8];
  v23 = swift_beginAccess();
  v24 = v22[16];
  v25 = v22[17];
  v26 = v22[18];
  v63[0] = v22[15];
  v63[1] = v24;
  v63[2] = v25;
  v63[3] = v26;
  MEMORY[0x28223BE20](v23, v27, v28, v29, v30);
  *(&v57 - 2) = v63;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v31 = v60;
  if (!v60)
  {
LABEL_12:

    return;
  }

  if (!v2[5])
  {
    goto LABEL_17;
  }

  v57 = v59;
  v32 = v2[8];
  v33 = swift_beginAccess();
  v34 = v32[12];
  v35 = v32[13];
  v59 = v32[11];
  v60 = v34;
  v61 = v35;
  MEMORY[0x28223BE20](v33, v36, v37, v38, v39);
  *(&v57 - 2) = &v59;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v40 = v62;
  if (!*(v62 + 16) || (v41 = sub_257C03F6C(v57, v31), (v42 & 1) == 0))
  {

    return;
  }

  v43 = *(*(v40 + 56) + 296 * v41 + 40);

  v45 = v58[1];
  v46 = v58[2];
  v59 = *v58;
  v60 = v45;
  v61 = v46;
  MEMORY[0x28223BE20](v44, v47, v48, v49, v50);
  *(&v57 - 2) = &v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28, &unk_257EE35A0);
  sub_257ECFD50();

  v51 = sub_257D55F54(v43, v62);

  if (v51)
  {

    goto LABEL_12;
  }

  v12 = v2[5];
  if (v12)
  {
    v53 = v2[9];
    v52 = v2[10];
    v55 = v2[7];
    v54 = v2[8];
    v56 = v2[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v56, v55, v54, v53, v52);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v59) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_18:
  __break(1u);

  __break(1u);
}

double sub_257D58DA0(uint64_t a1, uint64_t a2, const void *a3, char a4)
{
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v37, a3, 0x128uLL);
  if (a4)
  {
    swift_beginAccess();

    sub_257C09C58(v37, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    sub_257EC6FE8(v37, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 112) = v34[0];
  }

  else
  {
    v33 = a1;
    v18 = v4 + 88;
    swift_beginAccess();
    v35 = *(v4 + 88);
    v36 = *(v4 + 96);
    v19 = sub_257C09C58(v37, v34);
    if (qword_2815447E0 != -1)
    {
      v19 = swift_once();
    }

    MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
    *(&v32 - 2) = &v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();
    v24 = v34[0];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_257EC6FE8(v37, v33, a2, v25);
    v26 = sub_257ECF110();
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v32 - 2) = v34;
    *(&v32 - 1) = v18;
    sub_257ECFD40();
    (*(v10 + 8))(v16, v9);
  }

  swift_endAccess();
  return result;
}

void sub_257D59094(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;

  v12 = 0;
  sub_257D6D3DC(&v102, sub_257C671EC, &type metadata for DetectionFeedback);
  v93 = a2;
  v94 = v6;
  v95 = v5;
  v13 = v102;
  v97 = v2;
  v14 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v102 = *v14;
  v103 = v15;
  v104 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v23 = qword_2815447E8;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  *(&v92 - 2) = &v102;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
  sub_257ECFD50();

  v25 = sub_257D55F54(v106[0], v13);

  v92 = v24;
  if ((v25 & 1) == 0)
  {
    v31 = v14[1];
    v32 = v14[2];
    v102 = *v14;
    v103 = v31;
    v104 = v32;
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v92 - 2) = &v102;

    v33 = v23;
    sub_257ECFD50();

    v34 = sub_257C57484(v106[0]);

    v36 = sub_257C57484(v35);

    v102 = v34;
    sub_257D6DA4C(v36, sub_257C4D1EC, sub_257C4E124);
    v37 = sub_257C592DC();

    if (v93)
    {
      v39 = v94;
      v38 = v95;
      if (v37)
      {
        v40 = v97 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v106[0]) = 1;
        v41 = v96;
        v42 = sub_257ECF110();
        MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
        *(&v92 - 2) = v106;
        *(&v92 - 1) = v40;
        v23 = v33;
        sub_257ECFD40();
        (*(v39 + 8))(v41, v38);
        swift_endAccess();
        v47 = v13;
      }

      else
      {
        v47 = v13;
        v23 = v33;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v102) = v37 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v47 = v13;
      v23 = v33;
      v39 = v94;
      v38 = v95;
    }

    swift_beginAccess();
    v106[0] = v47;
    sub_257ECC3F0();
    v48 = v96;
    v49 = sub_257ECF110();
    MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
    *(&v92 - 2) = v106;
    *(&v92 - 1) = v14;
    sub_257ECFD40();
    (*(v39 + 8))(v48, v38);

    swift_endAccess();
  }

  v54 = v97;
  if (!v97[5])
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v97[8];
  v56 = swift_beginAccess();
  v57 = v55[16];
  v58 = v55[17];
  v59 = v55[18];
  v102 = v55[15];
  v103 = v57;
  v104 = v58;
  v105 = v59;
  MEMORY[0x28223BE20](v56, v60, v61, v62, v63);
  *(&v92 - 2) = &v102;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v64 = v99;
  if (!v99)
  {
LABEL_17:

    return;
  }

  v96 = v23;
  if (!v54[5])
  {
    goto LABEL_22;
  }

  v65 = v98;
  v66 = v54[8];
  v67 = swift_beginAccess();
  v68 = v66[12];
  v69 = v66[13];
  v98 = v66[11];
  v99 = v68;
  v100 = v69;
  MEMORY[0x28223BE20](v67, v70, v71, v72, v73);
  *(&v92 - 2) = &v98;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v74 = v101;
  if (!*(v101 + 16) || (v75 = sub_257C03F6C(v65, v64), (v76 & 1) == 0))
  {

    return;
  }

  v77 = *(*(v74 + 56) + 296 * v75 + 88);

  v79 = *v14;
  v80 = v14[1];
  v81 = v14[2];
  v98 = v79;
  v99 = v80;
  v100 = v81;
  MEMORY[0x28223BE20](v78, v82, v83, v84, v85);
  *(&v92 - 2) = &v98;

  sub_257ECFD50();

  v86 = sub_257D55F54(v77, v101);

  if (v86)
  {

    goto LABEL_17;
  }

  v12 = v97[5];
  if (v12)
  {
    v88 = v97[9];
    v87 = v97[10];
    v90 = v97[7];
    v89 = v97[8];
    v91 = v97[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v91, v90, v89, v88, v87);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v98) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_23:
  __break(1u);

  __break(1u);
}

void sub_257D59960(char *a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;

  v12 = 0;
  sub_257D6D268(&v102);
  v93 = a2;
  v94 = v6;
  v95 = v5;
  v13 = v102;
  v97 = v2;
  v14 = v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks;
  swift_beginAccess();
  v15 = *(v14 + 1);
  v16 = *(v14 + 2);
  v102 = *v14;
  v103 = v15;
  v104 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  v23 = qword_2815447E8;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  *(&v92 - 2) = &v102;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
  sub_257ECFD50();

  v25 = sub_257D55EE0(v106[0], v13);

  v92 = v24;
  if ((v25 & 1) == 0)
  {
    v31 = *(v14 + 1);
    v32 = *(v14 + 2);
    v102 = *v14;
    v103 = v31;
    v104 = v32;
    MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
    *(&v92 - 2) = &v102;

    v33 = v23;
    sub_257ECFD50();

    v34 = sub_257C574B4(v106[0]);

    v36 = sub_257C574B4(v35);

    v102 = v34;
    sub_257D6D8B0(v36, sub_257C4D208, sub_257C4E138);
    v37 = sub_257C592E0();

    if (v93)
    {
      v39 = v94;
      v38 = v95;
      if (v37)
      {
        v40 = v97 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v106[0]) = 1;
        v41 = v96;
        v42 = sub_257ECF110();
        MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
        *(&v92 - 2) = v106;
        *(&v92 - 1) = v40;
        v23 = v33;
        sub_257ECFD40();
        (*(v39 + 8))(v41, v38);
        swift_endAccess();
        v47 = v13;
      }

      else
      {
        v47 = v13;
        v23 = v33;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v102) = v37 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v47 = v13;
      v23 = v33;
      v39 = v94;
      v38 = v95;
    }

    swift_beginAccess();
    v106[0] = v47;
    sub_257ECC3F0();
    v48 = v96;
    v49 = sub_257ECF110();
    MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
    *(&v92 - 2) = v106;
    *(&v92 - 1) = v14;
    sub_257ECFD40();
    (*(v39 + 8))(v48, v38);

    swift_endAccess();
  }

  v54 = v97;
  if (!v97[5])
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v97[8];
  v56 = swift_beginAccess();
  v57 = v55[16];
  v58 = v55[17];
  v59 = v55[18];
  v102 = v55[15];
  v103 = v57;
  v104 = v58;
  v105 = v59;
  MEMORY[0x28223BE20](v56, v60, v61, v62, v63);
  *(&v92 - 2) = &v102;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v64 = v99;
  if (!v99)
  {
LABEL_17:

    return;
  }

  v96 = v23;
  if (!v54[5])
  {
    goto LABEL_22;
  }

  v65 = v98;
  v66 = v54[8];
  v67 = swift_beginAccess();
  v68 = v66[12];
  v69 = v66[13];
  v98 = v66[11];
  v99 = v68;
  v100 = v69;
  MEMORY[0x28223BE20](v67, v70, v71, v72, v73);
  *(&v92 - 2) = &v98;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v74 = v101;
  if (!*(v101 + 16) || (v75 = sub_257C03F6C(v65, v64), (v76 & 1) == 0))
  {

    return;
  }

  v77 = *(*(v74 + 56) + 296 * v75 + 184);

  v79 = *v14;
  v80 = *(v14 + 1);
  v81 = *(v14 + 2);
  v98 = v79;
  v99 = v80;
  v100 = v81;
  MEMORY[0x28223BE20](v78, v82, v83, v84, v85);
  *(&v92 - 2) = &v98;

  sub_257ECFD50();

  v86 = sub_257D55EE0(v77, v101);

  if (v86)
  {

    goto LABEL_17;
  }

  v12 = v97[5];
  if (v12)
  {
    v88 = v97[9];
    v87 = v97[10];
    v90 = v97[7];
    v89 = v97[8];
    v91 = v97[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v12, v91, v90, v89, v88, v87);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v98) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_23:
  __break(1u);

  __break(1u);
}

void sub_257D5A210(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;

  v13 = 0;
  sub_257D6D3DC(&v94, sub_257C6725C, &type metadata for PointSpeakFeedback);
  v84 = a2;
  v85 = v12;
  v86 = v6;
  v87 = v5;
  v88 = v2;
  v14 = v94;
  v15 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v94 = *v15;
  v95 = v16;
  v96 = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v24 = qword_2815447E8;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v83[-2] = &v94;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v26 = sub_257D55F54(v98, v14);

  v32 = v14;
  v89 = v24;
  v83[1] = v25;
  if (v26)
  {
    v33 = v88;
    goto LABEL_11;
  }

  v34 = v15[1];
  v35 = v15[2];
  v94 = *v15;
  v95 = v34;
  v96 = v35;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v83[-2] = &v94;

  sub_257ECFD50();

  v32 = v14;
  v36 = sub_257C57578(v98);

  v38 = sub_257C57578(v37);

  v94 = v36;
  sub_257D6DA4C(v38, sub_257C4D34C, sub_257C4E27C);
  v39 = sub_257C592DC();

  if ((v84 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v94) = v39 & 1;
    v33 = v88;
    sub_257ECC3F0();
    goto LABEL_9;
  }

  v33 = v88;
  if (v39)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v94) = 1;
    sub_257ECC3F0();
LABEL_9:
    sub_257ECDD70();
  }

  swift_beginAccess();
  v98 = v14;
  sub_257ECC3F0();
  v40 = v85;
  v41 = sub_257ECF110();
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v83[-2] = &v98;
  v83[-1] = v15;
  sub_257ECFD40();
  (*(v86 + 8))(v40, v87);

  swift_endAccess();
LABEL_11:
  if (!v33[5])
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = v33[8];
  v47 = swift_beginAccess();
  v48 = v46[16];
  v49 = v46[17];
  v50 = v46[18];
  v94 = v46[15];
  v95 = v48;
  v96 = v49;
  v97 = v50;
  MEMORY[0x28223BE20](v47, v51, v52, v53, v54);
  v83[-2] = &v94;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v55 = v91;
  if (!v91)
  {
LABEL_19:

    return;
  }

  v88 = v32;
  if (!v33[5])
  {
    goto LABEL_23;
  }

  v56 = v90;
  v57 = v33[8];
  v58 = swift_beginAccess();
  v59 = v57[12];
  v60 = v57[13];
  v90 = v57[11];
  v91 = v59;
  v92 = v60;
  MEMORY[0x28223BE20](v58, v61, v62, v63, v64);
  v83[-2] = &v90;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v65 = v93;
  if (!*(v93 + 16) || (v66 = sub_257C03F6C(v56, v55), (v67 & 1) == 0))
  {

    return;
  }

  v68 = *(*(v65 + 56) + 296 * v66 + 192);

  v70 = *v15;
  v71 = v15[1];
  v72 = v15[2];
  v90 = v70;
  v91 = v71;
  v92 = v72;
  MEMORY[0x28223BE20](v69, v73, v74, v75, v76);
  v83[-2] = &v90;

  sub_257ECFD50();

  v77 = sub_257D55F54(v68, v93);

  if (v77)
  {

    goto LABEL_19;
  }

  v13 = v33[5];
  if (v13)
  {
    v79 = v33[9];
    v78 = v33[10];
    v81 = v33[7];
    v80 = v33[8];
    v82 = v33[6];
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v13, v82, v81, v80, v79, v78);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v90) = 1;
    sub_257ECDD70();
    return;
  }

LABEL_24:
  __break(1u);

  __break(1u);
}

float sub_257D5AAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

double sub_257D5AB30@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFEnvironment.LiveLens(0);
  swift_allocObject();
  v2 = sub_257D5B724();
  *a1 = v2;
  type metadata accessor for MFEnvironment.FrameData(0);
  swift_allocObject();
  v14 = sub_257D5AF08();
  a1[1] = v14;
  type metadata accessor for MFEnvironment.FreezeFrame(0);
  swift_allocObject();
  v3 = sub_257D5CB24();
  a1[2] = v3;
  type metadata accessor for MFEnvironment.Analytics();
  swift_allocObject();
  v4 = sub_257D6CE34();
  a1[4] = v4;
  type metadata accessor for MFEnvironment.Automation();
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000020;
  v5[3] = 0x8000000257EF81A0;
  v5[4] = 0;
  v5[5] = 0xE000000000000000;
  v5[6] = 0xD00000000000001ELL;
  v5[7] = 0x8000000257EF8180;
  v5[8] = MEMORY[0x277D84F90];
  a1[5] = v5;
  type metadata accessor for MFEnvironment.UserControls(0);
  v6 = swift_allocObject();
  sub_257D66D2C();
  a1[3] = v6;
  v7 = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[10];
  v12 = v6[9];
  v13 = v6[5];
  v6[5] = v2;
  v6[6] = v14;
  v6[7] = v3;
  v6[8] = v6;
  v6[9] = v4;
  v6[10] = v5;
  swift_retain_n();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257D71D4C(v13, v7, v8, v9, v12, v10);

  return result;
}

double static MFEnvironment.setCardPositionToBottom()()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v16 = 2;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  *&v15[-16] = &v16;
  *&v15[-8] = v8;
  sub_257ECFD40();
  (*(v1 + 8))(v7, v0);
  swift_endAccess();
  return result;
}

uint64_t sub_257D5AF08()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20, &qword_257EE6E60);
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v2, v3, v4, v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18, &qword_257EE6E58);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v31 - v22;
  v24 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0, &qword_257EE59E0);
  sub_257ECDD20();
  (*(v17 + 32))(v0 + v24, v23, v16);
  v25 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F87F0, &qword_257EE59E8);
  sub_257ECDD20();
  (*(v9 + 32))(v0 + v25, v15, v8);
  v26 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F87F8, &qword_257EE59F0);
  sub_257ECDD20();
  v27 = *(v1 + 32);
  v28 = v31;
  v27(v0 + v26, v7, v31);
  v29 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer;
  v32 = 0;
  sub_257ECDD20();
  v27(v0 + v29, v7, v28);
  return v0;
}

uint64_t sub_257D5B1F0()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18, &qword_257EE6E58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20, &qword_257EE6E60);
  v9 = *(*(v6 - 8) + 8);
  (v9)((v6 - 8), v0 + v5, v6);
  v7 = v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer;

  return v9(v7, v6);
}

uint64_t sub_257D5B338()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  sub_257ECC3F0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18, &qword_257EE6E58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20, &qword_257EE6E60);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_257D5B4B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFEnvironment.FrameData(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

float sub_257D5B50C@<S0>(float *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_257D5B58C(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D5B61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    swift_getKeyPath();
    sub_257ECCA50();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0, &unk_257EE6B60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_257D5B724()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10, &qword_257EEB900);
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v80 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v77 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00, &qword_257EE6E38);
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v74 = &v69 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v20 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v21, v22, v23, v24);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70, &unk_257EE2660);
  v71 = *(v27 - 8);
  v72 = v27;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v33 = &v69 - v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8, &unk_257EE6E28);
  v34 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v35, v36, v37, v38);
  v40 = &v69 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43, v44, v45, v46);
  v48 = &v69 - v47;
  type metadata accessor for MFEnvironment.Display(0);
  swift_allocObject();
  *(v0 + 16) = sub_257D5D780();
  v49 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  (*(v42 + 32))(v1 + v49, v48, v41);
  v50 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v83 = 0;
  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECDD20();
  (*(v34 + 32))(v1 + v50, v40, v70);
  v51 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v83 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FA0, qword_257EDFA90);
  sub_257ECDD20();
  (*(v71 + 32))(v1 + v51, v33, v72);
  v52 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v53 = *(v20 + 32);
  v54 = v73;
  v53(v1 + v52, v26, v73);
  v55 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  LODWORD(v83) = 0;
  v56 = v74;
  sub_257ECDD20();
  (*(v75 + 32))(v1 + v55, v56, v76);
  v57 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8838, &qword_257EE5A10);
  v58 = v77;
  sub_257ECDD20();
  (*(v78 + 32))(v1 + v57, v58, v79);
  v59 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v53(v1 + v59, v26, v54);
  v60 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v53(v1 + v60, v26, v54);
  v61 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v53(v1 + v61, v26, v54);
  *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) = 0;
  v62 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v53(v1 + v62, v26, v54);
  v63 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded;
  LOBYTE(v83) = 0;
  sub_257ECDD20();
  v64 = v54;
  v53(v1 + v63, v26, v54);
  v65 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  LOBYTE(v83) = 0;
  v66 = v80;
  sub_257ECDD20();
  (*(v81 + 32))(v1 + v65, v66, v82);
  v67 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape;
  LOBYTE(v83) = 1;
  sub_257ECDD20();
  v53(v1 + v67, v26, v64);
  return v1;
}

uint64_t sub_257D5BE48()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8, &unk_257EE6E28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70, &unk_257EE2660);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v17 = *(*(v8 - 8) + 8);
  (v17)((v8 - 8), v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00, &qword_257EE6E38);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded, v8);
  v13 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10, &qword_257EEB900);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape;

  return (v17)(v15, v8);
}

uint64_t sub_257D5C168()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8, &unk_257EE6E28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70, &unk_257EE2660);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00, &qword_257EE6E38);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded, v8);
  v14 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10, &qword_257EEB900);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape, v8);
  return v0;
}

uint64_t sub_257D5C48C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v3;
}

double sub_257D5C534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257D5C5AC(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257D5C6D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F685369746C756DLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x746E656D75636F64;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6853656C676E6973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000746FLL;
  }

  v7 = 0x6F685369746C756DLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x746E656D75636F64;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6853656C676E6973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000746FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257D5C7E0()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257D5C88C(uint64_t a1)
{
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257D5C924(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

unint64_t sub_257D5C9CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D72C40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_257D5C9FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746FLL;
  v4 = 0xE900000000000074;
  v5 = 0x6F685369746C756DLL;
  if (v2 != 1)
  {
    v5 = 0x746E656D75636F64;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6853656C676E6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_257D5CB24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0, &qword_257EE9BA0);
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v96 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v93 = &v81 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v92, v14, v15, v16, v17);
  v91 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v90 = &v81 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90, &unk_257EE6E10);
  v88 = *(v25 - 8);
  v89 = v25;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v87 = &v81 - v30;
  v31 = sub_257ECCEB0();
  v85 = *(v31 - 8);
  v86 = v31;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v84 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = &v81 - v42;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v44 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v45, v46, v47, v48);
  v50 = &v81 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v53, v54, v55, v56);
  v58 = &v81 - v57;
  type metadata accessor for MFEnvironment.Display(0);
  swift_allocObject();
  *(v0 + 16) = sub_257D5D780();
  v59 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v60 = *(v52 + 32);
  v83 = v51;
  v60(v1 + v59, v58, v51);
  v82 = v60;
  v61 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v60(v1 + v61, v58, v51);
  v62 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v63 = *(v44 + 32);
  v64 = v81;
  v63(v1 + v62, v50, v81);
  v65 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v63(v1 + v65, v50, v64);
  v66 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v67 = v85;
  v68 = v86;
  (*(v85 + 16))(v84, v43, v86);
  v69 = v87;
  sub_257ECDD20();
  (*(v67 + 8))(v43, v68);
  (*(v88 + 32))(v1 + v66, v69, v89);
  v70 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v71 = sub_257ECCB70();
  v72 = v90;
  (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
  sub_257BE401C(v72, v91, &qword_27F8F5F30, &qword_257EDA9E0);
  v73 = v93;
  sub_257ECDD20();
  sub_257BE4084(v72, &qword_27F8F5F30, &qword_257EDA9E0);
  (*(v94 + 32))(v1 + v70, v73, v95);
  v74 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v75 = v83;
  v76 = v82;
  v82(v1 + v74, v58, v83);
  v77 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode;
  LOBYTE(v99) = 0;
  sub_257ECDD20();
  v76(v1 + v77, v58, v75);
  v78 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v99 = 0u;
  v100 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8868, &qword_257EE5A50);
  v79 = v96;
  sub_257ECDD20();
  (*(v97 + 32))(v1 + v78, v79, v98);
  return v1;
}

uint64_t sub_257D5D234()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode, v5);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90, &unk_257EE6E10);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode, v2);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0, &qword_257EE9BA0);
  v13 = *(*(v12 - 8) + 8);

  return v13(v0 + v11, v12);
}

uint64_t sub_257D5D470()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode, v5);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90, &unk_257EE6E10);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode, v2);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0, &qword_257EE9BA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

double sub_257D5D6F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D5D780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v58 = &v51 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v57, v7, v8, v9, v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v55 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E8, &qword_257EE6E08);
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v52 = &v51 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E0, &qword_257EE6E00);
  v24 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v25, v26, v27, v28);
  v30 = &v51 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33, v34, v35, v36);
  v38 = &v51 - v37;
  v39 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__brightness;
  v61 = 0x3FE0000000000000;
  sub_257ECDD20();
  v40 = *(v32 + 32);
  v40(v0 + v39, v38, v31);
  v41 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__contrast;
  v61 = 0x3FE0000000000000;
  sub_257ECDD20();
  v40(v0 + v41, v38, v31);
  v42 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__zoomPercentage;
  v61 = 0;
  sub_257ECDD20();
  v40(v0 + v42, v38, v31);
  v43 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__panAmountRatio;
  type metadata accessor for CGPoint(0);
  v61 = 0;
  v62 = 0;
  sub_257ECDD20();
  (*(v24 + 32))(v0 + v43, v30, v51);
  v44 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__perspectiveTransformSourceRatios;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8890, &qword_257EE5A68);
  v45 = v52;
  sub_257ECDD20();
  (*(v53 + 32))(v0 + v44, v45, v54);
  *(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor) = 0x3FF0000000000000;
  v46 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__assetURL;
  v47 = sub_257ECCB70();
  v48 = v55;
  (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
  sub_257BE401C(v48, v56, &qword_27F8F5F30, &qword_257EDA9E0);
  v49 = v58;
  sub_257ECDD20();
  sub_257BE4084(v48, &qword_27F8F5F30, &qword_257EDA9E0);
  (*(v59 + 32))(v0 + v46, v49, v60);
  return v0;
}