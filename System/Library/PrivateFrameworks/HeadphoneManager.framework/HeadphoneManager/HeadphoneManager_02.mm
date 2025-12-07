uint64_t HeadphoneDevice.isCaseSoundSupported.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isCaseSoundSupported.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isCaseSoundSupported : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6F0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isCaseSoundSupported : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6F8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isCaseSoundSupported.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 59124);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isCaseSoundSupported.modify;
}

void HeadphoneDevice.isCaseSoundSupported.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$isCaseSoundSupported : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x708))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isCaseSoundSupported : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x710))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isCaseSoundSupported.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isCaseSoundSupported.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$isCaseSoundSupported.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 123);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 123);
  v6[4] = __swift_coroFrameAllocStub(v5, 123);
  HeadphoneDevice.$isCaseSoundSupported.getter();
  return HeadphoneDevice.$isCaseSoundSupported.modify;
}

void HeadphoneDevice.$isCaseSoundSupported.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$isCaseSoundSupported.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$isCaseSoundSupported.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._isCaseSoundSupported.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isCaseSoundSupported.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.caseSound@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.caseSound.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.caseSound.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.caseSound : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x720))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.caseSound : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x728))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.caseSound.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 37333);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.caseSound.modify;
}

void HeadphoneDevice.caseSound.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$caseSound : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x738))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$caseSound : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x740))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$caseSound.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$caseSound.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$caseSound.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 31717);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 31717);
  v6[4] = __swift_coroFrameAllocStub(v5, 31717);
  HeadphoneDevice.$caseSound.getter();
  return HeadphoneDevice.$caseSound.modify;
}

void HeadphoneDevice.$caseSound.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$caseSound.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$caseSound.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._caseSound.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__caseSound;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._caseSound.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__caseSound;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.airPodsServiceClient.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.airPodsServiceClient.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.airPodsServiceClient : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x750))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.airPodsServiceClient : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of BTAirPodsControlServiceClient?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x758))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HeadphoneDevice.isResettingCaseSoundOnError.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isResettingCaseSoundOnError.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isResettingCaseSoundOnError : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x768))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isResettingCaseSoundOnError : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x770))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isSettingCaseSoundValue@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.isSettingCaseSoundValue.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isSettingCaseSoundValue.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isSettingCaseSoundValue : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x780))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isSettingCaseSoundValue : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x788))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isSettingCaseSoundValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 18477);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isSettingCaseSoundValue.modify;
}

void HeadphoneDevice.isSettingCaseSoundValue.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$isSettingCaseSoundValue : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x798))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isSettingCaseSoundValue : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x7A0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isSettingCaseSoundValue.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isSettingCaseSoundValue.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$isSettingCaseSoundValue.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 12262);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 12262);
  v6[4] = __swift_coroFrameAllocStub(v5, 12262);
  HeadphoneDevice.$isSettingCaseSoundValue.getter();
  return HeadphoneDevice.$isSettingCaseSoundValue.modify;
}

void HeadphoneDevice.$isSettingCaseSoundValue.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$isSettingCaseSoundValue.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$isSettingCaseSoundValue.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._isSettingCaseSoundValue.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isSettingCaseSoundValue.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.endCallGesture@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCallConfig(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.endCallGesture.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.endCallGesture.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.endCallGesture : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.endCallGesture : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x7B8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.endCallGesture.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 34519);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.endCallGesture.modify;
}

void HeadphoneDevice.endCallGesture.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$endCallGesture : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x7C8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$endCallGesture : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x7D0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$endCallGesture.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$endCallGesture.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$endCallGesture.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 56857);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 56857);
  v6[4] = __swift_coroFrameAllocStub(v5, 56857);
  HeadphoneDevice.$endCallGesture.getter();
  return HeadphoneDevice.$endCallGesture.modify;
}

void HeadphoneDevice.$endCallGesture.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$endCallGesture.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$endCallGesture.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._endCallGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__endCallGesture;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._endCallGesture.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__endCallGesture;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.muteControlGesture@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCallConfig(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.muteControlGesture.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.muteControlGesture.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.muteControlGesture : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.muteControlGesture : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x7E8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.muteControlGesture.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 26195);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.muteControlGesture.modify;
}

void HeadphoneDevice.muteControlGesture.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$muteControlGesture : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x7F8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$muteControlGesture : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x800))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$muteControlGesture.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$muteControlGesture.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$muteControlGesture.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 29049);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 29049);
  v6[4] = __swift_coroFrameAllocStub(v5, 29049);
  HeadphoneDevice.$muteControlGesture.getter();
  return HeadphoneDevice.$muteControlGesture.modify;
}

void HeadphoneDevice.$muteControlGesture.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$muteControlGesture.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$muteControlGesture.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._muteControlGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._muteControlGesture.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.serialNumbers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t HeadphoneDevice.serialNumbers.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.serialNumbers.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.serialNumbers : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x810))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.serialNumbers : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of [Int : String](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x818))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.serialNumbers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 29379);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.serialNumbers.modify;
}

void HeadphoneDevice.serialNumbers.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t variable initialization expression of HeadphoneDevice._serialNumbers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
  _allocateUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for HeadphoneDevice.$serialNumbers : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x828))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$serialNumbers : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x830))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$serialNumbers.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$serialNumbers.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$serialNumbers.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 13217);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 13217);
  v6[4] = __swift_coroFrameAllocStub(v5, 13217);
  HeadphoneDevice.$serialNumbers.getter();
  return HeadphoneDevice.$serialNumbers.modify;
}

void HeadphoneDevice.$serialNumbers.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$serialNumbers.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$serialNumbers.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._serialNumbers.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._serialNumbers.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.selectiveSpeechListening@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.selectiveSpeechListening.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.selectiveSpeechListening.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.selectiveSpeechListening : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x840))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.selectiveSpeechListening : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x848))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.selectiveSpeechListening.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 13844);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.selectiveSpeechListening.modify;
}

void HeadphoneDevice.selectiveSpeechListening.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$selectiveSpeechListening : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x858))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$selectiveSpeechListening : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x860))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$selectiveSpeechListening.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$selectiveSpeechListening.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$selectiveSpeechListening.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 28236);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 28236);
  v6[4] = __swift_coroFrameAllocStub(v5, 28236);
  HeadphoneDevice.$selectiveSpeechListening.getter();
  return HeadphoneDevice.$selectiveSpeechListening.modify;
}

void HeadphoneDevice.$selectiveSpeechListening.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$selectiveSpeechListening.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$selectiveSpeechListening.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._selectiveSpeechListening.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._selectiveSpeechListening.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.conversationDetect@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.conversationDetect.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.conversationDetect.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.conversationDetect : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x870))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.conversationDetect : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x878))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.conversationDetect.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 59099);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.conversationDetect.modify;
}

void HeadphoneDevice.conversationDetect.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$conversationDetect : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x888))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$conversationDetect : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x890))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$conversationDetect.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$conversationDetect.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$conversationDetect.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 4402);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 4402);
  v6[4] = __swift_coroFrameAllocStub(v5, 4402);
  HeadphoneDevice.$conversationDetect.getter();
  return HeadphoneDevice.$conversationDetect.modify;
}

void HeadphoneDevice.$conversationDetect.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$conversationDetect.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$conversationDetect.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._conversationDetect.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__conversationDetect;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._conversationDetect.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__conversationDetect;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.adaptiveVolume@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.adaptiveVolume.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.adaptiveVolume.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.adaptiveVolume : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.adaptiveVolume : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x8A8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.adaptiveVolume.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 36695);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.adaptiveVolume.modify;
}

void HeadphoneDevice.adaptiveVolume.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$adaptiveVolume : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x8B8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$adaptiveVolume : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x8C0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$adaptiveVolume.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$adaptiveVolume.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$adaptiveVolume.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 4308);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 4308);
  v6[4] = __swift_coroFrameAllocStub(v5, 4308);
  HeadphoneDevice.$adaptiveVolume.getter();
  return HeadphoneDevice.$adaptiveVolume.modify;
}

void HeadphoneDevice.$adaptiveVolume.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$adaptiveVolume.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$adaptiveVolume.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._adaptiveVolume.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._adaptiveVolume.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelMain@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelMain.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelMain.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelMain : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8D0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelMain : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8D8))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 56967);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelMain.modify;
}

void HeadphoneDevice.batteryLevelMain.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryLevelMain : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x8E8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelMain : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x8F0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryLevelMain.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 34289);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 34289);
  v6[4] = __swift_coroFrameAllocStub(v5, 34289);
  HeadphoneDevice.$batteryLevelMain.getter();
  return HeadphoneDevice.$batteryLevelMain.modify;
}

void HeadphoneDevice.$batteryLevelMain.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryLevelMain.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryLevelMain.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryLevelMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateMain@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateMain.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateMain.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateMain : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x900))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateMain : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x908))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 40682);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateMain.modify;
}

void HeadphoneDevice.batteryStateMain.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryStateMain : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x918))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateMain : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x920))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryStateMain.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 24118);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 24118);
  v6[4] = __swift_coroFrameAllocStub(v5, 24118);
  HeadphoneDevice.$batteryStateMain.getter();
  return HeadphoneDevice.$batteryStateMain.modify;
}

void HeadphoneDevice.$batteryStateMain.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryStateMain.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryStateMain.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryStateMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelLeft.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelLeft : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x930))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelLeft : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x938))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 8251);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelLeft.modify;
}

void HeadphoneDevice.batteryLevelLeft.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryLevelLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x948))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x950))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryLevelLeft.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 3750);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 3750);
  v6[4] = __swift_coroFrameAllocStub(v5, 3750);
  HeadphoneDevice.$batteryLevelLeft.getter();
  return HeadphoneDevice.$batteryLevelLeft.modify;
}

void HeadphoneDevice.$batteryLevelLeft.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryLevelLeft.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryLevelLeft.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryLevelLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateLeft.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x960))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x968))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 30892);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateLeft.modify;
}

void HeadphoneDevice.batteryStateLeft.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryStateLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x978))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x980))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryStateLeft.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 44784);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 44784);
  v6[4] = __swift_coroFrameAllocStub(v5, 44784);
  HeadphoneDevice.$batteryStateLeft.getter();
  return HeadphoneDevice.$batteryStateLeft.modify;
}

void HeadphoneDevice.$batteryStateLeft.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryStateLeft.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryStateLeft.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryStateLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelRight@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelRight.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelRight : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x990))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelRight : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x998))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 22784);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelRight.modify;
}

void HeadphoneDevice.batteryLevelRight.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryLevelRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x9A8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x9B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryLevelRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 64238);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 64238);
  v6[4] = __swift_coroFrameAllocStub(v5, 64238);
  HeadphoneDevice.$batteryLevelRight.getter();
  return HeadphoneDevice.$batteryLevelRight.modify;
}

void HeadphoneDevice.$batteryLevelRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryLevelRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryLevelRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryLevelRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateRight.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9C0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x9C8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 41695);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateRight.modify;
}

void HeadphoneDevice.batteryStateRight.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryStateRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x9D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x9E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryStateRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 35057);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 35057);
  v6[4] = __swift_coroFrameAllocStub(v5, 35057);
  HeadphoneDevice.$batteryStateRight.getter();
  return HeadphoneDevice.$batteryStateRight.modify;
}

void HeadphoneDevice.$batteryStateRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryStateRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryStateRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryStateRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelCase@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelCase.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelCase.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelCase : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelCase : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9F8))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 34296);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelCase.modify;
}

void HeadphoneDevice.batteryLevelCase.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryLevelCase : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA08))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelCase : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA10))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryLevelCase.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 50190);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 50190);
  v6[4] = __swift_coroFrameAllocStub(v5, 50190);
  HeadphoneDevice.$batteryLevelCase.getter();
  return HeadphoneDevice.$batteryLevelCase.modify;
}

void HeadphoneDevice.$batteryLevelCase.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryLevelCase.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryLevelCase.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryLevelCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateCase@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateCase.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateCase.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateCase : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA20))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateCase : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xA28))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 63265);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateCase.modify;
}

void HeadphoneDevice.batteryStateCase.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryStateCase : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA38))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateCase : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA40))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryStateCase.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 51829);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 51829);
  v6[4] = __swift_coroFrameAllocStub(v5, 51829);
  HeadphoneDevice.$batteryStateCase.getter();
  return HeadphoneDevice.$batteryStateCase.modify;
}

void HeadphoneDevice.$batteryStateCase.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryStateCase.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryStateCase.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryStateCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.hearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for HearingRecord(0);
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.hearingRecord : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA50))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.hearingRecord : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA58))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.hearingRecord.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.hearingRecord.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*HeadphoneDevice.hearingRecord.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 710);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.hearingRecord.modify;
}

void HeadphoneDevice.hearingRecord.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$hearingRecord : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA68))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$hearingRecord : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA70))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$hearingRecord.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$hearingRecord.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$hearingRecord.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 14004);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 14004);
  v6[4] = __swift_coroFrameAllocStub(v5, 14004);
  HeadphoneDevice.$hearingRecord.getter();
  return HeadphoneDevice.$hearingRecord.modify;
}

void HeadphoneDevice.$hearingRecord.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$hearingRecord.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$hearingRecord.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._hearingRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._hearingRecord.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.audioAccessoryDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = type metadata accessor for AADevice(0);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HeadphoneDevice.audioAccessoryDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA80))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.audioAccessoryDevice : HeadphoneDevice(uint64_t *a1, void *a2)
{
  v3 = *a1;

  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA88))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.audioAccessoryDevice.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.audioAccessoryDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HeadphoneDevice.audioAccessoryDevice.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 19846);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.audioAccessoryDevice.modify;
}

void HeadphoneDevice.audioAccessoryDevice.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$audioAccessoryDevice : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA98))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$audioAccessoryDevice : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xAA0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$audioAccessoryDevice.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$audioAccessoryDevice.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$audioAccessoryDevice.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 19513);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 19513);
  v6[4] = __swift_coroFrameAllocStub(v5, 19513);
  HeadphoneDevice.$audioAccessoryDevice.getter();
  return HeadphoneDevice.$audioAccessoryDevice.modify;
}

void HeadphoneDevice.$audioAccessoryDevice.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$audioAccessoryDevice.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$audioAccessoryDevice.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._audioAccessoryDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._audioAccessoryDevice.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.spatialAllowed@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t key path getter for HeadphoneDevice.spatialAllowed : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xAB0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.spatialAllowed : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xAB8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.spatialAllowed.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.spatialAllowed.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HeadphoneDevice.spatialAllowed.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 8180);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.spatialAllowed.modify;
}

void HeadphoneDevice.spatialAllowed.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$spatialAllowed : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xAC8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$spatialAllowed : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xAD0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$spatialAllowed.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$spatialAllowed.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$spatialAllowed.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 38252);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 38252);
  v6[4] = __swift_coroFrameAllocStub(v5, 38252);
  HeadphoneDevice.$spatialAllowed.getter();
  return HeadphoneDevice.$spatialAllowed.modify;
}

void HeadphoneDevice.$spatialAllowed.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$spatialAllowed.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$spatialAllowed.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._spatialAllowed.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._spatialAllowed.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.firmwareUpgradeParticipation@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.firmwareUpgradeParticipation.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.firmwareUpgradeParticipation.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.firmwareUpgradeParticipation : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xAE0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.firmwareUpgradeParticipation : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xAE8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.firmwareUpgradeParticipation.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 470);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.firmwareUpgradeParticipation.modify;
}

void HeadphoneDevice.firmwareUpgradeParticipation.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$firmwareUpgradeParticipation : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xAF8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$firmwareUpgradeParticipation : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xB00))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$firmwareUpgradeParticipation.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$firmwareUpgradeParticipation.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$firmwareUpgradeParticipation.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 30397);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 30397);
  v6[4] = __swift_coroFrameAllocStub(v5, 30397);
  HeadphoneDevice.$firmwareUpgradeParticipation.getter();
  return HeadphoneDevice.$firmwareUpgradeParticipation.modify;
}

void HeadphoneDevice.$firmwareUpgradeParticipation.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$firmwareUpgradeParticipation.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$firmwareUpgradeParticipation.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._firmwareUpgradeParticipation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._firmwareUpgradeParticipation.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.firmwareLoggingEnabled@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.firmwareLoggingEnabled.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.firmwareLoggingEnabled.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.firmwareLoggingEnabled : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB10))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.firmwareLoggingEnabled : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xB18))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.firmwareLoggingEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 59368);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.firmwareLoggingEnabled.modify;
}

void HeadphoneDevice.firmwareLoggingEnabled.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$firmwareLoggingEnabled : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xB28))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$firmwareLoggingEnabled : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xB30))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$firmwareLoggingEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$firmwareLoggingEnabled.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$firmwareLoggingEnabled.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 21260);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 21260);
  v6[4] = __swift_coroFrameAllocStub(v5, 21260);
  HeadphoneDevice.$firmwareLoggingEnabled.getter();
  return HeadphoneDevice.$firmwareLoggingEnabled.modify;
}

void HeadphoneDevice.$firmwareLoggingEnabled.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$firmwareLoggingEnabled.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$firmwareLoggingEnabled.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._firmwareLoggingEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._firmwareLoggingEnabled.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.deviceDelegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t HeadphoneDevice.deviceDelegate.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t (*HeadphoneDevice.deviceDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 27159);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneDevice_deviceDelegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return HeadphoneDevice.deviceDelegate.modify;
}

void HeadphoneDevice.deviceDelegate.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of HeadphoneDeviceDelegate?(v2 + 3);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

