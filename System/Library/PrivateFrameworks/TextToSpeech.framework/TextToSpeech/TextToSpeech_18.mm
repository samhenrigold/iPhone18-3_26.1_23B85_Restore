uint64_t sub_1A94CD1D4()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 40);

  return v2(v3);
}

uint64_t sub_1A94CD2CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_1A938A404(0, 0, v7, a3, v9);

  return (*((*MEMORY[0x1E69E7D40] & *v10) + 0x538))(0, 0);
}

uint64_t sub_1A94CD41C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4F0);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A93836DC;

  return v8();
}

uint64_t sub_1A94CD6CC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A94CD748, 0, 0);
}

uint64_t sub_1A94CD748()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = [*(v0 + 24) isSpeaking];
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x538);
    v5 = v2;
    v4(sub_1A94CF22C, v3);
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);

    v7[2](v7, v6);
    _Block_release(v7);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4F0);
    v12 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 40) = v11;
    *v11 = v0;
    v11[1] = sub_1A94CD988;

    return v12();
  }
}

uint64_t sub_1A94CD988()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;

  v4 = *(v2 + 48);
  v5 = *(v1 + 32);

  v5[2](v5, v4);
  _Block_release(v5);
  v6 = *(v3 + 8);

  return v6();
}

Swift::Bool __swiftcall CoreSynthesizer.continueSpeaking()()
{
  v1 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = [v0 isPaused];
  v5 = sub_1A957C688();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1A938A404(0, 0, v3, &unk_1A95957D8, v6);

  return v4;
}

uint64_t sub_1A94CDBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4F8);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A93836DC;

  return v8();
}

uint64_t sub_1A94CDE34(unint64_t a1, unint64_t a2)
{
  sub_1A9378344(v2 + 320, &v15);
  if (v17 >= 2u)
  {
    goto LABEL_15;
  }

  v6 = v15;
  v5 = v16;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 4 * v7;
  if (v8 < a1 >> 14 || v8 < a2 >> 14)
  {
    v10 = sub_1A957CA78();
    v11 = AXTTSLogCommon();
    if (v11)
    {
      v12 = v11;
      sub_1A957BC58(v10, &dword_1A9324000, v11, "Received an invalid range from speech marker", 44, 2, MEMORY[0x1E69E7CC0]);

      v13 = sub_1A957C238();

      result = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
LABEL_15:
    result = sub_1A957D0A8();
    __break(1u);
    return result;
  }

  v15 = a1;
  v16 = a2;
  sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
  sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0, MEMORY[0x1E69E66D8]);
  sub_1A93820F4();
  return sub_1A957CC38();
}

uint64_t sub_1A94CDFF4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A94CE064()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A9382328;

  return sub_1A94C9A5C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A94CE148(char a1)
{
  v2 = *(v1 + 16);
  **(*(v2 + 64) + 40) = a1;
  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1A94CE170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94CE1C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A94CCB48(v6, v2, v3, v4, v5);
}

uint64_t sub_1A94CE2A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CDBEC(v3, v4, v5, v2);
}

uint64_t sub_1A94CE33C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94CD6CC(v2, v3, v4);
}

uint64_t sub_1A94CE3F0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  if ([a2 isSpeaking])
  {
    v13 = 1;
    if (a1)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      v15 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x538);
      v16 = a2;
      v15(sub_1A94CF230, v14);
      a3[2](a3, v13);
    }
  }

  else
  {
    v13 = [a2 isPaused];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v18 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x138))();
  v19 = sub_1A957C688();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v11, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = sub_1A94CE81C;
  *(v21 + 32) = v12;
  *(v21 + 40) = v13;
  sub_1A93F8120(v11, v9);
  v22 = (*(v20 + 48))(v9, 1, v19);
  v23 = a2;

  if (v22 == 1)
  {
    sub_1A937B960(v9, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v20 + 8))(v9, v19);
  }

  v24 = sub_1A94CF178(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1A9595828;
  *(v25 + 24) = v21;
  v26[0] = 6;
  v26[1] = 0;
  v26[2] = v18;
  v26[3] = v24;

  swift_task_create();
  sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94CE834()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A94CE874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A94CCB48(v6, v2, v3, v4, v5);
}

uint64_t sub_1A94CE924()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A93836DC;

  return sub_1A94CC1A4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1A94CEA14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A94CBA70(v2, v3, v4, v5, v6);
}

uint64_t sub_1A94CEADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A94C9814(v2, v3, v5, v4);
}

uint64_t sub_1A94CEB9C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CD41C(v3, v4, v5, v2);
}

uint64_t sub_1A94CEC30()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CCDEC(v3, v4, v5, v2);
}

uint64_t sub_1A94CECC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A94CB2C4(a1, a2, v6);
}

void sub_1A94CED74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v28 = *(v0 + 56);
  v6 = *(v0 + 464);
  v7 = *(v0 + 480);
  v29 = (*(**(v0 + 16) + 104))();
  v8 = (*(*v1 + 104))();
  v9 = [v29 delegate];
  v10 = v9;
  v11 = v4 >> 61;
  if ((v4 >> 61) <= 1)
  {
    if (!v11)
    {
LABEL_42:
      swift_unknownObjectRelease();
      goto LABEL_43;
    }

    v27 = v8;
    v30[0] = v2;
    v30[1] = v3;
    v31 = v4;
    v32 = v28;
    v14 = sub_1A94CB4C8(v30);
    if (v10 && ([v10 respondsToSelector_] & 1) != 0)
    {
      [v10 speechSynthesizer:v29 willSpeakMarker:v14 utterance:v8];
    }

    if (v6)
    {
      sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1A95892B0;
      *(v15 + 32) = v14;
      v16 = v14;
      v6(v15);
    }

    if ([v14 mark] == 1)
    {
      v17 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x530))();
      if (v17)
      {
        v19 = v18;
        v20 = v17;
        v17();
        sub_1A93CF5C8(v20, v19);
      }

      v21 = [v14 textRange];
      if (!v10)
      {
        goto LABEL_28;
      }

      v23 = v21;
      v24 = v22;
      if ([v10 respondsToSelector_])
      {
        v25 = v23;
        v8 = v27;
        [v10 speechSynthesizer:v29 willSpeakRangeOfSpeechString:v25 utterance:{v24, v27}];

        goto LABEL_42;
      }
    }

    swift_unknownObjectRelease();
LABEL_28:

    v8 = v27;
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    if (v5)
    {
      v5(v2);
    }

    goto LABEL_42;
  }

  if (v11 == 3)
  {
    if (v2)
    {
      if (!v9)
      {
        goto LABEL_43;
      }

      v12 = v8;
      if ([v9 respondsToSelector_])
      {
        v13 = sel_speechSynthesizer_didFinishSpeechUtterance_;
LABEL_41:
        v8 = v12;
        [v10 v13];
        goto LABEL_42;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_43;
      }

      v12 = v8;
      if ([v9 respondsToSelector_])
      {
        v13 = sel_speechSynthesizer_didCancelSpeechUtterance_;
        goto LABEL_41;
      }
    }
  }

  else
  {
    v26 = v28 | v3;
    if (v4 != 0x8000000000000000 || v26 | v2)
    {
      if (v4 == 0x8000000000000000 && v2 == 1 && !v26)
      {
        if (!v9)
        {
          goto LABEL_43;
        }

        v12 = v8;
        if ([v9 respondsToSelector_])
        {
          v13 = sel_speechSynthesizer_didPauseSpeechUtterance_;
          goto LABEL_41;
        }
      }

      else
      {
        if (!v9)
        {
          goto LABEL_43;
        }

        v12 = v8;
        if ([v9 respondsToSelector_])
        {
          v13 = sel_speechSynthesizer_didContinueSpeechUtterance_;
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_43;
      }

      v12 = v8;
      if ([v9 respondsToSelector_])
      {
        v13 = sel_speechSynthesizer_didStartSpeechUtterance_;
        goto LABEL_41;
      }
    }
  }

  swift_unknownObjectRelease();
  v8 = v12;
LABEL_43:
}

uint64_t sub_1A94CF178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for AVSpeechBoundary()
{
  if (!qword_1EB3880C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3880C0);
    }
  }
}

__n128 String.asSpeech.getter@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{

  TTSMarkup.SpeechText.init(_:)(a1, a2, v8);
  v6 = v8[1];
  result = v9;
  a3->n128_u64[0] = v8[0];
  a3->n128_u64[1] = v6;
  a3[1] = result;
  return result;
}

uint64_t sub_1A94CF30C(float a1)
{
  if (a1 >= 0.0)
  {
    v1 = 43;
  }

  else
  {
    v1 = 0;
  }

  if (a1 >= 0.0)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1AC585140](v1, v2);

  sub_1A957C898();
  return 0;
}

void *sub_1A94CF38C()
{
  type metadata accessor for TTSSettings();
  v0 = swift_allocObject();
  result = sub_1A94D2578();
  qword_1ED970E08 = v0;
  return result;
}

uint64_t sub_1A94CF3C8()
{
  v0 = swift_allocObject();
  sub_1A94D2578();
  return v0;
}

uint64_t *sub_1A94CF400()
{
  if (qword_1ED970E00 != -1)
  {
    swift_once();
  }

  return &qword_1ED970E08;
}

uint64_t static TTSSettings.shared.getter()
{
  if (qword_1ED970E00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A94CF4AC()
{
  if (*v0)
  {
    return 6580592;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A94CF4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A94CF5A8(uint64_t a1)
{
  v2 = sub_1A94D2644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94CF5E4(uint64_t a1)
{
  v2 = sub_1A94D2644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSSettings.SpeechTracingClient.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3880D0, &qword_1A95959F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94D2644();
  sub_1A957D598();
  v12 = 0;
  v7 = v9[1];
  sub_1A957D2E8();
  if (!v7)
  {
    v11 = 1;
    sub_1A957D348();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TTSSettings.SpeechTracingClient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1A937829C(&qword_1EB3880D8, &unk_1A95959F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = sub_1A957B0B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B0A8();
  sub_1A957B088();
  (*(v9 + 8))(v11, v8);
  getpid();
  sub_1A93780F4(a1, a1[3]);
  sub_1A94D2644();
  sub_1A957D588();
  if (!v2)
  {
    v12 = v19;
    v21 = 0;
    v13 = sub_1A957D1E8();
    v15 = v14;
    v18 = v13;

    v20 = 1;
    v17 = sub_1A957D248();
    (*(v5 + 8))(v7, v4);
    *v12 = v18;
    *(v12 + 8) = v15;
    *(v12 + 16) = v17;
  }

  sub_1A9378138(a1);
}

uint64_t sub_1A94CFA80()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94CFAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB388100, &qword_1A9595A50);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D498C(&qword_1ED96FD30, sub_1A94D4938, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A94D498C(&qword_1ED96FD38, sub_1A94D4A10, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1A94D48F0(&qword_1EB386468, v6, type metadata accessor for TTSSettings, &protocol conformance descriptor for TTSSettings);
    v5 = sub_1A957B8D8();
    *(a1 + 16) = v5;
  }

  *a2 = v5;
}

unint64_t sub_1A94CFD20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94D45C8(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94CFD98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94CFDE4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_1A94CFE38()
{
  (*(*v0 + 200))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94CFE98(uint64_t a1)
{
  (*(*v1 + 200))();
  sub_1A957B8F8();
}

void (*sub_1A94CFEFC(void *a1))(uint64_t **, char)
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
  v3[2] = v1;
  v5 = *(*v1 + 200);
  v6 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xE2B0000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A94CFFB8;
}

uint64_t (*sub_1A94CFFBC())()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1A957B0B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B0A8();
  v9 = sub_1A957B088();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  LODWORD(v5) = getpid();
  v12 = *(*v1 + 232);
  swift_bridgeObjectRetain_n();
  v13 = v12(v24);
  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v15;
  *v15 = 0x8000000000000000;
  sub_1A94D3098(v9, v11, v5, v9, v11, isUniquelyReferenced_nonNull_native);

  *v15 = v23;
  v13(v24, 0);
  v17 = sub_1A957C688();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v5;

  v19 = sub_1A93C4B70(0, 0, v4, &unk_1A9595A20, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v9;
  *(v20 + 32) = v11;
  *(v20 + 40) = v5;
  *(v20 + 48) = v19;

  return sub_1A94D39A8;
}

uint64_t sub_1A94D027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1A957D008();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_1A957D018();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94D03A4, 0, 0);
}

uint64_t sub_1A94D03A4(uint64_t a1)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 72);
  sub_1A957D468();
  *(v1 + 40) = xmmword_1A95959E0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  v5 = sub_1A94D48F0(&qword_1EB385E98, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A957D448();
  sub_1A94D48F0(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A957D028();
  v6 = *(v3 + 8);
  *(v1 + 128) = v6;
  *(v1 + 136) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  *(v1 + 144) = v7;
  *v7 = v1;
  v7[1] = sub_1A94D0564;
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);

  return MEMORY[0x1EEE6DE58](v9, v1 + 16, v8, v5);
}

uint64_t sub_1A94D0564()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    v3 = sub_1A94D0898;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A94D06BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94D06BC()
{
  v1 = sub_1A957C1C8();
  notify_post((v1 + 32));

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  sub_1A957D468();
  *(v0 + 40) = xmmword_1A95959E0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v5 = sub_1A94D48F0(&qword_1EB385E98, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A957D448();
  sub_1A94D48F0(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A957D028();
  v6 = *(v3 + 8);
  *(v0 + 128) = v6;
  *(v0 + 136) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1A94D0564;
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);

  return MEMORY[0x1EEE6DE58](v9, v0 + 16, v8, v5);
}

uint64_t sub_1A94D0898()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A94D0934()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94D09B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    sub_1A937829C(&qword_1EB388110, &qword_1A9595A58);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D4528(&qword_1ED96FD40, &qword_1ED96FD90, MEMORY[0x1E6969630], MEMORY[0x1E69E5E58]);
    sub_1A94D4528(&qword_1ED96FD48, &qword_1ED96FD98, MEMORY[0x1E6969618], MEMORY[0x1E69E5E38]);
    sub_1A94D48F0(&qword_1EB386468, v6, type metadata accessor for TTSSettings, &protocol conformance descriptor for TTSSettings);
    v5 = sub_1A957B8D8();
    *(a1 + 32) = v5;
  }

  *a2 = v5;
}

unint64_t sub_1A94D0BB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94D46E4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94D0C0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94D0C60(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t sub_1A94D0CBC()
{
  (*(*v0 + 296))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94D0D24(uint64_t a1)
{
  (*(*v1 + 296))();
  sub_1A957B8F8();
}

void (*sub_1A94D0D90(void *a1))(uint64_t **, char)
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
  v3[2] = v1;
  v5 = (*v1 + 296);
  v6 = *v5;
  v3[3] = *v5;
  v3[4] = v5 & 0xFFFFFFFFFFFFLL | 0x1423000000000000;
  v6();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A94D4A64;
}

uint64_t sub_1A94D0E54()
{
  v1 = *(v0 + 56);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B4B04(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94D0ED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    sub_1A937829C(&qword_1EB388120, &qword_1A9595A60);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D4480();
    sub_1A94D44D4();
    sub_1A94D48F0(&qword_1EB386468, v6, type metadata accessor for TTSSettings, &protocol conformance descriptor for TTSSettings);
    v5 = sub_1A957B8D8();
    *(a1 + 48) = v5;
  }

  *a2 = v5;
}

void sub_1A94D107C(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (TTSIsInternalBuild(a1, a2))
  {
    type metadata accessor for AXCatalogUpdater();
    v4[0] = v2;
    v4[1] = v3;
    sub_1A93F2328(v4);
  }
}

uint64_t sub_1A94D10CC()
{

  sub_1A957BA88();
}

uint64_t sub_1A94D1130()
{
  (*(*v1 + 384))();
  sub_1A957B8E8();
}

uint64_t sub_1A94D119C(uint64_t *a1)
{
  (*(*v1 + 384))();
  sub_1A957B8F8();
}

void (*sub_1A94D1210(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v4 = (*v1 + 384);
  v5 = *v4;
  v3[5] = *v4;
  v3[6] = v4 & 0xFFFFFFFFFFFFLL | 0x1155000000000000;
  v5();
  sub_1A957B8E8();

  return sub_1A94D12CC;
}

void sub_1A94D12CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = sub_1A93F48E0(**a1, v3);
    (v5)(v6);
    v2[2] = v4;
    v2[3] = v3;
    sub_1A957B8F8();

    sub_1A9450A78(*v2, v2[1]);
  }

  else
  {
    v5();
    v2[2] = v4;
    v2[3] = v3;
    sub_1A957B8F8();
  }

  free(v2);
}

void *sub_1A94D1370()
{
  v111 = sub_1A957B2E8();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v109 = &v106 - v3;
  v114 = sub_1A957B308();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1A957B188();
  v5 = *(v128 - 8);
  v6 = MEMORY[0x1EEE9AC00](v128);
  v107 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v112 = &v106 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v131 = &v106 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v106 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v118 = &v106 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v106 - v17;
  v18 = sub_1A937829C(&qword_1EB3880F0, &qword_1A9595A38);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v125 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v106 - v22;
  v23 = (*(*v0 + 312))(v21);
  v24 = 0;
  v25 = *(v23 + 64);
  v116 = v23 + 64;
  v119 = v23;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v130 = (v5 + 16);
  v126 = v5;
  v127 = (v5 + 32);
  v123 = (v5 + 8);
  v30 = MEMORY[0x1E69E7CC8];
  v122 = xmmword_1A9587160;
  v120 = v29;
  v121 = v14;
  while (v28)
  {
    v129 = v30;
    v32 = v24;
LABEL_16:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v119;
    v37 = v126;
    v38 = *(v126 + 72) * (v35 | (v32 << 6));
    v39 = *(v126 + 16);
    v40 = v117;
    v41 = v128;
    v39(v117, *(v119 + 48) + v38, v128);
    v42 = *(v36 + 56) + v38;
    v43 = v118;
    v39(v118, v42, v41);
    v44 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
    v45 = *(v44 + 48);
    v46 = *(v37 + 32);
    v47 = v125;
    v46(v125, v40, v41);
    v46(&v47[v45], v43, v41);
    (*(*(v44 - 8) + 56))(v47, 0, 1, v44);
    v34 = v32;
    v48 = v47;
    v30 = v129;
LABEL_17:
    v49 = v124;
    sub_1A94D3B54(v48, v124);
    v50 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {

      v81 = [objc_opt_self() sharedPreferences];
      v82 = [v81 languageCode];

      if (v82)
      {
        v83 = sub_1A957C0F8();
        v85 = v84;

        v86 = v128;
        sub_1A957B1B8();
        v87 = v108;
        sub_1A957B2F8();
        v88 = v109;
        sub_1A957B2B8();
        (*(v110 + 8))(v87, v111);
        if ((*(v126 + 48))(v88, 1, v86) == 1)
        {
          v89 = v86;
          sub_1A937B960(v88, &qword_1EB386A68, &qword_1A9587F40);
          v90 = v112;
          goto LABEL_33;
        }

        v92 = sub_1A957B148();
        v94 = v93;
        v89 = v86;
        (*v123)(v88, v86);
        v90 = v112;
        if (v92 == 6649209 && v94 == 0xE300000000000000)
        {

          goto LABEL_44;
        }

        v95 = sub_1A957D3E8();

        if (v95)
        {
LABEL_44:

          goto LABEL_45;
        }

LABEL_33:
        if (v83 == 0x4B482D687ALL && v85 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0 || v83 == 0x4B485F687ALL && v85 == 0xE500000000000000)
        {
          goto LABEL_44;
        }

        v91 = sub_1A957D3E8();

        if (v91)
        {
LABEL_45:
          sub_1A957B178();
          v96 = v107;
          sub_1A957B178();
          if (v30[2] && (v97 = sub_1A93AB008(v96), (v98 & 1) != 0))
          {
            v99 = v30;
            v100 = *(v30[7] + 8 * v97);
            v101 = *v123;

            v101(v96, v89);
          }

          else
          {
            v99 = v30;
            v101 = *v123;
            (*v123)(v96, v89);
            v100 = MEMORY[0x1E69E7CC0];
          }

          sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
          type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
          v102 = swift_allocObject();
          *(v102 + 16) = v122;
          sub_1A957B178();
          swift_storeEnumTagMultiPayload();
          v132 = v100;
          sub_1A93ABEB4(v102);
          v103 = v132;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v132 = v99;
          sub_1A94D323C(v103, v90, isUniquelyReferenced_nonNull_native);
          v101(v90, v89);
          v30 = v132;
        }

        (*(v113 + 8))(v115, v114);
      }

      return v30;
    }

    v129 = v34;
    v51 = *(v50 + 48);
    v52 = v128;
    v53 = *v127;
    v54 = v121;
    (*v127)(v121, v49 + v51, v128);
    v55 = v131;
    v53(v131, v49, v52);
    sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
    v56 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping(0) - 8);
    v57 = v30;
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v122;
    v60 = *v130;
    v61 = v54;
    v62 = v54;
    v63 = v52;
    (*v130)(v59 + v58, v62, v52);
    swift_storeEnumTagMultiPayload();
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v57;
    v66 = sub_1A93AB008(v55);
    v67 = v57[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_53;
    }

    v70 = v65;
    if (v57[3] >= v69)
    {
      if (v64)
      {
        v30 = v132;
        if (v65)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A94D3648();
        v30 = v132;
        if (v70)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A94D2AE8(v69, v64);
      v71 = sub_1A93AB008(v131);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_55;
      }

      v66 = v71;
      v30 = v132;
      if (v70)
      {
LABEL_4:
        *(v30[7] + 8 * v66) = v59;

        v31 = *v123;
        (*v123)(v131, v63);
        v31(v61, v63);
        goto LABEL_5;
      }
    }

    v30[(v66 >> 6) + 8] |= 1 << v66;
    v73 = v126;
    v74 = v131;
    v60(v30[6] + *(v126 + 72) * v66, v131, v63);
    *(v30[7] + 8 * v66) = v59;
    v75 = *(v73 + 8);
    v75(v74, v63);
    v75(v61, v63);
    v76 = v30[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_54;
    }

    v30[2] = v78;
LABEL_5:
    v24 = v129;
    v29 = v120;
  }

  if (v29 <= v24 + 1)
  {
    v33 = v24 + 1;
  }

  else
  {
    v33 = v29;
  }

  v34 = (v33 - 1);
  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v79 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
      v80 = v125;
      (*(*(v79 - 8) + 56))(v125, 1, 1, v79);
      v48 = v80;
      v28 = 0;
      goto LABEL_17;
    }

    v28 = *(v116 + 8 * v32);
    v24 = (v24 + 1);
    if (v28)
    {
      v129 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A94D2050()
{
  v1 = (*(*v0 + 200))();
  v28 = sub_1A937829C(&qword_1EB388100, &qword_1A9595A50);
  v29 = sub_1A94D3BC4(&qword_1EB388108, &qword_1EB388100, &qword_1A9595A50);
  *&v27 = v1;
  sub_1A93F0F10(&v27, v25);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v2;
  v4 = sub_1A9396054(v25, v26);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_1A94D3C18(*v6, 0xD000000000000013, 0x80000001A95C45B0, isUniquelyReferenced_nonNull_native, &v24, &qword_1EB388100, &qword_1A9595A50, &qword_1EB388108);
  v8 = sub_1A9378138(v25);
  v9 = v24;
  v10 = (*(*v0 + 296))(v8);
  v28 = sub_1A937829C(&qword_1EB388110, &qword_1A9595A58);
  v29 = sub_1A94D3BC4(&qword_1EB388118, &qword_1EB388110, &qword_1A9595A58);
  *&v27 = v10;
  sub_1A93F0F10(&v27, v25);
  LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
  v24 = v9;
  v11 = sub_1A9396054(v25, v26);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  sub_1A94D3C18(*v13, 0xD00000000000001DLL, 0x80000001A95C45D0, v10, &v24, &qword_1EB388110, &qword_1A9595A58, &qword_1EB388118);
  v15 = sub_1A9378138(v25);
  v16 = v24;
  v17 = (*(*v0 + 384))(v15);
  v28 = sub_1A937829C(&qword_1EB388120, &qword_1A9595A60);
  v29 = sub_1A94D3BC4(&qword_1EB388128, &qword_1EB388120, &qword_1A9595A60);
  *&v27 = v17;
  sub_1A93F0F10(&v27, v25);
  LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
  v24 = v16;
  v18 = sub_1A9396054(v25, v26);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  sub_1A94D3C18(*v20, 0x676F6C6174616324, 0xEE00726576726553, v17, &v24, &qword_1EB388120, &qword_1A9595A60, &qword_1EB388128);
  sub_1A9378138(v25);
  return v24;
}

void *TTSSettings.deinit()
{

  sub_1A9378138((v0 + 80));
  return v0;
}

uint64_t TTSSettings.__deallocating_deinit()
{
  TTSSettings.deinit();

  return swift_deallocClassInstance();
}

void *sub_1A94D2578()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  v0[4] = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v0[7] = v3;
  sub_1A957B9B8();
  swift_allocObject();
  v0[8] = sub_1A957B9A8();
  sub_1A957B998();
  swift_allocObject();
  v0[9] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

unint64_t sub_1A94D2644()
{
  result = qword_1EB3A0400[0];
  if (!qword_1EB3A0400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0400);
  }

  return result;
}

uint64_t sub_1A94D2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1A937A490(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A94D34C0();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    LODWORD(v11) = *(v11 + 16);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v11;
    result = sub_1A94D2EC8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1A94D2818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
  v36 = v4;
  result = sub_1A957D118();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
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
  return result;
}

uint64_t sub_1A94D2AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A957B188();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
  v39 = v4;
  result = sub_1A957D118();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1A94D48F0(&qword_1EB386498, 255, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      result = sub_1A957C058();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A94D2EC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v10 = sub_1A957D548();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A94D3098(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A937A490(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A94D2818(v20, a6 & 1);
      v15 = sub_1A937A490(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A94D34C0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = v25[7] + 24 * v15;
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_1A94D323C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A957B188();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A93AB008(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A94D3648();
      goto LABEL_7;
    }

    sub_1A94D2AE8(v17, a3 & 1);
    v22 = sub_1A93AB008(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A94D3408(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1A94D3408(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A957B188();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1A94D34C0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LODWORD(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
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

char *sub_1A94D3648()
{
  v1 = v0;
  v33 = sub_1A957B188();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
  v3 = *v0;
  v4 = sub_1A957D108();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1A94D38C8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 216))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94D3910()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9382328;

  return sub_1A94D027C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94D39A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = (*(**(v0 + 16) + 232))(v5);
  sub_1A94D2768(v1, v2, v6);

  v3(v5, 0);
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  return sub_1A957C748();
}

uint64_t sub_1A94D3AAC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 312))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94D3B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3880F0, &qword_1A9595A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94D3BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94D3C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v16 = sub_1A937829C(a6, a7);
  v36 = v16;
  v34 = a8;
  v37 = sub_1A94D3BC4(a8, a6, a7);
  *&v35 = a1;
  v17 = *a5;
  v19 = sub_1A937A490(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_1A9378138(v26);
      return sub_1A93F0F10(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v22, a4 & 1);
  v28 = sub_1A937A490(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = sub_1A9396054(&v35, v16);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_1A94D43AC(v19, a2, a3, *v32, v25, a6, a7, v34);

  return sub_1A9378138(&v35);
}

__n128 sub_1A94D41E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94D41FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1A94D4244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A94D42A8()
{
  result = qword_1EB3A0510[0];
  if (!qword_1EB3A0510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0510);
  }

  return result;
}

unint64_t sub_1A94D4300()
{
  result = qword_1EB3A0620;
  if (!qword_1EB3A0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A0620);
  }

  return result;
}

unint64_t sub_1A94D4358()
{
  result = qword_1EB3A0628[0];
  if (!qword_1EB3A0628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0628);
  }

  return result;
}

uint64_t sub_1A94D43AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v22 = sub_1A937829C(a6, a7);
  v23 = sub_1A94D3BC4(a8, a6, a7);
  *&v21 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v16 = (a5[6] + 16 * a1);
  *v16 = a2;
  v16[1] = a3;
  result = sub_1A93F0F10(&v21, a5[7] + 40 * a1);
  v18 = a5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v20;
  }

  return result;
}

unint64_t sub_1A94D4480()
{
  result = qword_1EB386208;
  if (!qword_1EB386208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386208);
  }

  return result;
}

unint64_t sub_1A94D44D4()
{
  result = qword_1EB386210;
  if (!qword_1EB386210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386210);
  }

  return result;
}

