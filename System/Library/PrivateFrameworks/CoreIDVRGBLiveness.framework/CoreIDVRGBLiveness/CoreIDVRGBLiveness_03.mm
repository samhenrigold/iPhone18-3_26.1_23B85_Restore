uint64_t RGBLivenessActiveConfig.gestureSkipSoftTimeout.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureSkipSoftTimeout.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipSoftTimeout.getter();
  return sub_245733220;
}

void *sub_245733220(void *result)
{
  v1 = result[1];
  *(v1 + 112) = *result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipSoftAccessible.setter(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureSkipSoftAccessible.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipSoftAccessible.getter();
  return sub_2457332A8;
}

void *sub_2457332A8(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipHardTimeout.setter(uint64_t result)
{
  *(v1 + 144) = result;
  *(v1 + 152) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureSkipHardTimeout.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipHardTimeout.getter();
  return sub_245733330;
}

void *sub_245733330(void *result)
{
  v1 = result[1];
  *(v1 + 144) = *result;
  *(v1 + 152) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureSkipHardAccessible.setter(uint64_t result)
{
  *(v1 + 160) = result;
  *(v1 + 168) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureSkipHardAccessible.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureSkipHardAccessible.getter();
  return sub_2457333B8;
}

void *sub_2457333B8(void *result)
{
  v1 = result[1];
  *(v1 + 160) = *result;
  *(v1 + 168) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.maxRetakeCount.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.maxRetakeCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.maxRetakeCount.getter();
  *(a1 + 8) = 0;
  return sub_245733448;
}

uint64_t sub_245733448(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 192) = *result;
  *(v1 + 200) = v2;
  return result;
}

uint64_t RGBLivenessActiveConfig.sessionTimeout.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 184) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.sessionTimeout.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.sessionTimeout.getter();
  return sub_2457334D8;
}

void *sub_2457334D8(void *result)
{
  v1 = result[1];
  *(v1 + 176) = *result;
  *(v1 + 184) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.faceOutOfBoundFrames.setter(uint64_t result)
{
  *(v1 + 208) = result;
  *(v1 + 216) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.faceOutOfBoundFrames.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.faceOutOfBoundFrames.getter();
  return sub_245733560;
}

void *sub_245733560(void *result)
{
  v1 = result[1];
  *(v1 + 208) = *result;
  *(v1 + 216) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureCompletionDelay.setter(uint64_t result)
{
  *(v1 + 224) = result;
  *(v1 + 232) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureCompletionDelay.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureCompletionDelay.getter();
  return sub_2457335E8;
}

void *sub_2457335E8(void *result)
{
  v1 = result[1];
  *(v1 + 224) = *result;
  *(v1 + 232) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialVideoDelay.setter(uint64_t result)
{
  *(v1 + 240) = result;
  *(v1 + 248) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.tutorialVideoDelay.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialVideoDelay.getter();
  return sub_245733670;
}

void *sub_245733670(void *result)
{
  v1 = result[1];
  *(v1 + 240) = *result;
  *(v1 + 248) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialVideoDuration.setter(uint64_t result)
{
  *(v1 + 256) = result;
  *(v1 + 264) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.tutorialVideoDuration.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialVideoDuration.getter();
  return sub_2457336F8;
}

void *sub_2457336F8(void *result)
{
  v1 = result[1];
  *(v1 + 256) = *result;
  *(v1 + 264) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.tutorialResumeDelay.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 280) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.tutorialResumeDelay.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.tutorialResumeDelay.getter();
  return sub_245733780;
}

void *sub_245733780(void *result)
{
  v1 = result[1];
  *(v1 + 272) = *result;
  *(v1 + 280) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.gestureDetectedSuccessDuration.setter(uint64_t result)
{
  *(v1 + 288) = result;
  *(v1 + 296) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.gestureDetectedSuccessDuration.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.gestureDetectedSuccessDuration.getter();
  return sub_245733808;
}

void *sub_245733808(void *result)
{
  v1 = result[1];
  *(v1 + 288) = *result;
  *(v1 + 296) = 0;
  return result;
}

uint64_t RGBLivenessActiveConfig.lastGestureExtraFrameDuration.setter(uint64_t result)
{
  *(v1 + 304) = result;
  *(v1 + 312) = 0;
  return result;
}

uint64_t (*RGBLivenessActiveConfig.lastGestureExtraFrameDuration.modify(uint64_t *a1))()
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = RGBLivenessActiveConfig.lastGestureExtraFrameDuration.getter();
  return sub_245733890;
}

void *sub_245733890(void *result)
{
  v1 = result[1];
  *(v1 + 304) = *result;
  *(v1 + 312) = 0;
  return result;
}

double RGBLivenessActiveConfig.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_24574C4A0;
  *(a1 + 16) = xmmword_24574C4B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 30;
  *(a1 + 56) = xmmword_24574C4C0;
  *(a1 + 72) = xmmword_24574C4D0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = MEMORY[0x277D84F90];
  result = 7.29112205e-304;
  *(a1 + 328) = 0x1000000;
  *(a1 + 332) = 1;
  return result;
}

uint64_t RGBLivenessPassiveConfig.maxRetakeCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t (*RGBLivenessPassiveConfig.maxRetakeCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = RGBLivenessPassiveConfig.maxRetakeCount.getter();
  *(a1 + 8) = 0;
  return sub_2457342F4;
}

uint64_t RGBLivenessPassiveConfig.sessionTimeout.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 64) = 0;
  return result;
}

void *(*RGBLivenessPassiveConfig.sessionTimeout.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = RGBLivenessPassiveConfig.sessionTimeout.getter();
  return sub_2457342F0;
}

uint64_t RGBLivenessPassiveConfig.faceOutOfBoundFrames.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t (*RGBLivenessPassiveConfig.faceOutOfBoundFrames.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = RGBLivenessPassiveConfig.faceOutOfBoundFrames.getter();
  return sub_245733BF8;
}

void *sub_245733BF8(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t RGBLivenessPassiveConfig.totalFrameCount.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t (*RGBLivenessPassiveConfig.totalFrameCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = RGBLivenessPassiveConfig.totalFrameCount.getter();
  return sub_245733C90;
}

void *sub_245733C90(void *result)
{
  v1 = result[1];
  *(v1 + 88) = *result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t RGBLivenessPassiveConfig.minimumValidFrameCount.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 112) = 0;
  return result;
}

uint64_t (*RGBLivenessPassiveConfig.minimumValidFrameCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = RGBLivenessPassiveConfig.minimumValidFrameCount.getter();
  return sub_245733D28;
}

void *sub_245733D28(void *result)
{
  v1 = result[1];
  *(v1 + 104) = *result;
  *(v1 + 112) = 0;
  return result;
}

void __swiftcall RGBLivenessPassiveConfig.init()(CoreIDVRGBLiveness::RGBLivenessPassiveConfig *__return_ptr retstr)
{
  *&retstr->defaultMaxRetakeCount = xmmword_24574C4E0;
  *&retstr->defaultFaceOutOfBoundFrames = xmmword_24574C4F0;
  *&retstr->defaultMinimumValidFrameCount = xmmword_24574C500;
  retstr->_maxRetakeCount.is_nil = 1;
  *(&retstr->_sessionTimeout.value + 7) = 0;
  BYTE6(retstr->_faceOutOfBoundFrames.value) = 1;
  *(&retstr->_totalFrameCount.value + 5) = 0;
  BYTE4(retstr->_minimumValidFrameCount.value) = 1;
  *&retstr->enableAutoFlash = 0;
  LOBYTE(retstr[1].defaultMaxRetakeCount) = 1;
  retstr[1].defaultSessionTimeout = 0;
  LOBYTE(retstr[1].defaultFaceOutOfBoundFrames) = 1;
  *(&retstr[1].defaultFaceOutOfBoundFrames + 1) = 0x1000000;
  BYTE5(retstr[1].defaultFaceOutOfBoundFrames) = 0;
}

uint64_t sub_245733E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25158, &qword_24574C510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245733F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25158, &qword_24574C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_245733F74(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 317) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18CoreIDVRGBLiveness23RGBLivenessActiveConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_245733FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 576))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 552);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_245734014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 568) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 576) = 1;
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
      *(result + 552) = (a2 - 1);
      return result;
    }

    *(result + 576) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245734104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 333))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 320);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24573414C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 332) = 0;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 333) = 1;
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
      *(result + 320) = (a2 - 1);
      return result;
    }

    *(result + 333) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_245734224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 118))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_245734278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 118) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 118) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t RGBLivenessError.hashValue.getter()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

unint64_t sub_245734384()
{
  result = qword_27EE25160;
  if (!qword_27EE25160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CoreIDVRGBLiveness::RGBLivenessImageQualityGuidance __swiftcall RGBLivenessImageQualityGuidance.init(text:isActionable:flashROI:startOutOfBoundsTimer:startFaceTooSmallTimer:turnOnFlash:blockLiveness:disableStart:isInvalidLivePhotoFrame:)(Swift::String text, Swift::Bool isActionable, Swift::Bool flashROI, Swift::Bool startOutOfBoundsTimer, Swift::Bool startFaceTooSmallTimer, Swift::Bool turnOnFlash, Swift::Bool blockLiveness, Swift::Bool disableStart, Swift::Bool isInvalidLivePhotoFrame)
{
  *v9 = text;
  *(v9 + 16) = isActionable;
  *(v9 + 19) = flashROI;
  *(v9 + 20) = startOutOfBoundsTimer;
  *(v9 + 21) = startFaceTooSmallTimer;
  *(v9 + 22) = turnOnFlash;
  *(v9 + 17) = blockLiveness;
  *(v9 + 18) = disableStart;
  *(v9 + 23) = isInvalidLivePhotoFrame;
  result.text = text;
  result.isActionable = isActionable;
  return result;
}

CoreIDVRGBLiveness::RGBLivenessImageType_optional __swiftcall RGBLivenessImageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if ((rawValue + 1) < 7)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

void RGBLivenessImageQualityOptions.roi.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t RGBLivenessImageQualityOptions.faces.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t RGBLivenessImageQualityOptions.captureTime.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t RGBLivenessImageQualityGuidance.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RGBLivenessImageQualityGuidance.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_24573493C()
{
  *&xmmword_27EE25168 = 0;
  *(&xmmword_27EE25168 + 1) = 0xE000000000000000;
  LOBYTE(qword_27EE25178) = 1;
  *(&qword_27EE25178 + 1) = 0;
  HIDWORD(qword_27EE25178) = 0;
}

uint64_t static RGBLivenessImageQualityGuidance.pass.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25168;
  v6 = qword_27EE25178;
  v2 = qword_27EE25178;
  *a1 = xmmword_27EE25168;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t static RGBLivenessImageQualityGuidance.pass.setter(uint64_t a1)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27EE25168;
  v4 = qword_27EE25178;
  xmmword_27EE25168 = *a1;
  qword_27EE25178 = *(a1 + 16);
  return sub_245705A50(&v3);
}

uint64_t (*static RGBLivenessImageQualityGuidance.pass.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_245734B1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25168;
  v6 = qword_27EE25178;
  v2 = qword_27EE25178;
  *a1 = xmmword_27EE25168;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t sub_245734BB4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_245702E58(&v2, &v4);
  if (qword_27EE24310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27EE25168;
  v5 = qword_27EE25178;
  xmmword_27EE25168 = v2;
  qword_27EE25178 = v3;
  return sub_245705A50(&v4);
}

void sub_245734C68()
{
  *&xmmword_27EE25180 = 0;
  *(&xmmword_27EE25180 + 1) = 0xE000000000000000;
  qword_27EE25190 = 0;
}

uint64_t static RGBLivenessImageQualityGuidance.noop.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25180;
  v6 = qword_27EE25190;
  v2 = qword_27EE25190;
  *a1 = xmmword_27EE25180;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t static RGBLivenessImageQualityGuidance.noop.setter(uint64_t a1)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27EE25180;
  v4 = qword_27EE25190;
  xmmword_27EE25180 = *a1;
  qword_27EE25190 = *(a1 + 16);
  return sub_245705A50(&v3);
}

uint64_t (*static RGBLivenessImageQualityGuidance.noop.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_245734E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = xmmword_27EE25180;
  v6 = qword_27EE25190;
  v2 = qword_27EE25190;
  *a1 = xmmword_27EE25180;
  *(a1 + 16) = v2;
  return sub_245702E58(&v5, &v4);
}

uint64_t sub_245734ED8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_245702E58(&v2, &v4);
  if (qword_27EE24318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27EE25180;
  v5 = qword_27EE25190;
  xmmword_27EE25180 = v2;
  qword_27EE25190 = v3;
  return sub_245705A50(&v4);
}

uint64_t RGBLivenessImageQualityGuidance.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v25 = *(v0 + 17);
  v26 = *(v0 + 18);
  v4 = *(v0 + 19);
  v5 = *(v0 + 20);
  v6 = *(v0 + 21);
  v7 = *(v0 + 22);
  v27 = *(v0 + 23);
  sub_245748AA0();
  MEMORY[0x245D70540](0x65636E6164697547, 0xEF203A7478657420);
  MEMORY[0x245D70540](v1, v2);
  MEMORY[0x245D70540](0x6F6974634173690ALL, 0xEF203A656C62616ELL);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v8, v9);

  MEMORY[0x245D70540](0x4F526873616C660ALL, 0xEB00000000203A49);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v10, v11);

  MEMORY[0x245D70540](0xD000000000000018, 0x800000024575BB40);
  if (v5)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v12, v13);

  MEMORY[0x245D70540](0xD000000000000019, 0x800000024575BB60);
  if (v6)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v14, v15);

  MEMORY[0x245D70540](0x466E4F6E7275740ALL, 0xEE00203A6873616CLL);
  if (v7)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v7)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v16, v17);

  MEMORY[0x245D70540](0xD000000000000010, 0x800000024575BB80);
  if (v25)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v25)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v18, v19);

  MEMORY[0x245D70540](0x656C62617369640ALL, 0xEF203A7472617453);
  if (v26)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v26)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v20, v21);

  MEMORY[0x245D70540](0xD00000000000001ALL, 0x800000024575BBA0);
  if (v27)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v27)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x245D70540](v22, v23);

  return 0;
}