uint64_t HeadphoneDevice.init(cbDevice:)(uint64_t a1)
{
  v445 = MEMORY[0x1EEE9AC00](a1);
  v406 = "init(cbDevice:)";
  v407 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v545 = 0;
  v544 = 0;
  v543 = 0;
  v538 = 0;
  v537 = 0;
  v475 = 0;
  v476 = 0;
  v448 = 0;
  v449 = 0;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  v428 = *(v433 - 8);
  v429 = v433 - 8;
  v408 = (*(v428 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v433);
  v432 = v88 - v408;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  v422 = *(v427 - 8);
  v423 = v427 - 8;
  v409 = (*(v422 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v427);
  v426 = v88 - v409;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  v416 = *(v421 - 8);
  v417 = v421 - 8;
  v410 = (*(v416 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v421);
  v420 = v88 - v410;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v412 = *(v437 - 8);
  v413 = v437 - 8;
  v411 = (*(v412 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v445);
  v3 = v88 - v411;
  v436 = v88 - v411;
  v544 = v2;
  v545 = v1;
  v442 = 0;
  *&v1[OBJC_IVAR___HPMHeadphoneDevice_aaDevice] = 0;
  v415 = v545;
  v414 = OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  v440 = 0;
  property wrapper backing initializer of HeadphoneDevice.isConnected(0, v3);
  v439 = *(v412 + 32);
  v438 = v412 + 32;
  v439(&v415[v414], v436, v437);
  *&v545[OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient] = v442;
  v419 = v545;
  v418 = OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
  _allocateUninitializedArray<A>(_:)();
  v4 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of HeadphoneDevice.serialNumbers(v4, v420);
  (*(v416 + 32))(&v419[v418], v420, v421);
  v425 = v545;
  v424 = OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  type metadata accessor for HearingRecord(v442);
  v5 = HearingRecord.__allocating_init()();
  property wrapper backing initializer of HeadphoneDevice.hearingRecord(v5, v426);
  (*(v422 + 32))(&v425[v424], v426, v427);
  v431 = v545;
  v430 = OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  type metadata accessor for AADevice(v442);
  v6 = AADevice.__allocating_init()();
  property wrapper backing initializer of HeadphoneDevice.audioAccessoryDevice(v6, v432);
  (*(v428 + 32))(&v431[v430], v432, v433);
  v435 = v545;
  v434 = OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  property wrapper backing initializer of HeadphoneDevice.spatialAllowed(v440 & 1, v436);
  v439(&v435[v434], v436, v437);
  swift_unknownObjectWeakInit();
  v7 = v445;
  v8 = v440;
  *&v545[OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask] = v440;
  *&v545[OBJC_IVAR___HPMHeadphoneDevice_deviceColor] = v8;
  v441 = v545;
  MEMORY[0x1E69E5928](v7);
  *(v441 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice) = v445;
  type metadata accessor for CBProductInfo();
  v443 = @nonobjc CBProductInfo.__allocating_init(productID:)([v445 productID]);
  v543 = v443;
  v444 = v545;
  MEMORY[0x1E69E5928](v443);
  v9 = v445;
  *(v444 + OBJC_IVAR___HPMHeadphoneDevice_productInfo) = v443;
  v446 = v545;
  v447 = [v9 name];
  if (v447)
  {
    v405 = v447;
    v402 = v447;
    v403._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v403._object = v10;
    MEMORY[0x1E69E5920](v402);
    v404 = v403;
  }

  else
  {
    v404._countAndFlagsBits = 0;
    v404._object = 0;
  }

  v541 = v404;
  if (v404._object)
  {
    v542 = v541;
  }

  else
  {
    v542 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
    if (v541._object)
    {
      outlined destroy of String?(&v541);
    }
  }

  v399 = v542;
  v398 = &v446[OBJC_IVAR___HPMHeadphoneDevice__name];
  v400 = &v540;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.name(v399._countAndFlagsBits, v399._object, v398);
  swift_endAccess();
  v401 = [v445 btAddressData];
  if (v401)
  {
    v397 = v401;
    v392 = v401;
    v393 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v394 = v11;
    MEMORY[0x1E69E5920](v392);
    v395 = v393;
    v396 = v394;
  }

  else
  {
    v395 = 0;
    v396 = 0xF000000000000000;
  }

  v390 = v396;
  v391 = v395;
  if ((v396 & 0xF000000000000000) == 0xF000000000000000)
  {
    type metadata accessor for Log();
    v385 = static Log.shared.getter();
    v386 = 1;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();

    v387 = v545;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, v386 & 1);
    *(v387 + OBJC_IVAR___HPMHeadphoneDevice_btAddress) = v12;
  }

  else
  {
    v388 = v391;
    v389 = v390;
    v383 = v390;
    v382 = v391;
    v448 = v391;
    v449 = v390;
    v379 = v545;
    v378 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
    v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    v377 = _allocateUninitializedArray<A>(_:)();
    v375 = v13;
    v14 = MEMORY[0x1DA7304B0](0, v382, v383);
    v15 = v375;
    v16 = v382;
    v17 = v383;
    v373 = MEMORY[0x1E69E7508];
    v375[3] = MEMORY[0x1E69E7508];
    v374 = MEMORY[0x1E69E7558];
    v15[4] = MEMORY[0x1E69E7558];
    *v15 = v14;
    v18 = MEMORY[0x1DA7304B0](1, v16, v17);
    v19 = v374;
    v20 = v375;
    v21 = v382;
    v22 = v383;
    v375[8] = v373;
    v20[9] = v19;
    *(v20 + 40) = v18;
    v23 = MEMORY[0x1DA7304B0](2, v21, v22);
    v24 = v374;
    v25 = v375;
    v26 = v382;
    v27 = v383;
    v375[13] = v373;
    v25[14] = v24;
    *(v25 + 80) = v23;
    v28 = MEMORY[0x1DA7304B0](3, v26, v27);
    v29 = v374;
    v30 = v375;
    v31 = v382;
    v32 = v383;
    v375[18] = v373;
    v30[19] = v29;
    *(v30 + 120) = v28;
    v33 = MEMORY[0x1DA7304B0](4, v31, v32);
    v34 = v374;
    v35 = v375;
    v36 = v382;
    v37 = v383;
    v375[23] = v373;
    v35[24] = v34;
    *(v35 + 160) = v33;
    v38 = MEMORY[0x1DA7304B0](5, v36, v37);
    v39 = v374;
    v40 = v375;
    v375[28] = v373;
    v40[29] = v39;
    *(v40 + 200) = v38;
    _finalizeUninitializedArray<A>(_:)();
    v380 = String.init(format:_:)();
    v381 = v41;

    v42 = v381;
    v43 = v382;
    v44 = v383;
    v45 = (v379 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
    *v45 = v380;
    v45[1] = v42;
    outlined consume of Data._Representation(v43, v44);
  }

  v349 = v545;
  v351 = [v445 listeningMode];
  v350 = &v349[OBJC_IVAR___HPMHeadphoneDevice__listeningMode];
  v352 = &v539;
  v362 = 33;
  v363 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.listeningMode(v351, v350);
  swift_endAccess();
  v46 = v445;
  v545[OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig] = 0;
  v354 = 0x1FAACC000uLL;
  v353 = [v46 0x1FAACC79CLL];
  v538 = v353;
  v360 = 0x1FB471000uLL;
  v355 = [v445 0x1FB471778];
  v537 = v355;
  v356 = v545;
  v358 = [v445 (v354 + 1948)];
  v357 = &v356[OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft];
  v359 = &v536;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.clickHoldModeLeft(v358, v357);
  swift_endAccess();
  v361 = v545;
  v365 = [v445 (v360 + 1912)];
  v364 = &v361[OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight];
  v366 = &v535;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.clickHoldModeRight(v365, v364);
  swift_endAccess();
  v367 = v545;
  v368 = 0x1FB75B000uLL;
  v47 = [v445 0x1FB75B993];
  v48 = v368;
  v49 = v47;
  v50 = v445;
  *(v367 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs) = v49;
  v369 = v545;
  v534[1] = [v50 (v48 + 2451)];
  v371 = v534;
  v534[0] = 1;
  v370 = type metadata accessor for CBListeningModeConfigs(0);
  v372 = lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  v348 = (OptionSet<>.contains(_:)() & 1) != 0;
  v345 = v348;
  v344 = &v369[OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff];
  v346 = &v533;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldOff(v345, v344);
  swift_endAccess();
  v347 = v545;
  v532[7] = [v445 listeningModeConfigs];
  v532[6] = 4;
  v343 = (OptionSet<>.contains(_:)() & 1) != 0;
  v340 = v343;
  v339 = &v347[OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency];
  v341 = v532;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldTransparency(v340, v339);
  swift_endAccess();
  v342 = v545;
  v531[7] = [v445 listeningModeConfigs];
  v531[6] = 8;
  v338 = (OptionSet<>.contains(_:)() & 1) != 0;
  v335 = v338;
  v334 = &v342[OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto];
  v336 = v531;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldAuto(v335, v334);
  swift_endAccess();
  v337 = v545;
  v530[7] = [v445 listeningModeConfigs];
  v530[6] = 2;
  v333 = (OptionSet<>.contains(_:)() & 1) != 0;
  v317 = v333;
  v316 = &v337[OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel];
  v318 = v530;
  v324 = 33;
  v325 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldNoiseCancel(v317, v316);
  swift_endAccess();
  v319 = v545;
  v321 = [v445 doubleTapActionLeft];
  v320 = &v319[OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft];
  v322 = &v529;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.doubleTapActionLeft(v321, v320);
  swift_endAccess();
  v323 = v545;
  v327 = [v445 doubleTapActionRight];
  v326 = &v323[OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight];
  v328 = &v528;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.doubleTapActionRight(v327, v326);
  swift_endAccess();
  v329 = v545;
  v51 = [v445 crownRotationDirection];
  v332 = &v527;
  v527 = v51;
  v330 = &v526;
  v526 = 0;
  v331 = type metadata accessor for CBPeerCrownRotationDirection(0);
  lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection();
  if (== infix<A>(_:_:)())
  {
    v315 = 1;
  }

  else
  {
    v315 = [v445 crownRotationDirection];
  }

  v287 = v315;
  v286 = &v329[OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection];
  v288 = &v525;
  v304 = 33;
  v305 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.crownRotationDirection(v287, v286);
  swift_endAccess();
  v292 = v545;
  v52 = [v445 placementMode];
  v291 = &v524;
  v524 = v52;
  v289 = &v523;
  v523 = 1;
  v310 = 0;
  v290 = type metadata accessor for CBDevicePlacementMode(0);
  lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
  v313 = MEMORY[0x1E69E7248];
  v294 = == infix<A>(_:_:)();
  v293 = &v292[OBJC_IVAR___HPMHeadphoneDevice__inEarDetection];
  v295 = &v522;
  swift_beginAccess();
  v297 = 1;
  property wrapper backing initializer of HeadphoneDevice.inEarDetection(v294 & 1, v293);
  swift_endAccess();
  v296 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryCharging];
  v298 = &v521;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.batteryCharging(v297 & 1, v296);
  swift_endAccess();
  v299 = v545;
  v301 = [v445 endCallConfig];
  v300 = &v299[OBJC_IVAR___HPMHeadphoneDevice__endCallGesture];
  v302 = &v520;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.endCallGesture(v301, v300);
  swift_endAccess();
  v303 = v545;
  v307 = [v445 muteControlConfig];
  v306 = &v303[OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture];
  v308 = &v519;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.muteControlGesture(v307, v306);
  swift_endAccess();
  v309 = v545;
  v53 = [v445 smartRoutingMode];
  v314 = &v518;
  v518 = v53;
  v311 = &v517;
  v517 = 0;
  v312 = type metadata accessor for CBSmartRoutingMode(v310);
  lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
  if (== infix<A>(_:_:)())
  {
    v285 = 2;
  }

  else
  {
    v285 = [v445 smartRoutingMode];
  }

  v267 = v285;
  v266 = &v309[OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode];
  v268 = &v516;
  v276 = 33;
  v280 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.smartRoutingMode(v267, v266);
  swift_endAccess();
  v269 = v545;
  v271 = [v445 microphoneMode];
  v270 = &v269[OBJC_IVAR___HPMHeadphoneDevice__microphoneMode];
  v272 = &v515;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.microphoneMode(v271, v270);
  swift_endAccess();
  v273 = v545;
  v54 = CBProductIDIsAirPods_0([v445 productID]);
  v273[OBJC_IVAR___HPMHeadphoneDevice_isAirpods] = v54;
  v545[OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError] = 0;
  v274 = &v545[OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue];
  v275 = &v514;
  swift_beginAccess();
  v278 = 0;
  property wrapper backing initializer of HeadphoneDevice.isSettingCaseSoundValue(0, v274);
  swift_endAccess();
  v277 = &v545[OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported];
  v279 = &v513;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.isCaseSoundSupported(v278 & 1, v277);
  swift_endAccess();
  v281 = v545;
  v282 = &v545[OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient];
  v283 = &v511;
  swift_beginAccess();
  v284 = *v282;
  MEMORY[0x1E69E5928](v284);
  swift_endAccess();
  v510 = v284;
  if (v284)
  {
    v512 = v510;
  }

  else
  {
    v512 = 0;
  }

  v244 = v512;
  v243 = (v281 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  v245 = &v509;
  v255 = 33;
  v256 = 0;
  swift_beginAccess();
  v55 = *v243;
  *v243 = v244;
  MEMORY[0x1E69E5920](v55);
  swift_endAccess();
  v246 = &v545[OBJC_IVAR___HPMHeadphoneDevice__caseSound];
  v247 = &v508;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.caseSound(1, v246);
  swift_endAccess();
  v545[OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport] = 0;
  v248 = &v545[OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable];
  v249 = &v507;
  swift_beginAccess();
  v258 = 0;
  property wrapper backing initializer of HeadphoneDevice.findMyNetworkEnable(0, v248);
  swift_endAccess();
  v250 = &v545[OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue];
  v251 = &v506;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.isSettingFindMyNetworkValue(v258 & 1, v250);
  swift_endAccess();
  v545[OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError] = 0;
  v545[OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated] = 0;
  v254 = v545;
  v260 = 0;
  type metadata accessor for SPOwnerInterface();
  v252 = SPOwnerInterface.__allocating_init()();
  v253 = [v252 ownerSession];
  MEMORY[0x1E69E5920](v252);
  *(v254 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession) = v253;
  v257 = &v545[OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists];
  v259 = &v505;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.spatialProfileExists(v258 & 1, v257);
  swift_endAccess();
  v261 = v545;
  v264 = &v504;
  v504 = v353;
  v262 = &v503;
  v503 = 6;
  v263 = type metadata accessor for CBPeerUIGestureMode(v260);
  v265 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
  if (== infix<A>(_:_:)())
  {
    v242 = 1;
  }

  else
  {
    v502[29] = v353;
    v502[28] = 7;
    v242 = == infix<A>(_:_:)();
  }

  if (v242)
  {
    v241 = 1;
  }

  else
  {
    v502[27] = v355;
    v502[26] = 6;
    v241 = == infix<A>(_:_:)();
  }

  if (v241)
  {
    v240 = 1;
  }

  else
  {
    v502[25] = v355;
    v502[24] = 7;
    v240 = == infix<A>(_:_:)();
  }

  v205 = v240;
  v204 = &v261[OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle];
  v206 = v502;
  v233 = 33;
  v234 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.volumeControlToggle(v205 & 1, v204);
  swift_endAccess();
  v56 = v445;
  v545[OBJC_IVAR___HPMHeadphoneDevice_volumeControlView] = 0;
  v210 = v545;
  v57 = [v56 selectiveSpeechListeningConfig];
  v209 = &v501;
  v501 = v57;
  v207 = &v500;
  v221 = 1;
  v500 = 1;
  v222 = 0;
  v208 = type metadata accessor for CBPeerSelectiveSpeechListeningConfig(0);
  lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
  v225 = MEMORY[0x1E69E7520];
  v212 = == infix<A>(_:_:)();
  v211 = &v210[OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening];
  v213 = &v499;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.selectiveSpeechListening(v212 & 1, v211);
  swift_endAccess();
  v217 = v545;
  v58 = [v445 conversationDetectConfig];
  v216 = &v498;
  v498 = v58;
  v214 = &v497;
  v497 = v221;
  v215 = type metadata accessor for CBPeerConversationDetectConfig(v222);
  lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
  v219 = == infix<A>(_:_:)();
  v218 = &v217[OBJC_IVAR___HPMHeadphoneDevice__conversationDetect];
  v220 = &v496;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.conversationDetect(v219 & 1, v218);
  swift_endAccess();
  v227 = v545;
  v59 = [v445 adaptiveVolumeConfig];
  v226 = &v495;
  v495 = v59;
  v223 = &v494;
  v494 = v221;
  v224 = type metadata accessor for CBPeerAdaptiveVolumeConfig(v222);
  lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
  v229 = == infix<A>(_:_:)();
  v228 = &v227[OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume];
  v230 = &v493;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.adaptiveVolume(v229 & 1, v228);
  swift_endAccess();
  v231 = &v545[OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation];
  v232 = &v492;
  swift_beginAccess();
  v236 = 0;
  property wrapper backing initializer of HeadphoneDevice.firmwareUpgradeParticipation(0, v231);
  swift_endAccess();
  v235 = &v545[OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled];
  v237 = &v491;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.firmwareLoggingEnabled(v236 & 1, v235);
  swift_endAccess();
  v238 = &v488;
  v489 = &type metadata for AudioAccessoryFeatures;
  v490 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v488 = 0;
  v239 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v238);
  if (v239)
  {
    v184 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft];
    v185 = v457;
    v199 = 33;
    v200 = 0;
    swift_beginAccess();
    v191 = 0.01;
    property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft(v184, 0.01);
    swift_endAccess();
    v186 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight];
    v187 = &v456;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelRight(v186, v191);
    swift_endAccess();
    v188 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase];
    v189 = &v455;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelCase(v188, v191);
    swift_endAccess();
    v190 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain];
    v192 = &v454;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelMain(v190, v191);
    swift_endAccess();
    v193 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft];
    v194 = &v453;
    swift_beginAccess();
    v202 = 0;
    property wrapper backing initializer of HeadphoneDevice.batteryStateLeft(0, v193);
    swift_endAccess();
    v195 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight];
    v196 = &v452;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateRight(v202, v195);
    swift_endAccess();
    v197 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase];
    v198 = &v451;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateCase(v202, v197);
    swift_endAccess();
    v201 = &v545[OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain];
    v203 = &v450;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateMain(v202, v201);
  }

  else
  {
    v150 = v545;
    [v445 batteryLevelLeft];
    v152 = v60;
    v151 = &v150[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft];
    v153 = &v487;
    v179 = 33;
    v180 = 0;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft(v151, v152);
    swift_endAccess();
    v154 = v545;
    [v445 batteryLevelRight];
    v156 = v61;
    v155 = &v154[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight];
    v157 = &v486;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelRight(v155, v156);
    swift_endAccess();
    v158 = v545;
    [v445 batteryLevelCase];
    v160 = v62;
    v159 = &v158[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase];
    v161 = &v485;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelCase(v159, v160);
    swift_endAccess();
    v162 = v545;
    [v445 batteryLevelMain];
    v164 = v63;
    v163 = &v162[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain];
    v165 = &v484;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelMain(v163, v164);
    swift_endAccess();
    v166 = v545;
    v168 = [v445 batteryStateLeft];
    v167 = &v166[OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft];
    v169 = &v483;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateLeft(v168, v167);
    swift_endAccess();
    v170 = v545;
    v172 = [v445 batteryStateRight];
    v171 = &v170[OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight];
    v173 = &v482;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateRight(v172, v171);
    swift_endAccess();
    v174 = v545;
    v176 = [v445 batteryStateCase];
    v175 = &v174[OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase];
    v177 = &v481;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateCase(v176, v175);
    swift_endAccess();
    v178 = v545;
    v182 = [v445 batteryStateMain];
    v181 = &v178[OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain];
    v183 = &v480;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateMain(v182, v181);
  }

  swift_endAccess();
  v143 = v545;
  v479[1] = [v445 deviceFlags];
  v142 = v479;
  v479[0] = 0x10000000;
  v147 = 0;
  v141 = type metadata accessor for CBDeviceFlags(0);
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  v145 = OptionSet<>.contains(_:)();
  v144 = &v143[OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed];
  v146 = &v478;
  swift_beginAccess();
  (*(v412 + 8))(v144, v437);
  property wrapper backing initializer of HeadphoneDevice.spatialAllowed(v145 & 1, v144);
  swift_endAccess();
  v148 = v545;
  v64 = type metadata accessor for HeadphoneDevice(v147);
  v477.receiver = v148;
  v477.super_class = v64;
  v545 = objc_msgSendSuper2(&v477, sel_init);
  v149 = [v445 btAddressData];
  if (v149)
  {
    v140 = v149;
    v135 = v149;
    v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v65;
    MEMORY[0x1E69E5920](v135);
    v138 = v136;
    v139 = v137;
  }

  else
  {
    v138 = 0;
    v139 = 0xF000000000000000;
  }

  v133 = v139;
  v134 = v138;
  if ((v139 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v443);
  }

  else
  {
    v131 = v134;
    v132 = v133;
    v127 = v133;
    v128 = v134;
    v475 = v134;
    v476 = v133;
    v474[1] = [v443 flags];
    v130 = v474;
    v474[0] = 0x40000;
    v129 = type metadata accessor for CBProductFlags(0);
    lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
    v66 = OptionSet<>.contains(_:)();
    if (v66)
    {
      v66 = (*((*v545 & *MEMORY[0x1E69E7D40]) + 0xBA0))(v128, v127);
    }

    (*((*v545 & *MEMORY[0x1E69E7D40]) + 0xBD8))(v66);
    if (CBPeerCallManagementCapability.rawValue.getter([v445 endCallCapability]))
    {
      v67 = (*((*v545 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
      v123 = v463;
      v463[0] = v67;
      v121 = &v462;
      v462 = 0;
      v122 = type metadata accessor for CBPeerCallConfig(0);
      v124 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v126 = == infix<A>(_:_:)();
      v125 = v545;
      MEMORY[0x1E69E5928](v545);
      if (v126)
      {
        v120 = 1;
      }

      else
      {
        v461 = (*((*v125 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v460 = 1;
        v120 = == infix<A>(_:_:)();
      }

      v119 = v120;
      MEMORY[0x1E69E5920](v125);
      if (v119)
      {
        type metadata accessor for Log();
        v117 = static Log.shared.getter();
        v68 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v113 = &v458;
        v458 = v68;
        v459 = v69;
        v111 = 1;
        v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: read endCallConfig as ", 0x28uLL, 1);
        v110 = v70._object;
        MEMORY[0x1DA7310D0](v70._countAndFlagsBits);

        v457[31] = (*((*v545 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v71);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to singleTap ", 0x1AuLL, v111 & 1);
        v112 = v72._object;
        MEMORY[0x1DA7310D0](v72._countAndFlagsBits);

        v115 = v458;
        v114 = v459;

        outlined destroy of DefaultStringInterpolation(v113);
        MEMORY[0x1DA7309B0](v115, v114);
        v116 = v73;
        v118 = 2;
        dispatch thunk of Log.error(_:function:file:line:)();

        HeadphoneDevice.endCallGesture.setter(v118);
      }
    }

    else if (CBPeerCallManagementCapability.rawValue.getter([v445 muteControlCapability]))
    {
      v74 = (*((*v545 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
      v106 = &v473;
      v473 = v74;
      v104 = &v472;
      v472 = 0;
      v105 = type metadata accessor for CBPeerCallConfig(0);
      v107 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v109 = == infix<A>(_:_:)();
      v108 = v545;
      MEMORY[0x1E69E5928](v545);
      MEMORY[0x1E69E5928](v108);
      if (v109)
      {
        v103 = 1;
      }

      else
      {
        v471 = (*((*v108 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v470 = 1;
        v103 = == infix<A>(_:_:)();
      }

      v102 = v103;
      MEMORY[0x1E69E5920](v108);
      v75 = MEMORY[0x1E69E5928](v108);
      if (v102)
      {
        v101 = 1;
      }

      else
      {
        v469 = (*((*v108 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v75);
        v468 = 0;
        v101 = == infix<A>(_:_:)();
      }

      v100 = v101;
      v76 = MEMORY[0x1E69E5920](v108);
      if (v100)
      {
        v99 = 1;
      }

      else
      {
        v467 = (*((*v108 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v76);
        v466 = 1;
        v99 = == infix<A>(_:_:)();
      }

      v98 = v99;
      MEMORY[0x1E69E5920](v108);
      if (v98)
      {
        type metadata accessor for Log();
        v96 = static Log.shared.getter();
        v77 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v92 = &v464;
        v464 = v77;
        v465 = v78;
        v90 = 1;
        v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: read endCallConfig as ", 0x28uLL, 1);
        v88[2] = v79._object;
        MEMORY[0x1DA7310D0](v79._countAndFlagsBits);

        v81 = *v545;
        v89 = MEMORY[0x1E69E7D40];
        v463[2] = (*((v81 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v80);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to doubleTap. Read muteControlConfig as ", 0x35uLL, v90 & 1);
        v88[3] = v82._object;
        MEMORY[0x1DA7310D0](v82._countAndFlagsBits);

        v463[1] = (*((*v545 & *v89) + 0x7E0))(v83);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to singleTap ", 0x1AuLL, v90 & 1);
        v91 = v84._object;
        MEMORY[0x1DA7310D0](v84._countAndFlagsBits);

        v94 = v464;
        v93 = v465;

        outlined destroy of DefaultStringInterpolation(v92);
        MEMORY[0x1DA7309B0](v94, v93);
        v95 = v85;
        v97 = 2;
        dispatch thunk of Log.error(_:function:file:line:)();

        HeadphoneDevice.muteControlGesture.setter(v97);
        HeadphoneDevice.endCallGesture.setter(3);
      }
    }

    v88[1] = v545;
    v86 = HeadphoneDevice.getFirmwareUpgradeParticipation()();
    HeadphoneDevice.firmwareUpgradeParticipation.setter(v86);
    HeadphoneDevice.getFirmwareLoggingEnabled()();
    outlined consume of Data._Representation(v128, v127);
    MEMORY[0x1E69E5920](v443);
  }

  v88[0] = v545;
  MEMORY[0x1E69E5928](v545);
  MEMORY[0x1E69E5920](v445);
  MEMORY[0x1E69E5920](v545);
  return v88[0];
}

id @nonobjc CBProductInfo.__allocating_init(productID:)(unsigned int a1)
{
  v1 = [swift_getObjCClassFromMetadata() productInfoWithProductID_];

  return v1;
}

uint64_t HeadphoneDevice.init(cbDevice:delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  v5 = (*(ObjectType + 2904))(a1);
  MEMORY[0x1E69E5928](v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v5);
  return v5;
}

uint64_t *HeadphoneDevice.init(_aaDevice:cbDevice:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v244 = a3;
  v313 = a2;
  v250 = a1;
  ObjectType = swift_getObjectType();
  v303 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v233 = 0;
  v327 = 0;
  v326 = 0;
  v321 = 0;
  v234 = type metadata accessor for Logger();
  v235 = *(v234 - 8);
  v236 = v235;
  v238 = *(v235 + 64);
  v4 = MEMORY[0x1EEE9AC00](v250);
  v240 = (v238 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = &v107 - v240;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v239 = &v107 - v240;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v241 = &v107 - v240;
  v340 = v6;
  v339 = v7;
  v338 = v8;
  v341 = v3;
  v9 = swift_getObjectType();
  v10 = v313;
  v11 = (*(v9 + 2904))(v313);
  v295 = v11;
  v242 = v341;
  v12 = v11;
  v341 = v11;
  swift_getObjectType();
  v296 = MEMORY[0x1E69E7D40];
  swift_deallocPartialClassInstance();
  swift_unknownObjectRetain();
  v243 = v11 + OBJC_IVAR___HPMHeadphoneDevice_deviceDelegate;
  v246 = 33;
  v245 = &v337;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v13 = v250;
  v247 = (v11 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  v248 = &v336;
  swift_beginAccess();
  v14 = *v247;
  *v247 = v250;

  v15 = swift_endAccess();
  v249 = (*((*v11 & *v296) + 0xA80))(v15);
  (*(*v249 + 1960))(v250);

  v16 = HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(v250, v313);
  v255 = (*((*v295 & *v296) + 0xA50))(v16);
  v251 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v17 = v251;
  v18 = v251;
  v19 = (*((*v17 & *v296) + 0x150))(v18);
  v20 = v255;
  v252 = v19;

  v254 = [v252 validAudiograms];
  v298 = type metadata accessor for HKAudiogramSample();
  v253 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v20 & *v296) + 0x5B8))(v253);
  v21 = v295;

  v260 = (*((*v21 & *v296) + 0xA50))();
  v256 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v22 = v256;
  v23 = v256;
  v24 = (*((*v22 & *v296) + 0x150))(v23);
  v25 = v260;
  v257 = v24;

  v259 = [v257 invalidAudiograms];
  v258 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v25 & *v296) + 0x5E8))(v258);
  type metadata accessor for Log();
  v312 = static Log.shared.getter();
  v334 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v335 = v26;
  v309 = 34;
  v304 = 1;
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager initWithCBDevice:", 0x22uLL, 1);
  object = v27._object;
  v306 = &v334;
  MEMORY[0x1DA7310D0](v27._countAndFlagsBits);

  v333[2] = v341;
  lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v286 = " ";
  v285 = v304;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", v285, v285);
  v262 = v28._object;
  MEMORY[0x1DA7310D0](v28._countAndFlagsBits);

  v273 = "%p";
  v310 = 2;
  v274 = 2;
  v266 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%p", 2uLL, v304);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v265 = _allocateUninitializedArray<A>(_:)();
  v264 = v29;
  v30 = v295;
  v264[3] = ObjectType;
  v31 = lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
  v32 = v264;
  v33 = v295;
  v264[4] = v31;
  *v32 = v33;
  _finalizeUninitializedArray<A>(_:)();
  v267 = String.init(format:_:)();
  v268 = v34;

  v333[0] = v267;
  v333[1] = v268;
  v281 = MEMORY[0x1E69E6158];
  v282 = MEMORY[0x1E69E61C8];
  v283 = MEMORY[0x1E69E61C0];
  v269 = v333;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v269);
  v289 = 10;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" aaDevice:", 0xAuLL, v304);
  v270 = v35._object;
  MEMORY[0x1DA7310D0](v35._countAndFlagsBits);
  v36 = v295;

  v271 = (*((*v36 & *v296) + 0xA80))(v37);

  v332[2] = v271;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" cb:", 4uLL, v304);
  v272 = v38._object;
  MEMORY[0x1DA7310D0](v38._countAndFlagsBits);

  v278 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v273, v274, v304);
  v277 = _allocateUninitializedArray<A>(_:)();
  v275 = v39;
  v40 = v313;
  v288 = type metadata accessor for CBDevice();
  v275[3] = v288;
  v41 = lazy protocol witness table accessor for type CBDevice and conformance NSObject();
  v42 = v275;
  v43 = v313;
  v275[4] = v41;
  *v42 = v43;
  _finalizeUninitializedArray<A>(_:)();
  v279 = String.init(format:_:)();
  v280 = v44;

  v332[0] = v279;
  v332[1] = v280;
  v284 = v332;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v284);
  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v286, v285, v304);
  v287 = v45._object;
  MEMORY[0x1DA7310D0](v45._countAndFlagsBits);

  v331[3] = v313;
  lazy protocol witness table accessor for type CBDevice and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", validAG:", v289, v304);
  v290 = v46._object;
  MEMORY[0x1DA7310D0](v46._countAndFlagsBits);
  v47 = v295;

  v291 = (*((*v47 & *v296) + 0xA50))(v48);
  v292 = (*((*v291 & *v296) + 0x5B0))();

  v293 = MEMORY[0x1DA730B40](v292, v298);

  v331[2] = v293;
  v301 = MEMORY[0x1E69E6530];
  v302 = MEMORY[0x1E69E6590];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" invalidAG:", 0xBuLL, v304);
  v294 = v49._object;
  MEMORY[0x1DA7310D0](v49._countAndFlagsBits);
  v50 = v295;

  v52 = (*((*v50 & *v296) + 0xA50))(v51);
  v297 = v52;

  v299 = (*((*v52 & *v296) + 0x5E0))();
  v300 = MEMORY[0x1DA730B40](v299, v298);

  v331[1] = v300;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v303, v304);
  v305 = v53._object;
  MEMORY[0x1DA7310D0](v53._countAndFlagsBits);

  v308 = v334;
  v307 = v335;

  outlined destroy of DefaultStringInterpolation(v306);
  MEMORY[0x1DA7309B0](v308, v307);
  v311 = v54;
  v106 = 360;
  dispatch thunk of Log.notice(_:function:file:line:)();

  v314 = [v313 identifier];
  if (v314)
  {
    v232 = v314;
    v227 = v314;
    v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v229 = v55;

    v230 = v228;
    v231 = v229;
  }

  else
  {
    v230 = 0;
    v231 = 0;
  }

  v225 = v231;
  v226 = v230;
  if (v231)
  {
    v223 = v226;
    v224 = v225;
    v213 = v225;
    v212 = v226;
    v326 = v226;
    v327 = v225;
    v211 = *Headphone_Manager.shared.unsafeMutableAddressor();
    v58 = v211;
    v59 = v211;
    v216 = (*((*v58 & *MEMORY[0x1E69E7D40]) + 0x150))(v59);

    v214 = MEMORY[0x1DA730940](v212, v213);

    v217 = [v216 getHearingModeDeviceRecordForIdentifier_];
    v215 = v217;

    if (v217)
    {
      v210 = v215;
      v176 = v215;
      v321 = v215;
      v175 = *Headphone_Manager.shared.unsafeMutableAddressor();
      v62 = v175;
      v63 = v175;
      v170 = v341;
      v169 = v341;
      v64 = v341;
      v171 = *&v170[OBJC_IVAR___HPMHeadphoneDevice_btAddress];
      v172 = *&v170[OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8];

      v65 = v176;
      v320[6] = v176;
      v320[4] = v171;
      v320[5] = v172;
      v66 = *((*v62 & *MEMORY[0x1E69E7D40]) + 0x1A8);
      v173 = v320;
      v174 = v66();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
      Dictionary.subscript.setter();
      v67 = v237;
      v174(v173, 0);

      v68 = Logger.shared.unsafeMutableAddressor();
      (*(v236 + 16))(v67, v68, v234);
      v179 = 32;
      v189 = 32;
      v190 = 7;
      v69 = swift_allocObject();
      v70 = v176;
      v182 = v69;
      *(v69 + 16) = implicit closure #1 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:);
      *(v69 + 24) = 0;
      v71 = v70;
      v191 = swift_allocObject();
      *(v191 + 16) = v176;
      v204 = Logger.logObject.getter();
      v177 = v204;
      v203 = static os_log_type_t.default.getter();
      v178 = v203;
      v185 = 17;
      v194 = swift_allocObject();
      v180 = v194;
      *(v194 + 16) = v179;
      v195 = swift_allocObject();
      v181 = v195;
      v187 = 8;
      *(v195 + 16) = 8;
      v72 = swift_allocObject();
      v73 = v182;
      v183 = v72;
      *(v72 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v183;
      v196 = v74;
      v184 = v74;
      *(v74 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_2;
      *(v74 + 24) = v75;
      v197 = swift_allocObject();
      v186 = v197;
      *(v197 + 16) = 64;
      v198 = swift_allocObject();
      v188 = v198;
      *(v198 + 16) = v187;
      v76 = swift_allocObject();
      v77 = v191;
      v192 = v76;
      *(v76 + 16) = partial apply for implicit closure #2 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:);
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v192;
      v201 = v78;
      v193 = v78;
      *(v78 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_0;
      *(v78 + 24) = v79;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v199 = _allocateUninitializedArray<A>(_:)();
      v200 = v80;

      v81 = v194;
      v82 = v200;
      *v200 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v82[1] = v81;

      v83 = v195;
      v84 = v200;
      v200[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v84[3] = v83;

      v85 = v196;
      v86 = v200;
      v200[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v86[5] = v85;

      v87 = v197;
      v88 = v200;
      v200[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v88[7] = v87;

      v89 = v198;
      v90 = v200;
      v200[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v90[9] = v89;

      v91 = v200;
      v92 = v201;
      v200[10] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
      v91[11] = v92;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v204, v203))
      {
        v94 = v233;
        v162 = static UnsafeMutablePointer.allocate(capacity:)();
        v158 = v162;
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v160 = 1;
        v163 = createStorage<A>(capacity:type:)(1, v159, v159);
        v161 = v163;
        v164 = createStorage<A>(capacity:type:)(v160, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v319 = v162;
        v318 = v163;
        v317 = v164;
        v165 = 2;
        v166 = &v319;
        serialize(_:at:)(2, &v319);
        serialize(_:at:)(v165, v166);
        v315 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
        v316 = v180;
        closure #1 in osLogInternal(_:log:type:)(&v315, v166, &v318, &v317);
        v167 = v94;
        v168 = v94;
        if (v94)
        {
          v156 = 0;

          __break(1u);
        }

        else
        {
          v315 = closure #1 in OSLogArguments.append(_:)partial apply;
          v316 = v181;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v154 = 0;
          v155 = 0;
          v315 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
          v316 = v184;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v152 = 0;
          v153 = 0;
          v315 = closure #1 in OSLogArguments.append(_:)partial apply;
          v316 = v186;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v150 = 0;
          v151 = 0;
          v315 = closure #1 in OSLogArguments.append(_:)partial apply;
          v316 = v188;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v148 = 0;
          v149 = 0;
          v315 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
          v316 = v193;
          closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
          v146 = 0;
          v147 = 0;
          _os_log_impl(&dword_1D93D0000, v177, v178, "HeadphoneManager: HeadphoneDevice.init syncFetch Record %s %@", v158, 0x16u);
          v145 = 1;
          destroyStorage<A>(_:count:)(v161, 1, v159);
          destroyStorage<A>(_:count:)(v164, v145, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v158, MEMORY[0x1E69E7508]);

          v157 = v146;
        }
      }

      else
      {
        v95 = v233;

        v157 = v95;
      }

      v96 = v169;
      v143 = v157;

      v97 = (*(v236 + 8))(v237, v234);
      v98 = *v96;
      v141 = MEMORY[0x1E69E7D40];
      v99 = (*((v98 & *MEMORY[0x1E69E7D40]) + 0xA50))(v97);
      v142 = v99;

      (*((*v99 & *v141) + 0x768))(v176);

      v144 = v143;
    }

    else
    {
      v60 = v239;
      v61 = Logger.shared.unsafeMutableAddressor();
      (*(v236 + 16))(v60, v61, v234);
      v208 = Logger.logObject.getter();
      v205 = v208;
      v207 = static os_log_type_t.error.getter();
      v206 = v207;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v209 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v208, v207))
      {
        v100 = v233;
        v132 = static UnsafeMutablePointer.allocate(capacity:)();
        v128 = v132;
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v130 = 0;
        v133 = createStorage<A>(capacity:type:)(0, v129, v129);
        v131 = v133;
        v134 = createStorage<A>(capacity:type:)(v130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v325 = v132;
        v324 = v133;
        v323 = v134;
        v135 = 0;
        v136 = &v325;
        serialize(_:at:)(0, &v325);
        serialize(_:at:)(v135, v136);
        v322 = v209;
        v137 = &v107;
        MEMORY[0x1EEE9AC00](&v107);
        v138 = &v107 - 6;
        *(&v107 - 4) = v101;
        *(&v107 - 3) = &v324;
        v106 = &v323;
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v140 = v100;
        if (v100)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v205, v206, "HeadphoneManager: HeadphoneDevice.init: sync fetch returned nil", v128, 2u);
          v126 = 0;
          destroyStorage<A>(_:count:)(v131, 0, v129);
          destroyStorage<A>(_:count:)(v134, v126, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v128, MEMORY[0x1E69E7508]);

          v127 = v140;
        }
      }

      else
      {

        v127 = v233;
      }

      v125 = v127;

      (*(v236 + 8))(v239, v234);

      v144 = v125;
    }
  }

  else
  {
    v56 = v241;
    v57 = Logger.shared.unsafeMutableAddressor();
    (*(v236 + 16))(v56, v57, v234);
    v221 = Logger.logObject.getter();
    v218 = v221;
    v220 = static os_log_type_t.error.getter();
    v219 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v222 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v221, v220))
    {
      v102 = v233;
      v116 = static UnsafeMutablePointer.allocate(capacity:)();
      v112 = v116;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v114 = 0;
      v117 = createStorage<A>(capacity:type:)(0, v113, v113);
      v115 = v117;
      v118 = createStorage<A>(capacity:type:)(v114, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v331[0] = v116;
      v330 = v117;
      v329 = v118;
      v119 = 0;
      v120 = v331;
      serialize(_:at:)(0, v331);
      serialize(_:at:)(v119, v120);
      v328 = v222;
      v121 = &v107;
      MEMORY[0x1EEE9AC00](&v107);
      v122 = &v107 - 6;
      *(&v107 - 4) = v103;
      *(&v107 - 3) = &v330;
      v106 = &v329;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v124 = v102;
      if (v102)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v218, v219, "HeadphoneManager: HeadphoneDevice.init: uuidString lookup for HR Fetch failed!", v112, 2u);
        v110 = 0;
        destroyStorage<A>(_:count:)(v115, 0, v113);
        destroyStorage<A>(_:count:)(v118, v110, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v112, MEMORY[0x1E69E7508]);

        v111 = v124;
      }
    }

    else
    {

      v111 = v233;
    }

    v109 = v111;

    (*(v236 + 8))(v241, v234);
    v144 = v109;
  }

  v108 = v341;
  v104 = v341;
  swift_unknownObjectRelease();

  return v108;
}

uint64_t implicit closure #1 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:)@<X0>(void *a1@<X8>)
{
  v1 = Headphone_Manager.shared.unsafeMutableAddressor();
  v2 = *v1;
  v6 = *v1;
  v3 = MEMORY[0x1E69E5928](*v1);
  *a1 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x198))(v3);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t HeadphoneDevice.supportsFeature(feature:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v41 = 1;
      break;
    case 1:
      v40 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v40 flags];
      MEMORY[0x1E69E5920](v40);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 2:
      v38 = MEMORY[0x1E69E7D40];
      v37 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v37 0x1FA979C78];
      MEMORY[0x1E69E5920](v37);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v1 = OptionSet<>.contains(_:)();
      v2 = (*((*v42 & *v38) + 0x6B0))(v1 & 1);
      v39 = (*((*v42 & *v38) + 0x240))(v2);
      [v39 0x1FA979C78];
      MEMORY[0x1E69E5920](v39);
      v41 = OptionSet<>.contains(_:)();
      break;
    case 3:
      v36 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v36 flags];
      MEMORY[0x1E69E5920](v36);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 4:
      v35 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v35 flags];
      MEMORY[0x1E69E5920](v35);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 5:
      v34 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v34 flags];
      MEMORY[0x1E69E5920](v34);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 6:
      v33 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      [v33 deviceFlags];
      MEMORY[0x1E69E5920](v33);
      type metadata accessor for CBDeviceFlags(0);
      lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 7:
      v32 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v32 flags];
      MEMORY[0x1E69E5920](v32);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 8:
      v41 = 0;
      break;
    case 9:
      v41 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x2A0))();
      break;
    case 10:
      v31 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0xBB0))();
      (MEMORY[0x1E69E5928])();
      if (v31)
      {
        v29 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
        [v29 flags];
        MEMORY[0x1E69E5920](v29);
        type metadata accessor for CBProductFlags(0);
        lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
        v30 = OptionSet<>.contains(_:)();
      }

      else
      {
        v30 = 0;
      }

      (MEMORY[0x1E69E5920])();
      v41 = v30;
      break;
    case 11:
    case 13:
    case 14:
      v41 = 1;
      break;
    case 12:
      v41 = 0;
      break;
    case 15:
      v28 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v28 flags];
      MEMORY[0x1E69E5920](v28);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 16:
      v27 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v27 flags];
      MEMORY[0x1E69E5920](v27);
      type metadata accessor for CBProductFlags(0);
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 17:
      v24 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v25 = [v24 muteControlCapability];
      MEMORY[0x1E69E5920](v24);
      v26 = CBPeerCallManagementCapability.rawValue.getter(v25);
      v3 = (MEMORY[0x1E69E5928])();
      if (v26)
      {
        v23 = 1;
      }

      else
      {
        v21 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))(v3);
        v22 = [v21 endCallCapability];
        MEMORY[0x1E69E5920](v21);
        v23 = CBPeerCallManagementCapability.rawValue.getter(v22) != 0;
      }

      (MEMORY[0x1E69E5920])();
      v41 = v23;
      break;
    case 18:
      v19 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v20 = [v19 selectiveSpeechListeningCapability];
      MEMORY[0x1E69E5920](v19);
      v41 = CBPeerSelectiveSpeechListeningCapability.rawValue.getter(v20) != 0;
      break;
    case 19:
      v17 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v18 = [v17 conversationDetectCapability];
      MEMORY[0x1E69E5920](v17);
      v41 = CBPeerConversationDetectCapability.rawValue.getter(v18) != 0;
      break;
    case 20:
      v15 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v16 = [v15 adaptiveVolumeCapability];
      MEMORY[0x1E69E5920](v15);
      v41 = CBPeerAdaptiveVolumeCapability.rawValue.getter(v16) != 0;
      break;
    case 21:
      v14 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0xC30))();
      (MEMORY[0x1E69E5928])();
      if (v14)
      {
        v13 = 1;
      }

      else
      {
        v12 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x258))();
        if (v12)
        {
          v10 = [v12 autoANCCapability];
          MEMORY[0x1E69E5920](v12);
          v11 = AAAutoANCCapability.rawValue.getter(v10);
          v13 = v11 >= AAAutoANCCapability.rawValue.getter(3);
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      (MEMORY[0x1E69E5920])();
      v41 = v13;
      break;
    case 22:
      v9 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x258))();
      if (v9)
      {
        v8 = v9;
      }

      else
      {
        LOBYTE(v5) = 2;
        v6 = 428;
        LODWORD(v7) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      [v8 bobbleCapability];
      MEMORY[0x1E69E5920](v8);
      type metadata accessor for AAFeatureCapability(0);
      lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
      v41 = == infix<A>(_:_:)();
      break;
    case 23:
      v41 = 1;
      break;
    case 24:
    case 25:
      v41 = HeadphoneDevice.shouldShowFirmwareSeeding()();
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return v41 & 1;
}