uint64_t sub_1A94D4528(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3880E8, &unk_1A9595A28);
    sub_1A94D48F0(a2, 255, MEMORY[0x1E6969610], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94D45C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
    v3 = sub_1A957D128();

    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1A937A490(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1A94D46E4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388130, &qword_1A9595D58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A937829C(&qword_1EB388138, &unk_1A9595D60);
    v7 = sub_1A957D128();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_1A9391BAC(v9, v5, &qword_1EB388130, &qword_1A9595D58);
      result = sub_1A93AB008(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_1A957B188();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1A94D48F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94D4938()
{
  result = qword_1ED96FD80;
  if (!qword_1ED96FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD80);
  }

  return result;
}

uint64_t sub_1A94D498C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3880E0, &unk_1A9595A08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94D4A10()
{
  result = qword_1ED96FD88;
  if (!qword_1ED96FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD88);
  }

  return result;
}

id CoreSynthesizer.speak(request:language:synthesizer:completionHandler:)(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a5;
  v13 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v59 = a4;
  result = [a4 phonemeSubstitutions];
  if (!result)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v20 = result;
  v58 = a1;
  v56 = a6;
  v51 = sub_1A9387478(0, &qword_1EB385F18, off_1E787F2F8);
  v21 = sub_1A957C4C8();

  v65 = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
  {
    v54 = a2;
    v55 = a3;
    v60 = v18;
    v52 = v16;
    v53 = v7;
    if (i)
    {
      a2 = 0;
      v16 = (v21 & 0xFFFFFFFFFFFFFF8);
      v7 = &selRef_needsParameterSync;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1AC585DE0](a2, v21);
        }

        else
        {
          if (a2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v23 = *(v21 + 8 * a2 + 32);
        }

        v18 = v23;
        v24 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        [v23 replacementRange];
        if (v25 <= 0)
        {
        }

        else
        {
          sub_1A957CF78();
          a3 = *(v65 + 16);
          sub_1A957CFB8();
          sub_1A957CFC8();
          sub_1A957CF88();
        }

        ++a2;
        if (v24 == i)
        {
          v26 = v65;
          v18 = v60;
          v16 = v52;
          v7 = v53;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v27 = v58;
    v28 = [v58 ignoreSubstitutions];
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      goto LABEL_40;
    }

    result = [v59 userSubstitutions];
    if (!result)
    {
      goto LABEL_45;
    }

    v30 = result;
    v31 = sub_1A957C4C8();

    v65 = v29;
    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        break;
      }

      goto LABEL_21;
    }

    v32 = sub_1A957CE48();
    if (!v32)
    {
      break;
    }

LABEL_21:
    v51 = v26;
    a2 = 0;
    v16 = (v31 & 0xFFFFFFFFFFFFFF8);
    v7 = &selRef_needsParameterSync;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1AC585DE0](a2, v31);
      }

      else
      {
        if (a2 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v33 = *(v31 + 8 * a2 + 32);
      }

      v21 = v33;
      v18 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      [v33 replacementRange];
      if (v34 <= 0)
      {
      }

      else
      {
        sub_1A957CF78();
        a3 = *(v65 + 16);
        sub_1A957CFB8();
        sub_1A957CFC8();
        sub_1A957CF88();
      }

      ++a2;
      if (v18 == v32)
      {
        v29 = v65;
        v18 = v60;
        v16 = v52;
        v7 = v53;
        v26 = v51;
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v27 = v58;
LABEL_40:
  v65 = v26;
  v35 = sub_1A94D8ABC(v29);
  v36 = v65;
  v37 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x138))(v35);
  v38 = sub_1A957C688();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v18, 1, 1, v38);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v42 = v18;
  v43 = v41;
  v44 = v56;
  v41[2] = v57;
  v41[3] = v44;
  v41[4] = v27;
  v41[5] = v7;
  v41[6] = v36;
  v41[7] = v40;
  v45 = v55;
  v41[8] = v54;
  v41[9] = v45;
  sub_1A9391BAC(v42, v16, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v40) = (*(v39 + 48))(v16, 1, v38);

  v46 = v27;
  v47 = v7;
  if (v40 == 1)
  {
    sub_1A937B960(v16, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v39 + 8))(v16, v38);
  }

  v48 = sub_1A945E8E8();
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_1A9595D80;
  *(v49 + 24) = v43;
  v61 = 6;
  v62 = 0;
  v63 = v37;
  v64 = v48;

  swift_task_create();
  sub_1A937B960(v60, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94D5068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[739] = v13;
  v8[738] = a8;
  v8[737] = a7;
  v8[736] = a6;
  v8[735] = a5;
  v8[734] = a4;
  v8[733] = a3;
  v8[732] = a2;
  v9 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v8[740] = v9;
  v8[741] = *(v9 - 8);
  v8[742] = swift_task_alloc();
  v10 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v8[743] = v10;
  v8[744] = *(v10 - 8);
  v8[745] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94D51C0, 0, 0);
}

uint64_t sub_1A94D51C0()
{
  v172 = v0;
  v1 = [v0[734] voice];
  if (!v1)
  {
    __break(1u);
    goto LABEL_72;
  }

  v6 = v1;
  v7 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v0 + 575, &v6[v7], 0x118uLL);
  sub_1A9391BAC((v0 + 575), (v0 + 155), &unk_1EB387BC0, &qword_1A9587E30);

  memcpy(v0 + 85, v0 + 575, 0x118uLL);
  if (sub_1A932D058((v0 + 85)) != 1)
  {
    v30 = v0[575];
    v31 = v0[578];
    v32 = v0[579];
    v140 = v0[580];
    v33 = v0[581];
    v34 = *(v0 + 4656);
    v143 = *(v0 + 585);
    v138 = *(v0 + 288);
    v139 = *(v0 + 583);
    v144 = v0[589];
    v141 = *(v0 + 4720);
    v142 = *(v0 + 4657);
    v149 = v0[591];
    v150 = v0[587];
    v145 = v0[592];
    v152 = v0[593];
    v147 = v0[588];
    v148 = v0[594];
    v151 = *(v0 + 595);
    v35 = v0[597];
    v153 = *(v0 + 1197);
    v155 = *(v0 + 4793);
    v156 = *(v0 + 300);
    v157 = *(v0 + 303);
    v158 = *(v0 + 301);
    v154 = *(v0 + 302);
    v159 = v0[609];
    v162 = v0[608];
    v146 = *(v0 + 4792);
    v36 = *(v0 + 4784);
    v37 = v0 + 610;
    v38 = v0 + 575;
    goto LABEL_10;
  }

  v1 = [v0[734] voice];
  if (!v1)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v8 = v1;
  v9 = [v1 identifier];

  v10 = sub_1A957C0F8();
  v12 = v11;

  v0[719] = v10;
  v0[720] = v12;
  v0[717] = sub_1A957C0F8();
  v0[718] = v13;
  v14 = sub_1A93820F4();
  v15 = MEMORY[0x1E69E6158];
  LOBYTE(v10) = sub_1A957CD38();

  if (v10)
  {
    v1 = [v0[734] voice];
    if (v1)
    {
      v16 = v1;
      v17 = v0[735];
      v18 = [v1 identifier];

      v19 = sub_1A957C0F8();
      v21 = v20;

      v0[721] = v19;
      v0[722] = v21;
      v0[723] = sub_1A957C0F8();
      v0[724] = v22;
      v0[725] = sub_1A957C0F8();
      v0[726] = v23;
      v24 = sub_1A957CD08((v0 + 723), (v0 + 725), 0, 0, 0, 1, v15, v15, v15, v14, v14, v14);
      v26 = v25;

      v0[746] = v26;
      v27 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x4A0);
      v161 = (v27 + *v27);
      v28 = swift_task_alloc();
      v0[747] = v28;
      *v28 = v0;
      v28[1] = sub_1A94D66A8;

      return (v161)(v0 + 50, v24, v26);
    }

    goto LABEL_74;
  }

  memcpy(v0 + 190, v0 + 575, 0x118uLL);
  memcpy(v0 + 295, v0 + 575, 0x118uLL);
  if (sub_1A932D058((v0 + 295)) != 1)
  {
    v159 = v0[329];
    v162 = v0[328];
    v156 = *(v0 + 160);
    v157 = *(v0 + 163);
    v158 = *(v0 + 161);
    v154 = *(v0 + 162);
    v155 = *(v0 + 2553);
    v153 = *(v0 + 637);
    v146 = *(v0 + 2552);
    v36 = *(v0 + 2544);
    v151 = *(v0 + 315);
    v35 = v0[317];
    v152 = v0[313];
    v148 = v0[314];
    v149 = v0[311];
    v150 = v0[307];
    v147 = v0[308];
    v144 = v0[309];
    v145 = v0[312];
    v143 = *(v0 + 305);
    v141 = *(v0 + 2480);
    v142 = *(v0 + 2417);
    v34 = *(v0 + 2416);
    v140 = v0[300];
    v33 = v0[301];
    v31 = v0[298];
    v32 = v0[299];
    v30 = v0[295];
    v138 = *(v0 + 148);
    v139 = *(v0 + 303);
    memcpy(v0 + 365, v0 + 190, 0x118uLL);
    sub_1A937B3DC((v0 + 365), (v0 + 400));
    v37 = v0 + 610;
    v38 = v0 + 190;
LABEL_10:
    memcpy(v37, v38, 0x118uLL);
    v39 = v0[734];
    v0[435] = v30;
    *(v0 + 218) = v138;
    v0[438] = v31;
    v0[439] = v32;
    v0[440] = v140;
    v0[441] = v33;
    *(v0 + 3536) = v34;
    *(v0 + 3537) = v142;
    *(v0 + 443) = v139;
    *(v0 + 445) = v143;
    v0[447] = v150;
    v0[448] = v147;
    v0[449] = v144;
    *(v0 + 3600) = v141;
    v0[451] = v149;
    v0[452] = v145;
    v0[453] = v152;
    v0[454] = v148;
    *(v0 + 455) = v151;
    v0[457] = v35;
    *(v0 + 3664) = v36 & 1;
    *(v0 + 917) = v153;
    *(v0 + 3672) = v146 & 1;
    *(v0 + 3673) = v155;
    *(v0 + 230) = v156;
    *(v0 + 231) = v158;
    *(v0 + 232) = v154;
    *(v0 + 233) = v157;
    v0[468] = v162;
    v0[469] = v159;
    sub_1A9391BAC((v0 + 575), (v0 + 470), &unk_1EB387BC0, &qword_1A9587E30);
    LODWORD(v39) = [v39 ignoreSubstitutions];
    sub_1A937829C(&qword_1EB388150, &qword_1A9595D90);
    if (v39)
    {
      v40 = v0 + 730;
      v41 = 731;
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A95873F0;
      *(v42 + 32) = *sub_1A937929C();
      *(v42 + 40) = *sub_1A93792B4();
    }

    else
    {
      v40 = v0 + 727;
      v41 = 729;
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A9588500;
      *(v42 + 32) = *sub_1A937929C();
      *(v42 + 40) = *sub_1A93792A8();
      *(v42 + 48) = *sub_1A93792B4();
    }

    v0[v41] = v42;
    sub_1A937B594();
    sub_1A937829C(&qword_1EB388158, &qword_1A9595D98);
    sub_1A93B744C(&qword_1EB388160, &qword_1EB388158, &qword_1A9595D98, MEMORY[0x1E69E6328]);
    sub_1A957CE08();
    v43 = *v40;
    v44 = [v0[734] speechStringType];
    v45 = v0[734];
    if (v44 == 1)
    {
      v46 = [v45 jobIdentifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1A957C0F8();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v1 = [v0[734] text];
      if (v1)
      {
        v68 = v1;
        v69 = sub_1A957C0F8();
        v71 = v70;

        memcpy(v0 + 225, v0 + 435, 0x118uLL);
        nullsub_23();
        memcpy(__dst, v0 + 225, 0x118uLL);
        v166[0] = v43;
        sub_1A937B3DC((v0 + 435), (v0 + 120));
        v72 = sub_1A937838C();
        sub_1A937BA74(&v169);
        v170 = v169;
        sub_1A937BA74(v171);
        LOBYTE(v167) = v171[0];
        CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, v48, v50, v69, v71, v72, &v170, &v167, (v0 + 2), v166);
        goto LABEL_56;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v51 = [v45 text];
    if (!v51)
    {
      sub_1A937B960((v0 + 610), &unk_1EB387BC0, &qword_1A9587E30);
      sub_1A94D93E0();
      v66 = swift_allocError();
      *v73 = 0;
      v73[1] = 0;
      swift_willThrow();
      sub_1A937B48C((v0 + 435));
      goto LABEL_32;
    }

    v52 = v51;
    v53 = sub_1A957C0F8();
    v55 = v54;
    v56 = sub_1A937D62C();
    swift_beginAccess();
    v57 = *v56;
    v58 = [v57 firstMatchInString:v52 options:0 range:{0, sub_1A957C238()}];

    if (v58)
    {
      [v58 range];
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    if (v60 == sub_1A957C238())
    {
      v74 = v0[734];

      v75 = [v74 jobIdentifier];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1A957C0F8();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      memcpy(v0 + 330, v0 + 435, 0x118uLL);
      nullsub_23();
      memcpy(__dst, v0 + 330, 0x118uLL);
      v166[0] = v43;
      sub_1A937B3DC((v0 + 435), (v0 + 260));
      v85 = sub_1A937838C();
      sub_1A937BA74(&v169);
      v170 = v169;
      sub_1A937BA74(v171);
      LOBYTE(v167) = v171[0];
      v137 = 0;
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v77, v79, __dst, v85, &v170, &v167, v166, sub_1A94D8610, (v0 + 2));
      goto LABEL_56;
    }

    v86 = Array<A>.init(ssml:)(v53, v55);
    v87 = v0[736];
    v0[673] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v0[674] = &protocol witness table for <A> [A];
    v0[670] = v86;
    if (v87 >> 62)
    {
      v89 = v0 + 670;
      if (!sub_1A957CE48())
      {
        goto LABEL_43;
      }
    }

    else
    {
      v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v89 = v0 + 670;
      if (!v88)
      {
LABEL_43:
        [v0[734] rate];
        if (v95 != 1.0)
        {
          v96 = v0[734];
          v97 = v0[673];
          v98 = v0[674];
          sub_1A93780F4(v89, v97);
          [v96 rate];
          *&v99 = v99;
          LODWORD(__dst[0]) = LODWORD(v99);
          BYTE4(__dst[0]) = 1;
          sub_1A93B7B04(__dst, v97, v98, v0 + 655);
          sub_1A9378138(v89);
          sub_1A932D070((v0 + 655), v89);
        }

        [v0[734] pitch];
        if (v100 != 1.0)
        {
          v101 = v0[734];
          v102 = v0[673];
          v103 = v0[674];
          sub_1A93780F4(v89, v102);
          [v101 pitch];
          *&v104 = v104;
          static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(__dst, *&v104);
          sub_1A93B7BC4(__dst, v102, v103, v0 + 660);
          sub_1A9378138(v89);
          sub_1A932D070(v0 + 330, v89);
        }

        [v0[734] volume];
        if (v105 != 1.0)
        {
          v106 = v0[734];
          v107 = v0[673];
          v108 = v0[674];
          sub_1A93780F4(v89, v107);
          [v106 volume];
          *&v109 = v109;
          LOBYTE(__dst[0]) = 0;
          TTSMarkupSpeech.volume(_:)(LODWORD(v109), v107, v108, v0 + 665);
          sub_1A9378138(v89);
          sub_1A932D070((v0 + 665), v89);
        }

        v110 = v0 + 680;
        v111 = v0[739];
        if (v111)
        {
          v112 = v0[738];
          sub_1A93780F4(v89, v0[673]);
          TTSMarkupSpeech.language(_:)(v112, v111, v0 + 675);
          sub_1A9378138(v89);
          sub_1A932D070((v0 + 675), v89);
        }

        v113 = v0[735];
        v160 = v0[734];
        v164 = v0[737];
        *(swift_task_alloc() + 16) = v89;
        v0[683] = &type metadata for TTSMarkup.SpeechDocument;
        v0[684] = &protocol witness table for TTSMarkup.SpeechDocument;
        v114 = swift_allocObject();
        v0[680] = v114;
        TTSMarkup.SpeechDocument.init(_:)(sub_1A94D94F0, (v114 + 16));

        v115 = v0[683];
        v116 = v0[684];
        sub_1A93780F4(v110, v115);
        v117 = swift_task_alloc();
        v117[2] = v53;
        v117[3] = v55;
        v117[4] = v113;
        v117[5] = v164;
        v117[6] = v160;
        TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D94F4, v117, v115, &type metadata for TTSMarkup.SpeechText, v116, &protocol witness table for TTSMarkup.SpeechText, v0 + 645);

        if (!v0[648])
        {
          goto LABEL_76;
        }

        v118 = v0[734];

        sub_1A9378138(v110);
        sub_1A932D070((v0 + 645), v110);
        v119 = [v118 jobIdentifier];
        if (v119)
        {
          v120 = v119;
          v121 = sub_1A957C0F8();
          v123 = v122;
        }

        else
        {
          v121 = 0;
          v123 = 0;
        }

        memcpy(v0 + 540, v0 + 435, 0x118uLL);
        nullsub_23();
        memcpy(v166, v0 + 540, sizeof(v166));
        v167 = v43;
        v124 = swift_task_alloc();
        *(v124 + 16) = v110;
        sub_1A937B3DC((v0 + 435), (v0 + 505));
        v125 = sub_1A937838C();
        sub_1A937BA74(&v168);
        v169 = v168;
        sub_1A937BA74(&v170);
        v171[0] = v170;
        v137 = v124;
        CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v121, v123, v166, v125, &v169, v171, &v167, sub_1A94D9C04, __dst);

        memcpy(v0 + 2, __dst, 0x179uLL);
        sub_1A9378138(v110);
        sub_1A9378138(v89);
LABEL_56:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v127 = Strong;
          [Strong speechRequestDidStart_];
        }

        v128 = [v0[734] voiceSettings];
        if (v128)
        {
          v129 = v128;
          sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
          v130 = sub_1A957C038();

          v131 = sub_1A94D861C(v130);

          if (v131[2])
          {
            sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
            v132 = sub_1A957D128();
          }

          else
          {
            v132 = MEMORY[0x1E69E7CC8];
          }

          __dst[0] = v132;

          sub_1A94D8D10(v133, 1, __dst);

          v134 = __dst[0];

          v0[41] = v134;
        }

        v135 = v0[735];
        if ([v0[734] synthesizeSilently])
        {
          (*((*MEMORY[0x1E69E7D40] & *v135) + 0x4C8))(v0 + 2);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v135) + 0x4B0))(v0 + 2);
        }

        sub_1A957C6F8();
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v0[748] = 0;
        v136 = swift_task_alloc();
        v0[749] = v136;
        *v136 = v0;
        v136[1] = sub_1A94D787C;
        v4 = v0[740];
        v1 = (v0 + 685);
        v5 = v0 + 728;
        v2 = 0;
        v3 = 0;

        return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
      }
    }

    v90 = v0[734];
    v91 = v0[673];
    v92 = v0[674];
    v163 = *(v0 + 368);
    sub_1A93780F4(v89, v91);
    v93 = swift_task_alloc();
    *(v93 + 16) = v163;
    *(v93 + 32) = v90;
    v0[653] = v91;
    v0[654] = v92;
    v94 = sub_1A93981E4(v0 + 650);
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D9434, v93, v91, &type metadata for TTSMarkup.SpeechText, v92, &protocol witness table for TTSMarkup.SpeechText, v94);

    sub_1A9378138(v89);
    sub_1A932D070(v0 + 325, v89);
    goto LABEL_43;
  }

  v1 = [v0[734] voice];
  if (!v1)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
  }

  v61 = v1;
  v62 = [v1 identifier];

  v63 = sub_1A957C0F8();
  v65 = v64;

  sub_1A94D93E0();
  v66 = swift_allocError();
  *v67 = v63;
  v67[1] = v65;
  swift_willThrow();
