void *sub_2456E0180@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2456E01B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_245748700();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2456E01DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E0214()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2456E02E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456E0300(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2456E0370()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2456E0478()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E04B0()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E04F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2456E0530()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E0580()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E05B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E0608()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E07A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E07E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2456E0840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2456E0888()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E08D0()
{
  v1 = sub_245747C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2456E09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2456E0A68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2456E1080(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24570E8B8(v1);
}

uint64_t sub_2456E1120()
{
  MEMORY[0x245D71370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E115C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456E119C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2456E11F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE250B8, &qword_24574C308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2456E1288()
{
  MEMORY[0x245D71370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456E12C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E12F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E1330@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessConfig.imageWidth.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2456E1364(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_2456E1378@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessConfig.imageHeight.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2456E13AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 40) = *result;
  *(a2 + 48) = v2;
  return result;
}

void *sub_2456E13EC(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_2456E13FC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureTypes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2456E1428(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

unint64_t sub_2456E146C@<X0>(unint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.minRequiredGesturesCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1498(void *result, uint64_t a2)
{
  *(a2 + 96) = *result;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_2456E14A8@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipSoftTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E14D4(void *result, uint64_t a2)
{
  *(a2 + 112) = *result;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_2456E14E4@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipSoftAccessible.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1510(void *result, uint64_t a2)
{
  *(a2 + 128) = *result;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_2456E1520@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipHardTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E154C(void *result, uint64_t a2)
{
  *(a2 + 144) = *result;
  *(a2 + 152) = 0;
  return result;
}

uint64_t sub_2456E155C@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureSkipHardAccessible.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1588(void *result, uint64_t a2)
{
  *(a2 + 160) = *result;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_2456E1598@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessActiveConfig.maxRetakeCount.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2456E15C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 192) = *result;
  *(a2 + 200) = v2;
  return result;
}

uint64_t sub_2456E15DC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.sessionTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1608(void *result, uint64_t a2)
{
  *(a2 + 176) = *result;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_2456E1618@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.faceOutOfBoundFrames.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1644(void *result, uint64_t a2)
{
  *(a2 + 208) = *result;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_2456E1654@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureCompletionDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1680(void *result, uint64_t a2)
{
  *(a2 + 224) = *result;
  *(a2 + 232) = 0;
  return result;
}

uint64_t sub_2456E1690@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialVideoDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E16BC(void *result, uint64_t a2)
{
  *(a2 + 240) = *result;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_2456E16CC@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialVideoDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E16F8(void *result, uint64_t a2)
{
  *(a2 + 256) = *result;
  *(a2 + 264) = 0;
  return result;
}

uint64_t sub_2456E1708@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.tutorialResumeDelay.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1734(void *result, uint64_t a2)
{
  *(a2 + 272) = *result;
  *(a2 + 280) = 0;
  return result;
}

uint64_t sub_2456E1744@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.gestureDetectedSuccessDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1770(void *result, uint64_t a2)
{
  *(a2 + 288) = *result;
  *(a2 + 296) = 0;
  return result;
}

uint64_t sub_2456E1780@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessActiveConfig.lastGestureExtraFrameDuration.getter();
  *a1 = result;
  return result;
}

void *sub_2456E17AC(void *result, uint64_t a2)
{
  *(a2 + 304) = *result;
  *(a2 + 312) = 0;
  return result;
}

uint64_t sub_2456E17BC@<X0>(uint64_t a1@<X8>)
{
  result = RGBLivenessPassiveConfig.maxRetakeCount.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2456E17EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 40) = *result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t sub_2456E1800@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.sessionTimeout.getter();
  *a1 = result;
  return result;
}

void *sub_2456E182C(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_2456E183C@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.faceOutOfBoundFrames.getter();
  *a1 = result;
  return result;
}

void *sub_2456E1868(void *result, uint64_t a2)
{
  *(a2 + 72) = *result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_2456E1878@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.totalFrameCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E18A4(void *result, uint64_t a2)
{
  *(a2 + 88) = *result;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_2456E18B4@<X0>(uint64_t *a1@<X8>)
{
  result = RGBLivenessPassiveConfig.minimumValidFrameCount.getter();
  *a1 = result;
  return result;
}

void *sub_2456E18E0(void *result, uint64_t a2)
{
  *(a2 + 104) = *result;
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_2456E1900(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 112);

    return v9(v10, a2, v8);
  }
}

void *sub_2456E19BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 112);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2456E1B70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456E1BC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24570EDE4(v1, v2);
}

uint64_t sub_2456E1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2457481B0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2456E1D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2457481B0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2456E1E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D0, &qword_24574CCC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25318, &qword_24574CD40);
  sub_24573EB5C();
  sub_24573ED88();
  sub_24573EDDC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2456E1F7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D6FE40]();
  *a1 = result;
  return result;
}

uint64_t sub_2456E1FDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_245748080();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2456E2034()
{
  v1 = (type metadata accessor for RGBLivenessView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_2457481B0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2456E2278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_245748020();
  *a1 = result;
  return result;
}

uint64_t sub_2456E22CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_245748040();
  *a1 = result;
  return result;
}

uint64_t sub_2456E23D4()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();

  v6 = sub_245747E50();
  v7 = sub_245748910();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v10 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16);
    v15[0] = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v15[1] = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 8);
    v15[2] = v10;
    v16 = v9;
    type metadata accessor for CMTime(0);
    v11 = sub_245748730();
    v13 = sub_24572EDDC(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2456DE000, v6, v7, "AVCaptureFileOutput start timestamp set to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D712D0](v9, -1, -1);
    MEMORY[0x245D712D0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2456E25B4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v90 = a1;
  v91 = a2;
  v5 = sub_245747DC0();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v81 - v8;
  v96 = sub_245747C30();
  v9 = *(v96 - 8);
  v10 = MEMORY[0x28223BE20](v96);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v81 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v81 - v17;
  v19 = sub_245747E60();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  v93 = v4;
  if (*(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording))
  {
    sub_245747CF0();
    v26 = sub_245747E50();
    v27 = sub_245748910();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2456DE000, v26, v27, "Unable to startRecording, a recording has already started.", v28, 2u);
      MEMORY[0x245D712D0](v28, -1, -1);
    }

    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v81 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
    v84 = v3;
    sub_245747CF0();
    v30 = sub_245747E50();
    v31 = sub_245748910();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v83 = v18;
      v33 = v9;
      v34 = v32;
      *v32 = 0;
      _os_log_impl(&dword_2456DE000, v30, v31, "Starting AV file recording.", v32, 2u);
      v35 = v34;
      v9 = v33;
      v18 = v83;
      MEMORY[0x245D712D0](v35, -1, -1);
    }

    (*(v20 + 8))(v25, v19);
    v36 = v93;
    v37 = [*(v93 + 24) URLsForDirectory:13 inDomains:1];
    v38 = sub_2457487A0();

    if (*(v38 + 16))
    {
      v39 = *(v9 + 2);
      v40 = v96;
      v39(v16, v38 + ((v9[80] + 32) & ~v9[80]), v96);
      v82 = v39;

      (*(v9 + 4))(v18, v16, v40);
      v41 = v92;
      sub_245747C00();
      v42 = v88;
      v39(v88, v41, v40);
      (*(v9 + 7))(v42, 0, 1, v40);
      v43 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
      swift_beginAccess();
      sub_2456E729C(v42, v36 + v43);
      swift_endAccess();
      sub_2456E5008();
      sub_2456E730C(0, &qword_27EE244E8, 0x277CE6460);
      v44 = v89;
      v82(v89, v41, v40);
      v45 = *(v36 + 16);
      v46 = v84;
      v47 = sub_2456E6E28(v44, v45);
      if (v46)
      {

        v48 = *(v9 + 1);
        v49 = v96;
        v48(v41, v96);
        return (v48)(v18, v49);
      }

      else
      {
        v50 = v47;
        v89 = v9;

        v51 = *MEMORY[0x277CE5EA8];
        v52 = *(v36 + 32);
        v83 = v18;
        if (v52)
        {
          v53 = sub_245748640();
        }

        else
        {
          v53 = 0;
        }

        v54 = [objc_allocWithZone(MEMORY[0x277CE6468]) initWithMediaType:v51 outputSettings:v53];

        [v54 setExpectsMediaDataInRealTime_];
        if ([v50 canAddInput_])
        {
          [v50 addInput_];
          [v50 startWriting];
          v55 = v93;
          v56 = *(v93 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer);
          *(v93 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer) = v50;
          v57 = v50;

          v58 = *(v55 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput);
          *(v55 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput) = v54;
          v59 = v54;

          v60 = *MEMORY[0x277CC08F0];
          v61 = v96;
          v84 = 0;
          v62 = *(MEMORY[0x277CC08F0] + 8);
          v63 = *(MEMORY[0x277CC08F0] + 12);
          v64 = *(MEMORY[0x277CC08F0] + 16);
          v65 = v55 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
          *v65 = v60;
          *(v65 + 8) = v62;
          *(v65 + 12) = v63;
          *(v65 + 16) = v64;
          sub_2456E23D4();

          v66 = *(v89 + 1);
          v66(v92, v61);
          v66(v83, v61);
          v67 = v55 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
          *v67 = v60;
          *(v67 + 8) = v62;
          *(v67 + 12) = v63;
          *(v67 + 16) = v64;
          *(v55 + v81) = 1;
          v68 = (v55 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);
          v69 = v91;
          *v68 = v90;
          v68[1] = v69;
        }

        else
        {
          v94 = 0;
          v95 = 0xE000000000000000;
          sub_245748AA0();

          v94 = 0xD000000000000014;
          v95 = 0x8000000245756EA0;
          v70 = [v54 debugDescription];
          v71 = sub_245748700();
          v88 = v50;
          v72 = v71;
          v74 = v73;

          MEMORY[0x245D70540](v72, v74);

          MEMORY[0x245D70540](0xD000000000000011, 0x8000000245756EC0);
          v75 = [v50 debugDescription];
          v76 = sub_245748700();
          v78 = v77;

          MEMORY[0x245D70540](v76, v78);

          v93 = v94;
          (*(v86 + 104))(v85, *MEMORY[0x277CFFC28], v87);
          v79 = v96;
          sub_245723158(MEMORY[0x277D84F90]);
          sub_245747DD0();
          sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
          swift_allocError();
          sub_245747DE0();
          swift_willThrow();

          v80 = *(v89 + 1);
          v80(v92, v79);
          return (v80)(v83, v79);
        }
      }
    }

    else
    {

      (*(v86 + 104))(v85, *MEMORY[0x277CFFC20], v87);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      swift_allocError();
      sub_245747DE0();
      return swift_willThrow();
    }
  }
}

void sub_2456E3040(opaqueCMSampleBuffer *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - v6;
  v8 = sub_245747E60();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) == 1 && (v19 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) != 0 && (v20 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput)) != 0 && (v21 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8)) != 0)
  {
    v82 = &v79 - v17;
    v83 = v18;
    v84 = v7;
    v85 = v8;
    v88 = v9;
    v89 = v2;
    v81 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);
    v22 = (v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v23 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp);
    v24 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16);
    v25 = *MEMORY[0x277CC08F0];
    v86 = *(MEMORY[0x277CC08F0] + 16);
    v26 = v21;
    v90 = v19;
    v27 = v20;
    v87 = v26;

    time1.value = v23;
    *&time1.timescale = v22[1];
    time1.epoch = v24;
    time2.value = v25;
    *&time2.timescale = *(MEMORY[0x277CC08F0] + 8);
    time2.epoch = v86;
    if (!CMTimeCompare(&time1, &time2))
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, a1);
      epoch = time1.epoch;
      v29 = *&time1.timescale;
      *v22 = time1.value;
      v22[1] = v29;
      v22[2] = epoch;
      sub_2456E23D4();
      v30 = v22[2];
      time1.value = *v22;
      *&time1.timescale = v22[1];
      time1.epoch = v30;
      [v90 startSessionAtSourceTime_];
    }

    if (![v27 isReadyForMoreMediaData])
    {
      v40 = v27;

      sub_245747CF0();
      v41 = sub_245747E50();
      v42 = sub_245748910();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v88;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2456DE000, v41, v42, "WriterInput is not ready for more media, skipping frame.", v45, 2u);
        MEMORY[0x245D712D0](v45, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v15, v85);
      return;
    }

    CMSampleBufferGetPresentationTimeStamp(&time1, a1);
    v31 = time1.epoch;
    v32 = *&time1.timescale;
    v33 = (v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp);
    *v33 = time1.value;
    v33[1] = v32;
    v33[2] = v31;
    v34 = [v27 appendSampleBuffer_];
    v35 = v88;
    v36 = v89;
    if (v34)
    {

      return;
    }

    v46 = [v90 error];
    v80 = v3;
    if (v46)
    {
      time1.value = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      type metadata accessor for AVError(0);
      v47 = swift_dynamicCast();
      v48 = v84;
      if (v47)
      {
        value = time2.value;
        time1.value = time2.value;
        sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);
        sub_245747B70();

        if (time2.value == -11823)
        {
          v50 = v27;
          v51 = v82;
          sub_245747CF0();
          v52 = v90;
          v53 = sub_245747E50();
          v54 = sub_245748920();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            time1.value = v90;
            *v55 = 134218242;
            *(v55 + 4) = [v52 status];

            *(v55 + 12) = 2080;
            v56 = v52;
            v57 = [v52 &off_278E843F8];
            if (v57)
            {
              v58 = v57;
              swift_getErrorValue();
              v59 = sub_245748C20();
              v61 = v60;
            }

            else
            {
              v59 = 7104878;
              v61 = 0xE300000000000000;
            }

            v77 = sub_24572EDDC(v59, v61, &time1.value);

            *(v55 + 14) = v77;
            _os_log_impl(&dword_2456DE000, v53, v54, "Recording already exists at output URL, removing to enable new liveness recording (status: %ld, error: %s).", v55, 0x16u);
            v78 = v90;
            __swift_destroy_boxed_opaque_existential_0Tm(v90);
            MEMORY[0x245D712D0](v78, -1, -1);
            MEMORY[0x245D712D0](v55, -1, -1);

            (*(v35 + 8))(v82, v85);
            v36 = v89;
            v52 = v56;
          }

          else
          {

            (*(v35 + 8))(v51, v85);
          }

          sub_2456E3A24();
          sub_2456E25B4(v81, v87);
          if (v36)
          {
          }

          else
          {
          }

          return;
        }
      }
    }

    else
    {

      v48 = v84;
    }

    v62 = v83;
    sub_245747CF0();
    v63 = v90;
    v64 = sub_245747E50();
    v65 = sub_245748920();
    if (os_log_type_enabled(v64, v65))
    {
      LODWORD(v87) = v65;
      v66 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      time1.value = v86;
      *v66 = 134218242;
      *(v66 + 4) = [v63 status];

      *(v66 + 12) = 2080;
      v90 = v63;
      v67 = [v63 error];
      if (v67)
      {
        v68 = v67;
        swift_getErrorValue();
        v69 = sub_245748C20();
        v71 = v70;
      }

      else
      {
        v69 = 7104878;
        v71 = 0xE300000000000000;
      }

      v73 = sub_24572EDDC(v69, v71, &time1.value);

      *(v66 + 14) = v73;
      _os_log_impl(&dword_2456DE000, v64, v87, "Could not append sample buffer to writerInput (status: %ld, error: %s).", v66, 0x16u);
      v74 = v86;
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x245D712D0](v74, -1, -1);
      MEMORY[0x245D712D0](v66, -1, -1);

      (*(v35 + 8))(v83, v85);
      v72 = v80;
      v48 = v84;
      v63 = v90;
    }

    else
    {

      (*(v35 + 8))(v62, v85);
      v72 = v80;
    }

    sub_2456E5008();
    sub_2456E71D8(v72 + 40, &time1);
    __swift_project_boxed_opaque_existential_1(&time1, v92);
    v75 = sub_245747C30();
    (*(*(v75 - 8) + 56))(v48, 1, 1, v75);
    v76 = [v63 error];
    sub_2456EC890(v48, v76);

    sub_2456E70B0(v48);
    __swift_destroy_boxed_opaque_existential_0Tm(&time1);
  }

  else
  {
    sub_245747CF0();
    v37 = sub_245747E50();
    v38 = sub_245748920();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2456DE000, v37, v38, "Failed to recordFrame, recording has not started yet.", v39, 2u);
      MEMORY[0x245D712D0](v39, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_2456E3A24()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) == 1 && (v9 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) != 0 && (v10 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput)) != 0)
  {
    v11 = v0;
    v12 = v9;
    v13 = v10;
    sub_245747CF0();
    v14 = sub_245747E50();
    v15 = sub_245748910();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2456DE000, v14, v15, "Invalidating AV file recording.", v16, 2u);
      MEMORY[0x245D712D0](v16, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    [v12 cancelWriting];
    [v13 markAsFinished];
    *(v11 + v8) = 0;
    v17 = *MEMORY[0x277CC08F0];
    v18 = *(MEMORY[0x277CC08F0] + 8);
    v19 = *(MEMORY[0x277CC08F0] + 12);
    v20 = *(MEMORY[0x277CC08F0] + 16);
    v21 = v11 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
    *v21 = *MEMORY[0x277CC08F0];
    *(v21 + 8) = v18;
    *(v21 + 12) = v19;
    *(v21 + 16) = v20;
    sub_2456E23D4();
    v22 = v11 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
    *v22 = v17;
    *(v22 + 8) = v18;
    *(v22 + 12) = v19;
    *(v22 + 16) = v20;
    sub_2456E5008();
  }

  else
  {
    sub_245747CF0();
    v23 = sub_245747E50();
    v24 = sub_245748920();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2456DE000, v23, v24, "Failed to invalidateRecording, recording has not started yet.", v25, 2u);
      MEMORY[0x245D712D0](v25, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_2456E3CE4()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - v9;
  v11 = sub_245747C30();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording) != 1 || (v18 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer)) == 0 || !*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput))
  {
LABEL_6:
    sub_245747CF0();
    v22 = sub_245747E50();
    v23 = sub_245748920();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2456DE000, v22, v23, "Failed to stopRecording, recording has not started yet.", v24, 2u);
      MEMORY[0x245D712D0](v24, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  v52 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput);
  v53 = v16;
  v54 = v48 - v15;
  v55 = v1;
  v56 = v14;
  v19 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  swift_beginAccess();
  v20 = v0 + v19;
  v21 = v56;
  sub_2456E7040(v20, v10);
  if ((*(v12 + 48))(v10, 1, v21) == 1)
  {
    sub_2456E70B0(v10);
    v1 = v55;
    goto LABEL_6;
  }

  v50 = v12;
  v51 = v0;
  v48[0] = *(v12 + 32);
  v48[1] = v12 + 32;
  (v48[0])(v54, v10, v21);
  v49 = v18;
  v26 = v52;
  sub_245747CF0();
  v27 = sub_245747E50();
  v28 = sub_245748910();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2456DE000, v27, v28, "Stopping AV file recording.", v29, 2u);
    MEMORY[0x245D712D0](v29, -1, -1);
  }

  (*(v2 + 8))(v7, v55);
  [v26 markAsFinished];
  v30 = v51;
  *(v51 + v17) = 0;
  v31 = v26;
  v32 = *MEMORY[0x277CC08F0];
  v33 = *(MEMORY[0x277CC08F0] + 8);
  v34 = *(MEMORY[0x277CC08F0] + 12);
  v35 = *(MEMORY[0x277CC08F0] + 16);
  v36 = v30 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp;
  *v36 = *MEMORY[0x277CC08F0];
  *(v36 + 8) = v33;
  *(v36 + 12) = v34;
  *(v36 + 16) = v35;
  sub_2456E23D4();
  v37 = v30 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp;
  *v37 = v32;
  *(v37 + 8) = v33;
  *(v37 + 12) = v34;
  *(v37 + 16) = v35;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v50;
  v40 = v53;
  v41 = v54;
  v42 = v56;
  (*(v50 + 16))(v53, v54, v56);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v49;
  *(v44 + 16) = v38;
  *(v44 + 24) = v45;
  (v48[0])(v44 + v43, v40, v42);
  aBlock[4] = sub_2456E7118;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor;
  v46 = _Block_copy(aBlock);
  v47 = v45;

  [v47 finishWritingWithCompletionHandler_];

  _Block_release(v46);
  return (*(v39 + 8))(v41, v42);
}