unint64_t sub_2457352A0()
{
  result = qword_27EE25198;
  if (!qword_27EE25198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_245735464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2457354AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_245735524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24573556C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RGBLivenessResult.init(luxValues:glassesLabel:headgearLabel:faceHairLabel:ethnicityLabel:skintoneLabel:sexLabel:ageLabel:timestampsButtonPressed:timestampsID:assessmentID:assessmentLivePRD:assessmentFakePRD:assessmentsPRD:ignoredStitches:maxNccHigh:maxNccLow:assessmentTA:assessmentsTA:assessmentFAC:timestampsFAC:assessmentsFAC:gestureSequence:livenessLabel:videoURL:imageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v39 = type metadata accessor for RGBLivenessResult(0);
  v40 = *(v39 + 112);
  v41 = sub_245747C30();
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a16;
  *(a9 + 80) = a17;
  *(a9 + 96) = a18;
  *(a9 + 112) = a19;
  *(a9 + 128) = a20;
  *(a9 + 136) = a10;
  *(a9 + 140) = a11;
  *(a9 + 144) = a12;
  *(a9 + 152) = a21;
  *(a9 + 160) = a22;
  *(a9 + 168) = a13;
  *(a9 + 172) = a14;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24;
  *(a9 + 192) = a15;
  *(a9 + 200) = a25;
  *(a9 + 216) = a26;
  *(a9 + 224) = a27;
  result = sub_2456E729C(a28, a9 + v40);
  v43 = (a9 + *(v39 + 116));
  *v43 = a29;
  v43[1] = a30;
  return result;
}

uint64_t type metadata accessor for RGBLivenessResult(uint64_t a1)
{
  result = qword_27EE251A8;
  if (!qword_27EE251A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2457357D8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFF220]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setLivenessLabel_];

  sub_245736AB0();
  v3 = sub_245748790();
  [v1 setGestureSequence_];

  v4 = sub_245748790();
  [v1 setAssessmentsFAC_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C0, &qword_24574AA40);
  v5 = sub_245748790();
  [v1 setAssessmentsPRD_];

  v6 = sub_245748790();
  [v1 setAssessmentsTA_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248C8, &qword_24574AA48);
  v7 = sub_245748790();
  [v1 setTimestampsFAC_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
  v8 = sub_245748790();
  [v1 setTimestampsID_];

  v9 = sub_245748790();
  [v1 setTimestampsButtonPressed_];

  v10 = *(v0 + 192);
  v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v12) = v10;
  v13 = [v11 initWithFloat_];
  [v1 setAssessmentFAC_];

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setAssessmentTA_];

  v15 = *(v0 + 172);
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v17) = v15;
  v18 = [v16 initWithFloat_];
  [v1 setMaxNccLow_];

  v19 = *(v0 + 168);
  v20 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v21) = v19;
  v22 = [v20 initWithFloat_];
  [v1 setMaxNccHigh_];

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v1 setIgnoredStitches_];

  v24 = *(v0 + 144);
  v25 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v26) = v24;
  v27 = [v25 initWithFloat_];
  [v1 setAssessmentFakePRD_];

  v28 = *(v0 + 140);
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v30) = v28;
  v31 = [v29 initWithFloat_];
  [v1 setAssessmentLivePRD_];

  v32 = *(v0 + 136);
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v34) = v32;
  v35 = [v33 initWithFloat_];
  [v1 setAssessmentID_];

  v36 = sub_2457486C0();
  [v1 setAgeLabel_];

  v37 = sub_2457486C0();
  [v1 setSexLabel_];

  v38 = sub_2457486C0();
  [v1 setSkintoneLabel_];

  v39 = sub_2457486C0();
  [v1 setEthnicityLabel_];

  v40 = sub_2457486C0();
  [v1 setFaceHairLabel_];

  v41 = sub_2457486C0();
  [v1 setHeadgearLabel_];

  v42 = sub_2457486C0();
  [v1 setGlassesLabel_];

  return v1;
}

CoreIDVRGBLiveness::RGBLivenessLabel_optional __swiftcall RGBLivenessLabel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RGBLivenessResult.luxValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RGBLivenessResult.glassesLabel.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RGBLivenessResult.glassesLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RGBLivenessResult.headgearLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RGBLivenessResult.headgearLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RGBLivenessResult.faceHairLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RGBLivenessResult.faceHairLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RGBLivenessResult.ethnicityLabel.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RGBLivenessResult.ethnicityLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RGBLivenessResult.skintoneLabel.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t RGBLivenessResult.skintoneLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t RGBLivenessResult.sexLabel.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t RGBLivenessResult.sexLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t RGBLivenessResult.ageLabel.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t RGBLivenessResult.ageLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t RGBLivenessResult.timestampsButtonPressed.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t RGBLivenessResult.timestampsID.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsPRD.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsTA.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t RGBLivenessResult.timestampsFAC.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t RGBLivenessResult.assessmentsFAC.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t RGBLivenessResult.gestureSequence.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t RGBLivenessResult.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RGBLivenessResult(0) + 112);

  return sub_2456E7040(v3, a1);
}

uint64_t RGBLivenessResult.videoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RGBLivenessResult(0) + 112);

  return sub_2456E729C(a1, v3);
}

uint64_t RGBLivenessResult.imageData.getter()
{
  v1 = v0 + *(type metadata accessor for RGBLivenessResult(0) + 116);
  v2 = *v1;
  sub_245727A10(*v1, *(v1 + 8));
  return v2;
}

uint64_t RGBLivenessResult.imageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RGBLivenessResult(0) + 116);
  result = sub_245726BE0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

unint64_t sub_245736654()
{
  result = qword_27EE251A0;
  if (!qword_27EE251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE251A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_245736820(uint64_t a1)
{
  sub_245736A0C();
  if (v1 <= 0x3F)
  {
    sub_245736A5C(319, &qword_27EE251C0, &qword_27EE248B8, &qword_24574AA38);
    if (v2 <= 0x3F)
    {
      sub_245736A5C(319, &qword_27EE251C8, &qword_27EE248C0, &qword_24574AA40);
      if (v3 <= 0x3F)
      {
        sub_245736A5C(319, &qword_27EE251D0, &qword_27EE248C8, &qword_24574AA48);
        if (v4 <= 0x3F)
        {
          sub_245736AFC(319, &qword_27EE251D8, sub_245736AB0, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_245736AFC(319, &qword_27EE24368, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_245736A0C()
{
  if (!qword_27EE251B8)
  {
    v0 = sub_2457487B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE251B8);
    }
  }
}

void sub_245736A5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2457487B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_245736AB0()
{
  result = qword_27EE24880;
  if (!qword_27EE24880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE24880);
  }

  return result;
}

void sub_245736AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_245736B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_245703098(a3, v25 - v10, &qword_27EE24810, &qword_24574A910);
  v12 = sub_245748810();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2456EEF50(v11, &qword_27EE24810, &qword_24574A910);
  }

  else
  {
    sub_245748800();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2457487C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245748740() + 32;
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

      sub_2456EEF50(a3, &qword_27EE24810, &qword_24574A910);

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

  sub_2456EEF50(a3, &qword_27EE24810, &qword_24574A910);
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

uint64_t sub_245736E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t RGBLivenessSession.__allocating_init(_:qualityMonitor:delegate:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RGBLivenessSession.init(_:qualityMonitor:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t RGBLivenessSession.init(_:qualityMonitor:delegate:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E0, "T\x1B");
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  v46 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v43 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F0, &qword_24574CA98);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x28223BE20](v17);
  v58 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  v56 = *(v19 - 8);
  v57 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  memcpy(v65, a1, 0x240uLL);
  v22 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
  if (qword_27EE24170 != -1)
  {
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0);
  v24 = __swift_project_value_buffer(v23, qword_27EE258E8);
  v25 = v55;
  sub_245703098(v24, v55 + v22, &qword_27EE24BC8, &qword_24574CAB0);
  *(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) = 0;
  *(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  (*(v14 + 104))(v16, *MEMORY[0x277D85778], v13);
  v26 = v58;
  sub_245748820();
  (*(v14 + 8))(v16, v13);
  (*(v56 + 16))(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states, v21, v57);
  (*(v59 + 16))(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation, v26, v60);
  type metadata accessor for RGBLivenessModel.Event(0);
  v28 = v44;
  v27 = v45;
  (*(v44 + 104))(v7, *MEMORY[0x277D858A0], v45);
  v29 = v43;
  v30 = v47;
  sub_245748890();
  (*(v28 + 8))(v7, v27);
  v31 = v46;
  (*(v46 + 16))(v25 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events, v29, v54);
  memcpy(v64, v65, sizeof(v64));
  type metadata accessor for RGBLivenessViewConfig(0);
  swift_allocObject();
  sub_2456F3944(v65, v63);
  *(v25 + 16) = sub_245711028(v64);
  memcpy(v64, v65, sizeof(v64));
  v32 = v48;
  sub_245703098(v48, &v61, &qword_27EE25230, &qword_24574CAB8);
  v33 = v31;
  if (v62)
  {
    sub_245703100(&v61, v63);
  }

  else
  {
    v34 = type metadata accessor for ImageQualityAnalyzer();
    swift_allocObject();
    sub_245723D78();
    v63[3] = v34;
    v63[4] = &off_28587B288;
    v63[0] = v35;
    if (v62)
    {
      sub_2456EEF50(&v61, &qword_27EE25230, &qword_24574CAB8);
    }
  }

  v37 = v49;
  v36 = v50;
  v38 = v51;
  (*(v50 + 16))(v49, v30, v51);
  type metadata accessor for RGBLivenessController(0);
  swift_allocObject();
  v39 = sub_2456F3E7C(v64, v63, v37);
  sub_2456EEF50(v32, &qword_27EE25230, &qword_24574CAB8);
  (*(v36 + 8))(v30, v38);
  (*(v33 + 8))(v29, v54);
  (*(v59 + 8))(v58, v60);
  (*(v56 + 8))(v21, v57);
  result = v55;
  *(v55 + 24) = v39;
  v41 = (result + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate);
  v42 = v53;
  *v41 = v52;
  v41[1] = v42;
  return result;
}

Swift::Void __swiftcall RGBLivenessSession.setUp()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_245747E60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25240, &qword_24574CAC0);
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) && *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask))
  {
    sub_245747CF0();
    v17 = sub_245747E50();
    v18 = sub_245748920();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2456DE000, v17, v18, "Liveness: Session has already been set up and might be in progress.", v19, 2u);
      MEMORY[0x245D712D0](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v33 = v10;
    v20 = v1[3];
    v36[3] = v2;
    v36[4] = &off_28587BBD0;
    v36[0] = v1;
    swift_beginAccess();

    sub_245737C14(v36, v20 + 24);
    swift_endAccess();
    v21 = v1[2];
    v22 = sub_24573A5D4() & 1;
    v23 = *(v21 + 16);
    v34 = v9;
    if (v22 == v23)
    {
      *(v21 + 16) = v22;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v33 - 2) = v21;
      *(&v33 - 8) = v22;
      v36[0] = v21;
      sub_24571B9BC();
      sub_245747C90();
    }

    *(v20 + 16) = sub_24573A5D4() & 1;
    v25 = sub_245748810();
    v26 = *(*(v25 - 8) + 56);
    v26(v15, 1, 1, v25);
    sub_2457487F0();

    v27 = sub_2457487E0();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v1;
    *(v1 + v16) = sub_245736B60(0, 0, v15, &unk_24574CAF8, v28);

    v26(v15, 1, 1, v25);

    v30 = sub_2457487E0();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v1;
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = sub_245736B60(0, 0, v15, &unk_24574CB08, v31);

    v32 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
    swift_beginAccess();
    sub_24573ADFC(v1 + v32, v34, type metadata accessor for RGBLivenessModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
    sub_245748830();
    (*(v35 + 8))(v12, v33);
  }
}

uint64_t sub_245737C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE249F8, &qword_24574AC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245737C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2457487F0();
  v4[4] = sub_2457487E0();
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_245737D44;

  return sub_245737EF8(a4 + v6);
}

uint64_t sub_245737D44()
{

  v1 = sub_2457487C0();

  return MEMORY[0x2822009F8](sub_245737E80, v1, v0);
}

uint64_t sub_245737E80()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245737EF8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25240, &qword_24574CAC0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for RGBLivenessModel.State(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25280, &qword_24574CBB8);
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25288, &qword_24574CBC0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = sub_2457487F0();
  v2[23] = sub_2457487E0();
  v7 = sub_2457487C0();
  v2[24] = v7;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_24573813C, v7, v6);
}

uint64_t sub_24573813C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  sub_245748850();
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation;
  v0[26] = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm;
  v0[27] = v1;
  v2 = sub_2457487E0();
  v0[28] = v2;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_245738230;
  v4 = v0[18];
  v5 = v0[19];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v4, v2, v6, v5, v0 + 5);
}

uint64_t sub_245738230()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_2457389C4;
  }

  else
  {
    v5 = sub_245738354;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245738354()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[30];
    v5 = v0[17];
    v6 = v0[8] + v0[26];
    sub_24573AD94(v1, v5, type metadata accessor for RGBLivenessModel.Event);
    swift_beginAccess();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0);
    (*(v6 + *(v7 + 36)))(v6, v5);
    if (v4)
    {
      v9 = v0[20];
      v8 = v0[21];
      v10 = v0[19];
      v11 = v0[17];
      swift_endAccess();
      sub_24573AE64(v11, type metadata accessor for RGBLivenessModel.Event);
      (*(v9 + 8))(v8, v10);
      v0[31] = v4;
      v12 = *(v0[8] + 16);
      if (*(v12 + 737))
      {
        swift_getKeyPath();
        v13 = swift_task_alloc();
        *(v13 + 16) = v12;
        *(v13 + 24) = 0;
        v0[6] = v12;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        *(v12 + 737) = 0;
      }

      v26 = swift_task_alloc();
      v0[32] = v26;
      *v26 = v0;
      v26[1] = sub_2457387E4;

      return RGBLivenessSession.invalidate(with:)(v4);
    }

    else
    {
      v14 = v0[26];
      v15 = v0[17];
      v16 = v0[14];
      v17 = v0[11];
      v18 = v0[12];
      v19 = v0[10];
      v27 = v0[9];
      v20 = v0[8];
      sub_24573AD30(v0[13], v20 + v14);
      sub_24573ADFC(v20 + v14, v16, type metadata accessor for RGBLivenessModel.State);
      swift_endAccess();
      sub_2457395E0(v15);
      sub_245739F30(v16);
      sub_2457112E0(v16);
      sub_24573ADFC(v16, v18, type metadata accessor for RGBLivenessModel.State);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
      sub_245748830();
      (*(v19 + 8))(v17, v27);
      sub_24573AE64(v16, type metadata accessor for RGBLivenessModel.State);
      sub_24573AE64(v15, type metadata accessor for RGBLivenessModel.Event);
      v21 = sub_2457487E0();
      v0[28] = v21;
      v22 = swift_task_alloc();
      v0[29] = v22;
      *v22 = v0;
      v22[1] = sub_245738230;
      v23 = v0[18];
      v24 = v0[19];
      v25 = MEMORY[0x277D85700];

      return MEMORY[0x2822005A8](v23, v21, v25, v24, v0 + 5);
    }
  }
}

uint64_t sub_2457387E4()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_245738904, v3, v2);
}

uint64_t sub_245738904()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457389C4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[5];
  v0[31] = v1;
  v2 = *(v0[8] + 16);
  if (*(v2 + 737) == 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[6] = v2;
    sub_24571B9BC();
    sub_245747C90();
  }

  else
  {
    *(v2 + 737) = 0;
  }

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_2457387E4;

  return RGBLivenessSession.invalidate(with:)(v1);
}