void (*HeadphoneDevice.updateFeatureValues(feature:)(uint64_t a1))(void)
{
  v310 = MEMORY[0x1EEE9AC00](a1);
  v313 = 0;
  v312._countAndFlagsBits = 0;
  v312._object = 0;
  v337 = v310;
  v336 = v1;
  type metadata accessor for Log();
  static Log.shared.getter();
  v334 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v335 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: updateFeatureValues mode: ", 0x2CuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v333 = v310;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v308 = v334;
  v307 = v335;

  outlined destroy of DefaultStringInterpolation(&v334);
  MEMORY[0x1DA7309B0](v308, v307);
  dispatch thunk of Log.notice(_:function:file:line:)();

  type metadata accessor for CBDeviceSettings();
  v309 = CBDeviceSettings.__allocating_init()();
  v332 = v309;
  type metadata accessor for AADeviceConfig();
  v5 = AADeviceConfig.__allocating_init()();
  v311 = v5;
  v331 = v5;
  v330 = 0;
  v329 = v310;
  switch(v310)
  {
    case 0:
      v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x360))(v310);
      v306 = MEMORY[0x1DA730940](v6);

      [v309 setName_];
      MEMORY[0x1E69E5920](v306);
      goto LABEL_145;
    case 1:
      [v309 setListeningMode_];
      v305 = [v309 listeningMode];
      switch(v305)
      {
        case 1u:
          v304 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
          v303 = (*(*v304 + 112))();
          *(v8 + 280) = v7;

          v303();

          goto LABEL_145;
        case 2u:
          v302 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseCancellation", 0x11uLL, 1);
          v301 = (*(*v302 + 112))();
          *(v10 + 280) = v9;

          v301();

          goto LABEL_145;
        case 3u:
          v300 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Transparency", 0xCuLL, 1);
          v299 = (*(*v300 + 112))();
          *(v12 + 280) = v11;

          v299();

          goto LABEL_145;
        case 4u:
          v298 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
          v297 = (*(*v298 + 112))();
          *(v14 + 280) = v13;

          v297();
          break;
        default:
          v296 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v295 = (*(*v296 + 112))();
          v16[25] = v15;

          v295();
          break;
      }

      goto LABEL_69;
    case 2:
      v294 = MEMORY[0x1E69E7D40];
      v292 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v310);
      v293 = [v292 clickHoldModeLeft];
      MEMORY[0x1E69E5920](v292);
      v317 = v293;
      v316 = (*((*v1 & *v294) + 0x3F0))();
      type metadata accessor for CBPeerUIGestureMode(0);
      lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v17 & 1) == 0)
      {
        [v309 setClickHoldModeLeft_];
        v291 = [v309 clickHoldModeLeft];
        if (v291 == 1)
        {
          v290 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v289 = (*(*v290 + 112))();
          v19[25] = v18;

          v289();
        }

        else if (v291 == 5)
        {
          v288 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseControl", 0xCuLL, 1);
          v287 = (*(*v288 + 112))();
          v21[25] = v20;

          v287();
        }

        else if (v291 == 6)
        {
          v286 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeUp", 8uLL, 1);
          v285 = (*(*v286 + 112))();
          v23[25] = v22;

          v285();
        }

        else
        {
          if (v291 == 7)
          {
            v284 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeDown", 0xAuLL, 1);
            v283 = (*(*v284 + 112))();
            v25[25] = v24;

            v283();
          }

          else
          {
            v282 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v281 = (*(*v282 + 112))();
            v27[25] = v26;

            v281();
          }
        }
      }

      v280 = MEMORY[0x1E69E7D40];
      v278 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v17);
      v279 = [v278 clickHoldModeRight];
      MEMORY[0x1E69E5920](v278);
      v315 = v279;
      v314 = (*((*v1 & *v280) + 0x420))();
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v28 & 1) == 0)
      {
        [v309 setClickHoldModeRight_];
        v277 = [v309 clickHoldModeRight];
        if (v277 == 1)
        {
          v276 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v275 = (*(*v276 + 112))();
          v30[26] = v29;

          v275();
        }

        else if (v277 == 5)
        {
          v274 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseControl", 0xCuLL, 1);
          v273 = (*(*v274 + 112))();
          v32[26] = v31;

          v273();
        }

        else if (v277 == 6)
        {
          v272 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeUp", 8uLL, 1);
          v271 = (*(*v272 + 112))();
          v34[26] = v33;

          v271();
        }

        else
        {
          if (v277 == 7)
          {
            v270 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeDown", 0xAuLL, 1);
            v269 = (*(*v270 + 112))();
            v36[26] = v35;

            v269();
          }

          else
          {
            v268 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v267 = (*(*v268 + 112))();
            v38[26] = v37;

            v267();
          }
        }
      }

      if (((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x678))(v28) & 1) == 0)
      {
        type metadata accessor for CBListeningModeConfigs(0);
        _allocateUninitializedArray<A>(_:)();
        lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
        SetAlgebra<>.init(arrayLiteral:)();
        v312 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v39 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x4F8))();
        if (v39)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NC", 2uLL, 1);
          static String.+= infix(_:_:)();
        }

        v40 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x4C8))(v39);
        if (v40)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
          static String.+= infix(_:_:)();
        }

        v41 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x498))(v40);
        if (v41)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("T", 1uLL, 1);
          static String.+= infix(_:_:)();
        }

        if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x468))(v41))
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Auto", 4uLL, 1);
          static String.+= infix(_:_:)();
        }

        v266 = MEMORY[0x1E69E7D40];
        (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x458))(v313);
        v262 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v261 = (*(*v262 + 112))();
        v43[4] = v42;

        v261();

        v264 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v263 = (*(*v264 + 112))();
        v45[3] = v44;

        v263();

        v265 = (*((*v1 & *v266) + 0x228))(v46);
        [v265 listeningModeConfigs];
        MEMORY[0x1E69E5920](v265);
        (*((*v1 & *v266) + 0x450))();
        lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          v259 = MEMORY[0x1E69E7D40];
          v47 = [v309 setListeningModeConfigs_];
          v260 = (*((*v1 & *v259) + 0x240))(v47);
          [v260 flags];
          MEMORY[0x1E69E5920](v260);
          type metadata accessor for CBProductFlags(0);
          lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
          if (OptionSet<>.contains(_:)())
          {
            v252 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            object = v312._object;

            v251 = (*(*v252 + 112))();
            *(v51 + 80) = v312._countAndFlagsBits;
            *(v51 + 88) = object;

            v251();
          }

          else
          {
            (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
            lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
            v48 = == infix<A>(_:_:)();
            if (v48)
            {
              v258 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

              v256 = v312._object;

              v257 = (*(*v258 + 112))();
              *(v49 + 48) = v312._countAndFlagsBits;
              *(v49 + 56) = v256;

              v257();
            }

            (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x420))(v48);
            if (== infix<A>(_:_:)())
            {
              v255 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

              v253 = v312._object;

              v254 = (*(*v255 + 112))();
              *(v50 + 64) = v312._countAndFlagsBits;
              *(v50 + 72) = v253;

              v254();
            }
          }
        }

        outlined destroy of String(&v312);
      }

      goto LABEL_145;
    case 3:
      v249 = MEMORY[0x1E69E7D40];
      v247 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v310);
      v248 = [v247 doubleTapActionLeft];
      MEMORY[0x1E69E5920](v247);
      v321[0] = v248;
      v320 = (*((*v1 & *v249) + 0x528))();
      type metadata accessor for CBDoubleTapAction(0);
      lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction();
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v52 & 1) == 0)
      {
        [v309 setDoubleTapActionLeft_];
        v246 = [v309 doubleTapActionLeft];
        if (v246 == 2)
        {
          v245 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v244 = (*(*v245 + 112))();
          *(v54 + 120) = v53;

          v244();
        }

        else if (v246 == 3)
        {
          v243 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PlayPause", 9uLL, 1);
          v242 = (*(*v243 + 112))();
          *(v56 + 120) = v55;

          v242();
        }

        else if (v246 == 4)
        {
          v241 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NextTrack", 9uLL, 1);
          v240 = (*(*v241 + 112))();
          *(v58 + 120) = v57;

          v240();
        }

        else
        {
          if (v246 == 5)
          {
            v239 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreviousTrack", 0xDuLL, 1);
            v238 = (*(*v239 + 112))();
            *(v60 + 120) = v59;

            v238();
          }

          else
          {
            v237 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v236 = (*(*v237 + 112))();
            *(v62 + 120) = v61;

            v236();
          }
        }
      }

      v235 = MEMORY[0x1E69E7D40];
      v233 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v52);
      v234 = [v233 doubleTapActionRight];
      MEMORY[0x1E69E5920](v233);
      v319 = v234;
      v318 = (*((*v1 & *v235) + 0x558))();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        goto LABEL_145;
      }

      [v309 setDoubleTapActionRight_];
      v232 = [v309 doubleTapActionRight];
      switch(v232)
      {
        case 2u:
          v231 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v230 = (*(*v231 + 112))();
          *(v64 + 136) = v63;

          v230();

          goto LABEL_145;
        case 3u:
          v229 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PlayPause", 9uLL, 1);
          v228 = (*(*v229 + 112))();
          *(v66 + 136) = v65;

          v228();

          goto LABEL_145;
        case 4u:
          v227 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NextTrack", 9uLL, 1);
          v226 = (*(*v227 + 112))();
          *(v68 + 136) = v67;

          v226();

          goto LABEL_145;
        case 5u:
          v225 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreviousTrack", 0xDuLL, 1);
          v224 = (*(*v225 + 112))();
          *(v70 + 136) = v69;

          v224();
          break;
        default:
          v223 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v222 = (*(*v223 + 112))();
          *(v72 + 136) = v71;

          v222();
          break;
      }

      goto LABEL_69;
    case 4:
      [v309 setCrownRotationDirection_];
      v221 = [v309 crownRotationDirection];
      if (v221 == 1)
      {
        v220 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BackToFront", 0xBuLL, 1);
        v219 = (*(*v220 + 112))();
        v74[2] = v73;

        v219();

        goto LABEL_145;
      }

      if (v221 == 2)
      {
        v218 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FrontToBack", 0xBuLL, 1);
        v217 = (*(*v218 + 112))();
        v76[2] = v75;

        v217();
      }

      else
      {
        v216 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
        v215 = (*(*v216 + 112))();
        v78[2] = v77;

        v215();
      }

      goto LABEL_69;
    case 5:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v310))
      {
        v214 = 1;
      }

      else
      {
        v214 = 2;
      }

      [v309 setPlacementMode_];
      v213 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v79))
      {
        v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v81 = v82._object;
        v80 = v82._countAndFlagsBits;
      }

      else
      {
        v83 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v81 = v83._object;
        v80 = v83._countAndFlagsBits;
      }

      v211 = v80;
      v212 = v81;
      v210 = (*(*v213 + 112))();
      *(v84 + 256) = v211;
      *(v84 + 264) = v212;

      v210();

      goto LABEL_145;
    case 6:
      [v309 setSmartRoutingMode_];
      v209 = [v309 smartRoutingMode];
      if (v209 == 1)
      {
        v208 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
        v207 = (*(*v208 + 112))();
        v86[2] = v85;

        v207();

        goto LABEL_145;
      }

      if (v209 == 2)
      {
        v206 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v87 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LastConnect", 0xBuLL, 1);
        v205 = (*(*v206 + 112))();
        v88[2] = v87;

        v205();
      }

      else
      {
        v204 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
        v203 = (*(*v204 + 112))();
        v90[2] = v89;

        v203();
      }

      goto LABEL_69;
    case 7:
      [v309 setMicrophoneMode_];
      v202 = [v309 microphoneMode];
      if (v202 == 1)
      {
        v201 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
        v200 = (*(*v201 + 112))();
        *(v92 + 328) = v91;

        v200();
      }

      else if (v202 == 2)
      {
        v199 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AlwaysLeft", 0xAuLL, 1);
        v198 = (*(*v199 + 112))();
        *(v94 + 328) = v93;

        v198();
      }

      else
      {
        if (v202 == 3)
        {
          v197 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AlwaysRight", 0xBuLL, 1);
          v196 = (*(*v197 + 112))();
          *(v96 + 328) = v95;

          v196();
        }

        else
        {
          v195 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v194 = (*(*v195 + 112))();
          *(v98 + 328) = v97;

          v194();
        }

LABEL_69:
      }

      goto LABEL_145;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 21:
    case 22:
      MEMORY[0x1E69E5920](v5);
      return MEMORY[0x1E69E5920](v309);
    case 17:
      v191 = MEMORY[0x1E69E7D40];
      v99 = [v309 setEndCallConfig_];
      v192 = (*((*v1 & *v191) + 0x228))(v99);
      v193 = [v192 muteControlCapability];
      MEMORY[0x1E69E5920](v192);
      if (CBPeerCallManagementCapability.rawValue.getter(v193))
      {
        [v309 setMuteControlConfig_];
      }

      v323[103] = [v309 endCallConfig];
      v323[102] = 3;
      type metadata accessor for CBPeerCallConfig(0);
      lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        v180 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressOnce", 9uLL, 1);
        v179 = (*(*v180 + 112))();
        *(v110 + 200) = v109;

        v179();

        v181 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v111);
        v182 = [v181 muteControlCapability];
        MEMORY[0x1E69E5920](v181);
        if (!CBPeerCallManagementCapability.rawValue.getter(v182))
        {
          goto LABEL_145;
        }

        v176 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressTwice", 0xAuLL, 1);
        v175 = (*(*v176 + 112))();
        v113[22] = v112;

        v175();

        v177 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        result = (*(*v177 + 112))(v323);
        v115 = *(v114 + 344);
        v178 = v115 + 1;
        if (!__OFADD__(v115, 1))
        {
          *(v114 + 344) = v178;
          result();

          goto LABEL_145;
        }

        __break(1u);