void *sub_2456E424C(uint64_t a1, void *a2, uint64_t a3)
{
  v70 = a3;
  v75 = *MEMORY[0x277D85DE8];
  v4 = sub_245747E60();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245747DC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245747DD0();
  v68 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if ([a2 status] == 3)
    {
      sub_2456E71D8((v20 + 5), &v72);
      __swift_project_boxed_opaque_existential_1(&v72, v74);
      v21 = sub_245747C30();
      (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
      v22 = [a2 error];
      sub_2456EC890(v18, v22);

      sub_2456E70B0(v18);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v72);
    }

    v65 = v11;
    v66 = v16;
    v23 = v20[3];
    sub_245747C20();
    v24 = sub_2457486C0();

    v72 = 0;
    v25 = [v23 attributesOfItemAtPath:v24 error:&v72];

    v26 = v72;
    if (v25)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey, &unk_24574A774);
      v27 = sub_245748660();
      v28 = v26;

      if (*(v27 + 16))
      {
        v29 = sub_24572F384(*MEMORY[0x277CCA1C0]);
        v30 = v66;
        if (v31)
        {
          sub_2456E6F9C(*(v27 + 56) + 32 * v29, &v72);

          sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v32 = v71[0];
            v33 = [v71[0] integerValue];

            if (v33 + 0x4000000000000000 < 0)
            {
              __break(1u);
            }

            v34 = sub_2456E56A4();
            v35 = v70;
            if (v33 < 0 || 2 * v33 < v34)
            {
              __swift_project_boxed_opaque_existential_1(v20 + 5, v20[8]);
              v61 = sub_245747C30();
              v62 = *(v61 - 8);
              v63 = v66;
              (*(v62 + 16))(v66, v35, v61);
              (*(v62 + 56))(v63, 0, 1, v61);
              sub_2456EC890(v63, 0);
              sub_2456E70B0(v63);
            }

            else
            {
              (*(v8 + 104))(v10, *MEMORY[0x277CFFA00], v7);
              sub_245723158(MEMORY[0x277D84F90]);
              v36 = v69;
              sub_245747DE0();
              sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
              v37 = v65;
              v38 = swift_allocError();
              v39 = v68;
              v40 = *(v68 + 16);
              v40(v41, v36, v37);
              sub_245747CF0();
              sub_245747D00();
              (*(v67 + 8))(v6, v4);

              __swift_project_boxed_opaque_existential_1(v20 + 5, v20[8]);
              v42 = sub_245747C30();
              v43 = v66;
              (*(*(v42 - 8) + 56))(v66, 1, 1, v42);
              v44 = swift_allocError();
              v45 = v69;
              v40(v46, v69, v37);
              sub_2456EC890(v43, v44);

              sub_2456E70B0(v43);
              (*(v39 + 8))(v45, v37);
            }
          }
        }

        else
        {
        }
      }

      else
      {

        v30 = v66;
      }

      (*(v8 + 104))(v10, *MEMORY[0x277CFFC88], v7);
      sub_245723158(MEMORY[0x277D84F90]);
      v51 = v69;
      sub_245747DE0();
      __swift_project_boxed_opaque_existential_1(v20 + 5, v20[8]);
      v58 = sub_245747C30();
      (*(*(v58 - 8) + 56))(v30, 1, 1, v58);
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v53 = v65;
      v59 = swift_allocError();
      v55 = v68;
      (*(v68 + 16))(v60, v51, v53);
      sub_2456EC890(v30, v59);
      v57 = v59;
    }

    else
    {
      v47 = v72;
      v48 = sub_245747BB0();

      swift_willThrow();
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_245748AA0();

      v72 = 0xD000000000000027;
      v73 = 0x8000000245756DF0;
      v49 = sub_245747C20();
      MEMORY[0x245D70540](v49);

      (*(v8 + 104))(v10, *MEMORY[0x277CFFD70], v7);
      v50 = v48;
      sub_245723158(MEMORY[0x277D84F90]);
      v51 = v69;
      sub_245747DE0();
      __swift_project_boxed_opaque_existential_1(v20 + 5, v20[8]);
      v52 = sub_245747C30();
      v30 = v66;
      (*(*(v52 - 8) + 56))(v66, 1, 1, v52);
      sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v53 = v65;
      v54 = swift_allocError();
      v55 = v68;
      (*(v68 + 16))(v56, v51, v53);
      sub_2456EC890(v30, v54);

      v57 = v48;
    }

    sub_2456E70B0(v30);
    (*(v55 + 8))(v51, v53);
  }

  return result;
}

uint64_t sub_2456E4DB8()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName + 8);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName);

    sub_245747CF0();
    v11 = sub_245747E50();
    v12 = sub_245748910();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = v10;
      v14 = v13;
      *v13 = 0;
      _os_log_impl(&dword_2456DE000, v11, v12, "Restarting AV file recording.", v13, 2u);
      v15 = v14;
      v10 = v21;
      MEMORY[0x245D712D0](v15, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_2456E3A24();
    sub_2456E25B4(v10, v9);
  }

  else
  {
    sub_245747CF0();
    v17 = sub_245747E50();
    v18 = sub_245748920();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2456DE000, v17, v18, "Unable to restartRecording, a recording has not started yet.", v19, 2u);
      MEMORY[0x245D712D0](v19, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2456E5008()
{
  v1 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v61 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - v11;
  v13 = sub_245747C30();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  swift_beginAccess();
  sub_2456E7040(v1 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_2456E70B0(v12);
  }

  v65 = v3;
  (*(v14 + 32))(v19, v12, v13);
  sub_245747CF0();
  v22 = *(v14 + 16);
  v68 = v19;
  v22(v17, v19, v13);
  v23 = sub_245747E50();
  v24 = sub_245748910();
  v25 = os_log_type_enabled(v23, v24);
  v64 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v2;
    v28 = v27;
    v69 = v27;
    *v26 = 136315138;
    v29 = sub_245747BE0();
    v30 = v14;
    v32 = v31;
    v63 = *(v30 + 8);
    v63(v17, v13);
    v33 = sub_24572EDDC(v29, v32, &v69);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_2456DE000, v23, v24, "Removing output video file at %s if exists.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v34 = v28;
    v2 = v62;
    MEMORY[0x245D712D0](v34, -1, -1);
    MEMORY[0x245D712D0](v26, -1, -1);
  }

  else
  {

    v63 = *(v14 + 8);
    v63(v17, v13);
  }

  v35 = *(v65 + 8);
  v35(v9, v2);
  v36 = *(v1 + 24);
  v37 = v68;
  sub_245747C20();
  v38 = sub_2457486C0();

  v39 = [v36 fileExistsAtPath_];

  if (v39)
  {
    v40 = sub_245747BF0();
    v69 = 0;
    v41 = [v36 removeItemAtURL:v40 error:&v69];

    if (v41)
    {
      v42 = v69;
      return (v63)(v37, v13);
    }

    v49 = v69;
    v50 = sub_245747BB0();

    swift_willThrow();
    v51 = v66;
    sub_245747CF0();
    v52 = v50;
    v53 = sub_245747E50();
    v54 = sub_245748920();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v69 = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v57 = sub_245748C20();
      v59 = v2;
      v60 = sub_24572EDDC(v57, v58, &v69);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_2456DE000, v53, v54, "Failed to remove output video. Error: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x245D712D0](v56, -1, -1);
      MEMORY[0x245D712D0](v55, -1, -1);

      v47 = v66;
      v48 = v59;
      goto LABEL_13;
    }

    v47 = v51;
  }

  else
  {
    v43 = v67;
    sub_245747CF0();
    v44 = sub_245747E50();
    v45 = sub_245748910();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2456DE000, v44, v45, "Output video does not exist.", v46, 2u);
      MEMORY[0x245D712D0](v46, -1, -1);
    }

    v47 = v43;
  }

  v48 = v2;
LABEL_13:
  v35(v47, v48);
  return (v63)(v68, v13);
}

id sub_2456E56A4()
{
  v28[4] = *MEMORY[0x277D85DE8];
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245747DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  v10 = NSHomeDirectory();
  if (!v10)
  {
    sub_245748700();
    v10 = sub_2457486C0();
  }

  v28[0] = 0;
  v11 = [v9 attributesOfFileSystemForPath:v10 error:v28];

  v12 = v28[0];
  if (v11)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey, &unk_24574A774);
    v13 = sub_245748660();
    v14 = v12;

    if (*(v13 + 16) && (v15 = sub_24572F384(*MEMORY[0x277CCA1D0]), (v16 & 1) != 0))
    {
      sub_2456E6F9C(*(v13 + 56) + 32 * v15, v28);

      sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v17 = v27[0];
        v18 = [v27[0] unsignedIntegerValue];

        return v18;
      }
    }

    else
    {
    }

    (*(v6 + 104))(v8, *MEMORY[0x277CFFD70], v5);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v20 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();
    (*(v2 + 8))(v4, v1);
    v21 = v20;
  }

  else
  {
    v22 = v28[0];
    v23 = sub_245747BB0();

    swift_willThrow();
    (*(v6 + 104))(v8, *MEMORY[0x277CFFD70], v5);
    v24 = v23;
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456E6630(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v25 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();

    (*(v2 + 8))(v4, v1);
    v21 = v25;
  }

  return 0;
}

uint64_t sub_2456E5C0C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  sub_2456E70B0(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL);

  return v0;
}

uint64_t sub_2456E5C88()
{
  sub_2456E5C0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVCaptureFileOutput(uint64_t a1)
{
  result = qword_27EE24358;
  if (!qword_27EE24358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2456E5D34(uint64_t a1)
{
  sub_2456E5E10(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2456E5E10(uint64_t a1)
{
  if (!qword_27EE24368)
  {
    sub_245747C30();
    v1 = sub_245748A40();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE24368);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2456E5EA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456E5EC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2456E5F3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456E5F5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2456E5FB8(uint64_t a1, id *a2)
{
  result = sub_2457486E0();
  *a2 = 0;
  return result;
}

uint64_t sub_2456E6030(uint64_t a1, id *a2)
{
  v3 = sub_2457486F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2456E60B0@<X0>(uint64_t *a2@<X8>)
{
  sub_245748700();
  v3 = sub_2457486C0();

  *a2 = v3;
  return result;
}

uint64_t sub_2456E6198(uint64_t a1, uint64_t a2)
{
  sub_245748C80();
  swift_getWitnessTable();
  sub_245747E00();
  return sub_245748CB0();
}

uint64_t sub_2456E6210(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2456E627C(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2456E62E8(void *a1, uint64_t a2)
{
  v4 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2456E639C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2456E6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_245748C80();
  sub_245748680();
  return sub_245748CB0();
}

uint64_t sub_2456E6478(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_245747DF0();
}

uint64_t sub_2456E64E4(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244A8, type metadata accessor for AVFileType, &unk_245749DAC);
  v3 = sub_2456E6630(&qword_27EE244B0, type metadata accessor for AVFileType, &unk_245749D4C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2456E6678(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24590, type metadata accessor for AVError, &unk_24574A618);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2456E66E4(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24590, type metadata accessor for AVError, &unk_24574A618);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2456E6754(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2456E67C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2456E6630(&qword_27EE244E0, type metadata accessor for AVError, &unk_24574A708);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2456E6844(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE244C0, type metadata accessor for FileAttributeKey, &unk_24574A774);
  v3 = sub_2456E6630(&qword_27EE245D8, type metadata accessor for FileAttributeKey, &unk_24574A484);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6900(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE245E0, type metadata accessor for ObjectType, &unk_24574A380);
  v3 = sub_2456E6630(&qword_27EE245E8, type metadata accessor for ObjectType, &unk_24574A320);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E69BC(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE245F0, type metadata accessor for VNImageOption, &unk_24574A7F4);
  v3 = sub_2456E6630(&qword_27EE245F8, type metadata accessor for VNImageOption, &unk_24574A1A4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6A78@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2457486C0();

  *a2 = v3;
  return result;
}

uint64_t sub_2456E6AC0(uint64_t a1)
{
  v2 = sub_2456E6630(&qword_27EE24498, type metadata accessor for Category, &unk_245749F68);
  v3 = sub_2456E6630(&qword_27EE244A0, type metadata accessor for Category, &unk_245749F10);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2456E6B7C()
{
  v0 = sub_245748700();
  v1 = MEMORY[0x245D70560](v0);

  return v1;
}

uint64_t sub_2456E6BB8(uint64_t a1)
{
  sub_245748700();
  sub_245748750();
}

uint64_t sub_2456E6C0C()
{
  sub_245748700();
  sub_245748C80();
  sub_245748750();
  v0 = sub_245748CB0();

  return v0;
}

uint64_t sub_2456E6D58(void *a1, uint64_t *a2)
{
  v2 = sub_245748700();
  v4 = v3;
  if (v2 == sub_245748700() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_245748BC0();
  }

  return v7 & 1;
}

id sub_2456E6E28(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_245747BF0();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() assetWriterWithURL:v4 fileType:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_245747C30();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_245747BB0();

    swift_willThrow();
    v11 = sub_245747C30();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_2456E6F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2456E7040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456E70B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2456E7118()
{
  v1 = *(sub_245747C30() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2456E424C(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2456E71D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2456E729C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456E730C(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_2456E73EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2456E7874()
{
  result = qword_27EE245B8;
  if (!qword_27EE245B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE245B8);
  }

  return result;
}

uint64_t sub_2456E7A28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_2456E7A6C()
{
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput;
  if (*&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput])
  {
    v2 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput];
    v15 = type metadata accessor for AVSessionManager();
    v16 = &off_285879FA8;
    v14[0] = v0;
    type metadata accessor for AVCaptureFileOutput(0);
    v4 = swift_allocObject();
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v5);
    v7 = (&v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = v3;
    v11 = v0;
    v2 = sub_2456ECEC4(v10, v9, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_2456E7BEC()
{
  v1 = sub_245748970();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245748960();
  MEMORY[0x28223BE20](v4);
  v5 = sub_245748600();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245748630();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName];
  *v10 = 0xD00000000000001FLL;
  v10[1] = 0x8000000245757510;
  v11 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_auxiliaryOutputFileName];
  *v11 = 0xD00000000000001FLL;
  v11[1] = 0x8000000245757530;
  v12 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName];
  *v12 = 0xD00000000000001ALL;
  v12[1] = 0x8000000245757550;
  v21 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue;
  v20[1] = sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
  (*(v6 + 104))(v8, *MEMORY[0x277D851C0], v5);
  sub_245748620();
  v25 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24840, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24848, &qword_24574A938);
  sub_2456EEED4(&unk_27EE24850, &qword_27EE24848, &qword_24574A938);
  sub_245748A50();
  (*(v22 + 104))(v3, *MEMORY[0x277D85260], v23);
  *&v0[v21] = sub_2457489A0();
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput;
  *&v0[v13] = [objc_allocWithZone(MEMORY[0x277CE5B28]) init];
  v14 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput;
  *&v0[v14] = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  v15 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput;
  *&v0[v15] = [objc_allocWithZone(MEMORY[0x277CE5B00]) init];
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager____lazy_storage___fileOutput] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer] = 0;
  v16 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName];
  *v16 = 0;
  v16[1] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount] = 0;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive] = 0;
  v17 = &v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime];
  *v17 = 0;
  v17[8] = 1;
  v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter] = 0;
  *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoRotationAngle] = 0;
  v18 = type metadata accessor for AVSessionManager();
  v24.receiver = v0;
  v24.super_class = v18;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_2456E80C0()
{
  v1 = sub_2457485F0();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245748630();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277CE5EA8];
  if ([v7 authorizationStatusForMediaType_] != 3)
  {
    v22 = sub_2456E8430;
    v23 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_2456E856C;
    v21 = &block_descriptor_101;
    v9 = _Block_copy(&aBlock);
    [v7 requestAccessForMediaType:v8 completionHandler:v9];
    _Block_release(v9);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v22 = sub_2456EEE34;
  v23 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2456E7A28;
  v21 = &block_descriptor_107;
  v11 = _Block_copy(&aBlock);
  v12 = v0;
  sub_245748610();
  v17 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v6, v3, v11);
  _Block_release(v11);
  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

uint64_t sub_2456E8430(char a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_245747CF0();
    v7 = sub_245747E50();
    v8 = sub_245748920();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2456DE000, v7, v8, "Must grant camera access.", v9, 2u);
      MEMORY[0x245D712D0](v9, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2456E856C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2456E85C0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  [v2 beginConfiguration];
  [v2 setSessionPreset_];
  sub_2456ED090(v2);
  sub_2456EB980(v2);
  sub_2456EBE6C();
  [v2 commitConfiguration];
  v3 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session) = v2;
  v4 = v2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24570362C(v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_2456E8700(uint64_t a1)
{
  v2 = sub_245747DC0();
  MEMORY[0x28223BE20](v2);
  v3 = sub_245747E60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v9 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v9 && ([v9 isRunning] & 1) != 0)
  {
    sub_245747CF0();
    v10 = sub_245747E50();
    v11 = sub_245748910();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2456DE000, v10, v11, "AVSession already started.", v12, 2u);
      MEMORY[0x245D712D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_2456E7A6C();
    sub_2456E25B4(*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName), *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName + 8));

    *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive) = 0;
    sub_2456E9720();
    v14 = *(a1 + v8);

    return [v14 startRunning];
  }
}

uint64_t sub_2456E8AD0(char a1)
{
  v3 = sub_2457485F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245748630();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_2456EEE20;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_92;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  sub_245748610();
  v16 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

id sub_2456E8D94(uint64_t a1, char a2)
{
  v4 = sub_245747DC0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_245747E60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v11 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v11 && ([v11 isRunning] & 1) != 0)
  {
    sub_245747CF0();
    v12 = sub_245747E50();
    v13 = sub_245748910();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2456DE000, v12, v13, "AVSession already started.", v14, 2u);
      MEMORY[0x245D712D0](v14, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v21 = v5;
    sub_2456E7A6C();
    sub_2456E25B4(*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName), *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoTmpFileName + 8));

    *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive) = 1;
    v16 = &OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_auxiliaryOutputFileName;
    if ((a2 & 1) == 0)
    {
      v16 = &OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outputFileName;
    }

    v17 = *(a1 + *v16);

    v19 = (a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName);
    *v19 = v17;
    v19[1] = v18;

    sub_2456E9748(0, 0);
    v20 = *(a1 + v10);

    return [v20 startRunning];
  }
}

uint64_t sub_2456E91E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2457485F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245748630();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_245748610();
  v19 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_2456E9494(uint64_t a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  v7 = *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session);
  if (v7 && [v7 isRunning])
  {
    [*(a1 + v6) stopRunning];
    sub_2456E7A6C();
    sub_2456E3CE4();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2457037A4();
      swift_unknownObjectRelease();
    }

    v8 = *(a1 + v6);
    *(a1 + v6) = 0;
  }

  else
  {
    sub_245747CF0();
    v9 = sub_245747E50();
    v10 = sub_245748910();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2456DE000, v9, v10, "AVSession has not started yet.", v11, 2u);
      MEMORY[0x245D712D0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_2456E9690(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session;
  [*(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_session) stopRunning];
  sub_2456E7A6C();
  sub_2456E3A24();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2457037A4();
    swift_unknownObjectRelease();
  }

  v3 = *(a1 + v2);
  *(a1 + v2) = 0;

  sub_2456EC194();
}