uint64_t sub_245738B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2457487F0();
  v4[3] = sub_2457487E0();
  v6 = sub_2457487C0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_245738BC8, v6, v5);
}

uint64_t sub_245738BC8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_245738C74;

  return sub_2456F49D0(v1 + v2);
}

uint64_t sub_245738C74()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_245738D94, v3, v2);
}

uint64_t sub_245738D94()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RGBLivenessSession.invalidate(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25248, &qword_24574CB18);
  v2[6] = swift_task_alloc();
  v3 = sub_245747E60();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_2457487F0();
  v2[10] = sub_2457487E0();
  v5 = sub_2457487C0();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_245738F38, v5, v4);
}

uint64_t sub_245738F38(uint64_t a1)
{
  v2 = v1[3];
  sub_245747CF0();
  v3 = v2;
  v4 = sub_245747E50();
  v5 = sub_245748920();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2456DE000, v4, v5, "Liveness Session failed with error %@", v7, 0xCu);
    sub_2456EEF50(v8, qword_27EE24A80, &qword_24574AF08);
    MEMORY[0x245D712D0](v8, -1, -1);
    MEMORY[0x245D712D0](v7, -1, -1);
  }

  v12 = v1[8];
  v11 = v1[9];
  v13 = v1[7];

  (*(v12 + 8))(v11, v13);
  v14 = swift_task_alloc();
  v1[13] = v14;
  *v14 = v1;
  v14[1] = sub_2457390E4;

  return sub_2456F45F0();
}

uint64_t sub_2457390E4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_245739204, v3, v2);
}

uint64_t sub_245739204()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask;
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_eventStreamTask))
  {

    sub_245748870();
  }

  v3 = *(v0 + 32);
  *(v1 + v2) = 0;

  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask;
  if (*(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_stateStreamTask))
  {

    sub_245748870();
  }

  v5 = *(v0 + 24);
  *(v3 + v4) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  sub_245748840();
  *(v0 + 16) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
  if (!swift_dynamicCast() || *(v0 + 112))
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);
    v9 = *(*(v0 + 32) + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
    ObjectType = swift_getObjectType();
    *v7 = v8;
    swift_storeEnumTagMultiPayload();
    v11 = *(v9 + 64);
    v12 = v8;
    v11(v7, ObjectType, v9);
    sub_2456EEF50(v7, &qword_27EE25248, &qword_24574CB18);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t RGBLivenessSession.deinit()
{

  sub_2456EEF50(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_fsm, &qword_27EE24BC8, &qword_24574CAB0);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_states;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A38, &qword_24574AC88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_statesContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251F8, &unk_24574CAA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_events;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE251E8, &qword_24574CA90);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t RGBLivenessSession.__deallocating_deinit()
{
  RGBLivenessSession.deinit();

  return swift_deallocClassInstance();
}

id sub_2457395E0(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v83 - v6;
  v8 = sub_245747C30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25248, &qword_24574CB18);
  MEMORY[0x28223BE20](v12);
  v14 = (&v83 - v13);
  v15 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24573ADFC(a1, v17, type metadata accessor for RGBLivenessModel.Event);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      if (*v17 == 1)
      {
        v36 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        ObjectType = swift_getObjectType();
        return (*(v36 + 56))(ObjectType, v36);
      }

      return result;
    case 5:
      v30 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_31;
      }

      v31 = result;
      v32 = swift_getObjectType();
      v33 = sub_245748700();
      v35 = v34;

      (*(v30 + 104))(v33, v35, v32, v30);

    case 6:
      v40 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_32;
      }

      v41 = result;
      v42 = swift_getObjectType();
      v43 = sub_245748700();
      v45 = v44;

      (*(v40 + 112))(v43, v45, v42, v40);

    case 7:
      v53 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_33;
      }

      v54 = result;
      v55 = swift_getObjectType();
      v56 = sub_245748700();
      v58 = v57;

      (*(v53 + 120))(v56, v58, v55, v53);

    case 8:
      v63 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_34;
      }

      v64 = result;
      v65 = swift_getObjectType();
      v66 = sub_245748700();
      v68 = v67;

      (*(v63 + 128))(v66, v68, v65, v63);

    case 9:
      v46 = *v17;
      v47 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v48 = swift_getObjectType();
      return (*(v47 + 184))(v46 - 1, v48, v47);
    case 11:
    case 13:
      v19 = type metadata accessor for RGBLivenessModel.Event;
      v20 = v17;
      return sub_24573AE64(v20, v19);
    case 12:
      v59 = *(v17 + 1);
      v60 = v17[40];
      v61 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v62 = swift_getObjectType();
      (*(v61 + 88))(v62, v61);
      if (v60 == 1)
      {
        (*(v61 + 144))(v62, v61);
      }

    case 14:
    case 15:
      v21 = v9;
      (*(v9 + 32))(v11, v17, v8);
      v22 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v23 = swift_getObjectType();
      (*(v21 + 16))(v7, v11, v8);
      (*(v21 + 56))(v7, 0, 1, v8);
      (*(v22 + 8))(v7, v23, v22);
      sub_2456EEF50(v7, &qword_27EE244D0, &unk_245749FF0);
      return (*(v21 + 8))(v11, v8);
    case 16:
      v77 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_36;
      }

      v78 = result;
      v79 = swift_getObjectType();
      v80 = sub_245748700();
      v82 = v81;

      (*(v77 + 72))(v80, v82, v79, v77);

    case 17:
      v24 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (result)
      {
        v25 = result;
        v26 = swift_getObjectType();
        v27 = sub_245748700();
        v29 = v28;

        (*(v24 + 80))(v27, v29, v26, v24);
      }

      else
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      return result;
    case 18:
      v69 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_35;
      }

      v70 = result;
      v71 = swift_getObjectType();
      v72 = sub_245748700();
      v74 = v73;

      (*(v69 + 96))(v72, v74, v71, v69);

    case 20:
      sub_24573AD94(v17, v4, type metadata accessor for RGBLivenessResult);
      v75 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v76 = swift_getObjectType();
      (*(v75 + 160))(v76, v75);
      (*(v75 + 32))(v76, v75);
      sub_24573ADFC(v4, v14, type metadata accessor for RGBLivenessResult);
      swift_storeEnumTagMultiPayload();
      (*(v75 + 64))(v14, v76, v75);
      sub_2456EEF50(v14, &qword_27EE25248, &qword_24574CB18);
      v19 = type metadata accessor for RGBLivenessResult;
      v20 = v4;
      return sub_24573AE64(v20, v19);
    case 23:
      v49 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v50 = swift_getObjectType();
      sub_24570CDAC();
      v51 = swift_allocError();
      *v52 = 0;
      *v14 = v51;
      swift_storeEnumTagMultiPayload();
      (*(v49 + 64))(v14, v50, v49);
      return sub_2456EEF50(v14, &qword_27EE25248, &qword_24574CB18);
    case 25:
      v38 = *(v84 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
      v39 = swift_getObjectType();
      return (*(v38 + 48))(v39, v38);
    default:
      return result;
  }
}

uint64_t sub_245739F30(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24573ADFC(a1, v17, type metadata accessor for RGBLivenessModel.State);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_24573AD94(v17, v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v12 & 1) == 0)
      {
        v28 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        ObjectType = swift_getObjectType();
        (*(v28 + 40))(ObjectType, v28);
      }

      v19 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v20 = v12;
      goto LABEL_3;
    case 2:
      sub_24573AD94(v17, v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v9 & 1) == 0)
      {
        v37 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v38 = swift_getObjectType();
        (*(v37 + 176))(v38, v37);
      }

      v19 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v20 = v9;
      goto LABEL_3;
    case 3:
      sub_24573AD94(v17, v6, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v6 & 1) == 0)
      {
        v26 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v27 = swift_getObjectType();
        (*(v26 + 136))(v27, v26);
      }

      v19 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v20 = v6;
      goto LABEL_3;
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 19:
      v19 = type metadata accessor for RGBLivenessModel.State;
      v20 = v17;
      goto LABEL_3;
    case 5:
    case 12:
    case 14:
    case 17:
    case 18:
    case 20:
      return result;
    case 9:
      v21 = *(v17 + 5);
      if ((*v17 & 1) == 0)
      {
        v35 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v36 = swift_getObjectType();
        (*(v35 + 152))(v36, v35);
      }

      goto LABEL_21;
    case 13:
      v21 = *(v17 + 1);
      if ((*v17 & 1) == 0)
      {
        v22 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v23 = swift_getObjectType();
        (*(v22 + 168))(v23, v22);
      }

      goto LABEL_21;
    case 15:
      v21 = *(v17 + 1);
      if ((*v17 & 1) == 0)
      {
        v24 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v25 = swift_getObjectType();
        (*(v24 + 176))(v25, v24);
      }

LABEL_21:

      break;
    case 16:
      if ((*v17 & 1) == 0)
      {
        v30 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v31 = swift_getObjectType();
        result = (*(v30 + 136))(v31, v30);
      }

      break;
    default:
      sub_24573AD94(v17, v14, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      if ((*v14 & 1) == 0)
      {
        v32 = v14[*(v3 + 52)];
        v33 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness18RGBLivenessSession_delegate + 8);
        v34 = swift_getObjectType();
        if (v32 == 1)
        {
          (*(v33 + 144))(v34, v33);
        }

        else
        {
          (*(v33 + 168))(v34, v33);
        }
      }

      v19 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v20 = v14;
LABEL_3:
      result = sub_24573AE64(v20, v19);
      break;
  }

  return result;
}

uint64_t sub_24573A3E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24573A4DC;

  return v6(a1);
}

uint64_t sub_24573A4DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24573A5D4()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if ([v0 assistiveTouchEnabled] & 1) != 0 || _AXSCommandAndControlEnabled() || UIAccessibilityIsSwitchControlRunning() || (objc_msgSend(v1, sel_touchAccommodationsEnabled))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 voiceOverEnabled];
  }

  return v2;
}

uint64_t sub_24573A698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_245737C84(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24573A78C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456EEC10;

  return sub_245738B30(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RGBLivenessSession(uint64_t a1)
{
  result = qword_27EE25250;
  if (!qword_27EE25250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24573A894(uint64_t a1)
{
  sub_24573AA5C(319);
  if (v1 <= 0x3F)
  {
    sub_24573AAC4(319, &qword_27EE25268, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_24573AAC4(319, &qword_27EE25270, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        sub_24573AB24(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24573AA5C(uint64_t a1)
{
  if (!qword_27EE25260)
  {
    v2 = type metadata accessor for RGBLivenessModel.State(255);
    v3 = type metadata accessor for RGBLivenessModel.Event(255);
    v5 = type metadata accessor for RGBLivenessModel.FiniteStateMachine(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EE25260);
    }
  }
}

void sub_24573AAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RGBLivenessModel.State(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_24573AB24(uint64_t a1)
{
  if (!qword_27EE25278)
  {
    type metadata accessor for RGBLivenessModel.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE244D8, &qword_24574AA50);
    v1 = sub_2457488F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE25278);
    }
  }
}

uint64_t sub_24573ABA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2456F3D40;

  return sub_24573A3E4(a1, v4);
}

uint64_t sub_24573AC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2456EEC10;

  return sub_24573A3E4(a1, v4);
}

uint64_t sub_24573AD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24573AD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24573ADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24573AE64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of RGBLivenessSessionDelegate.captureSelfieObtainNewConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2456EEC10;

  return v9(a1, a2, a3);
}

id sub_24573B1E0()
{
  v1 = OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator;
  v2 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator];
  }

  else
  {
    v4 = sub_24573B244(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24573B244(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setColor_];

  [v2 setHidden_];
  [a1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE247E0, "v\x1B");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24574A870;
  v6 = [v2 centerYAnchor];
  v7 = [a1 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 centerXAnchor];

  v10 = [a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  sub_24573C208();
  v12 = sub_245748790();

  [v4 activateConstraints_];

  return v2;
}

id sub_24573B474(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_24573B4C0(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CoreIDVUIButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_24573B7F0();
}

id sub_24573B528(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_originalButtonText];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton____lazy_storage___activityIndicator] = 0;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style] = 5;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme] = 0;
  v4[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_isNeutralButtonColorScheme] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CoreIDVUIButton();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsFontSizeToFitWidth_];
  }

  v13 = [v10 titleLabel];

  if (v13)
  {
    [v13 setMaximumContentSizeCategory_];
  }

  return v10;
}

void sub_24573B7F0()
{
  v1 = v0;
  v2 = sub_245747E80();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_245747EA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEnabled] || (v7 = objc_msgSend(v0, sel_isHighlighted), v8 = 1.0, v7))
  {
    v8 = 0.75;
  }

  [v0 setAlpha_];
  v9 = v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style];
  if (v9 <= 1)
  {
    if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_style])
    {
      sub_245747E70();
      sub_245747EB0();
      v17 = objc_opt_self();
      v30 = [v17 systemFillColor];
      v54 = v3;
      v55 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_245747E90();

      (*(v4 + 8))(v6, v3);
      sub_2457489F0();
      if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
      {
        v31 = &selRef_systemOrangeColor;
      }

      else
      {
        v31 = &selRef_labelColor;
      }

      v32 = [v17 *v31];
      [v1 setTitleColor:v32 forState:0];

      v33 = [v1 titleLabel];
      if (v33)
      {
        v34 = v33;
        v35 = [objc_opt_self() preferredFontForTextStyle_];
        [v34 setFont_];
      }
    }

    else
    {
      if (![v0 isEnabled] || v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_isNeutralButtonColorScheme] != 1)
      {
        if (([v0 isEnabled] & 1) != 0 || (v37 = sub_24573B1E0(), v38 = objc_msgSend(v37, sel_isHidden), v37, (v38 & 1) == 0))
        {
          v43 = v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme];
          v44 = objc_opt_self();
          v45 = &selRef_tertiarySystemFillColor;
          if (!v43)
          {
            v45 = &selRef_systemBlueColor;
          }

          v46 = [v44 *v45];
          [v1 setBackgroundColor_];

          v41 = objc_opt_self();
          v42 = &selRef_whiteColor;
        }

        else
        {
          v39 = objc_opt_self();
          v40 = [v39 tertiarySystemFillColor];
          [v1 setBackgroundColor_];

          v41 = v39;
          v42 = &selRef_tertiaryLabelColor;
        }

        v47 = [v41 *v42];
        [v1 setTitleColor:v47 forState:0];

        v48 = [v1 titleLabel];
        if (v48)
        {
          v49 = v48;
          v50 = [objc_opt_self() preferredFontForTextStyle_];
          [v49 setFont_];
        }

        sub_245747E70();
        sub_245747EB0();
        v51 = [objc_opt_self() systemFillColor];
        v54 = v3;
        v55 = MEMORY[0x277D74E20];
        __swift_allocate_boxed_opaque_existential_1(v53);
        sub_245747E90();

        (*(v4 + 8))(v6, v3);
        sub_2457489F0();
        return;
      }

      sub_245747E70();
      sub_245747EB0();
      v17 = objc_opt_self();
      v18 = [v17 systemFillColor];
      v54 = v3;
      v55 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_245747E90();

      (*(v4 + 8))(v6, v3);
      sub_2457489F0();
      if (v0[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
      {
        v19 = &selRef_systemOrangeColor;
      }

      else
      {
        v19 = &selRef_labelColor;
      }

      v20 = [v17 *v19];
      [v1 setTitleColor:v20 forState:0];

      v21 = [v1 titleLabel];
      if (v21)
      {
        v22 = v21;
        v23 = [objc_opt_self() preferredFontForTextStyle_];
        [v22 setFont_];
      }
    }

    v36 = [v17 clearColor];
    [v1 setBackgroundColor_];

    return;
  }

  if (v9 - 2 >= 2)
  {
    if (v9 == 4)
    {
      v24 = objc_opt_self();
      v25 = [v24 clearColor];
      [v1 setBackgroundColor_];

      v26 = (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme] ? &selRef_systemOrangeColor : &selRef_systemBlueColor);
      v27 = [v24 *v26];
      [v1 setTitleColor:v27 forState:0];

      v28 = [v1 titleLabel];
      if (v28)
      {
        v15 = v28;
        v16 = [objc_opt_self() preferredFontForTextStyle_];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 clearColor];
    [v1 setBackgroundColor_];

    if (v1[OBJC_IVAR____TtC18CoreIDVRGBLiveness15CoreIDVUIButton_useWatchScheme])
    {
      v12 = &selRef_systemOrangeColor;
    }

    else
    {
      v12 = &selRef_systemBlueColor;
    }

    v13 = [v10 *v12];
    [v1 setTitleColor:v13 forState:0];

    v14 = [v1 titleLabel];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_26:
      v52 = v16;
      [v15 setFont_];

      v29 = v52;
    }
  }
}

