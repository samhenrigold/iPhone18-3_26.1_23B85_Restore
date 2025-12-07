uint64_t sub_1A9377AD0(uint64_t a1, uint64_t a2)
{

  TTSMarkup.SpeechDocument.init(ssml:)(a1, a2, v6);
  if (!v2)
  {
    a2 = TTSMarkupSpeech.asPlainText()()._countAndFlagsBits;
    sub_1A9377B5C(v6);
  }

  return a2;
}

id SSMLServices.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSMLServices();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SSMLServices.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SSMLServices();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A9377E18(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a3 || a4 || a5)
  {
    v27 = &type metadata for TTSMarkup.SpeechText;
    v28 = &protocol witness table for TTSMarkup.SpeechText;
    v26[0] = swift_allocObject();

    v10 = TTSMarkup.SpeechText.init(_:)(a1, a2, v26[0] + 16);
    if (a3)
    {
      [a3 floatValue];
      v12 = v11;
      sub_1A93780F4(v26, &type metadata for TTSMarkup.SpeechText);
      LOBYTE(v25[0]) = 0;
      TTSMarkupSpeech.rate(_:)(v12, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    if (a4)
    {
      [a4 floatValue];
      v14 = v13;
      v15 = v27;
      v16 = v28;
      sub_1A93780F4(v26, v27);
      static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(&v24, v14);
      sub_1A93B7BC4(&v24, v15, v16, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    if (a5)
    {
      [a5 floatValue];
      v18 = v17;
      v19 = v27;
      v20 = v28;
      sub_1A93780F4(v26, v27);
      LOBYTE(v25[0]) = 0;
      TTSMarkupSpeech.volume(_:)(v18, v19, v20, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    v21 = v27;
    v22 = v28;
    sub_1A93780F4(v26, v27);
    a1 = (v22[8])(v21, v22);
    sub_1A9378138(v26);
  }

  else
  {
  }

  return a1;
}

void *sub_1A93780F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A9378138(void *a1)
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

uint64_t CoreSynthesizer.Utterance.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreSynthesizer.Utterance.voice.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x118uLL);
  memcpy(a1, (v1 + 32), 0x118uLL);
  return sub_1A937822C(__dst, v4);
}

uint64_t sub_1A937822C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A937829C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CoreSynthesizer.Utterance.voiceSettings.setter(uint64_t a1)
{

  *(v1 + 312) = a1;
  return result;
}

uint64_t sub_1A93783B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

__n128 CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a6;
  v14 = *a7;
  v15 = *a8;
  *(a9 + 312) = 0;
  *(a9 + 16) = v13;
  *(a9 + 368) = a5;
  *(a9 + 17) = v14;
  *(a9 + 24) = v15;
  memcpy((a9 + 32), __src, 0x118uLL);
  *(a9 + 376) = a3 != 0;
  if (!a3)
  {
    a2 = sub_1A9469CB0(6);
    a3 = v16;
  }

  *a9 = a2;
  *(a9 + 8) = a3;
  v17 = *(a4 + 16);
  *(a9 + 320) = *a4;
  *(a9 + 336) = v17;
  result = *(a4 + 25);
  *(a9 + 345) = result;
  return result;
}

void *CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)@<X0>(void *__src@<X4>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a7;
  v16 = *a8;
  v17 = *a10;
  *(a9 + 312) = 0;
  *(a9 + 16) = v15;
  *(a9 + 368) = a6;
  *(a9 + 17) = v16;
  *(a9 + 24) = v17;
  result = memcpy((a9 + 32), __src, 0x118uLL);
  *(a9 + 376) = a3 != 0;
  if (!a3)
  {
    result = sub_1A9469CB0(6);
    a2 = result;
    a3 = v19;
  }

  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 320) = a4;
  *(a9 + 328) = a5;
  *(a9 + 360) = 0;
  return result;
}

uint64_t CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, void (*a8)(void *__return_ptr)@<X7>, uint64_t a9@<X8>)
{
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  a8(v26);
  v17 = v27;
  v18 = v28;
  sub_1A93780F4(v26, v27);
  TTSMarkupSpeech.ssmlTag.getter(v17, v18);
  v25 = 0;
  sub_1A9379484();
  v19 = sub_1A957C098();
  if ((v19 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v19);
    *&v24[8] = &type metadata for TTSMarkup.SpeechDocument;
    *&v24[16] = &protocol witness table for TTSMarkup.SpeechDocument;
    *&v23 = swift_allocObject();
    TTSMarkup.SpeechDocument.init(_:)(sub_1A93794D8, (v23 + 16));
    sub_1A9378138(v26);
    sub_1A932D070(&v23, v26);
  }

  sub_1A9379534(v26, &v23);
  v24[24] = 2;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    a1 = sub_1A9469CB0(6);
  }

  *a9 = a1;
  *(a9 + 8) = v20;
  *(a9 + 16) = v14;
  *(a9 + 17) = v15;
  *(a9 + 24) = v16;
  memcpy((a9 + 32), a3, 0x118uLL);
  *(a9 + 312) = 0;
  v21 = *v24;
  *(a9 + 320) = v23;
  *(a9 + 336) = v21;
  *(a9 + 345) = *&v24[9];
  *(a9 + 368) = a4;
  *(a9 + 376) = a2 != 0;
  return sub_1A9378138(v26);
}

Swift::String __swiftcall CoreSynthesizer.Utterance.asPlainText()()
{
  sub_1A9378344(v0 + 320, v9);
  if (!v10)
  {
    TTSMarkup.SpeechDocument.init(ssml:)(*&v9[0], *(&v9[0] + 1), v8);
    v4 = TTSMarkupSpeech.asPlainText()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
    sub_1A9377B5C(v8);
LABEL_6:
    v2 = object;
    v1 = countAndFlagsBits;
    goto LABEL_7;
  }

  if (v10 != 1)
  {
    sub_1A932D070(v9, v8);
    sub_1A93780F4(v8, v8[3]);
    v3 = TTSMarkupSpeech.asPlainText()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
    sub_1A9378138(v8);
    goto LABEL_6;
  }

  v2 = *(&v9[0] + 1);
  v1 = *&v9[0];
LABEL_7:
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1A937880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  v4 = sub_1A957BC88();
  v3[122] = v4;
  v3[123] = *(v4 - 8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93788E0, 0, 0);
}

uint64_t sub_1A93788E0()
{
  v1 = [*(v0 + 960) voice];
  *(v0 + 1008) = v1;
  if (v1)
  {
    v2 = *(v0 + 968);
    v3 = [v1 identifier];
    v4 = sub_1A957C0F8();
    v6 = v5;

    *(v0 + 1016) = v6;
    v23 = (*(*v2 + 360) + **(*v2 + 360));
    v7 = swift_task_alloc();
    *(v0 + 1024) = v7;
    *v7 = v0;
    v7[1] = sub_1A9378BEC;

    return v23(v0 + 296, v4, v6);
  }

  else
  {
    v9 = *(v0 + 1000);
    v10 = *(v0 + 984);
    v11 = *(v0 + 976);
    v12 = sub_1A9391D1C();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_1A957BC68();
    v14 = sub_1A957CA78();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 1000);
    v17 = *(v0 + 984);
    v18 = *(v0 + 976);
    v19 = *(v0 + 960);
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A9324000, v13, v14, "Utterance had no voice!", v20, 2u);
      MEMORY[0x1AC587CD0](v20, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v21 = *(v0 + 952);
    v21[21] = 0u;
    v21[22] = 0u;
    v21[19] = 0u;
    v21[20] = 0u;
    v21[17] = 0u;
    v21[18] = 0u;
    v21[15] = 0u;
    v21[16] = 0u;
    v21[13] = 0u;
    v21[14] = 0u;
    v21[11] = 0u;
    v21[12] = 0u;
    v21[9] = 0u;
    v21[10] = 0u;
    v21[7] = 0u;
    v21[8] = 0u;
    v21[5] = 0u;
    v21[6] = 0u;
    v21[3] = 0u;
    v21[4] = 0u;
    v21[1] = 0u;
    v21[2] = 0u;
    *v21 = 0u;
    *(v21 + 361) = 0u;

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1A9378BEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9378D04, 0, 0);
}

uint64_t sub_1A9378D04()
{
  v54 = v0;
  memcpy((v0 + 16), (v0 + 296), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    v1 = *(v0 + 1008);
    v2 = *(v0 + 992);
    v3 = *(v0 + 984);
    v4 = *(v0 + 976);
    v5 = sub_1A9391D1C();
    (*(v3 + 16))(v2, v5, v4);
    v6 = v1;
    v7 = sub_1A957BC68();
    v8 = sub_1A957CA78();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1008);
    v11 = *(v0 + 992);
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = *(v0 + 960);
    if (v9)
    {
      v49 = *(v0 + 960);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v50 = v16;
      *v15 = 136315138;
      v17 = [v10 identifier];
      v47 = v13;
      v48 = v11;
      v18 = sub_1A957C0F8();
      v20 = v19;

      v21 = sub_1A937A5C0(v18, v20, &v50);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1A9324000, v7, v8, "Could not resolve %s", v15, 0xCu);
      sub_1A9378138(v16);
      MEMORY[0x1AC587CD0](v16, -1, -1);
      MEMORY[0x1AC587CD0](v15, -1, -1);

      (*(v12 + 8))(v48, v47);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v28 = *(v0 + 952);
    v28[21] = 0u;
    v28[22] = 0u;
    v28[19] = 0u;
    v28[20] = 0u;
    v28[17] = 0u;
    v28[18] = 0u;
    v28[15] = 0u;
    v28[16] = 0u;
    v28[13] = 0u;
    v28[14] = 0u;
    v28[11] = 0u;
    v28[12] = 0u;
    v28[9] = 0u;
    v28[10] = 0u;
    v28[7] = 0u;
    v28[8] = 0u;
    v28[5] = 0u;
    v28[6] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    *v28 = 0u;
    *(v28 + 361) = 0u;
  }

  else
  {
    v22 = [*(v0 + 960) ssmlRepresentation];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1A957C0F8();
      v26 = v25;

      v27 = 0;
    }

    else
    {
      v29 = *(v0 + 960);
      v30 = [v29 speechString];
      v24 = sub_1A957C0F8();
      v26 = v31;

      [v29 rate];
      v33 = v32;
      [v29 pitchMultiplier];
      v35 = v34;
      [v29 volume];
      v51 = 0;
      v52 = 0;
      v53 = 0;
      *(v0 + 872) = v33;
      *(v0 + 876) = 0;
      *(v0 + 880) = v35;
      *(v0 + 884) = 0;
      *(v0 + 888) = v36;
      v27 = 1;
      *(v0 + 892) = 0;
    }

    v37 = *(v0 + 1008);
    v38 = *(v0 + 960);
    v39 = *(v0 + 952);
    *(v0 + 856) = v24;
    *(v0 + 864) = v26;
    *(v0 + 896) = v27;
    sub_1A9378344(v0 + 856, v0 + 904);
    memcpy((v0 + 576), (v0 + 16), 0x118uLL);
    nullsub_23();
    *(v39 + 312) = 0;
    *(v39 + 16) = 0;
    *(v39 + 368) = 10;
    *(v39 + 24) = 7;
    memcpy((v39 + 32), (v0 + 576), 0x118uLL);
    *(v39 + 376) = 0;
    v40 = sub_1A9469CB0(6);
    v42 = v41;

    sub_1A937AB68(v0 + 856);
    *v39 = v40;
    *(v39 + 8) = v42;
    v43 = *(v0 + 929);
    v44 = *(v0 + 920);
    *(v39 + 320) = *(v0 + 904);
    *(v39 + 336) = v44;
    *(v39 + 345) = v43;
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t CoreSynthesizer.Utterance.Speech.hash(into:)(uint64_t a1)
{
  sub_1A9378344(v1, v8);
  if (v9 && v9 != 1)
  {
    sub_1A932D070(v8, v5);
    v2 = v6;
    v3 = v7;
    sub_1A93780F4(v5, v6);
    (*(v3 + 64))(v2, v3);
    sub_1A9378138(v5);
  }

  sub_1A957C228();
}

uint64_t CoreSynthesizer.Utterance.Speech.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379208()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A937924C(uint64_t a1)
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A93792CC()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379340(uint64_t a1)
{
  v2 = *v1;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v2);
  return sub_1A957D548();
}

BOOL sub_1A93793DC(void *a1, uint64_t *a2)
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

void *sub_1A937940C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A9379438@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1A9379484()
{
  result = qword_1EB3867B8;
  if (!qword_1EB3867B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867B8);
  }

  return result;
}

uint64_t sub_1A93794D8@<X0>(uint64_t a1@<X8>)
{
  sub_1A9379534(*(v1 + 16), v4);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v5, v4);
  sub_1A9378138(v4);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v5, a1);
  return sub_1A9378138(v5);
}

