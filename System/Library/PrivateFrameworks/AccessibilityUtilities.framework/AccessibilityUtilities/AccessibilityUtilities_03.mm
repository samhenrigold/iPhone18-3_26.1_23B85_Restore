uint64_t sub_18B23D5A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.hearingAidRoutingEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.hearingAidRoutingEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.hearingAidRoutingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23D8D0;
}

uint64_t sub_18B23D8D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$listAnnotation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23DA48@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___listAnnotation_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6610, &qword_18B2F9638);
    v17[3] = "AXSVoiceOverUsesSiriSounds";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5528, 255, type metadata accessor for AXSVoiceOverFeedbackOption, MEMORY[0x1E69882D0]);
    sub_18B26FC84(&qword_1EA9B6D88, 255, type metadata accessor for AXSVoiceOverFeedbackOption, MEMORY[0x1E69882C8]);
    sub_18B26FC84(&qword_1EA9B6D90, 255, type metadata accessor for AXSVoiceOverFeedbackOption, &unk_18B2F8E10);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B23DEA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.listAnnotation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.listAnnotation.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.listAnnotation.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B23E238;
}

void sub_18B23E238(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$useSiriSounds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23E3B8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___useSiriSounds_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B23E58C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.useSiriSounds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.useSiriSounds.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.useSiriSounds.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23E8BC;
}

uint64_t sub_18B23E8BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$cursorOutputStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23EA34@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___cursorOutputStyle_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6600, &qword_18B2F9630);
    v16[3] = "utoTurnsReadingContent";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D80, 255, type metadata accessor for AXVoiceOverCursorOutputStyle, &unk_18B2F8E4C);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23EE28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.cursorOutputStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.cursorOutputStyle.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.cursorOutputStyle.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B23F1C0;
}

void sub_18B23F1C0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$braillePanningAutoTurnsReadingContent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23F340@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___braillePanningAutoTurnsReadingContent_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleDisplayOutputMode";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B23F6EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B23FA1C;
}

uint64_t sub_18B23FA1C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleDisplayOutputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B23FB94@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0, &qword_18B2F9628);
    v17[3] = "hBrailleDisplayInputMode";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882C0]);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882B8]);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode, &unk_18B2F8EF8);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B23FFEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayOutputMode.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B240384;
}

void sub_18B240384(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleDisplayInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B240504@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0, &qword_18B2F9628);
    v17[3] = "hBrailleGesturesInputMode";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882C0]);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882B8]);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode, &unk_18B2F8EF8);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24095C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayInputMode.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B240CF4;
}

void sub_18B240CF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B240E74@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputMode_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0, &qword_18B2F9628);
    v17[3] = "yncInputOutputTables";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5538, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882C0]);
    sub_18B26FC84(&qword_1EA9B6D70, 255, type metadata accessor for AXSVoiceOverBrailleMode, MEMORY[0x1E69882B8]);
    sub_18B26FC84(&qword_1EA9B6D78, 255, type metadata accessor for AXSVoiceOverBrailleMode, &unk_18B2F8EF8);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B2412CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputMode.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesInputMode.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B241664;
}

void sub_18B241664(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2417E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplaySyncInputOutputTables_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65E0, &qword_18B2F9620);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F910(&qword_1ED653BC8, MEMORY[0x1E69E6390], MEMORY[0x1E69E7C88]);
    sub_18B26F910(&qword_1ED653BD0, MEMORY[0x1E69E6378], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B241A0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B22F010(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B241CB4;
}

uint64_t sub_18B241CB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3 & 1;
}

uint64_t AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1 & 1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter() & 1;
  return sub_18B241FCC;
}

uint64_t sub_18B241FCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 9) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleDisplayInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B242150@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayInputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v16[3] = "utputTableIdentifier";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

double sub_18B24254C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B242898;
}

void sub_18B242898(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleDisplayOutputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B242A5C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleDisplayOutputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v16[3] = "InputTableIdentifier";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

double sub_18B242E58@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B2431A4;
}

void sub_18B2431A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B243368@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesInputTableIdentifier_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v16[3] = "ActivationGestureEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

void sub_18B243734(void *a1@<X8>)
{
  v2 = sub_18B2C90B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 userLocale];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v9 = v8;

  v10 = objc_opt_self();
  sub_18B2C9074();

  v11 = sub_18B2C9064();
  (*(v3 + 8))(v5, v2);
  v12 = [v10 defaultTableForLocale_];

  if (v12)
  {
    v13 = [v12 identifier];

    v12 = sub_18B2C9894();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v12;
  a1[1] = v15;
}

double sub_18B243908@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B243C54;
}

void sub_18B243C54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesActivationGestureEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B243E18@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesActivationGestureEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleGesturesSoundOption";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2441C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2444F4;
}

uint64_t sub_18B2444F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSoundOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24466C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSoundOption_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65D0, &qword_18B2F9618);
    v17[3] = "UsesHapticFeedback";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D58, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption, MEMORY[0x1E6988310]);
    sub_18B26FC84(&qword_1EA9B6D60, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption, MEMORY[0x1E6988308]);
    sub_18B26FC84(&qword_1EA9B6D68, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSoundOption, &unk_18B2F8F34);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B244AD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSoundOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSoundOption.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesSoundOption.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B244E68;
}

void sub_18B244E68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesUsesHapticFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B244FE8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesHapticFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "UsesTypingSoundFeedback";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B245394@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2456C4;
}

uint64_t sub_18B2456C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesUsesTypingSoundFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24583C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesUsesTypingSoundFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "tNumbersFeedback";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B245BE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B245F18;
}

uint64_t sub_18B245F18(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSingleHandUsesDotNumbersFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B246090@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandUsesDotNumbersFeedback_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "DisplaysEnteredText";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24643C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24676C;
}

uint64_t sub_18B24676C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesDisplayEnteredText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2468E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesDisplayEnteredText_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "LearnsDotPositions";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B246C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B246FC0;
}

uint64_t sub_18B246FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesLearnsDotPositions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B247138@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesLearnsDotPositions_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "AutoActivateOnTextFields";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2474E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B247814;
}

uint64_t sub_18B247814(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesAutoActivateOnTextFields.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24798C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesAutoActivateOnTextFields_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "lleGesturesSingleHandStyle";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B247D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B248068;
}

uint64_t sub_18B248068(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleGesturesSingleHandStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2481E0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesSingleHandStyle_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65C0, &qword_18B2F9610);
    v16[3] = "cterAcceptanceTestBraille";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D50, 255, type metadata accessor for AXSVoiceOverBrailleGesturesSingleHandStyle, &unk_18B2F8F70);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B2485D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesSingleHandStyle.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesSingleHandStyle.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B24896C;
}

void sub_18B24896C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleGesturesCharacterAcceptanceTestBraille.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B248AEC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleGesturesCharacterAcceptanceTestBraille_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B248D14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B249060;
}

void sub_18B249060(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$perkinsKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B249224@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsKeyboardInputEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2493F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.perkinsKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.perkinsKeyboardInputEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.perkinsKeyboardInputEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B249728;
}

uint64_t sub_18B249728(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$perkinsChordKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2498A0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___perkinsChordKeyboardInputEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B249A74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B249DA4;
}

uint64_t sub_18B249DA4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleHIMSUsesDot7ForCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B249F1C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleHIMSUsesDot7ForCommand_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24A0F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24A420;
}

uint64_t sub_18B24A420(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$keyboardBrailleUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24A598@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___keyboardBrailleUIEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24A76C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.keyboardBrailleUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.keyboardBrailleUIEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.keyboardBrailleUIEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24AA9C;
}

uint64_t sub_18B24AA9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIShouldReopenViewsWhenRestart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24AC14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShouldReopenViewsWhenRestart_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B24ADE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24B118;
}

uint64_t sub_18B24B118(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIReadListItemsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24B290@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIReadListItemsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleUIVisualsEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24B63C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIReadListItemsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIReadListItemsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIReadListItemsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24B96C;
}

uint64_t sub_18B24B96C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIVisualsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24BAE4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIVisualsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleUIBrailleNotesSortType";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24BE90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIVisualsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIVisualsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIVisualsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24C1C0;
}

uint64_t sub_18B24C1C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBrailleNotesSortType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24C338@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortType_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65B0, &qword_18B2F9608);
    v17[3] = "eNotesSortDirection";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D38, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType, MEMORY[0x1E6988320]);
    sub_18B26FC84(&qword_1EA9B6D40, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType, MEMORY[0x1E6988318]);
    sub_18B26FC84(&qword_1EA9B6D48, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortType, &unk_18B2F8FAC);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24C790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortType.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUIBrailleNotesSortType.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B24CB28;
}

void sub_18B24CB28(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUIBrailleNotesSortDirection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24CCA8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage])
  {
    v11 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBrailleNotesSortDirection_Storage];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65A0, &qword_18B2F9600);
    v17[3] = "SpeechFeedbackEnabled";
    v17[4] = v12;
    v17[0] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v17[2] = ObjectType;
    v13 = sub_18B2C9504();
    v19 = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B2F88F0;
    v17[1] = a1;
    sub_18B2C94F4();
    v21 = v14;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v21 = v8;
    v20 = v13;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D20, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection, MEMORY[0x1E6988330]);
    sub_18B26FC84(&qword_1EA9B6D28, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection, MEMORY[0x1E6988328]);
    sub_18B26FC84(&qword_1EA9B6D30, 255, type metadata accessor for AXSVoiceOverBrailleUIBrailleNotesSortDirection, &unk_18B2F8FE8);
    sub_18B26FC84(&qword_1EA9B5550, v15, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    a2 = v18;
    v11 = sub_18B2C9464();
    *&a1[v10] = v11;
  }

  *a2 = v11;
}

uint64_t sub_18B24D100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B24D498;
}

void sub_18B24D498(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUITypingSpeechFeedbackEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24D618@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUITypingSpeechFeedbackEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleUIBRFReflowEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24D9C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24DCF4;
}

uint64_t sub_18B24DCF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBRFReflowEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24DE6C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFReflowEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "ipPageIndicatorsEnabled";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24E218@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFReflowEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFReflowEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIBRFReflowEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24E548;
}

uint64_t sub_18B24E548(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIBRFStripPageIndicatorsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24E6C0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIBRFStripPageIndicatorsEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleUICalculatorUsesUEBMath";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24EA6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24ED9C;
}

uint64_t sub_18B24ED9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUICalculatorUsesUEBMath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24EF14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUICalculatorUsesUEBMath_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "hBrailleUILiveCaptionsSource";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24F2C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B24F5F0;
}

uint64_t sub_18B24F5F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUILiveCaptionsSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B24F768@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUILiveCaptionsSource_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6590, &qword_18B2F95F8);
    v16[3] = "ionMessageAnnounced";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B6D18, 255, type metadata accessor for AXSVoiceOverBrailleUILiveCaptionsSource, &unk_18B2F9024);
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9444();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B24FB5C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  *(swift_allocObject() + 16) = v3;
  a2(0);
  v5 = v3;
  sub_18B2C96C4();
}

uint64_t sub_18B24FBE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUILiveCaptionsSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUILiveCaptionsSource.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleUILiveCaptionsSource.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B24FF7C;
}

void sub_18B24FF7C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUIMigrationMessageAnnounced.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2500FC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIMigrationMessageAnnounced_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2502D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B250600;
}

uint64_t sub_18B250600(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleUIShowsBackButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B250778@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUIShowsBackButton_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B25094C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUIShowsBackButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUIShowsBackButton.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUIShowsBackButton.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B250C7C;
}

uint64_t sub_18B250C7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$brailleZoomOutNumCellsPerElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B250DF4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleZoomOutNumCellsPerElement_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6630, &qword_18B2F9648);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B250FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B25136C;
}

void sub_18B25136C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t AXSettings.VoiceOver._$brailleUsesUnderlineCursor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2514EC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___brailleUsesUnderlineCursor_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2516C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.brailleUsesUnderlineCursor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.brailleUsesUnderlineCursor.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.brailleUsesUnderlineCursor.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2519F0;
}

uint64_t sub_18B2519F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$defaultPunctuationGroup.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B251B68@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___defaultPunctuationGroup_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580, &qword_18B2F95F0);
    v16[3] = "VO_ACTIVITY_PROGRAMMING";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26F7A0();
    sub_18B26F858();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B251EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18B2C8FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18B251F88(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.VoiceOver.defaultPunctuationGroup.getter()
{
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.VoiceOver.defaultPunctuationGroup.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0, &unk_18B2FA470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);
  v12 = v1;
  v9 = sub_18B2701FC;
  v10 = &v11;

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v13);
  os_unfair_lock_unlock(v6 + 4);

  sub_18B163044(a1, v5, &unk_1EA9B74F0, &unk_18B2FA470);
  sub_18B2C9484();

  return sub_18B1630AC(a1, &unk_1EA9B74F0, &unk_18B2FA470);
}

uint64_t sub_18B252424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0, &unk_18B2FA470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_18B163044(a1, &v6 - v3, &unk_1EA9B74F0, &unk_18B2FA470);
  return AXSettings.VoiceOver.defaultPunctuationGroup.setter(v4);
}

void (*AXSettings.VoiceOver.defaultPunctuationGroup.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0, &unk_18B2FA470) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup;
  v5[3] = v7;
  v5[4] = v8;
  v9 = *(v1 + v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);

  os_unfair_lock_lock(v9 + 4);
  sub_18B22F010(&v12);
  v5[5] = 0;
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  return sub_18B252678;
}

void sub_18B252678(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = *v2;
    v5 = sub_18B163044(v2[3], v2[1], &unk_1EA9B74F0, &unk_18B2FA470);
    v6 = *(v4 + v3);
    v7 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v6 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B163044(v10, v9, &unk_1EA9B74F0, &unk_18B2FA470);
    sub_18B2C9484();

    sub_18B1630AC(v10, &unk_1EA9B74F0, &unk_18B2FA470);
  }

  else
  {
    v11 = *(*v2 + v3);
    v12 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v11 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B163044(v8, v9, &unk_1EA9B74F0, &unk_18B2FA470);
    sub_18B2C9484();
  }

  sub_18B1630AC(v8, &unk_1EA9B74F0, &unk_18B2FA470);
  free(v8);
  free(v9);
  free(v10);
  free(v2);
}