id sub_24573C094(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_24573C150()
{
  result = qword_27EE252B8;
  if (!qword_27EE252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE252B8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_24573C208()
{
  result = qword_27EE250E0;
  if (!qword_27EE250E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE250E0);
  }

  return result;
}

uint64_t sub_24573C254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  *a2 = *(v3 + 737);
  return result;
}

uint64_t sub_24573C324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v4 = *(v3 + 752);
  *a2 = *(v3 + 744);
  a2[1] = v4;
}

uint64_t sub_24573C3D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24570EDE4(v1, v2);
}

uint64_t sub_24573C414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258B0, &qword_24574D690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574A850;
  v1 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258B8, &qword_24574D698);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_24574A850;
  v3 = *MEMORY[0x277CC4980];
  *(v2 + 32) = *MEMORY[0x277CC4980];
  v4 = *MEMORY[0x277CC4958];
  *(v2 + 40) = *MEMORY[0x277CC4958];
  v5 = v4;
  v6 = v1;
  v7 = v3;
  v8 = sub_2457300B0(v2);
  swift_setDeallocating();
  sub_2456EEF50(v2 + 32, &qword_27EE258C0, &qword_24574D6A0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258C8, &qword_24574D6A8);
  *(inited + 40) = v8;
  sub_2457301A0(inited);
  swift_setDeallocating();
  sub_2456EEF50(inited + 32, &qword_27EE25138, &qword_24574C380);
  type metadata accessor for CFString(0);
  sub_2457479D0(&qword_27EE24580, type metadata accessor for CFString, &unk_24574A6C4);
  v9 = sub_245748640();

  v10 = CTFontDescriptorCreateWithAttributes(v9);

  CTFontCreateWithFontDescriptor(v10, 15.0, 0);
  v11 = sub_2457482F0();

  return v11;
}

uint64_t sub_24573C5F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  if (v8[560])
  {
  }

  else
  {
    v0 = sub_245747D10();
    v1 = sub_245747D10();

    if (v0 == v1)
    {
      v2 = [objc_opt_self() tertiarySystemFillColor];
      v3 = sub_245748450();
      goto LABEL_6;
    }
  }

  v3 = sub_245748400();
LABEL_6:
  v4 = v3;
  sub_245748510();
  swift_getKeyPath();
  sub_245747CA0();

  if (v8[705] == 1)
  {

LABEL_9:
    v6 = sub_245748430();

    return v6;
  }

  swift_getKeyPath();
  sub_245747CA0();

  v5 = v8[704];

  if (v5 == 1)
  {
    goto LABEL_9;
  }

  return v4;
}

uint64_t RGBLivenessView.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessView(0);
  *(a2 + v4[6]) = 0x3FE0000000000000;
  sub_2457481A0();
  *(a2 + v4[8]) = 0x4024000000000000;
  *(a2 + v4[9]) = 0x4043000000000000;
  *(a2 + v4[10]) = 0x4040000000000000;
  *(a2 + v4[11]) = 0x4043000000000000;
  *(a2 + v4[12]) = 0x4040000000000000;
  *(a2 + v4[13]) = 0x4030000000000000;
  v5 = v4[14];
  *(a2 + v5) = sub_24573C414();
  *(a2 + v4[5]) = *(a1 + 24);
  type metadata accessor for RGBLivenessViewConfig(0);
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);

  sub_245748530();
}

uint64_t type metadata accessor for RGBLivenessView(uint64_t a1)
{
  result = qword_27EE25350;
  if (!qword_27EE25350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RGBLivenessView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v36 = &v29 - v3;
  v4 = type metadata accessor for RGBLivenessView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C8, &qword_24574CCB8);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252D0, &qword_24574CCC0);
  MEMORY[0x28223BE20](v34);
  v30 = &v29 - v9;
  sub_24573D1D0(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v31 = type metadata accessor for RGBLivenessView;
  sub_245747050(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for RGBLivenessView);
  v42 = sub_24573D234;
  v43 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252D8, &qword_24574CCC8);
  v13 = sub_245747978(&qword_27EE252E0, &qword_27EE252D8, &qword_24574CCC8, MEMORY[0x277CDF7D8]);
  sub_2457483C0();

  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252E8, &qword_24574CCD0);
  v42 = v12;
  v43 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
  v15 = sub_24573DFDC();
  v42 = v14;
  v43 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v30;
  v17 = v32;
  sub_2457483E0();
  (*(v33 + 8))(v8, v17);
  sub_24573D1D0(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  v19 = v31;
  sub_245747050(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v10, v31);
  v20 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25310, &qword_24574CCE8) + 36));
  *v20 = sub_24573E774;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  sub_24573D1D0(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_245747050(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v10, v19);
  v22 = (v16 + *(v34 + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_24573E9AC;
  v22[3] = v21;
  v23 = v35;
  sub_245748510();
  v24 = v42;
  swift_getKeyPath();
  v42 = v24;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v25 = *(v24 + 93);
  v26 = *(v24 + 94);

  v44 = v25;
  v45 = v26;
  v27 = v36;
  sub_245748520();
  swift_getKeyPath();
  sub_245748540();

  (*(v37 + 8))(v27, v23);
  v40 = v2;
  v39 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25318, &qword_24574CD40);
  sub_24573EB5C();
  sub_24573ED88();
  sub_24573EDDC();
  sub_2457483D0();

  return sub_2456EEF50(v16, &qword_27EE252D0, &qword_24574CCC0);
}

uint64_t sub_24573D000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25408, &qword_24574CFD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_245747F80();
  v10 = v9;
  v11 = *(a2 + *(type metadata accessor for RGBLivenessView(0) + 48));
  *v8 = sub_2457480C0();
  *(v8 + 1) = v11;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25410, &qword_24574CFD8);
  sub_24573D24C(a2, a1, &v8[*(v12 + 44)], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25418, &qword_24574CFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24574B940;
  v14 = sub_245748260();
  *(inited + 32) = v14;
  v15 = sub_245748270();
  *(inited + 33) = v15;
  v16 = sub_245748280();
  sub_245748280();
  if (sub_245748280() != v14)
  {
    v16 = sub_245748280();
  }

  sub_245748280();
  if (sub_245748280() != v15)
  {
    v16 = sub_245748280();
  }

  v17 = sub_245747FA0();
  sub_245746FE8(v8, a3, &qword_27EE25408, &qword_24574CFD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25420, &qword_24574CFE8);
  v19 = a3 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v16;
  return result;
}

uint64_t sub_24573D1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24573D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v65 = a2;
  v70 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25428, &qword_24574CFF0) - 8;
  v6 = MEMORY[0x28223BE20](v68);
  v69 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = (&v60 - v8);
  v9 = type metadata accessor for RGBLivenessView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25430, &qword_24574CFF8);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  sub_24573D1D0(a1, &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v64 = v20;
  *(v20 + 16) = a4;
  sub_245747050(&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for RGBLivenessView);
  sub_245747F90();
  v21 = [objc_opt_self() di_mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v82.origin.x = v23;
  v82.origin.y = v25;
  v82.size.width = v27;
  v82.size.height = v29;
  CGRectGetHeight(v82);
  v30 = a1;
  sub_245748580();
  sub_245747F60();
  v31 = v71;
  v32 = v72;
  v63 = v73;
  LOBYTE(a1) = v74;
  v62 = v75;
  v61 = v76;
  v81 = v72;
  v80 = v74;
  v33 = sub_245748570();
  v35 = v34;
  v36 = &v18[*(v14 + 44)];
  sub_24573D7B0(v36, a4);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25438, &qword_24574D000) + 36));
  *v37 = v33;
  v37[1] = v35;
  v38 = v64;
  *v18 = sub_2457460F4;
  *(v18 + 1) = v38;
  *(v18 + 2) = v31;
  v18[24] = v32;
  *(v18 + 4) = v63;
  v18[40] = a1;
  v39 = v61;
  *(v18 + 6) = v62;
  *(v18 + 7) = v39;
  *(v18 + 32) = 0;
  v40 = *(v30 + *(v10 + 48));
  v41 = sub_2457480C0();
  v42 = v66;
  *v66 = v41;
  *(v42 + 8) = v40;
  *(v42 + 16) = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25440, &qword_24574D008);
  sub_2457425BC(v30, (v42 + *(v43 + 44)));
  LOBYTE(v40) = sub_245748250();
  sub_245747EE0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25448, &qword_24574D010) + 36);
  *v52 = v40;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  sub_245747F90();
  sub_245748580();
  sub_245747F60();
  v53 = (v42 + *(v68 + 44));
  v54 = v78;
  *v53 = v77;
  v53[1] = v54;
  v53[2] = v79;
  v55 = v67;
  sub_245703098(v18, v67, &qword_27EE25430, &qword_24574CFF8);
  v56 = v69;
  sub_245703098(v42, v69, &qword_27EE25428, &qword_24574CFF0);
  v57 = v70;
  sub_245703098(v55, v70, &qword_27EE25430, &qword_24574CFF8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25450, &qword_24574D018);
  sub_245703098(v56, v57 + *(v58 + 48), &qword_27EE25428, &qword_24574CFF0);
  sub_2456EEF50(v42, &qword_27EE25428, &qword_24574CFF0);
  sub_2456EEF50(v18, &qword_27EE25430, &qword_24574CFF8);
  sub_2456EEF50(v56, &qword_27EE25428, &qword_24574CFF0);
  return sub_2456EEF50(v55, &qword_27EE25430, &qword_24574CFF8);
}

uint64_t sub_24573D7B0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25650, &qword_24574D308);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25658, &qword_24574D310);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_245741C14(v2, v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v10 = v22;
  swift_getKeyPath();
  v22 = v10;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v11 = *(v10 + 616);

  if (v11)
  {

    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_245746FE8(v6, v9, &qword_27EE25650, &qword_24574D308);
  *&v9[*(v7 + 36)] = v12;
  v13 = sub_2457485C0();
  sub_245748510();
  v14 = v22;
  swift_getKeyPath();
  v22 = v14;
  sub_245747CA0();

  v15 = *(v14 + 608);
  v16 = *(v14 + 616);

  if (v16)
  {
  }

  else
  {
    v15 = 0;
  }

  v17 = v9;
  v18 = v21;
  sub_245746FE8(v17, v21, &qword_27EE25658, &qword_24574D310);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25660, &qword_24574D340);
  v20 = (v18 + *(result + 36));
  *v20 = v13;
  v20[1] = v15;
  v20[2] = v16;
  return result;
}

uint64_t sub_24573DA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A0, &qword_24574CEC0);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v4;
  v31 = sub_2457481B0();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25300, &qword_24574CCE0);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v30 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252F0, &qword_24574CCD8);
  v10 = MEMORY[0x28223BE20](v36);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v15 = a1;
  sub_245748510();
  v16 = v38;
  swift_getKeyPath();
  v38 = v16;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v17 = *(v16 + 888);

  if (v17)
  {
    v18 = type metadata accessor for RGBLivenessView(0);
    v19 = (*(v5 + 16))(v7, v15 + *(v18 + 28), v31);
    MEMORY[0x28223BE20](v19);
    *(&v30 - 2) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A8, &qword_24574CEF0);
    sub_245745E38();
    sub_245747F10();
    v20 = sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0, MEMORY[0x277CDD7A8]);
    v21 = v33;
    v22 = v35;
    MEMORY[0x245D6FFA0](v9, v35, v20);
    v23 = v34;
    (*(v3 + 16))(v12, v21, v34);
    (*(v3 + 56))(v12, 0, 1, v23);
    v38 = v22;
    v39 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D6FFB0](v12, v23, OpaqueTypeConformance2);
    sub_2456EEF50(v12, &qword_27EE252F0, &qword_24574CCD8);
    (*(v3 + 8))(v21, v23);
    (*(v32 + 8))(v9, v22);
  }

  else
  {
    v25 = v34;
    (*(v3 + 56))(v12, 1, 1, v34);
    v26 = sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0, MEMORY[0x277CDD7A8]);
    v38 = v35;
    v39 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D6FFB0](v12, v25, v27);
    sub_2456EEF50(v12, &qword_27EE252F0, &qword_24574CCD8);
  }

  v28 = sub_24573DFDC();
  MEMORY[0x245D6FFA0](v14, v36, v28);
  return sub_2456EEF50(v14, &qword_27EE252F0, &qword_24574CCD8);
}

unint64_t sub_24573DFDC()
{
  result = qword_27EE252F8;
  if (!qword_27EE252F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25300, &qword_24574CCE0);
    sub_245747978(&qword_27EE25308, &qword_27EE25300, &qword_24574CCE0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE252F8);
  }

  return result;
}