uint64_t sub_2456E9748(uint64_t a1, uint64_t a2)
{
  v5 = sub_2457485F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245748630();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_2456EED80;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_68;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_2456EEDEC(a1, a2);
  sub_245748610();
  v18 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_2456E9A44(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame) = 0;
  sub_2456E7A6C();
  sub_2456E3CE4();

  sub_2456EC194();
}

void sub_2456E9AB8()
{
  v0 = sub_245747E60();
  MEMORY[0x28223BE20](v0);
  v1 = sub_245747DC0();
  MEMORY[0x28223BE20](v1);
  sub_2456E7A6C();
  sub_2456E4DB8();

  sub_2456EC194();
}

uint64_t sub_2456E9D64(uint64_t a1, char a2)
{
  v5 = sub_2457485F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245748630();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v2;
  *(v12 + 32) = a1;
  aBlock[4] = sub_2456EED04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_245748610();
  v18 = MEMORY[0x277D84F90];
  sub_2456EEE8C(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
  sub_2456EEED4(&qword_27EE24830, &qword_27EE24828, &qword_24574A930);
  sub_245748A50();
  MEMORY[0x245D70770](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_2456EA02C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245747E60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v10 = sub_245747E50();
  v11 = sub_245748910();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_24572EDDC(0xD000000000000023, 0x8000000245757410, &v26);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_2456DE000, v10, v11, "%s silenceShutter = %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245D712D0](v13, -1, -1);
    MEMORY[0x245D712D0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  *(a2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F8, &unk_24574C320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  *(inited + 32) = sub_245748700();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v15;
  *(inited + 48) = 1111970369;
  sub_24572FB2C(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &unk_27EE24800, &unk_24574A900);
  v16 = sub_245748640();

  v17 = [objc_opt_self() photoSettingsWithFormat_];

  [v17 setPhotoQualityPrioritization_];
  v18 = *(a2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput);
  v19 = sub_2457489C0();
  v20 = *(v19 + 16);
  v21 = 32;
  while (v20)
  {
    v22 = *(v19 + v21);
    v21 += 8;
    --v20;
    if (v22 == a3)
    {

      [v17 setFlashMode_];
      goto LABEL_8;
    }
  }

LABEL_8:
  v23 = [v18 connectionWithMediaType_];
  if (v23)
  {
    v24 = v23;
    [v23 setVideoRotationAngle_];
  }

  [v18 capturePhotoWithSettings:v17 delegate:a2];
}

void sub_2456EA3A4(uint64_t a1, __int128 *a2)
{
  v79 = a1;
  v85 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v82 = *a2;
  v83 = v2;
  v84 = a2[2];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  MEMORY[0x28223BE20](v73);
  v74 = (&v65 - v3);
  v4 = sub_245747DC0();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v65 - v7;
  v8 = sub_245747C30();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v68 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = sub_245747E60();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v24 = sub_245747E50();
  v25 = sub_245748910();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2456DE000, v24, v25, "Beginning the LivePhoto video trim.", v26, 2u);
    MEMORY[0x245D712D0](v26, -1, -1);
  }

  (*(v21 + 8))(v23, v20);
  v27 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v28 = sub_245747BF0();
  v29 = [v27 initWithURL:v28 options:0];

  v30 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v29 presetName:*MEMORY[0x277CE5C78]];
  if (!v30)
  {
    (*(v76 + 104))(v78, *MEMORY[0x277CFFD18], v77);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v60 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();

    goto LABEL_14;
  }

  v72 = v30;
  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  v33 = [v32 URLsForDirectory:13 inDomains:1];

  v34 = sub_2457487A0();
  if (!*(v34 + 16))
  {

LABEL_13:
    (*(v76 + 104))(v78, *MEMORY[0x277CFFC20], v77);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v60 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();

    goto LABEL_14;
  }

  v67 = v29;
  v35 = v75;
  v36 = *(v75 + 80);
  v66 = *(v75 + 16);
  v66(v17, v34 + ((v36 + 32) & ~v36), v8);

  v37 = *(v35 + 32);
  v37(v19, v17, v8);
  if (!*&v80[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_livePhotoOutputFileName + 8])
  {
    (*(v35 + 8))(v19, v8);
    v29 = v67;
    goto LABEL_13;
  }

  v78 = v37;

  v81[0] = v82;
  v81[1] = v83;
  v81[2] = v84;
  [v72 setTimeRange_];
  v38 = v71;
  sub_245747C00();

  v39 = v38;
  if ((sub_245747BC0() & 1) == 0)
  {
LABEL_9:
    v44 = sub_245748810();
    (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
    v45 = v39;
    v46 = v68;
    v47 = v66;
    v66(v68, v45, v8);
    v77 = v19;
    v48 = v69;
    v47(v69, v79, v8);
    v49 = (v36 + 40) & ~v36;
    v50 = (v9 + v36 + v49) & ~v36;
    v51 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v53 = v72;
    v52[4] = v72;
    v54 = v52 + v49;
    v55 = v78;
    (v78)(v54, v46, v8);
    (v55)(v52 + v50, v48, v8);
    v56 = v80;
    *(v52 + v51) = v80;
    v57 = v53;
    v58 = v56;
    sub_245736B60(0, 0, v70, &unk_24574A920, v52);

    v59 = *(v75 + 8);
    v59(v71, v8);
    v59(v77, v8);
    return;
  }

  v40 = [v31 defaultManager];
  v41 = sub_245747BF0();
  *&v81[0] = 0;
  v42 = [v40 removeItemAtURL:v41 error:v81];

  if (v42)
  {
    v43 = *&v81[0];
    goto LABEL_9;
  }

  v63 = *&v81[0];
  v60 = sub_245747BB0();

  swift_willThrow();
  v64 = *(v75 + 8);
  v64(v39, v8);
  v64(v19, v8);
LABEL_14:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = v74;
    *v74 = v60;
    swift_storeEnumTagMultiPayload();
    v62 = v60;
    sub_245704888(v61);
    swift_unknownObjectRelease();

    sub_2456EEF50(v61, &qword_27EE24A70, &unk_24574AEE0);
  }

  else
  {
  }
}

uint64_t sub_2456EAE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_245747DC0();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = sub_245747DD0();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456EAFF0, 0, 0);
}

uint64_t sub_2456EAFF0()
{
  *(v0 + 152) = CACurrentMediaTime();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_2456EB0D0;
  v2 = *(v0 + 64);
  v3 = *MEMORY[0x277CE5D98];

  return MEMORY[0x2821FAED0](v2, v3, 0, 0);
}

uint64_t sub_2456EB0D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2456EB6A0;
  }

  else
  {
    v2 = sub_2456EB210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456EB210()
{
  v1 = *(v0 + 152);
  v2 = (CACurrentMediaTime() - v1) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  v3 = [objc_opt_self() defaultManager];
  v4 = sub_245747BF0();
  *(v0 + 48) = 0;
  v5 = [v3 removeItemAtURL:v4 error:v0 + 48];

  v6 = *(v0 + 48);
  if (v5)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v0 + 144);
      v8 = *(v0 + 64);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24818, &qword_24574A928) + 48);
      v10 = sub_245747C30();
      (*(*(v10 - 8) + 16))(v7, v8, v10);
      *(v7 + v9) = v2;
      swift_storeEnumTagMultiPayload();
      v11 = v6;
      sub_245704888(v7);
      swift_unknownObjectRelease();
      sub_2456EEF50(v7, &qword_27EE24A70, &unk_24574AEE0);
    }

    else
    {
      v24 = v6;
    }
  }

  else
  {
    v12 = v6;
    v13 = sub_245747BB0();

    swift_willThrow();
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);
    sub_245748AA0();
    MEMORY[0x245D70540](0xD00000000000003ALL, 0x80000002457573A0);
    swift_getErrorValue();
    v17 = sub_245748C20();
    MEMORY[0x245D70540](v17);

    (*(v15 + 104))(v14, *MEMORY[0x277CFFBC8], v16);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v0 + 144);
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 112);
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v22 = swift_allocError();
      (*(v20 + 16))(v23, v19, v21);
      *v18 = v22;
      swift_storeEnumTagMultiPayload();
      sub_245704888(v18);
      swift_unknownObjectRelease();

      sub_2456EEF50(v18, &qword_27EE24A70, &unk_24574AEE0);
      (*(v20 + 8))(v19, v21);
    }

    else
    {
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      v27 = *(v0 + 112);

      (*(v26 + 8))(v25, v27);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2456EB6A0()
{
  v1 = v0[21];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_245748AA0();
  MEMORY[0x245D70540](0xD00000000000003ALL, 0x80000002457573A0);
  swift_getErrorValue();
  v5 = sub_245748C20();
  MEMORY[0x245D70540](v5);

  (*(v3 + 104))(v2, *MEMORY[0x277CFFBC8], v4);
  sub_245723158(MEMORY[0x277D84F90]);
  sub_245747DE0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v10 = swift_allocError();
    (*(v8 + 16))(v11, v7, v9);
    *v6 = v10;
    swift_storeEnumTagMultiPayload();
    sub_245704888(v6);
    swift_unknownObjectRelease();

    sub_2456EEF50(v6, &qword_27EE24A70, &unk_24574AEE0);
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

void sub_2456EB980(void *a1)
{
  v3 = sub_245747E60();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput);
  [v5 setAlwaysDiscardsLateVideoFrames_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F8, &unk_24574C320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  *(inited + 32) = sub_245748700();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v7;
  *(inited + 48) = 1111970369;
  sub_24572FB2C(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &unk_27EE24800, &unk_24574A900);
  v8 = sub_245748640();

  [v5 setVideoSettings_];

  v9 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_photoOutput);
  [v9 setMaxPhotoQualityPrioritization_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_24574A860;
  v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput);
  *(v10 + 32) = v11;
  v37 = v10 + 32;
  *(v10 + 40) = v5;
  *(v10 + 48) = v9;
  v12 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoRotationAngle;
  v13 = *MEMORY[0x277CE5EA8];
  v14 = v11;
  v15 = v5;
  v16 = v9;
  v17 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x245D70890](v17, v10);
    }

    else
    {
      if (v17 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v18 = *(v10 + 8 * v17 + 32);
    }

    v19 = v18;
    if (![a1 canAddOutput_])
    {
      break;
    }

    [a1 addOutput_];
    v20 = [v19 connectionWithMediaType_];
    if (v20)
    {
      v21 = v20;
      if ([v20 isVideoMirroringSupported])
      {
        [v21 setAutomaticallyAdjustsVideoMirroring_];
        [v21 setVideoMirrored_];
      }

      if ([v21 isVideoRotationAngleSupported_])
      {
        [v21 setVideoRotationAngle_];
      }

      if ([v21 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v21 setCameraIntrinsicMatrixDeliveryEnabled_];
      }
    }

    ++v17;

    if (v17 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = v34;
  sub_245747CF0();
  v23 = v19;
  v24 = sub_245747E50();
  v25 = sub_245748930();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315138;
    v28 = [v23 debugDescription];
    v29 = sub_245748700();
    v31 = v30;

    v32 = sub_24572EDDC(v29, v31, &v38);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2456DE000, v24, v25, "Invalid session configuration. Cannot add output: %s.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245D712D0](v27, -1, -1);
    MEMORY[0x245D712D0](v26, -1, -1);
  }

  else
  {
  }

  (*(v35 + 8))(v22, v36);
}

void sub_2456EBE6C()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_metadataOutput);
  v7 = [v6 availableMetadataObjectTypes];
  type metadata accessor for ObjectType(0);
  v8 = sub_2457487A0();

  v9 = *MEMORY[0x277CE5A50];
  v26 = *MEMORY[0x277CE5A50];
  v25 = &v26;
  LOBYTE(v7) = sub_2456EC758(sub_2456EEAAC, v24, v8);

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247F0, &unk_24574A8F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24574A850;
    *(v10 + 32) = v9;
    v11 = v9;
    v12 = sub_245748790();

    [v6 setMetadataObjectTypes_];
  }

  else
  {
    sub_245747CF0();
    v13 = sub_245747E50();
    v14 = sub_245748930();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2456DE000, v13, v14, "Could not add AVFoundation face detectors.", v15, 2u);
      MEMORY[0x245D712D0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24574A870;
  v17 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_videoOutput);
  *(v16 + 32) = v17;
  *(v16 + 40) = v6;
  v18 = objc_allocWithZone(MEMORY[0x277CE5AB8]);
  sub_2456E730C(0, &qword_27EE247E8, 0x277CE5B18);
  v19 = v17;
  v20 = v6;
  v21 = sub_245748790();

  v22 = [v18 initWithDataOutputs_];

  [v22 setDelegate:v1 queue:*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_queue)];
  v23 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer);
  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_dataSynchronizer) = v22;
}

void sub_2456EC194()
{
  v1 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime;
  if ((*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime + 8) & 1) == 0)
  {
    v2 = round((CACurrentMediaTime() - *v1) * 30.0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount;
        v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount;
        sub_24571D7FC(*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_isPassive), *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount), *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount), v2);
        *(v0 + v3) = 0;
        *(v0 + v4) = 0;
        *v1 = 0;
        *(v1 + 8) = 1;
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_2456EC270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2456EC4C0(void *a1)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_245748AA0();

  v6 = 0xD000000000000018;
  v7 = 0x8000000245757240;
  [a1 time];
  type metadata accessor for CMTime(0);
  v2 = sub_245748730();
  MEMORY[0x245D70540](v2);

  return v6;
}

uint64_t sub_2456EC578(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_245748AF0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245748B70())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D70890](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_245748AD0();
      sub_245748B00();
      sub_245748B10();
      sub_245748AE0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_245748B70();
    sub_245748AF0();
  }

  return v8;
}

uint64_t sub_2456EC758(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2456EC800(void *a1, uint64_t *a2)
{
  v2 = sub_245748700();
  v4 = v3;
  if (v2 == sub_245748700() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_245748BC0();
  }

  return v7 & 1;
}

void sub_2456EC890(uint64_t a1, void *a2)
{
  v35 = a1;
  v3 = sub_245747DC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_245747C30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE24860, &unk_24574AF10);
  MEMORY[0x28223BE20](v36);
  v37 = (&v34 - v14);
  v15 = sub_245747E60();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = v17;
    v21 = a2;
    sub_245747CF0();
    v22 = a2;
    v23 = sub_245747E50();
    v24 = sub_245748920();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_245748C20();
      v29 = sub_24572EDDC(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2456DE000, v23, v24, "Could not record video. Error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x245D712D0](v26, -1, -1);
      MEMORY[0x245D712D0](v25, -1, -1);
    }

    (*(v16 + 8))(v19, v20);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = v37;
      *v37 = a2;
      swift_storeEnumTagMultiPayload();
      v31 = a2;
      sub_24570439C(v30);
      swift_unknownObjectRelease();

LABEL_9:
      sub_2456EEF50(v30, qword_27EE24860, &unk_24574AF10);
      return;
    }
  }

  else
  {
    sub_2456E7040(v35, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_2456EEF50(v9, &qword_27EE244D0, &unk_245749FF0);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      (*(v4 + 104))(v6, *MEMORY[0x277CFFC18], v3);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v32 = swift_allocError();
      sub_245747DE0();
      v30 = v37;
      *v37 = v32;
      swift_storeEnumTagMultiPayload();
      sub_24570439C(v30);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    (*(v11 + 32))(v13, v9, v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = v37;
      (*(v11 + 16))(v37, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_24570439C(v33);
      swift_unknownObjectRelease();
      sub_2456EEF50(v33, qword_27EE24860, &unk_24574AF10);
    }

    (*(v11 + 8))(v13, v10);
  }
}

char *sub_2456ECEC4(void *a1, uint64_t a2, char *a3)
{
  v22[3] = type metadata accessor for AVSessionManager();
  v22[4] = &off_285879FA8;
  v22[0] = a2;
  v6 = *MEMORY[0x277CE5D98];
  *(a3 + 2) = *MEMORY[0x277CE5D98];
  v7 = objc_opt_self();
  v8 = v6;
  *(a3 + 3) = [v7 defaultManager];
  v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_outputURL;
  v10 = sub_245747C30();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  v11 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_fileName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writer] = 0;
  *&a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_writerInput] = 0;
  v12 = [a1 recommendedVideoSettingsForAssetWriterWithOutputFileType_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_245748660();
  }

  else
  {
    v14 = 0;
  }

  *(a3 + 4) = v14;
  sub_2456E71D8(v22, (a3 + 40));
  a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_isRecording] = 0;
  v15 = *MEMORY[0x277CC08F0];
  v16 = *(MEMORY[0x277CC08F0] + 8);
  v17 = *(MEMORY[0x277CC08F0] + 12);
  v18 = *(MEMORY[0x277CC08F0] + 16);
  v19 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp];
  *v19 = *MEMORY[0x277CC08F0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v17;
  *(v19 + 2) = v18;
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v20 = &a3[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp];
  *v20 = v15;
  *(v20 + 2) = v16;
  *(v20 + 3) = v17;
  *(v20 + 2) = v18;
  return a3;
}

void sub_2456ED090(void *a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:*MEMORY[0x277CE5EA8] position:2];
  if (v12)
  {
    v13 = v12;
    v14 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
    v48[0] = 0;
    v15 = v13;
    v16 = [v14 initWithDevice:v15 error:v48];
    if (v16)
    {
      v17 = v16;
      v18 = v48[0];

      if ([a1 canAddInput_])
      {
        [a1 addInput_];

        return;
      }

      sub_245747CF0();
      v35 = v17;
      v36 = sub_245747E50();
      v37 = sub_245748930();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48[0] = v46;
        *v38 = 136315138;
        v39 = [v35 debugDescription];
        v40 = sub_245748700();
        v47 = v2;
        v42 = v41;

        v43 = sub_24572EDDC(v40, v42, v48);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_2456DE000, v36, v37, "Invalid session configuration. Cannot add input: %s.", v38, 0xCu);
        v44 = v46;
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x245D712D0](v44, -1, -1);
        MEMORY[0x245D712D0](v38, -1, -1);

        (*(v3 + 8))(v9, v47);
        return;
      }

      v22 = *(v3 + 8);
      v23 = v9;
    }

    else
    {
      v24 = v48[0];
      v25 = sub_245747BB0();

      swift_willThrow();
      sub_245747CF0();
      v26 = v25;
      v27 = sub_245747E50();
      v28 = sub_245748930();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = v2;
        v30 = v29;
        v31 = swift_slowAlloc();
        v48[0] = v31;
        *v30 = 136315138;
        swift_getErrorValue();
        v32 = sub_245748C20();
        v34 = sub_24572EDDC(v32, v33, v48);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_2456DE000, v27, v28, "Could not create device input. Error: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x245D712D0](v31, -1, -1);
        MEMORY[0x245D712D0](v30, -1, -1);

        (*(v3 + 8))(v11, v47);
        return;
      }

      v22 = *(v3 + 8);
      v23 = v11;
    }
  }

  else
  {
    sub_245747CF0();
    v19 = sub_245747E50();
    v20 = sub_245748930();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2456DE000, v19, v20, "Must use a device with a front facing camera.", v21, 2u);
      MEMORY[0x245D712D0](v21, -1, -1);
    }

    v22 = *(v3 + 8);
    v23 = v6;
  }

  v22(v23, v2);
}

uint64_t sub_2456ED59C()
{
  v1 = sub_245747E60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v5 = v0;
  v6 = sub_245747E50();
  v7 = sub_245748910();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24572EDDC(0xD000000000000023, 0x80000002457572B0, &v12);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter];

    _os_log_impl(&dword_2456DE000, v6, v7, "%s %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D712D0](v9, -1, -1);
    MEMORY[0x245D712D0](v8, -1, -1);
  }

  else
  {
  }

  result = (*(v2 + 8))(v4, v1);
  if (v5[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_silenceShutter] == 1)
  {
    return AudioServicesDisposeSystemSoundID(0x454u);
  }

  return result;
}