uint64_t sub_1A9379534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1A9379624@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t CoreSynthesizer.Utterance.ssml.getter()
{
  sub_1A9378344(v0 + 320, &v8);
  if (!v10)
  {
    return v8;
  }

  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](v9);
    TTSMarkup.SpeechDocument.init(_:)(sub_1A937AE5C, v5);

    v1 = TTSMarkupContainer.ssml.getter(&type metadata for TTSMarkup.SpeechDocument, &protocol witness table for TTSMarkup.SpeechDocument);
    sub_1A9377B5C(v5);
  }

  else
  {
    sub_1A932D070(&v8, v5);
    v2 = v6;
    v3 = v7;
    sub_1A93780F4(v5, v6);
    v1 = (*(v3 + 64))(v2, v3);
    sub_1A9378138(v5);
  }

  return v1;
}

uint64_t CoreSynthesizer.Utterance.hash(into:)(uint64_t a1)
{
  sub_1A957C228();
  v11[0] = *(v1 + 16);
  sub_1A937B334();
  sub_1A957C068();
  v11[0] = *(v1 + 17);
  sub_1A937B388();
  sub_1A957C068();
  MEMORY[0x1AC5863C0](*(v1 + 24));
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(v11, (v1 + 32), sizeof(v11));
  if (sub_1A932D058(v11) != 1)
  {
    memcpy(__src, __dst, sizeof(__src));
    sub_1A957D518();
    memcpy(v8, __dst, sizeof(v8));
    sub_1A937B3DC(v8, v9);
    sub_1A937B438();
    sub_1A957C068();
    memcpy(v9, __src, sizeof(v9));
    sub_1A937B48C(v9);
    v3 = *(v1 + 312);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A957D518();
    goto LABEL_6;
  }

  sub_1A957D518();
  v3 = *(v1 + 312);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A957D518();
  sub_1A937AB98(a1, v3);
LABEL_6:
  sub_1A9378344(v1 + 320, v9);
  if (v9[40] && v9[40] != 1)
  {
    sub_1A932D070(v9, v8);
    v4 = v8[3];
    v5 = v8[4];
    sub_1A93780F4(v8, v8[3]);
    (*(v5 + 64))(v4, v5);
    sub_1A9378138(v8);
  }

  sub_1A957C228();

  MEMORY[0x1AC5863C0](*(v1 + 368));
  return sub_1A957D518();
}

uint64_t CoreSynthesizer.Utterance.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A93799F4()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379A38(uint64_t a1)
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A9379A74@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1A9379A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_1A957CC58();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9379C98, 0, 0);
}

uint64_t sub_1A9379C98()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1A957BFF8();
  (*(v2 + 16))(v1, v3, v4);
  sub_1A957C3C8();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1A957CCB8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1A9379F04;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_1A9379F04()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1A937A278;
  }

  else
  {
    v2 = sub_1A937A020;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A937A020()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1A957C578();
  sub_1A957C548();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1A957CCB8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1A9379F04;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_1A937A278()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A937A354(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A937A490(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A957C228();
  v4 = sub_1A957D548();

  return sub_1A937A508(a1, a2, v4);
}

unint64_t sub_1A937A508(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A957D3E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A937A5C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A937A68C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1A937BA14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A9378138(v11);
  return v7;
}

unint64_t sub_1A937A68C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A937A798(a5, a6);
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
    result = sub_1A957CF68();
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

void *sub_1A937A798(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A937A7E4(a1, a2);
  sub_1A937A914(&unk_1F1CF0B20);
  return v3;
}

void *sub_1A937A7E4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A937AA00(v5, 0);
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

  result = sub_1A957CF68();
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
        v10 = sub_1A957C2B8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A937AA00(v10, 0);
        result = sub_1A957CEC8();
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

uint64_t sub_1A937A914(uint64_t result)
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

  result = sub_1A937AA74(result, v11, 1, v3);
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

void *sub_1A937AA00(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB387C60, &unk_1A9587150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A937AA74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387C60, &unk_1A9587150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A937AB98(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5863C0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1A957C228();

        sub_1A957D528();
        result = sub_1A957D548();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12TextToSpeech15CoreSynthesizerC9UtteranceV0C0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A9378344(a1, v18);
  if (v19 && v19 != 1)
  {
    sub_1A932D070(v18, v15);
    v5 = v16;
    v6 = v17;
    sub_1A93780F4(v15, v16);
    v4 = (*(v6 + 64))(v5, v6);
    v3 = v7;
    sub_1A9378138(v15);
  }

  else
  {
    v3 = *(&v18[0] + 1);
    v4 = *&v18[0];
  }

  sub_1A9378344(a2, v18);
  if (v19 && v19 != 1)
  {
    sub_1A932D070(v18, v15);
    v9 = v16;
    v10 = v17;
    sub_1A93780F4(v15, v16);
    v11 = (*(v10 + 64))(v9, v10);
    v8 = v12;
    sub_1A9378138(v15);
    if (v4 != v11)
    {
LABEL_12:
      v13 = sub_1A957D3E8();
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(&v18[0] + 1);
    if (v4 != *&v18[0])
    {
      goto LABEL_12;
    }
  }

  if (v3 != v8)
  {
    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

uint64_t sub_1A937AE5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  v6 = *(v1 + 40);
  v7 = *(v1 + 44);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);

  TTSMarkup.SpeechText.init(_:)(v2, v3, v23);
  v17[0] = v23[0];
  v17[1] = v23[1];
  v18 = v24;
  LOBYTE(v20[0]) = v5;
  TTSMarkupSpeech.rate(_:)(v4 | (v5 << 32), &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v20);

  v10 = v21;
  v11 = v22;
  sub_1A93780F4(v20, v21);
  LOBYTE(v23[0]) = v7;
  TTSMarkupSpeech.pitch(_:)(v6 | (v7 << 32), v10, v11, v17);
  v12 = *(&v18 + 1);
  v13 = v19;
  sub_1A93780F4(v17, *(&v18 + 1));
  LOBYTE(v23[0]) = v9;
  TTSMarkupSpeech.volume(_:)(v8 | (v9 << 32), v12, v13, v16);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v23, v16);
  sub_1A9378138(v16);
  sub_1A9378138(v17);
  sub_1A9378138(v20);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v23, a1);
  return sub_1A9378138(v23);
}

uint64_t _s12TextToSpeech15CoreSynthesizerC9UtteranceV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1A957D3E8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17[0] = *(a1 + 16);
  v15[0] = *(a2 + 16);
  if (!static TTSSpeechQueue.QueuingBehavior.== infix(_:_:)(v17, v15))
  {
    goto LABEL_16;
  }

  v17[0] = *(a1 + 17);
  v15[0] = *(a2 + 17);
  if (!static TTSSpeechQueue.IsoPrioritizedBehavior.== infix(_:_:)(v17, v15) || a1[3] != *(a2 + 24))
  {
    goto LABEL_16;
  }

  memcpy(__dst, a1 + 4, sizeof(__dst));
  memcpy(v19, (a2 + 32), sizeof(v19));
  memcpy(v17, a1 + 4, 0x118uLL);
  memcpy(&v17[280], (a2 + 32), 0x118uLL);
  memcpy(v20, a1 + 4, sizeof(v20));
  if (sub_1A932D058(v20) != 1)
  {
    memcpy(v16, a1 + 4, sizeof(v16));
    memcpy(__src, a1 + 4, sizeof(__src));
    memcpy(v15, (a2 + 32), 0x118uLL);
    if (sub_1A932D058(v15) != 1)
    {
      memcpy(v13, (a2 + 32), sizeof(v13));
      sub_1A937822C(__dst, v12);
      sub_1A937822C(v19, v12);
      sub_1A937822C(v16, v12);
      sub_1A937B9C0();
      v7 = sub_1A957C098();
      memcpy(v11, v13, sizeof(v11));
      sub_1A937B48C(v11);
      memcpy(v12, __src, sizeof(v12));
      sub_1A937B48C(v12);
      memcpy(v13, a1 + 4, sizeof(v13));
      sub_1A937B960(v13, &unk_1EB387BC0, &qword_1A9587E30);
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    memcpy(v13, __src, sizeof(v13));
    sub_1A937822C(__dst, v12);
    sub_1A937822C(v19, v12);
    sub_1A937822C(v16, v12);
    sub_1A937B48C(v13);
LABEL_15:
    memcpy(v15, v17, sizeof(v15));
    sub_1A937B960(v15, &qword_1EB386800, &qword_1A9587148);
    goto LABEL_16;
  }

  memcpy(v15, (a2 + 32), 0x118uLL);
  if (sub_1A932D058(v15) != 1)
  {
    sub_1A937822C(__dst, v16);
    sub_1A937822C(v19, v16);
    goto LABEL_15;
  }

  memcpy(v16, a1 + 4, sizeof(v16));
  sub_1A937822C(__dst, __src);
  sub_1A937822C(v19, __src);
  sub_1A937B960(v16, &unk_1EB387BC0, &qword_1A9587E30);
LABEL_19:
  v8 = a1[39];
  v9 = *(a2 + 312);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = sub_1A937A354(v8, v9);

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  if ((_s12TextToSpeech15CoreSynthesizerC9UtteranceV0C0O2eeoiySbAG_AGtFZ_0((a1 + 40), a2 + 320) & 1) != 0 && a1[46] == *(a2 + 368))
  {
    v5 = *(a1 + 376) ^ *(a2 + 376) ^ 1;
    return v5 & 1;
  }

LABEL_16:
  v5 = 0;
  return v5 & 1;
}

unint64_t sub_1A937B334()
{
  result = qword_1EB3867C0;
  if (!qword_1EB3867C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867C0);
  }

  return result;
}

unint64_t sub_1A937B388()
{
  result = qword_1EB3867C8;
  if (!qword_1EB3867C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867C8);
  }

  return result;
}

unint64_t sub_1A937B438()
{
  result = qword_1ED96FD58;
  if (!qword_1ED96FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD58);
  }

  return result;
}

unint64_t sub_1A937B4E4()
{
  result = qword_1EB3867D0;
  if (!qword_1EB3867D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867D0);
  }

  return result;
}

unint64_t sub_1A937B53C()
{
  result = qword_1EB3867D8;
  if (!qword_1EB3867D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867D8);
  }

  return result;
}

unint64_t sub_1A937B594()
{
  result = qword_1EB3867E0;
  if (!qword_1EB3867E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867E0);
  }

  return result;
}

unint64_t sub_1A937B5EC()
{
  result = qword_1EB3867E8;
  if (!qword_1EB3867E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867E8);
  }

  return result;
}

unint64_t sub_1A937B644()
{
  result = qword_1EB3867F0;
  if (!qword_1EB3867F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867F0);
  }

  return result;
}

unint64_t sub_1A937B69C()
{
  result = qword_1EB3867F8;
  if (!qword_1EB3867F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867F8);
  }

  return result;
}