uint64_t sub_24573E0D0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for RGBLivenessView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253D0, &qword_24574CF00);
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253C0, &qword_24574CEF8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_24573D1D0(v1, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_245747050(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for RGBLivenessView);
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253F8, &qword_24574CF18);
  sub_245746060();
  sub_2457484D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v13 = v32;
  swift_getKeyPath();
  v32 = v13;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  if (*(v13 + 560))
  {

LABEL_5:
    v17 = sub_245748440();
    goto LABEL_6;
  }

  v14 = sub_245747D10();
  v15 = sub_245747D10();

  if (v14 != v15)
  {
    goto LABEL_5;
  }

  v16 = [objc_opt_self() systemOrangeColor];
  v17 = sub_245748450();
LABEL_6:
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v32 = v18;
  v20 = sub_245747F70();
  (*(v5 + 32))(v10, v7, v29);
  v21 = &v10[*(v8 + 36)];
  *v21 = KeyPath;
  v21[1] = v20;
  sub_245748510();
  v22 = v32;
  swift_getKeyPath();
  v32 = v22;
  sub_245747CA0();

  v23 = *(v22 + 896);

  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v30;
  sub_245746FE8(v10, v30, &qword_27EE253C0, &qword_24574CEF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE253A8, &qword_24574CEF0);
  v28 = (v26 + *(result + 36));
  *v28 = v24;
  v28[1] = sub_2457460DC;
  v28[2] = v25;
  return result;
}

uint64_t sub_24573E544(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = *(a1 + *(type metadata accessor for RGBLivenessView(0) + 20));
  LOBYTE(a1) = *(v13 + 585) << 8 != 512;
  (*(v6 + 16))(v8, v13 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24573E78C(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = type metadata accessor for RGBLivenessView(0);
  (*(v6 + 16))(v8, *(a1 + *(v13 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24573E9C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RGBLivenessView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24573EA40@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  sub_24573ED88();
  result = sub_245748330();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_24573EB5C()
{
  result = qword_27EE25320;
  if (!qword_27EE25320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D0, &qword_24574CCC0);
    sub_24573EBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25320);
  }

  return result;
}

unint64_t sub_24573EBE8()
{
  result = qword_27EE25328;
  if (!qword_27EE25328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25310, &qword_24574CCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252C8, &qword_24574CCB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252E8, &qword_24574CCD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252D8, &qword_24574CCC8);
    sub_245747978(&qword_27EE252E0, &qword_27EE252D8, &qword_24574CCC8, MEMORY[0x277CDF7D8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE252F0, &qword_24574CCD8);
    sub_24573DFDC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25328);
  }

  return result;
}

unint64_t sub_24573ED88()
{
  result = qword_27EE25330;
  if (!qword_27EE25330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25330);
  }

  return result;
}

unint64_t sub_24573EDDC()
{
  result = qword_27EE25338;
  if (!qword_27EE25338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25318, &qword_24574CD40);
    sub_245747978(&qword_27EE25340, &qword_27EE25348, &qword_24574CD48, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25338);
  }

  return result;
}

uint64_t sub_24573EEA8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_245747F90();
  sub_245747F90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v6 = *(v17 + 728);
  v7 = v6;

  if (v6)
  {
    v8 = v7;
    [v8 size];
    [v8 size];
  }

  *a3 = sub_245748580();
  a3[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE256F0, &qword_24574D3B8);
  sub_24573F064(a2, a3 + *(v10 + 44));
  sub_245747F90();
  v12 = v11 * 0.5;
  sub_245747F90();
  v14 = v13 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE256F8, &qword_24574D3C0);
  v16 = (a3 + *(result + 36));
  *v16 = v12;
  v16[1] = v14;
  return result;
}

uint64_t sub_24573F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25700, &qword_24574D3C8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v63 - v9;
  v10 = type metadata accessor for RGBLivenessView(0);
  v11 = v10 - 8;
  v74 = *(v10 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v63 - v14;
  v87 = *(a1 + *(v11 + 28));
  sub_245747F90();
  sub_245747F90();
  sub_245748580();
  sub_245747F60();
  v15 = v139;
  v85 = v140;
  v86 = v138;
  v16 = v141;
  v81 = v139;
  v82 = v141;
  v83 = v143;
  v84 = v142;
  sub_245748510();
  v17 = v115;
  swift_getKeyPath();
  v115 = v17;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v18 = *(v17 + 601);

  v19 = 0.0;
  v20 = 10.0;
  if (v18)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = 0.0;
  }

  v137 = v15;
  v136 = v16;

  v80 = sub_2457485D0();
  sub_245748510();
  v22 = v115;
  swift_getKeyPath();
  v115 = v22;
  sub_245747CA0();

  v23 = *(v22 + 601);

  if (v23)
  {
    v24 = 10.0;
  }

  else
  {
    v24 = 0.0;
  }

  sub_245748510();
  v25 = v115;
  swift_getKeyPath();
  v115 = v25;
  sub_245747CA0();

  v26 = *(v25 + 600);

  if (v26)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_245748410();
  sub_245748510();
  v28 = v115;
  swift_getKeyPath();
  v115 = v28;
  sub_245747CA0();

  v68 = sub_245748430();

  v67 = sub_2457485D0();
  sub_245748510();
  v29 = v115;
  swift_getKeyPath();
  v115 = v29;
  sub_245747CA0();

  v30 = *(v29 + 601);

  if (!v30)
  {
    v20 = 0.0;
  }

  v31 = v77;
  sub_245748520();
  swift_getKeyPath();
  sub_245748540();

  (*(v78 + 8))(v31, v13);
  v77 = v116;
  v78 = v115;
  v76 = v117;

  sub_245748510();
  v32 = v115;
  swift_getKeyPath();
  v115 = v32;
  sub_245747CA0();

  v33 = *(v32 + 632);

  if (v33 != 9)
  {
    v19 = 1.0;
  }

  sub_245748580();
  sub_245747F60();
  v75 = sub_2457485D0();
  sub_245748510();
  v34 = v115;
  swift_getKeyPath();
  v115 = v34;
  sub_245747CA0();

  v35 = *(v34 + 632);

  v36 = v35 != 9;
  v37 = v72;
  sub_24573D1D0(a1, v72);
  v38 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v74 = swift_allocObject();
  sub_245747050(v37, v74 + v38, type metadata accessor for RGBLivenessView);
  sub_245748580();
  sub_245747F60();
  v70 = v144;
  v39 = v145;
  v66 = v146;
  v71 = v147;
  v72 = v149;
  v73 = v148;
  v92 = v145;
  v64 = v145;
  v91 = v147;
  v40 = v79;
  sub_24573FB3C(v79);
  sub_245748580();
  sub_245747F60();
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25708, &qword_24574D448) + 36));
  v42 = v151;
  *v41 = v150;
  v41[1] = v42;
  v41[2] = v152;
  *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25710, &qword_24574D450) + 36)) = 1;
  v43 = v40;
  v44 = v69;
  sub_245703098(v43, v69, &qword_27EE25700, &qword_24574D3C8);
  v45 = v87;
  *&v93 = v87;
  *(&v93 + 1) = v86;
  LOBYTE(v94) = v81;
  *(&v94 + 1) = v85;
  LOBYTE(v95) = v82;
  *(&v95 + 1) = v84;
  *&v96 = v83;
  *(&v96 + 1) = v21;
  LOBYTE(v97) = 1;
  *(&v97 + 1) = v80;
  *&v98 = v24;
  *(&v98 + 1) = v27;
  v46 = v96;
  *(a2 + 32) = v95;
  *(a2 + 48) = v46;
  v47 = v98;
  *(a2 + 64) = v97;
  *(a2 + 80) = v47;
  v48 = v94;
  *a2 = v93;
  *(a2 + 16) = v48;
  v49 = v67;
  *(a2 + 96) = v68;
  *(a2 + 104) = v49;
  *(a2 + 112) = v20;
  *&v99 = v78;
  *(&v99 + 1) = v77;
  LOBYTE(v100) = v76;
  *(&v100 + 1) = v45;
  *v101 = v19;
  *(&v101[2] + 8) = v90;
  *(&v101[1] + 8) = v89;
  *(v101 + 8) = v88;
  *(&v101[3] + 1) = v75;
  v65 = v36;
  v102 = v36;
  v50 = v99;
  v51 = v100;
  v52 = v101[1];
  *(a2 + 152) = v101[0];
  *(a2 + 136) = v51;
  *(a2 + 120) = v50;
  v53 = v101[2];
  v54 = v101[3];
  *(a2 + 216) = v36;
  *(a2 + 200) = v54;
  *(a2 + 184) = v53;
  *(a2 + 168) = v52;
  *&v103 = sub_245746F3C;
  *(&v103 + 1) = v74;
  *&v104 = v70;
  BYTE8(v104) = v39;
  v55 = v66;
  *&v105 = v66;
  BYTE8(v105) = v71;
  *&v106 = v73;
  *(&v106 + 1) = v72;
  v107 = 1;
  v56 = v103;
  v57 = v104;
  v58 = v105;
  v59 = v106;
  *(a2 + 288) = 1;
  *(a2 + 256) = v58;
  *(a2 + 272) = v59;
  *(a2 + 224) = v56;
  *(a2 + 240) = v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25718, &qword_24574D458);
  sub_245703098(v44, a2 + *(v60 + 96), &qword_27EE25700, &qword_24574D3C8);
  sub_245703098(&v93, &v115, &qword_27EE25720, &qword_24574D460);

  sub_245703098(&v99, &v115, &qword_27EE25728, &qword_24574D468);
  sub_245703098(&v103, &v115, &qword_27EE25730, &qword_24574D470);
  sub_2456EEF50(v79, &qword_27EE25700, &qword_24574D3C8);
  sub_2456EEF50(v44, &qword_27EE25700, &qword_24574D3C8);
  v108[0] = sub_245746F3C;
  v108[1] = v74;
  v108[2] = v70;
  v109 = v64;
  v110 = v55;
  v111 = v71;
  v112 = v73;
  v113 = v72;
  v114 = 1;
  sub_2456EEF50(v108, &qword_27EE25730, &qword_24574D470);
  v115 = v78;
  v116 = v77;
  v117 = v76;
  v61 = v87;
  v118 = v87;
  v119 = v19;
  v120 = v88;
  v121 = v89;
  v122 = v90;
  v123 = v75;
  v124 = v65;
  sub_2456EEF50(&v115, &qword_27EE25728, &qword_24574D468);

  v125[0] = v61;
  v125[1] = v86;
  v126 = v81;
  v127 = v85;
  v128 = v82;
  v129 = v84;
  v130 = v83;
  v131 = v21;
  v132 = 1;
  v133 = v80;
  v134 = v24;
  v135 = v27;
  return sub_2456EEF50(v125, &qword_27EE25720, &qword_24574D460);
}