uint64_t sub_2456ED788(uint64_t a1)
{
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245748700();
  if (*(a1 + 16))
  {
    v8 = sub_24572F388(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_2456E6F9C(*(a1 + 56) + 32 * v8, v16);
      if (swift_dynamicCast())
      {
        return v15[3];
      }
    }
  }

  else
  {
  }

  sub_245747CF0();
  v12 = sub_245747E50();
  v13 = sub_245748910();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2456DE000, v12, v13, "Couldn't get orientation from capture photo metadata, defaulting to UP.", v14, 2u);
    MEMORY[0x245D712D0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void sub_2456ED950(void *a1, void *a2)
{
  v28 = a2;
  v3 = sub_245747DC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245747E60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v11 = sub_245747E50();
  v12 = sub_245748910();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_2456DE000, v11, v12, "Selfie photo captured.", v13, 2u);
    a1 = v27;
    MEMORY[0x245D712D0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v15 = [a1 pixelBuffer];
  if (v15)
  {
    v16 = v15;
    v17 = [a1 resolvedSettings];
    v18 = [v17 isFlashEnabled];

    v19 = [objc_allocWithZone(MEMORY[0x277CFF230]) init];
    [a1 timestamp];
    [v19 setTime_];
    [v19 setBuffer_];
    v20 = [a1 metadata];
    v21 = sub_245748660();

    v22 = sub_2456ED788(v21);

    [v19 setOrientation_];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = v19;
      sub_245703918(v19, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CFFC18], v3);
    v24 = v28;
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v25 = swift_allocError();
    sub_245747DE0();
    sub_245703918(v25, 256);
    swift_unknownObjectRelease();
  }
}

void sub_2456EDE04(void *a1)
{
  v3 = sub_245747DC0();
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245747E60();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = [a1 synchronizedDataForCaptureOutput_];
  if (!v19)
  {
    goto LABEL_9;
  }

  v79 = v6;
  v80 = v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    v6 = v79;
LABEL_9:
    sub_245747CF0();
    v27 = sub_245747E50();
    v28 = sub_245748920();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v6;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2456DE000, v27, v28, "SynchronizedData did not contain video buffer data.", v30, 2u);
      MEMORY[0x245D712D0](v30, -1, -1);

      (*(v7 + 8))(v10, v29);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return;
  }

  v21 = v20;
  v76 = a1;
  if (([v20 sampleBufferWasDropped] & 1) == 0)
  {
    v77 = v1;
    v31 = [v21 sampleBuffer];
    IsValid = CMSampleBufferIsValid(v31);

    if (!IsValid)
    {
      if (v77[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] == 1)
      {
        sub_245747CF0();
        v35 = sub_245747E50();
        v36 = sub_245748920();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2456DE000, v35, v36, "Video data buffer was invalid.", v37, 2u);
          MEMORY[0x245D712D0](v37, -1, -1);
        }

        else
        {
        }

        (*(v7 + 8))(v16, v79);
        return;
      }

      goto LABEL_21;
    }

    v33 = [v21 sampleBuffer];
    v34 = v77;
    if ((v77[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] & 1) == 0)
    {
      v77[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] = 1;
    }

    if (v34[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame] == 1)
    {
      sub_2456E7A6C();
      sub_2456E3040(v33);
    }

    v45 = [objc_allocWithZone(MEMORY[0x277CFF230]) init];
    CMSampleBufferGetPresentationTimeStamp(&lhs, v33);
    value = lhs.value;
    epoch = lhs.epoch;
    v48 = *&lhs.timescale;
    v49 = sub_2456E7A6C();
    v50 = *&v49[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp];
    v51 = *&v49[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 16];
    v52 = *&v49[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_startTimestamp + 8];

    rhs.epoch = v51;
    lhs.value = value;
    *&lhs.timescale = v48;
    lhs.epoch = epoch;
    rhs.value = v50;
    *&rhs.timescale = v52;
    CMTimeSubtract(&v81, &lhs, &rhs);
    lhs = v81;
    [v45 setTime_];
    v53 = sub_245747CF0();
    MEMORY[0x28223BE20](v53);
    sub_245747E30();
    v54 = *(v7 + 8);
    v55 = v33;
    v54(v18, v79);
    v56 = CMSampleBufferGetImageBuffer(v33);
    if (!v56)
    {
      v77 = "CoreIDVRGBLiveness1";
      v78[13](v5, *MEMORY[0x277CFFD60], v3);
      sub_245723158(MEMORY[0x277D84F90]);
      sub_245747DD0();
      sub_2456EEE8C(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v62 = swift_allocError();
      sub_245747DE0();
      sub_245747CF0();
      sub_245747D00();

      v54(v18, v79);
      return;
    }

    v79 = v56;
    [v45 setBuffer_];
    v57 = CMGetAttachment(v33, *MEMORY[0x277CD3410], 0);
    v58 = v45;
    if (v57)
    {
      lhs.value = v57;
      v59 = swift_dynamicCast();
      v60 = v77;
      if (v59)
      {
        value_low = LODWORD(rhs.value);
      }

      else
      {
        value_low = 1;
      }
    }

    else
    {
      value_low = 1;
      v60 = v77;
    }

    [v45 setOrientation_];
    v63 = [v76 synchronizedDataForCaptureOutput_];
    if (!v63)
    {
LABEL_57:
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_245704218(v58);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v64 = v63;
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (!v65 || (v66 = [v65 metadataObjects], sub_2456E730C(0, &qword_27EE247D0, 0x277CE5B98), v67 = sub_2457487A0(), v66, v68 = sub_2456EC578(v67), , !v68))
    {
LABEL_56:

      goto LABEL_57;
    }

    if (v68 >> 62)
    {
      v69 = sub_245748B70();
      if (v69)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
LABEL_44:
        v76 = v64;
        v78 = v58;
        lhs.value = MEMORY[0x277D84F90];
        sub_245748AF0();
        if (v69 < 0)
        {
LABEL_62:
          __break(1u);
          return;
        }

        v70 = 0;
        do
        {
          if ((v68 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x245D70890](v70, v68);
          }

          else
          {
            v71 = *(v68 + 8 * v70 + 32);
          }

          v72 = v71;
          ++v70;
          v73 = [objc_allocWithZone(MEMORY[0x277CFF228]) init];
          [v72 bounds];
          CGRectAV2VN();
          [v73 setBounds_];

          sub_245748AD0();
          sub_245748B00();
          sub_245748B10();
          sub_245748AE0();
        }

        while (v69 != v70);

        v55 = v33;
        v58 = v78;
        v64 = v76;
        goto LABEL_55;
      }
    }

LABEL_55:
    sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
    v74 = sub_245748790();

    [v58 setFaces_];

    v64 = v74;
    goto LABEL_56;
  }

  if (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_hasReceivedFirstFrame] != 1 || [v21 droppedReason] == 1)
  {
LABEL_21:
    v38 = v80;

    return;
  }

  v22 = v1;
  sub_245747CF0();
  v23 = v80;
  v24 = sub_245747E50();
  v25 = sub_245748920();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = [v21 droppedReason];

    _os_log_impl(&dword_2456DE000, v24, v25, "AVSession dropped video data (AVCaptureOutputDataDroppedReason = %ld", v26, 0xCu);
    MEMORY[0x245D712D0](v26, -1, -1);
  }

  else
  {

    v24 = v23;
  }

  (*(v7 + 8))(v13, v79);
  if ([v21 droppedReason] == 2)
  {

    v39 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount;
    v40 = *&v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_outOfBuffersCount];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  v43 = [v21 droppedReason];

  if (v43 == 3)
  {
    v39 = OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount;
    v44 = *&v22[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_discontinuityCount];
    v41 = __OFADD__(v44, 1);
    v42 = v44 + 1;
    if (!v41)
    {
LABEL_31:
      *&v22[v39] = v42;
      return;
    }

    __break(1u);
    goto LABEL_62;
  }
}

uint64_t sub_2456EEACC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_245747C30() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2456EEC10;

  return sub_2456EAE68(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_2456EEC10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2456EED80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_shouldRecordFrame) = 1;
  v3 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_recordingStartTime + 8) == 1)
  {
    *v3 = CACurrentMediaTime();
    *(v3 + 8) = 0;
  }

  if (v2)
  {
    v2();
  }
}

uint64_t sub_2456EEDEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

uint64_t sub_2456EEE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2456EEED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2456EEF50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2456EF000(const void *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 632) = 0x3FEFAE147AE147AELL;
  *(v1 + 640) = 0x3FD0000000000000;
  memcpy((v1 + 48), a1, 0x240uLL);
  *(v1 + 624) = PADClassifierInit();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_stitchDetectedWithNotification_ name:*MEMORY[0x277CFF238] object:0];

  return v1;
}

uint64_t sub_2456EF0CC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CFF218]) init];
  swift_beginAccess();
  memcpy(__dst, (v0 + 48), sizeof(__dst));
  memcpy(v16, (v0 + 48), 0x240uLL);
  sub_2456F3944(__dst, aBlock);
  sub_24571F664();
  sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
  v3 = sub_245748790();
  sub_2456F38F0(__dst);

  [v2 setGestures_];

  memcpy(v16, (v0 + 48), 0x240uLL);
  memcpy(aBlock, (v0 + 48), sizeof(aBlock));
  sub_2456F3944(v16, &v13);
  sub_24571F9A4();
  v4 = sub_245748790();
  sub_2456F38F0(v16);

  [v2 setGestureTypes_];

  memcpy(aBlock, (v0 + 48), sizeof(aBlock));
  [v2 setMinNumberOfGestures_];
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v1 + 624);
  aBlock[4] = sub_2456F39A0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456F0DB0;
  aBlock[3] = &block_descriptor_1;
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  aBlock[4] = sub_2456F39A8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456E7A28;
  aBlock[3] = &block_descriptor_6;
  v10 = _Block_copy(aBlock);

  aBlock[4] = sub_2456F39B0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456F0E18;
  aBlock[3] = &block_descriptor_9;
  v11 = _Block_copy(aBlock);

  [v8 startLiveness:v2 onGestureStart:v9 onIncorrectGestureDetected:v10 onGesturesFinished:v11];
  _Block_release(v11);
  _Block_release(v10);
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_2456EF4A0(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = [a1 integerValue];
    if (*(v7 + 40) == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = off_28587A640;
        type metadata accessor for RGBLivenessController(0);
        v9(v8);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = *(v7 + 32);
      v11 = sub_245748810();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v10;
      v12[6] = v8;

      sub_24572A644(0, 0, v5, &unk_24574AA18, v12);
    }

    *(v7 + 32) = v8;
    *(v7 + 40) = 0;
  }

  return result;
}

uint64_t sub_2456EF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_245748B30();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456EF728, 0, 0);
}

uint64_t sub_2456EF728()
{
  v9 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  v2 = sub_24571FFD0();
  v3 = 1000000000000000 * v2;
  v4 = (v2 * 0x38D7EA4C68000uLL) >> 64;
  v5 = (v2 >> 63) & 0xFFFC72815B398000;
  sub_245748BF0();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2456EF85C;

  return sub_24572E84C(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_2456EF85C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2456EFA94;
  }

  else
  {
    v5 = sub_2456EF9CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456EF9CC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = off_28587A658;
    type metadata accessor for RGBLivenessController(0);
    v3(v2, v1);
    swift_unknownObjectRelease();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2456EFA94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456EFAF8(uint64_t a1)
{
  v1 = sub_2457485F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245748630();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
    v11 = sub_245748980();
    v14 = v5;
    v12 = v11;
    aBlock[4] = sub_2456F3B48;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456E7A28;
    aBlock[3] = &block_descriptor_24;
    v13 = _Block_copy(aBlock);

    sub_245748610();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2456F39D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
    sub_2456F3A30();
    sub_245748A50();
    MEMORY[0x245D70770](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v14);
  }

  return result;
}

uint64_t sub_2456EFDA8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2456FF120();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2456EFDF8(void *a1, uint64_t a2)
{
  v3 = sub_2457485F0();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245748630();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245747E60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    if (*(v15 + 569) << 8 == 512)
    {
      sub_245747CE0();
      sub_2456E730C(0, &qword_27EE24838, 0x277D85C78);
      v16 = sub_245748980();
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      *(v17 + 24) = v15;
      aBlock[4] = sub_2456F39D0;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2456E7A28;
      aBlock[3] = &block_descriptor_15;
      v18 = _Block_copy(aBlock);
      v19 = a1;

      sub_245748610();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2456F39D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
      sub_2456F3A30();
      sub_245748A50();
      MEMORY[0x245D70770](0, v9, v5, v18);
      _Block_release(v18);

      (*(v24 + 8))(v5, v3);
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_245747CF0();
      v20 = sub_245747E50();
      v21 = sub_245748910();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2456DE000, v20, v21, "Performing passive liveness only, skipping gestureFinishedMonitoring", v22, 2u);
        MEMORY[0x245D712D0](v22, -1, -1);
      }

      else
      {
      }

      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

void sub_2456F0240(void *a1, uint64_t a2)
{
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (a1)
  {
    v11 = a1;
    sub_245747CF0();
    v12 = a1;
    v13 = sub_245747E50();
    v14 = sub_245748920();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_245748C20();
      v20 = sub_24572EDDC(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2456DE000, v13, v14, "Gestures finished with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245D712D0](v17, -1, -1);
      MEMORY[0x245D712D0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF760(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v21 = sub_245748810();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_2457487F0();

    v22 = sub_2457487E0();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = a2;
    sub_24572A644(0, 0, v10, &unk_24574A9F8, v23);
  }
}

uint64_t sub_2456F0554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for RGBLivenessModel.Event(0);
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_245748B30();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  sub_2457487F0();
  v4[17] = sub_2457487E0();
  v9 = sub_2457487C0();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x2822009F8](sub_2456F0748, v9, v8);
}

uint64_t sub_2456F0748()
{
  v20 = v0;
  v1 = v0[5];
  if (*(v1 + 40))
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = v0[12];
      v4 = v0[10];
      v17 = v0[13];
      v18 = v0[11];
      v6 = v0[8];
      v5 = v0[9];
      v7 = v0[7];
      v8 = *(v0[5] + 40);
      v9 = Strong;
      (*(v5 + 16))(v4, Strong + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
      memcpy(__dst, (v9 + 64), sizeof(__dst));
      *v7 = sub_245720B04() & 1;
      v7[1] = v8;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      swift_unknownObjectRelease();
      (*(v5 + 8))(v4, v6);
      (*(v3 + 8))(v17, v18);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 48), sizeof(__dst));
    v12 = sub_24572027C();
    v13 = 1000000000000000 * v12;
    v14 = (v12 * 0x38D7EA4C68000uLL) >> 64;
    v15 = (v12 >> 63) & 0xFFFC72815B398000;
    sub_245748BF0();
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_2456F09EC;

    return sub_24572E84C(v13, v15 + v14, 0, 0, 1);
  }
}