LABEL_32:
  swift_beginAccess();
  v80 = swift_unknownObjectWeakLoadStrong();
  if (v80)
  {
    v81 = v80;
    v82 = v0[734];
    v83 = sub_1A957AEE8();
    [v81 speechRequest:v82 didStopWithSuccess:0 phonemesSpoken:0 error:v83];
  }

  else
  {
  }

  (v0[732])();

  v84 = v0[1];

  return v84();
}

uint64_t sub_1A94D66A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94D67C0, 0, 0);
}

uint64_t sub_1A94D67C0()
{
  v142 = v0;
  memcpy((v0 + 1520), (v0 + 400), 0x118uLL);
  memcpy((v0 + 2360), (v0 + 1520), 0x118uLL);
  if (sub_1A932D058(v0 + 2360) != 1)
  {
    v130 = *(v0 + 2632);
    v132 = *(v0 + 2624);
    v128 = *(v0 + 2548);
    v129 = *(v0 + 2553);
    v126 = *(v0 + 2544);
    v127 = *(v0 + 2552);
    v124 = *(v0 + 2512);
    v125 = *(v0 + 2504);
    v122 = *(v0 + 2456);
    v123 = *(v0 + 2488);
    v121 = *(v0 + 2472);
    v17 = *(v0 + 2480);
    v18 = *(v0 + 2416);
    v19 = *(v0 + 2400);
    v20 = *(v0 + 2408);
    v116 = *(v0 + 2384);
    v21 = *(v0 + 2360);
    memcpy((v0 + 2920), (v0 + 1520), 0x118uLL);
    v119 = *(v0 + 2592);
    v120 = *(v0 + 2560);
    v117 = *(v0 + 2608);
    v118 = *(v0 + 2576);
    v22 = *(v0 + 2536);
    v114 = *(v0 + 2424);
    v115 = *(v0 + 2520);
    v112 = *(v0 + 2368);
    v113 = *(v0 + 2440);
    sub_1A937B3DC(v0 + 2920, v0 + 3200);
    memcpy((v0 + 4880), (v0 + 1520), 0x118uLL);
    v23 = *(v0 + 5872);
    *(v0 + 3480) = v21;
    *(v0 + 3488) = v112;
    *(v0 + 3504) = v116;
    *(v0 + 3520) = v19;
    *(v0 + 3528) = v20;
    *(v0 + 3536) = v18;
    *(v0 + 3560) = v113;
    *(v0 + 3544) = v114;
    *(v0 + 3576) = v122;
    *(v0 + 3592) = v121;
    *(v0 + 3600) = v17;
    *(v0 + 3608) = v123;
    *(v0 + 3624) = v125;
    *(v0 + 3632) = v124;
    *(v0 + 3640) = v115;
    *(v0 + 3656) = v22;
    *(v0 + 3664) = v126;
    *(v0 + 3668) = v128;
    *(v0 + 3672) = v127;
    *(v0 + 3673) = v129;
    *(v0 + 3696) = v118;
    *(v0 + 3680) = v120;
    *(v0 + 3728) = v117;
    *(v0 + 3712) = v119;
    *(v0 + 3744) = v132;
    *(v0 + 3752) = v130;
    sub_1A9391BAC(v0 + 4600, v0 + 3760, &unk_1EB387BC0, &qword_1A9587E30);
    LOBYTE(v23) = [v23 ignoreSubstitutions];
    sub_1A937829C(&qword_1EB388150, &qword_1A9595D90);
    if (v23)
    {
      v24 = (v0 + 5840);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A95873F0;
      *(v25 + 32) = *sub_1A937929C();
      *(v25 + 40) = *sub_1A93792B4();
      *(v0 + 5848) = v25;
    }

    else
    {
      v24 = (v0 + 5816);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A9588500;
      *(v26 + 32) = *sub_1A937929C();
      *(v26 + 40) = *sub_1A93792A8();
      *(v26 + 48) = *sub_1A93792B4();
      *(v0 + 5832) = v26;
    }

    sub_1A937B594();
    sub_1A937829C(&qword_1EB388158, &qword_1A9595D98);
    sub_1A93B744C(&qword_1EB388160, &qword_1EB388158, &qword_1A9595D98, MEMORY[0x1E69E6328]);
    sub_1A957CE08();
    v27 = *v24;
    v28 = [*(v0 + 5872) speechStringType];
    v29 = *(v0 + 5872);
    if (v28 == 1)
    {
      v30 = [v29 jobIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1A957C0F8();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v1 = [*(v0 + 5872) text];
      if (!v1)
      {
        goto LABEL_62;
      }

      v47 = v1;
      v48 = sub_1A957C0F8();
      v50 = v49;

      memcpy((v0 + 1800), (v0 + 3480), 0x118uLL);
      nullsub_23();
      memcpy(__dst, (v0 + 1800), 0x118uLL);
      v136[0] = v27;
      sub_1A937B3DC(v0 + 3480, v0 + 960);
      v51 = sub_1A937838C();
      sub_1A937BA74(&v139);
      v140 = v139;
      sub_1A937BA74(v141);
      LOBYTE(v137) = v141[0];
      CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, v32, v34, v48, v50, v51, &v140, &v137, v0 + 16, v136);
LABEL_46:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v101 = Strong;
        [Strong speechRequestDidStart_];
      }

      v102 = [*(v0 + 5872) voiceSettings];
      if (v102)
      {
        v103 = v102;
        sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
        v104 = sub_1A957C038();

        v105 = sub_1A94D861C(v104);

        if (v105[2])
        {
          sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
          v106 = sub_1A957D128();
        }

        else
        {
          v106 = MEMORY[0x1E69E7CC8];
        }

        __dst[0] = v106;

        sub_1A94D8D10(v107, 1, __dst);

        v108 = __dst[0];

        *(v0 + 328) = v108;
      }

      v109 = *(v0 + 5880);
      if ([*(v0 + 5872) synthesizeSilently])
      {
        (*((*MEMORY[0x1E69E7D40] & *v109) + 0x4C8))(v0 + 16);
      }

      else
      {
        (*((*MEMORY[0x1E69E7D40] & *v109) + 0x4B0))(v0 + 16);
      }

      sub_1A957C6F8();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      *(v0 + 5984) = 0;
      v110 = swift_task_alloc();
      *(v0 + 5992) = v110;
      *v110 = v0;
      v110[1] = sub_1A94D787C;
      v4 = *(v0 + 5920);
      v1 = (v0 + 5480);
      v5 = v0 + 5824;
      v2 = 0;
      v3 = 0;

      return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
    }

    v35 = [v29 text];
    if (!v35)
    {
      sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
      sub_1A94D93E0();
      v11 = swift_allocError();
      *v52 = 0;
      v52[1] = 0;
      swift_willThrow();
      sub_1A937B48C(v0 + 3480);
      goto LABEL_4;
    }

    v36 = v35;
    v37 = sub_1A957C0F8();
    v39 = v38;
    v40 = sub_1A937D62C();
    swift_beginAccess();
    v41 = *v40;
    v42 = [v41 firstMatchInString:v36 options:0 range:{0, sub_1A957C238()}];

    if (v42)
    {
      [v42 range];
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v44 == sub_1A957C238())
    {
      v53 = *(v0 + 5872);

      v54 = [v53 jobIdentifier];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1A957C0F8();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0;
      }

      memcpy((v0 + 2640), (v0 + 3480), 0x118uLL);
      nullsub_23();
      memcpy(__dst, (v0 + 2640), 0x118uLL);
      v136[0] = v27;
      sub_1A937B3DC(v0 + 3480, v0 + 2080);
      v59 = sub_1A937838C();
      sub_1A937BA74(&v139);
      v140 = v139;
      sub_1A937BA74(v141);
      LOBYTE(v137) = v141[0];
      v111 = 0;
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v56, v58, __dst, v59, &v140, &v137, v136, sub_1A94D8610, v0 + 16);
      goto LABEL_46;
    }

    v60 = Array<A>.init(ssml:)(v37, v39);
    v61 = *(v0 + 5888);
    *(v0 + 5384) = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    *(v0 + 5392) = &protocol witness table for <A> [A];
    *(v0 + 5360) = v60;
    if (v61 >> 62)
    {
      v63 = (v0 + 5360);
      if (!sub_1A957CE48())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v63 = (v0 + 5360);
      if (!v62)
      {
LABEL_33:
        [*(v0 + 5872) rate];
        if (v69 != 1.0)
        {
          v70 = *(v0 + 5872);
          v71 = *(v0 + 5384);
          v72 = *(v0 + 5392);
          sub_1A93780F4(v63, v71);
          [v70 rate];
          *&v73 = v73;
          LODWORD(__dst[0]) = LODWORD(v73);
          BYTE4(__dst[0]) = 1;
          sub_1A93B7B04(__dst, v71, v72, (v0 + 5240));
          sub_1A9378138(v63);
          sub_1A932D070((v0 + 5240), v63);
        }

        [*(v0 + 5872) pitch];
        if (v74 != 1.0)
        {
          v75 = *(v0 + 5872);
          v76 = *(v0 + 5384);
          v77 = *(v0 + 5392);
          sub_1A93780F4(v63, v76);
          [v75 pitch];
          *&v78 = v78;
          static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(__dst, *&v78);
          sub_1A93B7BC4(__dst, v76, v77, (v0 + 5280));
          sub_1A9378138(v63);
          sub_1A932D070((v0 + 5280), v63);
        }

        [*(v0 + 5872) volume];
        if (v79 != 1.0)
        {
          v80 = *(v0 + 5872);
          v81 = *(v0 + 5384);
          v82 = *(v0 + 5392);
          sub_1A93780F4(v63, v81);
          [v80 volume];
          *&v83 = v83;
          LOBYTE(__dst[0]) = 0;
          TTSMarkupSpeech.volume(_:)(LODWORD(v83), v81, v82, (v0 + 5320));
          sub_1A9378138(v63);
          sub_1A932D070((v0 + 5320), v63);
        }

        v84 = (v0 + 5440);
        v85 = *(v0 + 5912);
        if (v85)
        {
          v86 = *(v0 + 5904);
          sub_1A93780F4(v63, *(v0 + 5384));
          v84 = (v0 + 5440);
          TTSMarkupSpeech.language(_:)(v86, v85, (v0 + 5400));
          sub_1A9378138(v63);
          sub_1A932D070((v0 + 5400), v63);
        }

        v87 = *(v0 + 5880);
        v131 = *(v0 + 5872);
        v134 = *(v0 + 5896);
        *(swift_task_alloc() + 16) = v63;
        *(v0 + 5464) = &type metadata for TTSMarkup.SpeechDocument;
        *(v0 + 5472) = &protocol witness table for TTSMarkup.SpeechDocument;
        v88 = swift_allocObject();
        *(v0 + 5440) = v88;
        TTSMarkup.SpeechDocument.init(_:)(sub_1A94D94F0, (v88 + 16));

        v89 = *(v0 + 5464);
        v90 = *(v0 + 5472);
        sub_1A93780F4(v84, v89);
        v91 = swift_task_alloc();
        v91[2] = v37;
        v91[3] = v39;
        v91[4] = v87;
        v91[5] = v134;
        v91[6] = v131;
        TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D94F4, v91, v89, &type metadata for TTSMarkup.SpeechText, v90, &protocol witness table for TTSMarkup.SpeechText, (v0 + 5160));

        if (!*(v0 + 5184))
        {
          goto LABEL_63;
        }

        v92 = *(v0 + 5872);

        sub_1A9378138(v84);
        sub_1A932D070((v0 + 5160), v84);
        v93 = [v92 jobIdentifier];
        if (v93)
        {
          v94 = v93;
          v95 = sub_1A957C0F8();
          v97 = v96;
        }

        else
        {
          v95 = 0;
          v97 = 0;
        }

        memcpy((v0 + 4320), (v0 + 3480), 0x118uLL);
        nullsub_23();
        memcpy(v136, (v0 + 4320), sizeof(v136));
        v137 = v27;
        v98 = swift_task_alloc();
        *(v98 + 16) = v84;
        sub_1A937B3DC(v0 + 3480, v0 + 4040);
        v99 = sub_1A937838C();
        sub_1A937BA74(&v138);
        v139 = v138;
        sub_1A937BA74(&v140);
        v141[0] = v140;
        v111 = v98;
        CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(v95, v97, v136, v99, &v139, v141, &v137, sub_1A94D9C04, __dst);

        memcpy((v0 + 16), __dst, 0x179uLL);
        sub_1A9378138(v84);
        sub_1A9378138(v63);
        goto LABEL_46;
      }
    }

    v64 = *(v0 + 5872);
    v65 = *(v0 + 5384);
    v66 = *(v0 + 5392);
    v133 = *(v0 + 5888);
    sub_1A93780F4(v63, v65);
    v67 = swift_task_alloc();
    *(v67 + 16) = v133;
    *(v67 + 32) = v64;
    *(v0 + 5224) = v65;
    *(v0 + 5232) = v66;
    v68 = sub_1A93981E4((v0 + 5200));
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94D9434, v67, v65, &type metadata for TTSMarkup.SpeechText, v66, &protocol witness table for TTSMarkup.SpeechText, v68);

    sub_1A9378138(v63);
    sub_1A932D070((v0 + 5200), v63);
    goto LABEL_33;
  }

  v1 = [*(v0 + 5872) voice];
  if (!v1)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v1, v2, v3, v4, v5);
  }

  v6 = v1;
  v7 = [v1 identifier];

  v8 = sub_1A957C0F8();
  v10 = v9;

  sub_1A94D93E0();
  v11 = swift_allocError();
  *v12 = v8;
  v12[1] = v10;
  swift_willThrow();