uint64_t sub_24573FB3C@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25738, &qword_24574D478);
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v80 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25740, &qword_24574D480);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25748, &qword_24574D488);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v81 = &v79 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25750, &qword_24574D490) - 8;
  MEMORY[0x28223BE20](v86);
  v85 = &v79 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25758, &qword_24574D498) - 8;
  MEMORY[0x28223BE20](v89);
  v87 = &v79 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25760, &qword_24574D4A0) - 8;
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v82 = v1;
  sub_245748510();
  v14 = v92;
  swift_getKeyPath();
  *&v92 = v14;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v15 = *(v14 + 904);

  v16 = v80;
  sub_245747E20();
  sub_245748510();
  v17 = v92;
  swift_getKeyPath();
  *&v92 = v17;
  sub_245747CA0();

  v18 = *(v17 + 913);

  if (v18)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  (*(v83 + 32))(v7, v16, v84);
  *&v7[*(v5 + 44)] = v19;
  v20 = v81;
  v21 = &v81[*(v9 + 44)];
  v22 = *(sub_245747FD0() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_2457480B0();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #16.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25768, &qword_24574D4F8) + 36)] = 256;
  sub_245746FE8(v7, v20, &qword_27EE25740, &qword_24574D480);
  v30 = objc_opt_self();
  v31 = [v30 di_mainScreen];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v95.origin.x = v33;
  v95.origin.y = v35;
  v95.size.width = v37;
  v95.size.height = v39;
  CGRectGetHeight(v95);
  v40 = [v30 di_mainScreen];
  [v40 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v96.origin.x = v42;
  v96.origin.y = v44;
  v96.size.width = v46;
  v96.size.height = v48;
  CGRectGetHeight(v96);
  sub_245748580();
  sub_245747F60();
  v49 = v85;
  sub_245746FE8(v20, v85, &qword_27EE25748, &qword_24574D488);
  v50 = (v49 + *(v86 + 44));
  v51 = v93;
  *v50 = v92;
  v50[1] = v51;
  v50[2] = v94;
  LOBYTE(v40) = sub_245748260();
  type metadata accessor for RGBLivenessView(0);
  sub_245747EE0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v49;
  v61 = v87;
  sub_245746FE8(v60, v87, &qword_27EE25750, &qword_24574D490);
  v62 = v61 + *(v89 + 44);
  *v62 = v40;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  LOBYTE(v40) = sub_245748270();
  sub_245747EE0();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v88;
  sub_245746FE8(v61, v88, &qword_27EE25758, &qword_24574D498);
  v72 = v71 + *(v90 + 44);
  *v72 = v40;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v74 = swift_allocObject();
  *(v74 + 16) = 1;
  v75 = v71;
  v76 = v91;
  sub_245746FE8(v75, v91, &qword_27EE25760, &qword_24574D4A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25770, &qword_24574D500);
  v78 = (v76 + *(result + 36));
  *v78 = KeyPath;
  v78[1] = sub_245747A18;
  v78[2] = v74;
  return result;
}

uint64_t sub_245740250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v146 = a1;
  v151 = a3;
  v145 = type metadata accessor for RGBLivenessView(0);
  v147 = *(v145 - 8);
  v4 = MEMORY[0x28223BE20](v145);
  v149 = v5;
  v150 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v148 = &v124 - v6;
  v126 = sub_245747FD0();
  MEMORY[0x28223BE20](v126);
  v127 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2457484A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25778, &qword_24574D508);
  MEMORY[0x28223BE20](v124);
  v13 = &v124 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25780, &qword_24574D510);
  MEMORY[0x28223BE20](v125);
  v152 = &v124 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25788, &qword_24574D518);
  MEMORY[0x28223BE20](v128);
  v130 = &v124 - v15;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25790, &qword_24574D520);
  MEMORY[0x28223BE20](v129);
  v132 = &v124 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25798, &qword_24574D528);
  MEMORY[0x28223BE20](v131);
  v134 = &v124 - v17;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257A0, &qword_24574D530);
  MEMORY[0x28223BE20](v133);
  v136 = &v124 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257A8, &qword_24574D538);
  MEMORY[0x28223BE20](v135);
  v138 = &v124 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257B0, &qword_24574D540);
  MEMORY[0x28223BE20](v137);
  v139 = &v124 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257B8, &qword_24574D548);
  MEMORY[0x28223BE20](v140);
  v141 = &v124 - v21;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257C0, &qword_24574D550);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v124 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v23 = a2;
  sub_245748510();
  v24 = v155;
  swift_getKeyPath();
  *&v155 = v24;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v25 = *(v24 + 728);
  v25;

  if (!v25)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_245748480();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v26 = 0.0;
  v27 = sub_2457484C0();

  (*(v9 + 8))(v11, v8);
  v28 = sub_245748560();
  v30 = v29;
  v31 = &v13[*(v124 + 36)];
  sub_2457411EC(v31);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE257C8, &qword_24574D558) + 36));
  *v32 = v28;
  v32[1] = v30;
  *v13 = v27;
  *(v13 + 1) = 0x3FE2000000000000;
  *(v13 + 8) = 256;
  sub_245748510();
  v33 = v155;
  swift_getKeyPath();
  *&v155 = v33;
  sub_245747CA0();

  v34 = *(v33 + 736);

  if (v34)
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = *(v126 + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_2457480B0();
  v39 = v127;
  (*(*(v38 - 8) + 104))(v127 + v36, v37, v38);
  *v39 = v35;
  v39[1] = v35;
  v40 = v152;
  v41 = v152 + *(v125 + 36);
  sub_245747050(v39, v41, MEMORY[0x277CDFC08]);
  *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25768, &qword_24574D4F8) + 36)) = 256;
  sub_245746FE8(v13, v40, &qword_27EE25778, &qword_24574D508);
  sub_245748510();
  v42 = v155;
  swift_getKeyPath();
  *&v155 = v42;
  sub_245747CA0();

  v43 = *(v42 + 736);

  v45 = 0;
  if (v43 == 1)
  {
    v45 = MEMORY[0x245D70390](v44, 0.5, 1.0, 0.0);
  }

  sub_245748510();
  v46 = v155;
  swift_getKeyPath();
  *&v155 = v46;
  sub_245747CA0();

  v47 = *(v46 + 736);

  v48 = v130;
  sub_245746FE8(v152, v130, &qword_27EE25780, &qword_24574D510);
  v49 = v48 + *(v128 + 36);
  *v49 = v45;
  *(v49 + 8) = v47;
  sub_245748510();
  v50 = v155;
  swift_getKeyPath();
  *&v155 = v50;
  sub_245747CA0();

  v51 = *(v50 + 736);

  if (v51)
  {
    v26 = 1.0;
  }

  v52 = v48;
  v53 = v132;
  sub_245746FE8(v52, v132, &qword_27EE25788, &qword_24574D518);
  *(v53 + *(v129 + 36)) = v26;
  sub_245748510();
  v54 = v155;
  swift_getKeyPath();
  *&v155 = v54;
  sub_245747CA0();

  v55 = *(v54 + 736);

  if (v55 == 1)
  {
    v56 = sub_2457485A0();
  }

  else
  {
    v56 = 0;
  }

  sub_245748510();
  v57 = v155;
  swift_getKeyPath();
  *&v155 = v57;
  sub_245747CA0();

  v58 = *(v57 + 736);

  v59 = v53;
  v60 = v134;
  sub_245746FE8(v59, v134, &qword_27EE25790, &qword_24574D520);
  v61 = v60 + *(v131 + 36);
  *v61 = v56;
  *(v61 + 8) = v58;
  v62 = objc_opt_self();
  v63 = [v62 di_mainScreen];
  [v63 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v158.origin.x = v65;
  v158.origin.y = v67;
  v158.size.width = v69;
  v158.size.height = v71;
  CGRectGetHeight(v158);
  v72 = [v62 di_mainScreen];
  [v72 bounds];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v159.origin.x = v74;
  v159.origin.y = v76;
  v159.size.width = v78;
  v159.size.height = v80;
  CGRectGetHeight(v159);
  sub_245748580();
  sub_245747F60();
  v81 = v136;
  sub_245746FE8(v60, v136, &qword_27EE25798, &qword_24574D528);
  v82 = (v81 + *(v133 + 36));
  v83 = v156;
  *v82 = v155;
  v82[1] = v83;
  v82[2] = v157;
  LOBYTE(v72) = sub_245748260();
  sub_245747EE0();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v81;
  v93 = v138;
  sub_245746FE8(v92, v138, &qword_27EE257A0, &qword_24574D530);
  v94 = v93 + *(v135 + 36);
  *v94 = v72;
  *(v94 + 8) = v85;
  *(v94 + 16) = v87;
  *(v94 + 24) = v89;
  *(v94 + 32) = v91;
  *(v94 + 40) = 0;
  LOBYTE(v72) = sub_245748270();
  sub_245747EE0();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v103 = v139;
  sub_245746FE8(v93, v139, &qword_27EE257A8, &qword_24574D538);
  v104 = v103 + *(v137 + 36);
  *v104 = v72;
  *(v104 + 8) = v96;
  *(v104 + 16) = v98;
  *(v104 + 24) = v100;
  *(v104 + 32) = v102;
  *(v104 + 40) = 0;
  sub_245747F90();
  v106 = v105 * 0.5;
  sub_245747F90();
  v108 = v107 * 0.5;
  v109 = v141;
  sub_245746FE8(v103, v141, &qword_27EE257B0, &qword_24574D540);
  v110 = (v109 + *(v140 + 36));
  *v110 = v106;
  v110[1] = v108;
  v111 = v148;
  sub_24573D1D0(v23, v148);
  v112 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v113 = swift_allocObject();
  sub_245747050(v111, v113 + v112, type metadata accessor for RGBLivenessView);
  v114 = v150;
  sub_24573D1D0(v23, v150);
  v115 = swift_allocObject();
  sub_245747050(v114, v115 + v112, type metadata accessor for RGBLivenessView);
  sub_245747274();
  v116 = v142;
  sub_2457483B0();

  sub_2456EEF50(v109, &qword_27EE257B8, &qword_24574D548);
  sub_245748510();
  v117 = v154;
  swift_getKeyPath();
  v154 = v117;
  sub_245747CA0();

  v118 = *(v117 + 897);

  KeyPath = swift_getKeyPath();
  v120 = swift_allocObject();
  *(v120 + 16) = v118;
  v121 = v151;
  (*(v143 + 32))(v151, v116, v144);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25848, &qword_24574D5C0);
  v123 = (v121 + *(result + 36));
  *v123 = KeyPath;
  v123[1] = sub_245747A18;
  v123[2] = v120;
  return result;
}

uint64_t sub_2457411EC@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25850, &qword_24574D5C8);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v76 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25858, &qword_24574D5D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v78 = &v76 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25860, &qword_24574D5D8) - 8;
  MEMORY[0x28223BE20](v80);
  v79 = &v76 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25868, &qword_24574D5E0) - 8;
  MEMORY[0x28223BE20](v81);
  v77 = &v76 - v9;
  v10 = sub_2457480A0();
  sub_2457423F0(&v89);
  v76 = v89;
  v11 = v90;
  v12 = BYTE8(v90);
  v13 = v91;
  v88 = 0;
  v87 = BYTE8(v90);
  v14 = sub_2457482E0();
  KeyPath = swift_getKeyPath();
  *&v83 = v10;
  *(&v83 + 1) = 0x4010000000000000;
  LOBYTE(v84[0]) = 0;
  *(v84 + 8) = v76;
  *(&v84[1] + 1) = v11;
  LOBYTE(v85) = v12;
  *(&v85 + 1) = v13;
  *&v86 = KeyPath;
  *(&v86 + 1) = v14;
  sub_2457482B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25870, &qword_24574D5E8);
  sub_245747894();
  sub_245748360();
  v91 = v84[1];
  v92 = v85;
  v93 = v86;
  v89 = v83;
  v90 = v84[0];
  sub_2456EEF50(&v89, &qword_27EE25870, &qword_24574D5E8);
  v16 = sub_245748420();
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25890, &qword_24574D5F8) + 36)] = v16;
  LOBYTE(v16) = sub_245748250();
  sub_245747EE0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25898, &qword_24574D600) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(v16) = sub_245748290();
  sub_245747EE0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258A0, &qword_24574D608) + 36)];
  *v34 = v16;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_245748410();
  v35 = sub_245748430();

  v36 = &v4[*(v2 + 44)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25688, &qword_24574D368);
  v38 = v36 + *(v37 + 52);
  v39 = *(sub_245747FD0() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_2457480B0();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v38 = _Q0;
  *v36 = v35;
  *(v36 + *(v37 + 56)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v47 = v83;
  swift_getKeyPath();
  *&v83 = v47;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  LODWORD(v40) = *(v47 + 864);

  v48 = 12.0;
  if (v40)
  {
    v49 = 12.0;
  }

  else
  {
    v49 = 4.0;
  }

  sub_245748510();
  v50 = v83;
  swift_getKeyPath();
  *&v83 = v50;
  sub_245747CA0();

  v51 = *(v50 + 864);

  if (!v51)
  {
    v48 = 4.0;
  }

  v52 = v78;
  sub_245746FE8(v4, v78, &qword_27EE25850, &qword_24574D5C8);
  v53 = (v52 + *(v6 + 44));
  v54 = v52;
  *v53 = v49;
  v53[1] = v48;
  sub_245748510();
  v55 = v83;
  swift_getKeyPath();
  *&v83 = v55;
  sub_245747CA0();
  v56 = v77;

  LODWORD(v52) = *(v55 + 864);

  if (v52)
  {
    v57 = 1.0;
  }

  else
  {
    v57 = 0.5;
  }

  sub_2457485E0();
  v59 = v58;
  v61 = v60;
  v62 = v79;
  sub_245746FE8(v54, v79, &qword_27EE25858, &qword_24574D5D0);
  v63 = v62 + *(v80 + 44);
  *v63 = v57;
  *(v63 + 8) = v57;
  *(v63 + 16) = v59;
  *(v63 + 24) = v61;
  sub_245748510();
  v64 = v83;
  swift_getKeyPath();
  *&v83 = v64;
  sub_245747CA0();

  v65 = *(v64 + 864);

  if (v65)
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  sub_245746FE8(v62, v56, &qword_27EE25860, &qword_24574D5D8);
  *(v56 + *(v81 + 44)) = v66;
  sub_245748510();
  v67 = v83;
  swift_getKeyPath();
  *&v83 = v67;
  sub_245747CA0();

  v68 = *(v67 + 864);

  v70 = 0;
  if (v68 == 1)
  {
    v70 = MEMORY[0x245D70390](v69, 0.5, 1.0, 0.0);
  }

  sub_245748510();
  v71 = v83;
  swift_getKeyPath();
  *&v83 = v71;
  sub_245747CA0();

  v72 = *(v71 + 864);

  v73 = v82;
  sub_245746FE8(v56, v82, &qword_27EE25868, &qword_24574D5E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE258A8, &qword_24574D638);
  v75 = v73 + *(result + 36);
  *v75 = v70;
  *(v75 + 8) = v72;
  return result;
}

uint64_t sub_2457419F0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  if ((a1 & 1) == 0)
  {
    v14 = type metadata accessor for RGBLivenessView(0);
    (*(v6 + 16))(v8, *(a2 + *(v14 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_245741C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v100 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25668, &qword_24574D348);
  MEMORY[0x28223BE20](v96);
  v6 = &v85 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25670, &qword_24574D350);
  MEMORY[0x28223BE20](v98);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25678, &qword_24574D358);
  v10 = MEMORY[0x28223BE20](v9);
  v99 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25680, &qword_24574D360);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v101 = a1;
  sub_245748510();
  v17 = v102;
  swift_getKeyPath();
  v102 = v17;
  v95 = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v18 = *(v17 + 608);
  v19 = *(v17 + 616);

  if (v19)
  {
    v85 = a3;
    v90 = v14;
    v91 = v8;
    v92 = v16;
    v93 = v13;
    v94 = v9;
    v102 = v18;
    v103 = v19;
    sub_24573ED88();
    v20 = sub_245748330();
    v22 = v21;
    v24 = v23;
    v102 = sub_245748420();
    v25 = sub_245748300();
    v27 = v26;
    v29 = v28;
    sub_24574674C(v20, v22, v24 & 1);

    type metadata accessor for RGBLivenessView(0);
    v89 = sub_245748320();
    v88 = v30;
    LOBYTE(v22) = v31;
    v87 = v32;
    sub_24574674C(v25, v27, v29 & 1);

    v86 = sub_245748250();
    sub_245747EE0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    LOBYTE(v20) = v22 & 1;
    v105 = v22 & 1;
    v104 = 0;
    LOBYTE(v25) = sub_245748290();
    sub_245747EE0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v102) = 0;
    sub_245748410();
    v49 = sub_245748430();

    sub_245748410();
    v50 = sub_245748430();

    v51 = &v6[*(v96 + 36)];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25688, &qword_24574D368);
    v53 = v51 + *(v52 + 52);
    v54 = *(sub_245747FD0() + 20);
    v55 = *MEMORY[0x277CE0118];
    v56 = sub_2457480B0();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    __asm { FMOV            V0.2D, #5.0 }

    *v53 = _Q0;
    *v51 = v50;
    *(v51 + *(v52 + 56)) = 256;
    v62 = v88;
    *v6 = v89;
    *(v6 + 1) = v62;
    v6[16] = v20;
    *(v6 + 3) = v87;
    v6[32] = v86;
    *(v6 + 5) = v34;
    *(v6 + 6) = v36;
    *(v6 + 7) = v38;
    *(v6 + 8) = v40;
    v6[72] = 0;
    v6[80] = v25;
    *(v6 + 11) = v42;
    *(v6 + 12) = v44;
    *(v6 + 13) = v46;
    *(v6 + 14) = v48;
    v6[120] = 0;
    *(v6 + 16) = v49;
    *(v6 + 17) = 0x4008000000000000;
    *(v6 + 18) = 0;
    *(v6 + 19) = 0;
    v63 = sub_245748260();
    sub_245748510();
    v64 = v102;
    swift_getKeyPath();
    v102 = v64;
    sub_245747CA0();

    if ((*(v64 + 560) & 1) == 0)
    {
      sub_245747D10();
      sub_245747D10();
    }

    v66 = v91;
    sub_245747EE0();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    sub_245746FE8(v6, v66, &qword_27EE25668, &qword_24574D348);
    v75 = v66 + *(v98 + 36);
    *v75 = v63;
    *(v75 + 8) = v68;
    *(v75 + 16) = v70;
    *(v75 + 24) = v72;
    *(v75 + 32) = v74;
    *(v75 + 40) = 0;
    sub_245748510();
    v76 = v102;
    swift_getKeyPath();
    v102 = v76;
    sub_245747CA0();

    v77 = *(v76 + 608);
    v78 = *(v76 + 616);

    v79 = v94;
    v80 = v93;
    v81 = v92;
    if (v78)
    {
    }

    else
    {
      v77 = 0;
    }

    v82 = v66;
    v83 = v99;
    sub_245746FE8(v82, v99, &qword_27EE25670, &qword_24574D350);
    v84 = (v83 + *(v79 + 36));
    *v84 = 0;
    v84[1] = v77;
    v84[2] = v78;
    sub_245746FE8(v83, v80, &qword_27EE25678, &qword_24574D358);
    sub_245703098(v80, v81, &qword_27EE25678, &qword_24574D358);
    swift_storeEnumTagMultiPayload();
    sub_245746B9C();
    sub_245748180();
    return sub_2456EEF50(v80, &qword_27EE25678, &qword_24574D358);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_245746B9C();
    return sub_245748180();
  }
}