uint64_t sub_1A937B6FC(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1A937B72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
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

uint64_t sub_1A937B774(uint64_t result, int a2, int a3)
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
    *(result + 376) = 0;
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
      *(result + 377) = 1;
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

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A937B83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A937B878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A937B8C4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t _s9UtteranceV18ReplacementOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9UtteranceV18ReplacementOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A937B960(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1A937829C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A937B9C0()
{
  result = qword_1ED96FD50;
  if (!qword_1ED96FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD50);
  }

  return result;
}

uint64_t sub_1A937BA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A937BA8C()
{
  v0 = sub_1A957C0C8();
  v1 = TTSLocString(v0);

  if (v1)
  {
    v2 = sub_1A957C0F8();
    v4 = v3;

    sub_1A937829C(&qword_1EB386808, &qword_1A9587190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 30049;
    *(inited + 40) = 0xE200000000000000;
    v22[0] = xmmword_1A9587170;
    v22[1] = xmmword_1A9587180;
    v23 = sub_1A95038D4();
    v24 = v6;
    v25 = 0;
    v7 = sub_1A937BF94(&unk_1F1CF0D20, &qword_1EB386838, &qword_1A95871C0, sub_1A937C310);
    sub_1A937B960(&unk_1F1CF0D40, &qword_1EB386810, &qword_1A9587198);
    v8 = sub_1A937BF94(MEMORY[0x1E69E7CC0], &qword_1EB386830, &qword_1A95871B8, sub_1A937C310);
    sub_1A9504F44(v22, v7, v8, &unk_1F1CF0D70, &unk_1F1CF0DA0, v20);
    v9 = v20[3];
    *(inited + 80) = v20[2];
    *(inited + 96) = v9;
    *(inited + 112) = v20[4];
    *(inited + 128) = v21;
    v10 = v20[1];
    *(inited + 48) = v20[0];
    *(inited + 64) = v10;
    v11 = sub_1A937C104(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB386818, &qword_1A95871A0);
    sub_1A937829C(&qword_1EB386820, &qword_1A95871A8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A9587160;
    v13 = swift_allocObject();
    *(v13 + 16) = 0x694D797244746577;
    *(v13 + 24) = 0xE900000000000078;
    v14 = sub_1A957C0C8();
    v15 = TTSLocString(v14);

    if (v15)
    {
      v16 = sub_1A957C0F8();
      v18 = v17;

      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      *(v13 + 48) = 0x42C8000000000000;
      *(v13 + 56) = 1065353216;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v12 + 32) = v13 | 0xC000000000000000;
      v19 = sub_1A93775FC();
      sub_1A950AA6C(v2, v4, v11, v12, 0xD00000000000001DLL, 0x80000001A95C0140, 0, 0, &xmmword_1EB3916F8, v19 & 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__int128 *sub_1A937BD90()
{
  if (qword_1EB3916F0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB3916F8;
}

uint64_t static TTSAudioEffect.Reverb.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3916F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EB391718;
  v2 = xmmword_1EB391738;
  v9[3] = unk_1EB391728;
  v9[4] = xmmword_1EB391738;
  v3 = qword_1EB391748;
  v10 = qword_1EB391748;
  v4 = xmmword_1EB3916F8;
  v5 = unk_1EB391708;
  v9[0] = xmmword_1EB3916F8;
  v9[1] = unk_1EB391708;
  v9[2] = xmmword_1EB391718;
  *(a1 + 48) = unk_1EB391728;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return sub_1A937BE84(v9, v8);
}

unint64_t sub_1A937BEE0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1AC586390](*(v1 + 40), a1, 4);

  return sub_1A937BF28(v2, v3);
}

unint64_t sub_1A937BF28(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A937BF94(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void, void, void, void, unint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(a2, a3);
  v7 = sub_1A957D128();
  v8 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v9 = *(a1 + 76);
  v10 = *(a1 + 72);
  v11 = *(a1 + 77);
  result = sub_1A937BEE0(v8);
  if (v13)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v14 = (a1 + 125);
  v15 = v10 | (v9 << 32);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 4 * result) = v8;
    v16 = v7[7] + 40 * result;
    *v16 = v21;
    *(v16 + 16) = v22;
    *(v16 + 36) = BYTE4(v15);
    *(v16 + 32) = v15;
    *(v16 + 37) = v11 & 1;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    a4(v21, *(&v21 + 1), v22, *(&v22 + 1), v15);
    if (!--v4)
    {
      return v7;
    }

    v8 = *(v14 - 45);
    v21 = *(v14 - 37);
    v22 = *(v14 - 21);
    v15 = *(v14 - 5) | (*(v14 - 1) << 32);
    v11 = *v14;
    result = sub_1A937BEE0(v8);
    v14 += 48;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A937C104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB386828, &qword_1A95871B0);
  v3 = sub_1A957D128();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1A937C2A0(&v27, v26);
  result = sub_1A937A490(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1A937C2A0(&v27, v26);
    result = sub_1A937A490(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A937C2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386818, &qword_1A95871A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

TextToSpeech::SSMLTag_optional __swiftcall SSMLTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SSMLTag.rawValue.getter()
{
  result = 0x6B61657073;
  switch(*v0)
  {
    case 1:
      result = 0x73612D796173;
      break;
    case 2:
      result = 0x79646F736F7270;
      break;
    case 3:
      result = 0x6F69647561;
      break;
    case 4:
      result = 0x656D656E6F6870;
      break;
    case 5:
      result = 112;
      break;
    case 6:
      result = 115;
      break;
    case 7:
      result = 6452595;
      break;
    case 8:
      result = 0x6563696F76;
      break;
    case 9:
      result = 1735287148;
      break;
    case 0xA:
      result = 0x7369736168706D65;
      break;
    case 0xB:
      result = 0x6B61657262;
      break;
    case 0xC:
      result = 1802658157;
      break;
    case 0xD:
      result = 0x6E776F6E6B6E75;
      break;
    case 0xE:
      result = 1668506980;
      break;
    case 0xF:
      result = 0x74786554776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A937C4B0()
{
  v0 = SSMLTag.rawValue.getter();
  v2 = v1;
  if (v0 == SSMLTag.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A957D3E8();
  }

  return v5 & 1;
}

uint64_t sub_1A937C54C()
{
  sub_1A957D4F8();
  SSMLTag.rawValue.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A937C5B4(uint64_t a1)
{
  SSMLTag.rawValue.getter();
  sub_1A957C228();
}

uint64_t sub_1A937C618(uint64_t a1)
{
  sub_1A957D4F8();
  SSMLTag.rawValue.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A937C688@<X0>(uint64_t *a1@<X8>)
{
  result = SSMLTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1A937C708(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A937C764(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A937C7FC;
}

void sub_1A937C7FC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A937C878@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A937C8CC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A937C97C()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1A937C9D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1A937CB84()
{
  v1 = v0 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A937CBCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A937CD08(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A937CD5C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = v4 + *a4;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A937CE1C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A937CE60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A937CF88(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(v8);
  v16 = *a1;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
  v18 = MEMORY[0x1E69E7CC0];
  *&v15[v17] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *&v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v18;
  v19 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
  *v21 = 0;
  v21[1] = 0;
  v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = v16;
  v22 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
  *v22 = a2;
  v22[1] = a3;
  v23 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
  *v23 = a4;
  v23[1] = a5;
  swift_beginAccess();
  *v21 = a6;
  v21[1] = a7;
  *&v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = a8;
  v27.receiver = v15;
  v27.super_class = v8;
  return objc_msgSendSuper2(&v27, sel_init);
}

void sub_1A937D1D4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B58 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D274()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B60 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D314()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B68 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D3B4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B70 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D454()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B78 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D4F4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B80 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D594()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B88 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1A937D62C()
{
  if (qword_1EB391780 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7B88;
}

uint64_t sub_1A937D6F4()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A937D738(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A937D7E8()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A937D83C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A937D8F4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v3 = v2();
  v4 = (*((*v1 & *v0) + 0xA8))();
  v5 = [v4 length];

  result = v2();
  if (!__OFSUB__(v5, result))
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A937D9B8()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  v3 = (*((*v1 & *v0) + 0xC0))();
  v5 = [v2 substringWithRange_];

  if (!v5)
  {
    __break(1u);
  }
}

uint64_t sub_1A937DA74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A937DAD0(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);

  return v2(v3);
}

uint64_t sub_1A937DB90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

unint64_t sub_1A937DC44()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 != 1)
  {
    return 0;
  }

  result = (v1)(v4);
  if (result >> 62)
  {
    v8 = result;
    v9 = sub_1A957CE48();
    result = v8;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1AC585DE0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);
LABEL_9:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A937DD88(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1A937DDE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id SSMLParser.__allocating_init(ssml:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v4;
  v5 = &v3[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_1A957C0C8();

  *&v3[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = v6;
  *&v3[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SSMLParser.init(ssml:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v3;
  v4 = &v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = sub_1A957C0C8();

  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = v5;
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SSMLParser();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1A937E040()
{
  if (qword_1EB391770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v3 = qword_1EB3A7B78;
  v4 = v2();
  v5 = *((*v1 & *v0) + 0xC0);
  v6 = v5();
  v8 = [v3 firstMatchInString:v4 options:0 range:{v6, v7}];

  if (!v8)
  {
    return v5();
  }

  v9 = [v8 range];

  v10 = *((*v1 & *v0) + 0x90);
  result = v10();
  if (!__OFSUB__(v9, result))
  {
    return v10();
  }

  __break(1u);
  return result;
}

id sub_1A937E20C(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
  v7 = *a2;
  v8 = v6();
  v9 = (*((*v5 & *v3) + 0xC0))();
  v11 = [v7 firstMatchInString:v8 options:0 range:{v9, v10}];

  return v11;
}

void *static SSMLParser.parse(ssml:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SSMLParser();
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v5;
  v6 = &v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = sub_1A957C0C8();
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v17.receiver = v4;
  v17.super_class = v3;
  v7 = objc_msgSendSuper2(&v17, sel_init);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))();
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = *((*v8 & *v7) + 0xD0);
  v11 = v10(v9);
  if (v11 >> 62)
  {
    v18 = v11;
    v15 = sub_1A957CE48();

    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12)
    {
LABEL_5:
      v8 = v10(v13);

      return v8;
    }
  }

  v8 = 0x80000001A95C01E0;
  sub_1A938189C();
  swift_allocError();
  *v16 = 0xD000000000000013;
  v16[1] = 0x80000001A95C01E0;
  swift_willThrow();
LABEL_2:

  return v8;
}

void *static SSMLParser.parseRootElement(ssml:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SSMLParser();
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v5;
  v6 = &v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = sub_1A957C0C8();
  *&v4[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v18.receiver = v4;
  v18.super_class = v3;
  v7 = objc_msgSendSuper2(&v18, sel_init);
  v8 = MEMORY[0x1E69E7D40];
  v9 = v7;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))();
  if (!v2)
  {
    v11 = (*((*v8 & *v7) + 0xE8))(v10);
    if (v11)
    {
      v9 = v11;

      return v9;
    }

    sub_1A957CF08();
    v13 = MEMORY[0x1AC585140](0xD000000000000021, 0x80000001A95C0200);
    v14 = (*((*v8 & *v7) + 0xD0))(v13);
    if (v14 >> 62)
    {
      v15 = sub_1A957CE48();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v15;
    v16 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v16);

    MEMORY[0x1AC585140](0xD000000000000013, 0x80000001A95C0230);
    v9 = 0;
    sub_1A938189C();
    swift_allocError();
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v9;
}

void sub_1A937E78C()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x1E69E7D40];
  v58 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  if (!v58())
  {
    if (qword_1EB391750 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = *((*v4 & *v0) + 0xA8);
    v6 = qword_1EB3A7B58;
    v7 = v5();
    v8 = (*((*v4 & *v0) + 0xC0))();
    v10 = [v6 firstMatchInString:v7 options:0 range:{v8, v9}];

    if (v10)
    {
      v11 = v5();
      v12 = [v10 range];
      v14 = [v11 substringWithRange_];

      v15 = sub_1A957C0F8();
      v17 = v16;

      (*((*v4 & *v3) + 0xF8))(v15, v17);
      [v10 range];
      v19 = v18;
      v20 = (*((*v4 & *v3) + 0xA0))(v59);
      if (__OFADD__(*v21, v19))
      {
        __break(1u);
        return;
      }

      *v21 += v19;
      v20(v59, 0);
    }
  }

  v57 = *((*v4 & *v3) + 0xC8);
  v22 = v57();
  v23 = &selRef_taskRequestForIdentifier_;
  v24 = [v22 length];

  if (v24 >= 1)
  {
    do
    {
      v30 = v58();
      v31 = *((*v4 & *v3) + 0xA8);
      v32 = v31();
      v33 = v23;
      v34 = [v32 v23[470]];

      if (v30 == v34)
      {
        return;
      }

      if (qword_1EB391780 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = qword_1EB3A7B88;
      v36 = v31();
      v37 = (*((*v4 & *v3) + 0xC0))();
      v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

      if (v39)
      {

        return;
      }

      v40 = (*((*v4 & *v3) + 0x110))();
      if (v40)
      {

        v27 = (*((*v4 & *v3) + 0x140))();
        if (v2)
        {
          return;
        }
      }

      else
      {
        v25 = (*((*v4 & *v3) + 0x118))();
        v23 = v33;
        if (v25)
        {

          v26 = v2;
          v27 = (*((*v4 & *v3) + 0x148))();
          goto LABEL_11;
        }

        v41 = (*((*v4 & *v3) + 0x128))();
        if (v41)
        {

          v26 = v2;
          v27 = (*((*v4 & *v3) + 0x150))();
LABEL_11:
          v2 = v26;
          if (v26)
          {
            return;
          }

          goto LABEL_12;
        }

        v42 = (*((*v4 & *v3) + 0x120))();
        if (v43)
        {
          v60 = 0;
          v61 = 0xE000000000000000;
          sub_1A957CF08();

          v60 = 0xD000000000000018;
          v61 = 0x80000001A95C0250;
          v45 = (v57)(v44);
          v46 = [v45 description];
          v47 = sub_1A957C0F8();
          v49 = v48;

          MEMORY[0x1AC585140](v47, v49);

          v50 = MEMORY[0x1AC585140](32, 0xE100000000000000);
          v51 = (v57)(v50);
          v52 = [v51 v33 + 1784];

          v62 = v52;
          v53 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v53);

          v54 = v60;
          v55 = v61;
          sub_1A938189C();
          swift_allocError();
          *v56 = v54;
          v56[1] = v55;
          swift_willThrow();
          return;
        }

        v27 = (*((*v4 & *v3) + 0x158))(v42);
        if (v2)
        {
          return;
        }
      }

      v23 = v33;
LABEL_12:
      v28 = (v57)(v27);
      v29 = [v28 v23 + 1784];
    }

    while (v29 > 0);
  }
}

unint64_t sub_1A937EF18(void *a1)
{
  v11 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  if (qword_1EB391760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB3A7B68;
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A93818F0;
  *(v5 + 24) = v4;
  v10[4] = sub_1A9381ACC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A937F114;
  v10[3] = &unk_1F1CED630;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v2 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v3, v6}];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

void sub_1A937F114(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

void sub_1A937F188()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v56 = 0xD000000000000014;
    v56[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_1A957C0C8();
  v77 = [v4 rangeWithName_];
  v73 = v6;

  [v4 range];
  v7 = *((*v2 & *v1) + 0xA8);
  v8 = v7();
  sub_1A957C0F8();

  v9 = sub_1A957CA08();
  rawValue_8 = v10;
  v72 = v9;
  LOBYTE(v8) = v11;

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13 = (v7)(v12);
    v14 = [v13 substringWithRange_];

    v15 = sub_1A957C0F8();
    v69 = v16;
    rawValue = v15;

    v17 = v7();
    v18 = sub_1A957C0C8();
    v74 = v4;
    v19 = [v4 rangeWithName_];
    v21 = v20;

    v22 = [v17 substringWithRange_];
    if (!v22)
    {
      sub_1A957C0F8();
      v22 = sub_1A957C0C8();
    }

    (v7)(v23);
    v24 = sub_1A957C188();
    v26 = v25;
    v27 = sub_1A957C338();
    v28 = v27;
    v29 = (v24 >> 59) & 1;
    if ((v26 & 0x1000000000000000) == 0)
    {
      LOBYTE(v29) = 1;
    }

    if ((v27 & 0xC) == 4 << v29)
    {
      v28 = sub_1A938156C(v27, v24, v26);
      v68 = v7;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v68 = v7;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_9:

        v77 = (v28 >> 16);
        goto LABEL_10;
      }
    }

    v67 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v67 = HIBYTE(v26) & 0xF;
    }

    if (v67 >= v28 >> 16)
    {
      v77 = sub_1A957C2F8();

LABEL_10:

      v30._countAndFlagsBits = rawValue;
      v30._object = v69;
      SSMLTag.init(rawValue:)(v30);
      if (v75 == 16)
      {
        v31 = 13;
      }

      else
      {
        v31 = v75;
      }

      v32 = type metadata accessor for ParsedSSMLNode();
      v33 = objc_allocWithZone(v32);
      swift_unknownObjectWeakInit();
      v34 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
      v35 = MEMORY[0x1E69E7CC0];
      *&v33[v34] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
      *&v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v35;
      v36 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
      *v36 = 0;
      *(v36 + 1) = 0;
      v36[16] = 1;
      v37 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
      *v37 = 0;
      *(v37 + 1) = 0;
      v37[16] = 1;
      v38 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
      *v38 = 0;
      v38[1] = 0;
      v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = v31;
      v39 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
      *v39 = rawValue;
      v39[1] = v69;
      v40 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
      *v40 = v72;
      v40[1] = rawValue_8;
      swift_beginAccess();
      *v38 = 0;
      v38[1] = 0;
      *&v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = v77;
      v76.receiver = v33;
      v76.super_class = v32;
      v41 = objc_msgSendSuper2(&v76, sel_init);
      v42 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v41) + 0x138))(v72, rawValue_8, 0);
      v43 = (*((*v42 & *v1) + 0x138))(v22);

      v44 = (*((*v42 & *v41) + 0xF0))(v43);
      v45 = (*((*v42 & *v1) + 0x90))(v44);
      v46 = &selRef_needsParameterSync;
      v47 = [v74 range];
      if (__OFADD__(v47, v48))
      {
        __break(1u);
      }

      else
      {
        if (v45 >= v47 + v48)
        {
          sub_1A957CF08();

          v58 = (v68)(v57);
          v59 = [v58 description];
          v60 = sub_1A957C0F8();
          v62 = v61;

          MEMORY[0x1AC585140](v60, v62);

          sub_1A938189C();
          swift_allocError();
          *v63 = 0x7320726573726150;
          v63[1] = 0xEF2064656C6C6174;
          swift_willThrow();

          return;
        }

        v49 = [v74 range];
        v51 = __OFADD__(v49, v50);
        v52 = &v49[v50];
        if (!v51)
        {
          (*((*v42 & *v1) + 0x98))(v52);
          v53 = sub_1A957C0C8();
          [v74 rangeWithName_];
          v55 = v54;

          if (v55 >= 1)
          {
            (*((*v42 & *v1) + 0x160))(v41);

            return;
          }

          v64 = *((*v42 & *v1) + 0x88);
          v46 = v41;
          v1 = v64(&v75);
          v66 = v65;
          MEMORY[0x1AC585360]();
          if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_29:
      sub_1A957C4F8();
LABEL_21:
      sub_1A957C538();
      (v1)(&v75, 0);

      return;
    }
  }

  __break(1u);
}

void sub_1A937F984()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v33 = 0xD000000000000014;
    v33[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0x78))();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_28:
    sub_1A957CF08();

    v57 = [v4 description];
    v58 = sub_1A957C0F8();
    v60 = v59;

    MEMORY[0x1AC585140](v58, v60);

    sub_1A938189C();
    swift_allocError();
    *v61 = 0xD000000000000029;
    v61[1] = 0x80000001A95C02E0;
    swift_willThrow();

    return;
  }

  v56 = sub_1A957CE48();

  if (!v56)
  {
    goto LABEL_28;
  }

LABEL_4:
  v8 = (*((*v2 & *v1) + 0x88))(&v64);
  v9 = v7;
  if (!(*v7 >> 62))
  {
    if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!sub_1A957CE48())
  {
    goto LABEL_30;
  }

LABEL_6:
  v10 = sub_1A9381678();
  if (v10)
  {
    goto LABEL_10;
  }

  if (*v9 >> 62)
  {
    goto LABEL_33;
  }

  v11 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  while (1)
  {
    v10 = sub_1A93815E8(v13);
LABEL_10:
    v14 = v10;
    v15 = v8(&v64, 0);
    v63 = *((*v2 & *v1) + 0xA8);
    v16 = (v63)(v15);
    v17 = sub_1A957C0C8();
    v66 = v4;
    v18 = [v4 rangeWithName_];
    v20 = v19;

    v21 = [v16 substringWithRange_];
    v22 = sub_1A957C0F8();
    v8 = v23;

    v24 = *((*v2 & *v14) + 0xD0);
    if (v24() == v22 && v25 == v8)
    {
    }

    else
    {
      v27 = sub_1A957D3E8();

      if ((v27 & 1) == 0)
      {
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1A957CF08();

        v64 = 0xD000000000000017;
        v65 = 0x80000001A95C02C0;
        v29 = (v24)(v28);
        MEMORY[0x1AC585140](v29);

        MEMORY[0x1AC585140](540877088, 0xE400000000000000);
        MEMORY[0x1AC585140](v22, v8);

        v30 = v64;
        v31 = v65;
        sub_1A938189C();
        swift_allocError();
        *v32 = v30;
        v32[1] = v31;
        swift_willThrow();

        goto LABEL_26;
      }
    }

    [v66 range];
    v34 = v63();
    v2 = sub_1A957C0F8();

    v4 = sub_1A957CA08();
    v36 = v35;
    LOBYTE(v34) = v37;

    if (v34)
    {
      goto LABEL_37;
    }

    v39 = MEMORY[0x1E69E7D40];
    if (v36 >> 14 >= (*((*MEMORY[0x1E69E7D40] & *v14) + 0x118))(v38) >> 14)
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v62 = sub_1A957CE48();
    v12 = __OFSUB__(v62, 1);
    v13 = v62 - 1;
    if (v12)
    {
      goto LABEL_35;
    }
  }

  (*((*v39 & *v14) + 0x120))();
  (*((*v39 & *v14) + 0x150))(v4, v36, 0);
  v40 = (*((*v39 & *v1) + 0x160))(v14);
  v41 = (*((*v39 & *v1) + 0x90))(v40);
  v4 = &selRef_needsParameterSync;
  v8 = v66;
  v42 = [v66 range];
  if (__OFADD__(v42, v43))
  {
    goto LABEL_32;
  }

  if (v41 >= v42 + v43)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1A957CF08();

    v64 = 0x7320726573726150;
    v65 = 0xEF2064656C6C6174;
    v48 = (v63)(v47);
    v49 = [v48 description];
    v50 = sub_1A957C0F8();
    v52 = v51;

    MEMORY[0x1AC585140](v50, v52);

    v53 = v64;
    v54 = v65;
    sub_1A938189C();
    swift_allocError();
    *v55 = v53;
    v55[1] = v54;
    swift_willThrow();
  }

  else
  {
    v44 = [v8 range];
    v12 = __OFADD__(v44, v45);
    v46 = &v44[v45];
    if (v12)
    {
      goto LABEL_36;
    }

    (*((*v39 & *v1) + 0x98))(v46);
  }

LABEL_26:
}

void sub_1A9380140()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v12 = 0xD000000000000014;
    v12[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0x90))();
  v6 = [v4 range];
  if (__OFADD__(v6, v7))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= v6 + v7)
    {
      sub_1A957CF08();

      v14 = (*((*v2 & *v1) + 0xA8))(v13);
      v15 = [v14 description];
      v16 = sub_1A957C0F8();
      v18 = v17;

      MEMORY[0x1AC585140](v16, v18);

      sub_1A938189C();
      swift_allocError();
      *v19 = 0x7320726573726150;
      v19[1] = 0xEF2064656C6C6174;
      swift_willThrow();

      return;
    }

    v8 = [v4 range];
    v10 = __OFADD__(v8, v9);
    v11 = &v8[v9];
    if (!v10)
    {
      (*((*v2 & *v1) + 0x98))(v11);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1A93803A4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (v5)
  {
    v6 = 0x80000001A95C02A0;
    sub_1A938189C();
    swift_allocError();
    v8 = 0xD000000000000014;
LABEL_13:
    *v7 = v8;
    v7[1] = v6;
    return swift_willThrow();
  }

  v9 = v3;
  v10 = v4;
  v11 = *((*v2 & *v0) + 0xA8);
  v12 = v11();
  sub_1A957C0F8();

  v51 = sub_1A957CA08();
  v49 = v13;
  LOBYTE(v12) = v14;

  if (v12)
  {
    goto LABEL_20;
  }

  (v11)(result);
  v16 = sub_1A957C188();
  v18 = v17;
  result = sub_1A957C338();
  v19 = result;
  v20 = (v16 >> 59) & 1;
  if ((v18 & 0x1000000000000000) == 0)
  {
    LOBYTE(v20) = 1;
  }

  if ((result & 0xC) == 4 << v20)
  {
    result = sub_1A938156C(result, v16, v18);
    v19 = result;
    if ((v18 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v45 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v18) & 0xF;
    }

    if (v45 < v19 >> 16)
    {
      goto LABEL_21;
    }

    v48 = sub_1A957C2F8();

    goto LABEL_9;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:

  v48 = v19 >> 16;
LABEL_9:
  v46 = v11;
  v22 = (v11)(v21);
  v23 = [v22 substringWithRange_];

  v24 = sub_1A957C0F8();
  v47 = v10;
  v26 = v25;

  v27 = type metadata accessor for ParsedSSMLNode();
  v28 = objc_allocWithZone(v27);
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
  v30 = MEMORY[0x1E69E7CC0];
  *&v28[v29] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *&v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v30;
  v31 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
  *v33 = 0;
  v33[1] = 0;
  v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = 15;
  v34 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
  *v35 = v51;
  v35[1] = v49;
  swift_beginAccess();
  *v33 = v24;
  v33[1] = v26;
  *&v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = v48;
  v50.receiver = v28;
  v50.super_class = v27;
  v36 = objc_msgSendSuper2(&v50, sel_init);
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))();

  v38 = (*((*v37 & *v1) + 0x90))();
  result = v9 + v47;
  if (!__OFADD__(v9, v47))
  {
    if (v38 < result)
    {
      return (*((*v37 & *v1) + 0x98))();
    }

    sub_1A957CF08();

    v40 = (v46)(v39);
    v41 = [v40 description];
    v42 = sub_1A957C0F8();
    v44 = v43;

    MEMORY[0x1AC585140](v42, v44);

    v8 = 0x7320726573726150;
    v6 = 0xEF2064656C6C6174;
    sub_1A938189C();
    swift_allocError();
    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1A938089C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v6 = v5();
  if (v6 >> 62)
  {
    v24 = sub_1A957CE48();

    if (v24)
    {
LABEL_3:
      v9 = (v5)(v8);
      if (v9 >> 62)
      {
        v10 = sub_1A957CE48();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = (v5)(v11);
        v10 = v13;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_27;
          }

          if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v14 = *(v13 + 8 * v12 + 32);
LABEL_10:
          v15 = v14;

          v16 = (*((*v4 & *a1) + 0xA8))(v15);
          v17 = (v5)(v16);
          if (!(v17 >> 62))
          {
            v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

            v12 = v10 - 1;
            if (!__OFSUB__(v10, 1))
            {
              v19 = (v5)(v18);
              v10 = v19;
              if ((v19 & 0xC000000000000001) == 0)
              {
                if ((v12 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                  goto LABEL_32;
                }

                if (v12 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v20 = *(v19 + 8 * v12 + 32);
                  goto LABEL_17;
                }

                __break(1u);
                goto LABEL_34;
              }

LABEL_30:
              v20 = MEMORY[0x1AC585DE0](v12, v10);
LABEL_17:
              v2 = v20;

              v12 = (*((*v4 & *v2) + 0x110))(v28);
              v22 = v21;
              v23 = a1;
              MEMORY[0x1AC585360]();
              if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_18:
                sub_1A957C538();
                (v12)(v28, 0);

                return;
              }

LABEL_32:
              sub_1A957C4F8();
              goto LABEL_18;
            }

            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          v10 = sub_1A957CE48();
          goto LABEL_12;
        }
      }

      v14 = MEMORY[0x1AC585DE0](v12, v10);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v2 = (*((*v4 & *v2) + 0xE0))(v28);
  v26 = v25;
  v27 = a1;
  MEMORY[0x1AC585360]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_34:
    sub_1A957C4F8();
  }

  sub_1A957C538();
  (v2)(v28, 0);
}

id SSMLParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A9380CEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ParsedSSMLNode.description.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (!v3)
  {
    v2 = (*((*v1 & *v0) + 0xD0))(v2);
  }

  MEMORY[0x1AC585140](v2);

  v4 = MEMORY[0x1AC585140](23358, 0xE200000000000000);
  (*((*v1 & *v0) + 0x118))(v4);
  sub_1A957D058();
  MEMORY[0x1AC585140](3943982, 0xE300000000000000);
  sub_1A957D058();
  MEMORY[0x1AC585140](0, 0xE000000000000000);

  MEMORY[0x1AC585140](93, 0xE100000000000000);
  return 60;
}

uint64_t sub_1A9380FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
  v37 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A938126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A937A490(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A9380FAC(v18, a5 & 1);
      v13 = sub_1A937A490(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A93813F4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1A93813F4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

unint64_t sub_1A938156C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A957C338();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC5851A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1A93815E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1A93816DC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_1A9381678()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1A93816DC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A93816DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A957CE48();
  }

  return sub_1A957CF38();
}

unint64_t sub_1A9381740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
    v3 = sub_1A957D128();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A938189C()
{
  result = qword_1EB3868B8;
  if (!qword_1EB3868B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3868B8);
  }

  return result;
}

id sub_1A93818F0(void *a1)
{
  if (a1)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = sub_1A957C0C8();
    v7 = [a1 rangeWithName_];
    v9 = v8;

    if (v7 != sub_1A957AD68() || (v10 = sub_1A957C0C8(), v7 = [a1 rangeWithName_], v9 = v11, v10, result = sub_1A957AD68(), v7 != result))
    {
      v13 = sub_1A957C0C8();
      v14 = [a1 rangeWithName_];
      v16 = v15;

      v17 = [v4 substringWithRange_];
      v18 = sub_1A957C0F8();
      v20 = v19;

      v21 = [v4 substringWithRange_];
      v22 = sub_1A957C0F8();
      v24 = v23;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v5;
      *v5 = 0x8000000000000000;
      sub_1A938126C(v22, v24, v18, v20, isUniquelyReferenced_nonNull_native);

      *v5 = v26;
    }
  }

  else
  {

    return sub_1A957AD68();
  }

  return result;
}

uint64_t sub_1A9381AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A9381B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1A93820F4();
  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1A957CD28();
  v10 = v9;
  v11 = [v5 description];
  v12 = sub_1A957C0F8();
  v14 = v13;

  MEMORY[0x1AC585140](v12, v14);

  sub_1A937829C(&qword_1EB3868C8, qword_1A95873D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A9587160;
  *(v15 + 56) = v7;
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  sub_1A957D4C8();

  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x100))(v16);
  v18 = result;
  if (!(result >> 62))
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  result = sub_1A957CE48();
  v19 = result;
  if (!result)
  {
  }

LABEL_3:
  v20 = __OFADD__(a1, 1);
  v21 = a1 + 1;
  if (v20)
  {
    __break(1u);
  }

  else if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1AC585DE0](i, v18);
      }

      else
      {
        v23 = *(v18 + 8 * i + 32);
      }

      v27 = v23;
      sub_1A9381B0C(v21, v24, v25, v26);
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SSMLTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SSMLTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1A9381EA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A9381EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A9381EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MatchingFlags()
{
  if (!qword_1EB3868C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3868C0);
    }
  }
}