LABEL_165:
        __break(1u);
        return result;
      }

      v188 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressTwice", 0xAuLL, 1);
      v187 = (*(*v188 + 112))();
      *(v101 + 200) = v100;

      v187();

      v189 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v102);
      v190 = [v189 muteControlCapability];
      MEMORY[0x1E69E5920](v189);
      if (!CBPeerCallManagementCapability.rawValue.getter(v190))
      {
        goto LABEL_145;
      }

      v184 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressOnce", 9uLL, 1);
      v183 = (*(*v184 + 112))();
      v104[22] = v103;

      v183();

      v185 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v185 + 112))(&v322);
      v107 = *(v106 + 344);
      v186 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        goto LABEL_165;
      }

      *(v106 + 344) = v186;
      result();

LABEL_145:
      v327 = v310;
      v326 = 6;
      lazy protocol witness table accessor for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures();
      if (== infix<A>(_:_:)())
      {
        v158 = HeadphoneDevice.deviceDelegate.getter();
        if (v158)
        {
          v157 = v158;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v157 updateOfflineDeviceConfigWithHpDevice:v1 settings:v309];
        swift_unknownObjectRelease();
        static Log.shared.getter();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call updateOfflineDeviceConfig", 0x44uLL, 1);
        v141 = 649;
        dispatch thunk of Log.notice(_:function:file:line:)();
      }

      else
      {
        v156 = HeadphoneDevice.deviceDelegate.getter();
        if (v156)
        {
          v155 = v156;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v155 updateDeviceConfigWithHpDevice:v1 settings:v309];
        swift_unknownObjectRelease();
        static Log.shared.getter();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call updateDeviceConfig", 0x3DuLL, 1);
        v141 = 652;
        dispatch thunk of Log.notice(_:function:file:line:)();
      }

      v325 = v310;
      v324 = 0;
      if (== infix<A>(_:_:)())
      {
        v154 = HeadphoneDevice.deviceDelegate.getter();
        if (v154)
        {
          v153 = v154;
        }

        else
        {
          LOBYTE(v141) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v153 updateTopLevelEntryWithHpDevice_];
        swift_unknownObjectRelease();
        v152 = HeadphoneDevice.deviceDelegate.getter();
        if (v152)
        {
          v151 = v152;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v151 updateTitleBar];
        swift_unknownObjectRelease();
      }

      v146 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v148 = MEMORY[0x1E69E7D40];
      v144 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v135);
      v145 = [v144 productID];
      MEMORY[0x1E69E5920](v144);
      v136 = (*(*v146 + 136))();
      *(v137 + 32) = v145;
      v136();

      v147 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v149 = (*((*v1 & *v148) + 0x228))(v138);
      v150 = [v149 autoAncCapability];
      MEMORY[0x1E69E5920](v149);
      v323[239] = v150;
      v323[238] = 1;
      type metadata accessor for CBPeerAutoAncCapability(0);
      lazy protocol witness table accessor for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability();
      v143 = (== infix<A>(_:_:)() & 1) != 0;
      v139 = (*(*v147 + 136))();
      *(v140 + 40) = v143;
      v139();

      v142 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      (*(*v142 + 152))(v310);

      MEMORY[0x1E69E5920](v311);
      return MEMORY[0x1E69E5920](v309);
    case 18:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x840))(v310))
      {
        v174 = 1;
      }

      else
      {
        v174 = 2;
      }

      [v309 setSelectiveSpeechListeningConfig_];
      v173 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x840))(v117))
      {
        v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v119 = v120._object;
        v118 = v120._countAndFlagsBits;
      }

      else
      {
        v121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v119 = v121._object;
        v118 = v121._countAndFlagsBits;
      }

      v171 = v118;
      v172 = v119;
      v170 = (*(*v173 + 112))();
      *(v122 + 488) = v171;
      *(v122 + 496) = v172;

      v170();

      goto LABEL_145;
    case 19:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x870))(v310))
      {
        v169 = 1;
      }

      else
      {
        v169 = 2;
      }

      [v309 setConversationDetectConfig_];
      v168 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x870))(v123))
      {
        v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v125 = v126._object;
        v124 = v126._countAndFlagsBits;
      }

      else
      {
        v127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v125 = v127._object;
        v124 = v127._countAndFlagsBits;
      }

      v166 = v124;
      v167 = v125;
      v165 = (*(*v168 + 112))();
      *(v128 + 512) = v166;
      *(v128 + 520) = v167;

      v165();

      goto LABEL_145;
    case 20:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v310))
      {
        v164 = 1;
      }

      else
      {
        v164 = 2;
      }

      [v309 setAdaptiveVolumeConfig_];
      v163 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v129))
      {
        v132 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v131 = v132._object;
        v130 = v132._countAndFlagsBits;
      }

      else
      {
        v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v131 = v133._object;
        v130 = v133._countAndFlagsBits;
      }

      v161 = v130;
      v162 = v131;
      v160 = (*(*v163 + 112))();
      *(v134 + 536) = v161;
      *(v134 + 544) = v162;

      v160();

      goto LABEL_145;
    case 23:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0xAB0))(v310))
      {
        v159 = 1;
      }

      else
      {
        v159 = 2;
      }

      [v309 setSpatialAudioAllowed_];
      goto LABEL_145;
    case 24:
      HeadphoneDevice.setFirmwareUpgradeParticipation()();
      goto LABEL_145;
    case 25:
      HeadphoneDevice.setFirmwareLoggingEnabled()();
      goto LABEL_145;
    default:
      v328 = v310;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_145;
  }
}