uint64_t sub_2457423F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v2 = *(v10 + 840);

  sub_245748510();
  swift_getKeyPath();
  sub_245747CA0();

  sub_24573ED88();
  v3 = sub_245748330();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_2457479C0(v3, v5, v7);

  sub_24574674C(v3, v5, v7);
}

uint64_t sub_2457425BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25458, &qword_24574D020);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25460, &qword_24574D028);
  v29 = *(v31 - 8);
  v9 = v29;
  v10 = MEMORY[0x28223BE20](v31);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v12;
  v36 = a1;
  sub_245748240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25468, &qword_24574D030);
  v13 = MEMORY[0x277CE1198];
  sub_245747978(&qword_27EE25470, &qword_27EE25468, &qword_24574D030, MEMORY[0x277CE1198]);
  sub_245747EF0();
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25478, &qword_24574D038);
  sub_245747978(&qword_27EE25480, &qword_27EE25478, &qword_24574D038, v13);
  sub_245748190();
  v14 = sub_245748270();
  type metadata accessor for RGBLivenessView(0);
  sub_245747EE0();
  v15 = &v8[*(v4 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v20 = *(v9 + 16);
  v21 = v31;
  v22 = v32;
  v23 = v30;
  v20(v32, v30, v31);
  v24 = v33;
  sub_245703098(v8, v33, &qword_27EE25458, &qword_24574D020);
  v25 = v34;
  v20(v34, v22, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25488, &qword_24574D040);
  sub_245703098(v24, &v25[*(v26 + 48)], &qword_27EE25458, &qword_24574D020);
  sub_2456EEF50(v8, &qword_27EE25458, &qword_24574D020);
  v27 = *(v29 + 8);
  v27(v23, v21);
  sub_2456EEF50(v24, &qword_27EE25458, &qword_24574D020);
  return (v27)(v22, v21);
}

uint64_t sub_245742940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2457480C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255F0, &qword_24574D218);
  return sub_245742998(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_245742998@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57[2] = a1;
  v66 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255F8, &qword_24574D220) - 8;
  v2 = MEMORY[0x28223BE20](v64);
  v65 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = v57 - v5;
  MEMORY[0x28223BE20](v4);
  v63 = v57 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25600, &qword_24574D228);
  v67 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v60 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = v57 - v10;
  MEMORY[0x28223BE20](v9);
  v58 = v57 - v11;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v12 = *&v105[0];
  swift_getKeyPath();
  *&v105[0] = v12;
  v57[0] = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v13 = *(v12 + 656);
  v14 = *(v12 + 664);

  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *&v105[0] = v15;
  *(&v105[0] + 1) = v16;
  sub_24573ED88();
  v17 = sub_245748330();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_245748590();
  sub_245747FE0();
  v24 = v21 & 1;
  v106 = v21 & 1;
  KeyPath = swift_getKeyPath();
  v26 = sub_2457482D0();
  v27 = swift_getKeyPath();
  *&v87 = v17;
  *(&v87 + 1) = v19;
  LOBYTE(v88) = v24;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v92 = v101;
  *(&v88 + 1) = v23;
  *&v96 = KeyPath;
  BYTE8(v96) = 0;
  *&v97 = v27;
  *(&v97 + 1) = v26;
  sub_2457482C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25608, &qword_24574D2B8);
  sub_245746A0C();
  sub_245748360();
  v105[8] = v95;
  v105[9] = v96;
  v105[10] = v97;
  v105[4] = v91;
  v105[5] = v92;
  v105[6] = v93;
  v105[7] = v94;
  v105[0] = v87;
  v105[1] = v88;
  v105[2] = v89;
  v105[3] = v90;
  sub_2456EEF50(v105, &qword_27EE25608, &qword_24574D2B8);
  sub_245748510();
  v28 = v87;
  swift_getKeyPath();
  *&v87 = v28;
  sub_245747CA0();

  v29 = *(v28 + 672);
  v30 = *(v28 + 680);

  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v30)
  {
    v32 = v30;
  }

  *&v87 = v31;
  *(&v87 + 1) = v32;
  v33 = sub_245748330();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_245748590();
  sub_245747FE0();
  v40 = v37 & 1;
  v86 = v37 & 1;
  v41 = swift_getKeyPath();
  v42 = sub_2457482D0();
  v43 = swift_getKeyPath();
  *&v68 = v33;
  *(&v68 + 1) = v35;
  LOBYTE(v69) = v40;
  *(&v69 + 1) = v39;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v70 = v79;
  v71 = v80;
  v73 = v82;
  v72 = v81;
  *&v77 = v41;
  BYTE8(v77) = 0;
  *&v78 = v43;
  *(&v78 + 1) = v42;
  sub_2457482B0();
  v44 = v59;
  sub_245748360();
  v95 = v76;
  v96 = v77;
  v97 = v78;
  v91 = v72;
  v92 = v73;
  v93 = v74;
  v94 = v75;
  v87 = v68;
  v88 = v69;
  v89 = v70;
  v90 = v71;
  sub_2456EEF50(&v87, &qword_27EE25608, &qword_24574D2B8);
  LODWORD(v33) = sub_2457481E0();
  v45 = v67;
  v47 = v61;
  v46 = v62;
  (*(v67 + 32))(v62, v44, v61);
  v48 = v63;
  *(v46 + *(v64 + 44)) = v33;
  sub_245746FE8(v46, v48, &qword_27EE255F8, &qword_24574D220);
  v49 = *(v45 + 16);
  v50 = v60;
  v51 = v58;
  v49(v60, v58, v47);
  v52 = v65;
  sub_245703098(v48, v65, &qword_27EE255F8, &qword_24574D220);
  v53 = v66;
  v49(v66, v50, v47);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25648, &qword_24574D300);
  sub_245703098(v52, &v53[*(v54 + 48)], &qword_27EE255F8, &qword_24574D220);
  sub_2456EEF50(v48, &qword_27EE255F8, &qword_24574D220);
  v55 = *(v67 + 8);
  v55(v51, v47);
  sub_2456EEF50(v52, &qword_27EE255F8, &qword_24574D220);
  return (v55)(v50, v47);
}

uint64_t sub_2457430D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RGBLivenessView(0) + 32));
  *a2 = sub_2457480C0();
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25490, &qword_24574D048);
  return sub_24574313C(a2 + *(v4 + 44));
}

uint64_t sub_24574313C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25498, &qword_24574D050);
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A0, &qword_24574D058);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A8, &qword_24574D060);
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254B0, &qword_24574D068);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v15 = v39;
  swift_getKeyPath();
  v39 = v15;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  if (*(v15 + 696))
  {

LABEL_4:
    sub_245743654(v9);
    sub_245746FE8(v9, v14, &qword_27EE254A8, &qword_24574D060);
    v17 = 0;
    goto LABEL_5;
  }

  swift_getKeyPath();
  v39 = v15;
  sub_245747CA0();

  v16 = *(v15 + 704);

  if (v16 == 1)
  {
    goto LABEL_4;
  }

  v17 = 1;
LABEL_5:
  v18 = 1;
  (*(v7 + 56))(v14, v17, 1, v32);
  sub_245748510();
  v19 = v39;
  swift_getKeyPath();
  v39 = v19;
  sub_245747CA0();

  v20 = *(v19 + 720);

  v21 = v34;
  if (v20)
  {
    v22 = v31;
    sub_245743D18(v31);
    v24 = v35;
    v23 = v36;
    (*(v35 + 32))(v21, v22, v36);
    v18 = 0;
  }

  else
  {
    v24 = v35;
    v23 = v36;
  }

  (*(v24 + 56))(v21, v18, 1, v23);
  v25 = v33;
  sub_245703098(v14, v33, &qword_27EE254B0, &qword_24574D068);
  v26 = v37;
  sub_245703098(v21, v37, &qword_27EE254A0, &qword_24574D058);
  v27 = v38;
  sub_245703098(v25, v38, &qword_27EE254B0, &qword_24574D068);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254B8, &qword_24574D0E8);
  sub_245703098(v26, v27 + *(v28 + 48), &qword_27EE254A0, &qword_24574D058);
  sub_2456EEF50(v21, &qword_27EE254A0, &qword_24574D058);
  sub_2456EEF50(v14, &qword_27EE254B0, &qword_24574D068);
  sub_2456EEF50(v26, &qword_27EE254A0, &qword_24574D058);
  return sub_2456EEF50(v25, &qword_27EE254B0, &qword_24574D068);
}

uint64_t sub_245743654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_245748220();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254C0, &qword_24574D0F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254C8, &qword_24574D0F8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D0, &qword_24574D100);
  MEMORY[0x28223BE20](v44);
  v45 = &v41 - v17;
  sub_24573D1D0(v2, &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_245747050(&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for RGBLivenessView);
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D8, &qword_24574D108);
  sub_2457461A8();
  sub_2457484D0();
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25548, &qword_24574D140) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
  v22 = *MEMORY[0x277CDF420];
  v23 = sub_245747F00();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = &v12[*(v10 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25550, &qword_24574D178);
  sub_245747FF0();
  *v24 = swift_getKeyPath();
  sub_245748210();
  sub_2457465B0();
  sub_2457479D0(&qword_27EE25580, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v25 = v42;
  sub_245748370();
  (*(v43 + 8))(v6, v25);
  sub_2456EEF50(v12, &qword_27EE254C0, &qword_24574D0F0);
  v26 = sub_24573C5F0();
  KeyPath = swift_getKeyPath();
  v48 = v26;
  v28 = sub_245747F70();
  v29 = &v16[*(v14 + 44)];
  *v29 = KeyPath;
  v29[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v30 = v48;
  swift_getKeyPath();
  v48 = v30;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  if (*(v30 + 705))
  {
    v31 = 1;
  }

  else
  {
    swift_getKeyPath();
    v48 = v30;
    sub_245747CA0();

    v31 = *(v30 + 704);
  }

  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v45;
  sub_245746FE8(v16, v45, &qword_27EE254C8, &qword_24574D0F8);
  v35 = (v34 + *(v44 + 36));
  *v35 = v32;
  v35[1] = sub_245747A18;
  v35[2] = v33;
  sub_245748510();
  v36 = v48;
  swift_getKeyPath();
  v48 = v36;
  sub_245747CA0();

  if (*(v36 + 696))
  {

    v37 = 1.0;
  }

  else
  {
    swift_getKeyPath();
    v48 = v36;
    sub_245747CA0();

    v38 = *(v36 + 704);

    if (v38)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.0;
    }
  }

  v39 = v46;
  sub_245746FE8(v34, v46, &qword_27EE254D0, &qword_24574D100);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254A8, &qword_24574D060);
  *(v39 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_245743D18@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_245748200();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245748470();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RGBLivenessView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25590, &qword_24574D1E8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25598, &qword_24574D1F0);
  MEMORY[0x28223BE20](v41);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255A0, &qword_24574D1F8);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255A8, &qword_24574D200);
  MEMORY[0x28223BE20](v44);
  v19 = &v40 - v18;
  sub_24573D1D0(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_245747050(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for RGBLivenessView);
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE255B0, &qword_24574D208);
  sub_245746ECC(&qword_27EE255B8, &qword_27EE255B0, &qword_24574D208);
  sub_2457484D0();
  v22 = &v12[*(v10 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
  v24 = *MEMORY[0x277CDF420];
  v25 = sub_245747F00();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v26 = v53;
  swift_getKeyPath();
  v53 = v26;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  if (*(v26 + 560))
  {

LABEL_5:
    v30 = sub_245748440();
    goto LABEL_6;
  }

  v27 = sub_245747D10();
  v28 = sub_245747D10();

  if (v27 != v28)
  {
    goto LABEL_5;
  }

  v29 = [objc_opt_self() systemOrangeColor];
  v30 = sub_245748450();
LABEL_6:
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v53 = v31;
  v33 = sub_245747F70();
  sub_245746FE8(v12, v14, &qword_27EE25590, &qword_24574D1E8);
  v34 = &v14[*(v41 + 36)];
  *v34 = KeyPath;
  v34[1] = v33;
  sub_2457482A0();
  sub_24574677C();
  sub_245748360();
  sub_2456EEF50(v14, &qword_27EE25598, &qword_24574D1F0);
  v35 = &v19[*(v44 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25550, &qword_24574D178);
  sub_245747FF0();
  *v35 = swift_getKeyPath();
  (*(v42 + 32))(v19, v17, v43);
  v36 = v45;
  sub_245748460();
  v37 = v48;
  sub_2457481F0();
  sub_245746918();
  sub_2457479D0(&qword_27EE255E8, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  v38 = v51;
  sub_245748380();
  (*(v50 + 8))(v37, v38);
  (*(v46 + 8))(v36, v47);
  return sub_2456EEF50(v19, &qword_27EE255A8, &qword_24574D200);
}

uint64_t sub_245744430(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(a1 + *(type metadata accessor for RGBLivenessView(0) + 20));
  sub_2456FDD3C();
  (*(v4 + 16))(v6, v11 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v3);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

__n128 sub_245744650@<Q0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254F0, &qword_24574D110);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  sub_245744788(v10 - v4);
  sub_245748580();
  sub_245747FE0();
  sub_245746FE8(v5, a2, &qword_27EE254F0, &qword_24574D110);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE254D8, &qword_24574D108) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_245744788@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25588, &qword_24574D1E0);
  MEMORY[0x28223BE20](v36);
  v2 = &v35 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25510, &qword_24574D120);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  v6 = v38;
  swift_getKeyPath();
  v38 = v6;
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v7 = *(v6 + 704);

  if (v7 == 1)
  {
    sub_245747F20();
    v8 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25520, &qword_24574D128) + 36)];
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25540, &qword_24574D138) + 28);
    v10 = *MEMORY[0x277CDF440];
    v11 = sub_245747F00();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    v12 = [objc_opt_self() systemGrayColor];
    v13 = sub_245748450();
    KeyPath = swift_getKeyPath();
    v38 = v13;
    v15 = sub_245747F70();
    v16 = &v5[*(v3 + 36)];
    *v16 = KeyPath;
    v16[1] = v15;
    sub_245703098(v5, v2, &qword_27EE25510, &qword_24574D120);
    swift_storeEnumTagMultiPayload();
    sub_245746344();
    sub_245748180();
    return sub_2456EEF50(v5, &qword_27EE25510, &qword_24574D120);
  }

  else
  {
    sub_245748510();
    v18 = v38;
    swift_getKeyPath();
    v38 = v18;
    sub_245747CA0();

    v19 = *(v18 + 688);
    v20 = *(v18 + 696);

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0xE000000000000000;
    if (v20)
    {
      v22 = v20;
    }

    v38 = v21;
    v39 = v22;
    sub_24573ED88();
    v23 = sub_245748330();
    v25 = v24;
    v27 = v26;
    v28 = sub_245748310();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24574674C(v23, v25, v27 & 1);

    *v2 = v28;
    *(v2 + 1) = v30;
    v2[16] = v32 & 1;
    *(v2 + 3) = v34;
    swift_storeEnumTagMultiPayload();
    sub_245746344();
    return sub_245748180();
  }
}