uint64_t sub_18B2528BC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___activities_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6570, &qword_18B2F95E8);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F51C();
    sub_18B26F5D4();
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

void sub_18B252A88(void *a1@<X8>)
{
  v41 = a1;
  v1 = sub_18B2C8FD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0, &unk_18B2FA470);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D08, &qword_18B2FA068);
  v10 = type metadata accessor for AXSettings.VoiceOver.Activity(0);
  v11 = (*(*(v10 - 1) + 80) + 32) & ~*(*(v10 - 1) + 80);
  v12 = swift_allocObject();
  v39 = xmmword_18B2F88F0;
  *(v12 + 16) = xmmword_18B2F88F0;
  v13 = sub_18B2C9864();
  v14 = AXLocalizedString(v13);

  if (v14)
  {
    v15 = v12 + v11;
    v38 = sub_18B2C9894();
    v17 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D10, &qword_18B2FA070);
    inited = swift_initStackObject();
    *(inited + 16) = v39;
    v19 = *MEMORY[0x1E69893F8];
    *&v39 = v12;
    *(inited + 32) = v19;
    v20 = v19;
    v21 = sub_18B295898(inited);
    swift_setDeallocating();
    sub_18B26F68C(inited + 32, type metadata accessor for AXSSVoiceOverTextualContext);
    sub_18B26F6EC();
    [swift_getObjCClassFromMetadata() initialize];
    sub_18B2C8FB4();
    (*(v2 + 56))(v9, 0, 1, v1);
    v22 = sub_18B2C9424();
    v23 = v40;
    (*(*(v22 - 1) + 56))(v40, 1, 1, v22);
    sub_18B2C8FC4();
    (*(v2 + 32))(v15, v4, v1);
    v24 = (v15 + v10[5]);
    *v24 = v38;
    v24[1] = v17;
    *(v15 + v10[6]) = v21;
    *(v15 + v10[7]) = 0;
    sub_18B26F738(v9, v15 + v10[8], &unk_1EA9B74F0, &unk_18B2FA470);
    *(v15 + v10[9]) = 2;
    *(v15 + v10[10]) = 2;
    *(v15 + v10[11]) = 2;
    *(v15 + v10[12]) = 2;
    *(v15 + v10[13]) = 2;
    v25 = v15 + v10[14];
    *v25 = 0;
    *(v25 + 8) = 1;
    v26 = v15 + v10[15];
    *v26 = 0;
    *(v26 + 8) = 1;
    v27 = v15 + v10[16];
    *v27 = 0;
    *(v27 + 8) = 1;
    v28 = v15 + v10[17];
    *v28 = 0;
    *(v28 + 8) = 1;
    sub_18B26F738(v23, v15 + v10[18], &qword_1EA9B63D8, &unk_18B2FAD90);
    *(v15 + v10[19]) = 2;
    *(v15 + v10[20]) = 2;
    v29 = v15 + v10[21];
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = v15 + v10[22];
    *v30 = 0;
    *(v30 + 4) = 1;
    v31 = v15 + v10[23];
    *v31 = 0;
    *(v31 + 8) = 1;
    *(v15 + v10[24]) = 2;
    *(v15 + v10[25]) = 2;
    v32 = (v15 + v10[26]);
    *v32 = 0;
    v32[1] = 0;
    v33 = (v15 + v10[27]);
    *v33 = 0;
    v33[1] = 0;
    v34 = v15 + v10[28];
    *v34 = 0;
    *(v34 + 8) = 1;
    v35 = v15 + v10[29];
    *v35 = 0;
    *(v35 + 8) = 1;
    v36 = v15 + v10[30];
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v15 + v10[31]) = 2;
    *(v15 + v10[32]) = 2;
    *(v15 + v10[33]) = 2;
    *v41 = v39;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B252FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.activities.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

void sub_18B253124(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v7 = sub_18B2C99F4();
  v8 = a1;
  a5(v7);
}

uint64_t AXSettings.VoiceOver.activities.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.activities.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B253378;
}

void sub_18B253378(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B22F010(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$selectedActivityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B253534@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedActivityId_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B253778@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.selectedActivityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.selectedActivityId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.selectedActivityId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B253A94;
}

void sub_18B253A94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$languageDetectionEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B253C58@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___languageDetectionEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "tchChangePreference";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94F4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B254004@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.languageDetectionEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.languageDetectionEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.languageDetectionEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B254334;
}

uint64_t sub_18B254334(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$pitchChangeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2544AC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___pitchChangeEnabled_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v14[1] = "VoiceOverSelectedLanguage";
    v14[2] = v10;
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94D4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v12, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B254704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.pitchChangeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.pitchChangeEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.pitchChangeEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B254A34;
}

uint64_t sub_18B254A34(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.VoiceOver._$selectedLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B254BAC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___selectedLanguage_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
    v7 = a1;
    sub_18B2C9674();
    sub_18B26F4B0(&qword_1ED653BD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_18B26F4B0(&qword_1ED653BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_18B26FC84(&qword_1EA9B5550, v8, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B254DD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *v5;
  *a2 = v5[0];
  return result;
}

uint64_t AXSettings.VoiceOver.selectedLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

id sub_18B254F2C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_18B2C9864();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_18B254FC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_18B2C9894();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t AXSettings.VoiceOver.selectedLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);

  os_unfair_lock_lock(v5 + 4);
  sub_18B22F010(v7);
  os_unfair_lock_unlock(v5 + 4);

  v7[0] = a1;
  v7[1] = a2;
  sub_18B2C9484();
}

void (*AXSettings.VoiceOver.selectedLanguage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  *(v4 + 48) = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = *(v4 + 16);
  return sub_18B255228;
}

void sub_18B255228(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *((*a1)[4] + (*a1)[5]);
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v5 + 4);
    sub_18B22F010(v6);
    os_unfair_lock_unlock(v5 + 4);

    v2[2] = v4;
    v2[3] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.VoiceOver._$speakUpEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2553EC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690, &qword_18B2FA020);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - v7);
  v9 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage])
  {
    v10 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage];
  }

  else
  {
    v17 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___speakUpEnabled_Storage;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
    v16[3] = "Duplicate values for key: '";
    v16[4] = v11;
    v16[1] = *(v6 + 48);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6698, &unk_18B2F96B0);
    v12 = sub_18B2C9504();
    v18 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18B2F88F0;
    v16[2] = a1;
    sub_18B2C94D4();
    v20 = v13;
    sub_18B26FC84(&qword_1EA9B5650, 255, MEMORY[0x1E6988260], MEMORY[0x1E6988268]);
    v16[0] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A0, &qword_18B2FA060);
    sub_18B22EBD8(&qword_1EA9B5630, &qword_1EA9B66A0, &qword_18B2FA060, MEMORY[0x1E69E6328]);
    sub_18B2C9C64();
    v20 = v8;
    v19 = v12;
    sub_18B2C9674();
    sub_18B26FC84(&qword_1EA9B5550, v14, type metadata accessor for AXSettings.VoiceOver, &protocol conformance descriptor for AXSettings.VoiceOver);
    v10 = sub_18B2C9454();
    *&a1[v17] = v10;
  }

  *a2 = v10;
}

uint64_t sub_18B255798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  sub_18B2C96C4();
}

uint64_t sub_18B255810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.VoiceOver.speakUpEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.VoiceOver.speakUpEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.VoiceOver.speakUpEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B255B40;
}

uint64_t sub_18B255B40(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

float sub_18B255C68()
{
  v1 = *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage];

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_18B2C95A4();

  return *&v4;
}

uint64_t sub_18B255E04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B255EA0, 0, 0);
}

uint64_t sub_18B255EA0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for UserVoiceConfiguration(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_18B255F78;
  v4 = *(v0 + 32);

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v4);
}

uint64_t sub_18B255F78(float a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  sub_18B1630AC(v2, &qword_1EA9B6A40, &qword_18B2F9B70);

  return MEMORY[0x1EEE6DFA0](sub_18B2560A4, 0, 0);
}

uint64_t sub_18B2560A4()
{
  **(v0 + 16) = *(v0 + 48);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_18B2C9424();
  v2[4] = v3;
  v2[5] = *(v3 - 1);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256214, 0, 0);
}

uint64_t sub_18B256214()
{
  v1 = v0[8];
  sub_18B163044(v0[2], v1, &qword_1EA9B6A40, &qword_18B2F9B70);
  v2 = type metadata accessor for UserVoiceConfiguration(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  if (v3 == 1)
  {
    sub_18B1630AC(v4, &qword_1EA9B6A40, &qword_18B2F9B70);
LABEL_7:
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_18B256414;
    v15 = v0[6];

    return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v15);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v4 + *(v2 + 20);
  v9 = v0[8];
  (*(v7 + 16))(v5, v8, v6);
  sub_18B26F68C(v9, type metadata accessor for UserVoiceConfiguration);
  v10 = sub_18B2C9374();
  (*(v7 + 8))(v5, v6);
  if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  v11 = v0[1];
  v12.n128_u32[0] = v10;

  return v11(v12);
}

uint64_t sub_18B256414()
{

  return MEMORY[0x1EEE6DFA0](sub_18B256510, 0, 0);
}

uint64_t sub_18B256510(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = sub_18B2C9374();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 0x100000000) != 0)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = *&v5;
  }

  v7 = v1[1];
  v8.n128_f32[0] = v6;

  return v7(v8);
}

uint64_t sub_18B2565D0(float a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v3 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256670, 0, 0);
}

uint64_t sub_18B256670()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for UserVoiceConfiguration(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_18B25674C;
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v5, v4);
}

uint64_t sub_18B25674C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_18B1630AC(v1, &qword_1EA9B6A40, &qword_18B2F9B70);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(uint64_t a1, float a2)
{
  *(v3 + 320) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_18B2C9424();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 1);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_18B2C9094();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_18B2C9014();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v7 = sub_18B2C90B4();
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v3 + 216) = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration(0);
  *(v3 + 224) = v8;
  *(v3 + 232) = *(v8 - 8);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B256B80, 0, 0);
}

uint64_t sub_18B256B80()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_18B163044(*(v0 + 56), v3, &qword_1EA9B6A40, &qword_18B2F9B70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 216), &qword_1EA9B6A40, &qword_18B2F9B70);
    *(v0 + 248) = AXSettings.VoiceOver.resolver.getter();
    v23 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_18B256F60;
    v5 = *(v0 + 208);

    return v23(v5);
  }

  else
  {
    v7 = *(v0 + 64);
    sub_18B26C784(*(v0 + 216), *(v0 + 240));
    v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
    v9 = *(v7 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    v11 = swift_task_alloc();
    *(v11 + 16) = sub_18B26FD4C;
    *(v11 + 24) = v10;

    os_unfair_lock_lock(v9 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v9 + 4);
    v12 = *(v0 + 240);
    v13 = *(v0 + 64);
    v14 = *(v0 + 320);

    sub_18B2C9474();

    v15 = *(v0 + 40);
    v16 = swift_task_alloc();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = sub_18B237B6C(sub_18B26C7E8, v16, v15);

    v18 = *(v7 + v8);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v20 = swift_task_alloc();
    *(v20 + 16) = sub_18B26FD4C;
    *(v20 + 24) = v19;

    os_unfair_lock_lock(v18 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v18 + 4);
    v21 = *(v0 + 240);

    *(v0 + 48) = v17;
    sub_18B2C9484();

    sub_18B26F68C(v21, type metadata accessor for UserVoiceConfiguration);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_18B256F60()
{

  return MEMORY[0x1EEE6DFA0](sub_18B257078, 0, 0);
}

uint64_t sub_18B257078(uint64_t a1)
{
  v28 = v1;
  v2 = v1[20];
  v3 = v1[21];
  v5 = v1[18];
  v4 = v1[19];
  v7 = v1[16];
  v6 = v1[17];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v8 = v1[16];
    (*(v1[25] + 8))(v1[26], v1[24]);
    sub_18B1630AC(v8, &qword_1EA9B63D0, &unk_18B2F8920);

    v9 = v1[1];

    return v9();
  }

  else
  {
    v11 = v1[8];
    (*(v1[21] + 32))(v1[23], v1[16], v1[20]);
    v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v1[33] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v13 = *(v11 + v12);
    v14 = swift_task_alloc();
    *(v14 + 16) = v11;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_18B26FD34;
    *(v15 + 24) = v14;

    os_unfair_lock_lock(v13 + 4);
    sub_18B23602C(&v27);
    v1[34] = 0;
    os_unfair_lock_unlock(v13 + 4);
    v16 = v1[23];
    v17 = v1[20];
    v18 = v1[21];
    v19 = v1[15];
    v20 = v1[8];

    sub_18B2C9474();

    v21 = v1[2];
    v1[35] = v21;
    v22 = *(v18 + 16);
    v1[36] = v22;
    v1[37] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v19, v16, v17);
    (*(v18 + 56))(v19, 0, 1, v17);
    v23 = *(v20 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
    v1[38] = v23;

    v24 = swift_task_alloc();
    v1[39] = v24;
    *v24 = v1;
    v24[1] = sub_18B2573FC;
    v25 = v1[14];
    v26 = v1[15];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v25, v26, v23, 0, v21);
  }
}

uint64_t sub_18B2573FC()
{
  v1 = *(*v0 + 120);

  sub_18B1630AC(v1, &qword_1EA9B63D0, &unk_18B2F8920);

  return MEMORY[0x1EEE6DFA0](sub_18B257564, 0, 0);
}