uint64_t HeadphoneDevice.getFindMyUrl(hpDevice:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v113 = a1;
  v3 = v2;
  v4 = v113;
  v127 = v3;
  v114 = "getFindMyUrl(hpDevice:)";
  v115 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v116 = "Fatal error";
  v117 = "Unexpectedly found nil while unwrapping an Optional value";
  v118 = "HeadphoneManager/HeadphoneDevice.swift";
  v119 = closure #1 in HeadphoneDevice.getFindMyUrl(hpDevice:);
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v141 = 0;
  v142 = 0;
  v120 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v121 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v122 = v50 - v121;
  v123 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - v121);
  v124 = v50 - v123;
  v125 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - v123);
  v126 = v50 - v125;
  v128 = type metadata accessor for SHA256Digest();
  v129 = *(v128 - 8);
  v130 = v128 - 8;
  v131 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128);
  v132 = v50 - v131;
  v152 = v50 - v131;
  v151 = v4;
  v150 = v8;
  v133 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v134 = [v133 btAddressData];
  if (v134)
  {
    v111 = v134;
    v106 = v134;
    v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v9;
    MEMORY[0x1E69E5920](v106);
    v109 = v107;
    v110 = v108;
  }

  else
  {
    v109 = 0;
    v110 = 0xF000000000000000;
  }

  v104 = v110;
  v105 = v109;
  if ((v110 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v133);
    v50[3] = 0;
    type metadata accessor for Log();
    v50[1] = static Log.shared.getter();
    v51 = 1;
    v50[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();

    v50[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://devices", 0x10uLL, v51 & 1)._object;
    URL.init(string:)();

    v52 = type metadata accessor for URL();
    v53 = *(v52 - 8);
    v54 = v52 - 8;
    if ((*(v53 + 48))(v122, v51) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return (*(v53 + 32))(v112, v122, v52);
  }

  else
  {
    v102 = v105;
    v103 = v104;
    v101 = v104;
    v100 = v105;
    v148 = v105;
    v149 = v104;
    MEMORY[0x1E69E5920](v133);
    if (MEMORY[0x1DA730470](v100, v101) == 6)
    {
      v10 = v120;
      v82 = 1;
      v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X:%02X:%02X:%02X:%02X:%02X", 0x1DuLL, 1);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      v79 = _allocateUninitializedArray<A>(_:)();
      v78 = v11;
      v93 = 0;
      v12 = MEMORY[0x1DA7304B0]();
      v13 = v78;
      v76 = MEMORY[0x1E69E7508];
      v78[3] = MEMORY[0x1E69E7508];
      v77 = MEMORY[0x1E69E7558];
      v13[4] = MEMORY[0x1E69E7558];
      *v13 = v12;
      v83 = 1;
      v14 = MEMORY[0x1DA7304B0]();
      v15 = v100;
      v16 = v101;
      v17 = v77;
      v18 = v78;
      v78[8] = v76;
      v18[9] = v17;
      *(v18 + 40) = v14;
      v19 = MEMORY[0x1DA7304B0](2, v15, v16);
      v20 = v100;
      v21 = v101;
      v22 = v77;
      v23 = v78;
      v78[13] = v76;
      v23[14] = v22;
      *(v23 + 80) = v19;
      v24 = MEMORY[0x1DA7304B0](3, v20, v21);
      v25 = v100;
      v26 = v101;
      v27 = v77;
      v28 = v78;
      v78[18] = v76;
      v28[19] = v27;
      *(v28 + 120) = v24;
      v29 = MEMORY[0x1DA7304B0](4, v25, v26);
      v30 = v77;
      v31 = v78;
      v78[23] = v76;
      v31[24] = v30;
      *(v31 + 160) = v29;
      v81 = 5;
      v32 = MEMORY[0x1DA7304B0]();
      v33 = v77;
      v34 = v78;
      v78[28] = v76;
      v34[29] = v33;
      *(v34 + 200) = v32;
      _finalizeUninitializedArray<A>(_:)();
      v84 = String.init(format:_:)();
      v85 = v35;

      v146 = v84;
      v147 = v85;
      v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BT_%@", v81, v82 & 1);
      v88 = _allocateUninitializedArray<A>(_:)();
      v86 = v36;

      v98 = MEMORY[0x1E69E6158];
      v86[3] = MEMORY[0x1E69E6158];
      v37 = lazy protocol witness table accessor for type String and conformance String();
      v38 = v84;
      v39 = v85;
      v40 = v86;
      v86[4] = v37;
      *v40 = v38;
      v40[1] = v39;
      _finalizeUninitializedArray<A>(_:)();
      v90 = String.init(format:_:)();
      v91 = v41;

      v144 = v90;
      v145 = v91;
      v42 = MEMORY[0x1DA730A00]();
      v92 = v143;
      v143[0] = v42;
      v143[1] = v43;
      lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View();
      v95 = Data.init<A>(_:)();
      v94 = v44;
      v141 = v95;
      v142 = v44;
      type metadata accessor for SHA256();
      v97 = v140;
      v140[0] = v95;
      v140[1] = v94;
      v96 = lazy protocol witness table accessor for type SHA256 and conformance SHA256();
      lazy protocol witness table accessor for type Data and conformance Data();
      static HashFunction.hash<A>(data:)();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
      result = Sequence.compactMap<A>(_:)();
      v99 = result;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        v66 = &v139;
        v139 = v99;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v64 = lazy protocol witness table accessor for type [String] and conformance [A]();
        default argument 0 of BidirectionalCollection<>.joined(separator:)();
        v65 = v46;
        v67 = BidirectionalCollection<>.joined(separator:)();
        v68 = v47;

        outlined destroy of [String](v66);
        v137 = v67;
        v138 = v68;
        v72 = 1;
        v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://device/bridgemissingdevice?id=", 0x27uLL, 1);
        object = v48._object;
        v70 = MEMORY[0x1DA7309C0](v48._countAndFlagsBits);
        v71 = v49;

        v135 = v70;
        v136 = v71;
        URL.init(string:)();
        v73 = type metadata accessor for URL();
        v74 = *(v73 - 8);
        v75 = v73 - 8;
        if ((*(v74 + 48))(v126, v72) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        (*(v74 + 32))(v112, v126, v73);

        (*(v129 + 8))(v132, v128);
        outlined consume of Data._Representation(v95, v94);

        return outlined consume of Data._Representation(v100, v101);
      }
    }

    else
    {
      v58 = 0;
      type metadata accessor for Log();
      v56 = static Log.shared.getter();
      v59 = 1;
      v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
      dispatch thunk of Log.error(_:function:file:line:)();

      v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://devices", 0x10uLL, v59 & 1)._object;
      URL.init(string:)();

      v60 = type metadata accessor for URL();
      v61 = *(v60 - 8);
      v62 = v60 - 8;
      if ((*(v61 + 48))(v124, v59) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      (*(v61 + 32))(v112, v124, v60);
      return outlined consume of Data._Representation(v100, v101);
    }
  }

  return result;
}

uint64_t closure #1 in HeadphoneDevice.getFindMyUrl(hpDevice:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02x", 4uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  _allocateUninitializedArray<A>(_:)();
  *(v2 + 24) = MEMORY[0x1E69E7508];
  *(v2 + 32) = MEMORY[0x1E69E7558];
  *v2 = v5;
  _finalizeUninitializedArray<A>(_:)();
  v6 = String.init(format:_:)();
  v8 = v3;

  result = v6;
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t HeadphoneDevice.featureUpdateListener(_aaDevice:cbDevice:)(void *a1, void *a2)
{
  if ((*((*v2 & *MEMORY[0x1E69E7D40]) + 0x270))())
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Ignore the updated aaDevice", 0x2DuLL, 1);
    dispatch thunk of Log.debug(_:function:file:line:)();
  }

  else
  {
    MEMORY[0x1E69E5928](a1);
    v8 = MEMORY[0x1E69E7D40];
    v3 = (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x260))(a1);
    v9 = (*((*v13 & *v8) + 0xA80))(v3);
    v10 = (*((*v13 & *v8) + 0x258))();
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*v9 + 1960))(v7, v4, v5);
    MEMORY[0x1E69E5920](v7);

    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xB80))(a2);
    return HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(a1, a2);
  }
}