unint64_t sub_1A93820F4()
{
  result = qword_1ED96FEC0;
  if (!qword_1ED96FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FEC0);
  }

  return result;
}

uint64_t TTSMarkup.Phoneme.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Phoneme.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  v5 = v3[3];
  v7[2] = v3[2];
  v7[3] = v5;
  return (*(a3 + 56))(v7, a2);
}

{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t sub_1A9382328()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t TTSMarkup.Phoneme.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(&v46, 0, &v46, &v42);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE8);
  v7 = v6(v4);
  if (!*(v7 + 16) || (v8 = sub_1A937A490(26736, 0xE200000000000000), (v9 & 1) == 0))
  {

    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v10 = (*(v7 + 56) + 16 * v8);
  v12 = *v10;
  v11 = v10[1];

  if (*(v6(v13) + 16) && (sub_1A937A490(0x7465626168706C61, 0xE800000000000000), (v14 & 1) != 0))
  {

    v15 = sub_1A957D158();

    if (v15 == 1)
    {
      BYTE9(v43) = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  BYTE9(v43) = 0;
LABEL_10:
  *&v44 = v12;
  *(&v44 + 1) = v11;
  v18 = *((*v5 & *a1) + 0x100);
  result = (v18)(v16);
  if (result >> 62)
  {
    v25 = result;
    v26 = sub_1A957CE48();
    result = v25;
    if (v26)
    {
      goto LABEL_12;
    }

LABEL_17:

    v22 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1AC585DE0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v19 = *(result + 32);
  }

  v20 = v19;

  v22 = (*((*v5 & *v20) + 0x178))(v21);
  v24 = v23;

LABEL_18:
  *&v45 = v22;
  *(&v45 + 1) = v24;
  result = v18();
  v27 = result;
  if (result >> 62)
  {
    result = sub_1A957CE48();
    v28 = result;
    if (result)
    {
      goto LABEL_20;
    }

LABEL_25:

    v32 = 0;
    v34 = 0;
    goto LABEL_26;
  }

  v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1AC585DE0](0, v27);
    goto LABEL_23;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v27 + 32);
LABEL_23:
    v30 = v29;

    v32 = (*((*v5 & *v30) + 0x118))(v31);
    v34 = v33;

LABEL_26:
    *(&v42 + 1) = v32;
    *&v43 = v34;
    BYTE8(v43) = v28 == 0;
    v35 = v44;
    v36 = v45;
    v40[2] = v44;
    v40[3] = v45;
    v38 = v43;
    v40[0] = v42;
    v37 = v42;
    v40[1] = v43;
    a2[2] = v44;
    a2[3] = v36;
    *a2 = v37;
    a2[1] = v38;
    v41[2] = v35;
    v41[3] = v36;
    v41[0] = v37;
    v41[1] = v38;
    sub_1A938339C(v40, &v39);
    return sub_1A93833D4(v41);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t TTSMarkup.Phoneme.Alphabet.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t TTSMarkup.Phoneme.attributes.getter()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x7465626168706C61;
  *(inited + 16) = xmmword_1A95873F0;
  v6 = 6385769;
  if (v1)
  {
    v6 = 0x61706D61732D78;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  v7 = 0xE700000000000000;
  if (!v1)
  {
    v7 = 0xE300000000000000;
  }

  *(inited + 56) = v7;
  *(inited + 64) = 26736;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v2;

  v8 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t TTSMarkup.Phoneme.Alphabet.description.getter()
{
  if (*v0)
  {
    return 0x61706D61732D78;
  }

  else
  {
    return 6385769;
  }
}

uint64_t sub_1A9382994(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61706D61732D78;
  }

  else
  {
    v3 = 6385769;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x61706D61732D78;
  }

  else
  {
    v5 = 6385769;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A957D3E8();
  }

  return v8 & 1;
}

uint64_t sub_1A9382A34()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9382AB0(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9382B18(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9382B90@<X0>(char *a2@<X8>)
{
  v3 = sub_1A957D158();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1A9382BF0(uint64_t *a1@<X8>)
{
  v2 = 6385769;
  if (*v1)
  {
    v2 = 0x61706D61732D78;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A9382C28()
{
  if (*v0)
  {
    return 0x61706D61732D78;
  }

  else
  {
    return 6385769;
  }
}

uint64_t *TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  result = SpeechContext.init<each A>(_:)(&v13, 0, &v13, a6);
  *(a6 + 25) = v11;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

double TTSMarkup.Phoneme.content.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    *(a1 + 24) = &type metadata for TTSMarkup.SpeechText;
    *(a1 + 32) = &protocol witness table for TTSMarkup.SpeechText;
    v5 = swift_allocObject();
    *a1 = v5;

    return TTSMarkup.SpeechText.init(_:)(v3, v2, v5 + 16);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTSMarkup.Phoneme.startingTag.getter()
{
  v1 = v0[1];
  v16 = *v0;
  v17 = v1;
  v18 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v14 = 60;
  v15 = 0xE100000000000000;
  TTSMarkupSpeech.ssmlTag.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
  v4 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v4);

  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v2;
  v13 = v3;
  v5 = TTSMarkupSpeech.attributeText.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
  MEMORY[0x1AC585140](v5);

  if (v3)
  {
    *(&v10 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v11 = &protocol witness table for TTSMarkup.SpeechText;
    *&v9 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v2, v3, v9 + 16);
    sub_1A9383404(&v9);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    *&v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1A9383404(&v9);
    v7 = 0xE100000000000000;
    v6 = 47;
  }

  MEMORY[0x1AC585140](v6, v7);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return v14;
}

uint64_t TTSMarkup.Phoneme.endingTag.getter()
{
  v1 = *(v0 + 7);
  if (v1)
  {
    v2 = *(v0 + 6);
    *(&v7 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v8 = &protocol witness table for TTSMarkup.SpeechText;
    *&v6 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v2, v1, v6 + 16);
    sub_1A9383404(&v6);
    v11 = 12092;
    v12 = 0xE200000000000000;
    v3 = v0[1];
    v6 = *v0;
    v7 = v3;
    v8 = v0[2];
    v9 = v2;
    v10 = v1;
    TTSMarkupSpeech.ssmlTag.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
    v4 = SSMLTag.rawValue.getter();
    MEMORY[0x1AC585140](v4);

    MEMORY[0x1AC585140](62, 0xE100000000000000);
    return v11;
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1A9383404(&v6);
    return 0;
  }
}

uint64_t TTSMarkup.Phoneme.ssml.getter()
{
  v1 = *(v0 + 16);
  v17 = *v0;
  v18 = v1;
  v19 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3)
  {
    *(&v12 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v13 = &protocol witness table for TTSMarkup.SpeechText;
    *&v11 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v2, v3, v11 + 16);
    sub_1A932D070(&v11, v16);
    v4 = *(v0 + 16);
    v11 = *v0;
    v12 = v4;
    v13 = *(v0 + 32);
    v14 = v2;
    v15 = v3;
    v10 = TTSMarkup.Phoneme.startingTag.getter();
    sub_1A93780F4(v16, v16[3]);
    v5 = (off_1F1CF7288)();
    MEMORY[0x1AC585140](v5);

    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v2;
    v15 = v3;
    v6 = TTSMarkup.Phoneme.endingTag.getter();
    MEMORY[0x1AC585140](v6);

    v7 = v10;
    sub_1A9378138(v16);
  }

  else
  {
    v8 = *(v0 + 16);
    v11 = *v0;
    v12 = v8;
    v13 = *(v0 + 32);
    v14 = v2;
    v15 = 0;
    return TTSMarkup.Phoneme.startingTag.getter();
  }

  return v7;
}

unint64_t sub_1A9383174()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x7465626168706C61;
  *(inited + 16) = xmmword_1A95873F0;
  v6 = 6385769;
  if (v1)
  {
    v6 = 0x61706D61732D78;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  v7 = 0xE700000000000000;
  if (!v1)
  {
    v7 = 0xE300000000000000;
  }

  *(inited + 56) = v7;
  *(inited + 64) = 26736;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v2;

  v8 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1A938328C(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1A93832E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Phoneme.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A9383404(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9383470()
{
  result = qword_1EB3868F0;
  if (!qword_1EB3868F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3868F0);
  }

  return result;
}

__n128 sub_1A93834C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A93834D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A9383520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7PhonemeV8AlphabetOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7PhonemeV8AlphabetOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TTSAudioBuffer.frameLength.getter()
{
  v1 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTSAudioBuffer.frameLength.setter(int a1)
{
  v3 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A9383854@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 frameLength];
  *a2 = result;
  return result;
}

TTSAudioBuffer __swiftcall TTSAudioBuffer.init(format:frameCapacity:)(TTSAudioFormat *format, Swift::UInt32 frameCapacity)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:format frameCapacity:*&frameCapacity];

  v7 = v3;
  result.mutableAudioBufferList = v6;
  result.frameCapacity = v5;
  result.frameLength = HIDWORD(v5);
  result.format = v4;
  result.super.isa = v7;
  return result;
}

uint64_t TTSAudioBuffer.init(format:frameCapacity:)(void *a1, unsigned int a2)
{
  v3 = sub_1A938451C(a1, a2);

  return v3;
}

uint64_t sub_1A938398C()
{
  v1 = v0;
  v2 = sub_1A957BFB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList;
  sub_1A957BFC8();
  result = sub_1A957BFA8();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result)
    {
      v9 = 0;
      do
      {
        v10 = sub_1A957BFD8();
        v12 = v11;
        v10(v14, 0);
        if (v12)
        {
          MEMORY[0x1AC587CD0](v12, -1, -1);
        }

        ++v9;
      }

      while (v8 != v9);
    }

    MEMORY[0x1AC587CD0](*&v1[v6], -1, -1);
    (*(v3 + 8))(v5, v2);
    v13.receiver = v1;
    v13.super_class = TTSAudioBuffer;
    return objc_msgSendSuper2(&v13, sel_dealloc);
  }

  return result;
}

uint64_t TTSAudioBuffer.channelCount.getter()
{
  v1 = [v0 format];
  v2 = [v1 channelCount];

  return v2;
}

Swift::UInt32 __swiftcall TTSAudioBuffer.bufferByteSize(at:)(Swift::Int at)
{
  v2 = sub_1A957BFB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 mutableAudioBufferList];
  sub_1A957BFC8();
  v6 = sub_1A957BFD8();
  v8 = HIDWORD(v7);
  v6(v10, 0);
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t TTSAudioBuffer.floatChannelData(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A957BFB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v2 mutableAudioBufferList];
  sub_1A957BFC8();
  v7 = sub_1A957BFD8();
  v9 = v8;
  v7(v11, 0);
  if (v9)
  {
    [v2 frameCapacity];
  }

  (*(v4 + 8))(v6, v3);
  return v9;
}

void sub_1A9383E18()
{
  v1 = [v0 format];
  v2 = [v1 avFormat];

  if (v2)
  {
    v3 = [v0 mutableAudioBufferList];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_allocWithZone(MEMORY[0x1E6958438]);
    v11[4] = nullsub_23;
    v11[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A93844C8;
    v11[3] = &unk_1F1CED658;
    v6 = _Block_copy(v11);
    v7 = v0;

    v8 = [v5 initWithPCMFormat:v2 bufferListNoCopy:v3 deallocator:v6];
    _Block_release(v6);

    if (v8)
    {
      [v8 setFrameLength_];
      return;
    }

    v9 = [v7 format];
    v10 = [v9 avFormat];

    if (v10)
    {
      [objc_allocWithZone(MEMORY[0x1E6958438]) initWithPCMFormat:v10 frameCapacity:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall TTSAudioBuffer.init(avBuffer:)(TTSAudioBuffer_optional *__return_ptr retstr, AVAudioPCMBuffer avBuffer)
{
  isa = avBuffer.super.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAVBuffer_];
}

uint64_t TTSAudioBuffer.init(avBuffer:)(void *a1)
{
  v3 = sub_1A957BFB8();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = a1;
  v10 = [v9 format];
  v11 = [v10 streamDescription];

  v45 = *v11;
  v46 = v11[2];
  v12 = *(v11 + 6);
  v43 = *(v11 + 28);
  v44 = *(v11 + 9);
  v13 = objc_allocWithZone(TTSAudioFormat);
  v38 = v45;
  v39 = v46;
  v40 = v12;
  v41 = v43;
  v42 = v44;
  v14 = [v13 initWithStreamDescription_];
  v15 = [v1 initWithFormat:v14 frameCapacity:objc_msgSend(v9, sel_frameCapacity)];
  v16 = [v9 frameLength];
  v17 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  *&v15[v17] = v16;

  v18 = [v9 format];
  v19 = [v18 streamDescription];

  LODWORD(v18) = v19[3] & 0x20;
  if (((TTSAudioFormat.isInterleaved.getter() ^ (v18 >> 5)) & 1) == 0)
  {

    return 0;
  }

  [v9 mutableAudioBufferList];

  sub_1A957BFC8();
  result = sub_1A957BFC8();
  v21 = v16 * v12;
  if ((v21 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A957BFA8();
    if ((result & 0x8000000000000000) == 0)
    {
      v22 = result;
      v35 = v14;
      if (!result)
      {
LABEL_9:

        v31 = v37;
        v32 = *(v36 + 8);
        v32(v6, v37);
        v32(v8, v31);
        return v15;
      }

      v23 = 0;
      v24 = v21;
      while (1)
      {
        v25 = sub_1A957BFD8();
        v27 = v26;
        v25(&v38, 0);
        if (!v27)
        {
          break;
        }

        v28 = sub_1A957BFD8();
        v30 = v29;
        v28(&v38, 0);
        if (!v30)
        {
          break;
        }

        ++v23;
        memcpy(v30, v27, v24);
        if (v22 == v23)
        {
          goto LABEL_9;
        }
      }

      v33 = v37;
      v34 = *(v36 + 8);
      v34(v6, v37);
      v34(v8, v33);
      return 0;
    }
  }

  __break(1u);
  return result;
}

TTSAudioBuffer __swiftcall TTSAudioBuffer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.mutableAudioBufferList = v4;
  result.frameCapacity = v3;
  result.frameLength = HIDWORD(v3);
  result.format = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_1A93844C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A938451C(void *a1, unsigned int a2)
{
  v3 = v2;
  v21 = sub_1A957BFB8();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___TTSAudioBuffer_format] = a1;
  *&v3[OBJC_IVAR___TTSAudioBuffer_frameCapacity] = a2;
  *&v3[OBJC_IVAR___TTSAudioBuffer_frameLength] = 0;
  v9 = a1;
  v10 = [v9 channelCount];
  if (TTSAudioFormat.isInterleaved.getter())
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = swift_slowAlloc();
  *&v3[OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList] = v12;
  *v12 = v11;
  [v9 streamDescription];
  v13 = v23;
  v14 = v24;
  sub_1A957BFC8();
  result = TTSAudioFormat.isInterleaved.getter();
  if (result)
  {
    v16 = a2 * v13;
    if ((v16 & 0xFFFFFFFF00000000) == 0)
    {
      v17 = swift_slowAlloc();
      if (v16)
      {
        bzero(v17, v16);
      }

      sub_1A957BFE8();
LABEL_15:
      (*(v6 + 8))(v8, v21);
      v22.receiver = v3;
      v22.super_class = TTSAudioBuffer;
      return objc_msgSendSuper2(&v22, sel_init);
    }

    __break(1u);
  }

  else
  {
    v18 = a2 * (v14 >> 3);
    if ((v18 & 0xFFFFFFFF00000000) == 0)
    {
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v20 = swift_slowAlloc();
          if (v18)
          {
            bzero(v20, v18);
          }

          sub_1A957BFE8();
        }
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9384770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for TTSAudioBuffer()
{
  result = qword_1EB391B90[0];
  if (!qword_1EB391B90[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB391B90);
  }

  return result;
}

double sub_1A93847E0(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A9384810(uint64_t a1)
{
  v2 = sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1A9384878(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  nullsub_23();
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v6, &v1[v2], sizeof(v6));
  memcpy(&v1[v2], __dst, 0x118uLL);
  v3 = v1;
  sub_1A9384810(v6);

  return v3;
}

Swift::Int __swiftcall TTSAXResource.assetSize()()
{
  v1 = v0 + OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, v1, 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 188);
  }

  return result;
}

Swift::String __swiftcall TTSAXResource.localizedName(forLanguage:)(Swift::String forLanguage)
{
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    sub_1A957C0F8();
  }

  v4 = objc_opt_self();
  v5 = sub_1A957C0C8();

  v6 = sub_1A957C0C8();
  v7 = [v4 localizedName:v5 forLanguage:v6];

  v8 = sub_1A957C0F8();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall TTSAXResource.nameAndFootprint(forLanguage:)(Swift::String forLanguage)
{
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  v3 = sub_1A932D058(__dst);
  if (v3 == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    v3 = CoreSynthesizer.Voice.localizedNameWithFootprint.getter();
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void __swiftcall TTSAXResource.speechVoice()(TTSSpeechVoice *__return_ptr retstr)
{
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v10, (v1 + v2), sizeof(v10));
  if (sub_1A932D058(v10) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    memcpy(v7, __dst, sizeof(v7));
    sub_1A937B3DC(v7, v8);
    v4 = [v3 init];
    v5 = OBJC_IVAR___TTSAXResource_voice;
    swift_beginAccess();
    memcpy(v8, &v4[v5], sizeof(v8));
    memcpy(&v4[v5], __dst, 0x118uLL);
    v6 = v4;
    sub_1A9384810(v8);
  }
}

uint64_t sub_1A9385024(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, &a1[v5], sizeof(__dst));
  memcpy(__src, &a1[v5], sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v11, __src, sizeof(v11));
    v7 = a1;
    v8 = sub_1A937822C(__dst, v12);
    v10 = *a3(v8);
    v9 = CoreSynthesizer.Voice.has(_:)(&v10);

    memcpy(v12, v11, sizeof(v12));
    sub_1A937B48C(v12);
    return v9 & 1;
  }

  return result;
}

uint64_t sub_1A9385124(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(__src, (v1 + v3), sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, __dst, sizeof(v9));
    v5 = sub_1A937B3DC(v9, v10);
    v7 = *a1(v5);
    v6 = CoreSynthesizer.Voice.has(_:)(&v7);
    memcpy(v10, v8, sizeof(v10));
    sub_1A937B48C(v10);
    return v6 & 1;
  }

  return result;
}

id sub_1A9385214@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canBeDownloaded];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.contentPath.getter()
{
  v1 = *sub_1A9431E94();
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v2), sizeof(__dst));
  memcpy(__src, (v0 + v2), sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v6, __src, sizeof(v6));
    v4 = *(*v1 + 96);

    sub_1A937822C(__dst, v7);
    v5 = v4(v6);

    memcpy(v7, v6, sizeof(v7));
    sub_1A937B48C(v7);
    return v5;
  }

  return result;
}