uint64_t sub_18B257564()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 48);
  if (!v2(v1, 1, *(v0 + 72)))
  {
    LOBYTE(v34[0]) = 0;
    sub_18B2C9384();
    v1 = *(v0 + 112);
  }

  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  (*(v0 + 288))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
  sub_18B163044(v1, v5, &qword_1EA9B63D8, &unk_18B2FAD90);
  v7 = *(v6 + v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(v34);
  os_unfair_lock_unlock(v7 + 4);
  if (v3)
  {
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_18B2C9474();

    v12 = *(v0 + 24);
    v13 = v2(v10, 1, v11);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    if (v13 == 1)
    {
      v17 = *(v0 + 96);
      sub_18B1630AC(*(v0 + 104), &qword_1EA9B63D8, &unk_18B2FAD90);
      sub_18B268108(v14, v17);
      sub_18B1630AC(v17, &qword_1EA9B63D8, &unk_18B2FAD90);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v12;
    }

    else
    {
      v20 = *(v0 + 88);
      (*(*(v0 + 80) + 32))(v20, *(v0 + 104), *(v0 + 72));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      sub_18B269DFC(v20, v14, isUniquelyReferenced_nonNull_native);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v34[0];
    }

    v22 = *(v0 + 64);
    v23 = *(v22 + *(v0 + 264));
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    v25 = swift_task_alloc();
    *(v25 + 16) = sub_18B26FD34;
    *(v25 + 24) = v24;

    os_unfair_lock_lock(v23 + 4);
    sub_18B23602C(v34);
    os_unfair_lock_unlock(v23 + 4);
    v27 = *(v0 + 200);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v30 = *(v0 + 184);
    v28 = *(v0 + 160);
    v33 = *(v0 + 112);

    *(v0 + 32) = v19;
    sub_18B2C9484();

    v18(v30, v28);
    (*(v27 + 8))(v32, v31);
    sub_18B1630AC(v33, &qword_1EA9B63D8, &unk_18B2FAD90);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t AXSettings.VoiceOver.currentVoiceRotor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserVoiceConfiguration(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v24 = v1;
  v21 = sub_18B26FD4C;
  v22 = &v23;

  os_unfair_lock_lock(v7 + 4);
  sub_18B22F010(&v25);
  os_unfair_lock_unlock(v7 + 4);

  sub_18B2C9474();

  v8 = v25;
  v9 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);
  v20 = v1;
  v17 = sub_18B26FD64;
  v18 = &v19;

  os_unfair_lock_lock(v9 + 4);
  sub_18B22F010(&v25);
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  v11 = v26;
  if (v26)
  {
    v12 = *(v8 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = v25;
      while (v13 < *(v8 + 16))
      {
        sub_18B230B70(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6);
        v15 = *v6 == v14 && v11 == v6[1];
        if (v15 || (sub_18B2C9F24() & 1) != 0)
        {

          sub_18B26C784(v6, a1);
          return (*(v4 + 56))(a1, 0, 1, v3);
        }

        ++v13;
        result = sub_18B26F68C(v6, type metadata accessor for UserVoiceConfiguration);
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return (*(v4 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    (*(v4 + 56))(a1, 1, 1, v3);
  }

  return result;
}

uint64_t AXSettings.VoiceOver.systemDefaultVoiceSelection()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B257D08, 0, 0);
}

uint64_t sub_18B257D08()
{
  v16 = v0;
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B26FD34;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v15);
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  sub_18B2C9474();

  v6 = v0[2];
  v0[7] = v6;
  v7 = sub_18B2C9014();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[9] = v9;
  v0[10] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 1, 1, v7);
  v10 = AXSettings.VoiceOver.resolver.getter();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_18B257F00;
  v13 = v0[5];
  v12 = v0[6];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v12, v13, v10, 0, v6);
}

uint64_t sub_18B257F00()
{
  v1 = *(*v0 + 40);

  sub_18B1630AC(v1, &qword_1EA9B63D0, &unk_18B2F8920);

  return MEMORY[0x1EEE6DFA0](sub_18B258068, 0, 0);
}

uint64_t sub_18B258068()
{
  v1 = *(v0 + 48);
  v2 = sub_18B2C9424();
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0 + 72))(*(v0 + 40), 1, 1, *(v0 + 64));
    sub_18B2C93F4();
    if (v4(v1, 1, v2) != 1)
    {
      sub_18B1630AC(*(v0 + 48), &qword_1EA9B63D8, &unk_18B2FAD90);
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 24), v1, v2);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AXSettings.VoiceOver.voiceSelection(locale:withActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A48, &qword_18B2F9B90);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7520, &qword_18B2F9B98);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = sub_18B2C9094();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v6 = sub_18B2C9014();
  v4[40] = v6;
  v4[41] = *(v6 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50, &qword_18B2F9BA0);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = sub_18B2C9274();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  v4[52] = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration(0);
  v4[53] = v8;
  v4[54] = *(v8 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v9 = sub_18B2C9424();
  v4[57] = v9;
  v4[58] = *(v9 - 1);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v10 = sub_18B2C90B4();
  v4[62] = v10;
  v4[63] = *(v10 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B258714, 0, 0);
}

uint64_t sub_18B258714()
{
  AXSettings.VoiceOver.resolver.getter();
  sub_18B2C9114();

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_18B2C90E4();
  sub_18B2C9034();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = sub_18B258820;
  v2 = v0[61];

  return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v2);
}

uint64_t sub_18B258820()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25891C, 0, 0);
}

uint64_t sub_18B25891C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  AXSettings.VoiceOver.currentVoiceRotor.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 416), &qword_1EA9B6A40, &qword_18B2F9B70);
  }

  else
  {
    v4 = *(v0 + 424);
    sub_18B26C784(*(v0 + 416), *(v0 + 448));
    *(v0 + 696) = *(v4 + 20);
    v5 = sub_18B2C9404();
    *(v0 + 544) = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      *(v0 + 552) = *(*(v0 + 144) + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
      v36 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);

      v9 = swift_task_alloc();
      *(v0 + 560) = v9;
      *v9 = v0;
      v9[1] = sub_18B258F4C;
      v10 = *(v0 + 368);

      return v36(v10, v7, v8);
    }

    sub_18B26F68C(*(v0 + 448), type metadata accessor for UserVoiceConfiguration);
  }

  *(v0 + 568) = 0;
  v12 = *(v0 + 176);
  sub_18B163044(*(v0 + 136), v12, &unk_1EA9B7520, &qword_18B2F9B98);
  v13 = type metadata accessor for AXSettings.VoiceOver.Activity(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = *(v0 + 456);
  v16 = *(v0 + 464);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v14 == 1)
  {
    sub_18B1630AC(v17, &unk_1EA9B7520, &qword_18B2F9B98);
    (*(v16 + 56))(v18, 1, 1, v15);
LABEL_11:
    v21 = *(v0 + 144);
    sub_18B1630AC(*(v0 + 184), &qword_1EA9B63D8, &unk_18B2FAD90);
    v22 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    *(v0 + 576) = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    *(v0 + 584) = *(v21 + v22);
    v37 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);

    v23 = swift_task_alloc();
    *(v0 + 592) = v23;
    *v23 = v0;
    v23[1] = sub_18B2598C0;
    v24 = *(v0 + 520);

    return v37(v24);
  }

  v19 = *(v13 + 72);
  v20 = *(v0 + 176);
  sub_18B163044(v17 + v19, *(v0 + 184), &qword_1EA9B63D8, &unk_18B2FAD90);
  sub_18B26F68C(v20, type metadata accessor for AXSettings.VoiceOver.Activity);
  if ((*(v16 + 48))(v18, 1, v15) == 1)
  {
    goto LABEL_11;
  }

  v25 = *(v0 + 528);
  v26 = *(v0 + 496);
  v27 = *(v0 + 504);
  v28 = *(v0 + 480);
  v29 = *(v0 + 488);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  v32 = *(v0 + 192);
  v33 = *(v0 + 120);
  (*(v31 + 32))(v28, *(v0 + 184), v30);
  (*(v31 + 16))(v32, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  VoiceSelection.fallingBack(to:)(v32, v33);
  sub_18B1630AC(v32, &qword_1EA9B63D8, &unk_18B2FAD90);
  v34 = *(v31 + 8);
  v34(v28, v30);
  v34(v29, v30);
  (*(v27 + 8))(v25, v26);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_18B258F4C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B259080, 0, 0);
}

uint64_t sub_18B259080()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B26F68C(v0[56], type metadata accessor for UserVoiceConfiguration);
    v4 = &qword_1EA9B6A50;
    v5 = &qword_18B2F9BA0;
LABEL_5:
    sub_18B1630AC(v3, v4, v5);
    goto LABEL_6;
  }

  v6 = v0[41];
  v58 = v0[40];
  v7 = v0[39];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  (*(v2 + 32))(v0[51], v3, v1);
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v8 + 8))(v7, v9);
  v11 = (*(v6 + 48))(v10, 1, v58);
  v3 = v0[32];
  if (v11 == 1)
  {
    v12 = v0[56];
    (*(v0[48] + 8))(v0[51], v0[47]);
    sub_18B26F68C(v12, type metadata accessor for UserVoiceConfiguration);
    v4 = &qword_1EA9B63D0;
    v5 = &unk_18B2F8920;
    goto LABEL_5;
  }

  v27 = v0[43];
  (*(v0[41] + 32))(v27, v0[32], v0[40]);
  sub_18B2C9264();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v0[14] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A58, &qword_18B2F9BA8);
  sub_18B2C9924();
  v28 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  LOBYTE(v27) = sub_18B25B214(v27, v28);

  if (v27)
  {
    v29 = v0[63];
    v57 = v0[62];
    v60 = v0[66];
    v30 = v0[57];
    v31 = v0[58];
    v32 = v0[56];
    v55 = v0[51];
    v56 = v0[61];
    v33 = v0[48];
    v53 = v0[43];
    v54 = v0[47];
    v34 = v0[41];
    v52 = v0[40];
    v35 = v0[24];
    v36 = v0[15];
    (*(v31 + 16))(v35);
    (*(v31 + 56))(v35, 0, 1, v30);
    VoiceSelection.fallingBack(to:)(v35, v36);
    sub_18B1630AC(v35, &qword_1EA9B63D8, &unk_18B2FAD90);
    (*(v34 + 8))(v53, v52);
    (*(v33 + 8))(v55, v54);
    sub_18B26F68C(v32, type metadata accessor for UserVoiceConfiguration);
    (*(v31 + 8))(v56, v30);
    (*(v29 + 8))(v60, v57);
    goto LABEL_15;
  }

  v48 = v0[56];
  v49 = v0[51];
  v50 = v0[47];
  v51 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v51 + 8))(v49, v50);
  sub_18B26F68C(v48, type metadata accessor for UserVoiceConfiguration);
LABEL_6:
  v0[71] = 0;
  v13 = v0[22];
  sub_18B163044(v0[17], v13, &unk_1EA9B7520, &qword_18B2F9B98);
  v14 = type metadata accessor for AXSettings.VoiceOver.Activity(0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  v16 = v0[57];
  v17 = v0[58];
  v18 = v0[22];
  v19 = v0[23];
  if (v15 == 1)
  {
    sub_18B1630AC(v18, &unk_1EA9B7520, &qword_18B2F9B98);
    (*(v17 + 56))(v19, 1, 1, v16);
LABEL_9:
    v22 = v0[18];
    sub_18B1630AC(v0[23], &qword_1EA9B63D8, &unk_18B2FAD90);
    v23 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    v0[72] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver;
    v0[73] = *(v22 + v23);
    v59 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);

    v24 = swift_task_alloc();
    v0[74] = v24;
    *v24 = v0;
    v24[1] = sub_18B2598C0;
    v25 = v0[65];

    return v59(v25);
  }

  v20 = *(v14 + 72);
  v21 = v0[22];
  sub_18B163044(v18 + v20, v0[23], &qword_1EA9B63D8, &unk_18B2FAD90);
  sub_18B26F68C(v21, type metadata accessor for AXSettings.VoiceOver.Activity);
  if ((*(v17 + 48))(v19, 1, v16) == 1)
  {
    goto LABEL_9;
  }

  v37 = v0[66];
  v38 = v0[62];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[61];
  v42 = v0[57];
  v43 = v0[58];
  v44 = v0[24];
  v45 = v0[15];
  (*(v43 + 32))(v40, v0[23], v42);
  (*(v43 + 16))(v44, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  VoiceSelection.fallingBack(to:)(v44, v45);
  sub_18B1630AC(v44, &qword_1EA9B63D8, &unk_18B2FAD90);
  v46 = *(v43 + 8);
  v46(v40, v42);
  v46(v41, v42);
  (*(v39 + 8))(v37, v38);
LABEL_15:

  v47 = v0[1];

  return v47();
}

uint64_t sub_18B2598C0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2599D8, 0, 0);
}