uint64_t HeadphoneDevice.featureUpdateListener(cbDevice:)(uint64_t a1)
{
  v758 = MEMORY[0x1EEE9AC00](a1);
  v746 = v1;
  v747 = "featureUpdateListener(cbDevice:)";
  v748 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v749 = partial apply for implicit closure #3 in HeadphoneDevice.featureUpdateListener(cbDevice:);
  v750 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v751 = closure #1 in OSLogArguments.append(_:)partial apply;
  v752 = closure #1 in OSLogArguments.append(_:)partial apply;
  v753 = closure #1 in OSLogArguments.append(_:)partial apply;
  v754 = "Fatal error";
  v755 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v756 = "HeadphoneManager/HeadphoneDevice.swift";
  v917 = 0;
  v916 = 0;
  v912 = 0;
  v903 = 0;
  v904 = 0;
  v896 = 0;
  v887 = 0;
  v880 = 0;
  v877 = 0;
  v874 = 0;
  v775 = 0;
  v776 = 0;
  v757 = 0;
  v759 = type metadata accessor for Logger();
  v760 = *(v759 - 8);
  v761 = v759 - 8;
  v762 = (*(v760 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v763 = v282 - v762;
  v917 = MEMORY[0x1EEE9AC00](v758);
  v916 = v1;
  if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x270))())
  {
    type metadata accessor for Log();
    v282[1] = static Log.shared.getter();
    v282[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Ignore the updated cbDevice", 0x2DuLL, 1)._object;
    dispatch thunk of Log.debug(_:function:file:line:)();
  }

  else
  {
    v915[1] = [v758 deviceFlags];
    v736 = v915;
    v915[0] = 0x10000000;
    v743 = 0;
    v735 = type metadata accessor for CBDeviceFlags(0);
    lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
    v2 = OptionSet<>.contains(_:)();
    v737 = &v914;
    v914 = v2 & 1;
    v3 = *v746;
    v740 = MEMORY[0x1E69E7D40];
    v4 = *((v3 & *MEMORY[0x1E69E7D40]) + 0xAC0);
    v739 = &v913;
    v5 = v4();
    v6 = v746;
    v738 = v5;
    ==? infix<A>(_:_:)(v7, v737, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    v8 = v738();
    v912 = 0;
    v741 = (*((*v6 & *v740) + 0x240))(v8);
    v742 = [v741 flags];
    MEMORY[0x1E69E5920](v741);
    v911[1] = v742;
    v745 = v911;
    v911[0] = 8;
    v744 = type metadata accessor for CBProductFlags(v743);
    lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
    if (OptionSet<>.contains(_:)())
    {
      v732 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v733 = 0x1FC277000uLL;
      [v732 0x1FC2772B3];
      v734 = v9;
      MEMORY[0x1E69E5920](v732);
      [v758 (v733 + 691)];
      if (v734 == v10)
      {
        v731 = 0;
      }

      else
      {
        v912 = 1;
        v731 = 1;
      }

      v730 = v731;
    }

    else
    {
      v726 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v727 = 0x1FC277000uLL;
      [v726 0x1FC2772A2];
      v729 = v11;
      MEMORY[0x1E69E5920](v726);
      [v758 (v727 + 674)];
      v728 = v12;
      MEMORY[0x1E69E5928](v746);
      v13 = MEMORY[0x1E69E5928](v758);
      if (v729 == v728)
      {
        v722 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))(v13, v729);
        v723 = 0x1FC277000uLL;
        [v722 0x1FC2772C4];
        v724 = v14;
        MEMORY[0x1E69E5920](v722);
        [v758 (v723 + 708)];
        v725 = v724 != v15;
      }

      else
      {
        v725 = 1;
      }

      v721 = v725;
      MEMORY[0x1E69E5920](v746);
      MEMORY[0x1E69E5920](v758);
      MEMORY[0x1E69E5928](v746);
      v16 = MEMORY[0x1E69E5928](v758);
      if (v721)
      {
        v720 = 1;
      }

      else
      {
        v717 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))(v16);
        v718 = 0x1FC277000uLL;
        [v717 0x1FC277291];
        v719 = v17;
        MEMORY[0x1E69E5920](v717);
        [v758 (v718 + 657)];
        v720 = v719 != v18;
      }

      v716 = v720;
      MEMORY[0x1E69E5920](v746);
      MEMORY[0x1E69E5920](v758);
      if (v716)
      {
        v912 = 1;
        v715 = 1;
      }

      else
      {
        v715 = 0;
      }

      v730 = v715;
    }

    v663 = v730;
    v19 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v697 = &v909;
    v909 = v19;
    v910 = v20;
    v695 = 1;
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager featureUpdate:", 0x1FuLL, 1);
    object = v21._object;
    MEMORY[0x1DA7310D0](v21._countAndFlagsBits);

    v665 = &v908;
    v908 = v746;
    v679 = 0;
    v667 = type metadata accessor for HeadphoneDevice(0);
    lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v690 = " ";
    v694 = 1;
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, v695 & 1);
    v666 = v22._object;
    MEMORY[0x1DA7310D0](v22._countAndFlagsBits);

    v677 = "%p";
    v678 = 2;
    v670 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%p", 2uLL, v695 & 1);
    v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    v669 = _allocateUninitializedArray<A>(_:)();
    v668 = v23;
    MEMORY[0x1E69E5928](v746);
    v668[3] = v667;
    v24 = lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    v25 = v668;
    v26 = v746;
    v668[4] = v24;
    *v25 = v26;
    _finalizeUninitializedArray<A>(_:)();
    v671 = String.init(format:_:)();
    v672 = v27;

    v673 = v907;
    v907[0] = v671;
    v907[1] = v672;
    v686 = MEMORY[0x1E69E6158];
    v687 = MEMORY[0x1E69E61C8];
    v688 = MEMORY[0x1E69E61C0];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v673);
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" aaDevice:", 0xAuLL, v695 & 1);
    v674 = v28._object;
    MEMORY[0x1DA7310D0](v28._countAndFlagsBits);
    v29 = v746;

    v675 = (*((*v29 & *MEMORY[0x1E69E7D40]) + 0xA80))(v30);

    v906[2] = v675;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" cb:", 4uLL, v695 & 1);
    v676 = v31._object;
    MEMORY[0x1DA7310D0](v31._countAndFlagsBits);

    v683 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v677, v678, v695 & 1);
    v682 = _allocateUninitializedArray<A>(_:)();
    v680 = v32;
    MEMORY[0x1E69E5928](v758);
    v692 = type metadata accessor for CBDevice();
    v680[3] = v692;
    v33 = lazy protocol witness table accessor for type CBDevice and conformance NSObject();
    v34 = v680;
    v35 = v758;
    v680[4] = v33;
    *v34 = v35;
    _finalizeUninitializedArray<A>(_:)();
    v684 = String.init(format:_:)();
    v685 = v36;

    v689 = v906;
    v906[0] = v684;
    v906[1] = v685;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v689);
    v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v690, v694, v695 & 1);
    v691 = v37._object;
    MEMORY[0x1DA7310D0](v37._countAndFlagsBits);

    v693 = &v905;
    v905 = v758;
    lazy protocol witness table accessor for type CBDevice and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", v694, v695 & 1);
    v696 = v38._object;
    MEMORY[0x1DA7310D0](v38._countAndFlagsBits);
    v39 = v763;

    v699 = v909;
    v698 = v910;

    outlined destroy of DefaultStringInterpolation(v697);
    v700 = MEMORY[0x1DA7309B0](v699, v698);
    v701 = v40;
    v903 = v700;
    v904 = v40;
    v41 = Logger.shared.unsafeMutableAddressor();
    (*(v760 + 16))(v39, v41, v759);

    v703 = 32;
    v704 = 7;
    v42 = swift_allocObject();
    v43 = v701;
    v705 = v42;
    *(v42 + 16) = v700;
    *(v42 + 24) = v43;
    v713 = Logger.logObject.getter();
    v714 = static os_log_type_t.default.getter();
    v702 = 17;
    v707 = swift_allocObject();
    *(v707 + 16) = 32;
    v708 = swift_allocObject();
    *(v708 + 16) = 8;
    v44 = swift_allocObject();
    v45 = v705;
    v706 = v44;
    *(v44 + 16) = v749;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v706;
    v710 = v46;
    *(v46 + 16) = v750;
    *(v46 + 24) = v47;
    v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v709 = _allocateUninitializedArray<A>(_:)();
    v711 = v48;

    v49 = v707;
    v50 = v711;
    *v711 = v751;
    v50[1] = v49;

    v51 = v708;
    v52 = v711;
    v711[2] = v752;
    v52[3] = v51;

    v53 = v710;
    v54 = v711;
    v711[4] = v753;
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v713, v714))
    {
      v55 = v757;
      v656 = static UnsafeMutablePointer.allocate(capacity:)();
      v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v657 = createStorage<A>(capacity:type:)(0, v655, v655);
      v658 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v659 = v768;
      v768[0] = v656;
      v660 = &v767;
      v767 = v657;
      v661 = &v766;
      v766 = v658;
      serialize(_:at:)(2, v768);
      serialize(_:at:)(1, v659);
      v764 = v751;
      v765 = v707;
      closure #1 in osLogInternal(_:log:type:)(&v764, v659, v660, v661);
      v662 = v55;
      if (v55)
      {

        __break(1u);
      }

      else
      {
        v764 = v752;
        v765 = v708;
        closure #1 in osLogInternal(_:log:type:)(&v764, v768, &v767, &v766);
        v654 = 0;
        v764 = v753;
        v765 = v710;
        closure #1 in osLogInternal(_:log:type:)(&v764, v768, &v767, &v766);
        _os_log_impl(&dword_1D93D0000, v713, v714, "%s", v656, 0xCu);
        destroyStorage<A>(_:count:)(v657, 0, v655);
        destroyStorage<A>(_:count:)(v658, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v656, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v56 = v746;
    MEMORY[0x1E69E5920](v713);
    (*(v760 + 8))(v763, v759);
    MEMORY[0x1E69E5928](v758);
    (*((*v56 & *MEMORY[0x1E69E7D40]) + 0x230))(v758);
    if (v663)
    {
      type metadata accessor for Log();
      v652 = static Log.shared.getter();
      v651 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: update battery levels", 0x27uLL, 1)._object;
      dispatch thunk of Log.notice(_:function:file:line:)();

      v653 = HeadphoneDevice.deviceDelegate.getter();
      if (v653)
      {
        v650 = v653;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v649 = v650;
      swift_getObjectType();
      [v649 updateTitleBar];
      swift_unknownObjectRelease();
    }

    v57 = [v758 name];
    v648 = v57;
    if (v57)
    {
      v647 = v648;
      v642 = v648;
      v643 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v644 = v58;
      v57 = MEMORY[0x1E69E5920](v642);
      v645 = v643;
      v646 = v644;
    }

    else
    {
      v645 = 0;
      v646 = 0;
    }

    v640 = v646;
    v641 = v645;
    if (v646)
    {
      v638 = v641;
      v639 = v640;
      v635 = v640;
      v634 = v641;
      v775 = v641;
      v776 = v640;
      v59 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x360))(v57);
      v636 = v774;
      v774[0] = v59;
      v774[1] = v60;
      v772 = v634;
      v773 = v635;
      v637 = MEMORY[0x1DA7309E0](v59, v60, v634, v635);
      outlined destroy of String(v636);
      if ((v637 & 1) == 0)
      {
        v624 = 0;
        type metadata accessor for Log();
        v631 = static Log.shared.getter();
        v61 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v627 = &v770;
        v770 = v61;
        v771 = v62;
        v625 = 1;
        v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: name mismatch - change from ", 0x2EuLL, 1);
        v618 = v63._object;
        MEMORY[0x1DA7310D0](v63._countAndFlagsBits);
        v64 = v746;

        v66 = *v64;
        v632 = MEMORY[0x1E69E7D40];
        v67 = (*((v66 & *MEMORY[0x1E69E7D40]) + 0x360))(v65);
        v619 = v769;
        v769[0] = v67;
        v769[1] = v68;
        v621 = MEMORY[0x1E69E6158];
        v622 = MEMORY[0x1E69E61C8];
        v623 = MEMORY[0x1E69E61C0];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String(v619);
        v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v625 & 1);
        v620 = v69._object;
        MEMORY[0x1DA7310D0](v69._countAndFlagsBits);

        v768[1] = v634;
        v768[2] = v635;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v624, v625 & 1);
        v626 = v70._object;
        MEMORY[0x1DA7310D0](v70._countAndFlagsBits);

        v629 = v770;
        v628 = v771;

        outlined destroy of DefaultStringInterpolation(v627);
        MEMORY[0x1DA7309B0](v629, v628);
        v630 = v71;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v72 = v746;

        (*((*v72 & *v632) + 0x368))(v634, v635);
        v633 = HeadphoneDevice.deviceDelegate.getter();
        if (v633)
        {
          v617 = v633;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v616 = v617;
        swift_getObjectType();
        [v616 updateTopLevelEntryWithHpDevice_];
        swift_unknownObjectRelease();
      }
    }

    v73 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v57);
    v615 = &v902;
    v902 = v73;
    v74 = [v758 listeningMode];
    v613 = &v901;
    v901 = v74;
    v614 = type metadata accessor for CBListeningMode(0);
    lazy protocol witness table accessor for type CBListeningMode and conformance CBListeningMode();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v603 = 0;
      type metadata accessor for Log();
      v610 = static Log.shared.getter();
      v75 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v606 = &v779;
      v779 = v75;
      v780 = v76;
      v604 = 1;
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: listeningMode mismatch - change from ", 0x37uLL, 1);
      v601 = v77._object;
      MEMORY[0x1DA7310D0](v77._countAndFlagsBits);
      v78 = v746;

      v80 = *v78;
      v612 = MEMORY[0x1E69E7D40];
      v778 = (*((v80 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v79);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v604 & 1);
      v602 = v81._object;
      MEMORY[0x1DA7310D0](v81._countAndFlagsBits);

      v611 = 0x1FAA8B000uLL;
      v777 = [v758 0x1FAA8B378];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v603, v604 & 1);
      v605 = v82._object;
      MEMORY[0x1DA7310D0](v82._countAndFlagsBits);

      v608 = v779;
      v607 = v780;

      outlined destroy of DefaultStringInterpolation(v606);
      MEMORY[0x1DA7309B0](v608, v607);
      v609 = v83;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v84 = v746;

      v85 = [v758 (v611 + 888)];
      (*((*v84 & *v612) + 0x3C8))(v85);
    }

    v86 = [v758 smartRoutingMode];
    v599 = &v900;
    v900 = v86;
    v597 = &v899;
    v899 = 0;
    v598 = type metadata accessor for CBSmartRoutingMode(0);
    v600 = lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
    if (== infix<A>(_:_:)())
    {
      v782 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x618))();
      v781 = 1;
      if (== infix<A>(_:_:)())
      {
        type metadata accessor for Log();
        v595 = static Log.shared.getter();
        v594 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: smartRoutingMode mismatch - invalid value received, disable SR", 0x50uLL, 1)._object;
        v596 = 2;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v87 = v746;

        (*((*v87 & *MEMORY[0x1E69E7D40]) + 0x620))(v596);
      }
    }

    else
    {
      v88 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x618))();
      v593 = &v898;
      v898 = v88;
      v89 = [v758 smartRoutingMode];
      v592 = &v897;
      v897 = v89;
      lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v582 = 0;
        type metadata accessor for Log();
        v589 = static Log.shared.getter();
        v90 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v585 = &v785;
        v785 = v90;
        v786 = v91;
        v583 = 1;
        v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: smartRoutingMode mismatch - change from ", 0x3AuLL, 1);
        v580 = v92._object;
        MEMORY[0x1DA7310D0](v92._countAndFlagsBits);
        v93 = v746;

        v95 = *v93;
        v591 = MEMORY[0x1E69E7D40];
        v784 = (*((v95 & *MEMORY[0x1E69E7D40]) + 0x618))(v94);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v583 & 1);
        v581 = v96._object;
        MEMORY[0x1DA7310D0](v96._countAndFlagsBits);

        v590 = 0x1FC652000uLL;
        v783 = [v758 0x1FC6521C4];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v582, v583 & 1);
        v584 = v97._object;
        MEMORY[0x1DA7310D0](v97._countAndFlagsBits);

        v587 = v785;
        v586 = v786;

        outlined destroy of DefaultStringInterpolation(v585);
        MEMORY[0x1DA7309B0](v587, v586);
        v588 = v98;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v99 = v746;

        v100 = [v758 (v590 + 452)];
        (*((*v99 & *v591) + 0x620))(v100);
      }
    }

    v896 = 0;
    v101 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    v578 = &v895;
    v895 = v101;
    v102 = [v758 clickHoldModeLeft];
    v576 = &v894;
    v894 = v102;
    v577 = type metadata accessor for CBPeerUIGestureMode(0);
    v579 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v103 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v103)
    {
      v575 = 0;
    }

    else
    {
      v565 = 0;
      type metadata accessor for Log();
      v572 = static Log.shared.getter();
      v104 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v568 = &v789;
      v789 = v104;
      v790 = v105;
      v566 = 1;
      v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: clickHoldModeLeft mismatch - change from ", 0x3BuLL, 1);
      v563 = v106._object;
      MEMORY[0x1DA7310D0](v106._countAndFlagsBits);
      v107 = v746;

      v109 = *v107;
      v574 = MEMORY[0x1E69E7D40];
      v788 = (*((v109 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v108);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v566 & 1);
      v564 = v110._object;
      MEMORY[0x1DA7310D0](v110._countAndFlagsBits);

      v573 = 0x1FAACC000uLL;
      v787 = [v758 0x1FAACC79CLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v565, v566 & 1);
      v567 = v111._object;
      MEMORY[0x1DA7310D0](v111._countAndFlagsBits);

      v570 = v789;
      v569 = v790;

      outlined destroy of DefaultStringInterpolation(v568);
      MEMORY[0x1DA7309B0](v570, v569);
      v571 = v112;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v113 = v746;

      v114 = [v758 (v573 + 1948)];
      v103 = (*((*v113 & *v574) + 0x3F8))(v114);
      v896 = 1;
      v575 = 1;
    }

    v561 = v575;
    v115 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v103);
    v562 = &v893;
    v893 = v115;
    v892[1] = [v758 clickHoldModeRight];
    v116 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v116)
    {
      v560 = v561;
    }

    else
    {
      v550 = 0;
      type metadata accessor for Log();
      v557 = static Log.shared.getter();
      v117 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v553 = &v793;
      v793 = v117;
      v794 = v118;
      v551 = 1;
      v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: clickHoldModeRight mismatch - change from ", 0x3CuLL, 1);
      v548 = v119._object;
      MEMORY[0x1DA7310D0](v119._countAndFlagsBits);
      v120 = v746;

      v122 = *v120;
      v559 = MEMORY[0x1E69E7D40];
      v792 = (*((v122 & *MEMORY[0x1E69E7D40]) + 0x420))(v121);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v123 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v551 & 1);
      v549 = v123._object;
      MEMORY[0x1DA7310D0](v123._countAndFlagsBits);

      v558 = 0x1FB471000uLL;
      v791 = [v758 0x1FB471778];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v550, v551 & 1);
      v552 = v124._object;
      MEMORY[0x1DA7310D0](v124._countAndFlagsBits);

      v555 = v793;
      v554 = v794;

      outlined destroy of DefaultStringInterpolation(v553);
      MEMORY[0x1DA7309B0](v555, v554);
      v556 = v125;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v126 = v746;

      v127 = [v758 (v558 + 1912)];
      v116 = (*((*v126 & *v559) + 0x428))(v127);
      v896 = 1;
      v560 = 1;
    }

    if (v560)
    {
      v128 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v116);
      v545 = &v805;
      v805 = v128;
      v544 = &v804;
      v804 = 6;
      v546 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
      v547 = == infix<A>(_:_:)();
      MEMORY[0x1E69E5928](v746);
      if (v547)
      {
        v543 = 1;
      }

      else
      {
        v803 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
        v802 = 7;
        v543 = == infix<A>(_:_:)();
      }

      v542 = v543;
      MEMORY[0x1E69E5920](v746);
      v129 = MEMORY[0x1E69E5928](v746);
      if (v542)
      {
        v541 = 1;
      }

      else
      {
        v801 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v129);
        v800 = 6;
        v541 = == infix<A>(_:_:)();
      }

      v540 = v541;
      MEMORY[0x1E69E5920](v746);
      v130 = MEMORY[0x1E69E5928](v746);
      if (v540)
      {
        v539 = 1;
      }

      else
      {
        v799 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v130);
        v798 = 7;
        v539 = == infix<A>(_:_:)();
      }

      v131 = v746;
      v527 = v539;
      MEMORY[0x1E69E5920](v746);
      v132 = *v131;
      v530 = MEMORY[0x1E69E7D40];
      v133 = *((v132 & *MEMORY[0x1E69E7D40]) + 0x680);
      v532 = 1;
      v133(v527 & 1);
      v531 = 0;
      type metadata accessor for Log();
      v538 = static Log.shared.getter();
      v528 = 50;
      v134 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v534 = &v796;
      v796 = v134;
      v797 = v135;
      v136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: New volumeControlToggle is now: ", v528, v532 & 1);
      v529 = v136._object;
      MEMORY[0x1DA7310D0](v136._countAndFlagsBits);
      v137 = v746;

      v139 = (*((*v137 & *v530) + 0x678))(v138);
      v795 = v139 & v532;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v531, v532 & 1);
      v533 = v140._object;
      MEMORY[0x1DA7310D0](v140._countAndFlagsBits);

      v536 = v796;
      v535 = v797;

      outlined destroy of DefaultStringInterpolation(v534);
      MEMORY[0x1DA7309B0](v536, v535);
      v537 = v141;
      dispatch thunk of Log.notice(_:function:file:line:)();
    }

    v526 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x678))(v116);
    MEMORY[0x1E69E5928](v746);
    MEMORY[0x1E69E5928](v758);
    if (v526)
    {
      v525 = 0;
    }

    else
    {
      v142 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x450))();
      v524 = v807;
      v807[0] = v142;
      v143 = [v758 listeningModeConfigs];
      v522 = &v806;
      v806 = v143;
      v523 = type metadata accessor for CBListeningModeConfigs(0);
      lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
      v525 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v521 = v525;
    MEMORY[0x1E69E5920](v746);
    v144 = MEMORY[0x1E69E5920](v758);
    if (v521)
    {
      v511 = 0;
      type metadata accessor for Log();
      v518 = static Log.shared.getter();
      v145 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v514 = &v809;
      v809 = v145;
      v810 = v146;
      v512 = 1;
      v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: listeningModeConfigs mismatch - change from ", 0x3EuLL, 1);
      v507 = v147._object;
      MEMORY[0x1DA7310D0](v147._countAndFlagsBits);
      v148 = v746;

      v150 = *v148;
      v520 = MEMORY[0x1E69E7D40];
      v151 = (*((v150 & *MEMORY[0x1E69E7D40]) + 0x450))(v149);
      v508 = &v808;
      v808 = v151;
      v510 = type metadata accessor for CBListeningModeConfigs(v511);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v512 & 1);
      v509 = v152._object;
      MEMORY[0x1DA7310D0](v152._countAndFlagsBits);

      v519 = 0x1FB75B000uLL;
      v807[1] = [v758 0x1FB75B993];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v511, v512 & 1);
      v513 = v153._object;
      MEMORY[0x1DA7310D0](v153._countAndFlagsBits);

      v516 = v809;
      v515 = v810;

      outlined destroy of DefaultStringInterpolation(v514);
      MEMORY[0x1DA7309B0](v516, v515);
      v517 = v154;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v155 = v746;

      v156 = [v758 (v519 + 2451)];
      v144 = (*((*v155 & *v520) + 0x458))(v156);
    }

    v157 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x528))(v144);
    v505 = v892;
    v892[0] = v157;
    v158 = [v758 doubleTapActionLeft];
    v503 = &v891;
    v891 = v158;
    v504 = type metadata accessor for CBDoubleTapAction(0);
    v506 = lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction();
    v159 = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((v159 & 1) == 0)
    {
      v493 = 0;
      type metadata accessor for Log();
      v500 = static Log.shared.getter();
      v160 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v496 = &v813;
      v813 = v160;
      v814 = v161;
      v494 = 1;
      v162 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: doubleTapActionLeft mismatch - change from ", 0x3DuLL, 1);
      v491 = v162._object;
      MEMORY[0x1DA7310D0](v162._countAndFlagsBits);
      v163 = v746;

      v165 = *v163;
      v502 = MEMORY[0x1E69E7D40];
      v812 = (*((v165 & *MEMORY[0x1E69E7D40]) + 0x528))(v164);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v494 & 1);
      v492 = v166._object;
      MEMORY[0x1DA7310D0](v166._countAndFlagsBits);

      v501 = 0x1FB4C5000uLL;
      v811 = [v758 0x1FB4C5978];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v493, v494 & 1);
      v495 = v167._object;
      MEMORY[0x1DA7310D0](v167._countAndFlagsBits);

      v498 = v813;
      v497 = v814;

      outlined destroy of DefaultStringInterpolation(v496);
      MEMORY[0x1DA7309B0](v498, v497);
      v499 = v168;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v169 = v746;

      v170 = [v758 (v501 + 2424)];
      v159 = (*((*v169 & *v502) + 0x530))(v170);
    }

    v171 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x558))(v159);
    v490 = &v890;
    v890 = v171;
    v889[1] = [v758 doubleTapActionRight];
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v480 = 0;
      type metadata accessor for Log();
      v487 = static Log.shared.getter();
      v172 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v483 = &v817;
      v817 = v172;
      v818 = v173;
      v481 = 1;
      v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: doubleTapActionRight mismatch - change from ", 0x3EuLL, 1);
      v478 = v174._object;
      MEMORY[0x1DA7310D0](v174._countAndFlagsBits);
      v175 = v746;

      v177 = *v175;
      v489 = MEMORY[0x1E69E7D40];
      v816 = (*((v177 & *MEMORY[0x1E69E7D40]) + 0x558))(v176);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v481 & 1);
      v479 = v178._object;
      MEMORY[0x1DA7310D0](v178._countAndFlagsBits);

      v488 = 0x1FB846000uLL;
      v815 = [v758 0x1FB846F78];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v480, v481 & 1);
      v482 = v179._object;
      MEMORY[0x1DA7310D0](v179._countAndFlagsBits);

      v485 = v817;
      v484 = v818;

      outlined destroy of DefaultStringInterpolation(v483);
      MEMORY[0x1DA7309B0](v485, v484);
      v486 = v180;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v181 = v746;

      v182 = [v758 (v488 + 3960)];
      (*((*v181 & *v489) + 0x560))(v182);
    }

    v183 = [v758 crownRotationDirection];
    v475 = v889;
    v889[0] = v183;
    v473 = &v888;
    v888 = 0;
    v474 = type metadata accessor for CBPeerCrownRotationDirection(0);
    v476 = lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection();
    v477 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v746);
    MEMORY[0x1E69E5928](v758);
    if (v477)
    {
      v472 = 0;
    }

    else
    {
      v184 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x588))();
      v471 = v820;
      v820[0] = v184;
      v819 = [v758 crownRotationDirection];
      v472 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v470 = v472;
    MEMORY[0x1E69E5920](v746);
    v185 = MEMORY[0x1E69E5920](v758);
    if (v470)
    {
      v460 = 0;
      type metadata accessor for Log();
      v467 = static Log.shared.getter();
      v186 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v463 = &v821;
      v821 = v186;
      v822 = v187;
      v461 = 1;
      v188 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: crownRotationDirection mismatch - change from ", 0x40uLL, 1);
      v458 = v188._object;
      MEMORY[0x1DA7310D0](v188._countAndFlagsBits);
      v189 = v746;

      v191 = *v189;
      v469 = MEMORY[0x1E69E7D40];
      v820[2] = (*((v191 & *MEMORY[0x1E69E7D40]) + 0x588))(v190);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v192 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v461 & 1);
      v459 = v192._object;
      MEMORY[0x1DA7310D0](v192._countAndFlagsBits);

      v468 = 0x1FADD1000uLL;
      v820[1] = [v758 0x1FADD15D4];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v193 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v460, v461 & 1);
      v462 = v193._object;
      MEMORY[0x1DA7310D0](v193._countAndFlagsBits);

      v465 = v821;
      v464 = v822;

      outlined destroy of DefaultStringInterpolation(v463);
      MEMORY[0x1DA7309B0](v465, v464);
      v466 = v194;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v195 = v746;

      v196 = [v758 (v468 + 1492)];
      v185 = (*((*v195 & *v469) + 0x590))(v196);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v185) & 1) == 1)
    {
      v457 = 1;
    }

    else
    {
      v457 = 2;
    }

    v451 = v457;
    v887 = v457;
    v197 = [v758 placementMode];
    v454 = &v886;
    v886 = v197;
    v452 = &v885;
    v885 = 0;
    v453 = type metadata accessor for CBDevicePlacementMode(0);
    v455 = lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
    v456 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v456)
    {
      v450 = 0;
    }

    else
    {
      v449 = &v824;
      v824 = v451;
      v823 = [v758 placementMode];
      v450 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v448 = v450;
    v198 = MEMORY[0x1E69E5920](v758);
    if (v448)
    {
      v437 = 0;
      type metadata accessor for Log();
      v444 = static Log.shared.getter();
      v199 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v440 = &v827;
      v827 = v199;
      v828 = v200;
      v438 = 1;
      v201 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: inEarDetection mismatch - change from ", 0x38uLL, 1);
      v435 = v201._object;
      MEMORY[0x1DA7310D0](v201._countAndFlagsBits);

      v826[2] = v451;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v202 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v438 & 1);
      v436 = v202._object;
      MEMORY[0x1DA7310D0](v202._countAndFlagsBits);

      v445 = 0x1FC64F000uLL;
      v826[1] = [v758 0x1FC64FD9BLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v203 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v437, v438 & 1);
      v439 = v203._object;
      MEMORY[0x1DA7310D0](v203._countAndFlagsBits);

      v442 = v827;
      v441 = v828;

      outlined destroy of DefaultStringInterpolation(v440);
      MEMORY[0x1DA7309B0](v442, v441);
      v443 = v204;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v205 = v746;

      v206 = [v758 (v445 + 3483)];
      v447 = v826;
      v826[0] = v206;
      v446 = &v825;
      v825 = 1;
      lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
      v207 = == infix<A>(_:_:)();
      v198 = (*((*v205 & *MEMORY[0x1E69E7D40]) + 0x5C0))(v207 & 1);
    }

    v208 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x648))(v198);
    v434 = &v884;
    v884 = v208;
    v209 = [v758 microphoneMode];
    v432 = &v883;
    v883 = v209;
    v433 = type metadata accessor for CBMicrophoneMode(0);
    lazy protocol witness table accessor for type CBMicrophoneMode and conformance CBMicrophoneMode();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v422 = 0;
      type metadata accessor for Log();
      v429 = static Log.shared.getter();
      v210 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v425 = &v831;
      v831 = v210;
      v832 = v211;
      v423 = 1;
      v212 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: microphoneMode mismatch - change from ", 0x38uLL, 1);
      v420 = v212._object;
      MEMORY[0x1DA7310D0](v212._countAndFlagsBits);
      v213 = v746;

      v215 = *v213;
      v431 = MEMORY[0x1E69E7D40];
      v830 = (*((v215 & *MEMORY[0x1E69E7D40]) + 0x648))(v214);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v216 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v423 & 1);
      v421 = v216._object;
      MEMORY[0x1DA7310D0](v216._countAndFlagsBits);

      v430 = 0x1FB03F000uLL;
      v829 = [v758 0x1FB03F9DDLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v217 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v422, v423 & 1);
      v424 = v217._object;
      MEMORY[0x1DA7310D0](v217._countAndFlagsBits);

      v427 = v831;
      v426 = v832;

      outlined destroy of DefaultStringInterpolation(v425);
      MEMORY[0x1DA7309B0](v427, v426);
      v428 = v218;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v219 = v746;

      v220 = [v758 (v430 + 2525)];
      (*((*v219 & *v431) + 0x650))(v220);
    }

    v418 = [v758 endCallConfig];
    v882 = v418;
    v419 = [v758 muteControlConfig];
    v881 = v419;
    if (CBPeerCallManagementCapability.rawValue.getter([v758 muteControlCapability]))
    {
      v416 = v844;
      v844[0] = v418;
      v414 = &v843;
      v843 = 0;
      v415 = type metadata accessor for CBPeerCallConfig(0);
      v417 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      if (== infix<A>(_:_:)())
      {
        v412 = 1;
      }

      else
      {
        v842[6] = v418;
        v842[5] = 1;
        v412 = == infix<A>(_:_:)();
      }

      v413 = v418;
      v411 = v418;
      if (v412)
      {
        v409 = 1;
      }

      else
      {
        v842[4] = v419;
        v842[3] = 0;
        v409 = == infix<A>(_:_:)();
      }

      v410 = v419;
      v408 = v419;
      if (v409)
      {
        v406 = 1;
      }

      else
      {
        v842[2] = v408;
        v842[1] = 1;
        v406 = == infix<A>(_:_:)();
      }

      v407 = v408;
      v405 = v408;
      if (v406)
      {
        v882 = 3;
        v881 = 2;
        v403 = 3;
        v404 = 2;
      }

      else
      {
        v403 = v411;
        v404 = v405;
      }

      v398 = v404;
      v397 = v403;
      v221 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7E0))();
      v400 = v842;
      v842[0] = v221;
      v399 = &v841;
      v841 = v398;
      v401 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v402 = dispatch thunk of static Equatable.== infix(_:_:)();
      MEMORY[0x1E69E5928](v746);
      if (v402)
      {
        v840 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v839 = v397;
        v395 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
      }

      else
      {
        v395 = 1;
      }

      v396 = v397;
      v393 = v397;
      v394 = v395;
      v222 = MEMORY[0x1E69E5920](v746);
      if (v394)
      {
        v384 = 0;
        type metadata accessor for Log();
        v391 = static Log.shared.getter();
        v382 = 4;
        v223 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v387 = &v837;
        v837 = v223;
        v838 = v224;
        v385 = 1;
        v225 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: muteControlGesture mismatch - change from ", 0x3CuLL, 1);
        v378 = v225._object;
        MEMORY[0x1DA7310D0](v225._countAndFlagsBits);
        v226 = v746;

        v228 = *v226;
        v392 = MEMORY[0x1E69E7D40];
        v836 = (*((v228 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v227);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v381 = " to ";
        v229 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", v382, v385 & 1);
        v379 = v229._object;
        MEMORY[0x1DA7310D0](v229._countAndFlagsBits);

        v835 = v398;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v230 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and endCallGesture mismatch - change from ", 0x2BuLL, v385 & 1);
        v380 = v230._object;
        MEMORY[0x1DA7310D0](v230._countAndFlagsBits);
        v231 = v746;

        v834 = (*((*v231 & *v392) + 0x7B0))(v232);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v233 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v381, v382, v385 & 1);
        v383 = v233._object;
        MEMORY[0x1DA7310D0](v233._countAndFlagsBits);

        v833 = v393;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v234 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v384, v385 & 1);
        v386 = v234._object;
        MEMORY[0x1DA7310D0](v234._countAndFlagsBits);

        v389 = v837;
        v388 = v838;

        outlined destroy of DefaultStringInterpolation(v387);
        MEMORY[0x1DA7309B0](v389, v388);
        v390 = v235;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v236 = v746;

        (*((*v236 & *v392) + 0x7B8))(v393);
        v222 = (*((*v746 & *v392) + 0x7E8))(v398);
      }
    }

    else
    {
      v222 = CBPeerCallManagementCapability.rawValue.getter([v758 endCallCapability]);
      if (v222)
      {
        v376 = v850;
        v850[0] = v418;
        v374 = &v849;
        v849 = 0;
        v375 = type metadata accessor for CBPeerCallConfig(0);
        v377 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
        if (== infix<A>(_:_:)())
        {
          v372 = 1;
        }

        else
        {
          v848[2] = v418;
          v848[1] = 1;
          v372 = == infix<A>(_:_:)();
        }

        v373 = v418;
        v371 = v418;
        if (v372)
        {
          v882 = 2;
          v370 = 2;
        }

        else
        {
          v370 = v371;
        }

        v367 = v370;
        v237 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v369 = v848;
        v848[0] = v237;
        v368 = &v847;
        v847 = v367;
        lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
        v222 = dispatch thunk of static Equatable.== infix(_:_:)();
        if ((v222 & 1) == 0)
        {
          v358 = 0;
          type metadata accessor for Log();
          v365 = static Log.shared.getter();
          v238 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
          v361 = &v845;
          v845 = v238;
          v846 = v239;
          v359 = 1;
          v240 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: endCallGesture mismatch - change from ", 0x38uLL, 1);
          v356 = v240._object;
          MEMORY[0x1DA7310D0](v240._countAndFlagsBits);
          v241 = v746;

          v243 = *v241;
          v366 = MEMORY[0x1E69E7D40];
          v844[2] = (*((v243 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v242);
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v244 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v359 & 1);
          v357 = v244._object;
          MEMORY[0x1DA7310D0](v244._countAndFlagsBits);

          v844[1] = v367;
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v245 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v358, v359 & 1);
          v360 = v245._object;
          MEMORY[0x1DA7310D0](v245._countAndFlagsBits);

          v363 = v845;
          v362 = v846;

          outlined destroy of DefaultStringInterpolation(v361);
          MEMORY[0x1DA7309B0](v363, v362);
          v364 = v246;
          dispatch thunk of Log.notice(_:function:file:line:)();
          v247 = v746;

          v222 = (*((*v247 & *v366) + 0x7B8))(v367);
        }
      }
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x840))(v222) & 1) == 1)
    {
      v355 = 1;
    }

    else
    {
      v355 = 2;
    }

    v349 = v355;
    v880 = v355;
    v248 = [v758 selectiveSpeechListeningConfig];
    v352 = &v879;
    v879 = v248;
    v350 = &v878;
    v878 = 0;
    v351 = type metadata accessor for CBPeerSelectiveSpeechListeningConfig(0);
    v353 = lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
    v354 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v354)
    {
      v348 = 0;
    }

    else
    {
      v850[2] = [v758 selectiveSpeechListeningConfig];
      v850[1] = 3;
      v348 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v347 = v348;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v347)
    {
      v345 = &v851;
      v851 = v349;
      v850[3] = [v758 selectiveSpeechListeningConfig];
      v346 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v346 = 0;
    }

    v344 = v346;
    v249 = MEMORY[0x1E69E5920](v758);
    if (v344)
    {
      v333 = 0;
      type metadata accessor for Log();
      v340 = static Log.shared.getter();
      v250 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v336 = &v854;
      v854 = v250;
      v855 = v251;
      v334 = 1;
      v252 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: SelectiveSpeechListening mismatch - change from ", 0x42uLL, 1);
      v331 = v252._object;
      MEMORY[0x1DA7310D0](v252._countAndFlagsBits);

      v853[2] = v349;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v253 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v334 & 1);
      v332 = v253._object;
      MEMORY[0x1DA7310D0](v253._countAndFlagsBits);

      v341 = 0x1FC650000uLL;
      v853[1] = [v758 0x1FC65032ELL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v254 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v333, v334 & 1);
      v335 = v254._object;
      MEMORY[0x1DA7310D0](v254._countAndFlagsBits);

      v338 = v854;
      v337 = v855;

      outlined destroy of DefaultStringInterpolation(v336);
      MEMORY[0x1DA7309B0](v338, v337);
      v339 = v255;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v256 = v746;

      v257 = [v758 (v341 + 814)];
      v343 = v853;
      v853[0] = v257;
      v342 = &v852;
      v852 = 1;
      lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
      v258 = == infix<A>(_:_:)();
      v249 = (*((*v256 & *MEMORY[0x1E69E7D40]) + 0x848))(v258 & 1);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x870))(v249) & 1) == 1)
    {
      v330 = 1;
    }

    else
    {
      v330 = 2;
    }

    v324 = v330;
    v877 = v330;
    v259 = [v758 conversationDetectConfig];
    v327 = &v876;
    v876 = v259;
    v325 = &v875;
    v875 = 0;
    v326 = type metadata accessor for CBPeerConversationDetectConfig(0);
    v328 = lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
    v329 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v329)
    {
      v323 = 0;
    }

    else
    {
      v857 = [v758 conversationDetectConfig];
      v856 = 3;
      v323 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v322 = v323;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v322)
    {
      v320 = &v859;
      v859 = v324;
      v858 = [v758 conversationDetectConfig];
      v321 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v321 = 0;
    }

    v319 = v321;
    v260 = MEMORY[0x1E69E5920](v758);
    if (v319)
    {
      v308 = 0;
      type metadata accessor for Log();
      v315 = static Log.shared.getter();
      v261 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v311 = &v862;
      v862 = v261;
      v863 = v262;
      v309 = 1;
      v263 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: ConversationDetect mismatch - change from ", 0x3CuLL, 1);
      v306 = v263._object;
      MEMORY[0x1DA7310D0](v263._countAndFlagsBits);

      v861[2] = v324;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v264 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v309 & 1);
      v307 = v264._object;
      MEMORY[0x1DA7310D0](v264._countAndFlagsBits);

      v316 = 0x1FC64E000uLL;
      v861[1] = [v758 0x1FC64E1B5];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v265 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v308, v309 & 1);
      v310 = v265._object;
      MEMORY[0x1DA7310D0](v265._countAndFlagsBits);

      v313 = v862;
      v312 = v863;

      outlined destroy of DefaultStringInterpolation(v311);
      MEMORY[0x1DA7309B0](v313, v312);
      v314 = v266;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v267 = v746;

      v268 = [v758 (v316 + 437)];
      v318 = v861;
      v861[0] = v268;
      v317 = &v860;
      v860 = 1;
      lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
      v269 = == infix<A>(_:_:)();
      v260 = (*((*v267 & *MEMORY[0x1E69E7D40]) + 0x878))(v269 & 1);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v260) & 1) == 1)
    {
      v305 = 1;
    }

    else
    {
      v305 = 2;
    }

    v299 = v305;
    v874 = v305;
    v270 = [v758 adaptiveVolumeConfig];
    v302 = &v873;
    v873 = v270;
    v300 = &v872;
    v872 = 0;
    v301 = type metadata accessor for CBPeerAdaptiveVolumeConfig(0);
    v303 = lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
    v304 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v304)
    {
      v298 = 0;
    }

    else
    {
      v865 = [v758 adaptiveVolumeConfig];
      v864 = 3;
      v298 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v297 = v298;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v297)
    {
      v295 = &v867;
      v867 = v299;
      v866 = [v758 adaptiveVolumeConfig];
      v296 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v296 = 0;
    }

    v294 = v296;
    v271 = MEMORY[0x1E69E5920](v758);
    if (v294)
    {
      v283 = 0;
      type metadata accessor for Log();
      v290 = static Log.shared.getter();
      v272 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v286 = &v870;
      v870 = v272;
      v871 = v273;
      v284 = 1;
      v274 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: AdaptiveVolume mismatch - change from ", 0x38uLL, 1);
      v282[2] = v274._object;
      MEMORY[0x1DA7310D0](v274._countAndFlagsBits);

      v869[2] = v299;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v275 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v284 & 1);
      v282[3] = v275._object;
      MEMORY[0x1DA7310D0](v275._countAndFlagsBits);

      v291 = 0x1FC64D000uLL;
      v869[1] = [v758 0x1FC64DBE6];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v276 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v283, v284 & 1);
      v285 = v276._object;
      MEMORY[0x1DA7310D0](v276._countAndFlagsBits);

      v288 = v870;
      v287 = v871;

      outlined destroy of DefaultStringInterpolation(v286);
      MEMORY[0x1DA7309B0](v288, v287);
      v289 = v277;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v278 = v746;

      v279 = [v758 (v291 + 3046)];
      v293 = v869;
      v869[0] = v279;
      v292 = &v868;
      v868 = 1;
      lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
      v280 = == infix<A>(_:_:)();
      v271 = (*((*v278 & *MEMORY[0x1E69E7D40]) + 0x8A8))(v280 & 1);
    }

    (*((*v746 & *MEMORY[0x1E69E7D40]) + 0xBD8))(v271);
  }
}