uint64_t TTSAXResource.footprint.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return sub_1A9502D6C();
  }

  __break(1u);
  return result;
}

id sub_1A93855D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 footprint];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.gender.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return qword_1A9587570[__dst[57]];
  }

  __break(1u);
  return result;
}

id sub_1A9385718@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gender];
  *a2 = result;
  return result;
}

id sub_1A93857EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDefault];
  *a2 = result;
  return result;
}

id sub_1A938586C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isNoveltyVoice];
  *a2 = result;
  return result;
}

id sub_1A93858EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPersonalVoice];
  *a2 = result;
  return result;
}

uint64_t sub_1A938594C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = &a1[OBJC_IVAR___TTSAXResource_voice];
  swift_beginAccess();
  memcpy(__dst, v5, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = a1;
    a3();
    sub_1A9387410();
    v8 = sub_1A957CD88();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_1A9385A28(uint64_t (*a1)(void))
{
  v3 = (v1 + OBJC_IVAR___TTSAXResource_voice);
  swift_beginAccess();
  memcpy(__dst, v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1();
    sub_1A9387410();
    return sub_1A957CD88() & 1;
  }

  return result;
}

id sub_1A9385AD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSystemVoice];
  *a2 = result;
  return result;
}

uint64_t _sSo13TTSAXResourceC12TextToSpeechE15primaryLanguageSSyF_0()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v10, (v0 + v5), sizeof(v10));
  result = sub_1A932D058(v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v9, v10, sizeof(v9));
    CoreSynthesizer.Voice.primaryLocale.getter(v4);
    v7 = Locale.legacyIdentifier.getter();
    (*(v2 + 8))(v4, v1);
    return v7;
  }

  return result;
}