LABEL_4:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 5872);
    v16 = sub_1A957AEE8();
    [v14 speechRequest:v15 didStopWithSuccess:0 phonemesSpoken:0 error:v16];
  }

  else
  {
  }

  (*(v0 + 5856))();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1A94D787C()
{

  if (v0)
  {
    v1 = sub_1A94D8124;
  }

  else
  {
    v1 = sub_1A94D798C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A94D798C()
{
  v1 = *(v0 + 5496);
  if (v1 >> 3 != 0xFFFFFFFF)
  {
    v5 = *(v0 + 5480);
    v6 = *(v0 + 5488);
    v7 = *(v0 + 5504);
    if (v1 >> 61 != 1)
    {
      if (v1 >> 61 == 2)
      {
        v8 = [*(v0 + 5872) audioBufferCallback];
        if (v8)
        {
          v9 = v8;
          v10 = *(v0 + 5984);
          v11 = [v5 format];

          (v9)[2](v9, v5);
          sub_1A9410F4C(v5, v6, v1, v7);
          _Block_release(v9);
          *(v0 + 5984) = v11;
          goto LABEL_33;
        }
      }

      goto LABEL_32;
    }

    v21 = *(v0 + 5496);
    if (*(v0 + 5496))
    {
      if (v21 == 3)
      {
        v28 = objc_allocWithZone(TTSGenericMarker);
        sub_1A9410FB8(v5, v6, v1);
        v23 = [v28 init];
        v24 = sub_1A957C0C8();
        [v23 setName_];
        goto LABEL_23;
      }

      if (v21 == 4)
      {
        v22 = objc_allocWithZone(TTSPhonemeMarker);
        sub_1A9410FB8(v5, v6, v1);
        v23 = [v22 init];
        v24 = sub_1A957C0C8();
        [v23 setPhoneme_];
LABEL_23:

        [v23 setByteOffset_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v30 = Strong;
          [Strong speechRequest:*(v0 + 5872) withMarker:v23];
          sub_1A9410F4C(v5, v6, v1, v7);
          sub_1A9410F4C(v5, v6, v1, v7);

          goto LABEL_33;
        }

        sub_1A9410F4C(v5, v6, v1, v7);
      }
    }

    else
    {
      v31 = *(v0 + 5872);
      sub_1A9410FB8(*(v0 + 5480), *(v0 + 5488), *(v0 + 5496));
      if ([v31 speechStringType] == 1)
      {
        v32 = *(v0 + 5872);
        v33 = [objc_allocWithZone(TTSWordMarker) init];
        [v33 setByteOffset_];
        *(v0 + 5704) = v5;
        *(v0 + 5712) = v6;
        v34 = [v32 text];
        if (!v34)
        {
          __break(1u);
          return MEMORY[0x1EEE6DB90](v34, v35, v36, v37, v38);
        }

        v39 = v34;
        v40 = *(v0 + 5880);
        v41 = sub_1A957C0F8();
        v43 = v42;

        *(v0 + 5720) = v41;
        *(v0 + 5728) = v43;
        sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
        sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0, MEMORY[0x1E69E66D8]);
        sub_1A93820F4();
        v44 = sub_1A957CC38();
        v46 = [v33 setWordRange_];
        v47 = MEMORY[0x1E69E7D40];
        v48 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x530))(v46);
        if (v48)
        {
          v50 = v49;
          v51 = v48;
          v48();
          sub_1A93CF5C8(v51, v50);
        }

        (*((*v47 & **(v0 + 5880)) + 0x538))(0, 0);
        v52 = swift_unknownObjectWeakLoadStrong();
        if (v52)
        {
          v53 = v52;
          [v52 speechRequest:*(v0 + 5872) withMarker:v33];
          sub_1A9410F4C(v5, v6, v1, v7);

          goto LABEL_33;
        }
      }
    }

LABEL_32:
    sub_1A9410F4C(v5, v6, v1, v7);
LABEL_33:
    v54 = swift_task_alloc();
    *(v0 + 5992) = v54;
    *v54 = v0;
    v54[1] = sub_1A94D787C;
    v37 = *(v0 + 5920);
    v34 = (v0 + 5480);
    v38 = v0 + 5824;
    v35 = 0;
    v36 = 0;

    return MEMORY[0x1EEE6DB90](v34, v35, v36, v37, v38);
  }

  (*(*(v0 + 5928) + 8))(*(v0 + 5936), *(v0 + 5920));
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 speechRequest:*(v0 + 5872) didStopWithSuccess:1 phonemesSpoken:0 error:0];
  }

  if (TTSSpeechUnitTestingMode())
  {
    v4 = *(v0 + 5984);
    (*(*(v0 + 5952) + 8))(*(v0 + 5960), *(v0 + 5944));
    sub_1A937B48C(v0 + 3480);
    sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
  }

  else
  {
    v12 = [*(v0 + 5872) audioBufferCallback];
    v13 = *(v0 + 5984);
    if (v12)
    {
      v14 = v12;
      v15 = *(v0 + 5960);
      v16 = *(v0 + 5952);
      v17 = *(v0 + 5944);
      if (v13)
      {
        v18 = objc_allocWithZone(MEMORY[0x1E6958438]);
        v19 = v13;
        v20 = [v18 initWithPCMFormat:v19 frameCapacity:0];
        (v14)[2](v14, v20);
        _Block_release(v14);

        sub_1A937B48C(v0 + 3480);
        sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
        (*(v16 + 8))(v15, v17);
      }

      else
      {
        (*(v16 + 8))(*(v0 + 5960), *(v0 + 5944));
        _Block_release(v14);
        sub_1A937B48C(v0 + 3480);
        sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
      }
    }

    else
    {
      (*(*(v0 + 5952) + 8))(*(v0 + 5960), *(v0 + 5944));
      sub_1A937B48C(v0 + 3480);
      sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
    }
  }

  v25 = sub_1A9410E64(v0 + 16);
  (*(v0 + 5856))(v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A94D8124()
{
  v1 = *(v0 + 5960);
  v2 = *(v0 + 5952);
  v3 = *(v0 + 5944);
  v4 = *(v0 + 5936);
  v5 = *(v0 + 5928);
  v6 = *(v0 + 5920);

  sub_1A937B48C(v0 + 3480);
  sub_1A937B960(v0 + 4880, &unk_1EB387BC0, &qword_1A9587E30);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 5824);
  sub_1A9410E64(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(v0 + 5872);
    v11 = sub_1A957AEE8();
    [v9 speechRequest:v10 didStopWithSuccess:0 phonemesSpoken:0 error:v11];
  }

  else
  {
  }

  (*(v0 + 5856))();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A94D82B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v38 = a7;
  v37 = a6;
  v45 = a4;
  v46 = type metadata accessor for CoreSynthesizer.Substitution(0);
  result = MEMORY[0x1EEE9AC00](v46);
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 >> 62)
  {
    goto LABEL_14;
  }

  v13 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (v13 >= 1)
    {
      v14 = 0;
      v43 = a5 & 0xC000000000000001;
      v36 = a5;
      v35 = a3;
      v42 = a2;
      v41 = a1;
      v40 = v13;
      while (1)
      {
        v24 = v43 ? MEMORY[0x1AC585DE0](v14, a5) : *(a5 + 8 * v14 + 32);
        v25 = v24;
        [v24 replacementRange];
        v26 = sub_1A957C338();
        v27 = sub_1A957C338();
        if (v27 >> 14 < v26 >> 14)
        {
          break;
        }

        v28 = v27;
        v29 = sub_1A957C3B8();
        v30 = MEMORY[0x1AC585090](v29);
        v32 = v31;

        v33 = v44;
        sub_1A94C5F8C(v30, v32, v44);

        sub_1A944A98C(v33 + *(v46 + 24), &v52);
        sub_1A94D9A68(v33);
        sub_1A944A98C(&v52, &v47);
        if (v48[24] == 1)
        {
          sub_1A94D9AC4(&v47);
        }

        else
        {
          sub_1A932D070(&v47, v49);
          v15 = v50;
          v16 = v51;
          v39 = sub_1A93780F4(v49, v50);
          v17 = swift_allocObject();
          v18 = v37;
          v17[2] = v25;
          v17[3] = v18;
          v19 = v38;
          v17[4] = v38;
          *&v48[8] = v15;
          *&v48[16] = v16;
          v20 = sub_1A93981E4(&v47);
          v21 = v25;

          v22 = v19;
          a3 = v35;
          TTSMarkupSpeech.tap(_:)(sub_1A94D9B18, v17, v15, v16, v20);
          a5 = v36;

          sub_1A94D9AC4(&v52);
          v48[24] = 0;
          v52 = v47;
          v53[0] = *v48;
          *(v53 + 9) = *&v48[9];
          sub_1A9378138(v49);
        }

        v23 = v40;
        ++v14;
        a3(v26, v28, &v52);

        result = sub_1A94D9AC4(&v52);
        a2 = v42;
        a1 = v41;
        if (v23 == v14)
        {
          return result;
        }
      }

      __break(1u);
LABEL_14:
      result = sub_1A957CE48();
      v13 = result;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1A94D861C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1A94D8BAC(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_1A957CE18();
  v6 = result;
  v7 = 0;
  v27 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v26 = *v10;
    v12 = *(*(a1 + 56) + 8 * v6);

    result = [v12 floatValue];
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      result = sub_1A94D8BAC((v14 > 1), v15 + 1, 1);
      v13 = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 24 * v15;
    *(v16 + 32) = v26;
    *(v16 + 40) = v11;
    *(v16 + 48) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1A932D0A4(v6, v27, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1A932D0A4(v6, v27, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CoreSynthesizer.setLegacySubstitutions(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_1A94C6720(a1._rawValue);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3B0);

  v3(v2);
}

uint64_t sub_1A94D8ABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A957CE48();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A93B6054(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A94D908C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1A94D8BAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A94D8BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A94D8BCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB388168, &qword_1A9595DA0);
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
    sub_1A937829C(&qword_1EB388170, &qword_1A9595DA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A94D8D10(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a3;

  v11 = sub_1A937A490(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1A944FB30(v16, v6 & 1);
    v11 = sub_1A937A490(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1A957D438();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1A9450338();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 4 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = (a1 + 72);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_1A937A490(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_1A944FB30(v32, 1);
          v28 = sub_1A937A490(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 4 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 6;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1A957CF08();
  MEMORY[0x1AC585140](0xD00000000000001BLL, 0x80000001A95C47D0);
  sub_1A957D058();
  MEMORY[0x1AC585140](39, 0xE100000000000000);
  sub_1A957D0A8();
  __break(1u);
}

uint64_t sub_1A94D908C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A93B744C(&qword_1EB388180, &qword_1EB388178, &unk_1A9595DD8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB388178, &unk_1A9595DD8);
            v9 = sub_1A93B62EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A9387478(0, &qword_1EB385F18, off_1E787F2F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94D9240()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A9382328;

  return sub_1A94D5068(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1A94D9318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return sub_1A938F98C(a1, v4);
}

unint64_t sub_1A94D93E0()
{
  result = qword_1EB388148;
  if (!qword_1EB388148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388148);
  }

  return result;
}

uint64_t sub_1A94D9434@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;

  v7 = v5;
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94D9A5C, a1);
}

double sub_1A94D94F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = v4;
  v12[7] = v3;
  v12[8] = v6;
  v12[9] = v5;
  v12[10] = v7;

  v13 = v6;

  v14 = v7;
  TTSMarkup.SpeechText.word(_:)(sub_1A94D95F4, v12, v18);

  v15 = v18[1];
  *a2 = v18[0];
  *(a2 + 8) = v15;
  result = *&v19;
  *(a2 + 16) = v19;
  return result;
}

void sub_1A94D95F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = v5[3];
  v11 = v5[7];
  v40 = v5[6];
  v12 = v5[8];
  v38 = v5[10];
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v42)
  {
    return;
  }

  v15 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  if ((a1 & 0xC) == 4 << v15)
  {
    a1 = sub_1A938156C(a1, a3, a4);
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_6:
      v17 = a1 >> 16;
      v18 = (a1 >> 16) + v41;
      if (!__OFADD__(a1 >> 16, v41))
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v17 = sub_1A938156C(a2, a3, a4);
      a2 = v17;
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      v21 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(a4) & 0xF;
      }

      if (v21 < a2 >> 16)
      {
        goto LABEL_49;
      }

      v19 = sub_1A957C2F8();
      goto LABEL_22;
    }
  }

  else if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v20 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a4) & 0xF;
  }

  if (v20 < a1 >> 16)
  {
LABEL_57:
    __break(1u);
    return;
  }

  v17 = sub_1A957C2F8();
  v18 = v17 + v41;
  if (__OFADD__(v17, v41))
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((a2 & 0xC) == v16)
  {
    goto LABEL_17;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v19 = a2 >> 16;
LABEL_22:
  v14 = v19 + v41;
  v10 = v40;
  if (__OFADD__(v19, v41))
  {
    __break(1u);
  }

  else
  {
    v22 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v22 = v40 & 0xFFFFFFFFFFFFLL;
    }

    a3 = v22 << 16;
    if ((v11 & 0x1000000000000000) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v22 < v14)
      {
        goto LABEL_32;
      }

      a4 = (v14 << 16) | 4;
      if ((v18 & 0x8000000000000000) != 0)
      {
        while (1)
        {
          if (!v22)
          {
            goto LABEL_34;
          }

          __break(1u);
LABEL_31:
          if (v22)
          {
            break;
          }

LABEL_32:
          a4 = a3 | 7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_33:
      if (v22 >= v18)
      {
        v17 = (v18 << 16) | 4;
        goto LABEL_36;
      }

LABEL_34:
      v17 = a3 | 7;
      goto LABEL_36;
    }
  }

  a4 = sub_1A957C2D8();
  v36 = v35;
  v17 = sub_1A957C2D8();
  if ((v36 & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((v40 & 0x800000000000000) != 0)
  {
    a4 = a3 | 7;
    if ((v14 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v37 = a3 | 0xB;
  a4 = a3 | 0xB;
  if (v14)
  {
    goto LABEL_53;
  }

LABEL_36:
  while (a4 >> 14 < v17 >> 14)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    if (v14)
    {
      if ((v10 & 0x800000000000000) != 0)
      {
        goto LABEL_34;
      }

      v37 = a3 | 0xB;
LABEL_53:
      v17 = v37;
    }
  }

  sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
  sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0, MEMORY[0x1E69E66D8]);
  sub_1A93820F4();
  v23 = sub_1A957CC38();
  v25 = v24;
  v26 = [objc_allocWithZone(TTSWordMarker) init];
  [v26 setByteOffset_];
  v27 = [v26 setWordRange_];
  v28 = MEMORY[0x1E69E7D40];
  v29 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x530))(v27);
  if (v29)
  {
    v31 = v30;
    v32 = v29;
    v29();
    sub_1A93CF5C8(v32, v31);
  }

  (*((*v28 & *v12) + 0x538))(0, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    [Strong speechRequest:v38 withMarker:v26];
  }
}

uint64_t sub_1A94D9A68(uint64_t a1)
{
  v2 = type metadata accessor for CoreSynthesizer.Substitution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A94D9B18(uint64_t a1)
{
  if ((*(a1 + 16) & 0xE0000000000000FFLL) == 0x2000000000000000)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 32);
    v4 = *(a1 + 24);
    v5 = [objc_allocWithZone(TTSWordMarker) init];
    [v5 setByteOffset_];
    v6 = [v2 replacementRange];
    [v5 setWordRange_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong speechRequest:v3 withMarker:v5];
    }
  }
}