uint64_t sub_2456F09EC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_2456F0D18;
  }

  else
  {
    v8 = sub_2456F0B84;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2456F0B84()
{
  v14 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[12];
    v3 = v0[10];
    v11 = v0[13];
    v12 = v0[11];
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    v7 = *(v0[5] + 40);
    v8 = Strong;
    (*(v4 + 16))(v3, Strong + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    memcpy(__dst, (v8 + 64), sizeof(__dst));
    *v6 = sub_245720B04() & 1;
    v6[1] = v7;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);
    (*(v2 + 8))(v11, v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2456F0D18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2456F0DB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2456F0E18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2456F0E84(void *__src)
{
  *(v2 + 1832) = v1;
  memcpy((v2 + 656), __src, 0x240uLL);

  return MEMORY[0x2822009F8](sub_2456F0EF8, 0, 0);
}

uint64_t sub_2456F0EF8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = (v0 + 154);
  v4 = v1[229];
  swift_beginAccess();
  memcpy(v1 + 10, (v4 + 48), 0x240uLL);
  memcpy((v4 + 48), v1 + 82, 0x240uLL);
  sub_2456F3944((v1 + 82), v3);
  sub_2456F38F0((v1 + 10));
  v1[230] = *(v4 + 624);
  v1[2] = v1;
  v1[3] = sub_2456F1064;
  v5 = swift_continuation_init();
  v1[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE248E0, &unk_24574AA68);
  v1[158] = v5;
  v1[154] = MEMORY[0x277D85DD0];
  v1[155] = 1107296256;
  v1[156] = sub_2456F3D64;
  v1[157] = &block_descriptor_58;
  [swift_unknownObjectRetain() cancelWithCompletion_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2456F1064()
{

  return MEMORY[0x2822009F8](sub_2456F1144, 0, 0);
}

uint64_t sub_2456F1144()
{
  v1 = *(v0 + 1832);
  swift_unknownObjectRelease();
  *(v1 + 624) = PADClassifierInit();
  swift_unknownObjectRelease();
  sub_2456EF0CC();
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2456F11D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[75] = v4;
  v5[74] = a4;
  v5[73] = a3;
  v5[72] = a2;
  v5[71] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v5[76] = swift_task_alloc();
  v5[77] = type metadata accessor for RGBLivenessResult(0);
  v5[78] = swift_task_alloc();
  v6 = sub_245747E60();
  v5[79] = v6;
  v5[80] = *(v6 - 8);
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F1318, 0, 0);
}

uint64_t sub_2456F1318(uint64_t a1)
{
  sub_245747CF0();
  v2 = sub_245747E50();
  v3 = sub_245748910();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2456DE000, v2, v3, "Completing Liveness with selfie", v4, 2u);
    MEMORY[0x245D712D0](v4, -1, -1);
  }

  v5 = *(v1 + 656);
  v6 = *(v1 + 640);
  v7 = *(v1 + 632);
  v8 = *(v1 + 600);
  v9 = *(v1 + 568);

  v10 = *(v6 + 8);
  *(v1 + 664) = v10;
  v10(v5, v7);
  *(v1 + 672) = *(v8 + 624);
  swift_beginAccess();
  memcpy((v1 + 80), (v8 + 120), 0x14DuLL);
  LODWORD(v7) = sub_2456F3C64(v1 + 80) != 1;
  LODWORD(v6) = *(v1 + 410);
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 552;
  *(v1 + 24) = sub_2456F1538;
  v11 = swift_continuation_init();
  *(v1 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248A8, &qword_24574AA30);
  *(v1 + 416) = MEMORY[0x277D85DD0];
  *(v1 + 424) = 1107296256;
  *(v1 + 432) = sub_2456F206C;
  *(v1 + 440) = &block_descriptor_33;
  *(v1 + 448) = v11;
  [swift_unknownObjectRetain() finishLivenessWithSelfie:v9 performIDMatching:v7 & v6 completion:v1 + 416];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_2456F1538()
{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_2456F1E18;
  }

  else
  {
    v2 = sub_2456F1648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456F1648()
{
  v1 = v0[69];
  swift_unknownObjectRelease();
  sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
  v2 = sub_245747D80();
  v3 = MEMORY[0x245D70730](v2);

  if (v3)
  {
    sub_2456E730C(0, &unk_27EE248D0, 0x277CCA9B8);
    v4 = sub_245748A00();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v4;
      sub_2456FF760(v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v6 = v0[78];
    v91 = v0[76];
    v92 = v0[77];
    v90 = v0[74];
    v96 = v0[73];
    v95 = v0[72];
    v7 = v0[71];
    swift_beginAccess();
    RGBLivenessConfig.imageCompressionQuality.getter();
    v9 = v8;
    swift_endAccess();
    v10 = sub_245747DA0();
    v11 = MEMORY[0x245D70730](v10);

    if (v11)
    {
      v9 = 0.99;
    }

    v97 = sub_2456F2144(v7);
    v12 = sub_2456F2444(v97, v9);
    v93 = v13;
    v94 = v12;
    v14 = [v1 glassesLabel];
    v15 = sub_245748700();
    v88 = v16;
    v89 = v15;

    v17 = [v1 headgearLabel];
    v18 = sub_245748700();
    v86 = v19;
    v87 = v18;

    v20 = [v1 faceHairLabel];
    v21 = sub_245748700();
    v84 = v22;
    v85 = v21;

    v23 = [v1 ethnicityLabel];
    v24 = sub_245748700();
    v82 = v25;
    v83 = v24;

    v26 = [v1 skintoneLabel];
    v27 = sub_245748700();
    v80 = v28;
    v81 = v27;

    v29 = [v1 sexLabel];
    v30 = sub_245748700();
    v78 = v31;
    v79 = v30;

    v32 = [v1 ageLabel];
    v33 = sub_245748700();
    v76 = v34;
    v77 = v33;

    v35 = [v1 timestampsID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    v75 = sub_2457487A0();

    v36 = [v1 assessmentID];
    [v36 floatValue];
    v38 = v37;

    v39 = [v1 assessmentLivePRD];
    [v39 floatValue];
    v41 = v40;

    v42 = [v1 assessmentFakePRD];
    [v42 floatValue];
    v44 = v43;

    v45 = [v1 assessmentsPRD];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
    v74 = sub_2457487A0();

    v46 = [v1 ignoredStitches];
    v73 = [v46 integerValue];

    v47 = [v1 maxNccHigh];
    [v47 floatValue];
    v49 = v48;

    v50 = [v1 maxNccLow];
    [v50 floatValue];
    v52 = v51;

    v53 = [v1 assessmentTA];
    v72 = [v53 integerValue];

    v54 = [v1 assessmentsTA];
    v71 = sub_2457487A0();

    v55 = [v1 assessmentFAC];
    [v55 floatValue];
    v57 = v56;

    v58 = [v1 timestampsFAC];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
    v70 = sub_2457487A0();

    v59 = [v1 assessmentsFAC];
    sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
    v60 = sub_2457487A0();

    v61 = [v1 gestureSequence];
    v62 = sub_2457487A0();

    v63 = [v1 livenessLabel];
    v64 = [v63 integerValue];

    sub_2456E7040(v90, v91);
    v65 = *(v92 + 112);
    v66 = sub_245747C30();
    (*(*(v66 - 8) + 56))(v6 + v65, 1, 1, v66);
    *v6 = v95;
    *(v6 + 8) = v89;
    *(v6 + 16) = v88;
    *(v6 + 24) = v87;
    *(v6 + 32) = v86;
    *(v6 + 40) = v85;
    *(v6 + 48) = v84;
    *(v6 + 56) = v83;
    *(v6 + 64) = v82;
    *(v6 + 72) = v81;
    *(v6 + 80) = v80;
    *(v6 + 88) = v79;
    *(v6 + 96) = v78;
    *(v6 + 104) = v77;
    *(v6 + 112) = v76;
    *(v6 + 120) = v96;
    *(v6 + 128) = v75;
    *(v6 + 136) = v38;
    *(v6 + 140) = v41;
    *(v6 + 144) = v44;
    *(v6 + 152) = v74;
    *(v6 + 160) = v73;
    *(v6 + 168) = v49;
    *(v6 + 172) = v52;
    *(v6 + 176) = v72;
    *(v6 + 184) = v71;
    *(v6 + 192) = v57;
    *(v6 + 200) = v70;
    *(v6 + 208) = v60;
    *(v6 + 216) = v62;
    *(v6 + 224) = v64;

    sub_2456E729C(v91, v6 + v65);
    v67 = (v6 + *(v92 + 116));
    *v67 = v94;
    v67[1] = v93;
    sub_245747CE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF3B0(v0[78]);
      swift_unknownObjectRelease();
    }

    sub_2456F3C94(v0[78]);
  }

  v68 = v0[1];

  return v68();
}

uint64_t sub_2456F1E18(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 680);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_245747CF0();
  v3 = v2;
  v4 = sub_245747E50();
  v5 = sub_245748920();

  if (os_log_type_enabled(v4, v5))
  {
    v20 = *(v1 + 664);
    v6 = *(v1 + 648);
    v7 = *(v1 + 632);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_245748C20();
    v12 = sub_24572EDDC(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2456DE000, v4, v5, "Error occurred before finishing liveness: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D712D0](v9, -1, -1);
    MEMORY[0x245D712D0](v8, -1, -1);

    v20(v6, v7);
  }

  else
  {
    v13 = *(v1 + 664);
    v14 = *(v1 + 648);
    v15 = *(v1 + 632);

    v13(v14, v15);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v1 + 680);
  if (Strong)
  {
    sub_2456FF760(*(v1 + 680));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2456F206C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
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

    return MEMORY[0x282200950](v5);
  }
}

id sub_2456F2144(void *a1)
{
  v2 = [a1 orientation] - 2;
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_24574AA78[v2];
  }

  v4 = [a1 buffer];
  v5 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage:v5 scale:v3 orientation:1.0];
  swift_beginAccess();
  *&v7 = COERCE_DOUBLE(RGBLivenessConfig.imageWidth.getter());
  v9 = v8;
  swift_endAccess();
  if (v9)
  {
    [v6 size];
    v11 = v10;
  }

  else
  {
    v11 = *&v7;
  }

  swift_beginAccess();
  *&v12 = COERCE_DOUBLE(RGBLivenessConfig.imageHeight.getter());
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    [v6 size];
    v16 = v15;
  }

  else
  {
    v16 = *&v12;
  }

  [v6 size];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v11;
  v30.size.height = v16;
  v29 = AVMakeRectWithAspectRatioInsideRect(v28, v30);
  width = v29.size.width;
  height = v29.size.height;
  v19 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v20 = swift_allocObject();
  *(v20 + 2) = v6;
  v20[3] = width;
  v20[4] = height;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2456F3CF8;
  *(v21 + 24) = v20;
  v27[4] = sub_2456F3D60;
  v27[5] = v21;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = sub_245703158;
  v27[3] = &block_descriptor_52;
  v22 = _Block_copy(v27);
  v23 = v6;

  v24 = [v19 imageWithActions_];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_2456F2444(void *a1, double a2)
{
  [a1 size];
  v5 = v4;
  [a1 size];
  v7 = v6;
  swift_beginAccess();
  v8 = COERCE_DOUBLE(RGBLivenessConfig.imageWidth.getter());
  if ((v9 & 1) == 0)
  {
    v5 = v8;
  }

  v10 = COERCE_DOUBLE(RGBLivenessConfig.imageHeight.getter());
  if ((v11 & 1) == 0)
  {
    v7 = v10;
  }

  swift_endAccess();
  [a1 size];
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v5;
  v25.size.height = v7;
  v24 = AVMakeRectWithAspectRatioInsideRect(v23, v25);
  width = v24.size.width;
  height = v24.size.height;
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  v15[3] = width;
  v15[4] = height;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2456F3D5C;
  *(v16 + 24) = v15;
  v22[4] = sub_2456F3CF0;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_245703158;
  v22[3] = &block_descriptor_42;
  v17 = _Block_copy(v22);
  v18 = a1;

  v19 = [v14 JPEGDataWithCompressionQuality:v17 actions:a2];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_245747C60();

    return v21;
  }

  return result;
}

uint64_t sub_2456F2694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for RGBLivenessResult(0);
  v4[29] = swift_task_alloc();
  v5 = sub_245747E60();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F27CC, 0, 0);
}