uint64_t sub_245744BA0(uint64_t a1)
{
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = *(a1 + *(type metadata accessor for RGBLivenessView(0) + 20));
  sub_2456FDD3C();
  (*(v6 + 16))(v8, v13 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  *v4 = (*(v13 + 16) & 1) == 0;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

__n128 sub_245744DD0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v2 = *(v14 + 712);
  v3 = *(v14 + 720);

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v5 = v3;
  }

  *&v15 = v4;
  *(&v15 + 1) = v5;
  sub_24573ED88();
  v6 = sub_245748330();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_245748580();
  sub_245747FE0();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 96) = v19;
  *(a1 + 112) = v20;
  *(a1 + 128) = v21;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  result = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_245744F70@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  sub_245748510();
  swift_getKeyPath();
  sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v2 = *(v4 + 888);

  *a1 = v2;
  return result;
}

uint64_t sub_245745048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25368, &qword_24574CDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25370, &qword_24574CDF8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25378, &qword_24574CE00);
  MEMORY[0x28223BE20](v66);
  v10 = &v54 - v9;
  v11 = type metadata accessor for RGBLivenessView(0);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25380, &qword_24574CE08);
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25388, &qword_24574CE10);
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v61 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  v69 = a1;
  sub_245748510();
  v21 = v70;
  swift_getKeyPath();
  v70 = v21;
  v65 = sub_2457479D0(&qword_27EE24F20, type metadata accessor for RGBLivenessViewConfig, &unk_24574B438);
  sub_245747CA0();

  v22 = *(v21 + 792);
  v23 = *(v21 + 800);

  v56 = v12;
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v23)
  {
    v70 = v22;
    v71 = v23;
    sub_24573D1D0(v69, &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = *(v58 + 80);
    v25 = swift_allocObject();
    sub_245747050(&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + ((v24 + 16) & ~v24), type metadata accessor for RGBLivenessView);
  }

  else
  {
    v55 = v20;
    v26 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v69;
    sub_245748510();
    v28 = v70;
    swift_getKeyPath();
    v70 = v28;
    sub_245747CA0();

    v29 = *(v28 + 776);
    v30 = *(v28 + 784);

    v70 = v29;
    v71 = v30;
    sub_24573D1D0(v27, v26);
    v24 = *(v58 + 80);
    v31 = swift_allocObject();
    sub_245747050(v26, v31 + ((v24 + 16) & ~v24), type metadata accessor for RGBLivenessView);
  }

  sub_24573ED88();
  sub_2457484F0();
  v32 = v68;
  v58 = *(v68 + 16);
  (v58)(v10, v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_245747978(&qword_27EE25390, &qword_27EE25380, &qword_24574CE08, MEMORY[0x277CDF028]);
  sub_245748180();
  v33 = *(v32 + 8);
  v68 = v32 + 8;
  v55 = v33;
  v33(v15, v13);
  sub_245748510();
  v34 = v70;
  swift_getKeyPath();
  v70 = v34;
  sub_245747CA0();

  v35 = *(v34 + 808);
  v36 = *(v34 + 816);

  if (v36)
  {
    v70 = v35;
    v71 = v36;
    v37 = v57;
    sub_24573D1D0(v69, v57);
    v38 = swift_allocObject();
    sub_245747050(v37, v38 + ((v24 + 16) & ~v24), type metadata accessor for RGBLivenessView);
    sub_24573ED88();
    sub_2457484F0();
  }

  else
  {
    sub_245748510();
    v39 = v70;
    swift_getKeyPath();
    v70 = v39;
    sub_245747CA0();

    v40 = *(v39 + 824);
    v41 = *(v39 + 832);

    if (!v41)
    {
      v47 = 1;
      v46 = v62;
      goto LABEL_9;
    }

    v70 = v40;
    v71 = v41;
    v42 = v54;
    sub_245747EC0();
    v43 = sub_245747ED0();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = v57;
    sub_24573D1D0(v69, v57);
    v45 = swift_allocObject();
    sub_245747050(v44, v45 + ((v24 + 16) & ~v24), type metadata accessor for RGBLivenessView);
    sub_24573ED88();
    sub_2457484E0();
  }

  v46 = v62;
  (v58)(v10, v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_245748180();
  v55(v15, v13);
  v47 = 0;
LABEL_9:
  (*(v59 + 56))(v46, v47, 1, v60);
  v48 = v67;
  v49 = v61;
  sub_245703098(v67, v61, &qword_27EE25388, &qword_24574CE10);
  v50 = v63;
  sub_245703098(v46, v63, &qword_27EE25370, &qword_24574CDF8);
  v51 = v64;
  sub_245703098(v49, v64, &qword_27EE25388, &qword_24574CE10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE25398, &qword_24574CEB8);
  sub_245703098(v50, v51 + *(v52 + 48), &qword_27EE25370, &qword_24574CDF8);
  sub_2456EEF50(v46, &qword_27EE25370, &qword_24574CDF8);
  sub_2456EEF50(v48, &qword_27EE25388, &qword_24574CE10);
  sub_2456EEF50(v50, &qword_27EE25370, &qword_24574CDF8);
  return sub_2456EEF50(v49, &qword_27EE25388, &qword_24574CE10);
}

uint64_t sub_245745A00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for RGBLivenessView(0);
  (*(v5 + 16))(v7, *(a1 + *(v12 + 20)) + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_245745C54(uint64_t a1)
{
  sub_245745D18(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RGBLivenessController(319);
    if (v2 <= 0x3F)
    {
      sub_2457481B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245745D18(uint64_t a1)
{
  if (!qword_27EE25360)
  {
    type metadata accessor for RGBLivenessViewConfig(255);
    v1 = sub_245748550();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE25360);
    }
  }
}

unint64_t sub_245745E38()
{
  result = qword_27EE253B0;
  if (!qword_27EE253B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253A8, &qword_24574CEF0);
    sub_245745EF0();
    sub_245747978(&qword_27EE253E8, &qword_27EE253F0, &qword_24574CF10, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE253B0);
  }

  return result;
}

unint64_t sub_245745EF0()
{
  result = qword_27EE253B8;
  if (!qword_27EE253B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253C0, &qword_24574CEF8);
    sub_245747978(&qword_27EE253C8, &qword_27EE253D0, &qword_24574CF00, MEMORY[0x277CDF028]);
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE253B8);
  }

  return result;
}

unint64_t sub_245746060()
{
  result = qword_27EE25400;
  if (!qword_27EE25400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE253F8, &qword_24574CF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25400);
  }

  return result;
}

uint64_t sub_2457460F4@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for RGBLivenessView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_24573EEA8(v5, a2);
}

unint64_t sub_2457461A8()
{
  result = qword_27EE254E0;
  if (!qword_27EE254E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254D8, &qword_24574D108);
    sub_245746234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254E0);
  }

  return result;
}

unint64_t sub_245746234()
{
  result = qword_27EE254E8;
  if (!qword_27EE254E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254F0, &qword_24574D110);
    sub_2457462B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254E8);
  }

  return result;
}

unint64_t sub_2457462B8()
{
  result = qword_27EE254F8;
  if (!qword_27EE254F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25500, &qword_24574D118);
    sub_245746344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE254F8);
  }

  return result;
}

unint64_t sub_245746344()
{
  result = qword_27EE25508;
  if (!qword_27EE25508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25510, &qword_24574D120);
    sub_2457463FC();
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25508);
  }

  return result;
}

unint64_t sub_2457463FC()
{
  result = qword_27EE25518;
  if (!qword_27EE25518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25520, &qword_24574D128);
    sub_245747978(&qword_27EE25528, &qword_27EE25530, &qword_24574D130, MEMORY[0x277CDD7F8]);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25518);
  }

  return result;
}

uint64_t sub_2457464E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_2457465B0()
{
  result = qword_27EE25558;
  if (!qword_27EE25558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE254C0, &qword_24574D0F0);
    sub_245746668();
    sub_245747978(&qword_27EE25578, &qword_27EE25550, &qword_24574D178, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25558);
  }

  return result;
}

unint64_t sub_245746668()
{
  result = qword_27EE25560;
  if (!qword_27EE25560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25548, &qword_24574D140);
    sub_245747978(&qword_27EE25568, &qword_27EE25570, &qword_24574D1B0, MEMORY[0x277CDF028]);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25560);
  }

  return result;
}

uint64_t sub_24574674C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24574677C()
{
  result = qword_27EE255C0;
  if (!qword_27EE255C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25598, &qword_24574D1F0);
    sub_245746834();
    sub_245747978(&qword_27EE253D8, &qword_27EE253E0, &qword_24574CF08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255C0);
  }

  return result;
}

unint64_t sub_245746834()
{
  result = qword_27EE255C8;
  if (!qword_27EE255C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25590, &qword_24574D1E8);
    sub_245747978(&qword_27EE255D0, &qword_27EE255D8, &qword_24574D210, MEMORY[0x277CDF028]);
    sub_245747978(&qword_27EE25538, &qword_27EE25540, &qword_24574D138, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255C8);
  }

  return result;
}

unint64_t sub_245746918()
{
  result = qword_27EE255E0;
  if (!qword_27EE255E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE255A8, &qword_24574D200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25598, &qword_24574D1F0);
    sub_24574677C();
    swift_getOpaqueTypeConformance2();
    sub_245747978(&qword_27EE25578, &qword_27EE25550, &qword_24574D178, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE255E0);
  }

  return result;
}

unint64_t sub_245746A0C()
{
  result = qword_27EE25610;
  if (!qword_27EE25610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25608, &qword_24574D2B8);
    sub_245746AC4();
    sub_245747978(&qword_27EE25638, &qword_27EE25640, &qword_24574D2D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25610);
  }

  return result;
}

unint64_t sub_245746AC4()
{
  result = qword_27EE25618;
  if (!qword_27EE25618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25620, &qword_24574D2C0);
    sub_245746ECC(&qword_27EE255B8, &qword_27EE255B0, &qword_24574D208);
    sub_245747978(&qword_27EE25628, &qword_27EE25630, &qword_24574D2C8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25618);
  }

  return result;
}

unint64_t sub_245746B9C()
{
  result = qword_27EE25690;
  if (!qword_27EE25690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25678, &qword_24574D358);
    sub_245746C54();
    sub_245747978(&qword_27EE256E0, &qword_27EE256E8, &qword_24574D388, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25690);
  }

  return result;
}

unint64_t sub_245746C54()
{
  result = qword_27EE25698;
  if (!qword_27EE25698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25670, &qword_24574D350);
    sub_245746CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25698);
  }

  return result;
}

unint64_t sub_245746CE0()
{
  result = qword_27EE256A0;
  if (!qword_27EE256A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25668, &qword_24574D348);
    sub_245746D98();
    sub_245747978(&qword_27EE256D8, &qword_27EE25688, &qword_24574D368, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256A0);
  }

  return result;
}

unint64_t sub_245746D98()
{
  result = qword_27EE256A8;
  if (!qword_27EE256A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE256B0, &qword_24574D370);
    sub_245746E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256A8);
  }

  return result;
}

unint64_t sub_245746E24()
{
  result = qword_27EE256B8;
  if (!qword_27EE256B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE256C0, &qword_24574D378);
    sub_245746ECC(&qword_27EE256C8, &qword_27EE256D0, &qword_24574D380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE256B8);
  }

  return result;
}

uint64_t sub_245746ECC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_245746F54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RGBLivenessView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_245746FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_245747050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for RGBLivenessView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE252C0, &qword_24574CCB0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_2457481B0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_245747204(char a1)
{
  v3 = *(type metadata accessor for RGBLivenessView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2457419F0(a1, v4);
}

unint64_t sub_245747274()
{
  result = qword_27EE257D0;
  if (!qword_27EE257D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257B8, &qword_24574D548);
    sub_245747300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257D0);
  }

  return result;
}

unint64_t sub_245747300()
{
  result = qword_27EE257D8;
  if (!qword_27EE257D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257B0, &qword_24574D540);
    sub_24574738C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257D8);
  }

  return result;
}

unint64_t sub_24574738C()
{
  result = qword_27EE257E0;
  if (!qword_27EE257E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257A8, &qword_24574D538);
    sub_245747418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257E0);
  }

  return result;
}

unint64_t sub_245747418()
{
  result = qword_27EE257E8;
  if (!qword_27EE257E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE257A0, &qword_24574D530);
    sub_2457474A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257E8);
  }

  return result;
}

unint64_t sub_2457474A4()
{
  result = qword_27EE257F0;
  if (!qword_27EE257F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25798, &qword_24574D528);
    sub_24574755C();
    sub_245747978(&qword_27EE25838, &qword_27EE25840, &qword_24574D590, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257F0);
  }

  return result;
}

unint64_t sub_24574755C()
{
  result = qword_27EE257F8;
  if (!qword_27EE257F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25790, &qword_24574D520);
    sub_2457475E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE257F8);
  }

  return result;
}

unint64_t sub_2457475E8()
{
  result = qword_27EE25800;
  if (!qword_27EE25800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25788, &qword_24574D518);
    sub_2457476A0();
    sub_245747978(&qword_27EE25838, &qword_27EE25840, &qword_24574D590, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25800);
  }

  return result;
}

unint64_t sub_2457476A0()
{
  result = qword_27EE25808;
  if (!qword_27EE25808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25780, &qword_24574D510);
    sub_245747758();
    sub_245747978(&qword_27EE25830, &qword_27EE25768, &qword_24574D4F8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25808);
  }

  return result;
}

unint64_t sub_245747758()
{
  result = qword_27EE25810;
  if (!qword_27EE25810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25778, &qword_24574D508);
    sub_245747810();
    sub_245747978(&qword_27EE25828, &qword_27EE257C8, &qword_24574D558, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25810);
  }

  return result;
}

unint64_t sub_245747810()
{
  result = qword_27EE25818;
  if (!qword_27EE25818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25820, &qword_24574D588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25818);
  }

  return result;
}

unint64_t sub_245747894()
{
  result = qword_27EE25878;
  if (!qword_27EE25878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE25870, &qword_24574D5E8);
    sub_245747978(&qword_27EE25880, &qword_27EE25888, &qword_24574D5F0, MEMORY[0x277CE1138]);
    sub_245747978(&qword_27EE25638, &qword_27EE25640, &qword_24574D2D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE25878);
  }

  return result;
}

uint64_t sub_245747978(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2457479C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2457479D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_245747A1C()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EE25900 = result;
  return result;
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x282138708](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}