uint64_t TTSAXResource.languages.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    CoreSynthesizer.Voice.primaryLocales.getter(v7);
    swift_endAccess();
    v3 = v8;
    v4 = v9;
    v5 = sub_1A93780F4(v7, v8);
    v6 = sub_1A9386128(sub_1A93860EC, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
    sub_1A9378138(v7);
    return v6;
  }

  return result;
}

void sub_1A9386014(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 languages];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A957C4C8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1A938607C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1A957C4B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLanguages_];
}

uint64_t sub_1A93860EC@<X0>(uint64_t *a2@<X8>)
{
  result = Locale.legacyIdentifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A9386128(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A957C978();
  if (!v19)
  {
    return sub_1A957C508();
  }

  v41 = v19;
  v45 = sub_1A957CFE8();
  v32 = sub_1A957CFF8();
  sub_1A957CF98();
  result = sub_1A957C948();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A957C9E8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A957CFD8();
      result = sub_1A957C9A8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1A93865AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = memcpy(v9, __dst, sizeof(v9));
    a3(v7);
    v8 = sub_1A957C0C8();

    return v8;
  }

  return result;
}

uint64_t sub_1A938667C(uint64_t (*a1)(void *))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = memcpy(v6, __dst, sizeof(v6));
    return a1(v5);
  }

  return result;
}