uint64_t sub_2456F27CC(uint64_t a1)
{
  sub_245747CF0();
  v2 = sub_245747E50();
  v3 = sub_245748910();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2456DE000, v2, v3, "Completing StepUp without selfie", v4, 2u);
    MEMORY[0x245D712D0](v4, -1, -1);
  }

  v5 = v1[33];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[26];

  v9 = *(v7 + 8);
  v1[34] = v9;
  v9(v5, v6);
  v1[35] = *(v8 + 624);
  v1[2] = v1;
  v1[7] = v1 + 21;
  v1[3] = sub_2456F299C;
  v10 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248A8, &qword_24574AA30);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2456F206C;
  v1[13] = &block_descriptor_55;
  v1[14] = v10;
  [swift_unknownObjectRetain() finishLivenessStepUp_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2456F299C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_2456F31F0;
  }

  else
  {
    v2 = sub_2456F2AAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456F2AAC()
{
  v1 = v0[21];
  swift_unknownObjectRelease();
  sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
  v2 = sub_245747D80();
  v3 = MEMORY[0x245D70730](v2);

  if (v3)
  {
    sub_2456E730C(0, &unk_27EE248D0, 0x277CCA9B8);
    v4 = sub_245748A00();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v4;
      sub_2456FF760(v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v6 = v0[29];
    v65 = v0[28];
    v7 = v0[27];
    v81 = v0[25];
    v84 = v0[23];
    v85 = v0[24];
    v8 = [v1 glassesLabel];
    v83 = sub_245748700();
    v82 = v9;

    v10 = [v1 headgearLabel];
    v11 = sub_245748700();
    v79 = v12;
    v80 = v11;

    v13 = [v1 faceHairLabel];
    v14 = sub_245748700();
    v77 = v15;
    v78 = v14;

    v16 = [v1 ethnicityLabel];
    v17 = sub_245748700();
    v75 = v18;
    v76 = v17;

    v19 = [v1 skintoneLabel];
    v20 = sub_245748700();
    v73 = v21;
    v74 = v20;

    v22 = [v1 sexLabel];
    v23 = sub_245748700();
    v71 = v24;
    v72 = v23;

    v25 = [v1 ageLabel];
    v26 = sub_245748700();
    v69 = v27;
    v70 = v26;

    v28 = [v1 timestampsID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    v68 = sub_2457487A0();

    v29 = [v1 assessmentID];
    [v29 floatValue];
    v31 = v30;

    v32 = [v1 assessmentLivePRD];
    [v32 floatValue];
    v34 = v33;

    v35 = [v1 assessmentFakePRD];
    [v35 floatValue];
    v37 = v36;

    v38 = [v1 assessmentsPRD];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
    v67 = sub_2457487A0();

    v39 = [v1 ignoredStitches];
    v66 = [v39 integerValue];

    v40 = [v1 maxNccHigh];
    [v40 floatValue];
    v42 = v41;

    v43 = [v1 maxNccLow];
    [v43 floatValue];
    v45 = v44;

    v46 = [v1 assessmentTA];
    v64 = [v46 integerValue];

    v47 = [v1 assessmentsTA];
    v63 = sub_2457487A0();

    v48 = [v1 assessmentFAC];
    [v48 floatValue];
    v50 = v49;

    v51 = [v1 timestampsFAC];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
    v62 = sub_2457487A0();

    v52 = [v1 assessmentsFAC];
    sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
    v53 = sub_2457487A0();

    v54 = [v1 gestureSequence];
    v55 = sub_2457487A0();

    v56 = [v1 livenessLabel];
    v57 = [v56 integerValue];

    sub_2456E7040(v81, v7);
    v58 = *(v65 + 112);
    v59 = sub_245747C30();
    (*(*(v59 - 8) + 56))(v6 + v58, 1, 1, v59);
    *v6 = v84;
    *(v6 + 8) = v83;
    *(v6 + 16) = v82;
    *(v6 + 24) = v80;
    *(v6 + 32) = v79;
    *(v6 + 40) = v78;
    *(v6 + 48) = v77;
    *(v6 + 56) = v76;
    *(v6 + 64) = v75;
    *(v6 + 72) = v74;
    *(v6 + 80) = v73;
    *(v6 + 88) = v72;
    *(v6 + 96) = v71;
    *(v6 + 104) = v70;
    *(v6 + 112) = v69;
    *(v6 + 120) = v85;
    *(v6 + 128) = v68;
    *(v6 + 136) = v31;
    *(v6 + 140) = v34;
    *(v6 + 144) = v37;
    *(v6 + 152) = v67;
    *(v6 + 160) = v66;
    *(v6 + 168) = v42;
    *(v6 + 172) = v45;
    *(v6 + 176) = v64;
    *(v6 + 184) = v63;
    *(v6 + 192) = v50;
    *(v6 + 200) = v62;
    *(v6 + 208) = v53;
    *(v6 + 216) = v55;
    *(v6 + 224) = v57;

    sub_2456E729C(v7, v6 + v58);
    *(v6 + *(v65 + 116)) = xmmword_24574A950;
    sub_245747CE0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2456FF3B0(v0[29]);
      swift_unknownObjectRelease();
    }

    sub_2456F3C94(v0[29]);
  }

  v60 = v0[1];

  return v60();
}

uint64_t sub_2456F31F0(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 288);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_245747CF0();
  v3 = v2;
  v4 = sub_245747E50();
  v5 = sub_245748920();

  if (os_log_type_enabled(v4, v5))
  {
    v20 = *(v1 + 272);
    v6 = *(v1 + 256);
    v7 = *(v1 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_245748C20();
    v12 = sub_24572EDDC(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2456DE000, v4, v5, "Error occurred before finishing liveness step up: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D712D0](v9, -1, -1);
    MEMORY[0x245D712D0](v8, -1, -1);

    v20(v6, v7);
  }

  else
  {
    v13 = *(v1 + 272);
    v14 = *(v1 + 256);
    v15 = *(v1 + 240);

    v13(v14, v15);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v1 + 288);
  if (Strong)
  {
    sub_2456FF760(*(v1 + 288));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2456F3434()
{
  v0 = sub_245747E60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15[-4] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245747B00();
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  strcpy(v15, "shouldIgnore");
  HIBYTE(v15[6]) = 0;
  v15[7] = -5120;
  sub_245748A80();
  if (!*(v5 + 16) || (v6 = sub_24572F490(v16), (v7 & 1) == 0))
  {

    sub_2456F389C(v16);
LABEL_11:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_12;
  }

  sub_2456E6F9C(*(v5 + 56) + 32 * v6, &v17);
  sub_2456F389C(v16);

  if (!*(&v18 + 1))
  {
LABEL_12:
    sub_2456F3834(&v17);
    goto LABEL_13;
  }

  sub_2456E730C(0, &qword_27EE24880, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v8 = v16[0];
    if ([v16[0] BOOLValue])
    {
      sub_245747CF0();
      v9 = sub_245747E50();
      v10 = sub_245748910();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2456DE000, v9, v10, "A stitch was detected but will be ignored.", v11, 2u);
        MEMORY[0x245D712D0](v11, -1, -1);
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

LABEL_13:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = off_28587A650[0];
    type metadata accessor for RGBLivenessController(0);
    v13();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2456F37B4()
{
  sub_2456EEF28(v0 + 16);
  memcpy(v2, (v0 + 48), sizeof(v2));
  sub_2456F38F0(v2);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_2456F3834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24878, &qword_24574A9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2456F39D8()
{
  result = qword_27EE24820;
  if (!qword_27EE24820)
  {
    sub_2457485F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24820);
  }

  return result;
}

unint64_t sub_2456F3A30()
{
  result = qword_27EE24830;
  if (!qword_27EE24830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE24828, &qword_24574A930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24830);
  }

  return result;
}

uint64_t sub_2456F3A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_2456F0554(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2456F3B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456EEC10;

  return sub_2456EF664(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2456F3C64(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2456F3C94(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456F3D64(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2456F3D98()
{
  v1 = (v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts);
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts + 8) != 1)
  {
    return *v1;
  }

  memcpy(v3, (v0 + 64), sizeof(v3));
  result = sub_245720528();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_2456F3E04()
{
  v1 = (v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode);
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode + 8) != 1)
  {
    return *v1;
  }

  memcpy(v3, (v0 + 64), sizeof(v3));
  if (sub_245720840())
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_2456F3E7C(void *__src, void *a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  *(v4 + 16) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession) = 0;
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator;
  *(v4 + v8) = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor;
  *(v4 + v10) = [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v11 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames) = v9;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = 11;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 0;
  v12 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState) = 0;
  v14 = v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 2;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = 0;
  *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = 0;
  memcpy((v4 + 64), __src, 0x240uLL);
  memcpy(v25, __src, sizeof(v25));
  sub_2456F3944(__dst, v24);
  v15 = RGBLivenessConfig.imageWidth.getter();
  LOBYTE(v9) = v16;
  memcpy(v24, __dst, sizeof(v24));
  v17 = RGBLivenessConfig.imageHeight.getter();
  LOBYTE(v10) = v18;
  sub_2456E71D8(a2, v23);
  type metadata accessor for RGBLivenessImageManager(0);
  swift_allocObject();
  *(v4 + 640) = sub_2457034F8(v15, v9 & 1, v17, v10 & 1, v23);
  memcpy(v25, __dst, sizeof(v25));
  type metadata accessor for RGBLivenessClassifierManager();
  swift_allocObject();
  v19 = sub_2456EF000(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  *(v4 + 648) = v19;
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  (*(*(v21 - 8) + 32))(v4 + v20, a3, v21);
  return v4;
}

char *sub_2456F41E4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76660] object:0];

  sub_2456EEF50(v0 + 24, &qword_27EE249F8, &qword_24574AC30);
  memcpy(__dst, (v0 + 64), 0x240uLL);
  sub_2456F38F0(__dst);

  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_2456F4380()
{
  sub_2456F41E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RGBLivenessController(uint64_t a1)
{
  result = qword_27EE249E0;
  if (!qword_27EE249E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2456F442C(uint64_t a1)
{
  sub_2456F4574(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2456F4574(uint64_t a1)
{
  if (!qword_27EE249F0)
  {
    type metadata accessor for RGBLivenessModel.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE244D8, &qword_24574AA50);
    v1 = sub_2457488C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE249F0);
    }
  }
}

uint64_t sub_2456F4610()
{
  v1 = v0[18];

  sub_2456E9668();

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x277D76660] object:0];

  v3 = *(v1 + 648);
  v0[19] = v3;
  v0[20] = *(v3 + 624);
  v0[2] = v0;
  v0[3] = sub_2456F47A8;

  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE248E0, &unk_24574AA68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2456F3D64;
  v0[13] = &block_descriptor_2;
  v0[14] = v4;
  [swift_unknownObjectRetain() cancelWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2456F47A8()
{

  return MEMORY[0x2822009F8](sub_2456F4888, 0, 0);
}

uint64_t sub_2456F4888()
{
  v1 = *(v0 + 144);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  v3 = *(v0 + 144);
  *(v1 + v2) = 0;

  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask;
  if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  *(v3 + v4) = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2456F49D0(uint64_t a1)
{
  v2[281] = v1;
  v2[280] = a1;
  v3 = sub_245747E60();
  v2[282] = v3;
  v2[283] = *(v3 - 8);
  v2[284] = swift_task_alloc();
  v4 = sub_245747DC0();
  v2[285] = v4;
  v2[286] = *(v4 - 8);
  v2[287] = swift_task_alloc();
  v5 = sub_2457485F0();
  v2[288] = v5;
  v2[289] = *(v5 - 8);
  v2[290] = swift_task_alloc();
  v6 = sub_245748630();
  v2[291] = v6;
  v2[292] = *(v6 - 8);
  v2[293] = swift_task_alloc();
  v2[294] = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v7 = type metadata accessor for RGBLivenessModel.State(0);
  v2[297] = v7;
  v2[298] = *(v7 - 8);
  v2[299] = swift_task_alloc();
  v2[300] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A28, &qword_24574AC78);
  v2[301] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A30, &qword_24574AC80);
  v2[302] = v8;
  v2[303] = *(v8 - 8);
  v2[304] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F4CEC, 0, 0);
}

uint64_t sub_2456F4CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  sub_245748850();
  *(v0 + 2440) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason;
  *(v0 + 2448) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession;
  *(v0 + 2456) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  *(v0 + 2464) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask;
  *(v0 + 2472) = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring;
  v1 = MEMORY[0x277CFFBE0];
  *(v0 + 2480) = *MEMORY[0x277D76660];
  *(v0 + 1780) = *v1;
  v2 = swift_task_alloc();
  *(v0 + 2488) = v2;
  *v2 = v0;
  v2[1] = sub_2456F4E14;
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);

  return MEMORY[0x2822003E8](v4, 0, 0, v3);
}

uint64_t sub_2456F4E14()
{

  return MEMORY[0x2822009F8](sub_2456F4F10, 0, 0);
}

uint64_t sub_2456F4F10()
{
  v127 = v0;
  v1 = *(v0 + 2408);
  if ((*(*(v0 + 2384) + 48))(v1, 1, *(v0 + 2376)) == 1)
  {
    (*(*(v0 + 2424) + 8))(*(v0 + 2432), *(v0 + 2416));

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = (v0 + 1784);
  sub_24570298C(v1, *(v0 + 2400), type metadata accessor for RGBLivenessModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = *(v0 + 2368);
      sub_24570298C(*(v0 + 2400), v5, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      sub_2456F6B58(v5);
      goto LABEL_43;
    case 2u:
      v30 = *(v0 + 2400);
      goto LABEL_41;
    case 3u:
      v33 = *(v0 + 2360);
      sub_24570298C(*(v0 + 2400), v33, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if (*v33)
      {
        v6 = sub_2456F627C;
        goto LABEL_28;
      }

      aBlock = *(v0 + 2360);
      v99 = *(v0 + 2344);
      v100 = *(v0 + 2336);
      v115 = *(v0 + 2328);
      v118 = *(v0 + 2352);
      v101 = *(v0 + 2320);
      v102 = *(v0 + 2312);
      v103 = *(v0 + 2304);
      v104 = *(*(*(v0 + 2248) + 640) + 32);
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v0 + 2104) = sub_245703128;
      *(v0 + 2112) = v105;
      *(v0 + 2072) = MEMORY[0x277D85DD0];
      *(v0 + 2080) = 1107296256;
      *(v0 + 2088) = sub_2456E7A28;
      *(v0 + 2096) = &block_descriptor_32;
      v106 = _Block_copy((v0 + 2072));

      v107 = v104;
      sub_245748610();
      *(v0 + 2232) = MEMORY[0x277D84F90];
      sub_245702840(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
      sub_2456F3A30();
      sub_245748A50();
      MEMORY[0x245D70770](0, v99, v101, v106);
      _Block_release(v106);
      (*(v102 + 8))(v101, v103);
      (*(v100 + 8))(v99, v115);

      v108 = *(v118 + 40);
      v109 = swift_task_alloc();
      *(v0 + 2496) = v109;
      *v109 = v0;
      v109[1] = sub_2456F6180;

      return sub_2456FA788(aBlock + v108);
    case 4u:
      v13 = *(v0 + 2400);
      v14 = *(v13 + 40);
      *v116 = *(v13 + 8);
      *aBlocka = *(v13 + 24);
      *(v0 + 2168) = *v13;
      *(v0 + 2176) = *v116;
      *(v0 + 2192) = *aBlocka;
      *(v0 + 2208) = v14;
      sub_2456F6E80(v0 + 2168);
      goto LABEL_51;
    case 5u:
      v58 = *(v0 + 2400);
      v59 = *v58;
      if (v58[1])
      {
        v60 = 256;
      }

      else
      {
        v60 = 0;
      }

      sub_2456F7114(v60 | v59);
      goto LABEL_60;
    case 6u:
      v63 = *(v0 + 2400);
      v65 = v63[1];
      v64 = v63[2];
      v66 = *v63;
      *(v0 + 1953) = *(v63 + 41);
      *(v0 + 1928) = v65;
      *(v0 + 1944) = v64;
      *(v0 + 1912) = v66;
      v67 = v63[1];
      v123 = *v63;
      v124 = v67;
      *v125 = v63[2];
      *&v125[9] = *(v63 + 41);
      sub_2456F73E0(&v123);
      sub_2457028DC(v0 + 1912);
      goto LABEL_60;
    case 7u:
      v34 = *(v0 + 2400);
      v36 = v34[1];
      v35 = v34[2];
      v37 = *v34;
      *(v0 + 1825) = *(v34 + 41);
      *(v0 + 1800) = v36;
      *(v0 + 1816) = v35;
      *v4 = v37;
      if ((*v4 & 1) == 0)
      {
        v38 = *(v0 + 2464);
        v39 = v0;
        v40 = *(v0 + 2248);
        [*(*(v40 + 648) + 624) prepareToResumeLiveness];
        if (*(v40 + v38))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();
        }

        v0 = v39;
        *(*(*(v39 + 2248) + 640) + 184) = 1;
      }

      v41 = *(v0 + 2392);
      v42 = *(v0 + 1808);
      v43 = *v4;
      v44 = v4[1];
      v45 = v4[2];
      *(v41 + 41) = *(v4 + 41);
      v41[1] = v44;
      v41[2] = v45;
      *v41 = v43;
      swift_storeEnumTagMultiPayload();
      if (v42)
      {
        v46 = *(v0 + 2392);
        v47 = v42;
        sub_245702930(v4, v0 + 1848);
        sub_2456FDBA8(v46, &v123);

        sub_2457031A4(v47, &v123);

        v48 = sub_2456FD810(v46);
        if (v48 != 2)
        {
          v49 = v48;
          v50 = sub_2456FD9DC(*(v0 + 2392));
          if ((v51 & 1) == 0)
          {
            v52 = v50;

            [swift_unknownObjectRetain() processLivenessFrame:v47 withOptions:v49 & 0x10101 taOptions:v52];
            swift_unknownObjectRelease();
          }
        }

        sub_2457028DC(v4);
      }

      v30 = *(v0 + 2392);
LABEL_41:
      sub_2457029F4(v30, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_60;
    case 8u:
      v76 = *(v0 + 2400);
      v78 = v76[1];
      v77 = v76[2];
      v79 = *v76;
      *(v0 + 1761) = *(v76 + 41);
      *(v0 + 1736) = v78;
      *(v0 + 1752) = v77;
      *(v0 + 1720) = v79;
      v80 = v76[1];
      v123 = *v76;
      v124 = v80;
      *v125 = v76[2];
      *&v125[9] = *(v76 + 41);
      sub_2456F7744(&v123);
      sub_2457028DC(v0 + 1720);
      goto LABEL_60;
    case 9u:
      v24 = *(v0 + 2400);
      *(v0 + 1648) = *v24;
      v26 = *(v24 + 32);
      v25 = *(v24 + 48);
      v27 = *(v24 + 16);
      *(v0 + 1712) = *(v24 + 64);
      *(v0 + 1680) = v26;
      *(v0 + 1696) = v25;
      *(v0 + 1664) = v27;
      v28 = *(v24 + 48);
      *v125 = *(v24 + 32);
      *&v125[16] = v28;
      v126 = *(v24 + 64);
      v29 = *(v24 + 16);
      v123 = *v24;
      v124 = v29;
      sub_2456F79F4(&v123);
      sub_245702888(v0 + 1648);
      goto LABEL_60;
    case 0xAu:
      v70 = *(v0 + 2400);
      *(v0 + 1576) = *v70;
      v72 = *(v70 + 32);
      v71 = *(v70 + 48);
      v73 = *(v70 + 16);
      *(v0 + 1640) = *(v70 + 64);
      *(v0 + 1608) = v72;
      *(v0 + 1624) = v71;
      *(v0 + 1592) = v73;
      v74 = *(v70 + 48);
      *v125 = *(v70 + 32);
      *&v125[16] = v74;
      v126 = *(v70 + 64);
      v75 = *(v70 + 16);
      v123 = *v70;
      v124 = v75;
      sub_2456F7C70(&v123);
      sub_245702888(v0 + 1576);
      goto LABEL_60;
    case 0xBu:
      v7 = *(v0 + 2400);
      *(v0 + 1504) = *v7;
      v9 = *(v7 + 32);
      v8 = *(v7 + 48);
      v10 = *(v7 + 16);
      *(v0 + 1568) = *(v7 + 64);
      *(v0 + 1536) = v9;
      *(v0 + 1552) = v8;
      *(v0 + 1520) = v10;
      v11 = *(v7 + 48);
      *v125 = *(v7 + 32);
      *&v125[16] = v11;
      v126 = *(v7 + 64);
      v12 = *(v7 + 16);
      v123 = *v7;
      v124 = v12;
      sub_2456F8214(&v123);
      sub_245702888(v0 + 1504);
      goto LABEL_60;
    case 0xCu:
      if ((**(v0 + 2400) & 1) == 0)
      {
        v15 = *(v0 + 2248);
        if (*(v15 + *(v0 + 2448)))
        {

          sub_245725488(2, 0);

          v15 = *(v0 + 2248);
        }

        if (*(v15 + *(v0 + 2456)))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();

          v15 = *(v0 + 2248);
        }

        if (*(v15 + *(v0 + 2464)))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
          sub_245748870();

          v15 = *(v0 + 2248);
        }

        v16 = *(v0 + 2344);
        v112 = *(v0 + 2336);
        v113 = *(v0 + 2328);
        v117 = *(v0 + 2472);
        v17 = *(v0 + 2320);
        v18 = *(v0 + 2312);
        v19 = *(v0 + 2304);
        v20 = *(*(v15 + 640) + 32);
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v0 + 2056) = sub_2456EED78;
        *(v0 + 2064) = v21;
        *(v0 + 2024) = MEMORY[0x277D85DD0];
        *(v0 + 2032) = 1107296256;
        *(v0 + 2040) = sub_2456E7A28;
        *(v0 + 2048) = &block_descriptor_25;
        v22 = _Block_copy((v0 + 2024));

        v23 = v20;
        sub_245748610();
        *(v0 + 2224) = MEMORY[0x277D84F90];
        sub_245702840(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
        sub_2456F3A30();
        sub_245748A50();
        MEMORY[0x245D70770](0, v16, v17, v22);
        _Block_release(v22);
        (*(v18 + 8))(v17, v19);
        (*(v112 + 8))(v16, v113);

        *(v15 + v117) = 1;
      }

      goto LABEL_60;
    case 0xDu:
      v61 = *(v0 + 2400);
      v62 = *(v61 + 40);
      *v116 = *(v61 + 8);
      *aBlockb = *(v61 + 24);
      *(v0 + 2120) = *v61;
      *(v0 + 2128) = *v116;
      *(v0 + 2144) = *aBlockb;
      *(v0 + 2160) = v62;
      sub_2456F848C(v0 + 2120);
LABEL_51:

      goto LABEL_52;
    case 0xEu:
      sub_2456F86E4(**(v0 + 2400));
      goto LABEL_60;
    case 0xFu:
      v31 = *(v0 + 2400);
      v32 = *(v31 + 8);
      if (*(v31 + 24) && (*(v31 + 32) & 1) != 0)
      {
        *(*(v0 + 2248) + *(v0 + 2440)) = 4;
      }

LABEL_52:

      goto LABEL_60;
    case 0x10u:
      if ((**(v0 + 2400) & 1) == 0)
      {
        v85 = *(v0 + 2344);
        v86 = *(v0 + 2336);
        v114 = *(v0 + 2328);
        v87 = *(v0 + 2320);
        v88 = *(v0 + 2312);
        v89 = *(v0 + 2304);
        aBlockc = *(v0 + 2248);
        v90 = *(aBlockc[80] + 32);
        v91 = swift_allocObject();
        *(v91 + 16) = v90;
        *(v0 + 2008) = sub_2456EEE18;
        *(v0 + 2016) = v91;
        *(v0 + 1976) = MEMORY[0x277D85DD0];
        *(v0 + 1984) = 1107296256;
        *(v0 + 1992) = sub_2456E7A28;
        *(v0 + 2000) = &block_descriptor_17;
        v92 = _Block_copy((v0 + 1976));

        v93 = v90;
        sub_245748610();
        *(v0 + 2216) = MEMORY[0x277D84F90];
        sub_245702840(&qword_27EE24820, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24828, &qword_24574A930);
        sub_2456F3A30();
        sub_245748A50();
        MEMORY[0x245D70770](0, v85, v87, v92);
        _Block_release(v92);
        (*(v88 + 8))(v87, v89);
        (*(v86 + 8))(v85, v114);

        memcpy((v0 + 16), aBlockc + 8, 0x240uLL);
        v94 = v0;
        memcpy((v0 + 1168), aBlockc + 17, 0x14DuLL);
        if (sub_2456F3C64(v0 + 1168) == 1)
        {
          v95 = *(v0 + 2272);
          v96 = *(v0 + 2264);
          v97 = *(v0 + 2256);
          (*(*(v0 + 2288) + 104))(*(v0 + 2296), *(v0 + 1780), *(v0 + 2280));
          sub_2456F3944(v0 + 16, v0 + 592);
          sub_245723158(MEMORY[0x277D84F90]);
          sub_245747DD0();
          sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
          v98 = swift_allocError();
          sub_245747DE0();
          sub_245747CF0();
          sub_245747D00();
          (*(v96 + 8))(v95, v97);
          v94 = v0;

          sub_2456F38F0(v0 + 16);
        }

        else if ((*(v0 + 1499) & 1) == 0)
        {
          v111 = swift_task_alloc();
          *(v0 + 2512) = v111;
          *v111 = v0;
          v111[1] = sub_2456F64E4;

          return sub_2456FBD3C();
        }

        v110 = swift_task_alloc();
        *(v94 + 2504) = v110;
        *v110 = v94;
        v110[1] = sub_2456F63E8;

        return sub_2456FB34C();
      }

      v6 = sub_2456F6340;
LABEL_28:

      return MEMORY[0x2822009F8](v6, 0, 0);
    case 0x11u:
      v53 = *(v0 + 2400);
      v54 = v53[1];
      LOBYTE(v123) = *v53;
      sub_2456F897C(&v123, v54);
      goto LABEL_60;
    case 0x12u:
      v68 = **(v0 + 2400);
      v69 = swift_task_alloc();
      *(v0 + 2520) = v69;
      *v69 = v0;
      v69[1] = sub_2456F65E0;

      return sub_2456F8B34(v68);
    case 0x13u:
      v81 = *(v0 + 2400);
      sub_2456F9C4C(0);
      sub_2457029F4(v81, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_60;
    case 0x14u:
      v55 = *(v0 + 2480);
      v56 = *(v0 + 2248);
      sub_2456F9E70();

      sub_2456E80C0();

      *(*(v56 + 640) + 24) = &off_28587A5F8;
      swift_unknownObjectWeakAssign();
      *(*(v56 + 648) + 24) = &off_28587A638;
      swift_unknownObjectWeakAssign();
      v57 = [objc_opt_self() defaultCenter];
      [v57 addObserver:v56 selector:sel_cancelAfterAppMovedToBackground name:v55 object:0];

      goto LABEL_60;
    default:
      v5 = *(v0 + 2368);
      sub_24570298C(*(v0 + 2400), v5, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      sub_2456F66DC(v5);
LABEL_43:
      sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
LABEL_60:
      v82 = swift_task_alloc();
      *(v0 + 2488) = v82;
      *v82 = v0;
      v82[1] = sub_2456F4E14;
      v83 = *(v0 + 2416);
      v84 = *(v0 + 2408);

      return MEMORY[0x2822003E8](v84, 0, 0, v83);
  }
}

uint64_t sub_2456F6180()
{

  return MEMORY[0x2822009F8](sub_2456F627C, 0, 0);
}

uint64_t sub_2456F627C()
{
  sub_2457029F4(v0[295], type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  v1 = swift_task_alloc();
  v0[311] = v1;
  *v1 = v0;
  v1[1] = sub_2456F4E14;
  v2 = v0[302];
  v3 = v0[301];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_2456F6340()
{
  v1 = swift_task_alloc();
  v0[311] = v1;
  *v1 = v0;
  v1[1] = sub_2456F4E14;
  v2 = v0[302];
  v3 = v0[301];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_2456F63E8()
{

  return MEMORY[0x2822009F8](sub_2456F6340, 0, 0);
}

uint64_t sub_2456F64E4()
{

  return MEMORY[0x2822009F8](sub_2456F6340, 0, 0);
}

uint64_t sub_2456F65E0()
{

  return MEMORY[0x2822009F8](sub_245703120, 0, 0);
}

uint64_t sub_2456F66DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-v8];
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + *(type metadata accessor for RGBLivenessModel.PassiveConfiguration(0) + 52)))
    {
      v10 = MEMORY[0x277D84F90];
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) = MEMORY[0x277D84F90];

      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames) = v10;

      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 0;
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
      v11 = sub_245748810();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v2;

      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = sub_24572A644(0, 0, v9, &unk_24574ACC8, v12);

      sub_2456E9A90();
      sub_2456E9748(0, 0);
    }

    else
    {
      v13 = *(v2 + 640);
      v14 = (*(v2 + 585) << 8 != 512) & *(v2 + 589);
      *(v13 + 161) = 1;
      *(v13 + 162) = v14;

      sub_2456E8AD0(v14);

      sub_2456EF0CC();

      [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) prepare];
    }

    v15 = CACurrentMediaTime();
    v16 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
    *v16 = v15;
    *(v16 + 8) = 0;
    memcpy(v34, (v2 + 64), sizeof(v34));
    v17 = sub_245720840();
    v18 = 2;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v19 = v18;
    *(v19 + 8) = 0;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame;
    if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) & 1) == 0)
    {
      v22 = *(v2 + 640);
      if (*(v22 + 184) == 1)
      {
        v23 = *(v22 + 176);
        if (v23)
        {

          v24 = v23;
          sub_245727FE8();
        }
      }

      *(v2 + v21) = 1;
    }
  }

  if (*(a1 + 48))
  {
    v25 = HIBYTE(*(a1 + 56)) & 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  sub_2456F9F98(v20, v25, *(a1 + *(v26 + 44)));
  sub_245702DF0(a1, v6, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  swift_storeEnumTagMultiPayload();
  if (v20)
  {
    v27 = v20;
    sub_2456FDBA8(v6, v34);

    sub_2457031A4(v27, v34);

    v28 = sub_2456FD810(v6);
    if (v28 != 2)
    {
      v29 = v28;
      v30 = sub_2456FD9DC(v6);
      if ((v31 & 1) == 0)
      {
        v32 = v30;

        [swift_unknownObjectRetain() processLivenessFrame:v27 withOptions:v29 & 0x10101 taOptions:v32];

        swift_unknownObjectRelease();
      }
    }
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F6B58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v7 = [*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v9 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_245702574(0, *(v9 + 2) + 1, 1, v9);
      *(v2 + v8) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_245702574((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = v7;
    *(v2 + v8) = v9;
    result = sub_2456F3D98();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v14 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
    *v14 = result - 1;
    *(v14 + 8) = 0;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];

    v15 = sub_2456F3E04();
    sub_2456E9D64(v15, 1);
  }

  if (*(a1 + 48))
  {
    v16 = HIBYTE(*(a1 + 56)) & 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 32);
  sub_2456FA544(v17, v16);
  sub_245702DF0(a1, v6, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  swift_storeEnumTagMultiPayload();
  if (v17)
  {
    v18 = v17;
    sub_2456FDBA8(v6, &v25);

    sub_2457031A4(v18, &v25);

    v19 = sub_2456FD810(v6);
    if (v19 != 2)
    {
      v20 = v19;
      v21 = sub_2456FD9DC(v6);
      if ((v22 & 1) == 0)
      {
        v23 = v21;

        [swift_unknownObjectRetain() processLivenessFrame:v18 withOptions:v20 & 0x10101 taOptions:v23];

        swift_unknownObjectRelease();
      }
    }
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F6E80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v26 = v9;
  if ((v7 & 1) == 0)
  {
    *(*(v2 + 640) + 161) = 0;
    v25 = v8;

    sub_2456E86D8();

    v11 = CACurrentMediaTime();
    v12 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
    *v12 = v11;
    v8 = v25;
    v9 = v26;
    *(v12 + 8) = 0;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) = 0;
  }

  v13 = v8;
  if (!v8)
  {
    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 24) = v9;
    v6[40] = v10;
    swift_storeEnumTagMultiPayload();
LABEL_15:

    return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
  }

  v14 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame;
  if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasReceivedFirstFrame) & 1) == 0)
  {
    v15 = *(v2 + 640);
    if (*(v15 + 184) == 1)
    {
      v16 = *(v15 + 176);
      if (v16)
      {
        v25 = v8;

        v17 = v16;
        sub_245727FE8();

        v8 = v25;
        v9 = v26;
      }
    }

    *(v2 + v14) = 1;
  }

  *v6 = v7;
  *(v6 + 8) = v8;
  *(v6 + 24) = v9;
  v6[40] = v10;
  swift_storeEnumTagMultiPayload();
  if (!v13)
  {
    goto LABEL_15;
  }

  v18 = v13;
  sub_2456FDBA8(v6, &v27);

  sub_2457031A4(v18, &v27);

  v19 = sub_2456FD810(v6);
  if (v19 != 2)
  {
    v20 = v19;
    v21 = sub_2456FD9DC(v6);
    if ((v22 & 1) == 0)
    {
      v23 = v21;

      [swift_unknownObjectRetain() processLivenessFrame:v18 withOptions:v20 & 0x10101 taOptions:v23];

      swift_unknownObjectRelease();
    }
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

id sub_2456F7114(__int16 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 0x100) != 0)
    {
      v18 = *(v1 + 648);
      *(v18 + 32) = 0;
      *(v18 + 40) = 1;
      v19 = *(v18 + 624);

      return [v19 skipLivenessGesture];
    }

    else
    {
      if ((*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime + 8) & 1) == 0)
      {
        v7 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime);
        v8 = CACurrentMediaTime() - v7;
        sub_24571DA44(v8);
      }

      v9 = [*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
      v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
      v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v10) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_245702574(0, *(v11 + 2) + 1, 1, v11);
        *(v1 + v10) = v11;
      }

      v13 = *(v11 + 2);
      v14 = *(v11 + 3);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        v24 = v13 + 1;
        v20 = v11;
        v21 = v13;
        v22 = sub_245702574((v14 > 1), v13 + 1, 1, v20);
        v13 = v21;
        v15 = v24;
        v11 = v22;
      }

      *(v11 + 2) = v15;
      *&v11[8 * v13 + 32] = v9;
      *(v1 + v10) = v11;
      v16 = sub_245748810();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v1;

      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = sub_24572A644(0, 0, v6, &unk_24574ACF0, v17);

      sub_2456E9748(0, 0);

      sub_2456EF0CC();

      if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
      {

        sub_245725488(4, 0);
      }
    }
  }

  return result;
}