uint64_t sub_18B2599D8(uint64_t a1)
{
  v59 = v1;
  v2 = *(v1 + 328);
  v4 = *(v1 + 296);
  v3 = *(v1 + 304);
  v6 = *(v1 + 264);
  v5 = *(v1 + 272);
  v8 = *(v1 + 240);
  v7 = *(v1 + 248);
  v52 = *(v1 + 168);
  v53 = *(v1 + 152);
  v54 = *(v1 + 320);
  sub_18B2C90A4();
  sub_18B2C9084();
  v9 = *(v5 + 8);
  *(v1 + 600) = v9;
  *(v1 + 608) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v6);
  sub_18B2C90A4();
  sub_18B2C9084();
  v9(v4, v6);
  v10 = *(v53 + 48);
  sub_18B163044(v7, v52, &qword_1EA9B63D0, &unk_18B2F8920);
  sub_18B163044(v8, v52 + v10, &qword_1EA9B63D0, &unk_18B2F8920);
  v11 = *(v2 + 48);
  *(v1 + 616) = v11;
  *(v1 + 624) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v12 = v11(v52, 1, v54);
  v13 = *(v1 + 320);
  if (v12 == 1)
  {
    v14 = *(v1 + 248);
    sub_18B1630AC(*(v1 + 240), &qword_1EA9B63D0, &unk_18B2F8920);
    sub_18B1630AC(v14, &qword_1EA9B63D0, &unk_18B2F8920);
    if (v11(v52 + v10, 1, v13) == 1)
    {
      sub_18B1630AC(*(v1 + 168), &qword_1EA9B63D0, &unk_18B2F8920);
LABEL_12:
      v33 = *(v1 + 528);
      v34 = *(v1 + 496);
      v35 = *(*(v1 + 504) + 8);
      v35(*(v1 + 520), v34);
      v35(v33, v34);
      (*(*(v1 + 464) + 32))(*(v1 + 120), *(v1 + 488), *(v1 + 456));

      v36 = *(v1 + 8);

      return v36();
    }

    goto LABEL_6;
  }

  sub_18B163044(*(v1 + 168), *(v1 + 232), &qword_1EA9B63D0, &unk_18B2F8920);
  if (v11(v52 + v10, 1, v13) == 1)
  {
    v15 = *(v1 + 320);
    v16 = *(v1 + 328);
    v17 = *(v1 + 248);
    v18 = *(v1 + 232);
    sub_18B1630AC(*(v1 + 240), &qword_1EA9B63D0, &unk_18B2F8920);
    sub_18B1630AC(v17, &qword_1EA9B63D0, &unk_18B2F8920);
    (*(v16 + 8))(v18, v15);
LABEL_6:
    sub_18B1630AC(*(v1 + 168), &qword_1EA9B6A48, &qword_18B2F9B90);
    goto LABEL_7;
  }

  v25 = *(v1 + 328);
  v26 = *(v1 + 336);
  v27 = *(v1 + 320);
  v29 = *(v1 + 240);
  v28 = *(v1 + 248);
  v30 = *(v1 + 232);
  v55 = *(v1 + 168);
  (*(v25 + 32))(v26, v52 + v10, v27);
  sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v31 = sub_18B2C9854();
  v32 = *(v25 + 8);
  v32(v26, v27);
  sub_18B1630AC(v29, &qword_1EA9B63D0, &unk_18B2F8920);
  sub_18B1630AC(v28, &qword_1EA9B63D0, &unk_18B2F8920);
  v32(v30, v27);
  sub_18B1630AC(v55, &qword_1EA9B63D0, &unk_18B2F8920);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_7:
  v19 = *(v1 + 568);
  v20 = *(v1 + 144);
  v21 = *(v20 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;
  v23 = swift_task_alloc();
  *(v23 + 16) = sub_18B26FD4C;
  *(v23 + 24) = v22;

  os_unfair_lock_lock(v21 + 4);
  sub_18B22F010(v58);
  os_unfair_lock_unlock(v21 + 4);
  if (v19)
  {
  }

  else
  {

    sub_18B2C9474();

    result = *(v1 + 96);
    *(v1 + 632) = result;
    v37 = *(result + 16);
    *(v1 + 640) = v37;
    if (v37)
    {
      v38 = 0;
      *(v1 + 700) = *(*(v1 + 432) + 80);
      while (1)
      {
        *(v1 + 648) = v38;
        v39 = *(v1 + 632);
        if (v38 >= *(v39 + 16))
        {
          __break(1u);
          return result;
        }

        v40 = *(v1 + 424);
        sub_18B230B70(v39 + ((*(v1 + 700) + 32) & ~*(v1 + 700)) + *(*(v1 + 432) + 72) * v38, *(v1 + 440));
        *(v1 + 704) = *(v40 + 20);
        v41 = sub_18B2C9404();
        *(v1 + 656) = v42;
        if (v42)
        {
          break;
        }

        result = sub_18B26F68C(*(v1 + 440), type metadata accessor for UserVoiceConfiguration);
        v38 = *(v1 + 648) + 1;
        if (v38 == *(v1 + 640))
        {
          goto LABEL_20;
        }
      }

      *(v1 + 664) = *(*(v1 + 144) + *(v1 + 576));
      v57 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
      v48 = v41;
      v49 = v42;

      v50 = swift_task_alloc();
      *(v1 + 672) = v50;
      *v50 = v1;
      v50[1] = sub_18B25A238;
      v51 = *(v1 + 360);

      return v57(v51, v48, v49);
    }

    else
    {
LABEL_20:
      v43 = *(v1 + 576);
      v44 = *(v1 + 144);

      *(v1 + 680) = *(v44 + v43);
      v56 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);

      v45 = swift_task_alloc();
      *(v1 + 688) = v45;
      *v45 = v1;
      v45[1] = sub_18B25AC94;
      v46 = *(v1 + 528);
      v47 = *(v1 + 352);

      return v56(v47, v46);
    }
  }
}

uint64_t sub_18B25A238()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25A36C, 0, 0);
}

uint64_t sub_18B25A36C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v65 = *(v0 + 616);
    v59 = *(v0 + 600);
    v5 = *(v0 + 504);
    v6 = *(v0 + 512);
    v56 = *(v0 + 496);
    v63 = *(v0 + 320);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v55 = *(v0 + 224);
    v57 = *(v0 + 264);
    v58 = *(v0 + 216);
    v9 = *(v0 + 160);
    v61 = *(v0 + 152);
    (*(v2 + 32))(*(v0 + 400), v3, v1);
    v10 = v9;
    sub_18B2C91A4();
    sub_18B2C90A4();
    v11 = *(v5 + 8);
    v11(v6, v56);
    sub_18B2C9084();
    v59(v7, v57);
    sub_18B2C90A4();
    sub_18B2C9084();
    v59(v8, v57);
    v12 = *(v61 + 48);
    sub_18B163044(v55, v9, &qword_1EA9B63D0, &unk_18B2F8920);
    sub_18B163044(v58, v9 + v12, &qword_1EA9B63D0, &unk_18B2F8920);
    v13 = v65(v9, 1, v63);
    v14 = *(v0 + 616);
    v15 = *(v0 + 320);
    if (v13 == 1)
    {
      v16 = *(v0 + 224);
      sub_18B1630AC(*(v0 + 216), &qword_1EA9B63D0, &unk_18B2F8920);
      sub_18B1630AC(v16, &qword_1EA9B63D0, &unk_18B2F8920);
      if (v14(v10 + v12, 1, v15) == 1)
      {
        v68 = v11;
        sub_18B1630AC(*(v0 + 160), &qword_1EA9B63D0, &unk_18B2F8920);
LABEL_11:
        v64 = *(v0 + 520);
        v67 = *(v0 + 528);
        v33 = *(v0 + 488);
        v32 = *(v0 + 496);
        v34 = *(v0 + 456);
        v35 = *(v0 + 464);
        v36 = *(v0 + 440);
        v37 = *(v0 + 384);
        v60 = *(v0 + 376);
        v62 = *(v0 + 400);
        v38 = *(v0 + 192);
        v39 = *(v0 + 120);

        (*(v35 + 16))(v38, v33, v34);
        (*(v35 + 56))(v38, 0, 1, v34);
        VoiceSelection.fallingBack(to:)(v38, v39);
        sub_18B1630AC(v38, &qword_1EA9B63D8, &unk_18B2FAD90);
        (*(v37 + 8))(v62, v60);
        sub_18B26F68C(v36, type metadata accessor for UserVoiceConfiguration);
        v68(v64, v32);
        (*(v35 + 8))(v33, v34);
        v68(v67, v32);

        v40 = *(v0 + 8);

        return v40();
      }
    }

    else
    {
      sub_18B163044(*(v0 + 160), *(v0 + 208), &qword_1EA9B63D0, &unk_18B2F8920);
      if (v14(v9 + v12, 1, v15) != 1)
      {
        v23 = v9;
        v25 = *(v0 + 328);
        v24 = *(v0 + 336);
        v26 = *(v0 + 320);
        v28 = *(v0 + 216);
        v27 = *(v0 + 224);
        v29 = *(v0 + 208);
        v66 = *(v0 + 160);
        v68 = v11;
        (*(v25 + 32))(v24, v23 + v12, v26);
        sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v30 = sub_18B2C9854();
        v31 = *(v25 + 8);
        v31(v24, v26);
        sub_18B1630AC(v28, &qword_1EA9B63D0, &unk_18B2F8920);
        sub_18B1630AC(v27, &qword_1EA9B63D0, &unk_18B2F8920);
        v31(v29, v26);
        sub_18B1630AC(v66, &qword_1EA9B63D0, &unk_18B2F8920);
        if (v30)
        {
          goto LABEL_11;
        }

LABEL_9:
        v21 = *(v0 + 440);
        (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        v22 = v21;
        goto LABEL_17;
      }

      v17 = *(v0 + 320);
      v18 = *(v0 + 328);
      v19 = *(v0 + 224);
      v20 = *(v0 + 208);
      sub_18B1630AC(*(v0 + 216), &qword_1EA9B63D0, &unk_18B2F8920);
      sub_18B1630AC(v19, &qword_1EA9B63D0, &unk_18B2F8920);
      (*(v18 + 8))(v20, v17);
    }

    sub_18B1630AC(*(v0 + 160), &qword_1EA9B6A48, &qword_18B2F9B90);
    goto LABEL_9;
  }

  sub_18B26F68C(*(v0 + 440), type metadata accessor for UserVoiceConfiguration);
  for (result = sub_18B1630AC(v3, &qword_1EA9B6A50, &qword_18B2F9BA0); ; result = sub_18B26F68C(v22, type metadata accessor for UserVoiceConfiguration))
  {
    v45 = *(v0 + 648) + 1;
    if (v45 == *(v0 + 640))
    {
      v46 = *(v0 + 576);
      v47 = *(v0 + 144);

      *(v0 + 680) = *(v47 + v46);
      v69 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);

      v48 = swift_task_alloc();
      *(v0 + 688) = v48;
      *v48 = v0;
      v48[1] = sub_18B25AC94;
      v49 = *(v0 + 528);
      v50 = *(v0 + 352);

      return v69(v50, v49);
    }

    *(v0 + 648) = v45;
    v41 = *(v0 + 632);
    if (v45 >= *(v41 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = *(v0 + 424);
    sub_18B230B70(v41 + ((*(v0 + 700) + 32) & ~*(v0 + 700)) + *(*(v0 + 432) + 72) * v45, *(v0 + 440));
    *(v0 + 704) = *(v42 + 20);
    v43 = sub_18B2C9404();
    *(v0 + 656) = v44;
    if (v44)
    {
      break;
    }

    v22 = *(v0 + 440);
LABEL_17:
    ;
  }

  *(v0 + 664) = *(*(v0 + 144) + *(v0 + 576));
  v70 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v51 = v43;
  v52 = v44;

  v53 = swift_task_alloc();
  *(v0 + 672) = v53;
  *v53 = v0;
  v53[1] = sub_18B25A238;
  v54 = *(v0 + 360);

  return v70(v54, v51, v52);
}

uint64_t sub_18B25AC94()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25ADAC, 0, 0);
}

uint64_t sub_18B25ADAC()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[44];
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[66];
  v6 = v0[62];
  v7 = v0[63];
  if (v4 == 1)
  {
    v8 = *(v7 + 8);
    v8(v0[65], v0[62]);
    v8(v5, v6);
    sub_18B1630AC(v3, &qword_1EA9B6A50, &qword_18B2F9BA0);
    (*(v0[58] + 32))(v0[15], v0[61], v0[57]);
  }

  else
  {
    v20 = v0[61];
    v18 = v0[59];
    v25 = v0[66];
    v9 = v0[58];
    v19 = v0[57];
    v24 = v0[62];
    v10 = v0[41];
    v17 = v0[40];
    v12 = v0[24];
    v11 = v0[25];
    v21 = v0[15];
    v22 = v0[49];
    v23 = v0[65];
    (*(v1 + 32))();
    sub_18B2C9194();
    (*(v10 + 56))(v11, 1, 1, v17);
    sub_18B2C93F4();
    (*(v9 + 16))(v12, v20, v19);
    (*(v9 + 56))(v12, 0, 1, v19);
    VoiceSelection.fallingBack(to:)(v12, v21);
    sub_18B1630AC(v12, &qword_1EA9B63D8, &unk_18B2FAD90);
    v13 = *(v9 + 8);
    v13(v18, v19);
    (*(v1 + 8))(v22, v2);
    v14 = *(v7 + 8);
    v14(v23, v24);
    v13(v20, v19);
    v14(v25, v24);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_18B25B214(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B2C9014();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_18B26FC84(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610], MEMORY[0x1E6969620]), v7 = sub_18B2C9834(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_18B26FC84(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v14 = sub_18B2C9854();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t VoiceSelection.fallingBack(to:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = sub_18B2C9424();
  v21 = *(v20 - 1);
  (*(v21 + 16))(a2, v2, v20);
  if ((sub_18B2C9394() & 0x100000000) != 0)
  {
    v22 = a1;
    sub_18B163044(a1, v19, &qword_1EA9B63D8, &unk_18B2FAD90);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_18B1630AC(v19, &qword_1EA9B63D8, &unk_18B2FAD90);
      LOBYTE(a1) = 1;
    }

    else
    {
      a1 = (sub_18B2C9394() >> 32) & 1;
      (*(v21 + 8))(v19, v20);
    }
  }

  else
  {
    v22 = a1;
    LOBYTE(a1) = 0;
  }

  v38 = a1;
  sub_18B2C93A4();
  if ((sub_18B2C93B4() & 0x100000000) != 0)
  {
    v24 = v22;
    sub_18B163044(v22, v17, &qword_1EA9B63D8, &unk_18B2FAD90);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_18B1630AC(v17, &qword_1EA9B63D8, &unk_18B2FAD90);
      LOBYTE(v23) = 1;
    }

    else
    {
      v23 = (sub_18B2C93B4() >> 32) & 1;
      (*(v21 + 8))(v17, v20);
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v24 = v22;
  }

  v37 = v23;
  sub_18B2C93C4();
  if ((sub_18B2C9374() & 0x100000000) != 0)
  {
    sub_18B163044(v24, v14, &qword_1EA9B63D8, &unk_18B2FAD90);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_18B1630AC(v14, &qword_1EA9B63D8, &unk_18B2FAD90);
      LOBYTE(v25) = 1;
    }

    else
    {
      v25 = (sub_18B2C9374() >> 32) & 1;
      (*(v21 + 8))(v14, v20);
    }
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  v36 = v25;
  sub_18B2C9384();
  if (!sub_18B2C93D4())
  {
    v26 = v33;
    sub_18B163044(v24, v33, &qword_1EA9B63D8, &unk_18B2FAD90);
    if ((*(v21 + 48))(v26, 1, v20) == 1)
    {
      sub_18B1630AC(v26, &qword_1EA9B63D8, &unk_18B2FAD90);
    }

    else
    {
      sub_18B2C93D4();
      (*(v21 + 8))(v26, v20);
    }
  }

  sub_18B2C93E4();
  sub_18B2C9404();
  if (v27)
  {
  }

  v29 = v34;
  sub_18B163044(v24, v34, &qword_1EA9B63D8, &unk_18B2FAD90);
  v30 = *(v21 + 48);
  if (v30(v29, 1, v20) == 1)
  {
    sub_18B1630AC(v29, &qword_1EA9B63D8, &unk_18B2FAD90);
  }

  else
  {
    sub_18B2C9404();
    (*(v21 + 8))(v29, v20);
  }

  v31 = v35;
  sub_18B2C9414();
  sub_18B163044(v24, v31, &qword_1EA9B63D8, &unk_18B2FAD90);
  if (v30(v31, 1, v20) == 1)
  {
    sub_18B1630AC(v31, &qword_1EA9B63D8, &unk_18B2FAD90);
  }

  else
  {
    sub_18B2C9344();
    (*(v21 + 8))(v31, v20);
  }

  return sub_18B2C9354();
}

uint64_t AXSettings.VoiceOver.defaultVoiceSelectionStream.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A60, &qword_18B2F9BB0);
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v24 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A68, &qword_18B2F9BB8);
  v26 = *(v32 - 8);
  v5 = v26;
  v6 = MEMORY[0x1EEE9AC00](v32);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70, &qword_18B2F9BC0);
  v10 = *(v29 - 8);
  v28 = *(v10 + 64);
  v11 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v39 = v1;
  v36 = sub_18B26FD34;
  v37 = &v38;

  os_unfair_lock_lock(v15 + 4);
  sub_18B23602C(&v40);
  os_unfair_lock_unlock(v15 + 4);

  sub_18B2C9434();

  sub_18B2C9154();
  v16 = sub_18B2C9144();
  v34 = v16;
  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A78, &qword_18B2F9BC8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v31);
  v25 = v9;
  sub_18B2C9AC4();
  v17 = *(v5 + 16);
  v18 = v32;
  v17(v30, v9, v32);
  v19 = v27;
  v20 = v29;
  (*(v10 + 16))(v27, v14, v29);
  v21 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  (*(v10 + 32))(v22 + v21, v19, v20);
  sub_18B2C9534();
  (*(v26 + 8))(v25, v18);
  return (*(v10 + 8))(v14, v20);
}