void sub_1A9386718(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1A957C0F8();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_1A9386778(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1A957C0C8();
  [v6 *a5];
}

uint64_t TTSAXResource.name.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = __dst[5];

    return v3;
  }

  return result;
}

id sub_1A9386958@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subtype];
  *a2 = result;
  return result;
}

id TTSAXResource.synthesisProviderVoice.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v3, __dst, sizeof(v3));
    return CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  }

  return result;
}

id sub_1A9386AC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 synthesisProviderVoice];
  *a2 = result;
  return result;
}

uint64_t sub_1A9386B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return a3(result, v7, v8, v9, v10, v11, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9386BE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return a1(result, v5, v6, v7, v8, v9, v10);
  }

  __break(1u);
  return result;
}

id sub_1A9386C88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.voiceId.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = __dst[0];

    return v3;
  }

  return result;
}

void sub_1A9386E08(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A957C0F8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1A9386E78(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_1A957C0C8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t TTSAXResource.voiceType.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else if (LOBYTE(__dst[15]))
  {
    if (LOBYTE(__dst[15]) == 2)
    {
      v3 = vorrq_s8(*&__dst[11], *&__dst[13]);
      if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | __dst[10])
      {
        v4 = 0;
      }

      else
      {
        v4 = __dst[9] == 1;
      }

      if (v4)
      {
        return 6;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return qword_1A9587588[SLOBYTE(__dst[9])];
  }

  return result;
}

id sub_1A9386FD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 voiceType];
  *a2 = result;
  return result;
}

void __swiftcall TTSAXResource.init()(TTSAXResource *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id TTSAXResource.init()()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  sub_1A93847E0(__src);
  memcpy(&v0[v1], __src, 0x118uLL);
  v3.receiver = v0;
  v3.super_class = TTSAXResource;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t _sSo13TTSAXResourceC12TextToSpeechE13localizedName_11forLanguageS2S_SSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (TTSSpeechUnitTestingMode())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v7 = sub_1A957C0C8();
    v8 = [v6 initWithPath_];
  }

  else
  {
    type metadata accessor for CoreSynthesizer(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  v10 = sub_1A957C0C8();
  v11 = sub_1A957C0C8();
  v12 = sub_1A957C0C8();
  if (a4)
  {
    a4 = sub_1A957C0C8();
  }

  v13 = AXNSLocalizedStringForLocale();

  if (v13)
  {
    a1 = sub_1A957C0F8();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_1A9387410()
{
  result = qword_1ED96FFF0;
  if (!qword_1ED96FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFF0);
  }

  return result;
}

uint64_t sub_1A9387478(uint64_t a1, unint64_t *a2, void *a3)
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

float sub_1A93875C0(float a1)
{
  v1 = a1 + 1.0;
  if (v1 <= 0.05)
  {
    v1 = 0.05;
  }

  return logf(v1) / 0.057762;
}

uint64_t TransformableString.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransformableString.string.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransformableString.originalString.getter()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = (v1 + 32);
  }

  else
  {
    v2 = v0;
  }

  v3 = *v2;

  return v3;
}

uint64_t TransformableString.withTransformation<A>(_:)(void (*a1)(uint64_t, uint64_t, uint64_t (*)(), void *))
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  swift_bridgeObjectRetain_n();

  a1(v4, v3, sub_1A9387B60, v7);

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    v30 = v1;
    swift_beginAccess();
    v8 = *v6;
    v9 = *(*v6 + 2);
    if (v9)
    {
      v31 = (v5 + 16);

      v10 = &v8[48 * v9];
      do
      {
        if (v9 > *(v8 + 2))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v6 = v31;
          *v31 = v8;
          goto LABEL_34;
        }

        --v9;
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v10 -= 48;
        sub_1A93883DC(v11, v12, v4, v3);
        sub_1A9389700();
        sub_1A957C1E8();
      }

      while (v9);
      v32 = *(v8 + 2);
      if (!v32)
      {
        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A93895A4(v8);
      }

      v13 = 0;
      v14 = 0;
      v15 = (v8 + 40);
      while (v14 < *(v8 + 2))
      {
        v16 = *(v15 - 1);
        v34 = v14;
        v35 = *v15;
        v18 = v15[1];
        v17 = v15[2];
        if ((v17 & 0x1000000000000000) != 0)
        {
          v19 = sub_1A957C2B8();
          v20 = v16 + v13;
          if (__OFADD__(v16, v13))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if ((v17 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v17) & 0xF;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFFFFFFLL;
          }

          v20 = v16 + v13;
          if (__OFADD__(v16, v13))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        v21 = v18;
        v6 = (v20 + v19);
        if (__OFADD__(v20, v19))
        {
          goto LABEL_37;
        }

        if (v6 < v20)
        {
          goto LABEL_38;
        }

        v33 = v13;
        v22 = *(v8 + 2);
        swift_bridgeObjectRetain_n();
        if (v34 >= v22)
        {
          goto LABEL_39;
        }

        *(v15 - 1) = v16;
        *v15 = v35;
        v15[1] = v21;
        v15[2] = v17;
        v15[3] = v20;
        v15[4] = v6;

        if ((v17 & 0x1000000000000000) != 0)
        {
          v23 = sub_1A957C2B8();
        }

        else
        {

          if ((v17 & 0x2000000000000000) != 0)
          {
            v23 = HIBYTE(v17) & 0xF;
          }

          else
          {
            v23 = v21 & 0xFFFFFFFFFFFFLL;
          }
        }

        v24 = v35 - v16;
        if (__OFSUB__(v35, v16))
        {
          goto LABEL_40;
        }

        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_41;
        }

        v13 = v33 + v26;
        if (__OFADD__(v33, v26))
        {
          goto LABEL_42;
        }

        v14 = v34 + 1;
        v15 += 6;
        if (v32 == v34 + 1)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

LABEL_34:
    swift_endAccess();
    *v30 = v4;
    v30[1] = v3;

    v27 = v30[2];
    sub_1A937829C(&qword_1EB386930, &qword_1A95876E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    swift_beginAccess();
    *(inited + 48) = *v6;

    sub_1A938949C(inited);
    v30[2] = v27;
  }
}

uint64_t sub_1A9387B60(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v12 = (v10 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  if ((a1 & 0xC) == 4 << v12)
  {
    v5 = a2;
    v6 = v9;
    a1 = sub_1A938156C(a1, v10, v9);
    a2 = v5;
    v9 = v6;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v9 & 0x1000000000000000) == 0)
  {
LABEL_5:
    v5 = (a1 >> 16);
    goto LABEL_6;
  }

  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v9) & 0xF;
  }

  if (v15 < a1 >> 16)
  {
    goto LABEL_40;
  }

  v6 = a2;
  v16 = v9;
  v17 = sub_1A957C2F8();
  v9 = v16;
  v5 = v17;
  a2 = v6;
LABEL_6:
  if ((a2 & 0xC) == v13)
  {
    v13 = v9;
    v18 = sub_1A938156C(a2, v10, v9);
    v9 = v13;
    a2 = v18;
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v9 & 0x1000000000000000) == 0)
  {
LABEL_8:
    v14 = a2 >> 16;
    goto LABEL_19;
  }

  v19 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v9) & 0xF;
  }

  if (v19 >= a2 >> 16)
  {
    v14 = sub_1A957C2F8();
LABEL_19:
    if (v14 < v5)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v13 = *(v11 + 16);
      v6 = *(v13 + 16);
      if (v6)
      {
        v20 = (v13 + 40);
        v21 = *(v13 + 16);
        do
        {
          if (v5 != v14)
          {
            v22 = *(v20 - 1);
            v23 = v5 < *v20 && v22 < v14;
            if (v23 && v22 != *v20)
            {
              return 0;
            }
          }

          v20 += 6;
        }

        while (--v21);
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 16) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_33:
        v28 = *(v13 + 16);
        v27 = *(v13 + 24);
        if (v28 >= v27 >> 1)
        {
          v13 = sub_1A9389234((v27 > 1), v28 + 1, 1, v13);
        }

        *(v13 + 16) = v28 + 1;
        v29 = (v13 + 48 * v28);
        *(v29 + 4) = v5;
        *(v29 + 5) = v14;
        *(v29 + 6) = a3;
        *(v29 + 7) = a4;
        *(v29 + 8) = v5;
        *(v29 + 9) = v14;
        *(v11 + 16) = v13;
        swift_endAccess();
        v32 = v13;
        swift_bridgeObjectRetain_n();
        sub_1A9388798(&v32);

        v30 = v32;
        v25 = 1;
        swift_beginAccess();
        *(v11 + 16) = v30;

        return v25;
      }
    }

    v13 = sub_1A9389234(0, v6 + 1, 1, v13);
    *(v11 + 16) = v13;
    goto LABEL_33;
  }

  __break(1u);
LABEL_40:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t TransformableString.translate(_:)(unint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = sub_1A9387E88(a1, a2, v3, v4);
  v8 = sub_1A938800C(v6, v7, v5, v3, v4);
  v12 = sub_1A93883DC(v10, v11, v8, v9);

  return v12;
}