void sub_2456F73E0(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v37[0] = a1[2];
  *(v37 + 9) = *(a1 + 41);
  if ((v35 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 0;
    v8 = v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture;
    *v8 = *(&v35 + 1);
    *(v8 + 8) = 0;
    v9 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture;
    if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) & 1) == 0 && *(v2 + 16) == 1)
    {
      [*(*(v2 + 648) + 624) enableAccessibilityOptions];
    }

    *(v2 + v9) = 1;
    v10 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) > 0.0 && (*(v8 + 8) & 1) == 0)
    {
      v11 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause;
      v12 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause);
      if (v12 != 2)
      {
        v13 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_29;
        }

        v16 = *v8;
        *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = v15;
        v17 = CACurrentMediaTime() - *(v2 + v10);
        sub_24571DC54(v16, v12 & 1, v17);
        *(v2 + v10) = 0;
        *(v2 + v11) = 2;
      }
    }

    if (v36)
    {
      goto LABEL_14;
    }

    v18 = *(v2 + 640);
    v19 = *(v18 + 152);
    if (!v19)
    {
      goto LABEL_14;
    }

    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v14)
    {
      *(v18 + 152) = v20;
LABEL_14:
      v21 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);
      if (v21)
      {
        v22 = *(v21 + 104);

        if (v22)
        {
          [v22 pause];
          v22 = *(v21 + 104);
        }

        *(v21 + 104) = 0;
      }

      [*(*(v2 + 648) + 624) prepareToResumeLiveness];
      v23 = *(v2 + 640);
      v24 = *(v23 + 176);
      if (v24)
      {

        v25 = v24;
        sub_24572819C();

        v23 = *(v2 + 640);
      }

      *(v23 + 184) = 0;
      goto LABEL_21;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_21:
  v26 = *(&v36 + 1);
  v27 = a1[1];
  *v6 = *a1;
  v6[1] = v27;
  v6[2] = a1[2];
  *(v6 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  if (v26)
  {
    v28 = v26;
    sub_245702930(&v35, v34);
    sub_2456FDBA8(v6, v34);

    sub_2457031A4(v28, v34);

    v29 = sub_2456FD810(v6);
    if (v29 != 2)
    {
      v30 = v29;
      v31 = sub_2456FD9DC(v6);
      if ((v32 & 1) == 0)
      {
        v33 = v31;

        [swift_unknownObjectRetain() processLivenessFrame:v28 withOptions:v30 & 0x10101 taOptions:v33];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702930(&v35, v34);
  }

  sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F7744(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[1];
  v20 = *a1;
  v21 = v7;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  if ((v20 & 1) == 0)
  {
    *(v2 + 16) = 1;
    [*(*(v2 + 648) + 624) pauseLiveness];
    [*(*(v2 + 648) + 624) enableAccessibilityOptions];
    v8 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession);
    if (v8)
    {
      v9 = *(v8 + 104);

      if (v9)
      {
        [v9 pause];
        v9 = *(v8 + 104);
      }

      *(v8 + 104) = 0;
    }

    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    *(*(v2 + 640) + 184) = 0;
  }

  v10 = *(&v21 + 1);
  v11 = a1[1];
  *v6 = *a1;
  v6[1] = v11;
  v6[2] = a1[2];
  *(v6 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  if (v10)
  {
    v12 = v10;
    sub_245702930(&v20, v19);
    sub_2456FDBA8(v6, v19);

    sub_2457031A4(v12, v19);

    v13 = sub_2456FD810(v6);
    if (v13 != 2)
    {
      v14 = v13;
      v15 = sub_2456FD9DC(v6);
      if ((v16 & 1) == 0)
      {
        v17 = v15;

        [swift_unknownObjectRetain() processLivenessFrame:v12 withOptions:v14 & 0x10101 taOptions:v17];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702930(&v20, v19);
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F79F4(__int128 *a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  result = MEMORY[0x28223BE20](v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v25 = *a1;
  v26 = v7;
  v8 = a1[3];
  v27 = a1[2];
  v28 = v8;
  v29 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    v9 = v27;
    if (!v27)
    {
      v10 = *(v1 + 640);
      v11 = *(v10 + 152);
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
        return result;
      }

      *(v10 + 152) = v13;
      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = CACurrentMediaTime();
      *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount) = 0;
    }

    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 1;
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 1;
    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {

      sub_245725488(0, 1);
    }

    [*(*(v1 + 648) + 624) resumeLiveness];
    sub_2456FB194(*(&v26 + 1), v9);
  }

  v14 = *(&v27 + 1);
  v15 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v15;
  *(v6 + 8) = *(a1 + 8);
  v16 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v16;
  swift_storeEnumTagMultiPayload();
  if (v14)
  {
    v17 = v14;
    sub_245702EB4(&v25, v24);
    sub_2456FDBA8(v6, v24);

    sub_2457031A4(v17, v24);

    v18 = sub_2456FD810(v6);
    if (v18 != 2)
    {
      v19 = v18;
      v20 = sub_2456FD9DC(v6);
      if ((v21 & 1) == 0)
      {
        v22 = v20;

        [swift_unknownObjectRetain() processLivenessFrame:v17 withOptions:v19 & 0x10101 taOptions:v22];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(&v25, v24);
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F7C70(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_245747E60();
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v45 = *a1;
  v46 = v14;
  v15 = a1[3];
  v47 = a1[2];
  v48 = v15;
  v49 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    v42 = v11;
    [*(*(v2 + 648) + 624) prepareToResumeLiveness];
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    v43 = v9;
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {

      sub_245725488(1, 0);
    }

    v16 = [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v18 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_245702574(0, *(v18 + 2) + 1, 1, v18);
      *(v2 + v17) = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_245702574((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    *&v18[8 * v21 + 32] = v16;
    *(v2 + v17) = v18;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = 2;
    if ((v46 & 1) == 0)
    {
      v22 = *(&v45 + 1);
      v23 = CACurrentMediaTime() - *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime);
      sub_24571DEAC(v22, v47, *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCount), v23);
      sub_245747CF0();
      v24 = sub_245747E50();
      v25 = sub_245748910();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2456DE000, v24, v25, "Gesture completed, beginning low TA sensitivity", v26, 2u);
        MEMORY[0x245D712D0](v26, -1, -1);
      }

      (*(v42 + 8))(v13, v10);
      sub_245747CE0();
    }

    v27 = v43;
    if ((*(v2 + 16) & 1) == 0)
    {
      v28 = *(&v46 + 1);
      v29 = sub_245748810();
      (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v2;
      v30[5] = v28;

      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = sub_24572A644(0, 0, v27, &unk_24574AD10, v30);
    }
  }

  v31 = *(&v47 + 1);
  v32 = v48;
  *(v6 + 2) = v47;
  *(v6 + 3) = v32;
  *(v6 + 8) = v49;
  v33 = v46;
  *v6 = v45;
  *(v6 + 1) = v33;
  swift_storeEnumTagMultiPayload();
  if (v31)
  {
    v34 = v31;
    sub_245702EB4(&v45, v44);
    sub_2456FDBA8(v6, v44);

    sub_2457031A4(v34, v44);

    v35 = sub_2456FD810(v6);
    if (v35 != 2)
    {
      v36 = v35;
      v37 = sub_2456FD9DC(v6);
      if ((v38 & 1) == 0)
      {
        v39 = v37;

        [swift_unknownObjectRetain() processLivenessFrame:v34 withOptions:v36 & 0x10101 taOptions:v39];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(&v45, v44);
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F8214(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  v7 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v7;
  v23 = *(a1 + 64);
  if ((v20[0] & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertStartTime) = CACurrentMediaTime();
    [*(*(v1 + 648) + 624) pauseLiveness];
    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {

      sub_245725488(3, 0);
    }
  }

  v8 = *(&v21 + 1);
  v9 = *(a1 + 48);
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 3) = v9;
  *(v5 + 8) = *(a1 + 64);
  v10 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v10;
  swift_storeEnumTagMultiPayload();
  if (v8)
  {
    v11 = v8;
    sub_245702EB4(v20, v19);
    sub_2456FDBA8(v5, v19);

    sub_2457031A4(v11, v19);

    v12 = sub_2456FD810(v5);
    if (v12 != 2)
    {
      v13 = v12;
      v14 = sub_2456FD9DC(v5);
      if ((v15 & 1) == 0)
      {
        v16 = v14;

        [swift_unknownObjectRetain() processLivenessFrame:v11 withOptions:v13 & 0x10101 taOptions:v16];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_245702EB4(v20, v19);
  }

  return sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F848C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v23 = v9;
  v24 = v8;
  if ((v7 & 1) == 0)
  {
    v11 = *(v2 + 640);

    *(v11 + 112) = CACurrentMediaTime();

    [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) prepare];
    *(*(v2 + 640) + 184) = 1;
    memcpy(v25, (v2 + 64), sizeof(v25));
    v12 = sub_245720840();
    v9 = v23;
    v13 = 2;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    v14 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v14 = v13;
    *(v14 + 8) = 0;
  }

  *v6 = v7;
  *(v6 + 8) = v24;
  *(v6 + 24) = v9;
  v6[40] = v10;
  swift_storeEnumTagMultiPayload();
  v15 = v24;
  if (v24)
  {

    v16 = v15;
    sub_2456FDBA8(v6, v25);

    sub_2457031A4(v16, v25);

    v17 = sub_2456FD810(v6);
    if (v17 != 2)
    {
      v18 = v17;
      v19 = sub_2456FD9DC(v6);
      if ((v20 & 1) == 0)
      {
        v21 = v19;

        [swift_unknownObjectRetain() processLivenessFrame:v16 withOptions:v18 & 0x10101 taOptions:v21];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }

  return sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
}

uint64_t sub_2456F86E4(char a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_245747CF0();

    v9 = sub_245747E50();
    v10 = sub_245748910();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = sub_2456F3D98();

      _os_log_impl(&dword_2456DE000, v9, v10, "Liveness: Capturing selfie with remaining attempts: %ld", v11, 0xCu);
      MEMORY[0x245D712D0](v11, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = 11;
    v12 = [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxMonitor) luxLevel];
    v13 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues;
    v14 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v13) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_245702574(0, *(v14 + 2) + 1, 1, v14);
      *(v2 + v13) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_245702574((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    *&v14[8 * v17 + 32] = v12;
    *(v2 + v13) = v14;
    result = sub_2456F3D98();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
      *v18 = result - 1;
      *(v18 + 8) = 0;
      [*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];

      v19 = sub_2456F3E04();
      sub_2456E9D64(v19, 0);
    }
  }

  return result;
}

void sub_2456F897C(unsigned __int8 *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason) = v3;
    [*(*(v2 + 648) + 624) pauseLiveness];
    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      sub_245748870();
    }

    *(*(v2 + 640) + 152) = 0;

    sub_2456E9720();
    sub_2456E9A90();

    if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
    {

      sub_245725488(3, 0);
    }

    switch(v3)
    {
      case 5:
        sub_24571E0FC(*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState));
        v4 = 2;
        break;
      case 3:
        v4 = 1;
        break;
      case 2:
        v4 = 0;
        break;
      default:
        return;
    }

    if ((*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture + 8) & 1) == 0)
    {
      v5 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture);

      sub_24571E30C(v4, v5);
    }
  }
}

uint64_t sub_2456F8B34(char a1)
{
  *(v2 + 3608) = v1;
  *(v2 + 3800) = a1;
  *(v2 + 3616) = type metadata accessor for RGBLivenessModel.Event(0);
  *(v2 + 3624) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  *(v2 + 3632) = v3;
  *(v2 + 3640) = *(v3 - 8);
  *(v2 + 3648) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  *(v2 + 3656) = v4;
  *(v2 + 3664) = *(v4 - 8);
  *(v2 + 3672) = swift_task_alloc();
  v5 = sub_245747E60();
  *(v2 + 3680) = v5;
  *(v2 + 3688) = *(v5 - 8);
  *(v2 + 3696) = swift_task_alloc();
  v6 = sub_245747DC0();
  *(v2 + 3704) = v6;
  *(v2 + 3712) = *(v6 - 8);
  *(v2 + 3720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  *(v2 + 3728) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456F8D8C, 0, 0);
}

uint64_t sub_2456F8D8C()
{
  v30 = v0;
  if ((*(v0 + 3800) & 1) == 0)
  {
    v1 = *(v0 + 3608);
    swift_beginAccess();
    sub_245703098(v1 + 24, v0 + 3512, &qword_27EE249F8, &qword_24574AC30);
    if (*(v0 + 3536))
    {
      sub_245703100((v0 + 3512), v0 + 3472);
      *(v0 + 3736) = *__swift_project_boxed_opaque_existential_1((v0 + 3472), *(v0 + 3496));
      sub_2457487F0();
      *(v0 + 3744) = sub_2457487E0();
      v3 = sub_2457487C0();
      *(v0 + 3752) = v3;
      *(v0 + 3760) = v2;

      return MEMORY[0x2822009F8](sub_2456F9234, v3, v2);
    }

    v4 = *(v0 + 3720);
    v5 = *(v0 + 3712);
    v6 = *(v0 + 3704);
    sub_2456EEF50(v0 + 3512, &qword_27EE249F8, &qword_24574AC30);
    (*(v5 + 104))(v4, *MEMORY[0x277CFF920], v6);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v7 = swift_allocError();
    sub_245747DE0();
    swift_willThrow();
    sub_245747CF0();
    v8 = v7;
    v9 = sub_245747E50();
    v10 = sub_245748920();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 3696);
    v13 = *(v0 + 3688);
    v14 = *(v0 + 3680);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_245748C20();
      v19 = sub_24572EDDC(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2456DE000, v9, v10, "Error retrieving Liveness config for next attempt: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x245D712D0](v16, -1, -1);
      MEMORY[0x245D712D0](v15, -1, -1);

      (*(v13 + 8))(v12, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v20 = *(v0 + 3672);
    v21 = *(v0 + 3664);
    v22 = *(v0 + 3656);
    v23 = *(v0 + 3648);
    v24 = *(v0 + 3640);
    v25 = *(v0 + 3632);
    v26 = *(v0 + 3624);
    (*(v24 + 16))(v23, *(v0 + 3608) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v25);
    *v26 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2456F9234()
{
  v1 = *(*(v0 + 3736) + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 192) + **(v1 + 192));
  v3 = swift_task_alloc();
  *(v0 + 3768) = v3;
  *v3 = v0;
  v3[1] = sub_2456F936C;

  return v5(v0 + 16, ObjectType, v1);
}

uint64_t sub_2456F936C()
{
  v2 = *v1;
  *(*v1 + 3776) = v0;

  v3 = *(v2 + 3760);
  v4 = *(v2 + 3752);
  if (v0)
  {
    v5 = sub_2456F9924;
  }

  else
  {
    v5 = sub_2456F9488;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2456F9488()
{

  return MEMORY[0x2822009F8](sub_2456F94F0, 0, 0);
}

uint64_t sub_2456F94F0()
{
  v1 = v0[451];
  memcpy(v0 + 218, (v1 + 64), 0x240uLL);
  memcpy((v1 + 64), v0 + 2, 0x240uLL);
  sub_2456F38F0((v0 + 218));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 434);
  v0[473] = *(v1 + 648);
  memcpy(v0 + 146, (v1 + 64), 0x240uLL);
  memcpy(v0 + 290, (v1 + 64), 0x240uLL);

  sub_2456F3944((v0 + 146), (v0 + 362));
  v2 = swift_task_alloc();
  v0[474] = v2;
  *v2 = v0;
  v2[1] = sub_2456F95F4;

  return sub_2456F0E84(v0 + 290);
}

uint64_t sub_2456F95F4()
{
  v1 = *v0;

  memcpy((v1 + 592), (v1 + 2320), 0x240uLL);
  sub_2456F38F0(v1 + 592);

  return MEMORY[0x2822009F8](sub_2456F9724, 0, 0);
}

uint64_t sub_2456F9724()
{
  v1 = v0[451];
  sub_2456F9E70();
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  v3 = v0[466];
  v4 = v0[451];
  v5 = sub_245748810();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  *(v1 + v2) = sub_24572A644(0, 0, v3, &unk_24574AD18, v6);

  sub_2456E9748(0, 0);

  if (*(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession))
  {

    sub_245725488(4, 0);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2456F9924()
{

  return MEMORY[0x2822009F8](sub_2456F998C, 0, 0);
}

uint64_t sub_2456F998C()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 434);
  v1 = v0[472];
  sub_245747CF0();
  v2 = v1;
  v3 = sub_245747E50();
  v4 = sub_245748920();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = v0[462];
    v5 = v0[461];
    v6 = v0[460];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_245748C20();
    v11 = sub_24572EDDC(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2456DE000, v3, v4, "Error retrieving Liveness config for next attempt: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245D712D0](v8, -1, -1);
    MEMORY[0x245D712D0](v7, -1, -1);

    (*(v5 + 8))(v24, v6);
  }

  else
  {
    v12 = v0[462];
    v13 = v0[461];
    v14 = v0[460];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[459];
  v16 = v0[458];
  v17 = v0[457];
  v18 = v0[456];
  v19 = v0[455];
  v20 = v0[454];
  v21 = v0[453];
  (*(v19 + 16))(v18, v0[451] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v20);
  *v21 = 10;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2456F9C4C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;

  sub_2456E91C0();

  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver:v2 name:*MEMORY[0x277D76660] object:0];

  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  v11[1] = a1;
  v9 = a1;
  sub_2457488B0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2456F9E70()
{
  v1 = v0;
  type metadata accessor for AudioSession();
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_audioSession) = sub_245725B08();

  v2 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsPreambleStartTime;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsMonitoringStartTime) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues) = MEMORY[0x277D84F90];

  memcpy(v8, (v0 + 64), sizeof(v8));
  v4 = sub_245720528();
  v5 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts;
  *v5 = v4;
  *(v5 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasPresentedFirstGesture) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) = 0;
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  *(v1 + v6) = v3;
}

uint64_t sub_2456F9F98(void *a1, char a2, int a3)
{
  v4 = v3;
  v50 = a3;
  v47 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v44 = *(v11 - 8);
  v45 = v11;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v43 - v13;
  if (!a1)
  {
    return result;
  }

  [a1 time];
  v14 = v53[0];
  v15 = v53[1];
  v16 = v53[2];
  v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
  v18 = *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v17) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_245702458(0, *(v18 + 2) + 1, 1, v18);
    *(v4 + v17) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_245702458((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[24 * v21];
  *(v22 + 4) = v14;
  *(v22 + 5) = v15;
  *(v22 + 6) = v16;
  *(v4 + v17) = v18;
  v23 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames;
  v24 = *(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v23) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_245702364(0, *(v24 + 2) + 1, 1, v24);
    *(v4 + v23) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_245702364((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v24[v27 + 32] = a2 & 1;
  *(v4 + v23) = v24;
  v28 = *(*(v4 + v17) + 16);
  memcpy(v53, (v4 + 64), sizeof(v53));
  result = sub_245722114();
  v29 = v28 - result / 2;
  if (__OFSUB__(v28, result / 2))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 < 1)
  {
    return result;
  }

  if (*(*(v4 + v17) + 16) < v29)
  {
    goto LABEL_34;
  }

  result = sub_245702C64(0, v29, sub_245702458, sub_245702B08);
  if (*(*(v4 + v23) + 16) < v29)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  sub_245702C64(0, v29, sub_245702364, sub_245702BC0);
  v30 = *(v4 + v23);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = MEMORY[0x277D84F90];
    v33 = 32;
    do
    {
      if (*(v30 + v33) == 1)
      {
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v32;
        if ((v36 & 1) == 0)
        {
          sub_2457059BC(0, *(v32 + 16) + 1, 1);
          v32 = v52;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2457059BC((v34 > 1), v35 + 1, 1);
          v32 = v52;
        }

        *(v32 + 16) = v35 + 1;
        *(v32 + v35 + 32) = 1;
      }

      ++v33;
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v37 = *(v32 + 16);

  memcpy(v53, (v4 + 64), sizeof(v53));
  v38 = sub_245722114();
  memcpy(v51, (v4 + 64), sizeof(v51));
  result = sub_2457223E8();
  v39 = v38 - result;
  if (__OFSUB__(v38, result))
  {
    goto LABEL_36;
  }

  if (v50)
  {
    if (v39 >= v37)
    {
      return result;
    }

    v41 = v48;
    v40 = v49;
    (*(v48 + 16))(v10, v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v49);
  }

  else
  {
    if (v39 < v37)
    {
      return result;
    }

    [*(v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hapticGenerator) impactOccurred];
    v41 = v48;
    v40 = v49;
    (*(v48 + 16))(v10, v4 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v49);
  }

  swift_storeEnumTagMultiPayload();
  v42 = v43;
  sub_2457488A0();
  (*(v41 + 8))(v10, v40);
  return (*(v44 + 8))(v42, v45);
}

uint64_t sub_2456FA544(uint64_t result, char a2)
{
  if (result)
  {
    v3 = v2;
    [result time];
    v5 = __dst[0];
    v6 = __dst[1];
    v7 = __dst[2];
    v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
    v9 = *(*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) + 16);
    memcpy(__dst, (v2 + 64), sizeof(__dst));
    if (v9 < sub_245722114() || (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) & 1) != 0)
    {
      v10 = *(*(v2 + v8) + 16);
      memcpy(__dst, (v2 + 64), sizeof(__dst));
      result = sub_245722114();
      if (v10 < result)
      {
        v11 = *(v2 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v8) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_245702458(0, *(v11 + 2) + 1, 1, v11);
          *(v3 + v8) = v11;
        }

        v13 = *(v11 + 2);
        v14 = *(v11 + 3);
        v15 = v13 + 1;
        if (v13 >= v14 >> 1)
        {
          v25 = v13 + 1;
          v22 = v11;
          v23 = *(v11 + 2);
          v24 = sub_245702458((v14 > 1), v13 + 1, 1, v22);
          v13 = v23;
          v15 = v25;
          v11 = v24;
        }

        *(v11 + 2) = v15;
        v16 = &v11[24 * v13];
        *(v16 + 4) = v5;
        *(v16 + 5) = v6;
        *(v16 + 6) = v7;
        *(v3 + v8) = v11;
        v17 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames;
        v18 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v18;
        if ((result & 1) == 0)
        {
          result = sub_245702364(0, *(v18 + 16) + 1, 1, v18);
          v18 = result;
          *(v3 + v17) = result;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = sub_245702364((v19 > 1), v20 + 1, 1, v18);
          v21 = v20 + 1;
          v18 = result;
        }

        *(v18 + 16) = v21;
        *(v18 + v20 + 32) = a2 & 1;
        *(v3 + v17) = v18;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_isStoppingLiveRecording) = 1;

      sub_2456E9A1C();
    }
  }

  return result;
}

uint64_t sub_2456FA788(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for RGBLivenessModel.Event(0);
  v2[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_245747E60();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_245747C30();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FA9F4, 0, 0);
}

uint64_t sub_2456FA9F4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_245703098(v0[5], v3, &qword_27EE244D0, &unk_245749FF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2456EEF50(v0[20], &qword_27EE244D0, &unk_245749FF0);
    sub_245747CF0();
    v4 = sub_245747E50();
    v5 = sub_245748920();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2456DE000, v4, v5, "Tried to confirm LivePhoto but videoURL is missing.", v6, 2u);
      MEMORY[0x245D712D0](v6, -1, -1);
    }

    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    v10 = v0[13];
    v48 = v0[14];
    v50 = v0[12];
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v4;
    v16 = v0[6];

    (*(v8 + 8))(v7, v9);
    (*(v12 + 16))(v11, v16 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v13);
    *v14 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v48, v50);
LABEL_12:

    v44 = v0[1];

    return v44();
  }

  v17 = v0[6];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  v18 = *(*(v17 + 640) + 192);
  v0[24] = v18;
  if (!v18)
  {
    sub_245747CF0();
    v31 = sub_245747E50();
    v32 = sub_245748920();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2456DE000, v31, v32, "Tried to confirm LivePhoto but photo is missing.", v33, 2u);
      MEMORY[0x245D712D0](v33, -1, -1);
    }

    v49 = v0[21];
    v51 = v0[23];
    v34 = v0[18];
    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[13];
    v38 = v0[11];
    v46 = v0[12];
    v47 = v0[22];
    v40 = v0[9];
    v39 = v0[10];
    v41 = v0[8];
    v45 = v0[14];
    v42 = v31;
    v43 = v0[6];

    (*(v35 + 8))(v34, v36);
    (*(v39 + 16))(v38, v43 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v40);
    *v41 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v45, v46);
    (*(v47 + 8))(v51, v49);
    goto LABEL_12;
  }

  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  v22 = v0[19];
  v23 = v0[6];
  v0[25] = *(v23 + 648);
  v24 = *(v23 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v0[26] = v24;
  v25 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v26 = *(v23 + v25);
  v0[27] = v26;
  (*(v20 + 16))(v22, v19, v21);
  (*(v20 + 56))(v22, 0, 1, v21);
  v27 = v18;

  v28 = swift_task_alloc();
  v0[28] = v28;
  *v28 = v0;
  v28[1] = sub_2456FAF28;
  v29 = v0[19];

  return sub_2456F11D4(v27, v24, v26, v29);
}

uint64_t sub_2456FAF28()
{
  v1 = *(*v0 + 152);

  sub_2456EEF50(v1, &qword_27EE244D0, &unk_245749FF0);

  return MEMORY[0x2822009F8](sub_2456FB0AC, 0, 0);
}

uint64_t sub_2456FB0AC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2456FB194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  v9 = (v2 + 64);
  if (*(v2 + 16) == 1)
  {
    memcpy(v18, v9, sizeof(v18));
    v10 = sub_2457210B0();
  }

  else
  {
    memcpy(v18, v9, sizeof(v18));
    v10 = sub_24572135C();
  }

  v11 = v10;
  v12 = (v2 + 64);
  if (*(v2 + 16) == 1)
  {
    memcpy(v18, v12, sizeof(v18));
    v13 = sub_245721608();
  }

  else
  {
    memcpy(v18, v12, sizeof(v18));
    v13 = sub_2457218E0();
  }

  if (a2 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_245748810();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v3;
  v16[6] = a1;

  *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = sub_24572A644(0, 0, v8, &unk_24574AD00, v16);
}

uint64_t sub_2456FB34C()
{
  v1[53] = v0;
  v1[54] = type metadata accessor for RGBLivenessModel.Event(0);
  v1[55] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v1[56] = v2;
  v1[57] = *(v2 - 8);
  v1[58] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = sub_245747E60();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FB55C, 0, 0);
}