uint64_t AXSettings.VoiceOver.speechVoiceIdentifier(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_18B2C9094();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25BFC8, 0, 0);
}

uint64_t sub_18B25BFC8()
{
  v21 = v0;
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B26FD34;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v20);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v0[4];

  sub_18B2C9474();

  v6 = v0[2];
  v0[14] = v6;
  v7 = AXSettings.VoiceOver.resolver.getter();
  v0[15] = v7;
  if (v5)
  {
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v19 = v0[6];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v10 + 8))(v8, v9);
    sub_18B2C9084();
    (*(v11 + 8))(v12, v19);
  }

  else
  {
    v13 = v0[12];
    v14 = sub_18B2C9014();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_18B25C234;
  v17 = v0[12];
  v16 = v0[13];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v16, v17, v7, 0, v6);
}

uint64_t sub_18B25C234()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25C34C, 0, 0);
}

uint64_t sub_18B25C34C()
{
  v1 = v0[12];
  v2 = v0[13];

  sub_18B1630AC(v1, &qword_1EA9B63D0, &unk_18B2F8920);
  v3 = sub_18B2C9424();
  v4 = *(v3 - 1);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[13];
  if (v5 == 1)
  {
    sub_18B1630AC(v0[13], &qword_1EA9B63D8, &unk_18B2FAD90);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_18B2C9404();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[1];

  return v10(v7, v8);
}

uint64_t sub_18B25C63C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18B2284F4;

  return AXSettings.VoiceOver.speechVoiceIdentifier(forLanguage:)(a1, v7);
}

uint64_t AXSettings.VoiceOver.set(voiceId:forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B25C748, 0, 0);
}

uint64_t sub_18B25C748()
{
  v14 = v0;
  v1 = v0[9];
  v2 = AXSettings.VoiceOver.resolver.getter();
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  v0[10] = v2;
  v0[11] = v3;
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_18B26FD34;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v13);
  v0[12] = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  v0[2] = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_18B25C8E0;
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  return Dictionary<>.set(voiceId:forLanguage:withResolver:)(v11, v10, v8, v9, v2);
}

uint64_t sub_18B25C8E0()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[12];
  v3 = v13[11];
  v4 = v13[9];
  v5 = *v0;
  v13 = *v0;

  v6 = v1[2];
  v7 = *(v4 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(&v12);
  if (v2)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v1[4] = v6;
    sub_18B2C9484();

    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_18B25CCB0(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;
  v8 = v7;
  v9 = sub_18B2C9894();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_18B22A184;

  return AXSettings.VoiceOver.set(voiceId:forLanguage:)(a1, v8, v9, v11);
}

Swift::Void __swiftcall AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(Swift::String_optional voiceId, Swift::String forLanguage, Swift::Float rate, Swift::Float volume, Swift::Float pitch)
{
  object = voiceId.value._object;
  countAndFlagsBits = voiceId.value._countAndFlagsBits;
  v10 = sub_18B2C9424();
  v100 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v97 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v94 = v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v96 = v92 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v99 = v92 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v98 = v92 - v28;
  v103 = sub_18B2C9014();
  v101 = *(v103 - 8);
  v29 = MEMORY[0x1EEE9AC00](v103);
  v31 = v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v95 = v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v92 - v34;

  v104 = v35;
  sub_18B2C9024();
  if (!object)
  {
LABEL_7:
    v47 = v101;
    (*(v101 + 16))(v31, v104, v103);
    v48 = v100;
    v49 = (*(v100 + 56))(v17, 1, 1, v10);
    v50 = v102;
    v99 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v51 = *(v102 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
    v52 = MEMORY[0x1EEE9AC00](v49);
    v92[-2] = v50;
    MEMORY[0x1EEE9AC00](v52);
    v92[-2] = sub_18B26FD34;
    v92[-1] = v53;

    os_unfair_lock_lock(v51 + 4);
    sub_18B23602C(v106);
    os_unfair_lock_unlock(v51 + 4);

    sub_18B2C9474();

    if ((*(v48 + 48))(v17, 1, v10) == 1)
    {
      sub_18B1630AC(v17, &qword_1EA9B63D8, &unk_18B2FAD90);
      v54 = v96;
      sub_18B268108(v31, v96);
      sub_18B1630AC(v54, &qword_1EA9B63D8, &unk_18B2FAD90);
      v55 = *(v47 + 8);
      v56 = v103;
      v57 = v55(v31, v103);
      v58 = v106[0];
    }

    else
    {
      v59 = v97;
      (*(v48 + 32))(v97, v17, v10);
      v60 = v106[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v60;
      sub_18B269DFC(v59, v31, isUniquelyReferenced_nonNull_native);
      v55 = *(v47 + 8);
      v56 = v103;
      v57 = v55(v31, v103);
      v58 = v105[0];
      v106[0] = v105[0];
    }

    v62 = *&v99[v50];
    v63 = MEMORY[0x1EEE9AC00](v57);
    v92[-2] = v50;
    MEMORY[0x1EEE9AC00](v63);
    v92[-2] = sub_18B26FD34;
    v92[-1] = v64;

    os_unfair_lock_lock(v62 + 4);
    sub_18B23602C(v105);
    os_unfair_lock_unlock(v62 + 4);

    v105[0] = v58;
    sub_18B2C9484();

    v55(v104, v56);
    return;
  }

  v36 = sub_18B2C98E4();
  if (v36 < 1)
  {

    goto LABEL_7;
  }

  v92[0] = countAndFlagsBits;
  v93 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
  v37 = *(v102 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v92[-2] = v39;
  MEMORY[0x1EEE9AC00](v38);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v40;

  os_unfair_lock_lock(v37 + 4);
  sub_18B23602C(v106);
  v92[1] = 0;
  os_unfair_lock_unlock(v37 + 4);

  sub_18B2C9474();

  v41 = v106[0];
  if (*(v106[0] + 16))
  {
    v42 = sub_18B293C80(v104);
    v43 = v100;
    v44 = v98;
    if (v45)
    {
      (*(v100 + 16))(v98, *(v41 + 56) + *(v100 + 72) * v42, v10);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
    v43 = v100;
    v44 = v98;
  }

  v65 = *(v43 + 56);
  v65(v44, v46, 1, v10);
  sub_18B163044(v44, v24, &qword_1EA9B63D8, &unk_18B2FAD90);
  v66 = *(v43 + 48);
  if (v66(v24, 1, v10) == 1)
  {
    (*(v101 + 56))(v94, 1, 1, v103);

    LOBYTE(v106[0]) = 1;
    sub_18B2C93F4();
    v67 = v66;
    v68 = v66(v24, 1, v10);
    v69 = v99;
    v70 = v95;
    if (v68 != 1)
    {
      sub_18B1630AC(v24, &qword_1EA9B63D8, &unk_18B2FAD90);
    }
  }

  else
  {
    v67 = v66;
    (*(v43 + 32))(v27, v24, v10);
    v69 = v99;
    v70 = v95;
  }

  v65(v27, 0, 1, v10);
  v71 = v98;
  sub_18B26C918(v27, v98);
  if (v67(v71, 1, v10))
  {
  }

  else
  {
    sub_18B2C9414();
  }

  v72 = v102;
  if (volume > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C93C4();
  }

  if (rate > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C9384();
  }

  if (pitch > 0.0 && !v67(v71, 1, v10))
  {
    LOBYTE(v106[0]) = 0;
    sub_18B2C93A4();
  }

  v73 = v10;
  v74 = v101;
  (*(v101 + 16))(v70, v104, v103);
  v75 = sub_18B163044(v71, v69, &qword_1EA9B63D8, &unk_18B2FAD90);
  v76 = *(v72 + v93);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v92[-2] = v72;
  MEMORY[0x1EEE9AC00](v77);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v78;

  os_unfair_lock_lock(v76 + 4);
  sub_18B23602C(v106);
  os_unfair_lock_unlock(v76 + 4);
  v79 = v99;

  sub_18B2C9474();

  if (v67(v79, 1, v73) == 1)
  {
    sub_18B1630AC(v79, &qword_1EA9B63D8, &unk_18B2FAD90);
    v80 = v96;
    sub_18B268108(v70, v96);
    sub_18B1630AC(v80, &qword_1EA9B63D8, &unk_18B2FAD90);
    v81 = *(v74 + 8);
    v82 = v103;
    v83 = v81(v70, v103);
    v84 = v106[0];
  }

  else
  {
    v85 = v97;
    (*(v100 + 32))(v97, v79, v73);
    v86 = v106[0];
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v86;
    sub_18B269DFC(v85, v70, v87);
    v81 = *(v74 + 8);
    v82 = v103;
    v83 = v81(v70, v103);
    v84 = v105[0];
    v106[0] = v105[0];
  }

  v88 = *(v102 + v93);
  v89 = MEMORY[0x1EEE9AC00](v83);
  v92[-2] = v90;
  MEMORY[0x1EEE9AC00](v89);
  v92[-2] = sub_18B26FD34;
  v92[-1] = v91;

  os_unfair_lock_lock(v88 + 4);
  sub_18B23602C(v105);
  os_unfair_lock_unlock(v88 + 4);

  v105[0] = v84;
  sub_18B2C9484();

  v81(v104, v82);
  sub_18B1630AC(v71, &qword_1EA9B63D8, &unk_18B2FAD90);
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingVolume()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25DB8C, 0, 0);
}

uint64_t sub_18B25DB8C()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702C0;
  v2 = *(v0 + 24);

  return AXSettings.VoiceOver.effectiveSpeakingVolume(currentRotor:)(v2);
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingVolume(currentRotor:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_18B2C9424();
  v2[4] = v3;
  v2[5] = *(v3 - 1);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25DD2C, 0, 0);
}

uint64_t sub_18B25DD2C()
{
  v1 = v0[8];
  sub_18B163044(v0[2], v1, &qword_1EA9B6A40, &qword_18B2F9B70);
  v2 = type metadata accessor for UserVoiceConfiguration(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  if (v3 == 1)
  {
    sub_18B1630AC(v4, &qword_1EA9B6A40, &qword_18B2F9B70);
LABEL_7:
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_18B25DF2C;
    v15 = v0[6];

    return AXSettings.VoiceOver.systemDefaultVoiceSelection()(v15);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v4 + *(v2 + 20);
  v9 = v0[8];
  (*(v7 + 16))(v5, v8, v6);
  sub_18B26F68C(v9, type metadata accessor for UserVoiceConfiguration);
  v10 = sub_18B2C93B4();
  (*(v7 + 8))(v5, v6);
  if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  v11 = v0[1];
  v12.n128_u32[0] = v10;

  return v11(v12);
}

uint64_t sub_18B25DF2C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25E028, 0, 0);
}

uint64_t sub_18B25E028(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = sub_18B2C93B4();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 0x100000000) != 0)
  {
    v6 = 0.8;
  }

  else
  {
    v6 = *&v5;
  }

  v7 = v1[1];
  v8.n128_f32[0] = v6;

  return v7(v8);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingVolume(_:)(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25E190, 0, 0);
}

uint64_t sub_18B25E190()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702BC;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return AXSettings.VoiceOver.setEffectiveSpeakingVolume(currentRotor:value:)(v2, v3);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingVolume(currentRotor:value:)(uint64_t a1, float a2)
{
  *(v3 + 320) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_18B2C9424();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 1);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8, &unk_18B2FAD90);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0, &unk_18B2F8920);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_18B2C9094();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_18B2C9014();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v7 = sub_18B2C90B4();
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v3 + 216) = swift_task_alloc();
  v8 = type metadata accessor for UserVoiceConfiguration(0);
  *(v3 + 224) = v8;
  *(v3 + 232) = *(v8 - 8);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25E53C, 0, 0);
}

uint64_t sub_18B25E53C()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_18B163044(*(v0 + 56), v3, &qword_1EA9B6A40, &qword_18B2F9B70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 216), &qword_1EA9B6A40, &qword_18B2F9B70);
    *(v0 + 248) = AXSettings.VoiceOver.resolver.getter();
    v23 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_18B25E91C;
    v5 = *(v0 + 208);

    return v23(v5);
  }

  else
  {
    v7 = *(v0 + 64);
    sub_18B26C784(*(v0 + 216), *(v0 + 240));
    v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors;
    v9 = *(v7 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    v11 = swift_task_alloc();
    *(v11 + 16) = sub_18B26FD4C;
    *(v11 + 24) = v10;

    os_unfair_lock_lock(v9 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v9 + 4);
    v12 = *(v0 + 240);
    v13 = *(v0 + 64);
    v14 = *(v0 + 320);

    sub_18B2C9474();

    v15 = *(v0 + 40);
    v16 = swift_task_alloc();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    v17 = sub_18B237B6C(sub_18B26C988, v16, v15);

    v18 = *(v7 + v8);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v20 = swift_task_alloc();
    *(v20 + 16) = sub_18B26FD4C;
    *(v20 + 24) = v19;

    os_unfair_lock_lock(v18 + 4);
    sub_18B22F010(v24);
    os_unfair_lock_unlock(v18 + 4);
    v21 = *(v0 + 240);

    *(v0 + 48) = v17;
    sub_18B2C9484();

    sub_18B26F68C(v21, type metadata accessor for UserVoiceConfiguration);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_18B25E91C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B25EA34, 0, 0);
}