uint64_t sub_1A94D9C08@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1A957CBC8();
  v5 = sub_1A94D9D00(v4);
  if (!v5)
  {

    goto LABEL_6;
  }

  v6 = v5;
  sub_1A94D9D70(v4);
  v8 = v7;
  v10 = v9;

  if ((v10 & 1) != 0 || v8 < a2)
  {

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1A957C0F8();
  sub_1A957B108();

  v11 = 0;
LABEL_7:
  v12 = sub_1A957B308();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

void *sub_1A94D9D00(uint64_t a1)
{
  v2 = sub_1A957CE18();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1A94DFB48(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

double sub_1A94D9D70(uint64_t a1)
{
  v2 = sub_1A957CE18();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1A94DF9A4(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t type metadata accessor for TTSSegmentGenerator.Segment(uint64_t a1)
{
  result = qword_1EB3A07C0;
  if (!qword_1EB3A07C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A94D9E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94D9EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94D9EF8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_1A94D9F84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TTSSegmentGenerator.SwitchMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A94DA060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94DA128(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t TTSSegmentGenerator.__allocating_init(mode:tokenUnit:locales:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93916A8;

  return TTSSegmentGenerator.init(mode:tokenUnit:locales:)(a1, a2, a3);
}

uint64_t TTSSegmentGenerator.init(mode:tokenUnit:locales:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94DA254, 0, 0);
}

uint64_t sub_1A94DA254()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = 20;
  *(v3 + 64) = sub_1A94DA344(v2);

  v6 = sub_1A94DA7A0(v5);

  *(v3 + 72) = v6;
  type metadata accessor for TTSStringTagger();
  *(v3 + 40) = TTSStringTagger.__allocating_init(locales:)(v2);
  v7 = [objc_allocWithZone(MEMORY[0x1E6977A60]) init];
  *(v3 + 24) = v1;
  *(v3 + 48) = v7;
  *(v3 + 56) = v4;
  v8 = *(v0 + 8);
  v9 = *(v0 + 32);

  return v8(v9);
}

uint64_t sub_1A94DA344(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v32 - v3;
  v45 = sub_1A957B2E8();
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v32 - v12;
  v13 = sub_1A957B308();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v19 = *(v14 + 16);
  v18 = v14 + 16;
  v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v42 = *(v18 + 56);
  v43 = v19;
  v40 = (v7 + 48);
  v41 = (v4 + 8);
  v33 = (v7 + 16);
  v34 = (v7 + 32);
  v32 = (v7 + 8);
  v39 = (v18 - 8);
  v21 = MEMORY[0x1E69E7CD0];
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(v16, v20, v13);
  while (1)
  {
    v47 = v21;

    v22 = v44;
    sub_1A957B2F8();
    v23 = v46;
    sub_1A957B2B8();
    (*v41)(v22, v45);
    if ((*v40)(v23, 1, v6) == 1)
    {
      (*v39)(v16, v13);

      sub_1A937B960(v23, &qword_1EB386A68, &qword_1A9587F40);
    }

    else
    {
      v24 = v18;
      v25 = v13;
      v26 = v36;
      (*v34)(v36, v23, v6);
      v27 = v38;
      (*v33)(v38, v26, v6);
      v28 = v37;
      sub_1A93A3F0C(v37, v27);

      v29 = *v32;
      (*v32)(v28, v6);
      v30 = v26;
      v13 = v25;
      v18 = v24;
      v16 = v35;
      v29(v30, v6);
      (*v39)(v16, v13);
    }

    v21 = v47;
    v20 += v42;
    if (!--v17)
    {
      break;
    }

    v43(v16, v20, v13);
  }

  return v21;
}

uint64_t sub_1A94DA7A0(uint64_t a1)
{
  v2 = sub_1A957B188();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v17[1] = v3 + 8;
  v17[2] = v3 + 16;
  v18 = a1;

  v11 = 0;
  for (i = MEMORY[0x1E69E7CD0]; v8; i = v19)
  {
    v13 = v11;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(v18 + 48) + *(v3 + 72) * (v14 | (v13 << 6)), v2);
    v19 = i;

    v16 = sub_1A94DE530(v15);
    sub_1A94DE788(v16);

    result = (*(v3 + 8))(v5, v2);
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return i;
    }

    v8 = *(a1 + 56 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94DA988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v46 = a1;
  v40 = a4;
  v6 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v43 = *(v6 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v35 - v7;
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v35 - v9;
  v10 = sub_1A937829C(&qword_1EB388188, &qword_1A9595E00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v35 = sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v35);
  v37 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  type metadata accessor for StreamingTokenizer(0);
  v19 = *(v4 + 56);
  v39 = a2;

  v20 = sub_1A93F87C4(v46, a2, v19);
  type metadata accessor for TTSSegmentGenerator.Segment(0);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8650], v10);
  sub_1A957C698();
  (*(v11 + 8))(v13, v10);

  v21 = v35;
  v36 = v18;
  sub_1A957C6A8();
  v22 = sub_1A957C688();
  (*(*(v22 - 8) + 56))(v45, 1, 1, v22);
  v23 = v37;
  v24 = v18;
  v25 = v21;
  (*(v14 + 16))(v37, v24, v21);
  v26 = v41;
  sub_1A9391BAC(v44, v41, &qword_1EB386A68, &qword_1A9587F40);
  v27 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v28 = (v15 + *(v43 + 80) + v27) & ~*(v43 + 80);
  v29 = (v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v38;
  *(v30 + 4) = v20;
  *(v30 + 5) = v31;
  (*(v14 + 32))(&v30[v27], v23, v25);
  sub_1A94D9E3C(v26, &v30[v28]);
  v32 = &v30[v29];
  v33 = v39;
  *v32 = v46;
  *(v32 + 1) = v33;

  sub_1A93C4B70(0, 0, v45, &unk_1A9595E18, v30);

  return (*(v14 + 8))(v36, v25);
}

uint64_t sub_1A94DAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v16;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_1A957B2E8();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v10 = sub_1A957B308();
  v8[35] = v10;
  v8[36] = *(v10 - 8);
  v8[37] = swift_task_alloc();
  v11 = sub_1A957B188();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = type metadata accessor for TTSSegmentGenerator.Segment(0);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB3881F8, &qword_1A9596120);
  v8[56] = v12;
  v8[57] = *(v12 - 8);
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v13 = sub_1A937829C(&qword_1EB387010, &qword_1A958B000);
  v8[60] = v13;
  v8[61] = *(v13 - 8);
  v8[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94DB1D8, 0, 0);
}

uint64_t sub_1A94DB1D8()
{
  (*(**(v0 + 184) + 128))();
  *(v0 + 504) = 0;
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_1A94DB2B0;
  v2 = *(v0 + 480);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1A94DB2B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94DB3AC, 0, 0);
}

uint64_t sub_1A94DB3AC()
{
  v179 = v0[2];
  v1 = v0[7];
  if (!v1)
  {
LABEL_9:
    (*(v0[61] + 8))(v0[62], v0[60]);
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6C8();

    v17 = v0[1];

    return v17();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[24];
  v174 = v0 + 2;
  if (!*(v6 + 24))
  {
    v32 = v0[3];
    v33 = v0[7];
    v34 = v0[59];
    v35 = v201[57];
    v204 = v201[56];
    v36 = v201[55];
    v37 = v201[53];
    (*(v201[39] + 56))(&v36[*(v37 + 24)], 1, 1, v201[38]);
    *v36 = v2;
    *(v36 + 1) = v4;
    *(v36 + 2) = v5;
    *(v36 + 3) = v33;
    *(v36 + 4) = v179;
    *(v36 + 5) = v32;
    v38 = &v36[*(v37 + 28)];
    *v38 = 0u;
    *(v38 + 1) = 0u;
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6B8();
    (*(v35 + 8))(v34, v204);
    v19 = v201;
    v39 = v201[63];
    goto LABEL_77;
  }

  v7 = v0 + 2;
  v8 = *(v6 + 40);
  v0[11] = MEMORY[0x1E69E67B0];
  v0[12] = sub_1A9445524();
  v9 = swift_allocObject();
  v0[8] = v9;
  v185 = v2;
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v1;
  v10 = *(*v8 + 192);

  v184 = v1;
  v11 = v10(v7 + 6);
  sub_1A9378138(v7 + 6);
  v175 = v3;
  v180 = v5;
  v183 = v4;
  if (*(v11 + 16) == 1)
  {
    v12 = *(v11 + 56);
    if (*(v12 + 16) == 1)
    {
      v13 = 0;
      v14 = 0;
      v0 = (v12 + 56);
      v15 = 1 << *(v12 + 32);
      while (1)
      {
        v16 = *(v12 + 8 * v14 + 56);
        if (v16)
        {
          break;
        }

        ++v14;
        v13 -= 64;
        if ((v15 + 63) >> 6 == v14)
        {
          goto LABEL_8;
        }
      }

      v40 = __clz(__rbit64(v16));
      if (v40 - v15 == v13)
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }

      v41 = *(v12 + 36);

      if (-v13 < 0)
      {
        goto LABEL_84;
      }

      v42 = v40 - v13;
      if ((v40 - v13) >= 1 << *(v12 + 32))
      {
        goto LABEL_84;
      }

      if (((v0[v14 & 0x3FFFFFFFFFFFFFFLL] >> v40) & 1) == 0)
      {
        goto LABEL_85;
      }

      if (v41 != *(v12 + 36))
      {
        goto LABEL_86;
      }

      v44 = v201[57];
      v43 = v201[58];
      v205 = v201[56];
      v45 = v201[54];
      v46 = v201[53];
      v47 = v201[52];
      v48 = v201[42];
      v49 = v201[39];
      v50 = v201[38];
      (*(v49 + 16))(v48, *(v12 + 48) + *(v49 + 72) * v42, v50);

      (*(v49 + 32))(v47, v48, v50);
      (*(v49 + 56))(v47, 0, 1, v50);
      *v45 = v185;
      v45[1] = v183;
      v45[2] = v180;
      v45[3] = v184;
      v45[4] = v179;
      v45[5] = v175;
      sub_1A94D9E3C(v47, v45 + *(v46 + 24));
      v51 = *(v46 + 28);
      v19 = v201;
      v52 = (v45 + v51);
      *v52 = 0u;
      v52[1] = 0u;
      sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
      sub_1A957C6B8();
      (*(v44 + 8))(v43, v205);
      v39 = v201[63];
      goto LABEL_77;
    }
  }

  v19 = v201;
  v20 = v201[24];
  sub_1A9391BAC(v201[26], v201[51], &qword_1EB386A68, &qword_1A9587F40);
  v178 = v11;
  if (*(v20 + 24) == 2)
  {
    v21 = v201[24];
    v22 = *(v21 + 48);
    v23 = *(v21 + 72);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_1A94DEF6C(*(v23 + 16), 0);
      v203 = sub_1A94DF9F4(v174 + 16, v25 + 4, v24, v23);
      v26 = v201[18];

      v27 = sub_1A932D088(v26);
      if (v203 != v24)
      {
        goto LABEL_87;
      }

      v31 = v1;
    }

    else
    {
      v31 = v1;
    }

    v53 = v201[35];
    v54 = v201[36];
    v55 = v201[34];
    type metadata accessor for NLLanguage(0);
    v56 = sub_1A957C4B8();

    [v22 setLanguageConstraints_];

    [v22 reset];
    MEMORY[0x1AC585090](v185, v183, v5, v31);
    v57 = sub_1A957C0C8();

    [v22 processString_];

    sub_1A94D9C08(v55, 0.9);
    if ((*(v54 + 48))(v55, 1, v53) == 1)
    {
      sub_1A937B960(v201[34], &qword_1EB386988, &qword_1A9587830);
      v4 = v183;
    }

    else
    {
      v58 = v201[50];
      v59 = v201[39];
      v206 = v201[38];
      v61 = v201[36];
      v60 = v201[37];
      v62 = v201[35];
      v63 = v201[32];
      v64 = v201[29];
      v65 = v201[30];
      (*(v61 + 32))(v60, v201[34], v62);
      sub_1A957B2F8();
      sub_1A957B2B8();
      (*(v65 + 8))(v63, v64);
      (*(v61 + 8))(v60, v62);
      if ((*(v59 + 48))(v58, 1, v206) == 1)
      {
        sub_1A937B960(v201[50], &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v66 = v201[50];
        v67 = v201[51];
        v68 = v201[38];
        v69 = v201[39];
        sub_1A937B960(v67, &qword_1EB386A68, &qword_1A9587F40);
        (*(v69 + 32))(v67, v66, v68);
        (*(v69 + 56))(v67, 0, 1, v68);
      }

      v5 = v180;
      v4 = v183;
      v11 = v178;
    }
  }

  v70 = v201[49];
  v71 = v201[38];
  v72 = v201[39];
  sub_1A9391BAC(v201[51], v70, &qword_1EB386A68, &qword_1A9587F40);
  v198 = *(v72 + 48);
  if (v198(v70, 1, v71) == 1)
  {
    v27 = sub_1A937B960(v201[49], &qword_1EB386A68, &qword_1A9587F40);
    v172 = v201[63];
  }

  else
  {
    v73 = v201[63];
    v74 = v201[41];
    v75 = v201[24];
    (*(v201[39] + 32))(v74, v201[49], v201[38]);
    v76 = swift_task_alloc();
    v76[2] = v74;
    v76[3] = v185;
    v76[4] = v4;
    v76[5] = v5;
    v76[6] = v184;
    v76[7] = v75;
    LOBYTE(v74) = sub_1A94DC7E8(sub_1A94E0428, v76, v11);
    v172 = v73;

    if ((v74 & 1) == 0)
    {
      v163 = v201[57];
      v164 = v201[55];
      v165 = v201[53];
      v202 = v201[56];
      v209 = v19[51];
      v166 = v19[41];
      v199 = v19[59];
      v167 = v19[38];
      v168 = v19[39];

      v169 = *(v165 + 24);
      (*(v168 + 16))(&v164[v169], v166, v167);
      (*(v168 + 56))(&v164[v169], 0, 1, v167);
      *v164 = v185;
      *(v164 + 1) = v183;
      *(v164 + 2) = v180;
      *(v164 + 3) = v184;
      *(v164 + 4) = v179;
      *(v164 + 5) = v175;
      v170 = &v164[*(v165 + 28)];
      *v170 = 0u;
      *(v170 + 1) = 0u;
      sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
      sub_1A957C6B8();
      (*(v163 + 8))(v199, v202);
      sub_1A937B960(v209, &qword_1EB386A68, &qword_1A9587F40);
      (*(v168 + 8))(v166, v167);
      goto LABEL_76;
    }

    v27 = (*(v201[39] + 8))(v201[41], v201[38]);
  }

  v177 = *(v11 + 16);
  if (!v177)
  {
LABEL_74:
    v162 = v19[51];

    sub_1A937B960(v162, &qword_1EB386A68, &qword_1A9587F40);
LABEL_76:
    v39 = v172;
LABEL_77:
    v19[63] = v39;
    v171 = swift_task_alloc();
    v19[64] = v171;
    *v171 = v19;
    v171[1] = sub_1A94DB2B0;
    v30 = v19[60];
    v27 = v174;
    v28 = 0;
    v29 = 0;

    return MEMORY[0x1EEE6D9C8](v27, v28, v29, v30);
  }

  v77 = 0;
  v176 = v11 + 32;
  while (v77 < *(v11 + 16))
  {
    v191 = v19[51];
    v88 = v19[48];
    v207 = v19[38];
    v89 = v176 + 48 * v77;
    v90 = *(v89 + 16);
    v92 = *(v89 + 24);
    v91 = *(v89 + 32);
    v93 = *(v89 + 40);
    v189 = *v89;
    v190 = *(v89 + 8);
    sub_1A9457A70(*v89, v190, v90);

    v186 = v91;
    v181 = v93;
    v94 = sub_1A957CC98();
    v194 = v95;
    v196 = v94;
    v193 = v96;
    v200 = v97;
    sub_1A9391BAC(v191, v88, &qword_1EB386A68, &qword_1A9587F40);
    v27 = (v198)(v88, 1, v207);
    if (v27 == 1)
    {
      goto LABEL_88;
    }

    v192 = v90;
    v208 = v92;
    v188 = v77;
    if (*(v92 + 16))
    {
      sub_1A94E02D4(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);

      v98 = sub_1A957C058();
      v99 = v92 + 56;
      v100 = -1 << *(v92 + 32);
      v101 = v98 & ~v100;
      if ((*(v99 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
      {
        v102 = ~v100;
        v103 = v19[39];
        v104 = *(v103 + 72);
        v105 = *(v103 + 16);
        while (1)
        {
          v106 = v19[39];
          v107 = v19[40];
          v108 = v19[38];
          v105(v107, *(v208 + 48) + v101 * v104, v108);
          sub_1A94E02D4(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          v109 = sub_1A957C098();
          v110 = *(v106 + 8);
          v110(v107, v108);
          if (v109)
          {
            break;
          }

          v101 = (v101 + 1) & v102;
          v19 = v201;
          if (((*(v99 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v125 = v201[57];
        v195 = v201[59];
        v197 = v201[56];
        v126 = v201[55];
        v127 = v201[53];
        v173 = v201[51];
        v128 = v201[48];
        v129 = v201[38];

        v110(v128, v129);
        v130 = sub_1A957C3B8();
        v132 = v131;
        v134 = v133;
        v136 = v135;
        sub_1A9391BAC(v173, v126 + *(v127 + 24), &qword_1EB386A68, &qword_1A9587F40);
        *v126 = v130;
        v126[1] = v132;
        v126[2] = v134;
        v126[3] = v136;
        v126[4] = v186;
        v126[5] = v181;
        v137 = (v126 + *(v127 + 28));
        *v137 = v189;
        v137[1] = v190;
        v137[2] = v192;
        v137[3] = v208;
        sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
        sub_1A957C6B8();
        v27 = (*(v125 + 8))(v195, v197);
        goto LABEL_38;
      }
    }

    else
    {
    }

LABEL_48:
    v111 = *(v19[39] + 8);
    v27 = v111(v19[48], v19[38]);
    v112 = 0;
    v113 = 0;
    v114 = 1 << *(v208 + 32);
    while (1)
    {
      v115 = *(v208 + 8 * v113 + 56);
      if (v115)
      {
        break;
      }

      ++v113;
      v112 -= 64;
      if ((v114 + 63) >> 6 == v113)
      {
        v116 = 1;
        v117 = v198;
        goto LABEL_58;
      }
    }

    v118 = __clz(__rbit64(v115));
    v117 = v198;
    if (v118 - v114 == v112)
    {
      v116 = 1;
    }

    else
    {
      if (-v112 < 0)
      {
        goto LABEL_82;
      }

      v119 = v118 - v112;
      if (v119 >= v114)
      {
        goto LABEL_82;
      }

      if (((*(v208 + 56 + 8 * (v113 & 0x3FFFFFFFFFFFFFFLL)) >> v118) & 1) == 0)
      {
        goto LABEL_83;
      }

      (*(v19[39] + 16))(v19[47], *(v208 + 48) + *(v19[39] + 72) * v119, v19[38]);
      v116 = 0;
    }

LABEL_58:
    v187 = *(v19[39] + 56);
    v187(v19[47], v116, 1, v19[38]);
    if (*(v208 + 16) < 2uLL)
    {
    }

    else
    {
      v120 = *(v19[24] + 48);
      [v120 reset];
      v121 = sub_1A94DA7A0(v208);

      v122 = *(v121 + 16);
      v182 = v111;
      if (v122)
      {
        v123 = sub_1A94DEF6C(v122, 0);
        v124 = sub_1A94DF9F4(v174 + 11, v123 + 4, v122, v121);
        v27 = sub_1A932D088(v19[13]);
        if (v124 != v122)
        {
          goto LABEL_81;
        }
      }

      else
      {
      }

      v138 = v19[35];
      v139 = v19[36];
      v140 = v19[33];
      type metadata accessor for NLLanguage(0);
      v141 = sub_1A957C4B8();

      [v120 setLanguageConstraints_];

      MEMORY[0x1AC585090](v196, v194, v193, v200);
      v142 = sub_1A957C0C8();

      [v120 processString_];

      sub_1A94D9C08(v140, 0.95);
      if ((*(v139 + 48))(v140, 1, v138) == 1)
      {
        sub_1A937B960(v19[33], &qword_1EB386988, &qword_1A9587830);
        v117 = v198;
      }

      else
      {
        v149 = v19[46];
        v150 = v19[38];
        v151 = v19;
        v152 = v19[36];
        v153 = v151[35];
        v154 = v151[33];
        v156 = v151[30];
        v155 = v151[31];
        v157 = v151[29];
        sub_1A957B2F8();
        (*(v152 + 8))(v154, v153);
        sub_1A957B2B8();
        (*(v156 + 8))(v155, v157);
        v117 = v198;
        if (v198(v149, 1, v150) == 1)
        {
          sub_1A937B960(v151[46], &qword_1EB386A68, &qword_1A9587F40);
        }

        else
        {
          v159 = v151[46];
          v158 = v151[47];
          v160 = v151[45];
          v161 = v151[38];
          sub_1A957B148();
          v182(v159, v161);
          v117 = v198;
          sub_1A957B198();
          sub_1A937B960(v158, &qword_1EB386A68, &qword_1A9587F40);
          v187(v160, 0, 1, v161);
          sub_1A94D9E3C(v160, v158);
        }

        v19 = v151;
      }
    }

    v143 = v19[43];
    v144 = v19[38];
    sub_1A9391BAC(v19[47], v143, &qword_1EB386A68, &qword_1A9587F40);
    v145 = v117(v143, 1, v144);
    v146 = v19[43];
    v147 = v19[44];
    if (v145 == 1)
    {
      v148 = v19[38];
      sub_1A9391BAC(v19[26], v19[44], &qword_1EB386A68, &qword_1A9587F40);
      if (v117(v146, 1, v148) != 1)
      {
        sub_1A937B960(v19[43], &qword_1EB386A68, &qword_1A9587F40);
      }
    }

    else
    {
      v78 = v19[38];
      (*(v19[39] + 32))(v147, v146, v78);
      v187(v147, 0, 1, v78);
      v19 = v201;
    }

    v79 = v19[59];
    v80 = v19;
    v81 = v19[57];
    v83 = v80[55];
    v82 = v80[56];
    v84 = v80[53];
    v85 = v80[47];
    v86 = v80[44];
    sub_1A9391BAC(v86, v83 + *(v84 + 24), &qword_1EB386A68, &qword_1A9587F40);
    *v83 = v196;
    v83[1] = v194;
    v83[2] = v193;
    v83[3] = v200;
    v83[4] = v179;
    v83[5] = v175;
    v87 = (v83 + *(v84 + 28));
    *v87 = v189;
    v87[1] = v190;
    v87[2] = v192;
    v87[3] = v208;
    sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
    sub_1A957C6B8();
    (*(v81 + 8))(v79, v82);
    sub_1A937B960(v86, &qword_1EB386A68, &qword_1A9587F40);
    v27 = sub_1A937B960(v85, &qword_1EB386A68, &qword_1A9587F40);
LABEL_38:
    v77 = v188 + 1;
    v11 = v178;
    v19 = v201;
    if (v188 + 1 == v177)
    {
      goto LABEL_74;
    }
  }

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
  return MEMORY[0x1EEE6D9C8](v27, v28, v29, v30);
}

uint64_t sub_1A94DC7E8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *(v7 - 3);
      v11 = *(v7 - 16);
      v13 = *(v7 - 4);
      v14 = v10;
      v15 = v11;
      v16 = v9;
      v17 = *v7;
      sub_1A9457A70(v13, v10, v11);

      LOBYTE(v9) = a1(&v13);
      sub_1A9458200(v13, v14, v15);

      LOBYTE(v4) = (v3 != 0) | v9;
      if ((v3 != 0) | v9 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 3;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t TTSSegmentGenerator.deinit()
{

  return v0;
}

uint64_t TTSSegmentGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTSSegmentGenerator.utteranceStream(string:voice:resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v26 = a3;
  v27 = a5;
  v28 = a1;
  v29 = a2;
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v25 = &v25 - v6;
  v8 = sub_1A937829C(&qword_1EB388198, &qword_1A9595E20);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  memcpy(v33, v26, 0x118uLL);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8650], v8);
  sub_1A957C698();
  (*(v9 + 8))(v11, v8);
  v19 = sub_1A957C688();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  (*(v13 + 16))(v16, v18, v12);
  v20 = (*(v13 + 80) + 344) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v29;
  v23 = v28;
  *(v21 + 4) = v30;
  *(v21 + 5) = v23;
  *(v21 + 6) = v22;
  memcpy(v21 + 56, v33, 0x118uLL);
  *(v21 + 42) = v31;
  (*(v13 + 32))(&v21[v20], v16, v12);

  sub_1A937B3DC(v33, &v32);

  sub_1A938A404(0, 0, v25, &unk_1A9595E38, v21);

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_1A94DCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[346] = v18;
  v8[345] = a8;
  v8[344] = a7;
  v8[343] = a6;
  v8[342] = a5;
  v8[341] = a4;
  v9 = sub_1A937829C(&qword_1EB3881D8, &qword_1A95960F8);
  v8[347] = v9;
  v8[348] = *(v9 - 8);
  v8[349] = swift_task_alloc();
  v10 = sub_1A957B188();
  v8[350] = v10;
  v8[351] = *(v10 - 8);
  v8[352] = swift_task_alloc();
  v8[353] = swift_task_alloc();
  v8[354] = swift_task_alloc();
  v8[355] = swift_task_alloc();
  v11 = type metadata accessor for TTSSegmentGenerator.Segment(0);
  v8[356] = v11;
  v8[357] = *(v11 - 8);
  v8[358] = swift_task_alloc();
  sub_1A937829C(&qword_1EB3881E0, &qword_1A9596100);
  v8[359] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v8[360] = swift_task_alloc();
  v8[361] = swift_task_alloc();
  v12 = sub_1A957B2E8();
  v8[362] = v12;
  v8[363] = *(v12 - 8);
  v8[364] = swift_task_alloc();
  v13 = sub_1A957B308();
  v8[365] = v13;
  v8[366] = *(v13 - 8);
  v8[367] = swift_task_alloc();
  v14 = sub_1A937829C(&qword_1EB3881E8, &qword_1A9596108);
  v8[368] = v14;
  v8[369] = *(v14 - 8);
  v8[370] = swift_task_alloc();
  v15 = sub_1A937829C(&qword_1EB3881F0, &unk_1A9596110);
  v8[371] = v15;
  v8[372] = *(v15 - 8);
  v8[373] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94DD090, 0, 0);
}

uint64_t sub_1A94DD090()
{
  v20 = v0;
  v1 = *(v0 + 2960);
  v2 = *(v0 + 2952);
  v18 = *(v0 + 2944);
  v3 = *(v0 + 2936);
  v4 = *(v0 + 2928);
  v5 = *(v0 + 2912);
  v6 = *(v0 + 2904);
  v14 = *(v0 + 2920);
  v15 = *(v0 + 2896);
  v7 = *(v0 + 2888);
  v16 = *(v0 + 2736);
  v17 = *(v0 + 2744);
  v8 = *(v0 + 2728);
  memcpy(__dst, *(v0 + 2752), sizeof(__dst));
  CoreSynthesizer.Voice.primaryLocale.getter(v3);
  sub_1A957B2F8();
  v9 = *(v4 + 8);
  *(v0 + 2992) = v9;
  *(v0 + 3000) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v14);
  sub_1A957B2B8();
  (*(v6 + 8))(v5, v15);
  (*(*v8 + 248))(v16, v17, v7);
  sub_1A937B960(v7, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A957C6F8();
  (*(v2 + 8))(v1, v18);
  v10 = swift_task_alloc();
  *(v0 + 3008) = v10;
  *v10 = v0;
  v10[1] = sub_1A94DD284;
  v11 = *(v0 + 2968);
  v12 = *(v0 + 2872);

  return MEMORY[0x1EEE6D9C8](v12, 0, 0, v11);
}

uint64_t sub_1A94DD284()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94DD380, 0, 0);
}

uint64_t sub_1A94DD380()
{
  v93 = v0;
  v1 = *(v0 + 2872);
  v2 = *(v0 + 2848);
  if ((*(*(v0 + 2856) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 2976) + 8))(*(v0 + 2984), *(v0 + 2968));
    sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
    sub_1A957C6C8();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 2880);
  v6 = *(v0 + 2864);
  v7 = *(v0 + 2808);
  v8 = *(v0 + 2800);
  sub_1A94E0364(v1, v6);
  sub_1A9391BAC(v6 + *(v2 + 24), v5, &qword_1EB386A68, &qword_1A9587F40);
  if ((*(v7 + 48))(v5, 1, v8) == 1)
  {
    v9 = *(v0 + 2752);
    sub_1A937B960(*(v0 + 2880), &qword_1EB386A68, &qword_1A9587F40);
    v83 = *(v9 + 272);
    v85 = *(v9 + 264);
    v80 = *(v9 + 248);
    v82 = *(v9 + 216);
    v77 = *(v9 + 232);
    v78 = *(v9 + 200);
    v75 = *(v9 + 188);
    v76 = *(v9 + 193);
    v73 = *(v9 + 184);
    v74 = *(v9 + 192);
    v72 = *(v9 + 160);
    v10 = *(v9 + 176);
    v70 = *(v9 + 152);
    v71 = *(v9 + 144);
    v68 = *(v9 + 136);
    v69 = *(v9 + 128);
    v66 = *(v9 + 104);
    v67 = *(v9 + 96);
    v65 = *(v9 + 112);
    v64 = *(v9 + 120);
    v62 = *(v9 + 64);
    v63 = *(v9 + 80);
    v60 = *(v9 + 56);
    v61 = *(v9 + 57);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    v14 = *(v9 + 24);
    v13 = *(v9 + 32);
    v15 = *v9;
    v59 = *(v9 + 8);
    v16 = v0 + 400;
    goto LABEL_21;
  }

  v17 = *(v0 + 2840);
  v18 = *(v0 + 2832);
  v19 = *(v0 + 2824);
  v20 = *(v0 + 2808);
  v21 = *(v0 + 2800);
  (*(v20 + 32))(v17, *(v0 + 2880), v21);
  sub_1A937829C(&qword_1EB386B40, &qword_1A95885C8);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v84 = *(v20 + 72);
  v23 = swift_allocObject();
  v24 = *(v20 + 16);
  v24(v23 + v22, v17, v21);
  v25 = sub_1A94E02D4(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  __dst[0] = MEMORY[0x1AC585770](1, v21, v25);
  v81 = v24;
  v24(v18, v23 + v22, v21);
  swift_setDeallocating();
  v26 = *(v20 + 8);
  *(v0 + 3016) = v26;
  *(v0 + 3024) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v23 + v22, v21);
  swift_deallocClassInstance();
  sub_1A93A3F0C(v19, v18);
  v86 = v26;
  v26(v19, v21);
  v27 = __dst[0];
  if (Locale.LanguageCode.isMacroLanguage.getter())
  {
    v28 = Locale.LanguageCode.childLanguages.getter();
    v32 = 0;
    v34 = v28 + 56;
    v33 = *(v28 + 56);
    v79 = v28;
    v35 = -1;
    v36 = -1 << *(v28 + 32);
    if (-v36 < 64)
    {
      v35 = ~(-1 << -v36);
    }

    v37 = v35 & v33;
    v38 = (63 - v36) >> 6;
    if ((v35 & v33) != 0)
    {
      do
      {
        v39 = v32;
LABEL_16:
        v40 = *(v0 + 2816);
        v41 = *(v0 + 2800);
        v42 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v81(v40, *(v79 + 48) + (v42 | (v39 << 6)) * v84, v41);
        v43 = Locale.LanguageCode.childLanguages.getter();
        v86(v40, v41);
        v28 = sub_1A94DE314(v43, v27);
        v27 = v28;
      }

      while (v37);
    }

    while (1)
    {
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        goto LABEL_19;
      }

      v37 = *(v34 + 8 * v39);
      ++v32;
      if (v37)
      {
        v32 = v39;
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6D9C8](v28, v29, v30, v31);
  }

LABEL_19:
  memcpy(__dst, *(v0 + 2752), 0x118uLL);
  CoreSynthesizer.Voice.locales.getter((v0 + 2688));
  v44 = *(v0 + 2712);
  v45 = *(v0 + 2720);
  sub_1A93780F4((v0 + 2688), v44);
  v46 = sub_1A94DE890(v44, v45, &qword_1EB386A70, &qword_1A9587F48, sub_1A94DE908);
  v47 = sub_1A93A5804(v27, v46);

  sub_1A9378138((v0 + 2688));
  v48 = *(v47 + 16);

  if (v48)
  {
    v9 = *(v0 + 2752);
    v86(*(v0 + 2840), *(v0 + 2800));
    v83 = *(v9 + 272);
    v85 = *(v9 + 264);
    v80 = *(v9 + 248);
    v82 = *(v9 + 216);
    v77 = *(v9 + 232);
    v78 = *(v9 + 200);
    v75 = *(v9 + 188);
    v76 = *(v9 + 193);
    v73 = *(v9 + 184);
    v74 = *(v9 + 192);
    v72 = *(v9 + 160);
    v10 = *(v9 + 176);
    v70 = *(v9 + 152);
    v71 = *(v9 + 144);
    v68 = *(v9 + 136);
    v69 = *(v9 + 128);
    v66 = *(v9 + 104);
    v67 = *(v9 + 96);
    v65 = *(v9 + 112);
    v64 = *(v9 + 120);
    v62 = *(v9 + 64);
    v63 = *(v9 + 80);
    v60 = *(v9 + 56);
    v61 = *(v9 + 57);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    v14 = *(v9 + 24);
    v13 = *(v9 + 32);
    v15 = *v9;
    v59 = *(v9 + 8);
    v16 = v0 + 1520;
LABEL_21:
    sub_1A937B3DC(v9, v16);
    v49 = *(v0 + 2864);
    v50 = *(v0 + 2792);
    v51 = *(v0 + 2784);
    v58 = *(v0 + 2776);
    *(v0 + 960) = v15;
    *(v0 + 968) = v59;
    *(v0 + 984) = v14;
    *(v0 + 992) = v13;
    *(v0 + 1000) = v11;
    *(v0 + 1008) = v12;
    *(v0 + 1016) = v60;
    *(v0 + 1017) = v61;
    *(v0 + 1040) = v63;
    *(v0 + 1024) = v62;
    *(v0 + 1056) = v67;
    *(v0 + 1064) = v66;
    *(v0 + 1072) = v65;
    *(v0 + 1080) = v64;
    *(v0 + 1088) = v69;
    *(v0 + 1096) = v68;
    *(v0 + 1104) = v71;
    *(v0 + 1112) = v70;
    *(v0 + 1120) = v72;
    *(v0 + 1136) = v10;
    *(v0 + 1144) = v73;
    *(v0 + 1148) = v75;
    *(v0 + 1152) = v74;
    *(v0 + 1153) = v76;
    *(v0 + 1160) = v78;
    *(v0 + 1176) = v82;
    *(v0 + 1192) = v77;
    *(v0 + 1208) = v80;
    *(v0 + 1224) = v85;
    *(v0 + 1232) = v83;
    *(v0 + 2640) = MEMORY[0x1AC585090](*v49, v49[1], v49[2], v49[3]);
    *(v0 + 2648) = v52;
    *(v0 + 2656) = 0;
    *(v0 + 2660) = 1;
    *(v0 + 2664) = 0;
    *(v0 + 2668) = 1;
    *(v0 + 2672) = 0;
    *(v0 + 2676) = 1;
    *(v0 + 2680) = 1;
    memcpy((v0 + 680), (v0 + 960), 0x118uLL);
    nullsub_23();
    memcpy(__dst, (v0 + 680), 0x118uLL);
    v88 = 1;
    sub_1A937B3DC(v0 + 960, v0 + 1240);
    v53 = sub_1A937838C();
    sub_1A937BA74(&v89);
    v90 = v89;
    sub_1A937BA78(&v91);
    CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v0 + 2640, v53, &v90, &v88, &v91, v0 + 16);
    sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
    sub_1A957C6B8();
    sub_1A937B48C(v0 + 960);
    (*(v51 + 8))(v50, v58);
    sub_1A94E03C8(v49, type metadata accessor for TTSSegmentGenerator.Segment);
    v54 = swift_task_alloc();
    *(v0 + 3008) = v54;
    *v54 = v0;
    v54[1] = sub_1A94DD284;
    v31 = *(v0 + 2968);
    v28 = *(v0 + 2872);
    v29 = 0;
    v30 = 0;

    return MEMORY[0x1EEE6D9C8](v28, v29, v30, v31);
  }

  v55 = *(v0 + 2760);
  sub_1A957B148();
  sub_1A957B1B8();
  v87 = (*(*v55 + 416) + **(*v55 + 416));
  v56 = swift_task_alloc();
  *(v0 + 3032) = v56;
  *v56 = v0;
  v56[1] = sub_1A94DDDA4;
  v57 = *(v0 + 2936);

  return v87(v0 + 2080, v57);
}

uint64_t sub_1A94DDDA4()
{
  v1 = *(*v0 + 2992);
  v2 = *(*v0 + 2936);
  v3 = *(*v0 + 2920);

  v1(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94DDF04, 0, 0);
}

uint64_t sub_1A94DDF04()
{
  v73 = v0;
  (*(v0 + 3016))(*(v0 + 2840), *(v0 + 2800));
  memcpy((v0 + 1800), (v0 + 2080), 0x118uLL);
  if (sub_1A932D058(v0 + 1800) == 1)
  {
    v1 = *(v0 + 2752);
    v66 = *(v1 + 272);
    v67 = *(v1 + 264);
    v64 = *(v1 + 200);
    v65 = *(v1 + 216);
    v62 = *(v1 + 248);
    v60 = *(v1 + 232);
    v63 = *(v1 + 193);
    v61 = *(v1 + 188);
    v58 = *(v1 + 184);
    v59 = *(v1 + 192);
    v55 = *(v1 + 160);
    v2 = *(v1 + 176);
    v56 = *(v1 + 152);
    v57 = *(v1 + 144);
    v53 = *(v1 + 136);
    v54 = *(v1 + 128);
    v51 = *(v1 + 104);
    v52 = *(v1 + 96);
    v50 = *(v1 + 112);
    v3 = *(v1 + 120);
    v48 = *(v1 + 64);
    v49 = *(v1 + 80);
    v4 = *(v1 + 57);
    v5 = *(v1 + 56);
    v6 = *(v1 + 40);
    v7 = *(v1 + 48);
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    v10 = *v1;
    v47 = *(v1 + 8);
    sub_1A937B3DC(v1, v0 + 2360);
    v12 = v47;
    v11 = v48;
    v13 = v7;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v49;
    v18 = v3;
    v20 = v50;
    v19 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v25 = v56;
    v24 = v57;
    v26 = v55;
    v28 = v58;
    v27 = v59;
    v29 = v61;
    v30 = v63;
    v31 = v60;
    v33 = v64;
    v32 = v65;
    v34 = v62;
    v36 = v66;
    v35 = v67;
  }

  else
  {
    v35 = *(v0 + 2064);
    v36 = *(v0 + 2072);
    v33 = *(v0 + 2000);
    v32 = *(v0 + 2016);
    v31 = *(v0 + 2032);
    v34 = *(v0 + 2048);
    v30 = *(v0 + 1993);
    v29 = *(v0 + 1988);
    v27 = *(v0 + 1992);
    v28 = *(v0 + 1984);
    v26 = *(v0 + 1960);
    v2 = *(v0 + 1976);
    v24 = *(v0 + 1944);
    v25 = *(v0 + 1952);
    v23 = *(v0 + 1928);
    v22 = *(v0 + 1936);
    v21 = *(v0 + 1896);
    v19 = *(v0 + 1904);
    v20 = *(v0 + 1912);
    v18 = *(v0 + 1920);
    v11 = *(v0 + 1864);
    v17 = *(v0 + 1880);
    v16 = *(v0 + 1857);
    v15 = *(v0 + 1856);
    v14 = *(v0 + 1840);
    v13 = *(v0 + 1848);
    v8 = *(v0 + 1824);
    v9 = *(v0 + 1832);
    v10 = *(v0 + 1800);
    v12 = *(v0 + 1808);
  }

  v37 = *(v0 + 2864);
  v38 = *(v0 + 2792);
  v39 = *(v0 + 2784);
  v40 = *(v0 + 2776);
  *(v0 + 960) = v10;
  *(v0 + 968) = v12;
  *(v0 + 984) = v8;
  *(v0 + 992) = v9;
  *(v0 + 1000) = v14;
  *(v0 + 1008) = v13;
  *(v0 + 1016) = v15;
  *(v0 + 1017) = v16;
  *(v0 + 1040) = v17;
  *(v0 + 1024) = v11;
  *(v0 + 1056) = v21;
  *(v0 + 1064) = v19;
  *(v0 + 1072) = v20;
  *(v0 + 1080) = v18;
  *(v0 + 1088) = v23;
  *(v0 + 1096) = v22;
  *(v0 + 1104) = v24;
  *(v0 + 1112) = v25;
  *(v0 + 1120) = v26;
  *(v0 + 1136) = v2;
  *(v0 + 1144) = v28;
  *(v0 + 1148) = v29;
  *(v0 + 1152) = v27;
  *(v0 + 1153) = v30;
  *(v0 + 1160) = v33;
  *(v0 + 1176) = v32;
  *(v0 + 1192) = v31;
  *(v0 + 1208) = v34;
  *(v0 + 1224) = v35;
  *(v0 + 1232) = v36;
  *(v0 + 2640) = MEMORY[0x1AC585090](*v37, v37[1], v37[2], v37[3]);
  *(v0 + 2648) = v41;
  *(v0 + 2656) = 0;
  *(v0 + 2660) = 1;
  *(v0 + 2664) = 0;
  *(v0 + 2668) = 1;
  *(v0 + 2672) = 0;
  *(v0 + 2676) = 1;
  *(v0 + 2680) = 1;
  memcpy((v0 + 680), (v0 + 960), 0x118uLL);
  nullsub_23();
  memcpy(__dst, (v0 + 680), 0x118uLL);
  v69 = 1;
  sub_1A937B3DC(v0 + 960, v0 + 1240);
  v42 = sub_1A937838C();
  sub_1A937BA74(&v70);
  v71 = v70;
  sub_1A937BA78(v72);
  CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v0 + 2640, v42, &v71, &v69, v72, v0 + 16);
  sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  sub_1A957C6B8();
  sub_1A937B48C(v0 + 960);
  (*(v39 + 8))(v38, v40);
  sub_1A94E03C8(v37, type metadata accessor for TTSSegmentGenerator.Segment);
  v43 = swift_task_alloc();
  *(v0 + 3008) = v43;
  *v43 = v0;
  v43[1] = sub_1A94DD284;
  v44 = *(v0 + 2968);
  v45 = *(v0 + 2872);

  return MEMORY[0x1EEE6D9C8](v45, 0, 0, v44);
}

uint64_t sub_1A94DE314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_1A93A3F0C(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94DE530(uint64_t a1)
{
  if (sub_1A957B148() == 26746 && v1 == 0xE200000000000000)
  {
    goto LABEL_3;
  }

  v2 = sub_1A957D3E8();

  if (v2)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 6649209 && v10 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v11 = sub_1A957D3E8();

  if (v11)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 7697783 && v12 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v13 = sub_1A957D3E8();

  if (v13)
  {
    goto LABEL_5;
  }

  if (sub_1A957B148() == 7236963 && v14 == 0xE300000000000000)
  {
LABEL_3:
  }

  else
  {
    v15 = sub_1A957D3E8();

    if ((v15 & 1) == 0)
    {
      sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A9587160;
      sub_1A957B148();
      v17 = sub_1A957C0C8();

      *(inited + 32) = v17;
      v8 = sub_1A94DFB98(inited);
      swift_setDeallocating();
      sub_1A94E03C8(inited + 32, type metadata accessor for NLLanguage);
      return v8;
    }
  }

LABEL_5:
  sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1A95873F0;
  v4 = *MEMORY[0x1E6977840];
  *(v3 + 32) = *MEMORY[0x1E6977840];
  v5 = *MEMORY[0x1E6977898];
  *(v3 + 40) = *MEMORY[0x1E6977898];
  v6 = v4;
  v7 = v5;
  v8 = sub_1A94DFB98(v3);
  swift_setDeallocating();
  type metadata accessor for NLLanguage(0);
  swift_arrayDestroy();
  return v8;
}

void sub_1A94DE788(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
    sub_1A94DEFF0(&v12, v10);
    v11 = v12;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1A94DE890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_1A937829C(a3, a4);
  sub_1A957C408();
  return v6;
}

uint64_t sub_1A94DE908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v23[1] = a2;
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1A957B2E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957B188();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v23[0] = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v25 = *a1;

  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    result = sub_1A937B960(v6, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    (*(v12 + 32))(v19, v6, v11);
    v21 = v23[0];
    (*(v12 + 16))(v23[0], v19, v11);
    sub_1A93A3F0C(v17, v21);
    v22 = *(v12 + 8);
    v22(v17, v11);
    result = (v22)(v19, v11);
  }

  *v24 = v25;
  return result;
}

uint64_t sub_1A94DEC08()
{
  v2 = *(sub_1A937829C(&qword_1EB388190, &qword_1A9595E08) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A9382328;

  return sub_1A94DAE2C(v10, v11, v12, v7, v8, v0 + v3, v0 + v6, v9);
}

uint64_t sub_1A94DEDA4()
{
  sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[42];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A94DCCC8(v6, v7, v8, v2, v3, v4, (v0 + 7), v5);
}

uint64_t sub_1A94DEEB0(uint64_t a1)
{
  v2 = sub_1A94E02D4(&qword_1EB385F68, type metadata accessor for NLLanguage, &unk_1A9596058);
  v3 = sub_1A94E02D4(&qword_1EB385F58, type metadata accessor for NLLanguage, &unk_1A9595FF8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A94DEF6C(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB3881A8, &qword_1A9595E40);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1A94DEFF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v7 = sub_1A957D548();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1A957C0F8();
      v13 = v12;
      if (v11 == sub_1A957C0F8() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1A957D3E8();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1A94DF418(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1A94DF19C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A957C0F8();
      sub_1A957D4F8();
      sub_1A957C228();
      v18 = sub_1A957D548();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A94DF418(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1A94DF19C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1A94DF600();
      goto LABEL_16;
    }

    sub_1A94DF750(v7 + 1);
  }

  v9 = *v3;
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v10 = sub_1A957D548();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for NLLanguage(0);
    do
    {
      v13 = sub_1A957C0F8();
      v15 = v14;
      if (v13 == sub_1A957C0F8() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1A957D3E8();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

id sub_1A94DF600()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  v2 = *v0;
  v3 = sub_1A957CE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A94DF750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A957C0F8();
      sub_1A957D4F8();
      v18 = v17;
      sub_1A957C228();
      v19 = sub_1A957D548();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A94DF9A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void *sub_1A94DF9F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94DFB48(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1A94DFB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3881D0, &unk_1A95960E8);
    v3 = sub_1A957CEB8();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1A957C0F8();
      sub_1A957D4F8();
      v27 = v7;
      sub_1A957C228();
      v8 = sub_1A957D548();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1A957C0F8();
        v18 = v17;
        if (v16 == sub_1A957C0F8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1A957D3E8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A94DFDB8()
{
  result = qword_1EB3881B0;
  if (!qword_1EB3881B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3881B0);
  }

  return result;
}

uint64_t dispatch thunk of TTSSegmentGenerator.__allocating_init(mode:tokenUnit:locales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 192) + **(v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A93916A8;

  return v10(a1, a2, a3);
}

void sub_1A94E0094(uint64_t a1)
{
  sub_1A9459140();
  if (v1 <= 0x3F)
  {
    sub_1A94E0164(319);
    if (v2 <= 0x3F)
    {
      sub_1A94E01F4(319, &qword_1EB3881C0, &type metadata for TTSStringTagger.CombinedScriptLanguageTag, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A94E0164(uint64_t a1)
{
  if (!qword_1EB3881B8)
  {
    sub_1A957B188();
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3881B8);
    }
  }
}

void sub_1A94E01F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A94E02D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A94E0364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSegmentGenerator.Segment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94E03C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1A94E0428(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  result = 0;
  if ((sub_1A939A620(v2, *(a1 + 24)) & 1) == 0)
  {
    sub_1A957CC98();
    v5 = sub_1A957CC88();

    if ((*(*v3 + 168))(v6) < v5)
    {
      return 1;
    }

    v7 = sub_1A9451BB4();
    v8 = sub_1A93AD200(v7);

    v9 = sub_1A93A8204(1853120844, 0xE400000000000000, v8);

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TTSMarkup.Sub.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Sub.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v33, 0, v33, v30);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x7361696C61, 0xE500000000000000), (v8 & 1) != 0))
  {
    v24 = a2;
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v30[1] = v11;
    v30[2] = v10;
    v13 = (*((*v5 & *a1) + 0x100))(v12);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1AC585DE0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_1A93D1250(&v25);

        if (v26)
        {
          sub_1A932D070(&v25, &v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1A93ADC90(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = sub_1A93ADC90((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          sub_1A932D070(&v27, &v17[5 * v22 + 4]);
        }

        else
        {
          sub_1A937B960(&v25, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v16;
        if (v20 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v28 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v29 = &protocol witness table for <A> [A];

    *&v27 = v17;
    sub_1A93A38D8(&v27, v31);
    sub_1A94E0D6C(v30, v24);
    return sub_1A94E0DA4(v30);
  }

  else
  {

    result = sub_1A937B960(v31, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  return result;
}

uint64_t sub_1A94E0908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *(v7 + 3) = 0u;
  v7 += 3;
  v7[4] = 0;
  *(v7 + 1) = 0u;
  *(v7 - 2) = a1;
  *(v7 - 1) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Sub.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x7361696C61;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t TTSMarkup.Sub.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))(v3, a2);
}

{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

unint64_t sub_1A94E0BE4()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x7361696C61;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A94E0CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Sub.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A94E0E8C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A94E0EF4(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_1A9391BAC(v1 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v5, &qword_1EB3871A8, &qword_1A958BE88);
  v13 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_1A937B960(v5, &qword_1EB3871A8, &qword_1A958BE88);
    v15 = 1;
  }

  else
  {
    v18[0] = v9;
    v18[1] = v10;
    v18[2] = v11;
    v18[3] = v12;
    sub_1A9410FB8(v9, v10, v11);
    sub_1A957C818();
    (*(v14 + 8))(v5, v13);
    v15 = 0;
  }

  v16 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v16 - 8) + 56))(v8, v15, 1, v16);
  return sub_1A937B960(v8, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t sub_1A94E1138()
{
  *(v1 + 16) = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E11F0, v3, v2);
}

uint64_t sub_1A94E11F0()
{
  v1 = v0[2];
  if (*(v1 + 457) > 1u)
  {
    if (*(v1 + 457) == 2)
    {
      *(v1 + 457) = 1;
      v4 = swift_task_alloc();
      v0[4] = v4;
      *v4 = v0;
      v4[1] = sub_1A94E1494;

      return sub_1A94E8B4C();
    }

    else
    {
      v5 = v0[1];

      return v5();
    }
  }

  else if (*(v1 + 457))
  {
    return sub_1A957D0A8();
  }

  else
  {
    *(v1 + 457) = 1;
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1A94E13A0;

    return sub_1A94E1C7C();
  }
}

uint64_t sub_1A94E13A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A94E1494()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A94E15AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94E1668, v5, v4);
}

uint64_t sub_1A94E1668(uint64_t a1, uint64_t a2)
{
  v22 = v2;
  if (v2[2])
  {
    v3 = v2[3];
    v4 = v2[4];
    v16 = v2[2];
    v17 = v3;
    *&v18 = 0;
    v5 = *(*v4 + 256);
    swift_unknownObjectRetain();
    v5(&v16);
    sub_1A9410F60(v16, v17, *(&v17 + 1));
  }

  v6 = v2[4];
  if (*(v6 + 457) <= 1u)
  {
    if (*(v6 + 457))
    {
      *(v6 + 457) = 3;
      v7 = *(v6 + 24);
      v8 = MEMORY[0x1E69E7D40];
      v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x1F8))();
      [v9 stop];

      v10 = (*((*v8 & *v7) + 0x258))();
      v2[7] = v10;
      v11 = *v10;
      v2[8] = *(*v10 + 376);
      v2[9] = (v11 + 376) & 0xFFFFFFFFFFFFLL | 0x8DBC000000000000;
      type metadata accessor for TTSAURenderer();
      sub_1A94E9538(&qword_1EB386D00, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
      v13 = sub_1A957C5A8();

      return MEMORY[0x1EEE6DFA0](sub_1A94E18E4, v13, v12);
    }

    goto LABEL_9;
  }

  if (*(v6 + 457) == 2)
  {
LABEL_9:
    *(v6 + 457) = 3;
    v16 = 3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    v21 = 10;
    TTSSpeechEvent.emit(forJob:)(*(v6 + 32));
    sub_1A94E91E4(0);
  }

  v14 = v2[1];

  return v14();
}

uint64_t sub_1A94E18E4()
{
  (*(v0 + 64))();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A94E1954, v1, v2);
}

uint64_t sub_1A94E1954()
{
  v1 = *(v0 + 32);
  *(v1 + 457) = 3;
  TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
  sub_1A94E91E4(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94E19F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E1AB4, v5, v4);
}

uint64_t sub_1A94E1AB4()
{
  v11 = v0;
  v1 = v0[4];
  if (*(v1 + 457) == 1)
  {
    v2 = v0[2];
    *v9 = 1;
    memset(&v9[8], 0, 56);
    v10 = 10;
    TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
    v3 = v0[4];
    if (v2)
    {
      *v9 = *(v0 + 1);
      *&v9[16] = 0uLL;
      v4 = *(*v3 + 256);
      swift_unknownObjectRetain();
      v4(v9);
      sub_1A9410F60(*v9, *&v9[8], *&v9[16]);
    }

    v5 = v0[4];
    *(v1 + 457) = 2;
    v6 = (*((*MEMORY[0x1E69E7D40] & *v5[3]) + 0x1F8))();
    [v6 stop];

    *v9 = xmmword_1A958AD30;
    *&v9[16] = xmmword_1A958B1E0;
    ((*v5)[32])(v9);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A94E1C7C()
{
  v1[11] = v0;
  v1[12] = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v1[13] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A94E1D64, v3, v2);
}

uint64_t sub_1A94E1D64()
{
  v1 = *(v0[11] + 24);
  v0[16] = v1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x258))();
  v0[17] = v2;
  v3 = *v2;
  v0[18] = *(*v2 + 376);
  v0[19] = (v3 + 376) & 0xFFFFFFFFFFFFLL | 0x8DBC000000000000;
  type metadata accessor for TTSAURenderer();
  sub_1A94E9538(&qword_1EB386D00, type metadata accessor for TTSAURenderer, &protocol conformance descriptor for TTSAURenderer);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A94E1E9C, v5, v4);
}

uint64_t sub_1A94E1E9C()
{
  (*(v0 + 144))();

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A94E1F0C, v1, v2);
}

uint64_t sub_1A94E1F0C()
{
  v1 = *(v0 + 88);
  if ((*(v1 + 408) & 1) == 0)
  {
    *&v7 = CoreSynthesizer.Utterance.ssml.getter();
    *(&v7 + 1) = v2;
    TTSSpeechEvent.emit(forJob:)(*(v1 + 32));
    *(v0 + 48) = v9;
    *(v0 + 64) = v10;
    *(v0 + 80) = 4;
    *(v0 + 16) = v7;
    *(v0 + 32) = v8;
    sub_1A946C4C0(v0 + 16);
    v1 = *(v0 + 88);
  }

  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 128)) + 0x198))();
  *(v0 + 160) = v3;
  v6 = (*(*v1 + 408) + **(*v1 + 408));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1A94E20D8;

  return v6(v3);
}

uint64_t sub_1A94E20D8(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[14];
    v5 = v3[15];
    v6 = sub_1A94E2550;
  }

  else
  {

    v4 = v3[14];
    v5 = v3[15];
    v6 = sub_1A94E21F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A94E21F4()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v1[457];
  v3 = v0[22];
  if (v2 == 2)
  {

    v1[457] = 0;
  }

  else
  {
    if (v2 == 1)
    {
      v5 = v0[12];
      v4 = v0[13];
      v13[0] = 0;
      v13[1] = 0;
      v14 = xmmword_1A958B1E0;
      (*(*v1 + 256))(v13);
      v6 = *(v5 + 24);
      v7 = type metadata accessor for SpeechSlicer.Slice(0);
      (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
      v8 = MEMORY[0x1E69E7CC0];
      *v4 = 0;
      *(v4 + 1) = v8;
      *&v4[*(v5 + 28)] = v3;
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      v9[1] = sub_1A94E23B0;
      v10 = v0[13];

      return sub_1A94E25C0(v10);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A94E23B0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A94E24D0, v3, v2);
}

uint64_t sub_1A94E24D0()
{
  sub_1A94F1A60(*(v0 + 104), _s15UtteranceRunnerC14SynthesisStateVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94E2550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94E25C0(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v2[27] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388220, &qword_1A9596240);
  v2[28] = swift_task_alloc();
  v3 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();
  v2[33] = v5;
  v2[34] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94E2750, v5, v4);
}

uint64_t sub_1A94E2750()
{
  sub_1A94F19F8(v0[25], v0[32], _s15UtteranceRunnerC14SynthesisStateVMa);
  v0[35] = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v1 = v0[32];
  if (*v1 || *(*(v1 + *(v0[29] + 28)) + 16) || *(v1[1] + 16))
  {
    if (*(v0[26] + 457) == 1)
    {
      v2 = swift_task_alloc();
      v0[36] = v2;
      *v2 = v0;
      v2[1] = sub_1A94E28E4;
      v3 = v0[31];
      v4 = v0[32];

      return sub_1A94E2E48(v3, v4);
    }
  }

  else if (*(v0[26] + 457) == 1)
  {
    sub_1A94E91E4(1);
    v1 = v0[32];
  }

  sub_1A94F1A60(v1, _s15UtteranceRunnerC14SynthesisStateVMa);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A94E28E4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_1A94E2C34;
  }

  else
  {
    v5 = sub_1A94E29F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A94E29F8()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[26];
  sub_1A94F1A60(v2, _s15UtteranceRunnerC14SynthesisStateVMa);
  sub_1A94F1AC0(v1, v2, _s15UtteranceRunnerC14SynthesisStateVMa);
  if (*(v3 + 457) == 2)
  {
    v4 = v0[35];
    v5 = v0[29];
    v6 = v0[30];
    v7 = v0[28];
    v8 = v0[26];
    sub_1A94F19F8(v0[32], v7, _s15UtteranceRunnerC14SynthesisStateVMa);
    (*(v6 + 56))(v7, 0, 1, v5);
    swift_beginAccess();
    sub_1A94F2048(v7, v8 + v4);
    swift_endAccess();
  }

  v9 = v0[32];
  if (*v9 || *(*(v9 + *(v0[29] + 28)) + 16) || *(v9[1] + 16))
  {
    if (*(v0[26] + 457) == 1)
    {
      v10 = swift_task_alloc();
      v0[36] = v10;
      *v10 = v0;
      v10[1] = sub_1A94E28E4;
      v11 = v0[31];
      v12 = v0[32];

      return sub_1A94E2E48(v11, v12);
    }
  }

  else if (*(v0[26] + 457) == 1)
  {
    sub_1A94E91E4(1);
    v9 = v0[32];
  }

  sub_1A94F1A60(v9, _s15UtteranceRunnerC14SynthesisStateVMa);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A94E2C34()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  sub_1A94F1A60(*(v0 + 256), _s15UtteranceRunnerC14SynthesisStateVMa);
  swift_getErrorValue();
  *&v12 = sub_1A957D478();
  *(&v12 + 1) = v3;
  v13 = *(v0 + 88);
  v14 = *(v0 + 104);
  v15 = *(v0 + 120);
  TTSSpeechEvent.emit(forJob:)(v2[2]);
  *(v0 + 48) = v14;
  *(v0 + 64) = v15;
  *(v0 + 80) = 6;
  *(v0 + 16) = v12;
  *(v0 + 32) = v13;
  sub_1A946C4C0(v0 + 16);
  sub_1A9391BAC(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v1, &qword_1EB3871A8, &qword_1A958BE88);
  v4 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 216);

    sub_1A937B960(v6, &qword_1EB3871A8, &qword_1A958BE88);
  }

  else
  {
    v7 = *(v0 + 296);
    *(v0 + 192) = v7;
    v8 = *(v0 + 216);
    v9 = v7;
    sub_1A957C828();

    (*(v5 + 8))(v8, v4);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A94E2E48(uint64_t a1, uint64_t a2)
{
  v3[562] = v2;
  v3[561] = a2;
  v3[560] = a1;
  v4 = sub_1A957BC88();
  v3[563] = v4;
  v3[564] = *(v4 - 8);
  v3[565] = swift_task_alloc();
  v3[566] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v3[567] = swift_task_alloc();
  v3[568] = swift_task_alloc();
  v3[569] = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v3[570] = swift_task_alloc();
  v5 = type metadata accessor for SpeechSlicer.Slice(0);
  v3[571] = v5;
  v3[572] = *(v5 - 8);
  v3[573] = swift_task_alloc();
  v3[574] = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v3[575] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v7 = sub_1A957C5A8();
  v3[576] = v7;
  v3[577] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A94E3074, v7, v6);
}

uint64_t sub_1A94E3074()
{
  v110 = v0;
  v1 = *(v0 + 4600);
  v2 = *(v0 + 4512);
  v3 = *(v0 + 4496);
  *(v0 + 4465) = 0;
  *(v0 + 4632) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 4624) = MEMORY[0x1E69E7CC0];
  if (*(v3 + 457) == 1)
  {
    v5 = sub_1A94F19F8(*(v0 + 4488), v1, _s15UtteranceRunnerC14SynthesisStateVMa);
    v8 = *v1;
    *(v0 + 4640) = *v1;
    v9 = *(v0 + 4600);
    if (v8)
    {
      *v9 = 0;
      *(v0 + 4840) = v8;
      v10 = *(v0 + 4600);
      v11 = *(v10 + 8);
      *(v0 + 4848) = v11;
      *(v10 + 8) = v4;

      v12 = swift_task_alloc();
      *(v0 + 4856) = v12;
      *v12 = v0;
      v12[1] = sub_1A94E5418;
      v13 = *(v0 + 4600);

      return sub_1A94E6BD8(v11, v8, v13);
    }

    v37 = *(*(v0 + 4592) + 28);
    v38 = *(v9 + v37);
    if (v38[2])
    {
      v39 = *(*(v0 + 4576) + 80);
      v5 = sub_1A94F19F8(v38 + ((v39 + 32) & ~v39), *(v0 + 4584), type metadata accessor for SpeechSlicer.Slice);
      v40 = v38[2];
      if (v40)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + v37) = v38;
        if (!isUniquelyReferenced_nonNull_native || (v40 - 1) > v38[3] >> 1)
        {
          v38 = sub_1A94ED9B8(isUniquelyReferenced_nonNull_native, v40, 1, v38);
          *(v9 + v37) = v38;
        }

        v42 = *(v0 + 4600);
        v43 = *(v0 + 4592);
        v44 = *(v0 + 4576);
        v45 = *(v0 + 4568);
        v102 = *(v0 + 4584);
        v104 = *(v0 + 4560);
        sub_1A94F0A6C(0, 1, 0);
        *(v9 + v37) = v38;
        v46 = *(v43 + 24);
        sub_1A937B960(v42 + v46, &qword_1EB388240, &qword_1A95964A0);
        sub_1A94F19F8(v102, v42 + v46, type metadata accessor for SpeechSlicer.Slice);
        (*(v44 + 56))(v42 + v46, 0, 1, v45);
        sub_1A94F19F8(v102 + *(v45 + 24), v104, type metadata accessor for SpeechSlicer.Slice.SliceType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v47 = *(v0 + 4560);
          v48 = *(v0 + 4496);
          *(v0 + 4648) = *v47;
          *(v0 + 4656) = v47[1];
          v6 = (*((*MEMORY[0x1E69E7D40] & **(v48 + 24)) + 0x288))();
          *(v0 + 4664) = v6;
          v49 = *v6 + 128;
          *(v0 + 4672) = *v49;
          *(v0 + 4680) = v49 & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
          v50 = sub_1A94E3C9C;
          goto LABEL_23;
        }

        v51 = *(v0 + 4584);
        v52 = *(v0 + 4560);
        v53 = *(v0 + 4544);
        v54 = *(v0 + 4496);
        memcpy((v0 + 1232), v52, 0x118uLL);
        v55 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        *(v0 + 4696) = v55;
        sub_1A93A7460(v52 + *(v55 + 64), v53, &qword_1EB386A18, &qword_1A9587E40);
        v56 = *v51;
        *(v0 + 4704) = *v51;
        v57 = v51[1];
        *(v0 + 4712) = v57;
        v58 = *(v0 + 1232);
        *(v0 + 4720) = v58;
        v59 = *(v0 + 1240);
        *(v0 + 4728) = v59;
        *(v0 + 4384) = v56;
        *(v0 + 4392) = v57;
        *(v0 + 4400) = v58;
        *(v0 + 4408) = v59;
        *(v0 + 4448) = 5;
        v60 = *(v54 + 32);
        *(v0 + 4736) = v60;
        v61 = *(v54 + 40);
        *(v0 + 4744) = v61;
        swift_bridgeObjectRetain_n();

        v62._countAndFlagsBits = v60;
        v62._object = v61;
        TTSSpeechEvent.emit(forJob:)(v62);
        v63 = *(v0 + 4432);
        *(v0 + 4344) = *(v0 + 4416);
        *(v0 + 4360) = v63;
        *(v0 + 4376) = *(v0 + 4448);
        v64 = *(v0 + 4400);
        *(v0 + 4312) = *(v0 + 4384);
        *(v0 + 4328) = v64;
        sub_1A946C4C0(v0 + 4312);
        sub_1A93847E0(v0 + 952);
        v105 = *(v0 + 1504);
        v107 = *(v0 + 1496);
        v101 = *(v0 + 1420);
        v103 = *(v0 + 1425);
        v99 = *(v0 + 1416);
        v100 = *(v0 + 1424);
        v97 = *(v0 + 1384);
        v98 = *(v0 + 1376);
        v95 = *(v0 + 1328);
        v96 = *(v0 + 1360);
        v94 = *(v0 + 1344);
        v93 = *(v0 + 1352);
        LOWORD(v54) = *(v0 + 1288);
        v65 = *(v0 + 1280);
        v86 = *(v0 + 1248);
        v91 = *(v0 + 1480);
        v92 = *(v0 + 1448);
        v89 = *(v0 + 1464);
        v90 = *(v0 + 1432);
        v87 = *(v0 + 1392);
        v88 = *(v0 + 1264);
        v66 = *(v0 + 1408);
        v84 = *(v0 + 1312);
        v85 = *(v0 + 1296);
        sub_1A937B3DC(v0 + 1232, v0 + 1792);
        memcpy((v0 + 1512), (v0 + 952), 0x118uLL);
        *(v0 + 2072) = v58;
        *(v0 + 2080) = v59;
        *(v0 + 2088) = v86;
        *(v0 + 2104) = v88;
        *(v0 + 2120) = v65;
        *(v0 + 2128) = v54;
        *(v0 + 2136) = v85;
        *(v0 + 2152) = v84;
        *(v0 + 2168) = v95;
        *(v0 + 2184) = v94;
        *(v0 + 2192) = v93;
        *(v0 + 2200) = v96;
        *(v0 + 2216) = v98;
        *(v0 + 2224) = v97;
        *(v0 + 2232) = v87;
        *(v0 + 2248) = v66;
        *(v0 + 2256) = v99;
        *(v0 + 2260) = v101;
        *(v0 + 2264) = v100;
        *(v0 + 2265) = v103;
        *(v0 + 2272) = v90;
        *(v0 + 2288) = v92;
        *(v0 + 2304) = v89;
        *(v0 + 2320) = v91;
        *(v0 + 2336) = v107;
        *(v0 + 2344) = v105;
        *(v0 + 4472) = 0;
        if ((TTSIsBaseSystem() & 1) == 0)
        {
          v78 = *(*(v0 + 4496) + 24);
          v79 = MEMORY[0x1E69E7D40];
          *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v78) + 0x2A0))();
          v6 = (*((*v79 & *v78) + 0x348))();
          *(v0 + 4768) = v6;
          v80 = *v6;
          *(v0 + 4776) = *(*v6 + 416);
          *(v0 + 4784) = (v80 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;
          v50 = sub_1A94E4D1C;
LABEL_23:
          v5 = v50;
          v7 = 0;

          return MEMORY[0x1EEE6DFA0](v5, v6, v7);
        }

        v67 = *(v0 + 4744);
        v68 = *(v0 + 4736);
        v69 = *(v0 + 4712);
        v70 = *(v0 + 4704);
        v71 = *(v0 + 4544);
        v72 = *(v0 + 4536);
        v73 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
        *(v0 + 4800) = v73;
        memcpy(__dst, (v0 + 2072), 0x118uLL);
        sub_1A937B3DC(v0 + 2072, v0 + 2352);

        TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v70, v69, __dst, v68, v67, (v0 + 16));
        memcpy((v0 + 328), (v0 + 16), 0x138uLL);
        sub_1A9391BAC(v71, v72, &qword_1EB386A18, &qword_1A9587E40);
        v74 = sub_1A957B8C8();
        v75 = *(v74 - 8);
        v76 = (*(v75 + 48))(v72, 1, v74);
        v77 = *(v0 + 4536);
        if (v76 == 1)
        {
          sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          v81 = sub_1A957B888();
          (*(v75 + 8))(v77, v74);
          if (v81)
          {
LABEL_28:
            *(v0 + 4808) = v81;
            *(v0 + 4452) = *(*(v0 + 4696) + 48);
            v82 = *(v0 + 4472);
            *(v0 + 4816) = v82;
            v108 = (*(*v73 + 368) + **(*v73 + 368));
            v83 = swift_task_alloc();
            *(v0 + 4824) = v83;
            *v83 = v0;
            v83[1] = sub_1A94E50FC;

            return v108(v0 + 328, v81, v82);
          }
        }

        v81 = *(*(v0 + 4496) + 344);

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v15 = *(v0 + 4528);
  v16 = *(v0 + 4504);
  v17 = sub_1A9391D1C();
  (*(v2 + 16))(v15, v17, v16);

  v18 = sub_1A957BC68();
  v19 = sub_1A957CA78();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 4528);
  v22 = *(v0 + 4504);
  v23 = (*(v0 + 4512) + 8);
  if (v20)
  {
    v106 = *(v0 + 4528);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    __dst[0] = v25;
    *v24 = 136315394;
    sub_1A9410EB8();
    v26 = sub_1A957D3A8();
    v28 = sub_1A937A5C0(v26, v27, __dst);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = MEMORY[0x1E69E7CC0];

    v30 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    v31 = MEMORY[0x1AC585390](v29, v30);
    v33 = v32;

    v34 = sub_1A937A5C0(v31, v33, __dst);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_1A9324000, v18, v19, "Utterance: %s failed with errors: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v25, -1, -1);
    MEMORY[0x1AC587CD0](v24, -1, -1);

    (*v23)(v106, v22);
  }

  else
  {

    (*v23)(v21, v22);
  }

  sub_1A94F1FA0();
  swift_allocError();
  *v35 = MEMORY[0x1E69E7CC0];
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1A94E3C9C()
{
  *(v0 + 4688) = (*(v0 + 4672))(*(v0 + 4648), *(v0 + 4656));

  v1 = *(v0 + 4616);
  v2 = *(v0 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E3D2C, v2, v1);
}

uint64_t sub_1A94E3D2C()
{
  sub_1A94F1A60(v0[573], type metadata accessor for SpeechSlicer.Slice);
  v1 = v0[586];
  v0[605] = v1;
  v2 = v0[575];
  v3 = *(v2 + 8);
  v0[606] = v3;
  *(v2 + 8) = MEMORY[0x1E69E7CC0];

  v4 = swift_task_alloc();
  v0[607] = v4;
  *v4 = v0;
  v4[1] = sub_1A94E5418;
  v5 = v0[575];

  return sub_1A94E6BD8(v3, v1, v5);
}

uint64_t sub_1A94E3E24()
{
  v1 = *v0;

  v2 = *(v1 + 4616);
  v3 = *(v1 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E3F68, v3, v2);
}

uint64_t sub_1A94E3F68()
{
  v156 = v0;
  v1 = *(v0 + 2912);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2928);
  v4 = *(v0 + 2936);
  v131 = (v0 + 4880);
  v5 = *(v0 + 2944);
  v6 = *(v0 + 2952);
  v7 = *(v0 + 2960);
  v145 = *(v0 + 2968);
  v8 = *(v0 + 2969);
  *(v0 + 4470) = *(v0 + 2974);
  *(v0 + 4466) = *(v0 + 2970);
  v9 = *(v0 + 2976);
  v10 = *(v0 + 2984);
  v11 = *(v0 + 2992);
  v12 = *(v0 + 3000);
  v13 = *(v0 + 3008);
  v14 = *(v0 + 3016);
  v15 = *(v0 + 3024);
  v16 = *(v0 + 3032);
  *(v0 + 4380) = *(v0 + 3036);
  *(v0 + 4377) = *(v0 + 3033);
  v17 = *(v0 + 3040);
  v119 = (v0 + 4466);
  *(v0 + 2690) = *(v0 + 4466);
  v18 = *(v0 + 3048);
  *(v0 + 2756) = *(v0 + 4380);
  v129 = (v0 + 4377);
  *(v0 + 2753) = *(v0 + 4377);
  v19 = *(v0 + 3056);
  v20 = *(v0 + 3064);
  *&v21 = *(v0 + 3072);
  v22 = *(v0 + 3080);
  v23 = *(v0 + 3088);
  v24 = *(v0 + 3097);
  *(v0 + 4449) = v24;
  *(v0 + 2817) = v24;
  LOBYTE(v24) = *(v0 + 3096);
  *(v0 + 4451) = *(v0 + 3099);
  v25 = *(v0 + 3100);
  v26 = *(v0 + 3106);
  *(v0 + 4880) = v26;
  *(v0 + 2826) = v26;
  LOBYTE(v26) = *(v0 + 3104);
  *(v0 + 4884) = *(v0 + 3110);
  *(v0 + 2694) = *(v0 + 4470);
  v130 = (v0 + 4449);
  *(v0 + 2819) = *(v0 + 4451);
  *(v0 + 2830) = *(v0 + 4884);
  v27 = *(v0 + 3105);
  v124 = v1;
  v125 = v2;
  *(v0 + 2632) = v1;
  *(v0 + 2640) = v2;
  *(v0 + 2648) = v3;
  *(v0 + 2656) = v4;
  *(v0 + 2664) = v5;
  v139 = v6;
  v140 = v14;
  *(v0 + 2672) = v6;
  v137 = v7;
  v138 = v15;
  *(v0 + 2680) = v7;
  v28 = v10;
  v29 = v8;
  *(v0 + 2688) = v145;
  *(v0 + 2689) = v8;
  v142 = v11;
  v143 = v9;
  *(v0 + 2696) = v9;
  *(v0 + 2704) = v28;
  *(v0 + 2712) = v11;
  v141 = v12;
  *(v0 + 2720) = v12;
  v123 = v13;
  *(v0 + 2728) = v13;
  *(v0 + 2736) = v14;
  *(v0 + 2744) = v15;
  v136 = v16;
  *(v0 + 2752) = v16;
  v120 = v17;
  *(v0 + 2760) = v17;
  *(v0 + 2768) = v18;
  v114 = v19;
  v115 = v20;
  *(v0 + 2776) = v19;
  *(v0 + 2784) = v20;
  v132 = v22;
  v134 = v21;
  *(&v21 + 1) = v22;
  v126 = v21;
  *(v0 + 2792) = v21;
  *(v0 + 2808) = v23;
  v118 = v24;
  *(v0 + 2816) = v24;
  v128 = v25;
  *(v0 + 2820) = v25;
  v117 = v26;
  *(v0 + 2824) = v26;
  v116 = v27;
  *(v0 + 2825) = v27;
  v144 = *(v0 + 3112);
  *(v0 + 2832) = v144;
  v153 = *(v0 + 3120);
  *(v0 + 2840) = v153;
  v152 = *(v0 + 3128);
  *(v0 + 2848) = v152;
  v151 = *(v0 + 3136);
  *(v0 + 2856) = v151;
  v150 = *(v0 + 3144);
  *(v0 + 2864) = v150;
  v149 = *(v0 + 3152);
  *(v0 + 2872) = v149;
  v148 = *(v0 + 3160);
  *(v0 + 2880) = v148;
  v147 = *(v0 + 3168);
  *(v0 + 2888) = v147;
  v146 = *(v0 + 3176);
  *(v0 + 2896) = v146;
  v127 = *(v0 + 3184);
  *(v0 + 2904) = v127;
  if (sub_1A932D058(v0 + 2632) == 1)
  {
    v121 = *(v0 + 1472);
    v111 = *(v0 + 1488);
    v112 = *(v0 + 1480);
    v108 = *(v0 + 1504);
    v109 = *(v0 + 1496);
    v105 = *(v0 + 1440);
    v106 = *(v0 + 1432);
    v103 = *(v0 + 1456);
    v104 = *(v0 + 1448);
    v30 = *(v0 + 1425);
    v96 = *(v0 + 1424);
    v97 = *(v0 + 1420);
    v95 = *(v0 + 1416);
    v135 = *(v0 + 1392);
    v133 = *(v0 + 1400);
    v31 = *(v0 + 1408);
    v101 = *(v0 + 1376);
    v102 = *(v0 + 1464);
    v99 = *(v0 + 1360);
    v100 = *(v0 + 1384);
    v98 = *(v0 + 1368);
    v93 = *(v0 + 1312);
    v94 = *(v0 + 1304);
    v91 = *(v0 + 1328);
    v92 = *(v0 + 1320);
    v89 = *(v0 + 1344);
    v90 = *(v0 + 1336);
    v88 = *(v0 + 1352);
    v87 = *(v0 + 1296);
    v85 = *(v0 + 1288);
    v86 = *(v0 + 1289);
    v84 = *(v0 + 1272);
    v82 = *(v0 + 1256);
    v83 = *(v0 + 1280);
    v80 = *(v0 + 1248);
    v81 = *(v0 + 1264);
    sub_1A937B3DC(v0 + 1232, v0 + 3472);
    v32 = v133;
    *(v0 + 1512) = v124;
    *(v0 + 1520) = v125;
    *(v0 + 1528) = v3;
    *(v0 + 1536) = v4;
    *(v0 + 1544) = v5;
    *(v0 + 1552) = v6;
    *(v0 + 1560) = v137;
    *(v0 + 1568) = v145;
    *(v0 + 1569) = v29;
    *(v0 + 1576) = v143;
    *(v0 + 1584) = v28;
    *(v0 + 1592) = v142;
    *(v0 + 1600) = v141;
    *(v0 + 1608) = v123;
    *(v0 + 1616) = v140;
    *(v0 + 1624) = v138;
    *(v0 + 1632) = v136;
    *(v0 + 1640) = v120;
    *(v0 + 1648) = v18;
    *(v0 + 1656) = v114;
    *(v0 + 1664) = v115;
    *(v0 + 1696) = v118;
    *(v0 + 1700) = v128;
    *(v0 + 1704) = v117;
    *(v0 + 1705) = v116;
    *(v0 + 1712) = v144;
    *(v0 + 1720) = v153;
    *(v0 + 1728) = v152;
    *(v0 + 1736) = v151;
    *(v0 + 1744) = v150;
    *(v0 + 1752) = v149;
    *(v0 + 1760) = v148;
    *(v0 + 1768) = v147;
    *(v0 + 1776) = v146;
    *(v0 + 1570) = *v119;
    *(v0 + 1636) = *(v0 + 4380);
    *(v0 + 1633) = *v129;
    *(v0 + 1697) = *v130;
    *(v0 + 1706) = *v131;
    *(v0 + 1574) = *(v0 + 4470);
    *(v0 + 1699) = *(v0 + 4451);
    *(v0 + 1710) = *(v0 + 4884);
    v34 = v80;
    v33 = v81;
    v35 = v82;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v39 = v86;
    v40 = v87;
    v41 = v93;
    v42 = v94;
    v44 = v91;
    v43 = v92;
    v46 = v89;
    v45 = v90;
    v47 = v88;
    v48 = v95;
    v49 = v96;
    v50 = v97;
    v51 = v106;
    v153 = v105;
    v152 = v104;
    v151 = v103;
    v52 = v101;
    v150 = v102;
    v149 = v121;
    v148 = v112;
    *(v0 + 1672) = v126;
    v53 = v135;
    v147 = v111;
    v54 = v108;
    v146 = v109;
    *(v0 + 1688) = v23;
    v56 = v98;
    v55 = v99;
    v57 = v100;
    v23 = v31;
    v58 = *(v0 + 4728);
    v59 = *(v0 + 4720);
    v60 = v127;
  }

  else
  {
    v107 = v18;
    *(v0 + 3810) = *v119;
    *(v0 + 3873) = *v129;
    *(v0 + 3937) = *v130;
    *(v0 + 3946) = *v131;
    *(v0 + 3814) = *(v0 + 4470);
    *(v0 + 3876) = *(v0 + 4380);
    *(v0 + 3939) = *(v0 + 4451);
    *(v0 + 3950) = *(v0 + 4884);
    v113 = v3;
    v122 = v5;
    v110 = v8;
    *(v0 + 3752) = v124;
    *(v0 + 3760) = v125;
    *(v0 + 3768) = v3;
    *(v0 + 3776) = v4;
    *(v0 + 3784) = v5;
    *(v0 + 3792) = v6;
    *(v0 + 3800) = v137;
    *(v0 + 3808) = v145;
    *(v0 + 3809) = v8;
    *(v0 + 3816) = v143;
    *(v0 + 3824) = v28;
    *(v0 + 3832) = v142;
    *(v0 + 3840) = v141;
    v44 = v123;
    *(v0 + 3848) = v123;
    *(v0 + 3856) = v140;
    *(v0 + 3864) = v138;
    *(v0 + 3872) = v136;
    *(v0 + 3880) = v120;
    *(v0 + 3888) = v18;
    v52 = v114;
    v57 = v115;
    *(v0 + 3896) = v114;
    *(v0 + 3904) = v115;
    *(v0 + 3912) = v126;
    *(v0 + 3928) = v23;
    v48 = v118;
    *(v0 + 3936) = v118;
    *(v0 + 3940) = v128;
    v49 = v117;
    *(v0 + 3944) = v117;
    v30 = v116;
    *(v0 + 3945) = v116;
    *(v0 + 3952) = v144;
    *(v0 + 3960) = v153;
    *(v0 + 3968) = v152;
    *(v0 + 3976) = v151;
    *(v0 + 3984) = v150;
    *(v0 + 3992) = v149;
    *(v0 + 4000) = v148;
    *(v0 + 4008) = v147;
    *(v0 + 4016) = v146;
    *(v0 + 4024) = v127;
    sub_1A937B3DC(v0 + 3752, v0 + 4032);
    *(v0 + 1570) = *v119;
    v35 = v4;
    v34 = v113;
    v42 = v28;
    v55 = v120;
    v59 = v124;
    v58 = v125;
    *(v0 + 1633) = *v129;
    *(v0 + 1697) = *v130;
    v56 = v107;
    *(v0 + 1706) = *v131;
    *(v0 + 1574) = *(v0 + 4470);
    *(v0 + 1636) = *(v0 + 4380);
    *(v0 + 1699) = *(v0 + 4451);
    *(v0 + 1512) = v124;
    *(v0 + 1520) = v125;
    *(v0 + 1528) = v113;
    *(v0 + 1536) = v35;
    *(v0 + 1544) = v5;
    v39 = v110;
    v38 = v145;
    v46 = v138;
    v47 = v136;
    v45 = v140;
    v43 = v141;
    v41 = v142;
    v40 = v143;
    v37 = v139;
    *(v0 + 1552) = v139;
    v36 = v137;
    *(v0 + 1560) = v137;
    *(v0 + 1568) = v145;
    *(v0 + 1569) = v110;
    *(v0 + 1576) = v143;
    *(v0 + 1584) = v28;
    *(v0 + 1592) = v142;
    *(v0 + 1600) = v141;
    *(v0 + 1608) = v123;
    *(v0 + 1616) = v140;
    *(v0 + 1624) = v138;
    *(v0 + 1632) = v136;
    *(v0 + 1640) = v120;
    *(v0 + 1648) = v107;
    *(v0 + 1656) = v114;
    *(v0 + 1664) = v115;
    *(v0 + 1672) = v126;
    *(v0 + 1688) = v23;
    *(v0 + 1696) = v118;
    *(v0 + 1700) = v128;
    *(v0 + 1704) = v117;
    *(v0 + 1705) = v116;
    *(v0 + 1710) = *(v0 + 4884);
    *(v0 + 1712) = v144;
    *(v0 + 1720) = v153;
    *(v0 + 1728) = v152;
    *(v0 + 1736) = v151;
    *(v0 + 1744) = v150;
    *(v0 + 1752) = v149;
    *(v0 + 1760) = v148;
    *(v0 + 1768) = v147;
    v60 = v127;
    v54 = v127;
    *(v0 + 1776) = v146;
    v51 = v144;
    v50 = v128;
    v33 = v122;
    v32 = v132;
    v53 = v134;
  }

  *(v0 + 1784) = v60;
  *(v0 + 2072) = v59;
  *(v0 + 2080) = v58;
  *(v0 + 2088) = v34;
  *(v0 + 2096) = v35;
  *(v0 + 2104) = v33;
  *(v0 + 2112) = v37;
  *(v0 + 2120) = v36;
  *(v0 + 2128) = v38;
  *(v0 + 2129) = v39;
  *(v0 + 2136) = v40;
  *(v0 + 2144) = v42;
  *(v0 + 2152) = v41;
  *(v0 + 2160) = v43;
  *(v0 + 2168) = v44;
  *(v0 + 2176) = v45;
  *(v0 + 2184) = v46;
  *(v0 + 2192) = v47;
  *(v0 + 2200) = v55;
  *(v0 + 2208) = v56;
  *(v0 + 2216) = v52;
  *(v0 + 2224) = v57;
  *(v0 + 2232) = v53;
  *(v0 + 2240) = v32;
  *(v0 + 2248) = v23;
  *(v0 + 2256) = v48 & 1;
  *(v0 + 2260) = v50;
  *(v0 + 2264) = v49 & 1;
  *(v0 + 2265) = v30;
  *(v0 + 2272) = v51;
  *(v0 + 2280) = v153;
  *(v0 + 2288) = v152;
  *(v0 + 2296) = v151;
  *(v0 + 2304) = v150;
  *(v0 + 2312) = v149;
  *(v0 + 2320) = v148;
  *(v0 + 2328) = v147;
  *(v0 + 2336) = v146;
  *(v0 + 2344) = v54;
  *(v0 + 4472) = 0;
  if (TTSIsBaseSystem())
  {
    v61 = *(v0 + 4744);
    v62 = *(v0 + 4736);
    v63 = *(v0 + 4712);
    v64 = *(v0 + 4704);
    v65 = *(v0 + 4544);
    v66 = *(v0 + 4536);
    v67 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
    *(v0 + 4800) = v67;
    memcpy(__dst, (v0 + 2072), 0x118uLL);
    sub_1A937B3DC(v0 + 2072, v0 + 2352);

    TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v64, v63, __dst, v62, v61, (v0 + 16));
    memcpy((v0 + 328), (v0 + 16), 0x138uLL);
    sub_1A9391BAC(v65, v66, &qword_1EB386A18, &qword_1A9587E40);
    v68 = sub_1A957B8C8();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 48))(v66, 1, v68);
    v71 = *(v0 + 4536);
    if (v70 == 1)
    {
      sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
    }

    else
    {
      v76 = sub_1A957B888();
      (*(v69 + 8))(v71, v68);
      if (v76)
      {
LABEL_12:
        *(v0 + 4808) = v76;
        *(v0 + 4452) = *(*(v0 + 4696) + 48);
        v77 = *(v0 + 4472);
        *(v0 + 4816) = v77;
        v154 = (*(*v67 + 368) + **(*v67 + 368));
        v78 = swift_task_alloc();
        *(v0 + 4824) = v78;
        *v78 = v0;
        v78[1] = sub_1A94E50FC;

        return v154(v0 + 328, v76, v77);
      }
    }

    v76 = *(*(v0 + 4496) + 344);

    goto LABEL_12;
  }

  v72 = *(*(v0 + 4496) + 24);
  v73 = MEMORY[0x1E69E7D40];
  *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v72) + 0x2A0))();
  v74 = (*((*v73 & *v72) + 0x348))();
  *(v0 + 4768) = v74;
  v75 = *v74;
  *(v0 + 4776) = *(*v74 + 416);
  *(v0 + 4784) = (v75 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1A94E4D1C, v74, 0);
}