unint64_t sub_1A9387E88(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a4 & 0x1000000000000000) == 0 || (a3 & 0x800000000000000) != 0;
  v8 = (v6 << 16) | 0xB;
  v9 = 4 * v6;
  if (v7)
  {
    v10 = (v6 << 16) | 7;
  }

  else
  {
    v10 = (v6 << 16) | 0xB;
  }

  if (v9 >= result >> 14)
  {
    v10 = result;
  }

  v11 = a2 >> 14;
  v12 = v10;
  if (a2 >> 14 < v10 >> 14 || ((v13 = v9 >= v11, v14 = (v9 >= v11) | v7, !v13) ? (v12 = (v6 << 16) | 7) : (v12 = a2), (v14 & 1) != 0))
  {
    v8 = v12;
  }

  v15 = 4 << v7;
  if ((v10 & 0xC) == 4 << v7)
  {
    v18 = v8;
    v19 = a4;
    result = sub_1A938156C(v10, a3, a4);
    v8 = v18;
    a4 = v19;
    v16 = result >> 16;
    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = v10 >> 16;
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v6 >= v16)
  {
    v20 = v8;
    v21 = a4;
    result = sub_1A957C2F8();
    a4 = v21;
    v16 = result;
    v8 = v20;
LABEL_20:
    if ((v8 & 0xC) == v15)
    {
      v22 = a4;
      result = sub_1A938156C(v8, a3, a4);
      v17 = result >> 16;
      if ((v22 & 0x1000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v8 >> 16;
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v6 < v17)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    result = sub_1A957C2F8();
    v17 = result;
LABEL_24:
    if (v17 >= v16)
    {
      return v16;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1A938800C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3[2])
  {
LABEL_52:
    v51 = a4;

    return v51;
  }

  v6 = a3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_80:
    result = sub_1A93895B8(v6);
    v6 = result;
  }

  v8 = v6[2];
  v9 = a2;
  if (!v8)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v10 = v8 - 1;
  v11 = &v6[3 * v8];
  a4 = v11[1];
  v12 = v11[2];
  v13 = v11[3];
  v6[2] = v10;
  v14 = *(v13 + 16);
  if (v14)
  {
    v58 = v6;
    v15 = 0;
    v16 = 0;
    result = 0;
    v6 = 0;
    v17 = (v13 + 40);
    v18 = 1;
    while (1)
    {
      if (v6 >= *(v13 + 16))
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
        goto LABEL_80;
      }

      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = v17[1];
      v22 = v17[2];
      v23 = v17[4];
      if (v23 <= a1)
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          v52 = a4;
          v53 = result;
          v37 = v12;
          v55 = v13;
          v38 = sub_1A957C2B8();
          v12 = v37;
          v9 = a2;
          a4 = v52;
          v31 = v38;
          result = v53;
          v13 = v55;
          v32 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v31 = v21 & 0xFFFFFFFFFFFFLL;
          if ((v22 & 0x2000000000000000) != 0)
          {
            v31 = HIBYTE(v22) & 0xF;
          }

          v32 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            goto LABEL_71;
          }
        }

        v29 = __OFSUB__(v31, v32);
        v33 = v31 - v32;
        if (v29)
        {
          goto LABEL_72;
        }

        v29 = __OFADD__(v15, v33);
        v15 += v33;
        if (v29)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v24 = v17[3];
        if (v24 >= v9)
        {
LABEL_53:
          if (v18)
          {
            v6 = v58;
            goto LABEL_56;
          }

          v47 = v16 + v15;
          if (__OFADD__(v16, v15))
          {
            goto LABEL_85;
          }

          v44 = v9 - v47;
          v48 = v58;
          if (__OFSUB__(v9, v47))
          {
            goto LABEL_86;
          }

          if (v44 >= result)
          {
LABEL_66:
            v45 = v48;
            v46 = v12;
            goto LABEL_67;
          }

          goto LABEL_87;
        }

        if (v24 <= a1 && v23 >= v9)
        {
          v49 = a4;
          v50 = v12;

          v51 = sub_1A938800C(v19, v20, v58, v49, v50);

          goto LABEL_68;
        }

        if (v24 >= a1)
        {
          if (v18)
          {
            result = a1 - v15;
            if (__OFSUB__(a1, v15))
            {
              goto LABEL_79;
            }
          }

          if (v23 > v9)
          {
            if (v20 < result)
            {
              goto LABEL_88;
            }

            v44 = *v17;
            v48 = v58;
            goto LABEL_66;
          }

          if ((v22 & 0x1000000000000000) != 0)
          {
            v54 = result;
            v57 = v13;
            v41 = a4;
            v42 = v12;
            v43 = sub_1A957C2B8();
            v12 = v42;
            v9 = a2;
            a4 = v41;
            v34 = v43;
            result = v54;
            v13 = v57;
            v35 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v34 = v21 & 0xFFFFFFFFFFFFLL;
            if ((v22 & 0x2000000000000000) != 0)
            {
              v34 = HIBYTE(v22) & 0xF;
            }

            v35 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          v29 = __OFSUB__(v34, v35);
          v36 = v34 - v35;
          if (v29)
          {
            goto LABEL_77;
          }

          v29 = __OFADD__(v16, v36);
          v16 += v36;
          if (v29)
          {
            goto LABEL_78;
          }

          v18 = 0;
        }

        else
        {
          if ((v22 & 0x1000000000000000) != 0)
          {
            v39 = a4;
            v40 = v12;
            v56 = v13;
            v27 = sub_1A957C2B8();
            v13 = v56;
            v12 = v40;
            v9 = a2;
            a4 = v39;
            v28 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_74;
            }
          }

          else
          {
            v26 = v21 & 0xFFFFFFFFFFFFLL;
            if ((v22 & 0x2000000000000000) != 0)
            {
              v27 = HIBYTE(v22) & 0xF;
            }

            else
            {
              v27 = v26;
            }

            v28 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_74;
            }
          }

          v29 = __OFSUB__(v27, v28);
          v30 = v27 - v28;
          if (v29)
          {
            goto LABEL_75;
          }

          v29 = __OFADD__(v16, v30);
          v16 += v30;
          if (v29)
          {
            goto LABEL_76;
          }

          v18 = 0;
          result = v19;
        }
      }

      v6 = (v6 + 1);
      v17 += 6;
      if (v14 == v6)
      {
        goto LABEL_53;
      }
    }
  }

  v15 = 0;
LABEL_56:
  result = a1 - v15;
  if (__OFSUB__(a1, v15))
  {
    goto LABEL_82;
  }

  v44 = v9 - v15;
  if (__OFSUB__(v9, v15))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v44 >= result)
  {
    v45 = v6;
    v46 = v12;
LABEL_67:
    v51 = sub_1A938800C(result, v44, v45, a4, v46);
LABEL_68:

    return v51;
  }

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
  return result;
}

unint64_t sub_1A93883DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = result;
    v16 = a4;
    v17 = a3;
    v18 = sub_1A957C2B8();
    a3 = v17;
    a4 = v16;
    v6 = v18;
    result = v15;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a4) & 0xF;
    }
  }

  if (v6 >= result)
  {
    v7 = result;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 & ~(v7 >> 63);
  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= v8)
  {
    v9 = v7 & ~(v7 >> 63);
  }

  else
  {
    v9 = v6;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v12 = a3;
    v13 = a4;
    v14 = MEMORY[0x1AC5851A0](15);
    v11 = MEMORY[0x1AC5851A0](15, v9, v12, v13);
    result = v14;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v10 = v5;
    }

    if (v7 > v10)
    {
      goto LABEL_23;
    }

    if (v10 < v9)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    result = (v8 << 16) | 4;
    v11 = (v9 << 16) | 4;
  }

  if (v11 >> 14 < result >> 14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t TransformableString.translate(_:)(uint64_t a1, uint64_t a2)
{
  sub_1A938800C(a1, a2, *(v2 + 16), *v2, *(v2 + 8));
  v4 = v3;

  return v4;
}

TextToSpeech::TransformableString __swiftcall TransformableString.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[1] = stringLiteral._object;
  v1[2] = v2;
  *v1 = stringLiteral._countAndFlagsBits;
  result.string = stringLiteral;
  return result;
}

TextToSpeech::TransformableString __swiftcall TransformableString.init(_:)(Swift::String a1)
{
  *v1 = a1;
  v1[1]._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  result.string = a1;
  return result;
}

uint64_t *sub_1A9388548@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x1E69E7CC0];
  a2[1] = result[1];
  a2[2] = v3;
  *a2 = v2;
  return result;
}

unint64_t sub_1A9388564()
{
  result = qword_1EB386920;
  if (!qword_1EB386920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386920);
  }

  return result;
}

unint64_t sub_1A93885C8()
{
  result = qword_1EB386928;
  if (!qword_1EB386928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386928);
  }

  return result;
}

__n128 sub_1A9388634(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A9388648(uint64_t a1, int a2)
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

uint64_t sub_1A9388690(uint64_t result, int a2, int a3)
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

__n128 sub_1A93886E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A93886F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A938873C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1A9388798(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93895CC(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[48 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = *(v13 + 6);
          v15 = *(v13 + 2);
          v16 = *(v13 - 8);
          *(v13 + 24) = *(v13 - 24);
          v17 = *(v13 + 56);
          *(v13 + 40) = v16;
          *(v13 + 56) = *(v13 + 8);
          *(v13 - 3) = v11;
          *(v13 - 1) = v15;
          *v13 = v14;
          *(v13 + 8) = v17;
          v13 -= 48;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1A9388908(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A9388908(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A938911C(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1A9388EE0((*a3 + 48 * *v94), (*a3 + 48 * *v96), (*a3 + 48 * v97), v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6);
      v10 = 48 * v8;
      v11 = (*a3 + 48 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 48 * v6 - 48;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v10);
            v23 = (v30 + v19);
            v24 = *(v22 + 2);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v22[2];
            v29 = v23[1];
            v28 = v23[2];
            *v22 = *v23;
            v22[1] = v29;
            v22[2] = v28;
            *v23 = v26;
            *(v23 + 2) = v24;
            *(v23 + 3) = v25;
            v23[2] = v27;
          }

          ++v21;
          v19 -= 48;
          v10 += 48;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1A9389130((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1A9388EE0((*a3 + 48 * *v87), (*a3 + 48 * *v89), (*a3 + 48 * v90), v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 48 * v6 - 48;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 48 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = (v36 + 48);
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 48;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 72);
    v39 = *(v36 + 56);
    v40 = *(v36 + 80);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 64) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v39;
    *(v36 + 24) = v38;
    *(v36 + 32) = v40;
    v36 -= 48;
    v37[2] = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A9388EE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = v5 + 48;
      v20 = *(v18 - 6);
      v18 -= 48;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v24;
          *v5 = v23;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 3) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

char *sub_1A9389130(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386950, &unk_1A9587700);
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

char *sub_1A9389234(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386948, &qword_1A95876F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9389354(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386930, &qword_1A95876E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386938, &qword_1A95876F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A938949C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1A9389354(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A937829C(&qword_1EB386938, &qword_1A95876F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1A93895E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386948, &qword_1A95876F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A9389700()
{
  result = qword_1EB386940;
  if (!qword_1EB386940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386940);
  }

  return result;
}

uint64_t sub_1A9389758()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB38DF58);
  sub_1A937731C(v0, qword_1EB38DF58);
  return sub_1A957BC78();
}

unint64_t sub_1A93897DC()
{
  type metadata accessor for VoiceDatabaseClient();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  result = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v0 + 136) = result;
  *(v0 + 144) = 0;
  *(v0 + 152) = 2;
  *(v0 + 112) = 1;
  qword_1EB391D28 = v0;
  return result;
}

uint64_t VoiceDatabaseClient.__allocating_init(readOnly:)(char a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v2 + 144) = 0;
  *(v2 + 152) = 2;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t static VoiceDatabaseClient.shared.getter()
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceDatabaseClient.shared.setter(uint64_t a1)
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB391D28 = a1;
}

uint64_t (*static VoiceDatabaseClient.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A9389A20@<X0>(void *a1@<X8>)
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB391D28;
}

uint64_t sub_1A9389AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB391D20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB391D28 = v1;
}

uint64_t VoiceDatabaseClient.init(readOnly:)(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v1 + 144) = 0;
  *(v1 + 152) = 2;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1A9389B74()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = *(v0 + 112);
    type metadata accessor for VoiceDatabase(0);
    v5 = v2;
    v3 = sub_1A93DA58C();
    v1 = VoiceDatabase.__allocating_init(additionalLoaders:context:)(v3, &v5);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t (*sub_1A9389C08(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9389B74();
  return sub_1A9389C50;
}

uint64_t sub_1A9389C60()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for VoiceDatabaseXPC.Client();
    v1 = VoiceDatabaseXPC.Client.__allocating_init()();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t (*sub_1A9389CD8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9389C60();
  return sub_1A9389D20;
}

uint64_t sub_1A9389D30()
{
  v1 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  if (!*(v0 + 144))
  {
    v5 = sub_1A957C688();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v7 = sub_1A9391AAC(&qword_1EB3862B0, v6, type metadata accessor for VoiceDatabaseClient, &protocol conformance descriptor for VoiceDatabaseClient);
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    *(v0 + 144) = sub_1A938A404(0, 0, v4, &unk_1A9587720, v8);
  }

  return result;
}

uint64_t sub_1A9389E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB3869A8, &qword_1A9587928);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9389FCC, a4, 0);
}

uint64_t sub_1A9389FCC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1A93DA21C();

  sub_1A957BA78();

  sub_1A957C6E8();
  v5 = *(v4 + 8);
  v5(v1, v3);
  sub_1A957C6F8();
  v5(v2, v3);
  v0[13] = sub_1A9391AAC(&qword_1EB3862B0, v6, type metadata accessor for VoiceDatabaseClient, &protocol conformance descriptor for VoiceDatabaseClient);
  swift_beginAccess();
  v7 = v0[13];
  v8 = v0[5];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1A938A164;
  v10 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 15, v8, v7, v10);
}

uint64_t sub_1A938A164()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A938A274, v1, 0);
}

uint64_t sub_1A938A274()
{
  if (*(v0 + 120))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(*(v0 + 40) + 136) = MEMORY[0x1E69E7CC8];

    if ((TTSIsBaseSystem() & 1) == 0)
    {
      v3 = [objc_opt_self() defaultCenter];
      [v3 postNotificationName:*MEMORY[0x1E6958350] object:0];
    }

    v4 = *(v0 + 104);
    v5 = *(v0 + 40);
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1A938A164;
    v7 = *(v0 + 80);

    return MEMORY[0x1EEE6D9C8](v0 + 120, v5, v4, v7);
  }
}

uint64_t sub_1A938A404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A9391BAC(a3, v25 - v10, &qword_1EB388000, &qword_1A9587710);
  v12 = sub_1A957C688();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A957C5A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A957C1C8() + 32;
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

      sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

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

  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
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