uint64_t sub_18B25EA34(uint64_t a1)
{
  v28 = v1;
  v2 = v1[20];
  v3 = v1[21];
  v5 = v1[18];
  v4 = v1[19];
  v7 = v1[16];
  v6 = v1[17];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v8 = v1[16];
    (*(v1[25] + 8))(v1[26], v1[24]);
    sub_18B1630AC(v8, &qword_1EA9B63D0, &unk_18B2F8920);

    v9 = v1[1];

    return v9();
  }

  else
  {
    v11 = v1[8];
    (*(v1[21] + 32))(v1[23], v1[16], v1[20]);
    v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v1[33] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage;
    v13 = *(v11 + v12);
    v14 = swift_task_alloc();
    *(v14 + 16) = v11;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_18B26FD34;
    *(v15 + 24) = v14;

    os_unfair_lock_lock(v13 + 4);
    sub_18B23602C(&v27);
    v1[34] = 0;
    os_unfair_lock_unlock(v13 + 4);
    v16 = v1[23];
    v17 = v1[20];
    v18 = v1[21];
    v19 = v1[15];
    v20 = v1[8];

    sub_18B2C9474();

    v21 = v1[2];
    v1[35] = v21;
    v22 = *(v18 + 16);
    v1[36] = v22;
    v1[37] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v19, v16, v17);
    (*(v18 + 56))(v19, 0, 1, v17);
    v23 = *(v20 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver);
    v1[38] = v23;

    v24 = swift_task_alloc();
    v1[39] = v24;
    *v24 = v1;
    v24[1] = sub_18B25EDB8;
    v25 = v1[14];
    v26 = v1[15];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v25, v26, v23, 0, v21);
  }
}

uint64_t sub_18B25EDB8()
{
  v1 = *(*v0 + 120);

  sub_18B1630AC(v1, &qword_1EA9B63D0, &unk_18B2F8920);

  return MEMORY[0x1EEE6DFA0](sub_18B25EF20, 0, 0);
}

uint64_t sub_18B25EF20()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 48);
  if (!v2(v1, 1, *(v0 + 72)))
  {
    LOBYTE(v34[0]) = 0;
    sub_18B2C93C4();
    v1 = *(v0 + 112);
  }

  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  (*(v0 + 288))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
  sub_18B163044(v1, v5, &qword_1EA9B63D8, &unk_18B2FAD90);
  v7 = *(v6 + v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B26FD34;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(v34);
  os_unfair_lock_unlock(v7 + 4);
  if (v3)
  {
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_18B2C9474();

    v12 = *(v0 + 24);
    v13 = v2(v10, 1, v11);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    if (v13 == 1)
    {
      v17 = *(v0 + 96);
      sub_18B1630AC(*(v0 + 104), &qword_1EA9B63D8, &unk_18B2FAD90);
      sub_18B268108(v14, v17);
      sub_18B1630AC(v17, &qword_1EA9B63D8, &unk_18B2FAD90);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v12;
    }

    else
    {
      v20 = *(v0 + 88);
      (*(*(v0 + 80) + 32))(v20, *(v0 + 104), *(v0 + 72));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      sub_18B269DFC(v20, v14, isUniquelyReferenced_nonNull_native);
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = v34[0];
    }

    v22 = *(v0 + 64);
    v23 = *(v22 + *(v0 + 264));
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    v25 = swift_task_alloc();
    *(v25 + 16) = sub_18B26FD34;
    *(v25 + 24) = v24;

    os_unfair_lock_lock(v23 + 4);
    sub_18B23602C(v34);
    os_unfair_lock_unlock(v23 + 4);
    v27 = *(v0 + 200);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v30 = *(v0 + 184);
    v28 = *(v0 + 160);
    v33 = *(v0 + 112);

    *(v0 + 32) = v19;
    sub_18B2C9484();

    v18(v30, v28);
    (*(v27 + 8))(v32, v31);
    sub_18B1630AC(v33, &qword_1EA9B63D8, &unk_18B2FAD90);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t AXSettings.VoiceOver.effectiveSpeakingRate()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25F3CC, 0, 0);
}

uint64_t sub_18B25F3CC()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B25F468;
  v2 = *(v0 + 24);

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v2);
}

uint64_t sub_18B25F468(float a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;

  sub_18B1630AC(v3, &qword_1EA9B6A40, &qword_18B2F9B70);

  v4 = *(v7 + 8);
  v5.n128_f32[0] = a1;

  return v4(v5);
}

uint64_t AXSettings.VoiceOver.setEffectiveSpeakingRate(_:)(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40, &qword_18B2F9B70);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B25F638, 0, 0);
}

uint64_t sub_18B25F638()
{
  AXSettings.VoiceOver.currentVoiceRotor.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18B2702BC;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v2, v3);
}

uint64_t sub_18B25F6D8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>, unsigned int a5@<S0>)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v9 = a1;
    v10 = sub_18B2C9F24();
    a1 = v9;
    if ((v10 & 1) == 0)
    {
      return sub_18B230B70(v9, a4);
    }
  }

  sub_18B230B70(a1, a4);
  type metadata accessor for UserVoiceConfiguration(0);
  return a3(a5);
}