Swift::String __swiftcall HeadphoneDevice.getModelName()()
{
  v21 = v0;
  v20 = HeadphoneDevice.deviceDelegate.getter();
  v16 = v20 == 0;
  outlined destroy of HeadphoneDeviceDelegate?(&v20);
  if (v16)
  {
    assertionFailure(_:file:line:)();
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call isAppleHeadphone", 0x3BuLL, 1);
  v6 = 866;
  dispatch thunk of Log.notice(_:function:file:line:)();

  v15 = HeadphoneDevice.deviceDelegate.getter();
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    LOBYTE(v6) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  ObjectType = swift_getObjectType();
  v12 = (*((*v17 & *MEMORY[0x1E69E7D40]) + 0x228))(ObjectType);
  v13 = [v14 isAppleHeadphoneWithCbDevice_];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    v10 = (*((*v17 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v11 = [v10 productName];
    if (v11)
    {
      v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8._object = v2;
      MEMORY[0x1E69E5920](v11);
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1E69E5920](v10);
    v18 = v9;
    if (v9._object)
    {
      v19 = v18;
    }

    else
    {
      v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AirPods", 7uLL, 1);
    }

    v7 = v19;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Not Available", 0xDuLL, 1);
  }

  object = v7._object;
  countAndFlagsBits = v7._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Void __swiftcall HeadphoneDevice.setFindMyStatus()()
{
  v40 = partial apply for closure #1 in HeadphoneDevice.setFindMyStatus();
  v41 = partial apply for closure #2 in HeadphoneDevice.setFindMyStatus();
  v42 = "setFindMyStatus()";
  v43 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v44 = 0;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = v17 - v48;
  v50 = type metadata accessor for DispatchQoS();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v17 - v53;
  v76 = v0;
  v1 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();
  v56 = v1;

  (*(*v1 + 152))(9);
  v2 = v55;

  v57 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x228))(v3);
  v58 = [v57 btAddressData];
  if (v58)
  {
    v39 = v58;
    v34 = v58;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v4;
    MEMORY[0x1E69E5920](v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  v32 = v38;
  v33 = v37;
  if ((v38 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v57);
    type metadata accessor for Log();
    v17[2] = static Log.shared.getter();
    v17[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set FindMyNetwork Status, Invalid BT Address", 0x48uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v30 = v33;
    v31 = v32;
    v5 = v55;
    v29 = v32;
    v28 = v33;
    v74 = v33;
    v75 = v32;
    MEMORY[0x1E69E5920](v57);
    v27 = dispatch_group_create();
    v73 = v27;
    dispatch_group_enter(v27);
    v6 = *v5;
    v18 = MEMORY[0x1E69E7D40];
    v7 = (*((v6 & *MEMORY[0x1E69E7D40]) + 0x300))();
    v8 = v55;
    v22 = v7;
    swift_getObjectType();
    outlined copy of Data._Representation(v28, v29);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = outlined consume of Data._Representation(v28, v29);
    v19 = (*((*v8 & *v18) + 0x2D0))(v9);
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v27);
    v23 = 7;
    v10 = swift_allocObject();
    v11 = v40;
    v12 = v10;
    v13 = v27;
    *(v12 + 16) = v55;
    *(v12 + 24) = v13;
    v71 = v11;
    v72 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v67 = 1107296256;
    v68 = 0;
    v69 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v70 = &block_descriptor_0;
    v20 = _Block_copy(&aBlock);

    MEMORY[0x1E69E5920](v55);
    [v22 setFindMyNetworkStatusForMACAddress:isa status:v19 & 1 completion:v20];
    _Block_release(v20);
    MEMORY[0x1E69E5920](isa);
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v55);
    v14 = swift_allocObject();
    v15 = v41;
    v16 = v24;
    *(v14 + 16) = v55;
    v64 = v15;
    v65 = v14;
    v59 = MEMORY[0x1E69E9820];
    v60 = v16;
    v61 = 0;
    v62 = thunk for @escaping @callee_guaranteed () -> ();
    v63 = &block_descriptor_289;
    v25 = _Block_copy(&v59);
    default argument 0 of OS_dispatch_group.notify(qos:flags:queue:execute:)();
    default argument 1 of OS_dispatch_group.notify(qos:flags:queue:execute:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    (*(v46 + 8))(v49, v45);
    (*(v51 + 8))(v54, v50);
    _Block_release(v25);

    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    outlined consume of Data._Representation(v28, v29);
  }
}