uint64_t sub_2456FB55C(uint64_t a1)
{
  v56 = v1;
  v2 = v1[53];
  v3 = *(v2 + 640);
  v4 = *(v3 + 192);
  v1[68] = v4;
  if (!v4)
  {
    sub_245747CF0();
    v25 = sub_245747E50();
    v26 = sub_245748920();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2456DE000, v25, v26, "Tried to complete liveness but selfie was missing.", v27, 2u);
      MEMORY[0x245D712D0](v27, -1, -1);
    }

    v29 = v1[63];
    v28 = v1[64];
    v30 = v1[62];
    v31 = v1[60];
    v52 = v1[61];
    v54 = v1[59];
    v33 = v1[57];
    v32 = v1[58];
    v35 = v1[55];
    v34 = v1[56];
    v36 = v25;
    v37 = v1[53];

    (*(v29 + 8))(v28, v30);
    (*(v33 + 16))(v32, v37 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v34);
    *v35 = 10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v52, v54);
    goto LABEL_12;
  }

  v5 = v1[67];
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v3 + v6, v5, &qword_27EE244D0, &unk_245749FF0);
  v7 = sub_245747C30();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  v9 = v1[67];
  if (v8 == 1)
  {
    v10 = v1[53];
    v11 = v4;
    sub_2456EEF50(v9, &qword_27EE244D0, &unk_245749FF0);
    memcpy(v1 + 2, (v10 + 136), 0x14DuLL);
    if (sub_2456F3C64((v1 + 2)) == 1 || *(v1[42] + 16) && (memcpy(__dst, v1 + 2, sizeof(__dst)), RGBLivenessActiveConfig.minRequiredGesturesCount.getter() > 0))
    {
      v53 = v11;
      sub_245747CF0();
      v12 = sub_245747E50();
      v13 = sub_245748920();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2456DE000, v12, v13, "Tried to complete liveness but video URL was missing.", v14, 2u);
        MEMORY[0x245D712D0](v14, -1, -1);
      }

      v15 = v1[65];
      v17 = v1[62];
      v16 = v1[63];
      v18 = v1[60];
      v19 = v1[58];
      v50 = v1[61];
      v51 = v1[59];
      v21 = v1[56];
      v20 = v1[57];
      v22 = v1[55];
      v23 = v12;
      v24 = v1[53];

      (*(v16 + 8))(v15, v17);
      (*(v20 + 16))(v19, v24 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v21);
      *v22 = 10;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();

      (*(v20 + 8))(v19, v21);
      (*(v18 + 8))(v50, v51);
LABEL_12:

      v38 = v1[1];

      return v38();
    }
  }

  else
  {
    v40 = v4;
    sub_2456EEF50(v9, &qword_27EE244D0, &unk_245749FF0);
  }

  v41 = v1[66];
  v42 = v1[53];
  v1[69] = *(v42 + 648);
  v43 = *(v42 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v1[70] = v43;
  v44 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v45 = *(v42 + v44);
  v1[71] = v45;
  v46 = *(v2 + 640);
  v47 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v46 + v47, v41, &qword_27EE244D0, &unk_245749FF0);

  v48 = swift_task_alloc();
  v1[72] = v48;
  *v48 = v1;
  v48[1] = sub_2456FBAF8;
  v49 = v1[66];

  return sub_2456F11D4(v4, v43, v45, v49);
}

uint64_t sub_2456FBAF8()
{
  v1 = *(*v0 + 528);

  sub_2456EEF50(v1, &qword_27EE244D0, &unk_245749FF0);

  return MEMORY[0x2822009F8](sub_2456FBC7C, 0, 0);
}

uint64_t sub_2456FBC7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456FBD3C()
{
  v1[53] = v0;
  v1[54] = type metadata accessor for RGBLivenessModel.Event(0);
  v1[55] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v1[56] = v2;
  v1[57] = *(v2 - 8);
  v1[58] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = sub_245747E60();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FBF40, 0, 0);
}

uint64_t sub_2456FBF40()
{
  v36 = v0;
  v1 = v0[66];
  v2 = v0[53];
  v3 = *(v2 + 640);
  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v3 + v4, v1, &qword_27EE244D0, &unk_245749FF0);
  v5 = sub_245747C30();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  v7 = v0[66];
  if (v6 == 1)
  {
    v8 = v0[53];
    sub_2456EEF50(v7, &qword_27EE244D0, &unk_245749FF0);
    memcpy(v0 + 2, (v8 + 136), 0x14DuLL);
    if (sub_2456F3C64((v0 + 2)) == 1 || *(v0[42] + 16) && (memcpy(__dst, v0 + 2, sizeof(__dst)), RGBLivenessActiveConfig.minRequiredGesturesCount.getter() > 0))
    {
      sub_245747CF0();
      v9 = sub_245747E50();
      v10 = sub_245748920();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2456DE000, v9, v10, "Tried to complete liveness without selfie but videoURL is missing.", v11, 2u);
        MEMORY[0x245D712D0](v11, -1, -1);
      }

      v13 = v0[63];
      v12 = v0[64];
      v14 = v0[62];
      v15 = v0[60];
      v33 = v0[61];
      v34 = v0[59];
      v17 = v0[57];
      v16 = v0[58];
      v19 = v0[55];
      v18 = v0[56];
      v20 = v9;
      v21 = v0[53];

      (*(v13 + 8))(v12, v14);
      (*(v17 + 16))(v16, v21 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v18);
      *v19 = 10;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v33, v34);

      v22 = v0[1];

      return v22();
    }
  }

  else
  {
    sub_2456EEF50(v7, &qword_27EE244D0, &unk_245749FF0);
  }

  v24 = v0[65];
  v25 = v0[53];
  v0[67] = *(v25 + 648);
  v26 = *(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v0[68] = v26;
  v27 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v28 = *(v25 + v27);
  v0[69] = v28;
  v29 = *(v2 + 640);
  v30 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v29 + v30, v24, &qword_27EE244D0, &unk_245749FF0);

  v31 = swift_task_alloc();
  v0[70] = v31;
  *v31 = v0;
  v31[1] = sub_2456FC360;
  v32 = v0[65];

  return sub_2456F2694(v26, v28, v32);
}

uint64_t sub_2456FC360()
{
  v1 = *(*v0 + 520);
  v2 = *v0;

  sub_2456EEF50(v1, &qword_27EE244D0, &unk_245749FF0);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_2456FC580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for RGBLivenessModel.Event(0);
  v4[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_245748B30();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FC740, 0, 0);
}

uint64_t sub_2456FC740()
{
  v8 = v0;
  memcpy(__dst, (*(v0 + 16) + 64), sizeof(__dst));
  v1 = sub_245720D9C();
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  sub_245748BF0();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_2456FC85C;

  return sub_24572E84C(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_2456FC85C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2456FCB24;
  }

  else
  {
    v5 = sub_2456FC9CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456FC9CC()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    (*(v6 + 16))(v3, v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  *(v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2456FCB24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456FCBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for RGBLivenessModel.Event(0);
  v6[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_245748B30();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FCD78, 0, 0);
}

uint64_t sub_2456FCD78()
{
  v1 = *(v0 + 16);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  sub_245748BF0();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_2456FCE6C;

  return sub_24572E84C(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_2456FCE6C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2456FD144;
  }

  else
  {
    v5 = sub_2456FCFDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456FCFDC()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[11];
    v1 = v0[12];
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[4];
    *(v8 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 0;
    (*(v6 + 16))(v3, v8 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = v9;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  *(v0[3] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2456FD144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456FD1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for RGBLivenessModel.Event(0);
  v5[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_245748B30();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FD394, 0, 0);
}

uint64_t sub_2456FD394()
{
  v8 = v0;
  memcpy(__dst, (*(v0 + 16) + 64), sizeof(__dst));
  v1 = sub_245721BB8();
  v2 = 1000000000000000 * v1;
  v3 = (v1 * 0x38D7EA4C68000uLL) >> 64;
  v4 = (v1 >> 63) & 0xFFFC72815B398000;
  sub_245748BF0();
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_2456FD4B4;

  return sub_24572E84C(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_2456FD4B4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2456FD780;
  }

  else
  {
    v5 = sub_2456FD624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456FD624()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[3];
    (*(v6 + 16))(v3, v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = v8;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  *(v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_2456FD780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456FD810(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_245702DF0(a1, v5, type metadata accessor for RGBLivenessModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      memcpy(v9, (v1 + 64), sizeof(v9));
      sub_245721E64();
      v8 = PADClassifierFrameOptionsInit() & 0x10101;
      sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
      result = v8;
      break;
    case 5:
      goto LABEL_4;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
LABEL_4:
      if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying))
      {
        memcpy(v9, (v1 + 64), sizeof(v9));
        sub_245721E64();
      }

      result = PADClassifierFrameOptionsInit() & 0x10101;
      break;
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 20:
      return result;
    default:
      sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
      result = 2;
      break;
  }

  return result;
}

uint64_t sub_2456FD9DC(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) != 3 || (v6 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter), v8 = __OFSUB__(v6, 1), v7 = v6 - 1 < 0, v9 = v6 - 1, v7 ^ v8))
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = v9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter);
  v8 = __OFSUB__(v10, 1);
  v7 = v10 - 1 < 0;
  v11 = v10 - 1;
  if (v7 != v8)
  {
    sub_245702DF0(a1, v5, type metadata accessor for RGBLivenessModel.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = 0;
    switch(EnumCaseMultiPayload)
    {
      case 2:
      case 3:
      case 4:
      case 10:
      case 13:
      case 15:
      case 19:
        sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
        return 0;
      case 5:
        goto LABEL_11;
      case 6:
      case 7:
      case 8:
      case 9:
      case 11:
        sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
LABEL_11:
        result = 1;
        break;
      case 12:
      case 14:
      case 16:
      case 17:
      case 18:
      case 20:
        return result;
      default:
        sub_2457029F4(v5, type metadata accessor for RGBLivenessModel.State);
        return 2;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = v11;
    return 2;
  }

  return result;
}

uint64_t sub_2456FDBA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245702DF0(a1, v6, type metadata accessor for RGBLivenessModel.State);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v8 = 6;
      goto LABEL_11;
    case 2:
    case 3:
    case 15:
    case 19:
      result = sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_5;
    case 4:
      result = sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      *a2 = 1;
      return result;
    case 5:
      goto LABEL_3;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      result = sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
LABEL_3:
      *a2 = 2;
      break;
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 20:
LABEL_5:
      *a2 = 0;
      break;
    case 13:
      result = sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      *a2 = 3;
      break;
    default:
      v8 = 5;
LABEL_11:
      *a2 = v8;
      result = sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      break;
  }

  return result;
}