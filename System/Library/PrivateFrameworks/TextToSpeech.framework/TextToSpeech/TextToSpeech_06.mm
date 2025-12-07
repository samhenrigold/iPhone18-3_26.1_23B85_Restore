uint64_t sub_1A93B9368()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93B9408(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A93B9494(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A93B953C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0xE400000000000000;
  v5 = 1701601645;
  if (v2 != 1)
  {
    v5 = 0x656C616D6566;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6669636570736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TTSMarkup.Voice.voiceSelectionClientKey.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TTSMarkup.Voice.voiceSelectionClientKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t TTSMarkup.Voice.init(named:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t *)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *(v7 + 5) = 0u;
  v7 += 5;
  *(v7 - 16) = 0;
  *(v7 - 1) = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  v7[6] = 0;
  *(v7 - 4) = a1;
  *(v7 - 3) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

uint64_t TTSMarkup.Voice.init(gender:spokenLanguages:speech:)@<X0>(void (*a2)(void *__return_ptr, uint64_t *)@<X2>, uint64_t a3@<X8>)
{

  v5 = SpeechContext.init<each A>(_:)(&v8, 0, &v8, a3);
  *(a3 + 40) = 0u;
  a3 += 40;
  *(a3 - 16) = 0;
  *(a3 - 8) = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 - 32) = 0;
  *(a3 - 24) = 0xE000000000000000;
  a2(v7, v5);
  return sub_1A93A38D8(v7, a3);
}

uint64_t TTSMarkup.Voice.init(voiceSelectionClientKey:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t *)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *(v7 + 5) = 0u;
  v7 += 5;
  *(v7 - 16) = 0;
  *(v7 - 1) = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = 0u;
  *(v7 - 4) = 0;
  *(v7 - 3) = 0xE000000000000000;
  v7[4] = 0;
  v7[5] = a1;
  v7[6] = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Voice.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 1701667182;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t TTSMarkup.Voice.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 104))(v3, a2);
}

{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

unint64_t sub_1A93B9A6C()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 1701667182;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A93B9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Voice.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93B9C5C()
{
  result = qword_1EB386BE8;
  if (!qword_1EB386BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BE8);
  }

  return result;
}

__n128 sub_1A93B9CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A93B9CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A93B9D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static MacinTalkMarkup.writer(minSpeakingRate:normalSpeakingRate:maxSpeakingRate:)@<X0>(unsigned int a1@<S0>, unsigned int a2@<S1>, float a3@<S2>, uint64_t a4@<X8>)
{
  v14 = &type metadata for MacinTalkMarkup;
  v15 = &off_1F1CF3080;
  v12 = __PAIR64__(a1, a2);
  v13 = a3;
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  sub_1A957B308();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9587160;
  sub_1A957B108();
  v6 = sub_1A93775FC();
  v7 = sub_1A93ADEC0();
  v9 = v8;
  v10 = sub_1A93775FC();
  return sub_1A94A50A4(&v12, 1, v5, v6 & 1, v7, v9, v10 & 1, a4);
}

uint64_t sub_1A93B9F54(char *a1)
{
  v1 = 0x4C20726168635B5BLL;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v8 == v6 && v9 == v7)
  {
  }

  else
  {
    v3 = sub_1A957D3E8();

    if ((v3 & 1) == 0)
    {
      sub_1A957C438();
      sub_1A957C438();
      if (v8 == v6 && v9 == v7)
      {
      }

      else
      {
        v4 = sub_1A957D3E8();

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      return 0x4C2072626D6E5B5BLL;
    }
  }

  return v1;
}