uint64_t AXSettings.VoiceOver.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage);
  v622 = sub_18B26FD34;
  v623 = &v624;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400, &qword_18B2F8948);
  v630 = sub_18B22EBD8(&qword_1EA9B6408, &qword_1EA9B6400, &qword_18B2F8948, MEMORY[0x1E6988248]);
  *&v628 = v3;
  sub_18B22C7E4(&v628, v626);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v625 = v4;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v612 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_18B22C84C(*v8, 0xD000000000000021, 0x800000018B2F1AC0, isUniquelyReferenced_nonNull_native, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v10 = v625;

  v12 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors);
  v13 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);

  os_unfair_lock_lock(v12 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v12 + 4);
  v14 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6670, &unk_18B2F9C20);
  v630 = sub_18B22EBD8(&qword_1EA9B6678, &qword_1EA9B6670, &unk_18B2F9C20, MEMORY[0x1E6988248]);
  *&v628 = v14;
  sub_18B22C7E4(&v628, v626);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v10;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v612 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  sub_18B22C868(*v18, 0x6F526563696F7624, 0xEC00000073726F74, v15, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v20 = v625;

  v22 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock__oldDomainRotors);
  v23 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v22 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6660, &unk_18B2F9660);
  v630 = sub_18B22EBD8(&qword_1EA9B6668, &qword_1EA9B6660, &unk_18B2F9660, MEMORY[0x1E6988248]);
  *&v628 = v24;
  sub_18B22C7E4(&v628, v626);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v20;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v612 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v615 = 0xD000000000000011;
  sub_18B22C884(v30, 0xD000000000000011, 0x800000018B2F1AF0, v25, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v31 = v625;

  v33 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier);
  v34 = MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v34);

  os_unfair_lock_lock(v33 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v33 + 4);
  v35 = v628;

  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6650, &unk_18B2F9C30);
  v629 = v620;
  v36 = sub_18B22EBD8(&qword_1EA9B6658, &qword_1EA9B6650, &unk_18B2F9C30, MEMORY[0x1E6988248]);
  v630 = v36;
  *&v628 = v35;
  sub_18B22C7E4(&v628, v626);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v31;
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v612 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  sub_18B22C8A0(*v40, 0xD00000000000001CLL, 0x800000018B2F1B10, v37, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v42 = v625;

  v44 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_rotorItems);
  v45 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v45);

  os_unfair_lock_lock(v44 + 4);
  sub_18B22F010(&v628);
  v619 = v36;
  os_unfair_lock_unlock(v44 + 4);
  v46 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6640, &unk_18B2F9650);
  v630 = sub_18B22EBD8(&qword_1EA9B6648, &qword_1EA9B6640, &unk_18B2F9650, MEMORY[0x1E6988248]);
  *&v628 = v46;
  sub_18B22C7E4(&v628, v626);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v42;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v612 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  sub_18B22C8BC(*v50, 0x7449726F746F7224, 0xEB00000000736D65, v47, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v52 = v625;

  v54 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_largeCursorEnabled);
  v55 = MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v55);

  os_unfair_lock_lock(v54 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v54 + 4);
  v56 = v628;

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420, &unk_18B2F9C40);
  v629 = v57;
  v58 = sub_18B22EBD8(&qword_1EA9B6428, &qword_1EA9B6420, &unk_18B2F9C40, MEMORY[0x1E6988248]);
  v630 = v58;
  *&v628 = v56;
  sub_18B22C7E4(&v628, v626);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v52;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v612 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v616 = 0xD000000000000013;
  sub_18B22C8D8(v64, 0xD000000000000013, 0x800000018B2F1B30, v59, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v65 = v625;

  v67 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_magicTapDefaultToMediaPlayback);
  v68 = MEMORY[0x1EEE9AC00](v66);
  MEMORY[0x1EEE9AC00](v68);

  os_unfair_lock_lock(v67 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v67 + 4);
  v69 = v628;

  v618 = v58;
  v629 = v57;
  v630 = v58;
  v621 = v57;
  *&v628 = v69;
  sub_18B22C7E4(&v628, v626);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v65;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v71);
  v73 = (&v612 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  sub_18B22C8D8(*v73, 0xD00000000000001FLL, 0x800000018B2F1B50, v70, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v75 = v625;

  v77 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_contentDescriptionLevel);
  v78 = MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v78);

  os_unfair_lock_lock(v77 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v77 + 4);
  v79 = v628;

  v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6630, &qword_18B2F9648);
  v629 = v614;
  v613 = sub_18B22EBD8(&qword_1EA9B6638, &qword_1EA9B6630, &qword_18B2F9648, MEMORY[0x1E6988248]);
  v630 = v613;
  *&v628 = v79;
  sub_18B22C7E4(&v628, v626);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v75;
  v81 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v81);
  v83 = (&v612 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  v85 = *v83;
  v617 = 0xD000000000000018;
  sub_18B22C8F4(v85, 0xD000000000000018, 0x800000018B2F1B70, v80, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v86 = v625;

  v88 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useDigitalCrownNavigation);
  v89 = MEMORY[0x1EEE9AC00](v87);
  MEMORY[0x1EEE9AC00](v89);

  os_unfair_lock_lock(v88 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v88 + 4);
  v90 = v628;

  v91 = v618;
  v92 = v621;
  v629 = v621;
  v630 = v618;
  *&v628 = v90;
  sub_18B22C7E4(&v628, v626);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v86;
  v94 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v94);
  v96 = (&v612 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v97 + 16))(v96);
  sub_18B22C8D8(*v96, 0xD00000000000001ALL, 0x800000018B2F1B90, v93, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v98 = v625;

  v100 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_imageCaptionsEnabled);
  v101 = MEMORY[0x1EEE9AC00](v99);
  MEMORY[0x1EEE9AC00](v101);

  os_unfair_lock_lock(v100 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v100 + 4);
  v102 = v628;

  v629 = v92;
  v630 = v91;
  *&v628 = v102;
  sub_18B22C7E4(&v628, v626);
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v98;
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v104);
  v106 = (&v612 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106);
  sub_18B22C8D8(*v106, 0xD000000000000015, 0x800000018B2F1BB0, v103, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v108 = v625;

  v110 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useTVToggleStyleNavigation);
  v111 = MEMORY[0x1EEE9AC00](v109);
  MEMORY[0x1EEE9AC00](v111);

  os_unfair_lock_lock(v110 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v110 + 4);
  v112 = v628;

  v629 = v92;
  v630 = v91;
  *&v628 = v112;
  sub_18B22C7E4(&v628, v626);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v108;
  v114 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v114);
  v116 = (&v612 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v117 + 16))(v116);
  sub_18B22C8D8(*v116, 0xD00000000000001BLL, 0x800000018B2F1BD0, v113, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v118 = v625;

  v120 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_continuousPathKeyboardStartTimeout);
  v121 = MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v121);

  os_unfair_lock_lock(v120 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v120 + 4);
  v122 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6620, &qword_18B2F9640);
  v630 = sub_18B22EBD8(&qword_1EA9B6628, &qword_1EA9B6620, &qword_18B2F9640, MEMORY[0x1E6988248]);
  *&v628 = v122;
  sub_18B22C7E4(&v628, v626);
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v118;
  v124 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v124);
  v126 = (&v612 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  sub_18B22C910(*v126, 0xD000000000000023, 0x800000018B2F1BF0, v123, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v128 = v625;

  v130 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_hearingAidRoutingEnabled);
  v131 = MEMORY[0x1EEE9AC00](v129);
  MEMORY[0x1EEE9AC00](v131);

  os_unfair_lock_lock(v130 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v130 + 4);
  v132 = v628;

  v133 = v621;
  v629 = v621;
  v630 = v91;
  *&v628 = v132;
  sub_18B22C7E4(&v628, v626);
  v134 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v128;
  v135 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v135);
  v137 = (&v612 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v138 + 16))(v137);
  sub_18B22C8D8(*v137, 0xD000000000000019, 0x800000018B2F1C20, v134, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v139 = v625;

  v141 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_listAnnotation);
  v142 = MEMORY[0x1EEE9AC00](v140);
  MEMORY[0x1EEE9AC00](v142);

  os_unfair_lock_lock(v141 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v141 + 4);
  v143 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6610, &qword_18B2F9638);
  v630 = sub_18B22EBD8(&qword_1EA9B6618, &qword_1EA9B6610, &qword_18B2F9638, MEMORY[0x1E6988248]);
  *&v628 = v143;
  sub_18B22C7E4(&v628, v626);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v139;
  v145 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v145);
  v147 = (&v612 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v148 + 16))(v147);
  sub_18B22C92C(*v147, 0x6E6E417473696C24, 0xEF6E6F697461746FLL, v144, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v149 = v625;

  v151 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_useSiriSounds);
  v152 = MEMORY[0x1EEE9AC00](v150);
  MEMORY[0x1EEE9AC00](v152);

  os_unfair_lock_lock(v151 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v151 + 4);
  v153 = v628;

  v629 = v133;
  v630 = v91;
  *&v628 = v153;
  sub_18B22C7E4(&v628, v626);
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v149;
  v155 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v155);
  v157 = (&v612 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v158 + 16))(v157);
  sub_18B22C8D8(*v157, 0x6972695365737524, 0xEE0073646E756F53, v154, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v159 = v625;

  v161 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_cursorOutputStyle);
  v162 = MEMORY[0x1EEE9AC00](v160);
  MEMORY[0x1EEE9AC00](v162);

  os_unfair_lock_lock(v161 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v161 + 4);
  v163 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6600, &qword_18B2F9630);
  v630 = sub_18B22EBD8(&qword_1EA9B6608, &qword_1EA9B6600, &qword_18B2F9630, MEMORY[0x1E6988248]);
  *&v628 = v163;
  sub_18B22C7E4(&v628, v626);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v159;
  v165 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v165);
  v167 = (&v612 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167);
  sub_18B22C948(*v167, 0xD000000000000012, 0x800000018B2F1C40, v164, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v169 = v625;

  v171 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_braillePanningAutoTurnsReadingContent);
  v172 = MEMORY[0x1EEE9AC00](v170);
  MEMORY[0x1EEE9AC00](v172);

  os_unfair_lock_lock(v171 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v171 + 4);
  v173 = v628;

  v629 = v621;
  v630 = v91;
  *&v628 = v173;
  sub_18B22C7E4(&v628, v626);
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v169;
  v175 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v175);
  v177 = (&v612 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v178 + 16))(v177);
  sub_18B22C8D8(*v177, 0xD000000000000026, 0x800000018B2F1C60, v174, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v179 = v625;

  v181 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputMode);
  v182 = MEMORY[0x1EEE9AC00](v180);
  MEMORY[0x1EEE9AC00](v182);

  os_unfair_lock_lock(v181 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v181 + 4);
  v183 = v628;

  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65F0, &qword_18B2F9628);
  v629 = v184;
  v185 = sub_18B22EBD8(&qword_1EA9B65F8, &qword_1EA9B65F0, &qword_18B2F9628, MEMORY[0x1E6988248]);
  v630 = v185;
  *&v628 = v183;
  sub_18B22C7E4(&v628, v626);
  v186 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v179;
  v187 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v187);
  v189 = (&v612 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  sub_18B22C964(*v189, 0xD000000000000019, 0x800000018B2F1C90, v186, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v191 = v625;

  v193 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputMode);
  v194 = MEMORY[0x1EEE9AC00](v192);
  MEMORY[0x1EEE9AC00](v194);

  os_unfair_lock_lock(v193 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v193 + 4);
  v195 = v628;

  v629 = v184;
  v630 = v185;
  *&v628 = v195;
  sub_18B22C7E4(&v628, v626);
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v191;
  v197 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v197);
  v199 = (&v612 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v200 + 16))(v199);
  sub_18B22C964(*v199, v617, 0x800000018B2F1CB0, v196, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v201 = v625;

  v203 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputMode);
  v204 = MEMORY[0x1EEE9AC00](v202);
  MEMORY[0x1EEE9AC00](v204);

  os_unfair_lock_lock(v203 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v203 + 4);
  v205 = v628;

  v629 = v184;
  v630 = v185;
  *&v628 = v205;
  sub_18B22C7E4(&v628, v626);
  v206 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v201;
  v207 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v207);
  v209 = (&v612 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v210 + 16))(v209);
  sub_18B22C964(*v209, 0xD000000000000019, 0x800000018B2F1CD0, v206, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v211 = v625;

  v213 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplaySyncInputOutputTables);
  v214 = MEMORY[0x1EEE9AC00](v212);
  MEMORY[0x1EEE9AC00](v214);

  os_unfair_lock_lock(v213 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v213 + 4);
  v215 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65E0, &qword_18B2F9620);
  v630 = sub_18B22EBD8(&qword_1EA9B65E8, &qword_1EA9B65E0, &qword_18B2F9620, MEMORY[0x1E6988248]);
  *&v628 = v215;
  sub_18B22C7E4(&v628, v626);
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v211;
  v217 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v217);
  v219 = (&v612 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v220 + 16))(v219);
  sub_18B22C980(*v219, 0xD000000000000024, 0x800000018B2F1CF0, v216, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v221 = v625;

  v223 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayInputTableIdentifier);
  v224 = MEMORY[0x1EEE9AC00](v222);
  MEMORY[0x1EEE9AC00](v224);

  os_unfair_lock_lock(v223 + 4);
  sub_18B22F010(&v628);
  v225 = v620;
  os_unfair_lock_unlock(v223 + 4);
  v226 = v628;

  v227 = v619;
  v629 = v225;
  v630 = v619;
  *&v628 = v226;
  sub_18B22C7E4(&v628, v626);
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v221;
  v229 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v229);
  v231 = (&v612 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v232 + 16))(v231);
  sub_18B22C8A0(*v231, 0xD000000000000023, 0x800000018B2F1D20, v228, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v233 = v625;

  v235 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleDisplayOutputTableIdentifier);
  v236 = MEMORY[0x1EEE9AC00](v234);
  MEMORY[0x1EEE9AC00](v236);

  os_unfair_lock_lock(v235 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v235 + 4);
  v237 = v628;

  v629 = v225;
  v630 = v227;
  *&v628 = v237;
  sub_18B22C7E4(&v628, v626);
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v233;
  v239 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v239);
  v241 = (&v612 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v242 + 16))(v241);
  sub_18B22C8A0(*v241, 0xD000000000000024, 0x800000018B2F1D50, v238, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v243 = v625;

  v245 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesInputTableIdentifier);
  v246 = MEMORY[0x1EEE9AC00](v244);
  MEMORY[0x1EEE9AC00](v246);

  os_unfair_lock_lock(v245 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v245 + 4);
  v247 = v628;

  v629 = v225;
  v630 = v227;
  *&v628 = v247;
  sub_18B22C7E4(&v628, v626);
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v243;
  v249 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v249);
  v251 = (&v612 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v252 + 16))(v251);
  sub_18B22C8A0(*v251, 0xD000000000000024, 0x800000018B2F1D80, v248, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v253 = v625;

  v255 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesActivationGestureEnabled);
  v256 = MEMORY[0x1EEE9AC00](v254);
  MEMORY[0x1EEE9AC00](v256);

  os_unfair_lock_lock(v255 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v255 + 4);
  v257 = v628;

  v629 = v621;
  v630 = v618;
  *&v628 = v257;
  sub_18B22C7E4(&v628, v626);
  v258 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v253;
  v259 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v259);
  v261 = (&v612 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v262 + 16))(v261);
  sub_18B22C8D8(*v261, 0xD000000000000028, 0x800000018B2F1DB0, v258, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v263 = v625;

  v265 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSoundOption);
  v266 = MEMORY[0x1EEE9AC00](v264);
  MEMORY[0x1EEE9AC00](v266);

  os_unfair_lock_lock(v265 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v265 + 4);
  v267 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65D0, &qword_18B2F9618);
  v630 = sub_18B22EBD8(&qword_1EA9B65D8, &qword_1EA9B65D0, &qword_18B2F9618, MEMORY[0x1E6988248]);
  *&v628 = v267;
  sub_18B22C7E4(&v628, v626);
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v263;
  v269 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v269);
  v271 = (&v612 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v272 + 16))(v271);
  sub_18B22C99C(*v271, 0xD00000000000001BLL, 0x800000018B2F1DE0, v268, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v273 = v625;

  v275 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesHapticFeedback);
  v276 = MEMORY[0x1EEE9AC00](v274);
  MEMORY[0x1EEE9AC00](v276);

  os_unfair_lock_lock(v275 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v275 + 4);
  v277 = v628;

  v278 = v618;
  v279 = v621;
  v629 = v621;
  v630 = v618;
  *&v628 = v277;
  sub_18B22C7E4(&v628, v626);
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v273;
  v281 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v281);
  v283 = (&v612 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v284 + 16))(v283);
  sub_18B22C8D8(*v283, 0xD000000000000022, 0x800000018B2F1E00, v280, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v285 = v625;

  v287 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesUsesTypingSoundFeedback);
  v288 = MEMORY[0x1EEE9AC00](v286);
  MEMORY[0x1EEE9AC00](v288);

  os_unfair_lock_lock(v287 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v287 + 4);
  v289 = v628;

  v629 = v279;
  v630 = v278;
  *&v628 = v289;
  sub_18B22C7E4(&v628, v626);
  v290 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v285;
  v291 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v291);
  v293 = (&v612 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v294 + 16))(v293);
  sub_18B22C8D8(*v293, 0xD000000000000027, 0x800000018B2F1E30, v290, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v295 = v625;

  v297 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandUsesDotNumbersFeedback);
  v298 = MEMORY[0x1EEE9AC00](v296);
  MEMORY[0x1EEE9AC00](v298);

  os_unfair_lock_lock(v297 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v297 + 4);
  v299 = v628;

  v629 = v279;
  v630 = v278;
  *&v628 = v299;
  sub_18B22C7E4(&v628, v626);
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v295;
  v301 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v301);
  v303 = (&v612 - ((v302 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v304 + 16))(v303);
  sub_18B22C8D8(*v303, 0xD000000000000030, 0x800000018B2F1E60, v300, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v305 = v625;

  v307 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesDisplayEnteredText);
  v308 = MEMORY[0x1EEE9AC00](v306);
  MEMORY[0x1EEE9AC00](v308);

  os_unfair_lock_lock(v307 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v307 + 4);
  v309 = v628;

  v629 = v279;
  v630 = v278;
  *&v628 = v309;
  sub_18B22C7E4(&v628, v626);
  v310 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v305;
  v311 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v311);
  v313 = (&v612 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v314 + 16))(v313);
  sub_18B22C8D8(*v313, 0xD000000000000022, 0x800000018B2F1EA0, v310, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v315 = v625;

  v317 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesLearnsDotPositions);
  v318 = MEMORY[0x1EEE9AC00](v316);
  MEMORY[0x1EEE9AC00](v318);

  os_unfair_lock_lock(v317 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v317 + 4);
  v319 = v628;

  v629 = v279;
  v630 = v278;
  *&v628 = v319;
  sub_18B22C7E4(&v628, v626);
  v320 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v315;
  v321 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v321);
  v323 = (&v612 - ((v322 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v324 + 16))(v323);
  sub_18B22C8D8(*v323, 0xD000000000000022, 0x800000018B2F1ED0, v320, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v325 = v625;

  v327 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesAutoActivateOnTextFields);
  v328 = MEMORY[0x1EEE9AC00](v326);
  MEMORY[0x1EEE9AC00](v328);

  os_unfair_lock_lock(v327 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v327 + 4);
  v329 = v628;

  v629 = v279;
  v630 = v278;
  *&v628 = v329;
  sub_18B22C7E4(&v628, v626);
  v330 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v325;
  v331 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v331);
  v333 = (&v612 - ((v332 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v334 + 16))(v333);
  sub_18B22C8D8(*v333, 0xD000000000000028, 0x800000018B2F1F00, v330, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v335 = v625;

  v337 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesSingleHandStyle);
  v338 = MEMORY[0x1EEE9AC00](v336);
  MEMORY[0x1EEE9AC00](v338);

  os_unfair_lock_lock(v337 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v337 + 4);
  v339 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65C0, &qword_18B2F9610);
  v630 = sub_18B22EBD8(&qword_1EA9B65C8, &qword_1EA9B65C0, &qword_18B2F9610, MEMORY[0x1E6988248]);
  *&v628 = v339;
  sub_18B22C7E4(&v628, v626);
  v340 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v335;
  v341 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v341);
  v343 = (&v612 - ((v342 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v344 + 16))(v343);
  sub_18B22C9B8(*v343, 0xD00000000000001FLL, 0x800000018B2F1F30, v340, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v345 = v625;

  v347 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleGesturesCharacterAcceptanceTestBraille);
  v348 = MEMORY[0x1EEE9AC00](v346);
  MEMORY[0x1EEE9AC00](v348);

  os_unfair_lock_lock(v347 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v347 + 4);
  v349 = v628;

  v629 = v620;
  v630 = v619;
  *&v628 = v349;
  sub_18B22C7E4(&v628, v626);
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v345;
  v351 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v351);
  v353 = (&v612 - ((v352 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v354 + 16))(v353);
  sub_18B22C8A0(*v353, 0xD00000000000002ELL, 0x800000018B2F1F50, v350, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v355 = v625;

  v357 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsKeyboardInputEnabled);
  v358 = MEMORY[0x1EEE9AC00](v356);
  MEMORY[0x1EEE9AC00](v358);

  os_unfair_lock_lock(v357 + 4);
  sub_18B23602C(&v628);
  v359 = v621;
  os_unfair_lock_unlock(v357 + 4);
  v360 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v360;
  sub_18B22C7E4(&v628, v626);
  v361 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v355;
  v362 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v362);
  v364 = (&v612 - ((v363 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v365 + 16))(v364);
  sub_18B22C8D8(*v364, 0xD00000000000001CLL, 0x800000018B2F1F80, v361, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v366 = v625;

  v368 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_perkinsChordKeyboardInputEnabled);
  v369 = MEMORY[0x1EEE9AC00](v367);
  MEMORY[0x1EEE9AC00](v369);

  os_unfair_lock_lock(v368 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v368 + 4);
  v370 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v370;
  sub_18B22C7E4(&v628, v626);
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v366;
  v372 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v372);
  v374 = (&v612 - ((v373 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v375 + 16))(v374);
  sub_18B22C8D8(*v374, 0xD000000000000021, 0x800000018B2F1FA0, v371, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v376 = v625;

  v378 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleHIMSUsesDot7ForCommand);
  v379 = MEMORY[0x1EEE9AC00](v377);
  MEMORY[0x1EEE9AC00](v379);

  os_unfair_lock_lock(v378 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v378 + 4);
  v380 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v380;
  sub_18B22C7E4(&v628, v626);
  v381 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v376;
  v382 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v382);
  v384 = (&v612 - ((v383 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v385 + 16))(v384);
  sub_18B22C8D8(*v384, 0xD00000000000001ELL, 0x800000018B2F1FD0, v381, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v386 = v625;

  v388 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_keyboardBrailleUIEnabled);
  v389 = MEMORY[0x1EEE9AC00](v387);
  MEMORY[0x1EEE9AC00](v389);

  os_unfair_lock_lock(v388 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v388 + 4);
  v390 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v390;
  sub_18B22C7E4(&v628, v626);
  v391 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v386;
  v392 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v392);
  v394 = (&v612 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v395 + 16))(v394);
  sub_18B22C8D8(*v394, 0xD000000000000019, 0x800000018B2F1FF0, v391, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v396 = v625;

  v398 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShouldReopenViewsWhenRestart);
  v399 = MEMORY[0x1EEE9AC00](v397);
  MEMORY[0x1EEE9AC00](v399);

  os_unfair_lock_lock(v398 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v398 + 4);
  v400 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v400;
  sub_18B22C7E4(&v628, v626);
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v396;
  v402 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v402);
  v404 = (&v612 - ((v403 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v405 + 16))(v404);
  sub_18B22C8D8(*v404, 0xD000000000000026, 0x800000018B2F2010, v401, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v406 = v625;

  v408 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIReadListItemsEnabled);
  v409 = MEMORY[0x1EEE9AC00](v407);
  MEMORY[0x1EEE9AC00](v409);

  os_unfair_lock_lock(v408 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v408 + 4);
  v410 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v410;
  sub_18B22C7E4(&v628, v626);
  v411 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v406;
  v412 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v412);
  v414 = (&v612 - ((v413 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v415 + 16))(v414);
  sub_18B22C8D8(*v414, 0xD00000000000001ELL, 0x800000018B2F2040, v411, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v416 = v625;

  v418 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIVisualsEnabled);
  v419 = MEMORY[0x1EEE9AC00](v417);
  MEMORY[0x1EEE9AC00](v419);

  os_unfair_lock_lock(v418 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v418 + 4);
  v420 = v628;

  v629 = v359;
  v630 = v278;
  *&v628 = v420;
  sub_18B22C7E4(&v628, v626);
  v421 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v416;
  v422 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v422);
  v424 = (&v612 - ((v423 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v425 + 16))(v424);
  sub_18B22C8D8(*v424, v617, 0x800000018B2F2060, v421, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v426 = v625;

  v428 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortType);
  v429 = MEMORY[0x1EEE9AC00](v427);
  MEMORY[0x1EEE9AC00](v429);

  os_unfair_lock_lock(v428 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v428 + 4);
  v430 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65B0, &qword_18B2F9608);
  v630 = sub_18B22EBD8(&qword_1EA9B65B8, &qword_1EA9B65B0, &qword_18B2F9608, MEMORY[0x1E6988248]);
  *&v628 = v430;
  sub_18B22C7E4(&v628, v626);
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v426;
  v432 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v432);
  v434 = (&v612 - ((v433 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v435 + 16))(v434);
  sub_18B22C9D4(*v434, 0xD00000000000001ELL, 0x800000018B2F2080, v431, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v436 = v625;

  v438 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBrailleNotesSortDirection);
  v439 = MEMORY[0x1EEE9AC00](v437);
  MEMORY[0x1EEE9AC00](v439);

  os_unfair_lock_lock(v438 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v438 + 4);
  v440 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B65A0, &qword_18B2F9600);
  v630 = sub_18B22EBD8(&qword_1EA9B65A8, &qword_1EA9B65A0, &qword_18B2F9600, MEMORY[0x1E6988248]);
  *&v628 = v440;
  sub_18B22C7E4(&v628, v626);
  v441 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v436;
  v442 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v442);
  v444 = (&v612 - ((v443 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v445 + 16))(v444);
  sub_18B22C9F0(*v444, 0xD000000000000023, 0x800000018B2F20A0, v441, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v446 = v625;

  v448 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUITypingSpeechFeedbackEnabled);
  v449 = MEMORY[0x1EEE9AC00](v447);
  MEMORY[0x1EEE9AC00](v449);

  os_unfair_lock_lock(v448 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v448 + 4);
  v450 = v628;

  v451 = v621;
  v629 = v621;
  v630 = v278;
  *&v628 = v450;
  sub_18B22C7E4(&v628, v626);
  v452 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v446;
  v453 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v453);
  v455 = (&v612 - ((v454 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v456 + 16))(v455);
  sub_18B22C8D8(*v455, 0xD000000000000025, 0x800000018B2F20D0, v452, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v457 = v625;

  v459 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFReflowEnabled);
  v460 = MEMORY[0x1EEE9AC00](v458);
  MEMORY[0x1EEE9AC00](v460);

  os_unfair_lock_lock(v459 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v459 + 4);
  v461 = v628;

  v629 = v451;
  v630 = v278;
  *&v628 = v461;
  sub_18B22C7E4(&v628, v626);
  v462 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v457;
  v463 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v463);
  v465 = (&v612 - ((v464 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v466 + 16))(v465);
  sub_18B22C8D8(*v465, 0xD00000000000001ALL, 0x800000018B2F2100, v462, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v467 = v625;

  v469 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIBRFStripPageIndicatorsEnabled);
  v470 = MEMORY[0x1EEE9AC00](v468);
  MEMORY[0x1EEE9AC00](v470);

  os_unfair_lock_lock(v469 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v469 + 4);
  v471 = v628;

  v629 = v451;
  v630 = v278;
  *&v628 = v471;
  sub_18B22C7E4(&v628, v626);
  v472 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v467;
  v473 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v473);
  v475 = (&v612 - ((v474 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v476 + 16))(v475);
  sub_18B22C8D8(*v475, 0xD000000000000027, 0x800000018B2F2120, v472, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v477 = v625;

  v479 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUICalculatorUsesUEBMath);
  v480 = MEMORY[0x1EEE9AC00](v478);
  MEMORY[0x1EEE9AC00](v480);

  os_unfair_lock_lock(v479 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v479 + 4);
  v481 = v628;

  v629 = v451;
  v630 = v278;
  *&v628 = v481;
  sub_18B22C7E4(&v628, v626);
  v482 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v477;
  v483 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v483);
  v485 = (&v612 - ((v484 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v486 + 16))(v485);
  sub_18B22C8D8(*v485, 0xD00000000000001FLL, 0x800000018B2F2150, v482, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v487 = v625;

  v489 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUILiveCaptionsSource);
  v490 = MEMORY[0x1EEE9AC00](v488);
  MEMORY[0x1EEE9AC00](v490);

  os_unfair_lock_lock(v489 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v489 + 4);
  v491 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6590, &qword_18B2F95F8);
  v630 = sub_18B22EBD8(&qword_1EA9B6598, &qword_1EA9B6590, &qword_18B2F95F8, MEMORY[0x1E6988248]);
  *&v628 = v491;
  sub_18B22C7E4(&v628, v626);
  v492 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v487;
  v493 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v493);
  v495 = (&v612 - ((v494 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v496 + 16))(v495);
  sub_18B22CA0C(*v495, 0xD00000000000001CLL, 0x800000018B2F2170, v492, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v497 = v625;

  v499 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIMigrationMessageAnnounced);
  v500 = MEMORY[0x1EEE9AC00](v498);
  MEMORY[0x1EEE9AC00](v500);

  os_unfair_lock_lock(v499 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v499 + 4);
  v501 = v628;

  v502 = v621;
  v629 = v621;
  v630 = v278;
  *&v628 = v501;
  sub_18B22C7E4(&v628, v626);
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v497;
  v504 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v504);
  v506 = (&v612 - ((v505 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v507 + 16))(v506);
  sub_18B22C8D8(*v506, 0xD000000000000023, 0x800000018B2F2190, v503, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v508 = v625;

  v510 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUIShowsBackButton);
  v511 = MEMORY[0x1EEE9AC00](v509);
  MEMORY[0x1EEE9AC00](v511);

  os_unfair_lock_lock(v510 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v510 + 4);
  v512 = v628;

  v629 = v502;
  v630 = v278;
  *&v628 = v512;
  sub_18B22C7E4(&v628, v626);
  v513 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v508;
  v514 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v514);
  v516 = (&v612 - ((v515 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v517 + 16))(v516);
  sub_18B22C8D8(*v516, 0xD000000000000019, 0x800000018B2F21C0, v513, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v518 = v625;

  v520 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleZoomOutNumCellsPerElement);
  v521 = MEMORY[0x1EEE9AC00](v519);
  MEMORY[0x1EEE9AC00](v521);

  os_unfair_lock_lock(v520 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v520 + 4);
  v522 = v628;

  v629 = v614;
  v630 = v613;
  *&v628 = v522;
  sub_18B22C7E4(&v628, v626);
  v523 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v518;
  v524 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v524);
  v526 = (&v612 - ((v525 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v527 + 16))(v526);
  sub_18B22C8F4(*v526, 0xD000000000000021, 0x800000018B2F21E0, v523, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v528 = v625;

  v530 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_brailleUsesUnderlineCursor);
  v531 = MEMORY[0x1EEE9AC00](v529);
  MEMORY[0x1EEE9AC00](v531);

  os_unfair_lock_lock(v530 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v530 + 4);
  v532 = v628;

  v629 = v502;
  v630 = v278;
  *&v628 = v532;
  sub_18B22C7E4(&v628, v626);
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v528;
  v534 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v534);
  v536 = (&v612 - ((v535 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v537 + 16))(v536);
  sub_18B22C8D8(*v536, 0xD00000000000001BLL, 0x800000018B2F2210, v533, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v538 = v625;

  v540 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultPunctuationGroup);
  v541 = MEMORY[0x1EEE9AC00](v539);
  MEMORY[0x1EEE9AC00](v541);

  os_unfair_lock_lock(v540 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v540 + 4);
  v542 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6580, &qword_18B2F95F0);
  v630 = sub_18B22EBD8(&qword_1EA9B6588, &qword_1EA9B6580, &qword_18B2F95F0, MEMORY[0x1E6988248]);
  *&v628 = v542;
  sub_18B22C7E4(&v628, v626);
  v543 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v538;
  v544 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v544);
  v546 = (&v612 - ((v545 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v547 + 16))(v546);
  sub_18B22CA28(*v546, v617, 0x800000018B2F2230, v543, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v548 = v625;

  v550 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);
  v551 = MEMORY[0x1EEE9AC00](v549);
  MEMORY[0x1EEE9AC00](v551);

  os_unfair_lock_lock(v550 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v550 + 4);
  v552 = v628;

  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6570, &qword_18B2F95E8);
  v630 = sub_18B22EBD8(&qword_1EA9B6578, &qword_1EA9B6570, &qword_18B2F95E8, MEMORY[0x1E6988248]);
  *&v628 = v552;
  sub_18B22C7E4(&v628, v626);
  v553 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v548;
  v554 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v554);
  v556 = (&v612 - ((v555 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v557 + 16))(v556);
  sub_18B22CA44(*v556, 0x7469766974636124, 0xEB00000000736569, v553, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v558 = v625;

  v560 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedActivityId);
  v561 = MEMORY[0x1EEE9AC00](v559);
  MEMORY[0x1EEE9AC00](v561);

  os_unfair_lock_lock(v560 + 4);
  sub_18B22F010(&v628);
  v562 = v619;
  os_unfair_lock_unlock(v560 + 4);
  v563 = v628;

  v629 = v620;
  v630 = v562;
  *&v628 = v563;
  sub_18B22C7E4(&v628, v626);
  v564 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v558;
  v565 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v565);
  v567 = (&v612 - ((v566 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v568 + 16))(v567);
  sub_18B22C8A0(*v567, v616, 0x800000018B2F2250, v564, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v569 = v625;

  v571 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_languageDetectionEnabled);
  v572 = MEMORY[0x1EEE9AC00](v570);
  MEMORY[0x1EEE9AC00](v572);

  os_unfair_lock_lock(v571 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v571 + 4);
  v573 = v628;

  v574 = v621;
  v629 = v621;
  v630 = v278;
  *&v628 = v573;
  sub_18B22C7E4(&v628, v626);
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v569;
  v576 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v576);
  v578 = (&v612 - ((v577 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v579 + 16))(v578);
  sub_18B22C8D8(*v578, 0xD000000000000019, 0x800000018B2F2270, v575, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v580 = v625;

  v582 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_pitchChangeEnabled);
  v583 = MEMORY[0x1EEE9AC00](v581);
  MEMORY[0x1EEE9AC00](v583);

  os_unfair_lock_lock(v582 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v582 + 4);
  v584 = v628;

  v629 = v574;
  v630 = v278;
  *&v628 = v584;
  sub_18B22C7E4(&v628, v626);
  v585 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v580;
  v586 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v586);
  v588 = (&v612 - ((v587 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v589 + 16))(v588);
  sub_18B22C8D8(*v588, v616, 0x800000018B2F2290, v585, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v590 = v625;

  v592 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_selectedLanguage);
  v593 = MEMORY[0x1EEE9AC00](v591);
  MEMORY[0x1EEE9AC00](v593);

  os_unfair_lock_lock(v592 + 4);
  sub_18B22F010(&v628);
  os_unfair_lock_unlock(v592 + 4);
  v594 = v628;

  v629 = v620;
  v630 = v562;
  *&v628 = v594;
  sub_18B22C7E4(&v628, v626);
  v595 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v590;
  v596 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v596);
  v598 = (&v612 - ((v597 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v599 + 16))(v598);
  sub_18B22C8A0(*v598, v615, 0x800000018B2F22B0, v595, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v600 = v625;

  v602 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_speakUpEnabled);
  v603 = MEMORY[0x1EEE9AC00](v601);
  MEMORY[0x1EEE9AC00](v603);

  os_unfair_lock_lock(v602 + 4);
  sub_18B23602C(&v628);
  os_unfair_lock_unlock(v602 + 4);
  v604 = v628;

  v629 = v621;
  v630 = v278;
  *&v628 = v604;
  sub_18B22C7E4(&v628, v626);
  v605 = swift_isUniquelyReferenced_nonNull_native();
  v625 = v600;
  v606 = __swift_mutable_project_boxed_opaque_existential_1(v626, v627);
  MEMORY[0x1EEE9AC00](v606);
  v608 = (&v612 - ((v607 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v609 + 16))(v608);
  sub_18B22C8D8(*v608, 0x70556B6165707324, 0xEF64656C62616E45, v605, &v625);
  __swift_destroy_boxed_opaque_existential_1Tm(v626);
  v610 = v625;

  return v610;
}