uint64_t sub_1A93BA140(float a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  MEMORY[0x1AC585140](0x20657461725B5BLL, 0xE700000000000000);
  v6 = 1.0;
  if (a1 >= 1.0)
  {
    v7 = 2.0;
    v8 = v3;
    v9 = v5;
  }

  else
  {
    v6 = 0.0;
    v7 = 1.0;
    v8 = v4;
    v9 = v3;
  }

  sub_1A94CF2F0(v6, v7, v8, v9, a1);
  sub_1A957C898();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A93BA204(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_1A957C0C8();
  v3 = [v1 applebetPhonemesFromIPA_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1A957C0F8();
  v6 = v5;

  sub_1A957CF08();

  strcpy(v8, "[[inpt PHON]] ");
  HIBYTE(v8[1]) = -18;
  MEMORY[0x1AC585140](v4, v6);

  MEMORY[0x1AC585140](0x2074706E695B5B20, 0xEE005D5D54584554);
  return v8[0];
}

uint64_t sub_1A93BA320(double a1)
{
  MEMORY[0x1AC585140](0x20636E6C735B5BLL, 0xE700000000000000);
  sub_1A957C888();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A93BA3B0()
{
  MEMORY[0x1AC585140]();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0x20636E79735B5BLL;
}

uint64_t sub_1A93BA408(float a1, float a2)
{
  v3 = sub_1A93875C0(a1 + -1.0);
  v4 = v3 - sub_1A93875C0(a2 + -1.0);
  if (v4 == 0.0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = sub_1A94CF30C(roundf(v4 * 100.0) / 100.0);
    v6 = v7;
  }

  MEMORY[0x1AC585140](v5, v6);

  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0x20736162705B5BLL;
}

uint64_t sub_1A93BA4D0(float a1)
{
  MEMORY[0x1AC585140](0x206D6C6F765B5BLL, 0xE700000000000000);
  sub_1A957C898();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t initializeBufferWithCopyOfBuffer for MacinTalkMarkup(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MacinTalkMarkup(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MacinTalkMarkup(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t CoreSynthesizer.Voice.fetchAudioUnit()()
{
  *(v1 + 180) = *(v0 + 160);
  *(v1 + 196) = *(v0 + 176);
  return MEMORY[0x1EEE6DFA0](sub_1A93BA620, 0, 0);
}

uint64_t sub_1A93BA620()
{
  v1 = v0 + 16;
  v2 = *(v0 + 196);
  v3 = *(v0 + 180);
  v4 = *(v0 + 188);
  v5 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1A93BA770;
  v6 = swift_continuation_init();
  v7 = sub_1A937829C(&qword_1EB386BF0, &unk_1A9588BB8);
  *(v0 + 160) = v3;
  v8 = v0 + 160;
  *(v8 - 24) = v7;
  *(v8 - 80) = MEMORY[0x1E69E9820];
  *(v8 - 72) = 1107296256;
  *(v8 - 64) = sub_1A93BA9AC;
  *(v8 - 56) = &unk_1F1CED680;
  *(v8 - 48) = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  [v5 instantiateWithComponentDescription:v8 options:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1A93BA770()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_1A93BA940;
  }

  else
  {
    v2 = sub_1A93BA880;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A93BA880()
{
  v1 = *(v0 + 144);
  v2 = objc_opt_self();
  v3 = [v1 AUAudioUnit];
  v4 = [v2 makeAU_];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A93BA940(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t *sub_1A93BA9AC(uint64_t a1, void *a2, void *a3)
{
  result = sub_1A93780F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AUAudioUnit._fallbacksLoaded.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB392BA0 = a1;
  return result;
}

uint64_t sub_1A93BAB80()
{
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB392BB0 = result;
  return result;
}

uint64_t static AUAudioUnit.fallbackLock.getter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AUAudioUnit.fallbackLock.setter(uint64_t a1)
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB392BB0 = a1;
}

uint64_t (*static AUAudioUnit.fallbackLock.modify(uint64_t a1))(void)
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Bool __swiftcall AUAudioUnit.hasEntitlement(_:)(Swift::String a1)
{
  [v1 remoteProcessAuditToken];
  sub_1A957C1C8();
  v2 = xpc_copy_entitlement_for_token();

  if (!v2)
  {
    return 0;
  }

  value = xpc_BOOL_get_value(v2);
  swift_unknownObjectRelease();
  return value;
}

uint64_t static AUAudioUnit.fallbacksLoaded.getter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v0 = swift_beginAccess();
  v1 = qword_1EB392BB0;
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC680(&v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

uint64_t sub_1A93BAF08@<X0>(_BYTE *a1@<X8>)
{
  result = static AUAudioUnit.fallbacksLoaded.getter();
  *a1 = result & 1;
  return result;
}

uint64_t static AUAudioUnit.fallbacksLoaded.setter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v0 = swift_beginAccess();
  v1 = qword_1EB392BB0;
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A93BB078@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB392BA0;
  return result;
}

void (*static AUAudioUnit.fallbacksLoaded.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v5 = swift_beginAccess();
  v6 = qword_1EB392BB0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_1A93BC7D0(&v10);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v6 + 4);
  v8 = v10;

  *(v4 + 40) = v8;
  return sub_1A93BB234;
}

void sub_1A93BB234(void **a1)
{
  v1 = *a1;
  v2 = qword_1EB392BB0;

  os_unfair_lock_lock(v2 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v2 + 4);

  free(v1);
}

uint64_t static AUAudioUnit.loadInProcessFallbacks()()
{
  v1 = v0;
  v143 = *MEMORY[0x1E69E9840];
  v140 = sub_1A957BC88();
  v2 = *(v140 - 8);
  v3 = MEMORY[0x1EEE9AC00](v140);
  v129 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v132 = v116 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v116 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v116 - v10;
  v126 = sub_1A957AFD8();
  v12 = *(v126 - 8);
  v13 = MEMORY[0x1EEE9AC00](v126);
  v123 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v125 = v116 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v134 = v116 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v120 = v116 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v128 = v116 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v116 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v119 = v116 - v26;
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v27 = swift_beginAccess();
  v28 = qword_1EB392BB0;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v116[-2] = v0;
  MEMORY[0x1EEE9AC00](v29);
  v116[-2] = sub_1A93BC7E8;
  v116[-1] = v30;

  os_unfair_lock_lock(v28 + 4);
  sub_1A93BC7D0(&v142);
  os_unfair_lock_unlock(v28 + 4);
  v31 = v142;

  if ((v31 & 1) == 0)
  {
    v121 = v11;
    v124 = v9;
    v117 = v1;
    type metadata accessor for CoreSynthesizer(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];
    v35 = [v34 bundleURL];

    sub_1A957AF98();
    v36 = v119;
    sub_1A957AF88();
    v37 = *(v12 + 8);
    v38 = v126;
    v39 = v37(v25, v126);
    MEMORY[0x1EEE9AC00](v39);
    v116[-2] = v36;
    v40 = sub_1A93BC2BC(sub_1A93BC734, &v116[-4], &unk_1F1CF3158);
    swift_arrayDestroy();
    v42 = *(v40 + 16);
    if (v42)
    {
      v122 = 0;
      v138 = v12 + 8;
      v139 = v37;
      v45 = *(v12 + 16);
      v44 = v12 + 16;
      v43 = v45;
      v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
      v116[1] = v40;
      v47 = v40 + v46;
      v48 = *(v44 + 56);
      v136 = (v2 + 16);
      v137 = v48;
      v135 = (v2 + 8);
      *&v41 = 136315138;
      v127 = v41;
      v131 = v44;
      v49 = v134;
      v50 = v128;
      v133 = v45;
      while (1)
      {
        v52 = v49;
        v43(v50, v47, v38);
        v53 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v54 = sub_1A957AF58();
        v55 = [v53 initWithURL_];

        if (v55)
        {
          v142 = 0;
          if (![v55 loadAndReturnError_])
          {
            v86 = v142;
            v87 = sub_1A957AEF8();

            v130 = v87;
            swift_willThrow();
            v122 = 0;

            v88 = sub_1A93772F8();
            v89 = v129;
            (*v136)(v129, v88, v140);
            v90 = v123;
            v43(v123, v50, v38);
            v91 = sub_1A957BC68();
            v92 = sub_1A957CA78();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = v90;
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v142 = v95;
              *v94 = v127;
              sub_1A93BC760();
              v96 = sub_1A957D3A8();
              v98 = v97;
              v139(v93, v126);
              v99 = v96;
              v43 = v133;
              v100 = sub_1A937A5C0(v99, v98, &v142);
              v38 = v126;

              *(v94 + 4) = v100;
              _os_log_impl(&dword_1A9324000, v91, v92, "Failed to load first party audio unit from %s", v94, 0xCu);
              sub_1A9378138(v95);
              MEMORY[0x1AC587CD0](v95, -1, -1);
              MEMORY[0x1AC587CD0](v94, -1, -1);

              (*v135)(v129, v140);
              v139(v50, v38);
            }

            else
            {

              v51 = v139;
              v139(v90, v38);
              (*v135)(v89, v140);
              v51(v50, v38);
            }

            v49 = v134;
            goto LABEL_8;
          }

          v56 = v142;
          if ([v55 principalClass])
          {
            swift_getObjCClassMetadata();
            v141 = &unk_1F1D24020;
            v57 = swift_dynamicCastTypeToObjCProtocolConditional();
            if (v57)
            {
              v130 = v57;
              v58 = sub_1A93772F8();
              (*v136)(v121, v58, v140);
              v59 = v50;
              v60 = v120;
              v43(v120, v59, v38);
              v61 = sub_1A957BC68();
              v62 = v38;
              v63 = sub_1A957CA58();
              if (os_log_type_enabled(v61, v63))
              {
                v64 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v142 = v118;
                *v64 = v127;
                sub_1A93BC760();
                v65 = v62;
                v66 = sub_1A957D3A8();
                v68 = v67;
                v69 = v65;
                v70 = v139;
                v139(v60, v69);
                v71 = sub_1A937A5C0(v66, v68, &v142);

                *(v64 + 4) = v71;
                _os_log_impl(&dword_1A9324000, v61, v63, "Loading audio unit fallback for %s", v64, 0xCu);
                v72 = v118;
                sub_1A9378138(v118);
                v73 = v72;
                v49 = v134;
                MEMORY[0x1AC587CD0](v73, -1, -1);
                MEMORY[0x1AC587CD0](v64, -1, -1);

                (*v135)(v121, v140);
                v38 = v126;
              }

              else
              {

                v70 = v139;
                v139(v60, v62);
                (*v135)(v121, v140);
                v38 = v62;
                v49 = v52;
              }

              [swift_getObjCClassFromMetadata() registerAudioUnit];

              v50 = v128;
              v70(v128, v38);
              v43 = v133;
              goto LABEL_8;
            }
          }

          v101 = sub_1A93772F8();
          (*v136)(v124, v101, v140);
          v43(v52, v50, v38);
          v102 = sub_1A957BC68();
          v77 = v38;
          v103 = sub_1A957CA78();
          if (!os_log_type_enabled(v102, v103))
          {

            v111 = v139;
            v139(v52, v77);
            (*v135)(v124, v140);
            goto LABEL_24;
          }

          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v142 = v105;
          *v104 = v127;
          sub_1A93BC760();
          v106 = sub_1A957D3A8();
          v108 = v107;
          v139(v134, v77);
          v109 = sub_1A937A5C0(v106, v108, &v142);

          *(v104 + 4) = v109;
          _os_log_impl(&dword_1A9324000, v102, v103, "Missing principle class in fw %s", v104, 0xCu);
          sub_1A9378138(v105);
          MEMORY[0x1AC587CD0](v105, -1, -1);
          v110 = v104;
          v50 = v128;
          v49 = v134;
          MEMORY[0x1AC587CD0](v110, -1, -1);

          (*v135)(v124, v140);
          v139(v50, v77);
        }

        else
        {
          v74 = sub_1A93772F8();
          (*v136)(v132, v74, v140);
          v75 = v125;
          v43(v125, v50, v38);
          v76 = sub_1A957BC68();
          v77 = v38;
          v78 = sub_1A957CA78();
          if (!os_log_type_enabled(v76, v78))
          {

            v111 = v139;
            v139(v75, v77);
            (*v135)(v132, v140);
LABEL_24:
            v111(v50, v77);
            v38 = v77;
            v43 = v133;
            v49 = v52;
            goto LABEL_8;
          }

          v79 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v142 = v130;
          *v79 = v127;
          sub_1A93BC760();
          v80 = sub_1A957D3A8();
          v82 = v81;
          v139(v75, v77);
          v83 = sub_1A937A5C0(v80, v82, &v142);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_1A9324000, v76, v78, "Failed to load bundle for %s", v79, 0xCu);
          v84 = v130;
          sub_1A9378138(v130);
          MEMORY[0x1AC587CD0](v84, -1, -1);
          v85 = v79;
          v50 = v128;
          v49 = v134;
          MEMORY[0x1AC587CD0](v85, -1, -1);

          (*v135)(v132, v140);
          v139(v50, v77);
        }

        v38 = v77;
        v43 = v133;
LABEL_8:
        v47 += v137;
        if (!--v42)
        {

          v112 = (v139)(v119, v38);
          goto LABEL_29;
        }
      }
    }

    v112 = v37(v119, v38);
LABEL_29:
    v113 = qword_1EB392BB0;
    v114 = MEMORY[0x1EEE9AC00](v112);
    v116[-2] = v117;
    LOBYTE(v116[-1]) = 1;
    MEMORY[0x1EEE9AC00](v114);
    v116[-2] = sub_1A93BC7B8;
    v116[-1] = v115;

    os_unfair_lock_lock(v113 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v113 + 4);
  }

  return result;
}

uint64_t sub_1A93BC19C(void *a1)
{
  v2 = sub_1A957AF08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1A93820F4();
  sub_1A957AFC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A93BC2BC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_1A957AFD8();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1A93BC488(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1A93BC488((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A93BC488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93BC4A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A93BC4A8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386C60, &qword_1A9588BC8);
  v10 = *(sub_1A957AFD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A957AFD8() - 8);
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

uint64_t sub_1A93BC698()
{
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  byte_1EB392BA0 = v1;
  return result;
}

void *sub_1A93BC6F0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1A93BC760()
{
  result = qword_1EB386BF8;
  if (!qword_1EB386BF8)
  {
    sub_1A957AFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BF8);
  }

  return result;
}

uint64_t Array<A>.init(contentBlock:)(void (*a1)(void))
{
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9587160;
  a1();
  return v2;
}

double Array<A>.content.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A93BC894@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Array<A>.content.setter(uint64_t a1)
{

  *v1 = MEMORY[0x1E69E7CC0];
  sub_1A93ADE40(a1, &v7);
  if (v8)
  {
    sub_1A932D070(&v7, v9);
    sub_1A9379534(v9, &v7);
    v3 = sub_1A93ADC90(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1A93ADC90((v4 > 1), v5 + 1, 1, v3);
    }

    sub_1A9383404(a1);
    sub_1A9378138(v9);
    v3[2] = v5 + 1;
    result = sub_1A932D070(&v7, &v3[5 * v5 + 4]);
    *v1 = v3;
  }

  else
  {
    sub_1A9383404(a1);
    return sub_1A9383404(&v7);
  }

  return result;
}

void (*Array<A>.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  return sub_1A93BCA50;
}

void sub_1A93BCA50(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A93ADE40(*a1, v2 + 40);
    Array<A>.content.setter(v2 + 40);
    sub_1A9383404(v2);
  }

  else
  {
    Array<A>.content.setter(*a1);
  }

  free(v2);
}

uint64_t Array<A>.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

void *Array<A>.context.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SpeechContext.init<each A>(_:)(&v22, 0, &v22, &v21);
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = a1 + 4;
  v8 = a1[7];
  v7 = a1[8];
  sub_1A93780F4(v6, v8);
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, v8, v7);

  if (v20)
  {
    goto LABEL_5;
  }

  v10 = &v6[5 * v5];
  v11 = *(v10 - 2);
  v12 = *(v10 - 1);
  sub_1A93780F4(v10 - 5, v11);
  v13 = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(v13, v11, v12);

  if (*(&v19[0] + 1) >> 14 >= *&v19[0] >> 14)
  {
    sub_1A93A0F34(*&v19[0], *(&v19[0] + 1), *&v19[0], *(&v19[0] + 1), v18);
    v19[0] = v18[0];
    v19[1] = v18[1];
    v20 = 0;
    result = sub_1A93A0EEC(v19, v14, v15, v16, v17);
LABEL_5:
    *a2 = v21;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1A93BCD2C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = Array<A>.context.getter(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t Array<A>.ssml.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v1, 0);
    v2 = v18;
    v4 = a1 + 32;
    do
    {
      sub_1A9379534(v4, v15);
      v5 = v16;
      v6 = v17;
      sub_1A93780F4(v15, v16);
      v7 = (*(v6 + 64))(v5, v6);
      v9 = v8;
      sub_1A9378138(v15);
      v18 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A93ABB68((v10 > 1), v11 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v15[0] = v2;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v13 = sub_1A957C088();

  return v13;
}

void *Array<A>.init(ssml:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for SSMLParser();
  v7 = static SSMLParser.parse(ssml:)(a1, a2);

  if (!v2)
  {
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v8; i = v4)
    {
      v9 = 0;
      v3 = MEMORY[0x1E69E7CC0];
      while ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](v9, v7);
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v11 = v10;
        sub_1A93D1250(v18);
        v15 = v18[0];
        v16 = v18[1];
        v17 = v19;

        if (*(&v16 + 1))
        {
          sub_1A932D070(&v15, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A93ADC90(0, v3[2] + 1, 1, v3);
          }

          v13 = v3[2];
          v12 = v3[3];
          if (v13 >= v12 >> 1)
          {
            v3 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v3);
          }

          v3[2] = v13 + 1;
          sub_1A932D070(v18, &v3[5 * v13 + 4]);
        }

        else
        {
          sub_1A9383404(&v15);
        }

        ++v9;
        if (v4 == v8)
        {
          goto LABEL_22;
        }
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 8 * v9 + 32);
      v4 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v8 = sub_1A957CE48();
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v3;
}

void (*sub_1A93BD190(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  return sub_1A93BCA50;
}

uint64_t sub_1A93BD28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return Array<A>.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93BD360()
{
  result = qword_1EB385F80;
  if (!qword_1EB385F80)
  {
    sub_1A93A7B68(&qword_1EB386B68, &qword_1A9591620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F80);
  }

  return result;
}

uint64_t TTSMarkup.Prosody.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Prosody.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))(v3, a2);
}

{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t TTSMarkup.Prosody.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v93, 0, v93, &v83);
  v87 = -1;
  v89 = -4;
  v91 = -1;
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v86 = 0;
  v88 = 0;
  v90 = 0;
  v5 = (*(v4 + 256))(v3);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
  {
    v76 = a1;
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      a1 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v78);

      if (v79)
      {
        sub_1A932D070(&v78, &v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        a1 = (v13 + 1);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = a1;
        sub_1A932D070(&v80, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A9383404(&v78);
      }

      ++v9;
      if (v11 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_18:

  v81 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v82 = &protocol witness table for <A> [A];
  *&v80 = v8;
  v14 = sub_1A93A38D8(&v80, v84);
  v15 = *((*MEMORY[0x1E69E7D40] & *v76) + 0xE8);
  v16 = v15(v14);
  if (*(v16 + 16) && (v17 = sub_1A937A490(1702125938, 0xE400000000000000), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];

    TTSMarkup.Prosody.PredefinedRate.init(rawValue:)(&v80);
    v22 = v80;
    if (v80 != 5)
    {

      goto LABEL_25;
    }

    v23 = sub_1A94F2D4C();
    swift_beginAccess();
    v24 = *(**v23 + 144);

    LODWORD(v25) = v24(v20, v21, &unk_1F1CF32D0);
    v27 = v26;

    if (v27)
    {

      v22 = COERCE_UNSIGNED_INT(v25 / 100.0) | 0x100000000;
LABEL_25:
      v86 = v22;
      v87 = BYTE4(v22);
    }
  }

  else
  {
  }

  v29 = v15(v28);
  if (*(v29 + 16) && (v30 = sub_1A937A490(0x656D756C6F76, 0xE600000000000000), (v31 & 1) != 0))
  {
    v32 = (*(v29 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];

    TTSMarkup.Prosody.PredefinedVolume.init(rawValue:)(&v80);
    v35 = v80;
    if (v80 != 6)
    {

      goto LABEL_33;
    }

    v36 = sub_1A94F2D4C();
    swift_beginAccess();
    v37 = *(**v36 + 160);

    v38 = v37(v33, v34, &unk_1F1CF33B0);
    v40 = v39;

    if (v40)
    {

      v35 = v38 | 0x100000000;
LABEL_33:
      v90 = v35;
      v91 = BYTE4(v35);
    }
  }

  else
  {
  }

  v42 = v15(v41);
  if (*(v42 + 16) && (v43 = sub_1A937A490(0x6863746970, 0xE500000000000000), (v44 & 1) != 0))
  {
    v45 = (*(v42 + 56) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];

    TTSMarkup.Prosody.PredefinedPitch.init(rawValue:)(&v80);
    v48 = v80;
    if (v80 == 5)
    {
      v49 = sub_1A94F2D4C();
      swift_beginAccess();
      v50 = *(**v49 + 144);

      v51 = v50(v47, v46, &unk_1F1CF34E0);
      v53 = v52;

      if (v53)
      {

        v48 = v51 | 0x4000000000;
      }

      else
      {
        swift_beginAccess();
        v56 = *v49;
        v92 = MEMORY[0x1E69E7CC0];

        sub_1A93ABB68(0, 3, 0);
        v57 = v92;
        v59 = *(v92 + 16);
        v58 = *(v92 + 24);
        v60 = v58 >> 1;
        v61 = v59 + 1;
        if (v58 >> 1 <= v59)
        {
          sub_1A93ABB68((v58 > 1), v59 + 1, 1);
          v61 = v59 + 1;
          v57 = v92;
          v58 = *(v92 + 24);
          v60 = v58 >> 1;
        }

        *(v57 + 16) = v61;
        v62 = v57 + 16 * v59;
        *(v62 + 32) = 31304;
        *(v62 + 40) = 0xE200000000000000;
        v92 = v57;
        v63 = v59 + 2;
        if (v60 <= v61)
        {
          v74 = v61;
          v75 = v63;
          sub_1A93ABB68((v58 > 1), v63, 1);
          v63 = v75;
          v61 = v74;
          v57 = v92;
        }

        *(v57 + 16) = v63;
        v64 = v57 + 16 * v61;
        *(v64 + 32) = 29811;
        *(v64 + 40) = 0xE200000000000000;
        v92 = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          sub_1A93ABB68((v65 > 1), v66 + 1, 1);
          v67 = v66 + 1;
          v57 = v92;
        }

        *(v57 + 16) = v67;
        v68 = v57 + 16 * v66;
        *(v68 + 32) = 37;
        *(v68 + 40) = 0xE100000000000000;
        v69 = (*(*v56 + 168))(v47, v46, v57);
        v71 = v70;

        if (v71)
        {

          v72 = sub_1A957D158();
          swift_bridgeObjectRelease_n();
          v73 = v69 | (v72 << 32);
          if (v72 <= 2)
          {
            v48 = v73 | 0xFFFFFF8000000000;
          }

          else
          {
            v48 = 0xFC00000000;
          }
        }

        else
        {
          v48 = 0xFC00000000;
        }
      }
    }

    v54 = a2;
    if (((v48 >> 34) & 0x3F) != 0x3F)
    {
      v88 = v48;
      v89 = BYTE4(v48);
    }
  }

  else
  {

    v54 = a2;
  }

  sub_1A93BFBB0(&v83, v54);
  return sub_1A93B77E0(&v83);
}

uint64_t TTSMarkup.Prosody.PredefinedRate.description.getter()
{
  v1 = *v0;
  v2 = 0x776F6C732D78;
  v3 = 0x6D756964656DLL;
  v4 = 1953718630;
  if (v1 != 3)
  {
    v4 = 0x747361662D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2003790963;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Prosody.PredefinedRate.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A93BDE98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  v6 = 0xE400000000000000;
  v7 = 1685417836;
  if (a1 != 4)
  {
    v7 = 0x64756F6C2D78;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x74666F732D78;
  if (a1 != 1)
  {
    v9 = 1952870259;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746E656C6973;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D756964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1685417836)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64756F6C2D78)
      {
LABEL_34:
        v13 = sub_1A957D3E8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74666F732D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952870259)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x746E656C6973)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A93BE044(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 0x776F6C2D78;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1751607656;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x686769682D78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7827308;
    }

    else
    {
      v9 = 0x776F6C2D78;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1751607656;
    if (a2 != 3)
    {
      v6 = 0x686769682D78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A93BE19C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 2003790963;
    }

    else
    {
      v4 = 0x776F6C732D78;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1953718630;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x747361662D78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 2003790963;
    }

    else
    {
      v9 = 0x776F6C732D78;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1953718630;
    if (a2 != 3)
    {
      v6 = 0x747361662D78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A93BE2F4()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE3BC(unsigned __int8 a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE4A4(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A93BE558(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE61C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A93BE70C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x776F6C732D78;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1953718630;
  if (v2 != 3)
  {
    v8 = 0x747361662D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2003790963;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A93BE790()
{
  v1 = *v0;
  v2 = 0x776F6C732D78;
  v3 = 0x6D756964656DLL;
  v4 = 1953718630;
  if (v1 != 3)
  {
    v4 = 0x747361662D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2003790963;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Prosody.Rate.description.getter()
{
  if (*(v0 + 4))
  {
    sub_1A957C898();
    MEMORY[0x1AC585140](37, 0xE100000000000000);
    return 0;
  }

  else
  {
    v2 = *v0;
    v3 = 0x776F6C732D78;
    v4 = 0x6D756964656DLL;
    v5 = 1953718630;
    if (v2 != 3)
    {
      v5 = 0x747361662D78;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 2003790963;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t TTSMarkup.Prosody.PredefinedPitch.description.getter()
{
  v1 = *v0;
  v2 = 0x776F6C2D78;
  v3 = 0x6D756964656DLL;
  v4 = 1751607656;
  if (v1 != 3)
  {
    v4 = 0x686769682D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7827308;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Prosody.PredefinedPitch.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A93BEA04()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BEACC(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A93BEB80(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A93BEC50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x776F6C2D78;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (v2 != 3)
  {
    v8 = 0x686769682D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7827308;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A93BECD4()
{
  v1 = *v0;
  v2 = 0x776F6C2D78;
  v3 = 0x6D756964656DLL;
  v4 = 1751607656;
  if (v1 != 3)
  {
    v4 = 0x686769682D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7827308;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Prosody.RelativePitchUnit.description.getter()
{
  v1 = 29811;
  if (*v0 != 1)
  {
    v1 = 37;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 31304;
  }
}

uint64_t TTSMarkup.Prosody.RelativePitchUnit.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A93BEDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 29811;
  if (v2 != 1)
  {
    v4 = 37;
    v3 = 0xE100000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 31304;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 29811;
  if (*a2 != 1)
  {
    v8 = 37;
    v7 = 0xE100000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 31304;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A93BEEC0()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BEF40(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A93BEFAC(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A93BF034(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE200000000000000;
  v5 = 29811;
  if (v2 != 1)
  {
    v5 = 37;
    v4 = 0xE100000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 31304;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A93BF070()
{
  v1 = 29811;
  if (*v0 != 1)
  {
    v1 = 37;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 31304;
  }
}

void static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v5 = 1.0;
  if (a2 >= 1.0)
  {
    v8 = 100.0;
    v7 = 2.0;
    v6 = 0.0;
  }

  else
  {
    v6 = -50.0;
    v5 = 0.5;
    v7 = 1.0;
    v8 = 0.0;
  }

  *a1 = sub_1A94CF2F0(v5, v7, v6, v8, a2);
  *(a1 + 4) = -126;
}

uint64_t TTSMarkup.Prosody.Pitch.description.getter()
{
  v1 = *(v0 + 4) >> 6;
  if (v1)
  {
    if (v1 == 1)
    {
      v12 = 0;
      sub_1A957C898();
      MEMORY[0x1AC585140](31304, 0xE200000000000000);
    }

    else
    {
      v7 = ((*v0 | (*(v0 + 4) << 32)) >> 32) & 0x3F;
      v12 = sub_1A94CF30C(*v0);
      v8 = 0xE200000000000000;
      v9 = 29811;
      if (v7 != 1)
      {
        v9 = 37;
        v8 = 0xE100000000000000;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 31304;
      }

      if (v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      MEMORY[0x1AC585140](v10, v11);
    }

    return v12;
  }

  else
  {
    v2 = *v0;
    v3 = 0x776F6C2D78;
    v4 = 0x6D756964656DLL;
    v5 = 1751607656;
    if (v2 != 3)
    {
      v5 = 0x686769682D78;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 7827308;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t TTSMarkup.Prosody.PredefinedVolume.description.getter()
{
  v1 = *v0;
  v2 = 0x746E656C6973;
  v3 = 0x6D756964656DLL;
  v4 = 1685417836;
  if (v1 != 4)
  {
    v4 = 0x64756F6C2D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74666F732D78;
  if (v1 != 1)
  {
    v5 = 1952870259;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Prosody.PredefinedVolume.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A93BF394(uint64_t a1)
{
  sub_1A957C228();
}

void sub_1A93BF478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656C6973;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1685417836;
  if (v2 != 4)
  {
    v8 = 0x64756F6C2D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x74666F732D78;
  if (v2 != 1)
  {
    v10 = 1952870259;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1A93BF518()
{
  v1 = *v0;
  v2 = 0x746E656C6973;
  v3 = 0x6D756964656DLL;
  v4 = 1685417836;
  if (v1 != 4)
  {
    v4 = 0x64756F6C2D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74666F732D78;
  if (v1 != 1)
  {
    v5 = 1952870259;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

float sub_1A93BF5B4()
{
  if (*(v0 + 4))
  {
    return roundf(sub_1A93876A4(*v0) * 100.0) / 100.0;
  }

  else
  {
    return flt_1A95891C8[*v0];
  }
}

uint64_t TTSMarkup.Prosody.Volume.description.getter()
{
  if (*(v0 + 4))
  {
    v7 = sub_1A94CF30C(*v0);
    MEMORY[0x1AC585140](16996, 0xE200000000000000);
    return v7;
  }

  else
  {
    v2 = *v0;
    v3 = 0x746E656C6973;
    v4 = 0x6D756964656DLL;
    v5 = 1685417836;
    if (v2 != 4)
    {
      v5 = 0x64756F6C2D78;
    }

    if (v2 != 3)
    {
      v4 = v5;
    }

    v6 = 0x74666F732D78;
    if (v2 != 1)
    {
      v6 = 1952870259;
    }

    if (*v0)
    {
      v3 = v6;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

void sub_1A93BF6F4(uint64_t a1@<X8>, float a2@<S0>)
{
  if (a2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = sub_1A9387684(a2);
  }

  *a1 = v4;
  *(a1 + 4) = a2 != 0.0;
}

uint64_t TTSMarkup.Prosody.init(rate:pitch:volume:speech:)@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, void (*a4)(void *__return_ptr, uint64_t *)@<X3>, void *a5@<X8>)
{
  v6 = a5;
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = *a3;
  v12 = *(a3 + 4);
  v13 = SpeechContext.init<each A>(_:)(&v16, 0, &v16, a5);
  *++v6 = 0u;
  v6[4] = 0;
  *(v6 + 1) = 0u;
  *(v6 + 44) = v8;
  *(v6 + 10) = v7;
  *(v6 + 52) = v10;
  *(v6 + 12) = v9;
  *(v6 + 60) = v12;
  *(v6 + 14) = v11;
  a4(v15, v13);
  return sub_1A93A38D8(v15, v6);
}

uint64_t TTSMarkup.Prosody.attributes.getter()
{
  v1 = MEMORY[0x1E69E7CC8];
  if (*(v0 + 52) != 255)
  {
    if (((*(v0 + 52) << 32) & 0x100000000) != 0)
    {
      sub_1A957C898();
      MEMORY[0x1AC585140](37, 0xE100000000000000);
      v4 = 0;
      v3 = 0xE000000000000000;
    }

    else
    {
      v2 = *(v0 + 48);
      if (v2 <= 1)
      {
        if (*(v0 + 48))
        {
          v4 = 2003790963;
        }

        else
        {
          v4 = 0x776F6C732D78;
        }

        if (*(v0 + 48))
        {
          v3 = 0xE400000000000000;
        }

        else
        {
          v3 = 0xE600000000000000;
        }
      }

      else if (v2 == 2)
      {
        v3 = 0xE600000000000000;
        v4 = 0x6D756964656DLL;
      }

      else if (v2 == 3)
      {
        v3 = 0xE400000000000000;
        v4 = 1953718630;
      }

      else
      {
        v3 = 0xE600000000000000;
        v4 = 0x747361662D78;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v4, v3, 1702125938, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (*(v0 + 60) >> 2 <= 0x3EuLL)
  {
    v6 = TTSMarkup.Prosody.Pitch.description.getter();
    v8 = v7;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v6, v8, 0x6863746970, 0xE500000000000000, v9);
  }

  if (*(v0 + 68) != 255)
  {
    if (((*(v0 + 68) << 32) & 0x100000000) != 0)
    {
      v16 = sub_1A94CF30C(*(v0 + 64));
      v17 = v13;
      MEMORY[0x1AC585140](16996, 0xE200000000000000);
      v12 = v16;
      v11 = v17;
    }

    else
    {
      v10 = *(v0 + 64);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xE600000000000000;
          v12 = 0x6D756964656DLL;
        }

        else if (v10 == 4)
        {
          v11 = 0xE400000000000000;
          v12 = 1685417836;
        }

        else
        {
          v11 = 0xE600000000000000;
          v12 = 0x64756F6C2D78;
        }
      }

      else if (*(v0 + 64))
      {
        if (v10 == 1)
        {
          v11 = 0xE600000000000000;
          v12 = 0x74666F732D78;
        }

        else
        {
          v11 = 0xE400000000000000;
          v12 = 1952870259;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        v12 = 0x746E656C6973;
      }
    }

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v12, v11, 0x656D756C6F76, 0xE600000000000000, v14);
  }

  return v1;
}

uint64_t sub_1A93BFB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Prosody.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93BFBEC()
{
  result = qword_1EB386C68;
  if (!qword_1EB386C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C68);
  }

  return result;
}

unint64_t sub_1A93BFC44()
{
  result = qword_1EB386C70;
  if (!qword_1EB386C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C70);
  }

  return result;
}

unint64_t sub_1A93BFC9C()
{
  result = qword_1EB386C78;
  if (!qword_1EB386C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C78);
  }

  return result;
}

unint64_t sub_1A93BFCF4()
{
  result = qword_1EB386C80;
  if (!qword_1EB386C80)
  {
    sub_1A93A7B68(&qword_1EB386C88, &qword_1A9588EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C80);
  }

  return result;
}

unint64_t sub_1A93BFD5C()
{
  result = qword_1EB386C90;
  if (!qword_1EB386C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C90);
  }

  return result;
}

__n128 sub_1A93BFDB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A93BFDD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t sub_1A93BFE1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7ProsodyV5PitchOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceDatabaseError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VoiceDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s7ProsodyV5PitchOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 5))
  {
    return (*a1 + 62);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFFC3 | (4 * ((*(a1 + 4) >> 2) & 0xF))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s7ProsodyV5PitchOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 4) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t _s7ProsodyV16PredefinedVolumeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ProsodyV16PredefinedVolumeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7ProsodyV4RateOwet_0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t _s7ProsodyV4RateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A93C0380@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C03DC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);

  return v4(v2, v3);
}

uint64_t sub_1A93C04E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C0540(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v4(v2, v3);
}

id sub_1A93C0624(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1A957C0C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A93C06C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1A957C0F8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A93C074C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C07A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);

  return v4(v2, v3);
}

id sub_1A93C0880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
  *v16 = a1;
  *(v16 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  *v15 = a5;
  *(v15 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1A93C0B98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A93C0BF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93C0C4C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v2(v3);
}

id sub_1A93C0D1C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_1A957C0C8();

  return v3;
}

uint64_t sub_1A93C0DAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A957C0F8();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A93C0E24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C0E80(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v4(v2, v3);
}

id sub_1A93C0F58(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets] = MEMORY[0x1E69E7CC0];
  v6 = &v5[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_originalSSML];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TaggedSSML.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A93C10EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C1148(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);

  return v4(v2, v3);
}

uint64_t sub_1A93C1238@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C1294(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v4(v2, v3);
}

id SSMLVoiceTagger.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentVoiceName];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentLanguage];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_voiceTagRanges] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SSMLVoiceTagger();
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_1A93C149C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for SSMLParser();

  v86 = a1;
  v7 = SSMLParser.__allocating_init(ssml:)(a1, a2);
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))();
  v85 = a2;
  sub_1A937829C(&qword_1EB386CE0, &qword_1A95891E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9587160;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 64) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles;
  swift_beginAccess();
  v83 = v11;
  *(v4 + v11) = v9;

  (*((*v8 & *v4) + 0x78))(0, 0);
  v12 = (*((*v8 & *v4) + 0x90))(0, 0);
  v13 = (*((*v8 & *v7) + 0xE8))(v12);
  if (v13)
  {
    v14 = v13;
    sub_1A93C2334(v13);
  }

  v15 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_voiceTagRanges;
  swift_beginAccess();
  v16 = *(v4 + v15);
  v17 = *(v16 + 16);
  v80 = v4;
  v74 = v7;
  if (v17)
  {
    v18 = v85;

    v19 = (v16 + 40);
    v20 = v86;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_1A957C3B8();
      sub_1A957CC78();

      v96 = 0;
      v97 = 0xE000000000000000;
      v93 = 32;
      v94 = 0xE100000000000000;
      sub_1A93820F4();
      v23 = sub_1A957CD28();
      v20 = sub_1A93C1FAC(v21, v22, v23, v24, v20, v18);
      v3 = v25;

      v18 = v3;
      v19 += 2;
      --v17;
    }

    while (v17);

    v8 = MEMORY[0x1E69E7D40];
    v4 = v80;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v18 = v85;

    v20 = v86;
  }

  v26 = type metadata accessor for TaggedSSML();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets] = v10;
  v28 = &v27[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_originalSSML];
  *v28 = v20;
  v28[1] = v18;
  v95.receiver = v27;
  v95.super_class = v26;
  v29 = sel_init;

  v30 = objc_msgSendSuper2(&v95, sel_init);
  v31 = v30;
  v73 = *(*(v4 + v11) + 16);
  if (v73 < 2)
  {
    v60 = type metadata accessor for VoiceTaggedSSMLSnippet();
    v61 = objc_allocWithZone(v60);
    v62 = &v61[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
    *v62 = 0;
    *(v62 + 1) = 0;
    v63 = &v61[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
    *v63 = 0;
    *(v63 + 1) = 0;
    v64 = &v61[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
    *v64 = v20;
    v64[1] = v18;
    swift_beginAccess();
    *v62 = 0;
    *(v62 + 1) = 0;
    swift_beginAccess();
    *v63 = 0;
    *(v63 + 1) = 0;
    v92.receiver = v61;
    v92.super_class = v60;
    objc_msgSendSuper2(&v92, &selRef_getArgument_atIndex_);
    v65 = (*((*v8 & *v31) + 0x70))(&v96);
    v67 = v66;
    MEMORY[0x1AC585360]();
    if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A957C4F8();
    }

    sub_1A957C538();
    v65(&v96, 0);
LABEL_35:
  }

  else
  {
    v71 = v20;
    v72 = v18;
    v32 = 0;
    v69 = *((*v8 & *v30) + 0x70);
    v70 = v30;
    while (1)
    {
      v33 = *(v4 + v83);
      v34 = *(v33 + 16);
      if (v32 >= v34)
      {
        break;
      }

      v35 = (v33 + 40 * v32);
      v29 = v35[5];
      v78 = v35[6];
      v79 = v32 + 1;
      v76 = v35[4];
      v77 = v35[7];

      v31 = v72;

      v75 = v29;

      v3 = 0;
      v7 = v71;
      v81 = v34;
      v82 = v32;
      do
      {
        if (v3 == v34)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v3 != v32)
        {
          v36 = *(v4 + v83);
          if (v3 >= *(v36 + 16))
          {
            goto LABEL_40;
          }

          v37 = *(v36 + 40 * v3 + 64);
          if (v37 >> 62)
          {
            v29 = *(v36 + 40 * v3 + 64);
            v38 = sub_1A957CE48();
            v37 = v29;
            if (v38)
            {
LABEL_18:
              if (v38 >= 1)
              {
                v84 = v3;
                v87 = v37 & 0xC000000000000001;
                v88 = v37;

                v39 = 0;
                while (1)
                {
                  v29 = v38;
                  v40 = v87 ? MEMORY[0x1AC585DE0](v39, v88) : *&v88[8 * v39 + 32];
                  v41 = v40;
                  v42 = v8;
                  v43 = *((*v8 & *v40) + 0x118);
                  v44 = v43();
                  v43();
                  if (v45 >> 14 < v44 >> 14)
                  {
                    break;
                  }

                  ++v39;
                  sub_1A957C3B8();
                  sub_1A957CC78();

                  v47 = (v43)(v46);
                  v49 = v48;
                  v96 = 0;
                  v97 = 0xE000000000000000;
                  v90 = 32;
                  v91 = 0xE100000000000000;
                  sub_1A93820F4();
                  v50 = sub_1A957CD28();
                  v7 = sub_1A93C1FAC(v47, v49, v50, v51, v7, v31);
                  v53 = v52;

                  v31 = v53;
                  v38 = v29;
                  v8 = v42;
                  if (v29 == v39)
                  {

                    v4 = v80;
                    v34 = v81;
                    v32 = v82;
                    v3 = v84;
                    goto LABEL_12;
                  }
                }

                __break(1u);
                goto LABEL_38;
              }

              goto LABEL_41;
            }
          }

          else
          {
            v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v38)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_12:
        ++v3;
      }

      while (v3 != v34);
      v54 = type metadata accessor for VoiceTaggedSSMLSnippet();
      v55 = objc_allocWithZone(v54);
      v56 = &v55[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
      *v56 = 0;
      *(v56 + 1) = 0;
      v3 = &v55[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
      *v3 = 0;
      *(v3 + 8) = 0;
      v57 = &v55[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
      *v57 = v7;
      *(v57 + 1) = v31;
      swift_beginAccess();
      *v56 = v76;
      *(v56 + 1) = v75;
      swift_beginAccess();
      *v3 = v78;
      *(v3 + 8) = v77;
      v89.receiver = v55;
      v89.super_class = v54;
      objc_msgSendSuper2(&v89, sel_init);
      v31 = v70;
      v29 = v69(&v96);
      v59 = v58;
      MEMORY[0x1AC585360]();
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      sub_1A957C538();
      (v29)(&v96, 0);
      v32 = v79;
      v7 = v74;
      if (v79 == v73)
      {
LABEL_38:

        goto LABEL_35;
      }
    }

LABEL_42:
    __break(1u);
    sub_1A957C4F8();
    sub_1A957C538();
    (v3)(&v96, 0);
  }

  return v31;
}

unint64_t sub_1A93C1FAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1A957CCA8();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1A957CCA8();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1A938156C(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_1A957C2F8();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1A938156C(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1A938156C(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_1A957C2F8();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_1A957C2B8();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x1AC5850B0](result);
LABEL_23:
        sub_1A957C3B8();
        sub_1A93C3A6C();
        sub_1A957C278();

        sub_1A957C278();
        sub_1A93C3234(a2, a5, a6);
        sub_1A957C278();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1A93C2334(unint64_t a1)
{
  v2 = v1;
  if (sub_1A93C2D5C())
  {
    v4 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles;
    v5 = swift_beginAccess();
    v6 = *(v4 + v1);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 40 * v7;
      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v20 = MEMORY[0x1E69E7D40];
    v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
    v22 = (v21)(v5);
    if (v9)
    {
      if (!v23)
      {
        goto LABEL_71;
      }

      if (v10 == v22 && v9 == v23)
      {
      }

      else
      {
        v25 = sub_1A957D3E8();

        if ((v25 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_71;
    }

    v65 = *(v4 + v1);
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = (v65 + 40 * v66);
      v69 = *(v67 - 1);
      v68 = *v67;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    v70 = (*((*v20 & *v1) + 0x70))(v22);
    if (v68)
    {
      if (v71)
      {
        if (v69 == v70 && v68 == v71)
        {

          goto LABEL_77;
        }

        v73 = sub_1A957D3E8();

        if (v73)
        {
LABEL_77:
          v47 = *(v4 + v2);
          v45 = *(v47 + 16);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v2) = v47;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v45)
            {
              goto LABEL_79;
            }

            goto LABEL_86;
          }

LABEL_85:
          v47 = sub_1A93C34A4(v47);
          *(v4 + v2) = v47;
          if (v45)
          {
LABEL_79:
            if (v45 <= *(v47 + 16))
            {
              v86 = a1;
              MEMORY[0x1AC585360]();
              if (*((*(v47 + 40 * v45 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v47 + 40 * v45 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_81:
                sub_1A957C538();
                *(v4 + v2) = v47;
                return swift_endAccess();
              }

LABEL_88:
              sub_1A957C4F8();
              goto LABEL_81;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_72:
        v74 = (*((*v20 & *v1) + 0x70))(v22);
        v76 = v75;
        v77 = v21();
        v79 = v78;
        swift_beginAccess();
        v80 = *(v4 + v2);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v2) = v80;
        if ((v81 & 1) == 0)
        {
          v80 = sub_1A93C3384(0, *(v80 + 2) + 1, 1, v80);
          *(v4 + v2) = v80;
        }

        v83 = *(v80 + 2);
        v82 = *(v80 + 3);
        if (v83 >= v82 >> 1)
        {
          v80 = sub_1A93C3384((v82 > 1), v83 + 1, 1, v80);
        }

        *(v80 + 2) = v83 + 1;
        v84 = &v80[40 * v83];
        *(v84 + 4) = v74;
        *(v84 + 5) = v76;
        *(v84 + 6) = v77;
        *(v84 + 7) = v79;
        *(v84 + 8) = MEMORY[0x1E69E7CC0];
        *(v4 + v2) = v80;
        swift_endAccess();
        goto LABEL_77;
      }
    }

    else if (!v71)
    {
      goto LABEL_77;
    }

LABEL_71:

    goto LABEL_72;
  }

  v4 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB8);
  v11(&v98);
  sub_1A93C34B8();
  sub_1A957C438();
  sub_1A957C438();
  if (v96 == v94 && v97 == v95)
  {
  }

  else
  {
    v13 = sub_1A957D3E8();

    if ((v13 & 1) == 0)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_25;
    }
  }

  v14 = (*((*v4 & *a1) + 0xE8))(v12);
  if (*(v14 + 16) && (v15 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

LABEL_25:
  (v11)(&v98, v12);
  sub_1A957C438();
  sub_1A957C438();
  if (v96 == v94 && v97 == v95)
  {
  }

  else
  {
    v27 = sub_1A957D3E8();

    if ((v27 & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_35;
    }
  }

  v28 = (*((*v4 & *a1) + 0xE8))(v26);
  if (*(v28 + 16) && (v29 = sub_1A937A490(1701667182, 0xE400000000000000), (v30 & 1) != 0))
  {
    v31 = (*(v28 + 56) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

LABEL_35:
  v34 = sub_1A93C2EDC();
  if (v34)
  {
    v34 = (*((*v4 & *a1) + 0x130))();
    if ((v36 & 1) == 0)
    {
      v37 = v34;
      v38 = v35;
      v34 = (*((*v4 & *a1) + 0x148))();
      if ((v40 & 1) == 0)
      {
        v41 = v34;
        v91 = v39;
        sub_1A937829C(&qword_1EB386CF0, &qword_1A9589298);
        v93 = v19;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A95873F0;
        *(inited + 32) = v37;
        *(inited + 40) = v38;
        *(inited + 48) = v41;
        *(inited + 56) = v91;
        swift_beginAccess();
        v43 = inited;
        v19 = v93;
        sub_1A93C3084(v43);
        v34 = swift_endAccess();
      }
    }
  }

  v44 = *v4;
  if (!(v33 | v18))
  {
    v45 = a1;
    v46 = (*((v44 & *a1) + 0x100))(v34);
    a1 = v46;
    if (v46 >> 62)
    {
      v47 = sub_1A957CE48();
      if (v47)
      {
LABEL_42:
        v48 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1AC585DE0](v48, a1);
          }

          else
          {
            if (v48 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v49 = *(a1 + 8 * v48 + 32);
          }

          v50 = v49;
          v4 = (v48 + 1);
          if (__OFADD__(v48, 1))
          {
            break;
          }

          v45 = v2;
          sub_1A93C2334(v49);

          ++v48;
          if (v4 == v47)
          {
            goto LABEL_90;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_42;
      }
    }

LABEL_90:
  }

  v51 = (*((v44 & *v2) + 0x70))(v34);
  v90 = v52;
  v92 = v51;
  v53 = (*((*v4 & *v2) + 0x88))();
  v88 = v54;
  v89 = v53;
  v55 = *((*v4 & *v2) + 0x90);

  v87 = v55;
  v55(v19, v18);
  v56 = v4;
  v57 = *((*v4 & *v2) + 0x78);
  v58 = v57(v32, v33);
  result = (*((*v56 & *a1) + 0x100))(v58);
  v60 = result;
  if (!(result >> 62))
  {
    v61 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_52;
    }

LABEL_92:

    v87(v89, v88);
    v57(v92, v90);
  }

  result = sub_1A957CE48();
  v61 = result;
  if (!result)
  {
    goto LABEL_92;
  }

LABEL_52:
  if (v61 >= 1)
  {
    for (i = 0; i != v61; ++i)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x1AC585DE0](i, v60);
      }

      else
      {
        v63 = *(v60 + 8 * i + 32);
      }

      v64 = v63;
      sub_1A93C2334(v63);
    }

    goto LABEL_92;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93C2D5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(&v14);
  v3 = v14 - 1;
  if (v3 < 0xF && ((0x45CDu >> v3) & 1) != 0)
  {
    v4 = 0x7E7Fu >> v3;
  }

  else
  {
    v5 = (*((*v1 & *v0) + 0x100))(v2);
    v6 = v5;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_19:
      v8 = sub_1A957CE48();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v8 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](i, v6);
      }

      else
      {
        if (i >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = sub_1A93C2D5C();

      if ((v12 & 1) == 0)
      {

        LOBYTE(v4) = 0;
        return v4 & 1;
      }
    }

    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

uint64_t sub_1A93C2EDC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  v1(&v11);
  sub_1A93C34B8();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {

    v5 = 1;
  }

  else
  {
    v3 = sub_1A957D3E8();

    if (v3)
    {
      v5 = 1;
    }

    else
    {
      (v1)(&v11, v4);
      sub_1A957C438();
      sub_1A957C438();
      if (v9 == v7 && v10 == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1A957D3E8();
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_1A93C3084(uint64_t result)
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

  result = sub_1A93C3280(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

id sub_1A93C3188(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A93C3234(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1A957C3B8();
  }

  __break(1u);
  return result;
}

char *sub_1A93C3280(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386CF0, &qword_1A9589298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A93C3384(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386CE0, &qword_1A95891E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A93C34B8()
{
  result = qword_1EB386CE8;
  if (!qword_1EB386CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386CE8);
  }

  return result;
}

uint64_t sub_1A93C3848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A93C3890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A93C3A6C()
{
  result = qword_1EB386CF8;
  if (!qword_1EB386CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386CF8);
  }

  return result;
}

void *sub_1A93C3AC8()
{
  v0 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v0[2] = TTSExecutor.__allocating_init()();
  v0[3] = 300000;
  v0[4] = sub_1A93CF37C(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1A93C3B54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93C3BA0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A93C3C00()
{
  swift_beginAccess();
  v1 = *(v0 + 328);
  v2 = v1;
  return v1;
}

void sub_1A93C3C44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 328);
  *(v1 + 328) = a1;
}

uint64_t sub_1A93C3CDC(const void *a1, uint64_t a2, uint64_t a3)
{
  v4[84] = v3;
  v4[83] = a3;
  v4[82] = a2;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4[85] = swift_task_alloc();
  memcpy(v4 + 2, a1, 0x138uLL);
  type metadata accessor for TTSAURenderer();
  v4[86] = sub_1A93CFF90(&qword_1EB386D00, v6, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v8 = sub_1A957C5A8();
  v4[87] = v8;
  v4[88] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A93C3DEC, v8, v7);
}

uint64_t sub_1A93C3DEC()
{
  v1 = v0[84];
  v2 = *(v1 + 344);
  if (v2)
  {
    v0[89] = v2;

    v3 = swift_task_alloc();
    v0[90] = v3;
    v4 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v3 = v0;
    v3[1] = sub_1A93C404C;
    v5 = MEMORY[0x1E69E7288];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 80, v2, v6, v4, v5);
  }

  else
  {
    v7 = v0[86];
    v8 = v0[85];
    v9 = v0[83];
    v10 = v0[82];
    sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
    swift_allocObject();
    v11 = sub_1A957BC38();
    v12 = sub_1A957C688();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v7;
    v13[4] = v1;
    memcpy(v13 + 5, v0 + 2, 0x138uLL);
    v13[44] = v10;
    v13[45] = v9;
    v13[46] = v11;
    swift_retain_n();
    sub_1A93CF590((v0 + 2), (v0 + 41));

    *(v1 + 344) = sub_1A93C4B70(0, 0, v8, &unk_1A95892E8, v13);

    v14 = v0[1];

    return v14(v11);
  }
}

uint64_t sub_1A93C404C()
{
  v1 = *v0;

  sub_1A93CF4C8(*(v1 + 640), *(v1 + 648));
  v2 = *(v1 + 704);
  v3 = *(v1 + 696);

  return MEMORY[0x1EEE6DFA0](sub_1A93C418C, v3, v2);
}

uint64_t sub_1A93C418C()
{
  v1 = v0[84];
  v2 = *(v1 + 344);
  if (v0[89])
  {
    if (v2)
    {

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      v3 = sub_1A957C728();

      if (v3)
      {
        goto LABEL_10;
      }

      v1 = v0[84];
    }

    v2 = *(v1 + 344);
    if (v2)
    {
LABEL_6:
      v0[89] = v2;

      v4 = swift_task_alloc();
      v0[90] = v4;
      v5 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v4 = v0;
      v4[1] = sub_1A93C404C;
      v6 = MEMORY[0x1E69E7288];
      v7 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA20](v0 + 80, v2, v7, v5, v6);
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

LABEL_10:
  v8 = v0[86];
  v9 = v0[85];
  v10 = v0[84];
  v11 = v0[83];
  v12 = v0[82];
  sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
  swift_allocObject();
  v13 = sub_1A957BC38();
  v14 = sub_1A957C688();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v8;
  v15[4] = v10;
  memcpy(v15 + 5, v0 + 2, 0x138uLL);
  v15[44] = v12;
  v15[45] = v11;
  v15[46] = v13;
  swift_retain_n();
  sub_1A93CF590((v0 + 2), (v0 + 41));

  v16 = sub_1A93C4B70(0, 0, v9, &unk_1A95892E8, v15);

  *(v10 + 344) = v16;

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_1A93C447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v9 = sub_1A957C5E8();
  v8[86] = v9;
  v8[87] = *(v9 - 8);
  v8[88] = swift_task_alloc();
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v10, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v12 = sub_1A957C5A8();
  v8[89] = v12;
  v8[90] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A93C45A4, v12, v11);
}

uint64_t sub_1A93C45A4(uint64_t a1, uint64_t a2)
{
  v3 = v2[82];
  TTSKickAudioComponentRegistry(a1, a2);
  memcpy(v2 + 2, v3, 0x138uLL);
  v4 = swift_task_alloc();
  v2[91] = v4;
  *v4 = v2;
  v4[1] = sub_1A93C465C;
  v5 = v2[84];
  v6 = v2[83];

  return sub_1A93C812C((v2 + 2), v6, v5);
}

uint64_t sub_1A93C465C()
{
  v2 = *v1;
  *(v2 + 736) = v0;

  if (v0)
  {
    v3 = *(v2 + 720);
    v4 = *(v2 + 712);

    return MEMORY[0x1EEE6DFA0](sub_1A93C4920, v4, v3);
  }

  else
  {
    memcpy((v2 + 328), *(v2 + 656), 0x138uLL);
    v5 = swift_task_alloc();
    *(v2 + 744) = v5;
    *v5 = v2;
    v5[1] = sub_1A93C47E4;
    v6 = *(v2 + 680);

    return sub_1A93C55C8((v2 + 328), v6);
  }
}

uint64_t sub_1A93C47E4()
{
  v2 = *v1;
  v2[94] = v0;

  if (v0)
  {
    v3 = v2[90];
    v4 = v2[89];

    return MEMORY[0x1EEE6DFA0](sub_1A93C4A48, v4, v3);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1A93C4920()
{
  v1 = *(v0 + 736);
  *(v0 + 640) = v1;
  v2 = v1;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 704);
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);

    sub_1A957BC18();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v6 = *(v0 + 648);

    sub_1A957BBF8();
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A93C4A48()
{
  v1 = *(v0 + 752);
  *(v0 + 640) = v1;
  v2 = v1;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 704);
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);

    sub_1A957BC18();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v6 = *(v0 + 648);

    sub_1A957BBF8();
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A93C4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A9391BAC(a3, v22 - v9, &qword_1EB388000, &qword_1A9587710);
  v11 = sub_1A957C688();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A937B960(v10, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A957C5A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A957C1C8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A93C4E1C()
{
  if (*(v0 + 344))
  {

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();
  }

  *(v0 + 344) = 0;
}

uint64_t TTSAURenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  TTSAURenderer.init()();
  return v0;
}

uint64_t TTSAURenderer.init()()
{
  v1 = sub_1A957CAD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_1A957CAC8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for AudioUnitCache();
  v7 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v7[2] = TTSExecutor.__allocating_init()();
  v7[3] = 300000;
  v7[4] = sub_1A93CF37C(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v7;
  *(v0 + 24) = TTSExecutor.__allocating_init()();
  sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF38();
  sub_1A957CAB8();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v1);
  *(v0 + 32) = sub_1A957CB08();
  *(v0 + 40) = 0;
  sub_1A93847E0(v12);
  memcpy((v0 + 48), v12, 0x118uLL);
  *(v0 + 328) = 0;
  if (TTSSpeechUnitTestingMode())
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  *(v0 + 336) = v8;
  *(v0 + 340) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v0 + 376) = v9;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  return v0;
}

uint64_t TTSAURenderer.deinit()
{
  v1 = *(v0 + 392);
  if (v1)
  {
    [v1 invalidate];
  }

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  sub_1A937B960(__dst, &unk_1EB387BC0, &qword_1A9587E30);

  sub_1A93CF5C8(*(v0 + 360), *(v0 + 368));

  return v0;
}

uint64_t TTSAURenderer.__deallocating_deinit()
{
  TTSAURenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A93C525C()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  sub_1A932D0E4(v1, *(v0 + 368));
  return v1;
}

uint64_t sub_1A93C52AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 360);
  v6 = *(v2 + 368);
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_1A93CF5C8(v5, v6);
}

uint64_t (*sub_1A93C5350())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 376);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93CF674(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_1A93CF6B8;
}

uint64_t sub_1A93C5404(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 376);
  os_unfair_lock_lock(v5 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v5 + 4);
  return sub_1A93CF5C8(a1, a2);
}

uint64_t (*sub_1A93C548C(uint64_t (**a1)(uint64_t a1, uint64_t a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A93C5350();
  a1[1] = v3;
  return sub_1A93C54D4;
}

uint64_t sub_1A93C54D4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(a1[2] + 376);
  if (a2)
  {
    sub_1A932D0E4(v3, v2);
    os_unfair_lock_lock(v4 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v4 + 4);
    sub_1A93CF5C8(v3, v2);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v4 + 4);
  }

  return sub_1A93CF5C8(v3, v2);
}

uint64_t sub_1A93C55C8(void *a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v5 = sub_1A957D018();
  v3[65] = v5;
  v3[66] = *(v5 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v6 = a1[1];
  v3[71] = *a1;
  v3[72] = v6;
  memcpy(v3 + 2, a1 + 2, 0x118uLL);
  v7 = a1[38];
  v3[73] = a1[37];
  v3[74] = v7;
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v8, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v9 = sub_1A957C5A8();
  v3[75] = v9;
  v3[76] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A93C5778, v9, v10);
}

uint64_t sub_1A93C5778()
{
  v48 = v0;
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 512);
  v2 = *(v1 + 40);
  *(v0 + 616) = v2;
  if (!v2)
  {
LABEL_18:

    v44 = *(v0 + 8);

    return v44();
  }

  *(v1 + 340) = 0;
  v3 = v2;
  [v3 cancelSpeechRequest];
  v4 = v3;
  [v4 maximumFramesToRender];
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  v6 = objc_allocWithZone(MEMORY[0x1E69584E8]);
  v7 = sub_1A957C0C8();
  v8 = [v6 initWithSSMLRepresentation:v7 voice:v5];
  *(v0 + 624) = v8;

  v9 = sub_1A957C0C8();
  [v8 setJobIdentifier_];

  sub_1A937829C(&qword_1EB386D80, &qword_1A95898D8);
  v10 = sub_1A94BA628();
  *(v0 + 632) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = *v1 + 424;
  v13 = *v12;
  *(v0 + 640) = *v12;
  *(v0 + 648) = v12 & 0xFFFFFFFFFFFFLL | 0xF111000000000000;
  v14 = v8;

  v13(sub_1A93D0990, v11);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v15 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  v16 = objc_allocWithZone(MEMORY[0x1E69584E8]);
  v17 = sub_1A957C0C8();
  v18 = [v16 initWithSSMLRepresentation:v17 voice:v15];

  v19 = sub_1A957C0C8();
  [v18 setJobIdentifier_];

  [v4 synthesizeSpeechRequest_];
  v20 = [v4 maximumFramesToRender];
  v21 = *(*v1 + 248);
  v22 = *v1 + 248;
  *(v0 + 656) = v21;
  *(v0 + 664) = v22 & 0xFFFFFFFFFFFFLL | 0x229C000000000000;
  v23 = v21(v20);
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = v23;
  [v23 sampleRate];
  v26 = v25;

  v27 = v26 * 0.1;
  if (COERCE__INT64(fabs(v26 * 0.1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 <= -1.0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v27 < 4294967300.0)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v27 = 2205.0;
LABEL_8:
  *(v0 + 672) = v27;
  *(v0 + 788) = 0;
  if (sub_1A957C778())
  {

    v28 = (*(v0 + 656))();
    *(v0 + 736) = v28;
    if (v28)
    {
      v29 = v28;
      v30 = *(v0 + 640);
      v31 = *(v0 + 512);
      v32 = sub_1A93CF95C(*(v0 + 632));
      v30(0, 0);
      v33 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v29 frameCapacity:0];
      *(v0 + 744) = v33;
      [v33 setFrameLength_];
      v34 = *(v31 + 340);
      v35 = v34 + 1;
      if (v34 != -1)
      {
        v36 = *(v0 + 552);
        v37 = *(v0 + 544);
        v38 = v33;
        sub_1A957B0A8();
        *(v36 + v37[5]) = v35;
        *(v36 + v37[6]) = v38;
        *(v36 + v37[7]) = v32;
        v39 = swift_task_alloc();
        *(v0 + 752) = v39;
        *v39 = v0;
        v39[1] = sub_1A93C7314;
        v40 = *(v0 + 552);

        return MEMORY[0x1EEDEE810](v40);
      }

LABEL_23:
      __break(1u);
    }

    v42 = *(v0 + 624);
    v43 = *(v0 + 616);
    sub_1A957BC18();

    goto LABEL_18;
  }

  *(v0 + 796) = 0;
  v41 = swift_task_alloc();
  *(v0 + 680) = v41;
  *v41 = v0;
  v41[1] = sub_1A93C5D54;

  return sub_1A93C7898();
}

uint64_t sub_1A93C5D54(int a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 688) = a2;
  *(v5 + 696) = v2;

  if (v2)
  {

    v6 = *(v5 + 608);
    v7 = *(v5 + 600);
    v8 = sub_1A93C7570;
  }

  else
  {
    *(v5 + 792) = a1;
    v6 = *(v5 + 608);
    v7 = *(v5 + 600);
    v8 = sub_1A93C5EB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A93C5EB8()
{
  v2 = *(v0 + 688);
  if ((*(v0 + 792) & 0x80) != 0)
  {
    [*(v0 + 616) reset];
    v6 = *(v0 + 688);
    v3 = *(v0 + 796);
    v8 = v2;
    goto LABEL_7;
  }

  v3 = *(v0 + 796);
  v4 = *(v0 + 788);
  v5 = *(v0 + 672);
  v6 = v2;
  if ((v3 & 1) != 0 || v4 >= v5)
  {
LABEL_7:
    *(v0 + 704) = v6;
    *(v0 + 797) = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v100 = v6;
    if (TTSIsBaseSystem())
    {
      goto LABEL_32;
    }

    v10 = sub_1A93C980C();
    v11 = v10;
    if (v10 >> 62)
    {
      v12 = sub_1A957CE48();
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_10:
        *(v0 + 760) = 0;
        *(v0 + 768) = 0;
        *(v0 + 776) = 0;
        if (v12 < 1)
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v1 = 0;
        v94 = v11 & 0xC000000000000001;
        v97 = v11;
        do
        {
          if (v94)
          {
            v13 = MEMORY[0x1AC585DE0](v1, v11);
          }

          else
          {
            v13 = *(v11 + 8 * v1 + 32);
          }

          v15 = v13;
          v16 = *(v0 + 512);
          ++v1;
          *(v0 + 784) = 64;
          LODWORD(v14) = *(v16 + 340);
          *(v0 + 344) = *(v0 + 776);
          *(v0 + 328) = *(v0 + 760);
          *(v0 + 296) = v14;
          *(v0 + 312) = 0;
          *(v0 + 320) = 0;
          *(v0 + 304) = 0;
          *(v0 + 352) = 1;
          v17 = [v13 AUAudioUnit];
          v18 = [v17 renderBlock];

          v19 = [v100 frameLength];
          v20 = [v100 mutableAudioBufferList];
          *(v0 + 392) = sub_1A93D0B04;
          *(v0 + 400) = v9;
          *(v0 + 360) = MEMORY[0x1E69E9820];
          *(v0 + 368) = 1107296256;
          *(v0 + 376) = sub_1A93C8064;
          *(v0 + 384) = &unk_1F1CF3E28;
          v21 = _Block_copy((v0 + 360));
          swift_retain_n();

          v18[2](v18, v0 + 784, v0 + 296, v19, 0, v20, v21);

          _Block_release(v21);
          _Block_release(v18);

          v11 = v97;
        }

        while (v12 != v1);
      }
    }

LABEL_32:

    v48 = *(v0 + 512);
    v49 = v100;
    v50 = *(v48 + 340);
    v51 = [v49 format];
    [v51 streamDescription];
    v52 = *(v0 + 432);

    v54 = v50 * v52;
    if ((v54 & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v55 = *(v0 + 632);
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      v57 = (*(*v55 + 160))(sub_1A93D0B54, v56);

      if ((v57 & 0xC000000000000001) != 0)
      {
        v58 = sub_1A957CE48();
      }

      else
      {
        v58 = *(v57 + 16);
      }

      v1 = MEMORY[0x1E69E7CC0];
      if (!v58)
      {
        v59 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }

      if (v58 < 1)
      {
        v59 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
        v59 = swift_allocObject();
        v60 = j__malloc_size(v59);
        v61 = v60 - 32;
        if (v60 < 32)
        {
          v61 = v60 - 25;
        }

        v59[2] = v58;
        v59[3] = (2 * (v61 >> 3)) | 1;
      }

      v62 = sub_1A93CF160((v0 + 448), v59 + 4, v58, v57);
      v53 = sub_1A932D088(*(v0 + 448));
      if (v62 == v58)
      {
LABEL_44:
        v63 = *(v0 + 696);
        *(v0 + 488) = v59;
        sub_1A93CCC64((v0 + 488));
        if (v63)
        {
        }

        v64 = *(v0 + 512);

        v53 = *(v0 + 488);
        v91 = v49;
        v90 = *(v64 + 340);
        if ((v53 & 0x8000000000000000) == 0 && (v53 & 0x4000000000000000) == 0)
        {
          v65 = *(v53 + 16);
          if (v65)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_62:
        v85 = v53;
        v65 = sub_1A957CE48();
        v53 = v85;
        if (v65)
        {
LABEL_51:
          v66 = v53;
          *(v0 + 496) = v1;
          sub_1A93CE79C(0, v65 & ~(v65 >> 63), 0);
          if ((v65 & 0x8000000000000000) == 0)
          {
            v67 = 0;
            v68 = v66;
            v92 = v66 & 0xC000000000000001;
            v93 = v65;
            v69 = *(v0 + 496);
            v95 = v66;
            do
            {
              if (v92)
              {
                v70 = MEMORY[0x1AC585DE0](v67, v68);
              }

              else
              {
                v70 = *(v68 + 8 * v67 + 32);
              }

              v71 = v70;
              v101 = [v70 mark];
              v99 = [v71 byteSampleOffset];
              v72 = [v71 textRange];
              aBlock = v73;
              v98 = v72;
              v74 = [v71 bookmarkName];
              v75 = sub_1A957C0F8();
              v77 = v76;

              v78 = [v71 phoneme];
              v79 = sub_1A957C0F8();
              v81 = v80;

              *(v0 + 496) = v69;
              v83 = *(v69 + 16);
              v82 = *(v69 + 24);
              if (v83 >= v82 >> 1)
              {
                sub_1A93CE79C((v82 > 1), v83 + 1, 1);
                v69 = *(v0 + 496);
              }

              ++v67;
              *(v69 + 16) = v83 + 1;
              v84 = (v69 + (v83 << 6));
              v84[4] = v101;
              v84[5] = v99;
              v84[6] = v98;
              v84[7] = aBlock;
              v84[8] = v75;
              v84[9] = v77;
              v84[10] = v79;
              v84[11] = v81;
              v68 = v95;
            }

            while (v93 != v67);

            goto LABEL_64;
          }

          goto LABEL_69;
        }

LABEL_63:

        v69 = MEMORY[0x1E69E7CC0];
LABEL_64:
        v86 = *(v0 + 560);
        v87 = *(v0 + 544);
        sub_1A957B0A8();
        *(v86 + v87[5]) = v90;
        *(v86 + v87[6]) = v91;
        *(v86 + v87[7]) = v69;
        v88 = v91;
        v89 = swift_task_alloc();
        *(v0 + 712) = v89;
        *v89 = v0;
        v89[1] = sub_1A93C68F4;
        v42 = *(v0 + 560);
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v7 = TTSSpeechUnitTestingMode();
  v6 = *(v0 + 688);
  if (v7)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v22 = sub_1A93C7644(0.001);

  if (v22)
  {
    v3 = 1;
    v6 = v22;
    goto LABEL_7;
  }

  v23 = *(v0 + 512);

  v24 = *(v23 + 336);
  v25 = *(v23 + 340);
  v26 = __CFADD__(v25, v24);
  v27 = v25 + v24;
  if (v26)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v28 = *(v0 + 788);
  *(*(v0 + 512) + 340) = v27;
  v26 = __CFADD__(v28, v24);
  v29 = v28 + v24;
  if (v26)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v0 + 788) = v29;
  if (sub_1A957C778())
  {

    v30 = (*(v0 + 656))();
    *(v0 + 736) = v30;
    if (v30)
    {
      v31 = v30;
      v32 = *(v0 + 640);
      v33 = *(v0 + 512);
      v34 = sub_1A93CF95C(*(v0 + 632));
      v32(0, 0);
      v35 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v31 frameCapacity:0];
      *(v0 + 744) = v35;
      [v35 setFrameLength_];
      v36 = *(v33 + 340);
      v37 = v36 + 1;
      if (v36 != -1)
      {
        v38 = *(v0 + 552);
        v39 = *(v0 + 544);
        v40 = v35;
        sub_1A957B0A8();
        *(v38 + v39[5]) = v37;
        *(v38 + v39[6]) = v40;
        *(v38 + v39[7]) = v34;
        v41 = swift_task_alloc();
        *(v0 + 752) = v41;
        *v41 = v0;
        v41[1] = sub_1A93C7314;
        v42 = *(v0 + 552);
LABEL_65:

        return MEMORY[0x1EEDEE810](v42);
      }

LABEL_72:
      __break(1u);
    }

    v45 = *(v0 + 624);
    v46 = *(v0 + 616);
    sub_1A957BC18();

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    *(v0 + 796) = 0;
    v43 = swift_task_alloc();
    *(v0 + 680) = v43;
    *v43 = v0;
    v43[1] = sub_1A93C5D54;

    return sub_1A93C7898();
  }
}

uint64_t sub_1A93C68F4()
{
  v1 = *v0;
  v2 = *(*v0 + 560);

  sub_1A93D0B8C(v2);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1A93C6A64, v4, v3);
}

uint64_t sub_1A93C6A64()
{
  v1 = *(v0 + 512);
  v2 = *(v1 + 336);
  v3 = *(v1 + 340);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v0 + 792);
  *(v1 + 340) = v5;
  if ((v6 & 0x80) != 0)
  {
    [*(v0 + 616) maximumFramesToRender];
    sub_1A957D468();
    v22 = swift_task_alloc();
    *(v0 + 720) = v22;
    *v22 = v0;
    v22[1] = sub_1A93C6E38;

    return sub_1A93CC26C(5000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v7 = *(v0 + 704);
    v8 = *(v0 + 688);

    if (sub_1A957C778())
    {

      v9 = (*(v0 + 656))();
      *(v0 + 736) = v9;
      if (v9)
      {
        v10 = v9;
        v11 = *(v0 + 640);
        v12 = *(v0 + 512);
        v13 = sub_1A93CF95C(*(v0 + 632));
        v11(0, 0);
        v14 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v10 frameCapacity:0];
        *(v0 + 744) = v14;
        [v14 setFrameLength_];
        v15 = *(v12 + 340);
        v16 = v15 + 1;
        if (v15 != -1)
        {
          v17 = *(v0 + 552);
          v18 = *(v0 + 544);
          v19 = v14;
          sub_1A957B0A8();
          *(v17 + v18[5]) = v16;
          *(v17 + v18[6]) = v19;
          *(v17 + v18[7]) = v13;
          v20 = swift_task_alloc();
          *(v0 + 752) = v20;
          *v20 = v0;
          v20[1] = sub_1A93C7314;
          v21 = *(v0 + 552);

          return MEMORY[0x1EEDEE810](v21);
        }

LABEL_19:
        __break(1u);
      }

      v24 = *(v0 + 624);
      v25 = *(v0 + 616);
      sub_1A957BC18();

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      *(v0 + 796) = *(v0 + 797);
      v23 = swift_task_alloc();
      *(v0 + 680) = v23;
      *v23 = v0;
      v23[1] = sub_1A93C5D54;

      return sub_1A93C7898();
    }
  }
}

uint64_t sub_1A93C6E38()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = *(v2 + 536);
    v4 = *(v2 + 528);
    v5 = *(v2 + 520);

    (*(v4 + 8))(v3, v5);
    v6 = *(v2 + 608);
    v7 = *(v2 + 600);
    v8 = sub_1A93C722C;
  }

  else
  {
    (*(*(v2 + 528) + 8))(*(v2 + 536), *(v2 + 520));
    v6 = *(v2 + 608);
    v7 = *(v2 + 600);
    v8 = sub_1A93C6FD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A93C6FD8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 616);
  [v3 maximumFramesToRender];

  v4 = (*(v0 + 656))();
  *(v0 + 736) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 640);
    v7 = *(v0 + 512);
    v8 = sub_1A93CF95C(*(v0 + 632));
    v6(0, 0);
    v9 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v5 frameCapacity:0];
    *(v0 + 744) = v9;
    [v9 setFrameLength_];
    v10 = *(v7 + 340);
    v11 = v10 + 1;
    if (v10 == -1)
    {
      __break(1u);
    }

    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = v9;
    sub_1A957B0A8();
    *(v12 + v13[5]) = v11;
    *(v12 + v13[6]) = v14;
    *(v12 + v13[7]) = v8;
    v15 = swift_task_alloc();
    *(v0 + 752) = v15;
    *v15 = v0;
    v15[1] = sub_1A93C7314;
    v16 = *(v0 + 552);

    return MEMORY[0x1EEDEE810](v16);
  }

  else
  {
    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    sub_1A957BC18();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1A93C722C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 616);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A93C7314()
{
  v1 = *v0;
  v2 = *(*v0 + 552);

  sub_1A93D0B8C(v2);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1A93C7484, v4, v3);
}

uint64_t sub_1A93C7484()
{
  v1 = *(v0 + 736);

  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  sub_1A957BC18();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A93C7570()
{
  v1 = *(v0 + 616);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_1A93C7644(float a1)
{
  v2 = v1;
  v4 = [v1 frameLength];
  v5 = [v2 format];
  v6 = [v5 channelCount];

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    v9 = v6;
    while (2)
    {
      v10 = 0;
      v11 = v7 + 1;
      while (v9 != v10)
      {
        result = TTSAudioBuffer.floatChannelData(at:)(v10);
        if (!result)
        {
          goto LABEL_21;
        }

        ++v10;
        if (fabsf(*&result[4 * v7]) > a1)
        {
          v14 = v4 - v7;
          result = [v2 format];
          if (v14 < 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
          }

          else
          {
            v15 = result;
            v13 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:result frameCapacity:v8 - v7];

            [v13 setFrameLength_];
            v16 = 0;
            while (1)
            {
              result = TTSAudioBuffer.floatChannelData(at:)(v16);
              if (!result)
              {
                break;
              }

              v17 = result;
              result = TTSAudioBuffer.floatChannelData(at:)(v16);
              if (!result)
              {
                goto LABEL_23;
              }

              v18 = &v17[4 * v7];
              if (v18 != result || &v17[4 * v8] <= result)
              {
                memmove(result, v18, 4 * v14);
              }

              if (v9 == ++v16)
              {
                return v13;
              }
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }
      }

      ++v7;
      if (v11 != v4)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

int *sub_1A93C77FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1A957B0B8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1A93C7898()
{
  v1[19] = v0;
  v2 = sub_1A957BF18();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_1A957BF48();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  type metadata accessor for TTSAURenderer();
  v1[26] = sub_1A93CFF90(&qword_1EB386D00, v4, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v6 = sub_1A957C5A8();
  v1[27] = v6;
  v1[28] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A93C7A08, v6, v5);
}

uint64_t sub_1A93C7A08()
{
  v1 = *(v0 + 152);
  v2 = v1[5];
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(*v1 + 248);
    v4 = v2;
    v5 = v3();
    *(v0 + 240) = v5;
    if (v5)
    {
      v6 = *(v0 + 152);
      *(v0 + 248) = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v5 frameCapacity:*(v6 + 336)];
      *(v0 + 272) = *(v6 + 336);
      swift_getObjectType();
      v8 = sub_1A957C5A8();

      return MEMORY[0x1EEE6DFA0](sub_1A93C7B94, v8, v7);
    }
  }

  sub_1A93D06F4();
  swift_allocError();
  *v9 = 3;
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A93C7B94()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  v6 = *(v0 + 160);
  v13 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_1A93C7E1C;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v1;
  *(v8 + 32) = v2;
  *(v8 + 40) = v7;
  *(v0 + 112) = sub_1A93D0820;
  *(v0 + 120) = v8;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A93C80E8;
  *(v0 + 104) = &unk_1F1CF3DB0;
  v9 = _Block_copy((v0 + 80));
  v10 = v3;
  v11 = v2;
  sub_1A957BF28();
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  sub_1A93CFF90(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v4, v5, v9);
  _Block_release(v9);
  (*(v13 + 8))(v5, v6);
  (*(v14 + 8))(v4, v15);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A93C7E1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 256) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = *(v2 + 216);
    v5 = *(v2 + 224);
    v6 = sub_1A93C7FE0;
  }

  else
  {
    *(v2 + 276) = *(v2 + 128);
    *(v2 + 264) = *(v2 + 136);
    v4 = *(v2 + 216);
    v5 = *(v2 + 224);
    v6 = sub_1A93C7F48;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A93C7F48()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);
  v4 = *(v0 + 264);
  v5 = *(v0 + 276);

  return v3(v5, v4);
}

uint64_t sub_1A93C7FE0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A93C8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v12 = v11(a2, a3, a4, a5, a6);

  return v12;
}

uint64_t sub_1A93C80E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1A93C812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[716] = v3;
  v4[715] = a3;
  v4[714] = a2;
  memcpy(v4 + 2, (a1 + 16), 0x118uLL);
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v5, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v6 = sub_1A957C5A8();
  v4[717] = v6;
  v4[718] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A93C8234, v6, v7);
}

uint64_t sub_1A93C8234()
{
  v40 = v0;
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 5728);
  sub_1A9387478(0, &qword_1EB386D60, 0x1E698D828);
  static AUAudioUnit.loadInProcessFallbacks()();
  v2 = *(v1 + 40);
  if (!v2)
  {
    sub_1A937B3DC(v0 + 16, v0 + 5056);
    sub_1A937B3DC(v0 + 16, v0 + 5336);
    goto LABEL_15;
  }

  if (*(v1 + 384))
  {
    v3 = *(v0 + 5712) == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v6 = *(v0 + 180);
  v5 = *(v0 + 184);
  v7 = *(v0 + 176);
  sub_1A937B3DC(v0 + 16, v0 + 296);
  sub_1A937B3DC(v0 + 16, v0 + 576);
  [v2 componentDescription];
  if (v7 != __dst[0] || v6 != __dst[1] || v5 != __dst[2] || (v4 & 1) != 0)
  {
LABEL_15:
    v11 = *(v1 + 40);
    *(v0 + 5752) = v11;
    if (v11 && (v12 = *(v0 + 5728), memcpy((v0 + 2536), (v12 + 48), 0x118uLL), memcpy((v0 + 2256), (v12 + 48), 0x118uLL), sub_1A932D058(v0 + 2256) != 1))
    {
      v16 = *(*(v0 + 5728) + 16);
      *(v0 + 5760) = v16;
      memcpy((v0 + 2816), (v0 + 2256), 0x118uLL);
      v17 = *v16 + 144;
      *(v0 + 5768) = *v17;
      *(v0 + 5776) = v17 & 0xFFFFFFFFFFFFLL | 0x476A000000000000;
      v18 = v11;
      sub_1A9391BAC(v0 + 2536, v0 + 3096, &unk_1EB387BC0, &qword_1A9587E30);
      type metadata accessor for AudioUnitCache();
      sub_1A93CFF90(&qword_1EB386D10, v19, type metadata accessor for AudioUnitCache, &unk_1A958946C);
      v21 = sub_1A957C5A8();

      return MEMORY[0x1EEE6DFA0](sub_1A93C88E8, v21, v20);
    }

    else
    {
      v13 = *(*(v0 + 5728) + 16);
      memcpy((v0 + 856), (v0 + 16), 0x118uLL);
      v37 = (*(*v13 + 128) + **(*v13 + 128));
      v14 = swift_task_alloc();
      *(v0 + 5784) = v14;
      *v14 = v0;
      v14[1] = sub_1A93C8B04;

      return v37(v0 + 856);
    }
  }

  v8 = *(v0 + 5728);
  memcpy((v0 + 3656), (v8 + 48), 0x118uLL);
  v9 = *(v0 + 3656);
  v10 = *(v0 + 3664);
  memcpy(__dst, (v8 + 64), sizeof(__dst));
  memcpy((v0 + 3392), (v8 + 64), 0x108uLL);
  *(v0 + 3376) = v9;
  *(v0 + 3384) = v10;
  if (sub_1A932D058(v0 + 3376) == 1)
  {
    *(v0 + 4496) = v9;
    *(v0 + 4504) = v10;
    memcpy((v0 + 4512), __dst, 0x108uLL);
    sub_1A9391BAC(v0 + 3656, v0 + 4776, &unk_1EB387BC0, &qword_1A9587E30);
    sub_1A937B960(v0 + 4496, &unk_1EB387BC0, &qword_1A9587E30);
    goto LABEL_15;
  }

  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  *(v0 + 3936) = v9;
  *(v0 + 3944) = v10;
  memcpy((v0 + 3952), __dst, 0x108uLL);

  sub_1A9391BAC(v0 + 3656, v0 + 4216, &unk_1EB387BC0, &qword_1A9587E30);

  sub_1A937B960(v0 + 3936, &unk_1EB387BC0, &qword_1A9587E30);
  if (v23 == v9 && v22 == v10)
  {
  }

  else
  {
    v24 = sub_1A957D3E8();

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  sub_1A937B48C(v0 + 16);
  sub_1A937B48C(v0 + 16);
  v25 = *(v0 + 5720);
  sub_1A93C9384(*(v0 + 5712));
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = sub_1A93C980C();

  v28 = sub_1A93CA998(v27, v26);

  v29 = *(v0 + 5728);
  if ((v28 & 1) == 0)
  {
    *(v29 + 400) = *(v0 + 5720);

    *(v29 + 352) = 0;
    goto LABEL_32;
  }

  if ((*(v29 + 352) & 1) == 0)
  {
LABEL_32:
    sub_1A93C984C();
  }

  v30 = *(*(v0 + 5728) + 400);
  if (v30 >> 62)
  {
    v31 = sub_1A957CE48();
    if (v31)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_35:
      if (v31 < 1)
      {
        __break(1u);
      }

      v32 = 0;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1AC585DE0](v32, v30);
        }

        else
        {
          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        ++v32;
        v35 = [v33 AUAudioUnit];
        [v35 reset];
      }

      while (v31 != v32);
    }
  }

LABEL_42:
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1A93C88E8()
{
  (*(v0 + 5768))(*(v0 + 5752), v0 + 2816);
  v1 = *(v0 + 5744);
  v2 = *(v0 + 5736);

  return MEMORY[0x1EEE6DFA0](sub_1A93C898C, v2, v1);
}

uint64_t sub_1A93C898C()
{
  v1 = v0[719];
  sub_1A937B960((v0 + 317), &unk_1EB387BC0, &qword_1A9587E30);

  v2 = *(v0[716] + 16);
  memcpy(v0 + 107, v0 + 2, 0x118uLL);
  v5 = (*(*v2 + 128) + **(*v2 + 128));
  v3 = swift_task_alloc();
  v0[723] = v3;
  *v3 = v0;
  v3[1] = sub_1A93C8B04;

  return v5(v0 + 107);
}

uint64_t sub_1A93C8B04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 5792) = v1;

  if (v1)
  {
    sub_1A937B48C((v4 + 2));
    memcpy(v4 + 142, v4 + 107, 0x118uLL);
    sub_1A937B48C((v4 + 142));
    v5 = v4[718];
    v6 = v4[717];
    v7 = sub_1A93C91FC;
  }

  else
  {
    v4[725] = a1;
    memcpy(v4 + 247, v4 + 107, 0x118uLL);
    sub_1A937B48C((v4 + 247));
    v5 = v4[718];
    v6 = v4[717];
    v7 = sub_1A93C8C94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A93C8C94()
{
  v1 = *(v0 + 5728);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 5800);

  memcpy((v0 + 1696), (v0 + 16), 0x118uLL);
  nullsub_23();
  memcpy((v0 + 1416), (v1 + 48), 0x118uLL);
  memcpy((v1 + 48), (v0 + 1696), 0x118uLL);
  sub_1A937B960(v0 + 1416, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A93C95C0();
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v0 + 5728);
    [v3 setMaximumFramesToRender_];
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v0 + 5728);
      v7 = [v5 outputBusses];
      v8 = [v7 objectAtIndexedSubscript_];

      [v8 setEnabled_];
      v9 = *(v6 + 40);
      if (v9)
      {
        v10 = *(v0 + 5728);
        [v9 setRenderingOffline_];
        v11 = *(v10 + 40);
        if (v11)
        {
          v12 = swift_allocObject();
          swift_weakInit();
          *(v0 + 5648) = sub_1A93D0748;
          *(v0 + 5656) = v12;
          *(v0 + 5616) = MEMORY[0x1E69E9820];
          *(v0 + 5624) = 1107296256;
          *(v0 + 5632) = sub_1A93C92D4;
          *(v0 + 5640) = &unk_1F1CED6A8;
          v13 = _Block_copy((v0 + 5616));
          v14 = v11;

          [v14 setSpeechSynthesisOutputMetadataBlock_];
          _Block_release(v13);
        }
      }
    }
  }

  v15 = *(v0 + 5728);
  *(v15 + 384) = 0;

  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_14;
  }

  *(v0 + 5704) = 0;
  v17 = [v16 allocateRenderResourcesAndReturnError_];
  v18 = *(v0 + 5704);
  if (!v17)
  {
    v34 = v18;
    sub_1A957AEF8();

    goto LABEL_16;
  }

  v19 = *(*(v0 + 5728) + 40);
  v20 = v18;
  if (!v19 || (v21 = [v19 outputBusses], v22 = objc_msgSend(v21, sel_objectAtIndexedSubscript_, 0), v21, v23 = objc_msgSend(v22, sel_format), v22, !v23))
  {
LABEL_14:
    sub_1A93D06F4();
    swift_allocError();
    *v33 = 0;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v24 = *(v0 + 5728);
  v25 = [v23 streamDescription];
  v43 = *v25;
  v44 = v25[1];
  v45 = *(v25 + 4);
  v26 = objc_allocWithZone(TTSAudioFormat);
  *(v0 + 5664) = v43;
  *(v0 + 5680) = v44;
  *(v0 + 5696) = v45;
  (*(*v24 + 256))([v26 initWithStreamDescription_]);

  v24[352] = 0;
  v27 = *(v0 + 5792);
  v28 = *(v0 + 5720);
  sub_1A93C9384(*(v0 + 5712));
  if (!v28)
  {
    goto LABEL_32;
  }

  v29 = sub_1A93C980C();

  v31 = sub_1A93CA998(v30, v29);

  v32 = *(v0 + 5728);
  if ((v31 & 1) == 0)
  {
    *(v32 + 400) = *(v0 + 5720);

    *(v32 + 352) = 0;
LABEL_22:
    sub_1A93C984C();
    if (!v27)
    {
      goto LABEL_23;
    }

LABEL_17:
    v35 = *(v0 + 8);
    goto LABEL_18;
  }

  if ((*(v32 + 352) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  v37 = *(*(v0 + 5728) + 400);
  if (v37 >> 62)
  {
    v38 = sub_1A957CE48();
    if (v38)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_25:
      if (v38 < 1)
      {
        __break(1u);
      }

      v39 = 0;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1AC585DE0](v39, v37);
        }

        else
        {
          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        ++v39;
        v42 = [v40 AUAudioUnit];
        [v42 reset];
      }

      while (v38 != v39);
    }
  }

LABEL_32:
  v35 = *(v0 + 8);
LABEL_18:

  return v35();
}

uint64_t sub_1A93C91FC()
{
  v1 = *(v0 + 5792);
  sub_1A93D06F4();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_1A93C92B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5 == a2;
  if (a4 != a1)
  {
    v5 = 0;
  }

  return (a3 & 0x100000000) == 0 && v5;
}

void sub_1A93C92D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
  v5 = sub_1A957C4C8();

  v6 = a3;
  v4(v5, v6);
}

void sub_1A93C9384(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 384);
  if (a1)
  {
    if (v4)
    {

      v5 = sub_1A937A354(a1, v4);

      if (v5)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  v6 = *(v2 + 40);
  if (!v6)
  {
    return;
  }

  v7 = [v6 parameterTree];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 allParameters];

  sub_1A9387478(0, &qword_1EB386D58, 0x1E698D840);
  v10 = sub_1A957C4C8();

  if (a1)
  {
    if (v10 >> 62)
    {
      v11 = sub_1A957CE48();
      if (v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_11:
        if (v11 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1AC585DE0](i, v10);
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          v15 = [v13 identifier];
          v16 = sub_1A957C0F8();
          v18 = v17;

          if (*(a1 + 16))
          {
            v19 = sub_1A937A490(v16, v18);
            v21 = v20;

            if (v21)
            {
              LODWORD(v22) = *(*(a1 + 56) + 4 * v19);
              [v14 setValue_];
            }
          }

          else
          {
          }
        }

        goto LABEL_24;
      }
    }

LABEL_24:

    *(v2 + 384) = a1;
  }
}

void sub_1A93C95C0()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return;
  }

  v15 = v1;
  if (!TTSHasRBSAssertionEntitlement(v15, v2))
  {
    goto LABEL_8;
  }

  v15 = v15;
  if (![v15 remoteProcessIdentifier] || !MEMORY[0x1E69C7648])
  {

LABEL_8:
    v14 = v15;
    goto LABEL_9;
  }

  v3 = [v15 remoteProcessIdentifier];

  v4 = [objc_opt_self() targetWithPid_];
  v5 = sub_1A957C0C8();
  v6 = sub_1A957C0C8();
  v7 = [objc_opt_self() attributeWithDomain:v5 name:v6];

  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A95892B0;
  *(v8 + 32) = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69C7540]);
  v10 = v7;
  v11 = sub_1A957C0C8();
  sub_1A9387478(0, &qword_1EB386D50, 0x1E69C7558);
  v12 = sub_1A957C4B8();

  v13 = [v9 initWithExplanation:v11 target:v4 attributes:v12];

  v14 = *(v0 + 392);
  *(v0 + 392) = v13;
LABEL_9:
}

uint64_t sub_1A93C980C()
{
  if (*(v0 + 400))
  {
    v1 = *(v0 + 400);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + 400) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1A93C984C()
{
  v2 = v1;
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = (*(*v0 + 248))();
  if (v3)
  {
    v4 = v3;
    v5 = [(SEL *)v3 avFormat];
    if (v5)
    {
      v6 = v5;
      if (*(v0 + 352))
      {
      }

      else
      {
        v7 = sub_1A93C980C();
        v8 = v7;
        if (v7 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
        {
          v49 = v0;
          v42 = v2;
          v43 = v4;
          v0 = 0;
          v47 = v8;
          v48 = v8 & 0xC000000000000001;
          v44 = v8 & 0xFFFFFFFFFFFFFF8;
          v45 = i;
          v2 = &property descriptor for TTSAXResource.footprint;
          v10 = &property descriptor for TTSAXResource.footprint;
          v4 = &property descriptor for TTSAXResource.footprint;
          v46 = v6;
          while (1)
          {
            if (v48)
            {
              v11 = MEMORY[0x1AC585DE0](v0, v8);
            }

            else
            {
              if (v0 >= *(v44 + 16))
              {
                goto LABEL_25;
              }

              v11 = *(v8 + 8 * v0 + 32);
            }

            v12 = v11;
            if (__OFADD__(v0, 1))
            {
              break;
            }

            v50 = (v0 + 1);
            v13 = [v11 AUAudioUnit];
            v14 = [v13 renderResourcesAllocated];

            if (v14)
            {
              v15 = [v12 AUAudioUnit];
              [v15 deallocateRenderResources];
            }

            v16 = [v12 AUAudioUnit];
            [v16 setRenderingOffline_];

            v17 = [v12 AUAudioUnit];
            [v17 setMaximumFramesToRender_];

            v18 = [v12 AUAudioUnit];
            v19 = [v18 v10[445]];

            v20 = v12;
            v21 = [v19 objectAtIndexedSubscript_];

            v51[0] = 0;
            v22 = v46;
            v23 = v4;
            v24 = [v21 v4[446]];

            if (!v24)
            {
              v41 = v51[0];

              sub_1A957AEF8();

              v32 = v20;
              goto LABEL_23;
            }

            v25 = v51[0];
            v26 = [v20 AUAudioUnit];
            v27 = [v26 v10[445]];

            v28 = [v27 objectAtIndexedSubscript_];
            [v28 setEnabled_];

            v29 = [v20 &off_1E7881A08 + 5];
            v30 = [v29 inputBusses];

            v31 = [v30 &selRef_xmlEscaped];
            v51[0] = 0;
            v32 = v20;
            v6 = v46;
            LODWORD(v30) = [v31 v23 + 2552];

            v33 = v51[0];
            if (!v30 || (v34 = v51[0], v35 = [v32 &off_1E7881A08 + 5], v36 = objc_msgSend(v35, sel_inputBusses), v35, v37 = objc_msgSend(v36, sel_objectAtIndexedSubscript_, 0), v36, objc_msgSend(v37, sel_setEnabled_, 1), v37, v38 = objc_msgSend(v32, &off_1E7881A08 + 5), v51[0] = 0, LODWORD(v36) = objc_msgSend(v38, sel_allocateRenderResourcesAndReturnError_, v51), v38, v33 = v51[0], !v36))
            {
              v40 = v33;

              sub_1A957AEF8();

              v22 = v46;
LABEL_23:
              swift_willThrow();

              return;
            }

            v39 = v51[0];

            ++v0;
            v8 = v47;
            v10 = &property descriptor for TTSAXResource.footprint;
            v4 = v23;
            if (v50 == v45)
            {

              v0 = v49;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_28:
        *(v0 + 352) = 1;
      }
    }

    else
    {
    }
  }
}

uint64_t static TTSAURenderer.format(forVoice:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93916A8;

  return sub_1A93CFBC0(a1);
}

uint64_t sub_1A93C9FBC(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1A93CA084;

  return sub_1A93CFBC0(v4);
}

uint64_t sub_1A93CA084(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t TTSAURenderer.SpeechBuffer.Marker.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  MEMORY[0x1AC5863C0](*v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t TTSAURenderer.SpeechBuffer.Marker.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A93CA378()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A93CA430(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  MEMORY[0x1AC5863C0](*v1);
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t sub_1A93CA4CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v2);
  MEMORY[0x1AC5863C0](v3);
  MEMORY[0x1AC5863C0](v4);
  MEMORY[0x1AC5863C0](v5);
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t TTSAURenderer.SpeechBuffer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTSAURenderer.SpeechBuffer.id.setter(uint64_t a1)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTSAURenderer.SpeechBuffer.offset.setter(int a1)
{
  result = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

id TTSAURenderer.SpeechBuffer.audio.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) + 24));

  return v1;
}

void TTSAURenderer.SpeechBuffer.audio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t TTSAURenderer.SpeechBuffer.markers.getter()
{
  type metadata accessor for TTSAURenderer.SpeechBuffer(0);
}

uint64_t TTSAURenderer.SpeechBuffer.markers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A93CA890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 88);
    for (i = (a2 + 88); (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v3 - 7), *(i - 7)), vceqq_s64(*(v3 - 5), *(i - 5))))) & 1) != 0; i += 8)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      if ((*(v3 - 3) != *(i - 3) || *(v3 - 2) != *(i - 2)) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if ((v5 != v7 || v6 != v8) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      v3 += 8;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A93CA998(unint64_t a1, unint64_t a2)
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

    v4 = sub_1A9387478(0, &qword_1EB386D70, 0x1E6958430);
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
          v15 = MEMORY[0x1AC585DE0](v12 - 4, v3);
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

        v16 = MEMORY[0x1AC585DE0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A957CC18();

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
      v18 = sub_1A957CC18();

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
    v5 = sub_1A957CE48();
  }

  result = sub_1A957CE48();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t TTSAURenderer.SpeechBuffer.hash(into:)(uint64_t a1)
{
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  v3 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  sub_1A957D528();
  sub_1A957CC28();
  v4 = *(v1 + *(v3 + 28));

  return sub_1A93CF068(a1, v4);
}

uint64_t TTSAURenderer.SpeechBuffer.hashValue.getter()
{
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  v1 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  sub_1A957D528();
  sub_1A957CC28();
  sub_1A93CF068(v3, *(v0 + *(v1 + 28)));
  return sub_1A957D548();
}

uint64_t sub_1A93CAD84(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957CC28();
  sub_1A93CF068(v4, *(v1 + *(a1 + 28)));
  return sub_1A957D548();
}

uint64_t sub_1A93CAE50(uint64_t a1, uint64_t a2)
{
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957CC28();
  v5 = *(v2 + *(a2 + 28));

  return sub_1A93CF068(a1, v5);
}

uint64_t sub_1A93CAF18(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A957B0B8();
  sub_1A93CFF90(&qword_1ED96FE78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957CC28();
  sub_1A93CF068(v5, *(v2 + *(a2 + 28)));
  return sub_1A957D548();
}

void *TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1A957B0B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v18, a3, sizeof(v18));
  if (!a5)
  {
    sub_1A957B0A8();
    a4 = sub_1A957B088();
    a5 = v16;
    (*(v13 + 8))(v15, v12);
  }

  *a6 = a1;
  a6[1] = a2;
  result = memcpy(a6 + 2, v18, 0x118uLL);
  a6[37] = a4;
  a6[38] = a5;
  return result;
}

uint64_t sub_1A93CB150(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1A93CB1E8(void *__src)
{
  v2[76] = v1;
  memcpy(v2 + 2, __src, 0x118uLL);
  type metadata accessor for AudioUnitCache();
  sub_1A93CFF90(&qword_1EB386D10, v3, type metadata accessor for AudioUnitCache, &unk_1A958946C);
  v5 = sub_1A957C5A8();
  v2[77] = v5;
  v2[78] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A93CB2B0, v5, v4);
}

uint64_t sub_1A93CB2B0()
{
  v20 = v0;
  v1 = v0[76];
  memcpy(v19, v0 + 2, sizeof(v19));
  v2 = *(*v1 + 152);
  v3 = v2(v19);
  v5 = v4;
  v6 = (*(*v1 + 104))();
  if (*(v6 + 16))
  {
    v7 = sub_1A937A490(v3, v5);
    v9 = v8;

    if (v9)
    {
      v10 = v0[76];
      v11 = *(*(v6 + 56) + 16 * v7);

      memcpy(v19, v0 + 2, sizeof(v19));
      v12 = v2(v19);
      v14 = v13;
      v15 = (*(*v10 + 120))(v0 + 72);
      sub_1A93CB6B8(0, 0, v12, v14);
      v15(v0 + 72, 0);
      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      sub_1A957C748();

      v16 = v0[1];

      return v16(v11);
    }
  }

  else
  {
  }

  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v18 = swift_task_alloc();
  v0[79] = v18;
  *v18 = v0;
  v18[1] = sub_1A93CB550;

  return CoreSynthesizer.Voice.fetchAudioUnit()();
}

uint64_t sub_1A93CB550(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v6 = *(v4 + 624);
    v7 = *(v4 + 616);

    return MEMORY[0x1EEE6DFA0](sub_1A93CB6A0, v7, v6);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t sub_1A93CB6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1A93CED3C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  else
  {
    v12 = sub_1A937A490(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v5;
      if (!v15)
      {
        sub_1A93CEEDC();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v12);

      result = sub_1A93CEB8C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1A93CB7C4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = (*(*v1 + 152))(__dst);
  v4 = v3;
  v5 = (*(*v1 + 120))(__dst);
  sub_1A93CB6B8(0, 0, v2, v4);
  return v5(__dst, 0);
}

uint64_t sub_1A93CB894(void *a1, const void *a2)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  memcpy(v25, a2, sizeof(v25));
  memcpy(v24, a2, sizeof(v24));
  v8 = (*(*v2 + 152))(v24);
  v10 = v9;
  v11 = sub_1A957C688();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v13 = sub_1A93CFF90(&qword_1EB386D10, v12, type metadata accessor for AudioUnitCache, &unk_1A958946C);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = v13;
  v14[4] = v2;
  memcpy(v14 + 5, v25, 0x118uLL);
  swift_retain_n();
  v15 = a1;
  sub_1A937B3DC(v25, v24);
  v16 = sub_1A93C4B70(0, 0, v7, &unk_1A9589310, v14);
  v17 = (*(*v2 + 120))(v24);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v19;
  *v19 = 0x8000000000000000;
  sub_1A93CED3C(v15, v16, v8, v10, isUniquelyReferenced_nonNull_native);

  *v19 = v23;
  return v17(v24, 0);
}

uint64_t sub_1A93CBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A957D018();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for AudioUnitCache();
  sub_1A93CFF90(&qword_1EB386D10, v7, type metadata accessor for AudioUnitCache, &unk_1A958946C);
  v9 = sub_1A957C5A8();
  v5[7] = v9;
  v5[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A93CBC14, v9, v8);
}

uint64_t sub_1A93CBC14(uint64_t a1)
{
  sub_1A957D468();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1A93CBCE0;

  return sub_1A93CC26C(0x43561A8829300000, 16, 0, 0, 1);
}

uint64_t sub_1A93CBCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1A93CBF20;
  }

  else
  {
    v8 = sub_1A93CBE78;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A93CBE78()
{
  v5 = v0;
  v1 = *(v0 + 16);
  memcpy(v4, *(v0 + 24), sizeof(v4));
  (*(*v1 + 136))(v4);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A93CBF20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93CBF94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A93CC01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = a3(a1, a2);
  v11 = sub_1A93CFF90(a4, v10, a5, a6);

  return TTSActor.unownedExecutor.getter(v9, v11);
}

_DWORD *sub_1A93CC09C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1A93CC0FC(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1A93CC12C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A93CC158@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1A93CC22C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1A93D11E8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A93CC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A957D008();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A93CC36C, 0, 0);
}

uint64_t sub_1A93CC36C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A957D018();
  v5 = sub_1A93CFF90(&qword_1EB385E98, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A957D448();
  sub_1A93CFF90(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A957D028();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A93CC504;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A93CC504()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93CC6C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A93CC6C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93CC72C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t sub_1A93CC814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A9382328;

  return v7();
}

uint64_t sub_1A93CC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A9391BAC(a3, v23 - v10, &qword_1EB388000, &qword_1A9587710);
  v12 = sub_1A957C688();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
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

  sub_1A957C678();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A957C5A8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A957C1C8() + 32;
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

    sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

    return v21;
  }

LABEL_8:
  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
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

uint64_t sub_1A93CCBF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93CF138(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A93CCE18(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A93CCC64(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A93CF14C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A93CCF10(v6);
  return sub_1A957CF88();
}

void *sub_1A93CCCE0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1A957CE48();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1A93CCD90(v2, 0);

    v1 = sub_1A93CF160(&v5, v3 + 4, v2, v1);
    sub_1A932D088(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1A93CCD90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A93CCE18(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A93CD258(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A93CD024(0, v2, 1, a1);
  }

  return result;
}

void sub_1A93CCF10(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A957D388();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
        v6 = sub_1A957C518();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A93CD864(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A93CD0CC(0, v2, 1, a1);
  }
}

uint64_t sub_1A93CD024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + (a3 << 6);
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 8);
      v10 = v8 - 64;
      v11 = *(v8 - 56);
      if (*v8 == 1 && *v10 == 1)
      {
        v9 = *(v8 + 16);
        v11 = *(v8 - 48);
      }

      if (v9 >= v11)
      {
LABEL_4:
        ++a3;
        v5 += 64;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(v8 + 32);
      v12 = *(v8 + 48);
      v15 = *v8;
      v14 = *(v8 + 16);
      v16 = *(v8 - 48);
      *v8 = *v10;
      *(v8 + 16) = v16;
      v17 = *(v8 - 16);
      *(v8 + 32) = *(v8 - 32);
      *(v8 + 48) = v17;
      *v10 = v15;
      *(v8 - 48) = v14;
      v8 -= 64;
      *(v10 + 32) = v13;
      *(v10 + 48) = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A93CD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v21 = a3;
    v7 = *(v4 + 8 * a3);
    v19 = v6;
    v20 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 byteSampleOffset];
      if (v11 != [v10 byteSampleOffset])
      {
        break;
      }

      v12 = [v9 mark];
      if (v12 == [v10 mark] && objc_msgSend(v9, sel_mark) == 1)
      {
        v13 = [v9 textRange];
        v14 = [v10 textRange];
LABEL_11:
        v15 = v14;

        if (v13 >= v15)
        {
          goto LABEL_4;
        }

        if (!v4)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      if (!v4)
      {
LABEL_18:
        __break(1u);
        return;
      }

LABEL_15:
      v16 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v16;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v21 + 1;
        v5 = v20 + 8;
        v6 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v13 = [v9 byteSampleOffset];
    v14 = [v10 byteSampleOffset];
    goto LABEL_11;
  }
}

uint64_t sub_1A93CD258(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v106 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_1A938911C(v11);
      v11 = result;
    }

    v101 = *(v11 + 2);
    if (v101 >= 2)
    {
      while (*a3)
      {
        v102 = *&v11[16 * v101];
        v103 = *&v11[16 * v101 + 24];
        sub_1A93CE0E0((*a3 + (v102 << 6)), (*a3 + (*&v11[16 * v101 + 16] << 6)), (*a3 + (v103 << 6)), v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A938911C(v11);
        }

        if (v101 - 2 >= *(v11 + 2))
        {
          goto LABEL_133;
        }

        v104 = &v11[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        result = sub_1A93CE710(v101 - 1);
        v101 = *(v11 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = (*a3 + (v10 << 6));
      v15 = *v13;
      v14 = v13[1];
      v16 = v13[2];
      v17 = (*a3 + (v12 << 6));
      if (v15 == 1 && *v17 == 1)
      {
        v18 = v16 < v17[2];
      }

      else
      {
        v18 = v14 < v17[1];
      }

      v19 = v18;
      if (v8 <= v12 + 2)
      {
        v20 = v12 + 2;
      }

      else
      {
        v20 = v8;
      }

      v21 = v20 - v12 - 2;
      v22 = v12 << 6;
      v23 = (*a3 + (v12 << 6) + 144);
      while (v21)
      {
        v26 = *(v23 - 1);
        v27 = *v23;
        if (*(v23 - 2) == 1 && *(v23 - 10) == 1)
        {
          v24 = v27 < v16;
        }

        else
        {
          v24 = v26 < v14;
        }

        v25 = v24;
        --v21;
        v23 += 8;
        ++v10;
        v16 = v27;
        v14 = v26;
        if (v19 != v25)
        {
          goto LABEL_26;
        }
      }

      v10 = v20;
LABEL_26:
      if (v19)
      {
        if (v10 < v12)
        {
          goto LABEL_136;
        }

        if (v12 < v10)
        {
          v28 = (v10 << 6) - 64;
          v29 = v10;
          v30 = v12;
          do
          {
            if (v30 != --v29)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v31 = (v40 + v22);
              v32 = (v40 + v28);
              v34 = v31[2];
              v33 = v31[3];
              v36 = *v31;
              v35 = v31[1];
              v37 = v32[3];
              v39 = *v32;
              v38 = v32[1];
              v31[2] = v32[2];
              v31[3] = v37;
              *v31 = v39;
              v31[1] = v38;
              *v32 = v36;
              v32[1] = v35;
              v32[2] = v34;
              v32[3] = v33;
            }

            ++v30;
            v28 -= 64;
            v22 += 64;
          }

          while (v30 < v29);
          v8 = a3[1];
        }
      }
    }

    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_135;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_137;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v10 < v12)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v56 = *(v11 + 3);
    v57 = v5 + 1;
    if (v5 >= v56 >> 1)
    {
      result = sub_1A9389130((v56 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v57;
    v58 = &v11[16 * v5];
    *(v58 + 4) = v12;
    *(v58 + 5) = v10;
    v59 = *v106;
    if (!*v106)
    {
      goto LABEL_144;
    }

    if (v5)
    {
      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v11 + 4);
          v62 = *(v11 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_76:
          if (v64)
          {
            goto LABEL_123;
          }

          v77 = &v11[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_126;
          }

          v83 = &v11[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_130;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v87 = &v11[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_90:
        if (v82)
        {
          goto LABEL_125;
        }

        v90 = &v11[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_128;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_97:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v99 = *&v11[16 * v98 + 32];
        v5 = *&v11[16 * v60 + 40];
        sub_1A93CE0E0((*a3 + (v99 << 6)), (*a3 + (*&v11[16 * v60 + 32] << 6)), (*a3 + (v5 << 6)), v59);
        if (v6)
        {
        }

        if (v5 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A938911C(v11);
        }

        if (v98 >= *(v11 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v11[16 * v98];
        *(v100 + 4) = v99;
        *(v100 + 5) = v5;
        result = sub_1A93CE710(v60);
        v57 = *(v11 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v11[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_121;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_122;
      }

      v72 = &v11[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_124;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_127;
      }

      if (v76 >= v68)
      {
        v94 = &v11[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_131;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_107;
    }
  }

  v41 = *a3;
  v42 = *a3 + (v10 << 6);
  v43 = v12 - v10;
LABEL_46:
  v44 = v43;
  v45 = v42;
  while (1)
  {
    v46 = *(v45 + 8);
    v47 = v45 - 64;
    v48 = *(v45 - 56);
    if (*v45 == 1 && *v47 == 1)
    {
      v46 = *(v45 + 16);
      v48 = *(v45 - 48);
    }

    if (v46 >= v48)
    {
LABEL_45:
      ++v10;
      v42 += 64;
      --v43;
      if (v10 != v8)
      {
        goto LABEL_46;
      }

      v10 = v8;
      goto LABEL_56;
    }

    if (!v41)
    {
      break;
    }

    v50 = *(v45 + 32);
    v49 = *(v45 + 48);
    v52 = *v45;
    v51 = *(v45 + 16);
    v53 = *(v45 - 48);
    *v45 = *v47;
    *(v45 + 16) = v53;
    v54 = *(v45 - 16);
    *(v45 + 32) = *(v45 - 32);
    *(v45 + 48) = v54;
    *v47 = v52;
    *(v45 - 48) = v51;
    v45 -= 64;
    *(v47 + 32) = v50;
    *(v47 + 48) = v49;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}